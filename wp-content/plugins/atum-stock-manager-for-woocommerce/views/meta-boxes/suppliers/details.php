<?php
/**
 * View for the Supplier details meta box
 *
 * @since 1.2.9
 *
 * @var int $supplier_id
 */

defined( 'ABSPATH' ) || die;

?>

<div class="atum-meta-box supplier">

	<p class="description"><?php esc_html_e( 'Provide basic information on this supplier.', ATUM_TEXT_DOMAIN ) ?></p>

	<div class="form-field form-field-wide">
		<label for="company_code"><?php esc_html_e( 'Supplier Code', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="text" id="company_code" name="supplier_details[code]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_code', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="tax_number"><?php esc_html_e( 'Tax/VAT Number', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="text" id="tax_number" name="supplier_details[tax_number]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_tax_number', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="company_phone"><?php esc_html_e( 'Phone Number', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="tel" id="company_phone" name="supplier_details[phone]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_phone', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="company_fax"><?php esc_html_e( 'Fax Number', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="tel" id="company_fax" name="supplier_details[fax]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_fax', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="website"><?php esc_html_e( 'Website', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="text" id="website" name="supplier_details[website]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_website', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="ordering_url"><?php esc_html_e( 'URL for Ordering', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="text" id="ordering_url" name="supplier_details[ordering_url]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_ordering_url', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="general_email"><?php esc_html_e( 'General Email Address', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="email" id="general_email" name="supplier_details[general_email]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_general_email', TRUE ) ) ?>">
	</div>


	<div class="form-field form-field-wide">
		<label for="ordering_email"><?php esc_html_e( 'Email for Ordering', ATUM_TEXT_DOMAIN ) ?></label>
		<input type="email" id="ordering_email" name="supplier_details[ordering_email]" value="<?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_ordering_email', TRUE ) ) ?>">
	</div>

	<div class="form-field form-field-wide">
		<label for="description"><?php esc_html_e( 'Description', ATUM_TEXT_DOMAIN ) ?></label>
		<textarea id="description" name="supplier_details[description]" rows="5"><?php echo esc_attr( get_post_meta( $supplier_id, '_supplier_details_description', TRUE ) ) ?></textarea>
	</div>

</div>


