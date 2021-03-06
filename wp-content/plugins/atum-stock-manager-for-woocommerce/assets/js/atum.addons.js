/**
 * Atum Addons
 *
 * @copyright Stock Management Labs ©2017
 * @since 1.2.0
 */
(function ($) {
	'use strict';
	
	$(function () {
		
		var $addonsList = $('.atum-addons');
		
		// Validate, Activate and Deactivate buttons
		$addonsList.on('click', '.addon-key button', function(e) {
			
			e.preventDefault();
			
			var $button = $(this),
			    key     = $button.siblings('input').val();
			
			// If no key is present, show the error directly
			if (!key) {
				atumErrorMessage(atumAddons.invalidKey);
				return false;
			}
			
			// Ask the user to confirm the deactivation
			if ($button.hasClass('deactivate-key')) {
				
				swal({
					title            : atumAddons.limitedDeactivations,
					html             : atumAddons.allowedDeactivations,
					type             : 'warning',
					confirmButtonText: atumAddons.continue,
					cancelButtonText : atumAddons.cancel,
					showCancelButton : true
				}).then(function () {
					atumRequestLicenseChange($button, key);
				})
				.catch(swal.noop);
				
			}
			else {
				atumRequestLicenseChange($button, key);
			}
			
		})
		// Install addon button
		.on('click', '.install-addon', function() {
			
			var $button     = $(this),
			    $addonBlock = $button.closest('.theme');
			
			$.ajax({
				url       : ajaxurl,
				method    : 'POST',
				dataType  : 'json',
				data      : {
					token : $addonsList.data('nonce'),
					action: 'atum_install_addon',
					addon : $addonBlock.data('addon'),
					slug  : $addonBlock.data('addon-slug'),
					key   : $addonBlock.find('.addon-key input').val()
				},
				beforeSend: function () {
					atumBeforeAjax($button);
				},
				success: function(response) {
					
					atumAfterAjax($button);
					
					if (response.success === true) {
						atumSuccessMessage(response.data);
					}
					else {
						atumErrorMessage(response.data);
					}
					
				}
			});
			
		})
		// Show the key fields
		.on('click', '.show-key', function() {
			$(this).closest('.theme').find('.addon-key').slideToggle('fast');
		});
		
		
		
		/**
		 * Send the Ajax request to change a license status
		 * @param $button
		 * @param key
		 */
		function atumRequestLicenseChange($button, key) {
			
			$.ajax({
				url       : ajaxurl,
				method    : 'POST',
				dataType  : 'json',
				data      : {
					token : $addonsList.data('nonce'),
					action: $button.data('action'),
					addon : $button.closest('.theme').data('addon'),
					key   : key
				},
				beforeSend: function () {
					atumBeforeAjax($button);
				},
				success   : function (response) {
					
					atumAfterAjax($button);
					
					switch (response.success) {
						
						case false:
							atumErrorMessage(response.data);
							break;
						
						case true:
							atumSuccessMessage(response.data);
							break;
						
						case 'activate':
							
							swal({
								title            : atumAddons.activation,
								html             : response.data,
								type             : 'info',
								showCancelButton : true,
								showLoaderOnConfirm: true,
								confirmButtonText: atumAddons.activate,
								allowOutsideClick: false,
								preConfirm: function () {
									
									return new Promise(function (resolve, reject) {
										
										$.ajax({
											url     : ajaxurl,
											method  : 'POST',
											dataType: 'json',
											data    : {
												token : $addonsList.data('nonce'),
												action: 'atum_activate_license',
												addon : $button.closest('.theme').data('addon'),
												key   : key
											},
											success : function (response) {
												
												if (response.success === true) {
													resolve();
												}
												else {
													reject(response.data);
												}
												
											}
										});
										
									});
									
								}
							}).then(function () {
								atumSuccessMessage(atumAddons.addonActivated, atumAddons.activated);
							})
							.catch(swal.noop);
							
							break;
						
					}
					
				}
			});
			
		}
		
		/**
		 * Default success message
		 * @param message
		 */
		function atumSuccessMessage(message, title) {
			title = (typeof title !== 'undefined') ? title : atumAddons.success;
			
			swal({
				title            : title,
				html             : message,
				type             : 'success',
				confirmButtonText: atumAddons.ok
			}).then(function () {
				location.reload();
			});
		}
		
		/**
		 * Default error message
		 * @param message
		 */
		function atumErrorMessage(message) {
			swal({
				title            : atumAddons.error,
				html             : message,
				type             : 'error',
				confirmButtonText: atumAddons.ok
			});
		}
		
		/**
		 * Actions before an ajax request
		 * @param $button
		 */
		function atumBeforeAjax($button) {
			$('.theme').find('.button').prop('disabled', true);
			$button.css('visibility', 'hidden').after('<div class="atum-loading"></div>');
		}
		
		/**
		 * Actions after an ajax request
		 * @param $button
		 */
		function atumAfterAjax($button) {
			$('.atum-loading').remove();
			$('.theme').find('.button').prop('disabled', false);
			$button.css('visibility', 'visible');
		}
		
	});
	
})(jQuery);

jQuery.noConflict();