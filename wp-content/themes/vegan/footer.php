<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "body-content-wrapper" div and all content after.
 *
 * @subpackage Vegan
 * @author ayatemplates
 * @since Vegan 1.0.0
 *
 */
?>
			<a href="#" class="scrollup"></a>

			<footer id="footer-main">

				<div id="footer-content-wrapper">

					<?php get_sidebar('footer'); ?>

					<nav id="footer-menu">
						<?php wp_nav_menu( array( 'theme_location' => 'footer', ) ); ?>
					</nav>

					<div class="clear">
					</div>

					<div id="copyright">

						<p>
						 <?php vegan_show_copyright_text(); ?> <a href="<?php echo esc_url( 'https://ayatemplates.com/product/vegan' ); ?>" title="<?php esc_attr_e( 'vegan Theme', 'vegan' ); ?>">
							<?php esc_html_e('Vegan Theme', 'vegan'); ?></a> <?php esc_attr_e( 'powered by', 'vegan' ); ?> <a href="<?php echo esc_url( 'http://wordpress.org/' ); ?>" title="<?php esc_attr_e( 'WordPress', 'vegan' ); ?>">
							<?php esc_html_e('WordPress', 'vegan'); ?></a>
						</p>
						
					</div><!-- #copyright -->

				</div><!-- #footer-content-wrapper -->

			</footer><!-- #footer-main -->

		</div><!-- #body-content-wrapper -->
		<?php wp_footer(); ?>
	</body>
</html>