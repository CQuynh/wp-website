<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'seeds');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'l3[NE)_)NU%C+eZ:j>o}kno`.u=,JI.~X{:BOFW||O h<qPjCM}Jsn{{BJ3<cB4)');
define('SECURE_AUTH_KEY',  'MmZr2%OJ+pl4=deBt?m`2-b2FQ%/RH4HHK%9b>+P]1%62O>Y.1.Q58PmtO)?0>jl');
define('LOGGED_IN_KEY',    ':PX})`#|&*0Dz~Uj8hI_}+5_xZt?EVR!+!z(psC%O<Npg6mC<MzVHKe!@sR59MXT');
define('NONCE_KEY',        'Pv3f9V]Ey-X6s{&bSe;4N<SsKNcRw&qFZg{C^Fig[`Mgvh)^_]g$If [Vy[E8A3*');
define('AUTH_SALT',        'db}0CB=CwCu5D|;i[3*u5}ik[h-Y>IdP{Qm5VE[1XvTSM&jBRRY:]CQh<EQ$pwom');
define('SECURE_AUTH_SALT', 'Bb_3qjxE-M)S@Yn1OwQpQUwc4qCp!k[56Fc3W]LE#i1gdSrV_A&=!y2p+%?k?D70');
define('LOGGED_IN_SALT',   'c%N)S|d5Fs~rrQD*I5,=^e^Q!}? xXwtED7kPwoR}d+UkaepSnzFmz=6Sps#*<*v');
define('NONCE_SALT',       's^bn>=:yc9.7!U_^Y<KAWoyw;fGm _8MBb-~DgGbJ*7IIF[6C6l8eA: 9loKY554');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
