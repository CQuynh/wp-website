/**
 * Atum Settings
 *
 * @copyright Stock Management Labs ©2018
 *
 * @since 0.0.2
 */

;( function( $, window, document, undefined ) {
	"use strict";
	
	// Create the defaults once
	var pluginName = 'atumSettings',
	    defaults   = {
		
	    };
	
	// The actual plugin constructor
	function Plugin ( element, options ) {
		
		// Initialize selectors
		this.$settingsWrapper = $(element);
		this.$nav = this.$settingsWrapper.find('.atum-nav');
		this.$form = this.$settingsWrapper.find('#atum-settings');
		
		// We don't want to alter the default options for future instances of the plugin
		// Load the localized vars to the plugin settings too
		this.settings = $.extend( {}, defaults, atumSettingsVars || {}, options || {} );
		
		this._defaults = defaults;
		this._name = pluginName;
		this.init();
	}
	
	// Avoid Plugin.prototype conflicts
	$.extend( Plugin.prototype, {
		
		navigationReady: false,
		numHashParameters: 0,
		
		init: function () {
			
			var self = this;
			
			// URL hash navigation
			this.setupNavigation();
			
			// Enable switchers
			this.doSwitchers();
			
			// Draw ColoPickers
			this.doColorPickers();
			
			// Enable Select2
			this.doSelect2();

			// Set the dirty fields
			this.$form
				
				.on('change', 'input, select, textarea', function () {
					if(!$('.atum-nav-link.active').parent().hasClass('no-submit')) {
						$(this).addClass('dirty');
					}
				})
			
				.on('change', '#atum_out_stock_threshold', function () {
					
					if ($(this).is(':checked') && self.settings.isAnyOutStockThresholdSet) {
						
						swal({
							title              : self.settings.areYouSure,
							text               : self.settings.outStockThresholdSetClearText,
							type               : 'question',
							showCancelButton   : true,
							confirmButtonText  : self.settings.startFresh,
							cancelButtonText   : self.settings.cancel,
							reverseButtons     : true,
							allowOutsideClick  : false,
							showLoaderOnConfirm: true,
							preConfirm         : function () {
								
								return new Promise(function (resolve, reject) {
									var data = {
										action: self.settings.outStockThresholdSetClearScript,
										token : self.settings.runnerNonce
									};
									
									$.ajax({
										url     : ajaxurl,
										method  : 'POST',
										dataType: 'json',
										data    : data,
										success : function (response) {
											
											if (response.success === true) {
												resolve(response.data);
											}
											else {
												reject(response.data);
											}
											
										}
									});
									
								});
								
							}
						}).then(function (message) {
							
							swal({
								title            : self.settings.done,
								type             : 'success',
								text             : message,
								confirmButtonText: self.settings.ok
							});
							
						}).catch(swal.noop);
						
					}
					else if (!this.checked) {
						
						swal({
							title: self.settings.areYouSure,
							text : self.settings.outStockThresholdDisable,
							type : 'info'
						});
					}
					
				})
				
				// Remove the dirty mark if the user tries to save
				.on('click', 'input[type=submit]', function() {
					self.$form.find('.dirty').removeClass('dirty');
				})
				
				// Script Runner fields
				.on('click', '.script-runner button', function() {
					self.runScript($(this));
				})
				
				// Field dependencies
				.on('change','[data-dependency]', function() {
	
					var $field     = $(this),
					    value      = $field.val(),
						dependency = $field.data('dependency');
					
					if ($.isArray(dependency)) {
					
						$.each(dependency, function (index, dependencyElem) {
							self.checkDependency($field, dependencyElem, value);
						});
					
					}
					else {
						self.checkDependency($field, dependency, value);
					}
					
				})
				
				.find('[data-dependency]').each(function() {
			
					$(this).change().removeClass('dirty');
					
				});
			
			
			// Before unload alert
			$(window).bind('beforeunload', function() {
				
				if (!self.$form.find('.dirty').length) {
					return;
				}
				
				// Prevent multiple prompts - seen on Chrome and IE
				if (navigator.userAgent.toLowerCase().match(/msie|chrome/)) {
					
					if (window.aysHasPrompted) {
						return;
					}
					
					window.aysHasPrompted = true;
					window.setTimeout(function() {
						window.aysHasPrompted = false;
					}, 900);
					
				}
				
				return false;
				
			});
		
		},
		doSwitchers: function() {
			
			$('.js-switch').each(function () {
				new Switchery(this, { size: 'small' });
			});
			
		},
		doColorPickers: function() {
			
			$('.atum-color').each(function () {
				$(this).wpColorPicker();
			});
		},
		doSelect2: function() {
		
			if (typeof $.fn.select2 === 'function') {
				
				$('.atum-select2').each(function() {
					
					var $select = $(this);
					
					if ($select.hasClass('atum-select-multiple') && $select.prop('multiple') === false) {
						$select.prop('multiple', true);
					}
					
					$select.select2({
						minimumResultsForSearch: 20
					})
					// Avoid selecting empty values in select multiples
					.on('select2:selecting', function() {
						
						var $this = $(this),
						    value = $this.val();
						
						// Avoid selecting the "None" option
						if ($.isArray(value) && $.inArray('', value) > -1) {
							$.each(value, function (index, elem) {
								if (elem === '') {
									value.splice(index, 1);
								}
							});
							
							$this.val(value);
						}
						
					});
					
				});
				
			}
		
		},
		restoreSelects: function() {
			
			$('.select2-container--open').remove();
			this.doSelect2();
			
		},
		setupNavigation: function() {
			
			if (typeof $.address === 'undefined') {
				return;
			}
			
			var self = this;
			
			// Hash history navigation
			$.address.change(function(event) {
				
				var pathNames        = $.address.pathNames(),
				    numCurrentParams = pathNames.length;
				
				if(self.navigationReady === true && (numCurrentParams || self.numHashParameters !== numCurrentParams)) {
					self.clickTab(pathNames[0]);
				}
				
				self.navigationReady = true;
				
			})
			.init(function() {
				
				var pathNames = $.address.pathNames();
				
				// When accessing externally or reloading the page, update the fields and the list
				if(pathNames.length) {
					self.clickTab(pathNames[0]);
				}
				else {
					self.$form.show();
				}
				
				var searchQuery  = location.search.substr(1),
				    searchParams = {};
				
				searchQuery.split('&').forEach(function(part) {
					var item = part.split('=');
					searchParams[item[0]] = decodeURIComponent(item[1]);
				});
				
				if (searchParams.hasOwnProperty('tab')) {
					self.$settingsWrapper.trigger('atum-settings-page-loaded', [searchParams.tab]);
				}
				
			});
			
		},
		clickTab: function(tab) {
			
			var self     = this,
			    $navLink = this.$nav.find('.atum-nav-link[data-tab="' + tab + '"]');
			
			if (this.$form.find('.dirty').length) {
				
				// Warn the user about unsaved data
				swal({
					title              : this.settings.areYouSure,
					text               : this.settings.unsavedData,
					type               : 'warning',
					showCancelButton   : true,
					confirmButtonText  : this.settings.continue,
					cancelButtonText   : this.settings.cancel,
					reverseButtons     : true,
					allowOutsideClick  : false
				}).then(function () {
					self.moveToTab($navLink);
				}, function (dismiss) {
					$navLink.blur();
				});
				
			}
			else {
				self.moveToTab($navLink);
			}
		
		},
		moveToTab: function($navLink) {
			
			var self                 = this,
			    $formSettingsWrapper = this.$form.find('.form-settings-wrapper');
			
			this.$nav.find('.atum-nav-link.active').not($navLink).removeClass('active');
			$navLink.addClass('active');
			
			$formSettingsWrapper.addClass('overlay');
			this.$form.load( $navLink.attr('href') + ' .form-settings-wrapper', function() {
				
				self.doSwitchers();
				self.doColorPickers();
				self.restoreSelects();
				self.$form.find('[data-dependency]').change().removeClass('dirty');
				self.$form.show();
				
				var $inputButton = self.$form.find('input:submit');
				
				if ($navLink.parent().hasClass('no-submit')) {
					$inputButton.hide();
				}
				else {
					$inputButton.show();
				}
				
				self.$settingsWrapper.trigger('atum-settings-page-loaded', [$navLink.data('tab')]);
				
			});
			
		},
		runScript: function($button) {
			
			var self          = this,
			    $scriptRunner = $button.closest('.script-runner');
			
			swal({
				title              : this.settings.areYouSure,
				text               : $scriptRunner.data('confirm'),
				type               : 'warning',
				showCancelButton   : true,
				confirmButtonText  : this.settings.run,
				cancelButtonText   : this.settings.cancel,
				reverseButtons     : true,
				allowOutsideClick  : false,
				showLoaderOnConfirm: true,
				preConfirm: function() {
					
					return new Promise(function (resolve, reject) {
						
						var $input  = $scriptRunner.find('#' + $scriptRunner.data('input')),
						    data    = {
							    action: $scriptRunner.data('action'),
							    token : self.settings.runnerNonce
						    };
						
						if ($input.length) {
							data.option = $input.val();
						}
						
						$.ajax({
							url       : ajaxurl,
							method    : 'POST',
							dataType  : 'json',
							data      : data,
							beforeSend: function () {
								$button.prop('disabled', true);
							},
							success   : function (response) {
								
								$button.prop('disabled', false);
								
								if (response.success === true) {
									resolve(response.data);
								}
								else {
									reject(response.data);
								}
								
							}
						});
						
					});
				
				}
			}).then(function (message) {
				
				swal({
					title            : self.settings.done,
					type             : 'success',
					text             : message,
					confirmButtonText: self.settings.ok
				}).then(function() {
					self.$settingsWrapper.trigger('atum-settings-script-runner-done', [$scriptRunner]);
				});
			
			}).catch(swal.noop);
		
		},
		checkDependency: function($field, dependency, value) {
			
			var $dependantInput,
			    $dependantWraper,
				visibility;
			
			// Do no apply to not checked radio buttons
			if ($field.is(':radio') && !$field.is(':checked')) {
				return;
			}
			
			if ($field.is(':checkbox') || $field.is(':radio')) {
				visibility = (value === dependency.value && $field.is(':checked')) || (value !== dependency.value && !$field.is(':checked'));
			}
			else {
				visibility = value === dependency.value;
			}
			
			if (dependency.hasOwnProperty('section')) {
				$dependantWraper = this.$form.find('[data-section="' + dependency.section + '"]');
			}
			else if (dependency.hasOwnProperty('field')) {
				
				$dependantInput = $( '#' + this.settings.atumPrefix + dependency.field );
				
				if ($dependantInput.length) {
					$dependantWraper = $dependantInput.closest('tr').find('th, td');
				}
				
			}
			
			if (typeof $dependantWraper !== 'undefined' && $dependantWraper.length) {
				
				// Show/Hide the field
				if (visibility === true) {
					if (! dependency.hasOwnProperty('animated') || dependency.animated === true) {
						$dependantWraper.slideDown('fast');
					}
					else {
						$dependantWraper.show();
					}
				}
				else {
					
					if (! dependency.hasOwnProperty('animated') || dependency.animated === true) {
						$dependantWraper.slideUp('fast');
					}
					else {
						$dependantWraper.hide();
					}
					
					// Check if we have to reset the dependant input to default when hiding the field
					if (dependency.hasOwnProperty('resetDefault') && dependency.resetDefault === true) {
						
						var defaultValue = $dependantInput.data('default'),
						    curValue     = $dependantInput.val();
							
						if ($dependantInput.is(':radio') || $dependantInput.is(':checkbox')) {
							$dependantInput.prop('checked', defaultValue === curValue);
						}
						else {
							$dependantInput.val(defaultValue);
						}
						
						$dependantInput.change();
						
					}
					
				}
				
			}
			
		}
		
	} );
	
	// A really lightweight plugin wrapper around the constructor, preventing against multiple instantiations
	$.fn[ pluginName ] = function( options ) {
		return this.each( function() {
			if ( !$.data( this, "plugin_" + pluginName ) ) {
				$.data( this, "plugin_" +
					pluginName, new Plugin( this, options ) );
			}
		} );
	};
	
	
	// Init the plugin on document ready
	$(function () {
		
		// Init ATUM Settings
		$('.atum-settings-wrapper').atumSettings();
		
	});
	
	/**
	 * --------------------------------------------------------------------------
	 * Bootstrap (v4.1.1): button.js
	 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
	 * --------------------------------------------------------------------------
	 */
	function _defineProperties(e,t){for(var n=0;n<t.length;n++){var s=t[n];s.enumerable=s.enumerable||!1,s.configurable=!0,"value"in s&&(s.writable=!0),Object.defineProperty(e,s.key,s)}}function _createClass(e,t,n){return t&&_defineProperties(e.prototype,t),n&&_defineProperties(e,n),e}var Button=function(e){var t="button",n="bs.button",s="."+n,a=".data-api",i=e.fn[t],r="active",o="btn",l="focus",u='[data-toggle^="button"]',c='[data-toggle="buttons"]',f="input",_=".active",d=".btn",h={CLICK_DATA_API:"click"+s+a,FOCUS_BLUR_DATA_API:"focus"+s+a+" blur"+s+a},g=function(){function t(e){this._element=e}var s=t.prototype;return s.toggle=function(){var t=!0,n=!0,s=e(this._element).closest(c)[0];if(s){var a=e(this._element).find(f)[0];if(a){if("radio"===a.type)if(a.checked&&e(this._element).hasClass(r))t=!1;else{var i=e(s).find(_)[0];i&&e(i).removeClass(r)}if(t){if(a.hasAttribute("disabled")||s.hasAttribute("disabled")||a.classList.contains("disabled")||s.classList.contains("disabled"))return;a.checked=!e(this._element).hasClass(r),e(a).trigger("change")}a.focus(),n=!1}}n&&this._element.setAttribute("aria-pressed",!e(this._element).hasClass(r)),t&&e(this._element).toggleClass(r)},s.dispose=function(){e.removeData(this._element,n),this._element=null},t._jQueryInterface=function(s){return this.each(function(){var a=e(this).data(n);a||(a=new t(this),e(this).data(n,a)),"toggle"===s&&a[s]()})},_createClass(t,null,[{key:"VERSION",get:function(){return"4.1.1"}}]),t}();return e(document).on(h.CLICK_DATA_API,u,function(t){t.preventDefault();var n=t.target;e(n).hasClass(o)||(n=e(n).closest(d)),g._jQueryInterface.call(e(n),"toggle")}).on(h.FOCUS_BLUR_DATA_API,u,function(t){var n=e(t.target).closest(d)[0];e(n).toggleClass(l,/^focus(in)?$/.test(t.type))}),e.fn[t]=g._jQueryInterface,e.fn[t].Constructor=g,e.fn[t].noConflict=function(){return e.fn[t]=i,g._jQueryInterface},g}($);
	
} )( jQuery, window, document );