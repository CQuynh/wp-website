-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2018 at 05:07 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seeds`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_atum_log_itemmeta`
--

CREATE TABLE `wp_atum_log_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `log_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_atum_log_items`
--

CREATE TABLE `wp_atum_log_items` (
  `log_item_id` bigint(20) UNSIGNED NOT NULL,
  `log_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_atum_order_itemmeta`
--

CREATE TABLE `wp_atum_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_atum_order_items`
--

CREATE TABLE `wp_atum_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'rating', '4'),
(2, 3, 'verified', '0'),
(3, 4, 'rating', '4'),
(4, 4, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-01 14:21:33', '2018-11-01 14:21:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'quynhquynh.hn1997@gmail.com', '', '::1', '2018-11-01 14:54:38', '2018-11-01 14:54:38', 'Boring!!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '', 0, 1),
(3, 20, 'admin', 'quynhquynh.hn1997@gmail.com', '', '::1', '2018-11-01 15:46:45', '2018-11-01 15:46:45', 'Nice', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'review', 0, 1),
(4, 138, 'admin', 'quynhquynh.hn1997@gmail.com', '', '::1', '2018-11-03 10:37:44', '2018-11-03 10:37:44', 'Good product :3', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'review', 0, 1),
(5, 177, 'WooCommerce', '', '', '', '2018-11-12 06:38:59', '2018-11-12 06:38:59', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/seeds', 'yes'),
(2, 'home', 'http://localhost/seeds', 'yes'),
(3, 'blogname', 'Seeds', 'yes'),
(4, 'blogdescription', 'Where you can buy cute trees and plants', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'quynhquynh.hn1997@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:216:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:13:\"uni-module/?$\";s:30:\"index.php?post_type=uni_module\";s:43:\"uni-module/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=uni_module&feed=$matches[1]\";s:38:\"uni-module/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=uni_module&feed=$matches[1]\";s:30:\"uni-module/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=uni_module&paged=$matches[1]\";s:17:\"uni-cpo-option/?$\";s:34:\"index.php?post_type=uni_cpo_option\";s:47:\"uni-cpo-option/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=uni_cpo_option&feed=$matches[1]\";s:42:\"uni-cpo-option/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=uni_cpo_option&feed=$matches[1]\";s:34:\"uni-cpo-option/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=uni_cpo_option&paged=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"uni-module/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"uni-module/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"uni-module/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"uni-module/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"uni-module/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"uni-module/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"uni-module/(.+?)/embed/?$\";s:43:\"index.php?uni_module=$matches[1]&embed=true\";s:29:\"uni-module/(.+?)/trackback/?$\";s:37:\"index.php?uni_module=$matches[1]&tb=1\";s:49:\"uni-module/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?uni_module=$matches[1]&feed=$matches[2]\";s:44:\"uni-module/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?uni_module=$matches[1]&feed=$matches[2]\";s:37:\"uni-module/(.+?)/page/?([0-9]{1,})/?$\";s:50:\"index.php?uni_module=$matches[1]&paged=$matches[2]\";s:44:\"uni-module/(.+?)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?uni_module=$matches[1]&cpage=$matches[2]\";s:34:\"uni-module/(.+?)/wc-api(/(.*))?/?$\";s:51:\"index.php?uni_module=$matches[1]&wc-api=$matches[3]\";s:40:\"uni-module/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"uni-module/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"uni-module/(.+?)(?:/([0-9]+))?/?$\";s:49:\"index.php?uni_module=$matches[1]&page=$matches[2]\";s:40:\"uni-cpo-option/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"uni-cpo-option/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"uni-cpo-option/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"uni-cpo-option/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"uni-cpo-option/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"uni-cpo-option/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"uni-cpo-option/(.+?)/embed/?$\";s:47:\"index.php?uni_cpo_option=$matches[1]&embed=true\";s:33:\"uni-cpo-option/(.+?)/trackback/?$\";s:41:\"index.php?uni_cpo_option=$matches[1]&tb=1\";s:53:\"uni-cpo-option/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?uni_cpo_option=$matches[1]&feed=$matches[2]\";s:48:\"uni-cpo-option/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?uni_cpo_option=$matches[1]&feed=$matches[2]\";s:41:\"uni-cpo-option/(.+?)/page/?([0-9]{1,})/?$\";s:54:\"index.php?uni_cpo_option=$matches[1]&paged=$matches[2]\";s:48:\"uni-cpo-option/(.+?)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?uni_cpo_option=$matches[1]&cpage=$matches[2]\";s:38:\"uni-cpo-option/(.+?)/wc-api(/(.*))?/?$\";s:55:\"index.php?uni_cpo_option=$matches[1]&wc-api=$matches[3]\";s:44:\"uni-cpo-option/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"uni-cpo-option/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"uni-cpo-option/(.+?)(?:/([0-9]+))?/?$\";s:53:\"index.php?uni_cpo_option=$matches[1]&page=$matches[2]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"vc_grid_item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"vc_grid_item/([^/]+)/embed/?$\";s:45:\"index.php?vc_grid_item=$matches[1]&embed=true\";s:33:\"vc_grid_item/([^/]+)/trackback/?$\";s:39:\"index.php?vc_grid_item=$matches[1]&tb=1\";s:41:\"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&paged=$matches[2]\";s:48:\"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]\";s:38:\"vc_grid_item/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?vc_grid_item=$matches[1]&wc-api=$matches[3]\";s:44:\"vc_grid_item/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"vc_grid_item/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?vc_grid_item=$matches[1]&page=$matches[2]\";s:29:\"vc_grid_item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"vc_grid_item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"vc_grid_item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:41:\"Ultimate_VC_Addons/Ultimate_VC_Addons.php\";i:1;s:73:\"atum-stock-manager-for-woocommerce/atum-stock-manager-for-woocommerce.php\";i:2;s:27:\"js_composer/js_composer.php\";i:3;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:23:\"revslider/revslider.php\";i:6;s:42:\"uni-woo-custom-product-options/uni-cpo.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:37:\"yith-woocommerce-ajax-search/init.php\";i:9;s:33:\"yith-woocommerce-compare/init.php\";i:10;s:36:\"yith-woocommerce-quick-view/init.php\";i:11;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:\"F:\\xampp\\htdocs\\seeds/wp-content/themes/vw-bakery-child/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'vw-bakery', 'yes'),
(41, 'stylesheet', 'vw-bakery-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:73:\"atum-stock-manager-for-woocommerce/atum-stock-manager-for-woocommerce.php\";a:2:{i:0;s:14:\"Atum\\Bootstrap\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '26', 'yes'),
(84, 'page_on_front', '37', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:157:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:24:\"atum_edit_purchase_price\";b:1;s:24:\"atum_view_purchase_price\";b:1;s:24:\"atum_edit_purchase_order\";b:1;s:24:\"atum_read_purchase_order\";b:1;s:26:\"atum_delete_purchase_order\";b:1;s:25:\"atum_edit_purchase_orders\";b:1;s:32:\"atum_edit_others_purchase_orders\";b:1;s:27:\"atum_create_purchase_orders\";b:1;s:27:\"atum_delete_purchase_orders\";b:1;s:33:\"atum_delete_other_purchase_orders\";b:1;s:23:\"atum_edit_inventory_log\";b:1;s:23:\"atum_read_inventory_log\";b:1;s:25:\"atum_delete_inventory_log\";b:1;s:24:\"atum_edit_inventory_logs\";b:1;s:31:\"atum_edit_others_inventory_logs\";b:1;s:26:\"atum_create_inventory_logs\";b:1;s:26:\"atum_delete_inventory_logs\";b:1;s:32:\"atum_delete_other_inventory_logs\";b:1;s:23:\"atum_read_inbound_stock\";b:1;s:29:\"atum_edit_out_stock_threshold\";b:1;s:18:\"atum_edit_supplier\";b:1;s:18:\"atum_read_supplier\";b:1;s:20:\"atum_delete_supplier\";b:1;s:19:\"atum_edit_suppliers\";b:1;s:26:\"atum_edit_others_suppliers\";b:1;s:22:\"atum_publish_suppliers\";b:1;s:27:\"atum_read_private_suppliers\";b:1;s:21:\"atum_create_suppliers\";b:1;s:21:\"atum_delete_suppliers\";b:1;s:29:\"atum_delete_private_suppliers\";b:1;s:31:\"atum_delete_published_suppliers\";b:1;s:27:\"atum_delete_other_suppliers\";b:1;s:27:\"atum_edit_private_suppliers\";b:1;s:29:\"atum_edit_published_suppliers\";b:1;s:20:\"atum_view_admin_menu\";b:1;s:24:\"atum_view_admin_bar_menu\";b:1;s:21:\"atum_read_order_notes\";b:1;s:23:\"atum_create_order_notes\";b:1;s:23:\"atum_delete_order_notes\";b:1;s:16:\"atum_export_data\";b:1;s:20:\"atum_view_statistics\";b:1;s:31:\"edit_others_multiple_post_types\";b:1;s:32:\"read_private_multiple_post_types\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Search product\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:8:\"Register\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:11:\"social-icon\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:14:{i:1542021076;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1542021699;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542022893;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1542032499;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542032512;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542036093;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542036103;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542036320;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542046893;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542057693;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542067200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542083040;a:1:{s:29:\"mc4wp_refresh_mailchimp_lists\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543881600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:16;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541085253;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542020325;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(127, 'recently_activated', 'a:0:{}', 'yes'),
(132, 'woocommerce_store_address', 'HN', 'yes'),
(133, 'woocommerce_store_address_2', 'HN', 'yes'),
(134, 'woocommerce_store_city', 'hn', 'yes'),
(135, 'woocommerce_default_country', 'VN:*', 'yes'),
(136, 'woocommerce_store_postcode', 'hnui', 'yes'),
(137, 'woocommerce_allowed_countries', 'all', 'yes'),
(138, 'woocommerce_all_except_countries', '', 'yes'),
(139, 'woocommerce_specific_allowed_countries', '', 'yes'),
(140, 'woocommerce_ship_to_countries', '', 'yes'),
(141, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(142, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(143, 'woocommerce_calc_taxes', 'no', 'yes'),
(144, 'woocommerce_enable_coupons', 'yes', 'yes'),
(145, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(146, 'woocommerce_currency', 'VND', 'yes'),
(147, 'woocommerce_currency_pos', 'left', 'yes'),
(148, 'woocommerce_price_thousand_sep', ',', 'yes'),
(149, 'woocommerce_price_decimal_sep', '.', 'yes'),
(150, 'woocommerce_price_num_decimals', '2', 'yes'),
(151, 'woocommerce_shop_page_id', '6', 'yes'),
(152, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(153, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(154, 'woocommerce_weight_unit', 'g', 'yes'),
(155, 'woocommerce_dimension_unit', 'cm', 'yes'),
(156, 'woocommerce_enable_reviews', 'yes', 'yes'),
(157, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(158, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(159, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(160, 'woocommerce_review_rating_required', 'yes', 'no'),
(161, 'woocommerce_manage_stock', 'yes', 'yes'),
(162, 'woocommerce_hold_stock_minutes', '60', 'no'),
(163, 'woocommerce_notify_low_stock', 'yes', 'no'),
(164, 'woocommerce_notify_no_stock', 'yes', 'no'),
(165, 'woocommerce_stock_email_recipient', 'quynhquynh.hn1997@gmail.com', 'no'),
(166, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(167, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(168, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(169, 'woocommerce_stock_format', '', 'yes'),
(170, 'woocommerce_file_download_method', 'force', 'no'),
(171, 'woocommerce_downloads_require_login', 'no', 'no'),
(172, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(173, 'woocommerce_prices_include_tax', 'no', 'yes'),
(174, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(175, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(176, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(177, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(178, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(179, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(180, 'woocommerce_price_display_suffix', '', 'yes'),
(181, 'woocommerce_tax_total_display', 'itemized', 'no'),
(182, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(183, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(184, 'woocommerce_ship_to_destination', 'billing', 'no'),
(185, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(186, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(187, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(188, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(189, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(190, 'woocommerce_registration_generate_username', 'yes', 'no'),
(191, 'woocommerce_registration_generate_password', 'yes', 'no'),
(192, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(193, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(194, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(195, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(196, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(197, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(198, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(199, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(200, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(201, 'woocommerce_email_from_name', 'Seeds', 'no'),
(202, 'woocommerce_email_from_address', 'quynhquynh.hn1997@gmail.com', 'no'),
(203, 'woocommerce_email_header_image', '', 'no'),
(204, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(205, 'woocommerce_email_base_color', '#96588a', 'no'),
(206, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(207, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(208, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(209, 'woocommerce_cart_page_id', '7', 'yes'),
(210, 'woocommerce_checkout_page_id', '8', 'yes'),
(211, 'woocommerce_myaccount_page_id', '9', 'yes'),
(212, 'woocommerce_terms_page_id', '', 'no'),
(213, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(214, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(215, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(216, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(217, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(218, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(219, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(220, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(221, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(222, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(223, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(224, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(225, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(226, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(227, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(228, 'woocommerce_api_enabled', 'no', 'yes'),
(229, 'woocommerce_single_image_width', '600', 'yes'),
(230, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(231, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(232, 'woocommerce_demo_store', 'no', 'no'),
(233, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(234, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(235, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(236, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(238, 'default_product_cat', '15', 'yes'),
(242, 'woocommerce_db_version', '3.4.5', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(243, 'woocommerce_admin_notices', 'a:3:{i:0;s:6:\"update\";i:1;s:20:\"no_secure_connection\";i:2;s:14:\"template_files\";}', 'yes'),
(244, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(245, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(266, 'woocommerce_product_type', 'both', 'yes'),
(267, 'woocommerce_allow_tracking', 'yes', 'yes'),
(269, 'woocommerce_tracker_last_send', '1542002667', 'yes'),
(272, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:27:\"quynhquynh.hn1997@gmail.com\";}', 'yes'),
(273, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:14:\"Check payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(274, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(275, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(276, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Express Checkout Gateway could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost/seeds/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout\">Please install it manually by clicking here.</a>', 'yes'),
(282, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(284, 'woocommerce_admin_notice_storefront_install_error', 'storefront could not be installed (Unable to connect to the filesystem. Please confirm your credentials.). <a href=\"http://localhost/seeds/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=52a7d26e1f\">Please install it manually by clicking here.</a>', 'yes'),
(285, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost/seeds/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(290, '_transient_shipping-transient-version', '1542004610', 'yes'),
(307, 'vc_version', '5.5.2', 'yes'),
(308, '_transient_timeout_wc_shipping_method_count_0_1541082578', '1543674698', 'no'),
(309, '_transient_wc_shipping_method_count_0_1541082578', '0', 'no'),
(314, 'bsf_force_check_extensions', '', 'no'),
(315, 'ultimate_row', 'enable', 'yes'),
(316, 'ultimate_animation', 'disable', 'yes'),
(317, 'ultimate_google_fonts', 'a:0:{}', 'yes'),
(318, 'ultimate_selected_google_fonts', 'a:0:{}', 'yes'),
(319, 'bsf_local_transient', '1542019995', 'yes'),
(322, 'bsf-updater-version', '1.22.44\r\n', 'yes'),
(323, 'brainstrom_products', 'a:1:{s:7:\"plugins\";a:1:{i:6892199;a:14:{s:8:\"template\";s:41:\"Ultimate_VC_Addons/Ultimate_VC_Addons.php\";s:4:\"type\";s:6:\"plugin\";s:2:\"id\";s:7:\"6892199\";s:12:\"product_name\";s:41:\"Ultimate Addons for WPBakery Page Builder\";s:7:\"version\";s:7:\"3.16.24\";s:6:\"remote\";s:6:\"3.17.0\";s:8:\"in_house\";s:4:\"true\";s:9:\"on_market\";s:4:\"true\";s:15:\"is_product_free\";s:5:\"false\";s:10:\"short_name\";s:0:\"\";s:13:\"changelog_url\";s:46:\"http://changelog.brainstormforce.com/ultimate/\";s:12:\"purchase_url\";s:74:\"https://codecanyon.net/cart/add_items?item_ids=6892199&ref=BrainstormForce\";s:12:\"version_beta\";s:0:\"\";s:17:\"download_url_beta\";s:0:\"\";}}}', 'yes'),
(324, 'bsf_local_transient_bundled', '1542002668', 'yes'),
(327, 'bsf_skip_braisntorm_menu', '1', 'no'),
(328, 'ultimate_updater', 'enabled', 'yes'),
(329, 'ultimate_constants', 'a:3:{s:24:\"ULTIMATE_NO_UPDATE_CHECK\";b:0;s:28:\"ULTIMATE_NO_EDIT_PAGE_NOTICE\";b:0;s:30:\"ULTIMATE_NO_PLUGIN_PAGE_NOTICE\";b:0;}', 'yes'),
(330, 'ultimate_modules', 'a:41:{i:0;s:18:\"ultimate_animation\";i:1;s:16:\"ultimate_buttons\";i:2;s:18:\"ultimate_countdown\";i:3;s:17:\"ultimate_flip_box\";i:4;s:20:\"ultimate_google_maps\";i:5;s:22:\"ultimate_google_trends\";i:6;s:17:\"ultimate_headings\";i:7;s:22:\"ultimate_icon_timeline\";i:8;s:17:\"ultimate_info_box\";i:9;s:20:\"ultimate_info_circle\";i:10;s:18:\"ultimate_info_list\";i:11;s:20:\"ultimate_info_tables\";i:12;s:28:\"ultimate_interactive_banners\";i:13;s:29:\"ultimate_interactive_banner_2\";i:14;s:15:\"ultimate_modals\";i:15;s:17:\"ultimate_parallax\";i:16;s:23:\"ultimate_pricing_tables\";i:17;s:15:\"ultimate_spacer\";i:18;s:22:\"ultimate_stats_counter\";i:19;s:20:\"ultimate_swatch_book\";i:20;s:14:\"ultimate_icons\";i:21;s:18:\"ultimate_list_icon\";i:22;s:17:\"ultimate_carousel\";i:23;s:18:\"ultimate_fancytext\";i:24;s:22:\"ultimate_highlight_box\";i:25;s:20:\"ultimate_info_banner\";i:26;s:15:\"ultimate_ihover\";i:27;s:16:\"ultimate_hotspot\";i:28;s:21:\"ultimate_video_banner\";i:29;s:11:\"woocomposer\";i:30;s:20:\"ultimate_dual_button\";i:31;s:13:\"ultimate_link\";i:32;s:19:\"ultimate_fancy_text\";i:33;s:23:\"ultimate_hightlight_box\";i:34;s:20:\"ultimate_content_box\";i:35;s:24:\"ultimate_image_separator\";i:36;s:27:\"ultimate_expandable_section\";i:37;s:12:\"ultimate_tab\";i:38;s:23:\"ultimate_sticky_section\";i:39;s:13:\"ultimate_team\";i:40;s:21:\"ultimate_range_slider\";}', 'yes'),
(331, 'smile_fonts', 'a:1:{s:8:\"Defaults\";a:4:{s:7:\"include\";s:20:\"smile_fonts/Defaults\";s:6:\"folder\";s:20:\"smile_fonts/Defaults\";s:5:\"style\";s:21:\"Defaults/Defaults.css\";s:6:\"config\";s:11:\"charmap.php\";}}', 'yes'),
(335, 'revslider_server_refresh', '1541083622', 'yes'),
(336, 'revslider-update-check-short', '1542002606', 'yes'),
(337, 'revslider-templates-check', '1542002607', 'yes'),
(338, 'revslider_servers', 'a:1:{i:0;s:16:\"themepunch.tools\";}', 'yes'),
(339, 'revslider-library-check', '1541083623', 'yes'),
(340, 'revslider_checktables', '1', 'yes'),
(341, 'rs_tables_created', '1', 'yes'),
(342, 'revslider_table_version', '1.0.6', 'yes'),
(343, 'revslider-global-settings', 'a:0:{}', 'yes'),
(344, 'revslider_update_version', '5.2.5.5', 'yes'),
(345, 'widget_rev-slider-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'rs_cache_overlay', '5.4.8', 'yes'),
(355, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:16;}}', 'yes'),
(362, 'current_theme', 'VW Bakery Child Theme', 'yes'),
(363, 'theme_mods_flare', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541086973;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:12:\"categories-3\";}s:14:\"footer-col-one\";a:0:{}s:14:\"footer-col-two\";a:0:{}}}}', 'yes'),
(364, 'theme_switched', '', 'yes'),
(365, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(373, '_transient_product_query-transient-version', '1541241465', 'yes'),
(377, 'woocommerce_placeholder_image', '', 'yes'),
(378, 'woocommerce_version', '3.5.1', 'yes'),
(395, '_transient_product-transient-version', '1541241207', 'yes'),
(448, 'category_children', 'a:0:{}', 'yes'),
(449, '_transient_flare_categories', '1', 'yes'),
(458, 'theme_mods_storefront', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:34:\"storefront_footer_background_color\";s:7:\"#f0f0f0\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541174674;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:12:\"categories-3\";i:4;s:32:\"woocommerce_product_categories-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(459, 'storefront_nux_fresh_site', '0', 'yes'),
(460, 'woocommerce_catalog_rows', '4', 'yes'),
(461, 'woocommerce_catalog_columns', '3', 'yes'),
(468, 'storefront_nux_dismissed', '1', 'yes'),
(469, 'storefront_nux_guided_tour', '1', 'yes'),
(470, '_transient_timeout_wc_shipping_method_count_1_1541082578', '1543679115', 'no'),
(471, '_transient_wc_shipping_method_count_1_1541082578', '0', 'no'),
(475, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(485, '_transient_orders-transient-version', '1542004742', 'yes'),
(486, '_transient_timeout_wc_cbp_51dcac495cfdb2458830252b0758cb78', '1543679207', 'no'),
(487, '_transient_wc_cbp_51dcac495cfdb2458830252b0758cb78', 'a:0:{}', 'no'),
(527, 'theme_mods_vw-bakery', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-left\";i:16;}s:18:\"custom_css_post_id\";i:163;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541398987;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:11:\"social-icon\";a:0:{}}}}', 'yes'),
(528, 'widget_vw_bakery_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(550, 'theme_mods_natural-herbs-lite', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(551, 'theme_mods_vegan', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(552, 'theme_mods_traza', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:16;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541174466;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:12:\"categories-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:32:\"woocommerce_product_categories-2\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:11:\"social-icon\";a:0:{}}}}', 'yes'),
(605, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";}', 'yes'),
(711, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:48:\"uni-woo-custom-product-options/includes/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.1.3\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1541169468;s:11:\"plugin_path\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";}}s:7:\"abspath\";s:22:\"F:\\xampp\\htdocs\\seeds/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";s:8:\"sdk_path\";s:48:\"uni-woo-custom-product-options/includes/freemius\";s:7:\"version\";s:5:\"2.1.3\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1541169468;}}', 'yes'),
(712, 'fs_debug_mode', '', 'yes'),
(713, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:1534;a:3:{s:4:\"slug\";s:30:\"uni-woo-custom-product-options\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";}}s:11:\"plugin_data\";a:1:{s:30:\"uni-woo-custom-product-options\";a:13:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";}s:17:\"install_timestamp\";i:1541169468;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.4.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:0;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:0;s:9:\"timestamp\";i:1541169468;s:7:\"version\";s:5:\"4.4.1\";}s:17:\"was_plugin_loaded\";b:1;}}s:13:\"file_slug_map\";a:1:{s:42:\"uni-woo-custom-product-options/uni-cpo.php\";s:30:\"uni-woo-custom-product-options\";}s:7:\"plugins\";a:1:{s:30:\"uni-woo-custom-product-options\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:30:\"Uni Woo Custom Product Options\";s:4:\"slug\";s:30:\"uni-woo-custom-product-options\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:3:\"all\";s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";s:7:\"version\";s:5:\"4.4.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_69013caadae19db148a7e4e250aab\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1534\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}s:9:\"unique_id\";s:32:\"3afda5b606831a5d09a0292be1ca8c0a\";}', 'yes'),
(714, 'fs_api_cache', 'a:0:{}', 'yes'),
(715, 'fs_options', 'a:1:{s:14:\"api_force_http\";b:0;}', 'yes'),
(716, 'uni_cpo_version', '4.4.1', 'yes'),
(724, 'yit_recently_activated', 'a:0:{}', 'yes'),
(725, 'yith-wcqv-enable', 'yes', 'yes'),
(726, 'yith-wcqv-enable-mobile', 'yes', 'yes'),
(727, 'yith-wcqv-button-label', 'Quick View', 'yes'),
(728, 'yith-wcqv-enable-lightbox', 'yes', 'yes'),
(729, 'yith-wcqv-background-modal', '#f6fdf6', 'yes'),
(730, 'yith-wcqv-close-color', '#e10909', 'yes'),
(731, 'yith-wcqv-close-color-hover', '#7d2f2f', 'yes'),
(732, 'yit_plugin_fw_panel_wc_default_options_set', 'a:4:{s:15:\"yith_wcqv_panel\";b:1;s:15:\"yith_wcas_panel\";b:1;s:21:\"yith_woocompare_panel\";b:1;s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(733, '_site_transient_timeout_yith_promo_message', '3082361008', 'no'),
(734, '_site_transient_yith_promo_message', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";s:29:\"Fri, 02 Nov 2018 14:41:43 GMT\";s:12:\"content-type\";s:15:\"application/xml\";s:10:\"set-cookie\";s:137:\"__cfduid=da74a4223678392c82c7e5cae00e9330c1541169702; expires=Sat, 02-Nov-19 14:41:42 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\";s:13:\"last-modified\";s:29:\"Wed, 31 Oct 2018 12:21:17 GMT\";s:9:\"expect-ct\";s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";s:6:\"server\";s:10:\"cloudflare\";s:6:\"cf-ray\";s:20:\"47375d110ae3a338-HKG\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:4:\"body\";s:833:\"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n<promotions>\n    <promo>\n        <expiry_date>2018-11-11</expiry_date>\n        <promo_id>yithhalloweendeal</promo_id>\n        <title>YITH Halloween deal</title>\n        <banner>banner-halloween.png</banner>\n        <description>30% off on any of our products! Valid only on October 31st.</description>\n        <link>\n            <label>Don\'t miss it and INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</label>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <start_date>2018-10-30</start_date>\n        <end_date>2018-10-31</end_date>\n    </promo>\n</promotions>\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:1:{i:0;O:14:\"WP_Http_Cookie\":5:{s:4:\"name\";s:8:\"__cfduid\";s:5:\"value\";s:43:\"da74a4223678392c82c7e5cae00e9330c1541169702\";s:7:\"expires\";i:1572705702;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:12:\"yithemes.com\";}}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:833:\"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n<promotions>\n    <promo>\n        <expiry_date>2018-11-11</expiry_date>\n        <promo_id>yithhalloweendeal</promo_id>\n        <title>YITH Halloween deal</title>\n        <banner>banner-halloween.png</banner>\n        <description>30% off on any of our products! Valid only on October 31st.</description>\n        <link>\n            <label>Don\'t miss it and INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</label>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <start_date>2018-10-30</start_date>\n        <end_date>2018-10-31</end_date>\n    </promo>\n</promotions>\";s:3:\"raw\";s:1338:\"HTTP/1.1 200 OK\r\nDate: Fri, 02 Nov 2018 14:41:43 GMT\r\nContent-Type: application/xml\r\nTransfer-Encoding: chunked\r\nConnection: close\r\nSet-Cookie: __cfduid=da74a4223678392c82c7e5cae00e9330c1541169702; expires=Sat, 02-Nov-19 14:41:42 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\r\nLast-Modified: Wed, 31 Oct 2018 12:21:17 GMT\r\nExpect-CT: max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\r\nServer: cloudflare\r\nCF-RAY: 47375d110ae3a338-HKG\r\nContent-Encoding: gzip\r\n\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n<promotions>\n    <promo>\n        <expiry_date>2018-11-11</expiry_date>\n        <promo_id>yithhalloweendeal</promo_id>\n        <title>YITH Halloween deal</title>\n        <banner>banner-halloween.png</banner>\n        <description>30% off on any of our products! Valid only on October 31st.</description>\n        <link>\n            <label>Don\'t miss it and INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</label>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <start_date>2018-10-30</start_date>\n        <end_date>2018-10-31</end_date>\n    </promo>\n</promotions>\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";a:1:{i:0;s:29:\"Fri, 02 Nov 2018 14:41:43 GMT\";}s:12:\"content-type\";a:1:{i:0;s:15:\"application/xml\";}s:10:\"set-cookie\";a:1:{i:0;s:137:\"__cfduid=da74a4223678392c82c7e5cae00e9330c1541169702; expires=Sat, 02-Nov-19 14:41:42 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Wed, 31 Oct 2018 12:21:17 GMT\";}s:9:\"expect-ct\";a:1:{i:0;s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";}s:6:\"server\";a:1:{i:0;s:10:\"cloudflare\";}s:6:\"cf-ray\";a:1:{i:0;s:20:\"47375d110ae3a338-HKG\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:48:\"https://update.yithemes.com/promo/yith-promo.xml\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:1:{s:8:\"__cfduid\";O:15:\"Requests_Cookie\":5:{s:4:\"name\";s:8:\"__cfduid\";s:5:\"value\";s:43:\"da74a4223678392c82c7e5cae00e9330c1541169702\";s:10:\"attributes\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:5:{s:7:\"expires\";i:1572705702;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:12:\"yithemes.com\";s:8:\"httponly\";b:1;s:6:\"secure\";b:1;}}s:5:\"flags\";a:4:{s:8:\"creation\";i:1541169703;s:11:\"last-access\";i:1541169703;s:10:\"persistent\";b:0;s:9:\"host-only\";b:0;}s:14:\"reference_time\";i:1541169703;}}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no'),
(735, 'widget_yith_woocommerce_ajax_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(736, 'yith_wcas_general_videobox', 'a:7:{s:11:\"plugin_name\";s:28:\"YITH WooCommerce Ajax Search\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:93:\"Upgrade to the PREMIUM VERSION\r\nof YITH WOOCOMMERCE AJAX SEARCH to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118917627\";s:15:\"video_image_url\";s:108:\"http://localhost/seeds/wp-content/plugins/yith-woocommerce-ajax-search/assets/images/ajax-search-premium.jpg\";s:17:\"video_description\";s:28:\"YITH WooCommerce Ajax Search\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:65:\"https://yithemes.com/themes/plugins/yith-woocommerce-ajax-search/\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(737, 'yith_wcas_search_input_label', 'Search for products', 'yes'),
(738, 'yith_wcas_search_submit_label', 'Search', 'yes'),
(739, 'yith_wcas_min_chars', '3', 'yes'),
(740, 'yith_wcas_posts_per_page', '3', 'yes'),
(741, 'yith_wcas_enable_transient', 'no', 'yes'),
(742, 'yith_wcas_transient_duration', '12', 'yes'),
(757, 'widget_yith-woocompare-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(758, 'yith_woocompare_is_button', 'button', 'yes'),
(759, 'yith_woocompare_button_text', 'Compare', 'yes'),
(760, 'yith_woocompare_compare_button_in_product_page', 'yes', 'yes'),
(761, 'yith_woocompare_compare_button_in_products_list', 'yes', 'yes'),
(762, 'yith_woocompare_auto_open', 'yes', 'yes'),
(763, 'yith_woocompare_table_text', 'Compare products', 'yes'),
(764, 'yith_woocompare_fields_attrs', 'a:8:{i:0;s:5:\"image\";i:1;s:5:\"title\";i:2;s:5:\"price\";i:3;s:11:\"add-to-cart\";i:4;s:11:\"description\";i:5;s:3:\"sku\";i:6;s:5:\"stock\";i:7;s:6:\"weight\";}', 'yes'),
(765, 'yith_woocompare_price_end', 'yes', 'yes'),
(766, 'yith_woocompare_add_to_cart_end', 'no', 'yes'),
(767, 'yith_woocompare_image_size', 'a:3:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"154\";s:4:\"crop\";s:2:\"on\";}', 'yes'),
(768, 'yith_woocompare_fields', 'a:9:{s:5:\"image\";b:1;s:5:\"title\";b:1;s:5:\"price\";b:1;s:11:\"add-to-cart\";b:1;s:11:\"description\";b:1;s:3:\"sku\";b:1;s:5:\"stock\";b:1;s:6:\"weight\";b:1;s:10:\"dimensions\";b:0;}', 'yes'),
(776, 'yith_wcwl_frontend_css_colors', 's:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";', 'yes'),
(777, 'yith_wcwl_wishlist_title', 'My wishlist on Seeds', 'yes'),
(778, 'yith_wcwl_version', '2.2.5', 'yes'),
(779, 'yith_wcwl_db_version', '2.2.0', 'yes'),
(780, 'yith_wcwl_general_videobox', 'a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:98:\"http://localhost/seeds/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:79:\"https://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(781, 'yith_wcwl_enabled', 'yes', 'yes'),
(782, 'yith_wcwl_wishlist_page_id', '30', 'yes'),
(783, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(784, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(785, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(786, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(787, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(788, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(789, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(790, 'yith_wcwl_price_show', 'yes', 'yes'),
(791, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(792, 'yith_wcwl_stock_show', 'yes', 'yes'),
(793, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(794, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(795, 'yith_wcwl_share_fb', 'yes', 'yes'),
(796, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(797, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(798, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(799, 'yith_wcwl_share_email', 'yes', 'yes'),
(800, 'yith_wcwl_socials_title', 'My wishlist on Seeds', 'yes'),
(801, 'yith_wcwl_socials_text', '', 'yes'),
(802, 'yith_wcwl_socials_image_url', '', 'yes'),
(803, 'yith_wfbt_enable_integration', 'no', 'yes'),
(804, 'yith_wcwl_use_button', 'no', 'yes'),
(805, 'yith_wcwl_custom_css', '', 'yes'),
(806, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(807, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(808, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(809, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(819, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(874, 'theme_switched_via_customizer', '', 'yes'),
(875, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(909, '_transient_timeout_wc_product_loopbf231541087554', '1543767617', 'no'),
(910, '_transient_wc_product_loopbf231541087554', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(911, '_transient_timeout_wc_product_loope90c1541087554', '1543767618', 'no'),
(912, '_transient_wc_product_loope90c1541087554', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(913, '_transient_timeout_wc_product_loopcc301541087554', '1543767618', 'no'),
(914, '_transient_wc_product_loopcc301541087554', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(954, '_transient_timeout_wc_product_loopcc301541177067', '1543769271', 'no'),
(955, '_transient_wc_product_loopcc301541177067', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:44;i:1;i:20;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(956, '_transient_timeout_wc_product_loope90c1541177067', '1543769271', 'no'),
(957, '_transient_wc_product_loope90c1541177067', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1040, 'builder_css_cached_for20', 'http://localhost/seeds/wp-content/uploads/cpo-css/cpo-css-product-20.css', 'no'),
(1076, 'WPLANG', '', 'yes'),
(1077, 'new_admin_email', 'quynhquynh.hn1997@gmail.com', 'yes'),
(1231, '_transient_timeout_wc_product_loopcc301541233909', '1543827058', 'no'),
(1232, '_transient_wc_product_loopcc301541233909', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:11:{i:0;i:75;i:1;i:73;i:2;i:71;i:3;i:69;i:4;i:67;i:5;i:58;i:6;i:63;i:7;i:61;i:8;i:59;i:9;i:44;i:10;i:20;}s:5:\"total\";i:11;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1233, '_transient_timeout_wc_product_loope90c1541233909', '1543827059', 'no'),
(1234, '_transient_wc_product_loope90c1541233909', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1259, '_transient_timeout_wc_product_loopcc301541235741', '1543827824', 'no'),
(1260, '_transient_wc_product_loopcc301541235741', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:80;i:1;i:75;i:2;i:73;i:3;i:71;i:4;i:69;i:5;i:67;i:6;i:58;i:7;i:63;i:8;i:61;i:9;i:59;i:10;i:44;i:11;i:20;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1261, '_transient_timeout_wc_product_loope90c1541235741', '1543827825', 'no'),
(1262, '_transient_wc_product_loope90c1541235741', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1543, '_transient_timeout_wc_product_loopcc301541240809', '1543832870', 'no'),
(1544, '_transient_wc_product_loopcc301541240809', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:152;i:1;i:150;i:2;i:148;i:3;i:146;i:4;i:144;i:5;i:142;i:6;i:140;i:7;i:138;i:8;i:136;i:9;i:134;i:10;i:132;i:11;i:130;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1545, '_transient_timeout_wc_product_loope90c1541240809', '1543832871', 'no'),
(1546, '_transient_wc_product_loope90c1541240809', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1565, '_transient_timeout_wc_term_counts', '1543833199', 'no'),
(1566, '_transient_wc_term_counts', 'a:5:{i:18;s:1:\"9\";i:19;s:2:\"10\";i:20;s:1:\"9\";i:15;s:2:\"11\";i:21;s:1:\"9\";}', 'no'),
(1574, 'product_cat_children', 'a:0:{}', 'yes'),
(1576, '_transient_timeout_wc_product_loopcc301541241206', '1543833340', 'no'),
(1577, '_transient_wc_product_loopcc301541241206', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:158;i:1;i:156;i:2;i:154;i:3;i:152;i:4;i:150;i:5;i:148;i:6;i:146;i:7;i:144;i:8;i:142;i:9;i:140;i:10;i:138;i:11;i:136;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1578, '_transient_timeout_wc_product_loope90c1541241206', '1543833340', 'no'),
(1579, '_transient_wc_product_loope90c1541241206', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:20;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1590, '_transient_timeout_wc_product_loopcc301541241465', '1543838884', 'no'),
(1591, '_transient_wc_product_loopcc301541241465', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:158;i:1;i:156;i:2;i:154;i:3;i:152;i:4;i:150;i:5;i:148;i:6;i:146;i:7;i:144;i:8;i:142;i:9;i:140;i:10;i:138;i:11;i:136;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1592, '_transient_timeout_wc_product_loope90c1541241465', '1543838886', 'no'),
(1593, '_transient_wc_product_loope90c1541241465', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:20;i:1;i:138;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1600, '_transient_timeout_wc_low_stock_count', '1543840650', 'no'),
(1601, '_transient_wc_low_stock_count', '0', 'no'),
(1602, '_transient_timeout_wc_outofstock_count', '1543840650', 'no'),
(1603, '_transient_wc_outofstock_count', '0', 'no'),
(1793, 'revslider_slide_editor_sticky', 'true', 'yes'),
(1902, '_transient_timeout_wc_product_loop02971541241465', '1543859350', 'no'),
(1903, '_transient_wc_product_loop02971541241465', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:158;i:1;i:156;i:2;i:154;i:3;i:152;i:4;i:150;i:5;i:148;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}', 'no'),
(1904, '_transient_timeout_wc_product_loop40541541241465', '1543859350', 'no'),
(1905, '_transient_wc_product_loop40541541241465', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:20;i:1;i:138;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}', 'no'),
(1908, '_transient_timeout_wc_product_loop66341541241465', '1543859445', 'no'),
(1909, '_transient_wc_product_loop66341541241465', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:8:{i:0;i:158;i:1;i:156;i:2;i:154;i:3;i:152;i:4;i:150;i:5;i:148;i:6;i:146;i:7;i:144;}s:5:\"total\";i:8;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:8;s:12:\"current_page\";i:1;}', 'no'),
(1910, '_transient_timeout_wc_product_loope9681541241465', '1543859446', 'no'),
(1911, '_transient_wc_product_loope9681541241465', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:20;i:1;i:138;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:8;s:12:\"current_page\";i:1;}', 'no'),
(1948, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542020329;s:7:\"checked\";a:10:{s:5:\"flare\";s:5:\"1.0.4\";s:18:\"natural-herbs-lite\";s:3:\"1.1\";s:10:\"storefront\";s:5:\"2.3.3\";s:5:\"traza\";s:5:\"1.0.7\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:5:\"vegan\";s:5:\"1.2.3\";s:15:\"vw-bakery-child\";s:3:\"0.1\";s:9:\"vw-bakery\";s:3:\"0.1\";}s:8:\"response\";a:3:{s:10:\"storefront\";a:4:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.3.5.zip\";}s:5:\"vegan\";a:4:{s:5:\"theme\";s:5:\"vegan\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:35:\"https://wordpress.org/themes/vegan/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/vegan.1.2.4.zip\";}s:9:\"vw-bakery\";a:4:{s:5:\"theme\";s:9:\"vw-bakery\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:39:\"https://wordpress.org/themes/vw-bakery/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/vw-bakery.0.2.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1987, 'theme_mods_vw-bakery-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-left\";i:16;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(2006, '_transient_timeout_external_ip_address_::1', '1542607451', 'no'),
(2007, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(2009, '_transient_timeout_bsf_check_product_updates', '1542192795', 'no'),
(2011, '_transient_bsf_check_product_updates', '1', 'no'),
(2025, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1542046027', 'no'),
(2026, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(2033, '_transient_timeout_plugin_slugs', '1542106961', 'no'),
(2034, '_transient_plugin_slugs', 'a:14:{i:0;s:19:\"akismet/akismet.php\";i:1;s:73:\"atum-stock-manager-for-woocommerce/atum-stock-manager-for-woocommerce.php\";i:2;s:9:\"hello.php\";i:3;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:23:\"revslider/revslider.php\";i:6;s:41:\"Ultimate_VC_Addons/Ultimate_VC_Addons.php\";i:7;s:42:\"uni-woo-custom-product-options/uni-cpo.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:9;s:27:\"js_composer/js_composer.php\";i:10;s:37:\"yith-woocommerce-ajax-search/init.php\";i:11;s:33:\"yith-woocommerce-compare/init.php\";i:12;s:36:\"yith-woocommerce-quick-view/init.php\";i:13;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'no'),
(2047, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(2050, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"35\";}', 'yes'),
(2053, 'woocommerce_local_pickup_2_settings', 'a:3:{s:5:\"title\";s:12:\"Local pickup\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:0:\"\";}', 'yes'),
(2057, '_transient_timeout_wc_shipping_method_count_1_1542004610', '1544596649', 'no'),
(2058, '_transient_wc_shipping_method_count_1_1542004610', '2', 'no'),
(2060, '_transient_timeout_wc_order_177_needs_processing', '1542091132', 'no'),
(2061, '_transient_wc_order_177_needs_processing', '1', 'no'),
(2062, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:4;s:3:\"all\";i:4;s:8:\"approved\";s:1:\"4\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(2063, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"4\";s:14:\"total_comments\";i:4;s:3:\"all\";i:4;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(2086, '_site_transient_timeout_theme_roots', '1542021176', 'no'),
(2087, '_site_transient_theme_roots', 'a:10:{s:5:\"flare\";s:7:\"/themes\";s:18:\"natural-herbs-lite\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:5:\"traza\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:5:\"vegan\";s:7:\"/themes\";s:15:\"vw-bakery-child\";s:7:\"/themes\";s:9:\"vw-bakery\";s:7:\"/themes\";}', 'no'),
(2088, '_site_transient_timeout_browser_90ff8ae6231a43c42b418e1765751722', '1542624184', 'no'),
(2089, '_site_transient_browser_90ff8ae6231a43c42b418e1765751722', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.77\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2090, '_transient_timeout_wc_report_sales_by_date', '1542105799', 'no'),
(2091, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"c6377da3c773910939d99722db8cd05f\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2018-11-12 06:38:41\";}}s:32:\"fcd12cf0393bf68335fc8128b1f77bda\";a:0:{}s:32:\"af6c75e21f37de6b5464ad4043c640be\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"18\";s:9:\"post_date\";s:19:\"2018-11-12 06:38:41\";}}s:32:\"f259361c0a23357f25edbc777b207781\";N;s:32:\"52e78d7cddd67ba974f3401027735ab3\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"9535\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2018-11-12 06:38:41\";}}s:32:\"8329076139e02ae5191efa47a36bd2c7\";a:0:{}s:32:\"7b9a58990886f26f6ed09bb85ba5c712\";a:0:{}s:32:\"f577d6e1fa3304b8f774742448958348\";a:0:{}}', 'no'),
(2092, '_transient_timeout_wc_admin_report', '1542105799', 'no'),
(2093, '_transient_wc_admin_report', 'a:2:{s:32:\"baf5f078ea6e325d98bc378c6f0b751f\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:4:\"9535\";s:9:\"post_date\";s:19:\"2018-11-12 06:38:41\";}}s:32:\"12648c25c0bd16ef586684a3e1c293f1\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"20\";s:15:\"sparkline_value\";s:2:\"16\";s:9:\"post_date\";s:19:\"2018-11-12 06:38:41\";}}}', 'no'),
(2095, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1542062610', 'no'),
(2096, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(2105, '_transient_timeout__woocommerce_helper_updates', '1542063195', 'no'),
(2106, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1542019995;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(2108, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1542030824', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2109, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4521;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3114;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2600;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2456;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1889;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1689;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1684;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1461;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1412;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1409;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1408;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1341;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1258;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1122;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1079;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1057;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1043;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:947;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:903;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:836;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:821;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:812;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:744;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:714;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:699;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:698;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:690;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:688;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:672;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:670;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:663;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:652;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:648;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:627;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:627;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:620;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:608;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:604;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:603;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:575;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:557;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:549;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:545;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:535;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:530;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:518;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:517;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:511;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:511;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:502;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:494;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:491;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:485;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:465;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:465;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:457;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:453;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:446;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:440;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:431;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:426;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:426;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:419;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:411;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:395;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:385;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:375;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:372;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:371;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:369;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:369;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:365;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:355;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:354;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:352;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:351;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:345;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:342;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:341;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:338;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:336;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:333;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:315;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:313;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:311;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:305;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:304;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:303;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:303;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}}', 'no'),
(2118, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542020373;s:7:\"checked\";a:14:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:73:\"atum-stock-manager-for-woocommerce/atum-stock-manager-for-woocommerce.php\";s:8:\"1.4.18.2\";s:9:\"hello.php\";s:3:\"1.7\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:5:\"4.2.5\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.0.2\";s:23:\"revslider/revslider.php\";s:5:\"5.4.8\";s:41:\"Ultimate_VC_Addons/Ultimate_VC_Addons.php\";s:7:\"3.16.24\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";s:5:\"4.4.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.1\";s:27:\"js_composer/js_composer.php\";s:5:\"5.5.2\";s:37:\"yith-woocommerce-ajax-search/init.php\";s:5:\"1.6.1\";s:33:\"yith-woocommerce-compare/init.php\";s:5:\"2.3.5\";s:36:\"yith-woocommerce-quick-view/init.php\";s:5:\"1.3.5\";s:34:\"yith-woocommerce-wishlist/init.php\";s:5:\"2.2.5\";}s:8:\"response\";a:3:{s:42:\"uni-woo-custom-product-options/uni-cpo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:44:\"w.org/plugins/uni-woo-custom-product-options\";s:4:\"slug\";s:30:\"uni-woo-custom-product-options\";s:6:\"plugin\";s:42:\"uni-woo-custom-product-options/uni-cpo.php\";s:11:\"new_version\";s:5:\"4.4.4\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/uni-woo-custom-product-options/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/uni-woo-custom-product-options.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/uni-woo-custom-product-options/assets/icon-256x256.jpg?rev=1764217\";s:2:\"1x\";s:83:\"https://ps.w.org/uni-woo-custom-product-options/assets/icon-128x128.jpg?rev=1764217\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/uni-woo-custom-product-options/assets/banner-1544x500.jpg?rev=1764189\";s:2:\"1x\";s:85:\"https://ps.w.org/uni-woo-custom-product-options/assets/banner-772x250.jpg?rev=1764189\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.0\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:5:\"5.5.5\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:21:\"WPBakery Page Builder\";}s:41:\"Ultimate_VC_Addons/Ultimate_VC_Addons.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:7:\"6892199\";s:4:\"slug\";s:18:\"Ultimate_VC_Addons\";s:6:\"plugin\";s:41:\"Ultimate_VC_Addons/Ultimate_VC_Addons.php\";s:11:\"new_version\";s:6:\"3.17.0\";s:3:\"url\";s:74:\"https://codecanyon.net/cart/add_items?item_ids=6892199&ref=BrainstormForce\";s:7:\"package\";s:0:\"\";s:14:\"upgrade_notice\";s:58:\"Please activate your license to receive automatic updates.\";s:6:\"tested\";s:0:\"\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:73:\"atum-stock-manager-for-woocommerce/atum-stock-manager-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/atum-stock-manager-for-woocommerce\";s:4:\"slug\";s:34:\"atum-stock-manager-for-woocommerce\";s:6:\"plugin\";s:73:\"atum-stock-manager-for-woocommerce/atum-stock-manager-for-woocommerce.php\";s:11:\"new_version\";s:8:\"1.4.18.2\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/atum-stock-manager-for-woocommerce/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/atum-stock-manager-for-woocommerce.1.4.18.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:87:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/icon-256x256.png?rev=1634691\";s:2:\"1x\";s:79:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/icon.svg?rev=1634692\";s:3:\"svg\";s:79:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/icon.svg?rev=1634692\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/banner-1544x500.jpg?rev=1693950\";s:2:\"1x\";s:89:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/banner-772x250.jpg?rev=1693947\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:94:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/banner-1544x500-rtl.jpg?rev=1693949\";s:2:\"1x\";s:93:\"https://ps.w.org/atum-stock-manager-for-woocommerce/assets/banner-772x250-rtl.jpg?rev=1693946\";}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/mailchimp-for-wp\";s:4:\"slug\";s:16:\"mailchimp-for-wp\";s:6:\"plugin\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:11:\"new_version\";s:5:\"4.2.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/mailchimp-for-wp/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/mailchimp-for-wp.4.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-256x256.png?rev=1224577\";s:2:\"1x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-128x128.png?rev=1224577\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/mailchimp-for-wp/assets/banner-772x250.png?rev=1184706\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"yith-woocommerce-ajax-search/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/yith-woocommerce-ajax-search\";s:4:\"slug\";s:28:\"yith-woocommerce-ajax-search\";s:6:\"plugin\";s:37:\"yith-woocommerce-ajax-search/init.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/yith-woocommerce-ajax-search/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/yith-woocommerce-ajax-search.1.6.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/yith-woocommerce-ajax-search/assets/icon-128x128.jpg?rev=1460948\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/yith-woocommerce-ajax-search/assets/banner-1544x500.jpg?rev=1460948\";s:2:\"1x\";s:83:\"https://ps.w.org/yith-woocommerce-ajax-search/assets/banner-772x250.jpg?rev=1460948\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"yith-woocommerce-compare/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/yith-woocommerce-compare\";s:4:\"slug\";s:24:\"yith-woocommerce-compare\";s:6:\"plugin\";s:33:\"yith-woocommerce-compare/init.php\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/yith-woocommerce-compare/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/yith-woocommerce-compare.2.3.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";s:2:\"1x\";s:79:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-772x250.jpg?rev=1460909\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"yith-woocommerce-quick-view/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/yith-woocommerce-quick-view\";s:4:\"slug\";s:27:\"yith-woocommerce-quick-view\";s:6:\"plugin\";s:36:\"yith-woocommerce-quick-view/init.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/yith-woocommerce-quick-view/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/yith-woocommerce-quick-view.1.3.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-quick-view/assets/icon-128x128.jpg?rev=1460911\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-1544x500.jpg?rev=1460911\";s:2:\"1x\";s:82:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-772x250.jpg?rev=1460911\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:5:\"2.2.5\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2119, 'widget_mc4wp_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2121, 'mc4wp_version', '4.2.5', 'yes'),
(2122, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(2123, 'atum_version', '1.4.18.2', 'yes'),
(2125, '_transient_atum_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"4\";s:14:\"total_comments\";i:4;s:3:\"all\";i:4;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(2128, 'mc4wp', 'a:4:{s:7:\"api_key\";s:37:\"95e3f5d74072f1f1f4b7a9f0bdfbc390-us19\";s:20:\"allow_usage_tracking\";i:0;s:15:\"debug_log_level\";s:7:\"warning\";s:18:\"first_activated_on\";i:1542020415;}', 'yes'),
(2133, 'mc4wp_mailchimp_list_ids', 'a:1:{i:0;s:10:\"a5986f3927\";}', 'no'),
(2134, 'mc4wp_mailchimp_list_a5986f3927', 'O:20:\"MC4WP_MailChimp_List\":7:{s:2:\"id\";s:10:\"a5986f3927\";s:6:\"web_id\";i:28583;s:4:\"name\";s:4:\"plfv\";s:16:\"subscriber_count\";i:1;s:12:\"merge_fields\";a:6:{i:0;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:13:\"Email Address\";s:10:\"field_type\";s:5:\"email\";s:3:\"tag\";s:5:\"EMAIL\";s:8:\"required\";b:1;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:1;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:7:\"Address\";s:10:\"field_type\";s:7:\"address\";s:3:\"tag\";s:7:\"ADDRESS\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:0;s:13:\"default_value\";s:0:\"\";}i:2;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:8:\"Birthday\";s:10:\"field_type\";s:8:\"birthday\";s:3:\"tag\";s:8:\"BIRTHDAY\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:3;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:10:\"First Name\";s:10:\"field_type\";s:4:\"text\";s:3:\"tag\";s:5:\"FNAME\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:4;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:9:\"Last Name\";s:10:\"field_type\";s:4:\"text\";s:3:\"tag\";s:5:\"LNAME\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:1;s:13:\"default_value\";s:0:\"\";}i:5;O:27:\"MC4WP_MailChimp_Merge_Field\":7:{s:4:\"name\";s:12:\"Phone Number\";s:10:\"field_type\";s:5:\"phone\";s:3:\"tag\";s:5:\"PHONE\";s:8:\"required\";b:0;s:7:\"choices\";a:0:{}s:6:\"public\";b:0;s:13:\"default_value\";s:0:\"\";}}s:19:\"interest_categories\";a:0:{}s:17:\"campaign_defaults\";O:8:\"stdClass\":2:{s:9:\"from_name\";s:5:\"Quynh\";s:10:\"from_email\";s:27:\"quynhquynh.hn1997@gmail.com\";}}', 'no'),
(2136, 'mc4wp_default_form_id', '179', 'yes'),
(2138, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(2149, '_transient_timeout_atum_all_products_88e4167dc43161219c45ca8bb0121417', '1542024563', 'no'),
(2150, '_transient_atum_all_products_88e4167dc43161219c45ca8bb0121417', 'a:48:{i:0;i:158;i:1;i:156;i:2;i:154;i:3;i:152;i:4;i:150;i:5;i:148;i:6;i:146;i:7;i:144;i:8;i:142;i:9;i:140;i:10;i:138;i:11;i:136;i:12;i:134;i:13;i:132;i:14;i:130;i:15;i:128;i:16;i:126;i:17;i:123;i:18;i:120;i:19;i:118;i:20;i:116;i:21;i:114;i:22;i:112;i:23;i:110;i:24;i:108;i:25;i:106;i:26;i:103;i:27;i:101;i:28;i:97;i:29;i:95;i:30;i:93;i:31;i:91;i:32;i:89;i:33;i:87;i:34;i:84;i:35;i:82;i:36;i:80;i:37;i:75;i:38;i:73;i:39;i:71;i:40;i:69;i:41;i:67;i:42;i:58;i:43;i:63;i:44;i:61;i:45;i:59;i:46;i:44;i:47;i:20;}', 'no'),
(2151, '_transient_timeout_atum_all_products_f640e1ba38eada4a2dcf06ca102d72d1', '1542024564', 'no'),
(2152, '_transient_atum_all_products_f640e1ba38eada4a2dcf06ca102d72d1', 'a:48:{i:0;i:158;i:1;i:156;i:2;i:154;i:3;i:152;i:4;i:150;i:5;i:148;i:6;i:146;i:7;i:144;i:8;i:142;i:9;i:140;i:10;i:138;i:11;i:136;i:12;i:134;i:13;i:132;i:14;i:130;i:15;i:128;i:16;i:126;i:17;i:123;i:18;i:120;i:19;i:118;i:20;i:116;i:21;i:114;i:22;i:112;i:23;i:110;i:24;i:108;i:25;i:106;i:26;i:103;i:27;i:101;i:28;i:97;i:29;i:95;i:30;i:93;i:31;i:91;i:32;i:89;i:33;i:87;i:34;i:84;i:35;i:82;i:36;i:80;i:37;i:75;i:38;i:73;i:39;i:71;i:40;i:69;i:41;i:67;i:42;i:58;i:43;i:63;i:44;i:61;i:45;i:59;i:46;i:44;i:47;i:20;}', 'no'),
(2153, '_transient_timeout_feed_d4c9c3e3bae378bca8094cf2ab4b01d9', '1542028170', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2154, '_transient_feed_d4c9c3e3bae378bca8094cf2ab4b01d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:40:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Stock Management Labs™\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://www.stockmanagementlabs.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"The ultimate stock management plugin for serious WooCommerce Sellers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Nov 2018 12:08:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-GB\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=4.9.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:7:{i:0;a:6:{s:4:\"data\";s:41:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Online better than Brick\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://www.stockmanagementlabs.com/online-better-than-brick/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.stockmanagementlabs.com/online-better-than-brick/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Mar 2018 07:00:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"General Business\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://www.stockmanagementlabs.com/?p=8947\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:254:\"Minimum Costs - Maximum Effectivity with Maintenance, Repair, and Operations Inventory Control.\r\nBalancing these challenging requirements leads to ideal inventory levels. The process is ongoing, as the business needs to react to the changing environment.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://www.stockmanagementlabs.com/online-better-than-brick/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:99:\"https://www.stockmanagementlabs.com/wp-content/uploads/2018/03/Online-better-than-Brick-300x200.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"200\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:56:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Product Levels – The Manufacturing Premium Add-on\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://www.stockmanagementlabs.com/product-levels-manufacturing-premium-add/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://www.stockmanagementlabs.com/product-levels-manufacturing-premium-add/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Feb 2018 17:32:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:12:\"New Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"Premium Add-ons\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"Request a Feature\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:17:\"Bill Of Materials\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"Manufacturing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:14:\"Product Levels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://www.stockmanagementlabs.com/?p=8795\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:168:\"Our first official Premium add-on has been out there in the wild for some time now. We would like to thank all those users that have tried and purchased. Because of...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://www.stockmanagementlabs.com/product-levels-manufacturing-premium-add/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:99:\"https://www.stockmanagementlabs.com/wp-content/uploads/2017/01/product-levels-1920x1080-300x169.png\";s:4:\"type\";s:9:\"image/png\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"169\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:47:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Understanding Inventory Management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://www.stockmanagementlabs.com/understanding-inventory-management/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://www.stockmanagementlabs.com/understanding-inventory-management/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 11:37:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:20:\"Inventory Management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Inventory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:20:\"Inventory management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://www.stockmanagementlabs.com/?p=8718\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:256:\"If you are starting a new online business, you must have a comprehensive understanding of inventory management. It is important to know, how it applies to your store. So, in this article, we will discuss some of the basics of inventory or stock management.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://www.stockmanagementlabs.com/understanding-inventory-management/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:109:\"https://www.stockmanagementlabs.com/wp-content/uploads/2018/02/Understanding-Inventory-Management-300x169.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"169\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:47:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Understanding FIFO Inventory Valuation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://www.stockmanagementlabs.com/fifo-inventory-valuation/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.stockmanagementlabs.com/fifo-inventory-valuation/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 12 Jan 2018 19:21:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:20:\"Inventory Management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:20:\"FIFO for WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:18:\"First In First Out\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"http://staging2.stockmanagementlabs.com/?p=8613\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:183:\"There are many different inventory valuation methods, and it can be hard to understand them all. In this post, we will take a look at FIFO Inventory Valuation, and discuss the basics.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://www.stockmanagementlabs.com/fifo-inventory-valuation/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:113:\"https://www.stockmanagementlabs.com/wp-content/uploads/2018/01/Understanding-FIFO-Inventory-Valuation-300x169.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"169\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:53:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Minimum Costs – Maximum Effectivity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://www.stockmanagementlabs.com/minimum-costs-maximum-effectivity/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://www.stockmanagementlabs.com/minimum-costs-maximum-effectivity/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Nov 2017 08:23:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:20:\"Inventory Management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:19:\"Balancing The Costs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"Inventory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"Management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:5:\"Stock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://www.stockmanagementlabs.com/?p=1520\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:254:\"Minimum Costs - Maximum Effectivity with Maintenance, Repair, and Operations Inventory Control.\r\nBalancing these challenging requirements leads to ideal inventory levels. The process is ongoing, as the business needs to react to the changing environment.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://www.stockmanagementlabs.com/minimum-costs-maximum-effectivity/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:114:\"https://www.stockmanagementlabs.com/wp-content/uploads/2017/11/Minimum-Costs-–-Maximum-Effectivity-1-300x169.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"169\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:41:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Logistics – ATUM and the definition\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://www.stockmanagementlabs.com/logistics-atum-and-the-definition/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://www.stockmanagementlabs.com/logistics-atum-and-the-definition/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Nov 2017 06:52:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Inventory Management\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://www.stockmanagementlabs.com/?p=1522\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:203:\"Logistics, ATUM and the definition came to mind when I was thinking of the first blog post. There was no other way to start then to tell you how I understand the most inflected business term, logistics.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://www.stockmanagementlabs.com/logistics-atum-and-the-definition/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:110:\"https://www.stockmanagementlabs.com/wp-content/uploads/2017/11/Logistics-ATUM-and-the-definition-1-300x169.jpg\";s:4:\"type\";s:10:\"image/jpeg\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"169\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:56:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n		\n		\n			\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Expiry or Best Before Dates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://www.stockmanagementlabs.com/expiry-or-best-before-dates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://www.stockmanagementlabs.com/expiry-or-best-before-dates/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Jan 2017 18:19:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:12:\"New Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"Premium Add-ons\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"Request a Feature\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:17:\"Best Before Dates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:12:\"Expiry Dates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:17:\"Product Life Span\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://themenectar.com/demo/salient-blog-ultimate/?p=5782\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:196:\"Expiry or Best Before Dates One of the users&#8217; most requested features; The use of lifespan dates is vital to many businesses in food, pharmaceuticals or cosmetic industry. The &#8216;best...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pavel Minarik\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.stockmanagementlabs.com/expiry-or-best-before-dates/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:29:\"http://search.yahoo.com/mrss/\";a:1:{s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:5:{s:3:\"url\";s:97:\"https://www.stockmanagementlabs.com/wp-content/uploads/2017/01/expiry-dates-1920x1080-300x169.png\";s:4:\"type\";s:9:\"image/png\";s:6:\"medium\";s:5:\"image\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"169\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:41:\"https://www.stockmanagementlabs.com/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:4:\"date\";s:29:\"Mon, 12 Nov 2018 11:09:29 GMT\";s:6:\"server\";s:6:\"Apache\";s:12:\"x-powered-by\";s:10:\"PHP/5.6.38\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:4:\"link\";s:72:\"<https://www.stockmanagementlabs.com/wp-json/>; rel=\"https://api.w.org/\"\";s:10:\"set-cookie\";s:92:\"aelia_cs_selected_currency=GBP; expires=Tue, 13-Nov-2018 11:09:30 GMT; Max-Age=86400; path=/\";s:13:\"last-modified\";s:29:\"Thu, 08 Nov 2018 12:08:01 GMT\";s:4:\"etag\";s:34:\"\"966d3f3e3016c138ee8c720a2ce54954\"\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no'),
(2155, '_transient_timeout_feed_mod_d4c9c3e3bae378bca8094cf2ab4b01d9', '1542028171', 'no'),
(2156, '_transient_feed_mod_d4c9c3e3bae378bca8094cf2ab4b01d9', '1542020971', 'no'),
(2157, '_transient_atum_list_table_all_ae5d4f913de02924a97eb87dbc9f78bc', 'a:48:{i:0;i:142;i:1;i:87;i:2;i:71;i:3;i:61;i:4;i:75;i:5;i:69;i:6;i:108;i:7;i:101;i:8;i:103;i:9;i:154;i:10;i:158;i:11;i:156;i:12;i:44;i:13;i:20;i:14;i:89;i:15;i:82;i:16;i:73;i:17;i:134;i:18;i:91;i:19;i:136;i:20;i:132;i:21;i:123;i:22;i:140;i:23;i:114;i:24;i:110;i:25;i:118;i:26;i:144;i:27;i:84;i:28;i:67;i:29;i:59;i:30;i:58;i:31;i:148;i:32;i:150;i:33;i:152;i:34;i:116;i:35;i:95;i:36;i:106;i:37;i:80;i:38;i:93;i:39;i:97;i:40;i:63;i:41;i:146;i:42;i:126;i:43;i:128;i:44;i:112;i:45;i:120;i:46;i:130;i:47;i:138;}', 'yes'),
(2159, '_transient_atum_list_table_in_stock_fdb006b44545b3feaa9a7a2802177f47', 'O:8:\"WP_Query\":48:{s:5:\"query\";a:5:{s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:14:\"posts_per_page\";i:-1;s:6:\"fields\";s:3:\"ids\";s:10:\"meta_query\";a:1:{i:0;a:4:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:1:\">\";}}s:8:\"post__in\";a:0:{}}s:10:\"query_vars\";a:65:{s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:14:\"posts_per_page\";i:-1;s:6:\"fields\";s:3:\"ids\";s:10:\"meta_query\";a:1:{i:0;a:4:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:1:\">\";}}s:8:\"post__in\";a:0:{}s:5:\"error\";s:0:\"\";s:1:\"m\";s:0:\"\";s:1:\"p\";i:0;s:11:\"post_parent\";s:0:\"\";s:7:\"subpost\";s:0:\"\";s:10:\"subpost_id\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:13:\"attachment_id\";i:0;s:4:\"name\";s:0:\"\";s:6:\"static\";s:0:\"\";s:8:\"pagename\";s:0:\"\";s:7:\"page_id\";i:0;s:6:\"second\";s:0:\"\";s:6:\"minute\";s:0:\"\";s:4:\"hour\";s:0:\"\";s:3:\"day\";i:0;s:8:\"monthnum\";i:0;s:4:\"year\";i:0;s:1:\"w\";i:0;s:13:\"category_name\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:3:\"cat\";s:0:\"\";s:6:\"tag_id\";s:0:\"\";s:6:\"author\";s:0:\"\";s:11:\"author_name\";s:0:\"\";s:4:\"feed\";s:0:\"\";s:2:\"tb\";s:0:\"\";s:5:\"paged\";i:0;s:8:\"meta_key\";s:0:\"\";s:10:\"meta_value\";s:0:\"\";s:7:\"preview\";s:0:\"\";s:1:\"s\";s:0:\"\";s:8:\"sentence\";s:0:\"\";s:5:\"title\";s:0:\"\";s:10:\"menu_order\";s:0:\"\";s:5:\"embed\";s:0:\"\";s:12:\"category__in\";a:0:{}s:16:\"category__not_in\";a:0:{}s:13:\"category__and\";a:0:{}s:12:\"post__not_in\";a:0:{}s:13:\"post_name__in\";a:0:{}s:7:\"tag__in\";a:0:{}s:11:\"tag__not_in\";a:0:{}s:8:\"tag__and\";a:0:{}s:12:\"tag_slug__in\";a:0:{}s:13:\"tag_slug__and\";a:0:{}s:15:\"post_parent__in\";a:0:{}s:19:\"post_parent__not_in\";a:0:{}s:10:\"author__in\";a:0:{}s:14:\"author__not_in\";a:0:{}s:19:\"ignore_sticky_posts\";b:0;s:16:\"suppress_filters\";b:0;s:13:\"cache_results\";b:1;s:22:\"update_post_term_cache\";b:1;s:19:\"lazy_load_term_meta\";b:1;s:22:\"update_post_meta_cache\";b:1;s:8:\"nopaging\";b:1;s:17:\"comments_per_page\";s:2:\"50\";s:13:\"no_found_rows\";b:0;s:5:\"order\";s:4:\"DESC\";}s:9:\"tax_query\";O:12:\"WP_Tax_Query\":6:{s:7:\"queries\";a:0:{}s:8:\"relation\";s:3:\"AND\";s:16:\"\0*\0table_aliases\";a:0:{}s:13:\"queried_terms\";a:0:{}s:13:\"primary_table\";s:8:\"wp_posts\";s:17:\"primary_id_column\";s:2:\"ID\";}s:10:\"meta_query\";O:13:\"WP_Meta_Query\":9:{s:7:\"queries\";a:2:{i:0;a:4:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:1:\">\";}s:8:\"relation\";s:2:\"OR\";}s:8:\"relation\";s:3:\"AND\";s:10:\"meta_table\";s:11:\"wp_postmeta\";s:14:\"meta_id_column\";s:7:\"post_id\";s:13:\"primary_table\";s:8:\"wp_posts\";s:17:\"primary_id_column\";s:2:\"ID\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:11:\"wp_postmeta\";}s:10:\"\0*\0clauses\";a:1:{s:11:\"wp_postmeta\";a:6:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:1:\">\";s:5:\"alias\";s:11:\"wp_postmeta\";s:4:\"cast\";s:6:\"SIGNED\";}}s:18:\"\0*\0has_or_relation\";b:0;}s:10:\"date_query\";b:0;s:7:\"request\";s:476:\"SELECT   wp_posts.ID FROM wp_posts  INNER JOIN wp_postmeta ON ( wp_posts.ID = wp_postmeta.post_id ) WHERE 1=1  AND ( \n  ( wp_postmeta.meta_key = \'_stock\' AND CAST(wp_postmeta.meta_value AS SIGNED) > \'0\' )\n) AND wp_posts.post_type = \'product\' AND (wp_posts.post_status = \'publish\' OR wp_posts.post_status = \'future\' OR wp_posts.post_status = \'draft\' OR wp_posts.post_status = \'pending\' OR wp_posts.post_status = \'private\') GROUP BY wp_posts.ID ORDER BY wp_posts.post_date DESC \";s:5:\"posts\";a:0:{}s:10:\"post_count\";i:0;s:12:\"current_post\";i:-1;s:11:\"in_the_loop\";b:0;s:13:\"comment_count\";i:0;s:15:\"current_comment\";i:-1;s:11:\"found_posts\";i:0;s:13:\"max_num_pages\";i:0;s:21:\"max_num_comment_pages\";i:0;s:9:\"is_single\";b:0;s:10:\"is_preview\";b:0;s:7:\"is_page\";b:0;s:10:\"is_archive\";b:0;s:7:\"is_date\";b:0;s:7:\"is_year\";b:0;s:8:\"is_month\";b:0;s:6:\"is_day\";b:0;s:7:\"is_time\";b:0;s:9:\"is_author\";b:0;s:11:\"is_category\";b:0;s:6:\"is_tag\";b:0;s:6:\"is_tax\";b:0;s:9:\"is_search\";b:0;s:7:\"is_feed\";b:0;s:15:\"is_comment_feed\";b:0;s:12:\"is_trackback\";b:0;s:7:\"is_home\";b:0;s:6:\"is_404\";b:0;s:8:\"is_embed\";b:0;s:8:\"is_paged\";b:0;s:8:\"is_admin\";b:1;s:13:\"is_attachment\";b:0;s:11:\"is_singular\";b:0;s:9:\"is_robots\";b:0;s:13:\"is_posts_page\";b:0;s:20:\"is_post_type_archive\";b:0;s:25:\"\0WP_Query\0query_vars_hash\";s:32:\"e3e18e92f9cdcfc76e81fb2ce211886d\";s:28:\"\0WP_Query\0query_vars_changed\";b:0;s:17:\"thumbnails_cached\";b:0;s:19:\"\0WP_Query\0stopwords\";N;s:23:\"\0WP_Query\0compat_fields\";a:2:{i:0;s:15:\"query_vars_hash\";i:1;s:18:\"query_vars_changed\";}s:24:\"\0WP_Query\0compat_methods\";a:2:{i:0;s:16:\"init_query_flags\";i:1;s:15:\"parse_tax_query\";}}', 'yes'),
(2160, '_transient_atum_list_table_back_order_208a592fb6cad9c9f85d583259b315e6', 'O:8:\"WP_Query\":48:{s:5:\"query\";a:5:{s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:14:\"posts_per_page\";i:-1;s:6:\"fields\";s:3:\"ids\";s:10:\"meta_query\";a:3:{s:8:\"relation\";s:3:\"AND\";i:0;a:4:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:2:\"<=\";}i:1;a:4:{s:3:\"key\";s:11:\"_backorders\";s:5:\"value\";a:2:{i:0;s:3:\"yes\";i:1;s:6:\"notify\";}s:4:\"type\";s:4:\"char\";s:7:\"compare\";s:2:\"IN\";}}s:8:\"post__in\";a:0:{}}s:10:\"query_vars\";a:65:{s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:14:\"posts_per_page\";i:-1;s:6:\"fields\";s:3:\"ids\";s:10:\"meta_query\";a:3:{s:8:\"relation\";s:3:\"AND\";i:0;a:4:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:2:\"<=\";}i:1;a:4:{s:3:\"key\";s:11:\"_backorders\";s:5:\"value\";a:2:{i:0;s:3:\"yes\";i:1;s:6:\"notify\";}s:4:\"type\";s:4:\"char\";s:7:\"compare\";s:2:\"IN\";}}s:8:\"post__in\";a:0:{}s:5:\"error\";s:0:\"\";s:1:\"m\";s:0:\"\";s:1:\"p\";i:0;s:11:\"post_parent\";s:0:\"\";s:7:\"subpost\";s:0:\"\";s:10:\"subpost_id\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:13:\"attachment_id\";i:0;s:4:\"name\";s:0:\"\";s:6:\"static\";s:0:\"\";s:8:\"pagename\";s:0:\"\";s:7:\"page_id\";i:0;s:6:\"second\";s:0:\"\";s:6:\"minute\";s:0:\"\";s:4:\"hour\";s:0:\"\";s:3:\"day\";i:0;s:8:\"monthnum\";i:0;s:4:\"year\";i:0;s:1:\"w\";i:0;s:13:\"category_name\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:3:\"cat\";s:0:\"\";s:6:\"tag_id\";s:0:\"\";s:6:\"author\";s:0:\"\";s:11:\"author_name\";s:0:\"\";s:4:\"feed\";s:0:\"\";s:2:\"tb\";s:0:\"\";s:5:\"paged\";i:0;s:8:\"meta_key\";s:0:\"\";s:10:\"meta_value\";s:0:\"\";s:7:\"preview\";s:0:\"\";s:1:\"s\";s:0:\"\";s:8:\"sentence\";s:0:\"\";s:5:\"title\";s:0:\"\";s:10:\"menu_order\";s:0:\"\";s:5:\"embed\";s:0:\"\";s:12:\"category__in\";a:0:{}s:16:\"category__not_in\";a:0:{}s:13:\"category__and\";a:0:{}s:12:\"post__not_in\";a:0:{}s:13:\"post_name__in\";a:0:{}s:7:\"tag__in\";a:0:{}s:11:\"tag__not_in\";a:0:{}s:8:\"tag__and\";a:0:{}s:12:\"tag_slug__in\";a:0:{}s:13:\"tag_slug__and\";a:0:{}s:15:\"post_parent__in\";a:0:{}s:19:\"post_parent__not_in\";a:0:{}s:10:\"author__in\";a:0:{}s:14:\"author__not_in\";a:0:{}s:19:\"ignore_sticky_posts\";b:0;s:16:\"suppress_filters\";b:0;s:13:\"cache_results\";b:1;s:22:\"update_post_term_cache\";b:1;s:19:\"lazy_load_term_meta\";b:1;s:22:\"update_post_meta_cache\";b:1;s:8:\"nopaging\";b:1;s:17:\"comments_per_page\";s:2:\"50\";s:13:\"no_found_rows\";b:0;s:5:\"order\";s:4:\"DESC\";}s:9:\"tax_query\";O:12:\"WP_Tax_Query\":6:{s:7:\"queries\";a:0:{}s:8:\"relation\";s:3:\"AND\";s:16:\"\0*\0table_aliases\";a:0:{}s:13:\"queried_terms\";a:0:{}s:13:\"primary_table\";s:8:\"wp_posts\";s:17:\"primary_id_column\";s:2:\"ID\";}s:10:\"meta_query\";O:13:\"WP_Meta_Query\":9:{s:7:\"queries\";a:3:{i:0;a:4:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:2:\"<=\";}i:1;a:4:{s:3:\"key\";s:11:\"_backorders\";s:5:\"value\";a:2:{i:0;s:3:\"yes\";i:1;s:6:\"notify\";}s:4:\"type\";s:4:\"char\";s:7:\"compare\";s:2:\"IN\";}s:8:\"relation\";s:3:\"AND\";}s:8:\"relation\";s:3:\"AND\";s:10:\"meta_table\";s:11:\"wp_postmeta\";s:14:\"meta_id_column\";s:7:\"post_id\";s:13:\"primary_table\";s:8:\"wp_posts\";s:17:\"primary_id_column\";s:2:\"ID\";s:16:\"\0*\0table_aliases\";a:2:{i:0;s:11:\"wp_postmeta\";i:1;s:3:\"mt1\";}s:10:\"\0*\0clauses\";a:2:{s:11:\"wp_postmeta\";a:6:{s:3:\"key\";s:6:\"_stock\";s:5:\"value\";i:0;s:4:\"type\";s:7:\"numeric\";s:7:\"compare\";s:2:\"<=\";s:5:\"alias\";s:11:\"wp_postmeta\";s:4:\"cast\";s:6:\"SIGNED\";}s:3:\"mt1\";a:6:{s:3:\"key\";s:11:\"_backorders\";s:5:\"value\";a:2:{i:0;s:3:\"yes\";i:1;s:6:\"notify\";}s:4:\"type\";s:4:\"char\";s:7:\"compare\";s:2:\"IN\";s:5:\"alias\";s:3:\"mt1\";s:4:\"cast\";s:4:\"CHAR\";}}s:18:\"\0*\0has_or_relation\";b:0;}s:10:\"date_query\";b:0;s:7:\"request\";s:623:\"SELECT   wp_posts.ID FROM wp_posts  INNER JOIN wp_postmeta ON ( wp_posts.ID = wp_postmeta.post_id )  INNER JOIN wp_postmeta AS mt1 ON ( wp_posts.ID = mt1.post_id ) WHERE 1=1  AND ( \n  ( wp_postmeta.meta_key = \'_stock\' AND CAST(wp_postmeta.meta_value AS SIGNED) <= \'0\' ) \n  AND \n  ( mt1.meta_key = \'_backorders\' AND mt1.meta_value IN (\'yes\',\'notify\') )\n) AND wp_posts.post_type = \'product\' AND (wp_posts.post_status = \'publish\' OR wp_posts.post_status = \'future\' OR wp_posts.post_status = \'draft\' OR wp_posts.post_status = \'pending\' OR wp_posts.post_status = \'private\') GROUP BY wp_posts.ID ORDER BY wp_posts.post_date DESC \";s:5:\"posts\";a:0:{}s:10:\"post_count\";i:0;s:12:\"current_post\";i:-1;s:11:\"in_the_loop\";b:0;s:13:\"comment_count\";i:0;s:15:\"current_comment\";i:-1;s:11:\"found_posts\";i:0;s:13:\"max_num_pages\";i:0;s:21:\"max_num_comment_pages\";i:0;s:9:\"is_single\";b:0;s:10:\"is_preview\";b:0;s:7:\"is_page\";b:0;s:10:\"is_archive\";b:0;s:7:\"is_date\";b:0;s:7:\"is_year\";b:0;s:8:\"is_month\";b:0;s:6:\"is_day\";b:0;s:7:\"is_time\";b:0;s:9:\"is_author\";b:0;s:11:\"is_category\";b:0;s:6:\"is_tag\";b:0;s:6:\"is_tax\";b:0;s:9:\"is_search\";b:0;s:7:\"is_feed\";b:0;s:15:\"is_comment_feed\";b:0;s:12:\"is_trackback\";b:0;s:7:\"is_home\";b:0;s:6:\"is_404\";b:0;s:8:\"is_embed\";b:0;s:8:\"is_paged\";b:0;s:8:\"is_admin\";b:1;s:13:\"is_attachment\";b:0;s:11:\"is_singular\";b:0;s:9:\"is_robots\";b:0;s:13:\"is_posts_page\";b:0;s:20:\"is_post_type_archive\";b:0;s:25:\"\0WP_Query\0query_vars_hash\";s:32:\"a363a01a39b11f46f752305dbafce6e2\";s:28:\"\0WP_Query\0query_vars_changed\";b:0;s:17:\"thumbnails_cached\";b:0;s:19:\"\0WP_Query\0stopwords\";N;s:23:\"\0WP_Query\0compat_fields\";a:2:{i:0;s:15:\"query_vars_hash\";i:1;s:18:\"query_vars_changed\";}s:24:\"\0WP_Query\0compat_methods\";a:2:{i:0;s:16:\"init_query_flags\";i:1;s:15:\"parse_tax_query\";}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(15, 15, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(16, 15, '_menu_item_type', 'post_type'),
(17, 15, '_menu_item_menu_item_parent', '0'),
(18, 15, '_menu_item_object_id', '9'),
(19, 15, '_menu_item_object', 'page'),
(20, 15, '_menu_item_target', ''),
(21, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 15, '_menu_item_xfn', ''),
(23, 15, '_menu_item_url', ''),
(25, 16, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(26, 16, '_menu_item_type', 'post_type'),
(27, 16, '_menu_item_menu_item_parent', '0'),
(28, 16, '_menu_item_object_id', '8'),
(29, 16, '_menu_item_object', 'page'),
(30, 16, '_menu_item_target', ''),
(31, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 16, '_menu_item_xfn', ''),
(33, 16, '_menu_item_url', ''),
(35, 17, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(36, 17, '_menu_item_type', 'post_type'),
(37, 17, '_menu_item_menu_item_parent', '0'),
(38, 17, '_menu_item_object_id', '7'),
(39, 17, '_menu_item_object', 'page'),
(40, 17, '_menu_item_target', ''),
(41, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 17, '_menu_item_xfn', ''),
(43, 17, '_menu_item_url', ''),
(45, 18, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(46, 18, '_menu_item_type', 'post_type'),
(47, 18, '_menu_item_menu_item_parent', '0'),
(48, 18, '_menu_item_object_id', '6'),
(49, 18, '_menu_item_object', 'page'),
(50, 18, '_menu_item_target', ''),
(51, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 18, '_menu_item_xfn', ''),
(53, 18, '_menu_item_url', ''),
(55, 19, '_wp_attached_file', '2018/11/anh-thien-nhien-dep1.jpg'),
(56, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2018/11/anh-thien-nhien-dep1.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"anh-thien-nhien-dep1-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"flare-main-banner\";a:4:{s:4:\"file\";s:33:\"anh-thien-nhien-dep1-1280x650.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"flare-blog\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-900x650.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"anh-thien-nhien-dep1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 19, '_wp_attachment_is_custom_background', 'flare'),
(58, 20, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(59, 20, '_wc_review_count', '1'),
(60, 20, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(61, 20, '_wc_average_rating', '4.00'),
(62, 20, '_edit_last', '1'),
(63, 20, '_edit_lock', '1541227653:1'),
(64, 21, '_wp_attached_file', '2018/11/prod001758.jpg'),
(65, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod001758.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod001758-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001758-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod001758-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001758-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"prod001758-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001758-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 20, '_sku', ''),
(67, 20, '_regular_price', '72.00'),
(68, 20, '_sale_price', ''),
(69, 20, '_sale_price_dates_from', ''),
(70, 20, '_sale_price_dates_to', ''),
(71, 20, 'total_sales', '16'),
(72, 20, '_tax_status', 'taxable'),
(73, 20, '_tax_class', ''),
(74, 20, '_manage_stock', 'no'),
(75, 20, '_backorders', 'no'),
(76, 20, '_low_stock_amount', ''),
(77, 20, '_sold_individually', 'no'),
(78, 20, '_weight', ''),
(79, 20, '_length', ''),
(80, 20, '_width', ''),
(81, 20, '_height', ''),
(82, 20, '_upsell_ids', 'a:0:{}'),
(83, 20, '_crosssell_ids', 'a:0:{}'),
(84, 20, '_purchase_note', ''),
(85, 20, '_default_attributes', 'a:0:{}'),
(86, 20, '_virtual', 'no'),
(87, 20, '_downloadable', 'no'),
(88, 20, '_product_image_gallery', ''),
(89, 20, '_download_limit', '-1'),
(90, 20, '_download_expiry', '-1'),
(91, 20, '_stock', NULL),
(92, 20, '_stock_status', 'instock'),
(93, 20, '_product_version', '3.5.1'),
(94, 20, 'slide_template', 'default'),
(95, 20, '_thumbnail_id', '21'),
(96, 6, '_wp_page_template', 'template-homepage.php'),
(97, 22, '_wp_attached_file', '2018/11/cropped-anh-thien-nhien-dep1.jpg'),
(98, 22, '_wp_attachment_context', 'custom-logo'),
(99, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:794;s:4:\"file\";s:40:\"2018/11/cropped-anh-thien-nhien-dep1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-600x372.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-768x476.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:476;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"cropped-anh-thien-nhien-dep1-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-600x372.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-anh-thien-nhien-dep1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 23, '_edit_lock', '1541087127:1'),
(101, 23, '_wp_trash_meta_status', 'publish'),
(102, 23, '_wp_trash_meta_time', '1541087148'),
(103, 20, '_price', '72.00'),
(104, 24, '_wp_trash_meta_status', 'publish'),
(105, 24, '_wp_trash_meta_time', '1541087384'),
(110, 26, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(111, 26, '_edit_last', '1'),
(112, 26, '_wp_page_template', 'default'),
(113, 26, 'slide_template', 'default'),
(114, 27, '_wpb_vc_js_status', 'false'),
(115, 27, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(116, 27, '_menu_item_type', 'post_type'),
(117, 27, '_menu_item_menu_item_parent', '0'),
(118, 27, '_menu_item_object_id', '26'),
(119, 27, '_menu_item_object', 'page'),
(120, 27, '_menu_item_target', ''),
(121, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 27, '_menu_item_xfn', ''),
(123, 27, '_menu_item_url', ''),
(124, 26, '_wpb_vc_js_status', 'false'),
(125, 26, '_edit_lock', '1541138995:1'),
(126, 2, '_edit_lock', '1541171022:1'),
(127, 2, '_wp_trash_meta_status', 'publish'),
(128, 2, '_wp_trash_meta_time', '1541171198'),
(129, 2, '_wp_desired_post_slug', 'sample-page'),
(130, 2, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(131, 30, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(132, 30, '_edit_last', '1'),
(133, 30, '_wp_page_template', 'default'),
(134, 30, 'slide_template', 'default'),
(135, 31, '_wpb_vc_js_status', 'false'),
(136, 31, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(137, 31, '_menu_item_type', 'post_type'),
(138, 31, '_menu_item_menu_item_parent', '0'),
(139, 31, '_menu_item_object_id', '30'),
(140, 31, '_menu_item_object', 'page'),
(141, 31, '_menu_item_target', ''),
(142, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 31, '_menu_item_xfn', ''),
(144, 31, '_menu_item_url', ''),
(145, 30, '_wpb_vc_js_status', 'false'),
(146, 30, '_edit_lock', '1541171663:1'),
(148, 35, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(149, 35, '_module_type', 'text_input'),
(150, 35, '_general', 'a:1:{s:4:\"main\";a:3:{s:5:\"width\";a:2:{s:5:\"value\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:5:\"value\";s:2:\"36\";s:4:\"unit\";s:2:\"px\";}s:7:\"content\";s:0:\"\";}}'),
(151, 35, '_style', 'a:4:{s:5:\"label\";a:5:{s:5:\"color\";s:0:\"\";s:16:\"text_align_label\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:15:\"font_size_label\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:4:\"font\";a:7:{s:5:\"color\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:10:\"font_style\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:9:\"font_size\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";s:0:\"\";}s:6:\"border\";a:6:{s:11:\"border_unit\";s:2:\"px\";s:10:\"border_top\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:13:\"border_bottom\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:11:\"border_left\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:12:\"border_right\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:6:\"radius\";a:2:{s:5:\"value\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}}s:10:\"text_input\";a:1:{s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:2:\"14\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:2:\"14\";s:4:\"unit\";s:2:\"px\";}}}'),
(152, 35, '_advanced', 'a:2:{s:6:\"layout\";a:1:{s:6:\"margin\";a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:9:\"selectors\";a:2:{s:7:\"id_name\";s:0:\"\";s:10:\"class_name\";s:0:\"\";}}'),
(153, 35, '_cpo_general', 'a:2:{s:4:\"main\";a:11:{s:8:\"cpo_slug\";s:0:\"\";s:15:\"cpo_is_required\";s:3:\"yes\";s:8:\"cpo_type\";s:6:\"double\";s:11:\"cpo_min_val\";s:1:\"1\";s:11:\"cpo_max_val\";s:2:\"67\";s:12:\"cpo_step_val\";s:1:\"1\";s:11:\"cpo_def_val\";s:1:\"1\";s:13:\"cpo_min_chars\";s:0:\"\";s:13:\"cpo_max_chars\";s:0:\"\";s:8:\"cpo_rate\";s:0:\"\";s:15:\"cpo_notice_text\";s:0:\"\";}s:8:\"advanced\";a:10:{s:9:\"cpo_label\";s:0:\"\";s:13:\"cpo_label_tag\";s:2:\"h3\";s:15:\"cpo_order_label\";s:1:\"g\";s:14:\"cpo_is_tooltip\";s:3:\"yes\";s:16:\"cpo_tooltip_type\";s:7:\"classic\";s:11:\"cpo_tooltip\";s:0:\"\";s:17:\"cpo_tooltip_image\";a:3:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:1:\"0\";s:3:\"alt\";s:0:\"\";}s:17:\"cpo_tooltip_class\";s:0:\"\";s:19:\"cpo_enable_cartedit\";s:2:\"no\";s:20:\"cpo_order_visibility\";s:2:\"no\";}}'),
(154, 35, '_cpo_conditional', 'a:1:{s:4:\"main\";a:3:{s:9:\"cpo_is_fc\";s:3:\"yes\";s:14:\"cpo_fc_default\";s:4:\"show\";s:13:\"cpo_fc_scheme\";s:0:\"\";}}'),
(155, 35, '_cpo_validation', 'a:2:{s:4:\"main\";a:1:{s:18:\"cpo_validation_msg\";a:3:{s:3:\"req\";s:0:\"\";s:4:\"type\";s:0:\"\";s:6:\"custom\";s:0:\"\";}}s:5:\"logic\";a:2:{s:12:\"cpo_vc_extra\";s:0:\"\";s:9:\"cpo_is_vc\";s:2:\"no\";}}'),
(156, 35, '_option_version', '4.4.1'),
(157, 20, '_cpo_content', 'YToxOntpOjA7YTo4OntzOjI6ImlkIjtzOjg6IjgwYjlhN2RiIjtzOjU6Im9yZGVyIjtpOjA7czo4OiJvYmpfdHlwZSI7czo2OiJtb2R1bGUiO3M6MzoicGlkIjtOO3M6ODoic2V0dGluZ3MiO2E6Mzp7czo3OiJnZW5lcmFsIjthOjI6e3M6Njoic3RhdHVzIjthOjE6e3M6NDoic3luYyI7YToxOntzOjQ6InR5cGUiO3M6NDoibm9uZSI7fX1zOjQ6Im1haW4iO2E6Mjp7czoxMDoid2lkdGhfdHlwZSI7czo0OiJhdXRvIjtzOjU6IndpZHRoIjthOjI6e3M6NToidmFsdWUiO3M6MDoiIjtzOjQ6InVuaXQiO3M6MjoicHgiO319fXM6NToic3R5bGUiO2E6NTp7czo0OiJ0ZXh0IjthOjI6e3M6NToiY29sb3IiO3M6NzoiIzMzMzMzMyI7czoxMDoidGV4dF9hbGlnbiI7czowOiIiO31zOjQ6ImZvbnQiO2E6Njp7czoxMToiZm9udF9mYW1pbHkiO3M6NzoiaW5oZXJpdCI7czoxMDoiZm9udF9zdHlsZSI7czo3OiJpbmhlcml0IjtzOjExOiJmb250X3dlaWdodCI7czowOiIiO3M6OToiZm9udF9zaXplIjthOjI6e3M6NToidmFsdWUiO3M6MDoiIjtzOjQ6InVuaXQiO3M6MjoicHgiO31zOjE0OiJsZXR0ZXJfc3BhY2luZyI7czowOiIiO3M6MTE6ImxpbmVfaGVpZ2h0IjtzOjA6IiI7fXM6NToibGlua3MiO2E6Mjp7czo1OiJjb2xvciI7czowOiIiO3M6MTE6ImNvbG9yX2hvdmVyIjtzOjA6IiI7fXM6MTA6ImJhY2tncm91bmQiO2E6Mzp7czoxNToiYmFja2dyb3VuZF90eXBlIjtzOjA6IiI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7czowOiIiO3M6MTY6ImJhY2tncm91bmRfaW1hZ2UiO2E6Njp7czozOiJ1cmwiO3M6MDoiIjtzOjI6ImlkIjtpOjA7czo2OiJyZXBlYXQiO3M6MDoiIjtzOjg6InBvc2l0aW9uIjtzOjA6IiI7czoxMDoiYXR0YWNobWVudCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO319czo2OiJib3JkZXIiO2E6NTp7czoxMToiYm9yZGVyX3VuaXQiO3M6MjoicHgiO3M6MTA6ImJvcmRlcl90b3AiO2E6Mzp7czo1OiJzdHlsZSI7czo0OiJub25lIjtzOjU6IndpZHRoIjtzOjA6IiI7czo1OiJjb2xvciI7czowOiIiO31zOjEzOiJib3JkZXJfYm90dG9tIjthOjM6e3M6NToic3R5bGUiO3M6NDoibm9uZSI7czo1OiJ3aWR0aCI7czowOiIiO3M6NToiY29sb3IiO3M6MDoiIjt9czoxMToiYm9yZGVyX2xlZnQiO2E6Mzp7czo1OiJzdHlsZSI7czo0OiJub25lIjtzOjU6IndpZHRoIjtzOjA6IiI7czo1OiJjb2xvciI7czowOiIiO31zOjEyOiJib3JkZXJfcmlnaHQiO2E6Mzp7czo1OiJzdHlsZSI7czo0OiJub25lIjtzOjU6IndpZHRoIjtzOjA6IiI7czo1OiJjb2xvciI7czowOiIiO319fXM6ODoiYWR2YW5jZWQiO2E6Mjp7czo2OiJsYXlvdXQiO2E6Mjp7czo2OiJtYXJnaW4iO2E6NTp7czozOiJ0b3AiO3M6MDoiIjtzOjU6InJpZ2h0IjtzOjA6IiI7czo2OiJib3R0b20iO3M6MDoiIjtzOjQ6ImxlZnQiO3M6MDoiIjtzOjQ6InVuaXQiO3M6MjoicHgiO31zOjc6InBhZGRpbmciO2E6NTp7czozOiJ0b3AiO3M6MDoiIjtzOjU6InJpZ2h0IjtzOjA6IiI7czo2OiJib3R0b20iO3M6MDoiIjtzOjQ6ImxlZnQiO3M6MDoiIjtzOjQ6InVuaXQiO3M6MjoicHgiO319czo5OiJzZWxlY3RvcnMiO2E6Mjp7czo3OiJpZF9uYW1lIjtzOjA6IiI7czoxMDoiY2xhc3NfbmFtZSI7czowOiIiO319fXM6NToidGl0bGUiO3M6MzoiUm93IjtzOjQ6InR5cGUiO3M6Mzoicm93IjtzOjc6ImNvbHVtbnMiO2E6MTp7aTowO2E6OTp7czoyOiJpZCI7czo4OiJlOWM4YzQ0MyI7czo1OiJvcmRlciI7aTowO3M6ODoib2JqX3R5cGUiO3M6NjoibW9kdWxlIjtzOjExOiJwYXJlbnRSb3dJZCI7czo4OiI4MGI5YTdkYiI7czozOiJwaWQiO2k6MDtzOjg6InNldHRpbmdzIjthOjM6e3M6NzoiZ2VuZXJhbCI7YToyOntzOjY6InN0YXR1cyI7YToxOntzOjQ6InN5bmMiO2E6MTp7czo0OiJ0eXBlIjtzOjQ6Im5vbmUiO319czo0OiJtYWluIjthOjI6e3M6NToid2lkdGgiO2E6Mjp7czo1OiJ2YWx1ZSI7czozOiIxMDAiO3M6NDoidW5pdCI7czoxOiIlIjt9czo1OiJmbG9hdCI7czo0OiJsZWZ0Ijt9fXM6NToic3R5bGUiO2E6Mjp7czoxMDoiYmFja2dyb3VuZCI7YTozOntzOjE1OiJiYWNrZ3JvdW5kX3R5cGUiO3M6MDoiIjtzOjE2OiJiYWNrZ3JvdW5kX2NvbG9yIjtzOjA6IiI7czoxNjoiYmFja2dyb3VuZF9pbWFnZSI7YTo1OntzOjM6InVybCI7czowOiIiO3M6NjoicmVwZWF0IjtzOjA6IiI7czo4OiJwb3NpdGlvbiI7czowOiIiO3M6MTA6ImF0dGFjaG1lbnQiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjt9fXM6NjoiYm9yZGVyIjthOjY6e3M6MTE6ImJvcmRlcl91bml0IjtzOjI6InB4IjtzOjEwOiJib3JkZXJfdG9wIjthOjM6e3M6NToic3R5bGUiO3M6NDoibm9uZSI7czo1OiJ3aWR0aCI7czowOiIiO3M6NToiY29sb3IiO3M6MDoiIjt9czoxMzoiYm9yZGVyX2JvdHRvbSI7YTozOntzOjU6InN0eWxlIjtzOjQ6Im5vbmUiO3M6NToid2lkdGgiO3M6MDoiIjtzOjU6ImNvbG9yIjtzOjA6IiI7fXM6MTE6ImJvcmRlcl9sZWZ0IjthOjM6e3M6NToic3R5bGUiO3M6NDoibm9uZSI7czo1OiJ3aWR0aCI7czowOiIiO3M6NToiY29sb3IiO3M6MDoiIjt9czoxMjoiYm9yZGVyX3JpZ2h0IjthOjM6e3M6NToic3R5bGUiO3M6NDoibm9uZSI7czo1OiJ3aWR0aCI7czowOiIiO3M6NToiY29sb3IiO3M6MDoiIjt9czo2OiJyYWRpdXMiO2E6Mjp7czo1OiJ2YWx1ZSI7czowOiIiO3M6NDoidW5pdCI7czoyOiJweCI7fX19czo4OiJhZHZhbmNlZCI7YToyOntzOjY6ImxheW91dCI7YToyOntzOjY6Im1hcmdpbiI7YTo1OntzOjM6InRvcCI7czowOiIiO3M6NToicmlnaHQiO3M6MDoiIjtzOjY6ImJvdHRvbSI7czowOiIiO3M6NDoibGVmdCI7czowOiIiO3M6NDoidW5pdCI7czoyOiJweCI7fXM6NzoicGFkZGluZyI7YTo1OntzOjM6InRvcCI7czowOiIiO3M6NToicmlnaHQiO3M6MDoiIjtzOjY6ImJvdHRvbSI7czowOiIiO3M6NDoibGVmdCI7czowOiIiO3M6NDoidW5pdCI7czoyOiJweCI7fX1zOjk6InNlbGVjdG9ycyI7YToyOntzOjc6ImlkX25hbWUiO3M6MDoiIjtzOjEwOiJjbGFzc19uYW1lIjtzOjA6IiI7fX19czo1OiJ0aXRsZSI7czo2OiJDb2x1bW4iO3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NzoibW9kdWxlcyI7YToxOntpOjA7YTo5OntzOjI6ImlkIjtzOjg6Ijc5MGM1NjNjIjtzOjU6Im9yZGVyIjtpOjA7czo4OiJvYmpfdHlwZSI7czo2OiJvcHRpb24iO3M6MTQ6InBhcmVudENvbHVtbklkIjtzOjg6ImU5YzhjNDQzIjtzOjExOiJwYXJlbnRSb3dJZCI7czo4OiI4MGI5YTdkYiI7czozOiJwaWQiO2k6NTA7czo4OiJzZXR0aW5ncyI7YTo2OntzOjc6ImdlbmVyYWwiO2E6Mjp7czo2OiJzdGF0dXMiO2E6MTp7czo0OiJzeW5jIjthOjI6e3M6NDoidHlwZSI7czo0OiJub25lIjtzOjM6InBpZCI7czoxOiIwIjt9fXM6NDoibWFpbiI7YTozOntzOjU6IndpZHRoIjthOjI6e3M6NToidmFsdWUiO3M6MzoiMTAwIjtzOjQ6InVuaXQiO3M6MToiJSI7fXM6NjoiaGVpZ2h0IjthOjI6e3M6NToidmFsdWUiO3M6MjoiMzYiO3M6NDoidW5pdCI7czoyOiJweCI7fXM6NzoiY29udGVudCI7czowOiIiO319czo1OiJzdHlsZSI7YTo0OntzOjU6ImxhYmVsIjthOjU6e3M6NToiY29sb3IiO3M6MDoiIjtzOjE2OiJ0ZXh0X2FsaWduX2xhYmVsIjtzOjQ6ImxlZnQiO3M6MTE6ImZvbnRfZmFtaWx5IjtzOjc6IkNvdXJpZXIiO3M6MTE6ImZvbnRfd2VpZ2h0IjtzOjM6IjQwMCI7czoxNToiZm9udF9zaXplX2xhYmVsIjthOjI6e3M6NToidmFsdWUiO3M6MjoiMTMiO3M6NDoidW5pdCI7czoyOiJweCI7fX1zOjQ6ImZvbnQiO2E6Nzp7czo1OiJjb2xvciI7czowOiIiO3M6MTA6InRleHRfYWxpZ24iO3M6MDoiIjtzOjExOiJmb250X2ZhbWlseSI7czo3OiJpbmhlcml0IjtzOjEwOiJmb250X3N0eWxlIjtzOjc6ImluaGVyaXQiO3M6MTE6ImZvbnRfd2VpZ2h0IjtzOjA6IiI7czo5OiJmb250X3NpemUiO2E6Mjp7czo1OiJ2YWx1ZSI7czowOiIiO3M6NDoidW5pdCI7czoyOiJweCI7fXM6MTQ6ImxldHRlcl9zcGFjaW5nIjtzOjA6IiI7fXM6NjoiYm9yZGVyIjthOjY6e3M6MTE6ImJvcmRlcl91bml0IjtzOjI6InB4IjtzOjEwOiJib3JkZXJfdG9wIjthOjM6e3M6NToic3R5bGUiO3M6NToic29saWQiO3M6NToid2lkdGgiO3M6MToiMSI7czo1OiJjb2xvciI7czo3OiIjZDdkN2Q3Ijt9czoxMzoiYm9yZGVyX2JvdHRvbSI7YTozOntzOjU6InN0eWxlIjtzOjU6InNvbGlkIjtzOjU6IndpZHRoIjtzOjE6IjEiO3M6NToiY29sb3IiO3M6NzoiI2Q3ZDdkNyI7fXM6MTE6ImJvcmRlcl9sZWZ0IjthOjM6e3M6NToic3R5bGUiO3M6NToic29saWQiO3M6NToid2lkdGgiO3M6MToiMSI7czo1OiJjb2xvciI7czo3OiIjZDdkN2Q3Ijt9czoxMjoiYm9yZGVyX3JpZ2h0IjthOjM6e3M6NToic3R5bGUiO3M6NToic29saWQiO3M6NToid2lkdGgiO3M6MToiMSI7czo1OiJjb2xvciI7czo3OiIjZDdkN2Q3Ijt9czo2OiJyYWRpdXMiO2E6Mjp7czo1OiJ2YWx1ZSI7czoxOiI1IjtzOjQ6InVuaXQiO3M6MjoicHgiO319czoxMDoidGV4dF9pbnB1dCI7YToxOntzOjc6InBhZGRpbmciO2E6NTp7czozOiJ0b3AiO3M6MToiMCI7czo1OiJyaWdodCI7czoyOiIxNCI7czo2OiJib3R0b20iO3M6MToiMCI7czo0OiJsZWZ0IjtzOjI6IjE0IjtzOjQ6InVuaXQiO3M6MjoicHgiO319fXM6ODoiYWR2YW5jZWQiO2E6Mjp7czo2OiJsYXlvdXQiO2E6MTp7czo2OiJtYXJnaW4iO2E6NTp7czozOiJ0b3AiO3M6MDoiIjtzOjU6InJpZ2h0IjtzOjA6IiI7czo2OiJib3R0b20iO3M6MDoiIjtzOjQ6ImxlZnQiO3M6MDoiIjtzOjQ6InVuaXQiO3M6MjoicHgiO319czo5OiJzZWxlY3RvcnMiO2E6Mjp7czo3OiJpZF9uYW1lIjtzOjA6IiI7czoxMDoiY2xhc3NfbmFtZSI7czowOiIiO319czoxMToiY3BvX2dlbmVyYWwiO2E6Mjp7czo0OiJtYWluIjthOjExOntzOjg6ImNwb19zbHVnIjtzOjEyOiJ3ZWlnaHRfdW5pdDIiO3M6MTU6ImNwb19pc19yZXF1aXJlZCI7czoyOiJubyI7czo4OiJjcG9fdHlwZSI7czo2OiJzdHJpbmciO3M6MTE6ImNwb19taW5fdmFsIjtzOjA6IiI7czoxMToiY3BvX21heF92YWwiO3M6MDoiIjtzOjEyOiJjcG9fc3RlcF92YWwiO3M6MDoiIjtzOjExOiJjcG9fZGVmX3ZhbCI7czoxOiIxIjtzOjEzOiJjcG9fbWluX2NoYXJzIjtzOjE6IjEiO3M6MTM6ImNwb19tYXhfY2hhcnMiO3M6MjoiMjMiO3M6ODoiY3BvX3JhdGUiO3M6MjoiNzIiO3M6MTU6ImNwb19ub3RpY2VfdGV4dCI7czowOiIiO31zOjg6ImFkdmFuY2VkIjthOjEwOntzOjk6ImNwb19sYWJlbCI7czoyOToiQ2FsY3VsYXRpb24gYmFzZWQgb24gKGcpIHVuaXQiO3M6MTM6ImNwb19sYWJlbF90YWciO3M6MToicCI7czoxNToiY3BvX29yZGVyX2xhYmVsIjtzOjI6Ii9nIjtzOjE0OiJjcG9faXNfdG9vbHRpcCI7czoyOiJubyI7czoxNjoiY3BvX3Rvb2x0aXBfdHlwZSI7czo3OiJjbGFzc2ljIjtzOjExOiJjcG9fdG9vbHRpcCI7czowOiIiO3M6MTc6ImNwb190b29sdGlwX2ltYWdlIjthOjM6e3M6MzoidXJsIjtzOjA6IiI7czoyOiJpZCI7czoxOiIwIjtzOjM6ImFsdCI7czowOiIiO31zOjE3OiJjcG9fdG9vbHRpcF9jbGFzcyI7czowOiIiO3M6MTk6ImNwb19lbmFibGVfY2FydGVkaXQiO3M6Mjoibm8iO3M6MjA6ImNwb19vcmRlcl92aXNpYmlsaXR5IjtzOjI6Im5vIjt9fXM6MTU6ImNwb19jb25kaXRpb25hbCI7YToxOntzOjQ6Im1haW4iO2E6Mzp7czo5OiJjcG9faXNfZmMiO3M6MzoieWVzIjtzOjE0OiJjcG9fZmNfZGVmYXVsdCI7czo0OiJzaG93IjtzOjEzOiJjcG9fZmNfc2NoZW1lIjtzOjA6IiI7fX1zOjE0OiJjcG9fdmFsaWRhdGlvbiI7YToyOntzOjQ6Im1haW4iO2E6MTp7czoxODoiY3BvX3ZhbGlkYXRpb25fbXNnIjthOjM6e3M6MzoicmVxIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fXM6NToibG9naWMiO2E6Mjp7czoxMjoiY3BvX3ZjX2V4dHJhIjtzOjA6IiI7czo5OiJjcG9faXNfdmMiO3M6Mjoibm8iO319fXM6NToidGl0bGUiO3M6MTA6IlRleHQgSW5wdXQiO3M6NDoidHlwZSI7czoxMDoidGV4dF9pbnB1dCI7fX19fX19'),
(158, 20, '_cpo_formula_rules_enable', 'on'),
(159, 20, '_cpo_formula_scheme', ''),
(160, 20, '_cpo_main_formula', '{uni_cpo_price}*{uni_cpo_weight}'),
(162, 36, '_wp_trash_meta_status', 'publish'),
(163, 36, '_wp_trash_meta_time', '1541174443'),
(164, 37, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(165, 37, '_edit_last', '1'),
(166, 37, '_edit_lock', '1542020833:1'),
(167, 37, '_wp_page_template', 'page-template/custom-home-page.php'),
(168, 37, 'slide_template', 'default'),
(169, 38, '_wpb_vc_js_status', 'true'),
(170, 38, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(171, 38, '_menu_item_type', 'post_type'),
(172, 38, '_menu_item_menu_item_parent', '0'),
(173, 38, '_menu_item_object_id', '37'),
(174, 38, '_menu_item_object', 'page'),
(175, 38, '_menu_item_target', ''),
(176, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 38, '_menu_item_xfn', ''),
(178, 38, '_menu_item_url', ''),
(179, 37, '_wpb_vc_js_status', 'true'),
(180, 44, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(181, 44, '_wc_review_count', '0'),
(182, 44, '_wc_rating_count', 'a:0:{}'),
(183, 44, '_wc_average_rating', '0'),
(184, 44, '_edit_last', '1'),
(185, 44, '_edit_lock', '1541176976:1'),
(186, 45, '_wp_attached_file', '2018/11/prod000493.jpg'),
(187, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000493.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000493-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000493-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000493-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000493-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000493-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000493-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000493-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000493-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 44, '_thumbnail_id', '45'),
(189, 44, '_sku', ''),
(190, 44, '_regular_price', '23.00'),
(191, 44, '_sale_price', ''),
(192, 44, '_sale_price_dates_from', ''),
(193, 44, '_sale_price_dates_to', ''),
(194, 44, 'total_sales', '1'),
(195, 44, '_tax_status', 'taxable'),
(196, 44, '_tax_class', ''),
(197, 44, '_manage_stock', 'no'),
(198, 44, '_backorders', 'no'),
(199, 44, '_low_stock_amount', ''),
(200, 44, '_sold_individually', 'no'),
(201, 44, '_weight', ''),
(202, 44, '_length', ''),
(203, 44, '_width', ''),
(204, 44, '_height', ''),
(205, 44, '_upsell_ids', 'a:0:{}'),
(206, 44, '_crosssell_ids', 'a:0:{}'),
(207, 44, '_purchase_note', ''),
(208, 44, '_default_attributes', 'a:0:{}'),
(209, 44, '_virtual', 'no'),
(210, 44, '_downloadable', 'no'),
(211, 44, '_product_image_gallery', ''),
(212, 44, '_download_limit', '-1'),
(213, 44, '_download_expiry', '-1'),
(214, 44, '_stock', NULL),
(215, 44, '_stock_status', 'instock'),
(216, 44, '_product_version', '3.5.1'),
(217, 44, '_price', '23.00'),
(218, 44, 'slide_template', 'default'),
(219, 20, '_cpo_enable', 'on'),
(220, 20, '_cpo_calc_enable', 'on'),
(221, 20, '_cpo_calc_btn_enable', 'on'),
(222, 20, '_cpo_reset_form_btn', 'off'),
(223, 20, '_cart_duplicate_enable', 'off'),
(224, 20, '_cart_edit_enable', 'off'),
(225, 20, '_cart_edit_full_enable', 'off'),
(226, 20, '_cpo_silent_validation_on', 'off'),
(227, 20, '_cpo_qty_field', 'wc'),
(228, 20, '_cpo_sold_individually', 'off'),
(229, 20, '_cpo_min_price', ''),
(230, 20, '_cpo_max_price', ''),
(231, 20, '_cpo_price_disabled_msg', 'buy '),
(232, 20, '_cpo_price_suffix', ''),
(233, 20, '_cpo_price_postfix', ''),
(234, 20, '_cpo_starting_price', ''),
(235, 20, '_cpo_price_archives', ''),
(236, 20, '_cpo_price_archives_sale', ''),
(237, 20, '_cpo_layered_image_enable', NULL),
(238, 20, '_cpo_imagify_enable', NULL),
(239, 20, '_cpo_imagify_base_image', NULL),
(240, 48, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(241, 48, '_module_type', 'text_input'),
(242, 48, '_general', 'a:1:{s:4:\"main\";a:3:{s:5:\"width\";a:2:{s:5:\"value\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:5:\"value\";s:2:\"36\";s:4:\"unit\";s:2:\"px\";}s:7:\"content\";s:0:\"\";}}'),
(243, 48, '_style', 'a:4:{s:5:\"label\";a:5:{s:5:\"color\";s:0:\"\";s:16:\"text_align_label\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:15:\"font_size_label\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:4:\"font\";a:7:{s:5:\"color\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:10:\"font_style\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:9:\"font_size\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";s:0:\"\";}s:6:\"border\";a:6:{s:11:\"border_unit\";s:2:\"px\";s:10:\"border_top\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:13:\"border_bottom\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:11:\"border_left\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:12:\"border_right\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:6:\"radius\";a:2:{s:5:\"value\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}}s:10:\"text_input\";a:1:{s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:2:\"14\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:2:\"14\";s:4:\"unit\";s:2:\"px\";}}}'),
(244, 48, '_advanced', 'a:2:{s:6:\"layout\";a:1:{s:6:\"margin\";a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:9:\"selectors\";a:2:{s:7:\"id_name\";s:0:\"\";s:10:\"class_name\";s:0:\"\";}}'),
(245, 48, '_cpo_general', 'a:2:{s:4:\"main\";a:11:{s:8:\"cpo_slug\";s:0:\"\";s:15:\"cpo_is_required\";s:2:\"no\";s:8:\"cpo_type\";s:6:\"string\";s:11:\"cpo_min_val\";s:0:\"\";s:11:\"cpo_max_val\";s:0:\"\";s:12:\"cpo_step_val\";s:0:\"\";s:11:\"cpo_def_val\";s:2:\"/g\";s:13:\"cpo_min_chars\";s:0:\"\";s:13:\"cpo_max_chars\";s:0:\"\";s:8:\"cpo_rate\";s:0:\"\";s:15:\"cpo_notice_text\";s:0:\"\";}s:8:\"advanced\";a:10:{s:9:\"cpo_label\";s:0:\"\";s:13:\"cpo_label_tag\";s:5:\"label\";s:15:\"cpo_order_label\";s:0:\"\";s:14:\"cpo_is_tooltip\";s:2:\"no\";s:16:\"cpo_tooltip_type\";s:7:\"classic\";s:11:\"cpo_tooltip\";s:0:\"\";s:17:\"cpo_tooltip_image\";a:3:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:1:\"0\";s:3:\"alt\";s:0:\"\";}s:17:\"cpo_tooltip_class\";s:0:\"\";s:19:\"cpo_enable_cartedit\";s:2:\"no\";s:20:\"cpo_order_visibility\";s:2:\"no\";}}'),
(246, 48, '_cpo_conditional', 'a:1:{s:4:\"main\";a:3:{s:9:\"cpo_is_fc\";s:2:\"no\";s:14:\"cpo_fc_default\";s:4:\"hide\";s:13:\"cpo_fc_scheme\";s:0:\"\";}}'),
(247, 48, '_cpo_validation', 'a:2:{s:4:\"main\";a:1:{s:18:\"cpo_validation_msg\";a:3:{s:3:\"req\";s:0:\"\";s:4:\"type\";s:0:\"\";s:6:\"custom\";s:0:\"\";}}s:5:\"logic\";a:2:{s:12:\"cpo_vc_extra\";s:0:\"\";s:9:\"cpo_is_vc\";s:2:\"no\";}}'),
(248, 48, '_option_version', '4.4.1'),
(249, 49, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(250, 49, '_module_type', 'text_input'),
(251, 49, '_general', 'a:1:{s:4:\"main\";a:3:{s:5:\"width\";a:2:{s:5:\"value\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:5:\"value\";s:2:\"36\";s:4:\"unit\";s:2:\"px\";}s:7:\"content\";s:0:\"\";}}'),
(252, 49, '_style', 'a:4:{s:5:\"label\";a:5:{s:5:\"color\";s:0:\"\";s:16:\"text_align_label\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:15:\"font_size_label\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:4:\"font\";a:7:{s:5:\"color\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:10:\"font_style\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:9:\"font_size\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";s:0:\"\";}s:6:\"border\";a:6:{s:11:\"border_unit\";s:2:\"px\";s:10:\"border_top\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:13:\"border_bottom\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:11:\"border_left\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:12:\"border_right\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:6:\"radius\";a:2:{s:5:\"value\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}}s:10:\"text_input\";a:1:{s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:2:\"14\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:2:\"14\";s:4:\"unit\";s:2:\"px\";}}}'),
(253, 49, '_advanced', 'a:2:{s:6:\"layout\";a:1:{s:6:\"margin\";a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:9:\"selectors\";a:2:{s:7:\"id_name\";s:0:\"\";s:10:\"class_name\";s:0:\"\";}}'),
(254, 49, '_cpo_general', 'a:2:{s:4:\"main\";a:11:{s:8:\"cpo_slug\";s:0:\"\";s:15:\"cpo_is_required\";s:2:\"no\";s:8:\"cpo_type\";s:6:\"string\";s:11:\"cpo_min_val\";s:0:\"\";s:11:\"cpo_max_val\";s:0:\"\";s:12:\"cpo_step_val\";s:0:\"\";s:11:\"cpo_def_val\";s:1:\"1\";s:13:\"cpo_min_chars\";s:1:\"1\";s:13:\"cpo_max_chars\";s:2:\"23\";s:8:\"cpo_rate\";s:1:\"1\";s:15:\"cpo_notice_text\";s:0:\"\";}s:8:\"advanced\";a:10:{s:9:\"cpo_label\";s:37:\"Calculation is done based on (g) unit\";s:13:\"cpo_label_tag\";s:5:\"label\";s:15:\"cpo_order_label\";s:1:\"1\";s:14:\"cpo_is_tooltip\";s:2:\"no\";s:16:\"cpo_tooltip_type\";s:7:\"classic\";s:11:\"cpo_tooltip\";s:0:\"\";s:17:\"cpo_tooltip_image\";a:3:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:1:\"0\";s:3:\"alt\";s:0:\"\";}s:17:\"cpo_tooltip_class\";s:0:\"\";s:19:\"cpo_enable_cartedit\";s:2:\"no\";s:20:\"cpo_order_visibility\";s:2:\"no\";}}'),
(255, 49, '_cpo_conditional', 'a:1:{s:4:\"main\";a:3:{s:9:\"cpo_is_fc\";s:2:\"no\";s:14:\"cpo_fc_default\";s:4:\"hide\";s:13:\"cpo_fc_scheme\";s:0:\"\";}}'),
(256, 49, '_cpo_validation', 'a:2:{s:4:\"main\";a:1:{s:18:\"cpo_validation_msg\";a:3:{s:3:\"req\";s:0:\"\";s:4:\"type\";s:0:\"\";s:6:\"custom\";s:0:\"\";}}s:5:\"logic\";a:2:{s:12:\"cpo_vc_extra\";s:0:\"\";s:9:\"cpo_is_vc\";s:2:\"no\";}}'),
(257, 49, '_option_version', '4.4.1'),
(258, 50, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(259, 50, '_module_type', 'text_input'),
(260, 50, '_general', 'a:1:{s:4:\"main\";a:3:{s:5:\"width\";a:2:{s:5:\"value\";s:3:\"100\";s:4:\"unit\";s:1:\"%\";}s:6:\"height\";a:2:{s:5:\"value\";s:2:\"36\";s:4:\"unit\";s:2:\"px\";}s:7:\"content\";s:0:\"\";}}'),
(261, 50, '_style', 'a:4:{s:5:\"label\";a:5:{s:5:\"color\";s:0:\"\";s:16:\"text_align_label\";s:4:\"left\";s:11:\"font_family\";s:7:\"Courier\";s:11:\"font_weight\";s:3:\"400\";s:15:\"font_size_label\";a:2:{s:5:\"value\";s:2:\"13\";s:4:\"unit\";s:2:\"px\";}}s:4:\"font\";a:7:{s:5:\"color\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:10:\"font_style\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:9:\"font_size\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";s:0:\"\";}s:6:\"border\";a:6:{s:11:\"border_unit\";s:2:\"px\";s:10:\"border_top\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:13:\"border_bottom\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:11:\"border_left\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:12:\"border_right\";a:3:{s:5:\"style\";s:5:\"solid\";s:5:\"width\";s:1:\"1\";s:5:\"color\";s:7:\"#d7d7d7\";}s:6:\"radius\";a:2:{s:5:\"value\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}}s:10:\"text_input\";a:1:{s:7:\"padding\";a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:2:\"14\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:2:\"14\";s:4:\"unit\";s:2:\"px\";}}}'),
(262, 50, '_advanced', 'a:2:{s:6:\"layout\";a:1:{s:6:\"margin\";a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:9:\"selectors\";a:2:{s:7:\"id_name\";s:0:\"\";s:10:\"class_name\";s:0:\"\";}}'),
(263, 50, '_cpo_general', 'a:2:{s:4:\"main\";a:11:{s:8:\"cpo_slug\";s:0:\"\";s:15:\"cpo_is_required\";s:2:\"no\";s:8:\"cpo_type\";s:6:\"string\";s:11:\"cpo_min_val\";s:0:\"\";s:11:\"cpo_max_val\";s:0:\"\";s:12:\"cpo_step_val\";s:0:\"\";s:11:\"cpo_def_val\";s:1:\"1\";s:13:\"cpo_min_chars\";s:1:\"1\";s:13:\"cpo_max_chars\";s:2:\"23\";s:8:\"cpo_rate\";s:2:\"72\";s:15:\"cpo_notice_text\";s:0:\"\";}s:8:\"advanced\";a:10:{s:9:\"cpo_label\";s:29:\"Calculation based on (g) unit\";s:13:\"cpo_label_tag\";s:1:\"p\";s:15:\"cpo_order_label\";s:2:\"/g\";s:14:\"cpo_is_tooltip\";s:2:\"no\";s:16:\"cpo_tooltip_type\";s:7:\"classic\";s:11:\"cpo_tooltip\";s:0:\"\";s:17:\"cpo_tooltip_image\";a:3:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:1:\"0\";s:3:\"alt\";s:0:\"\";}s:17:\"cpo_tooltip_class\";s:0:\"\";s:19:\"cpo_enable_cartedit\";s:2:\"no\";s:20:\"cpo_order_visibility\";s:2:\"no\";}}'),
(264, 50, '_cpo_conditional', 'a:1:{s:4:\"main\";a:3:{s:9:\"cpo_is_fc\";s:3:\"yes\";s:14:\"cpo_fc_default\";s:4:\"show\";s:13:\"cpo_fc_scheme\";s:0:\"\";}}'),
(265, 50, '_cpo_validation', 'a:2:{s:4:\"main\";a:1:{s:18:\"cpo_validation_msg\";a:3:{s:3:\"req\";s:0:\"\";s:4:\"type\";s:0:\"\";s:6:\"custom\";s:0:\"\";}}s:5:\"logic\";a:2:{s:12:\"cpo_vc_extra\";s:0:\"\";s:9:\"cpo_is_vc\";s:2:\"no\";}}'),
(266, 50, '_option_version', '4.4.1'),
(267, 49, '_wp_trash_meta_status', 'publish'),
(268, 49, '_wp_trash_meta_time', '1541226819'),
(269, 49, '_wp_desired_post_slug', 'uni_cpo_weight_unit'),
(270, 50, '_wp_trash_meta_status', 'publish'),
(271, 50, '_wp_trash_meta_time', '1541226826'),
(272, 50, '_wp_desired_post_slug', 'uni_cpo_weight_unit2'),
(273, 48, '_wp_trash_meta_status', 'publish'),
(274, 48, '_wp_trash_meta_time', '1541226862'),
(275, 48, '_wp_desired_post_slug', 'uni_cpo_unit'),
(276, 35, '_edit_lock', '1541227808:1'),
(277, 52, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(278, 52, '_edit_last', '1'),
(279, 52, '_wp_page_template', 'default'),
(280, 52, 'slide_template', 'default'),
(281, 53, '_wpb_vc_js_status', 'false'),
(282, 53, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(283, 53, '_menu_item_type', 'post_type'),
(284, 53, '_menu_item_menu_item_parent', '0'),
(285, 53, '_menu_item_object_id', '52'),
(286, 53, '_menu_item_object', 'page'),
(287, 53, '_menu_item_target', ''),
(288, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(289, 53, '_menu_item_xfn', ''),
(290, 53, '_menu_item_url', ''),
(291, 52, '_wpb_vc_js_status', 'false'),
(292, 52, '_edit_lock', '1541229789:1'),
(294, 57, '_wp_attached_file', '2018/11/prod000460.jpg'),
(295, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000460.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000460-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000460-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000460-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000460-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000460-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000460-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000460-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000460-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 58, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(297, 58, '_wc_review_count', '0'),
(298, 58, '_wc_rating_count', 'a:0:{}'),
(299, 58, '_wc_average_rating', '0'),
(300, 59, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(301, 59, '_wc_review_count', '0'),
(302, 59, '_wc_rating_count', 'a:0:{}'),
(303, 59, '_wc_average_rating', '0'),
(304, 59, '_edit_lock', '1541232949:1'),
(305, 58, '_edit_lock', '1541233269:1'),
(306, 59, '_edit_last', '1'),
(307, 60, '_wp_attached_file', '2018/11/prod000499.jpg'),
(308, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000499.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000499-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000499-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000499-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000499-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000499-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000499-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000499-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000499-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 59, '_thumbnail_id', '60'),
(310, 59, '_sku', ''),
(311, 59, '_regular_price', '10.000'),
(312, 59, '_sale_price', ''),
(313, 59, '_sale_price_dates_from', ''),
(314, 59, '_sale_price_dates_to', ''),
(315, 59, 'total_sales', '0'),
(316, 59, '_tax_status', 'taxable'),
(317, 59, '_tax_class', ''),
(318, 59, '_manage_stock', 'no'),
(319, 59, '_backorders', 'no'),
(320, 59, '_low_stock_amount', ''),
(321, 59, '_sold_individually', 'no'),
(322, 59, '_weight', ''),
(323, 59, '_length', ''),
(324, 59, '_width', ''),
(325, 59, '_height', ''),
(326, 59, '_upsell_ids', 'a:0:{}'),
(327, 59, '_crosssell_ids', 'a:0:{}'),
(328, 59, '_purchase_note', ''),
(329, 59, '_default_attributes', 'a:0:{}'),
(330, 59, '_virtual', 'no'),
(331, 59, '_downloadable', 'no'),
(332, 59, '_product_image_gallery', ''),
(333, 59, '_download_limit', '-1'),
(334, 59, '_download_expiry', '-1'),
(335, 59, '_stock', NULL),
(336, 59, '_stock_status', 'instock'),
(337, 59, '_product_version', '3.5.1'),
(338, 59, '_price', '10.000'),
(339, 59, 'slide_template', 'default'),
(340, 61, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(341, 61, '_wc_review_count', '0'),
(342, 61, '_wc_rating_count', 'a:0:{}'),
(343, 61, '_wc_average_rating', '0'),
(344, 61, '_edit_lock', '1541235147:1'),
(345, 61, '_edit_last', '1'),
(346, 62, '_wp_attached_file', '2018/11/prod000502.jpg'),
(347, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000502.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000502-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000502-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000502-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000502-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000502-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000502-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000502-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000502-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 61, '_thumbnail_id', '62'),
(349, 61, '_sku', ''),
(350, 61, '_regular_price', '28.000'),
(351, 61, '_sale_price', ''),
(352, 61, '_sale_price_dates_from', ''),
(353, 61, '_sale_price_dates_to', ''),
(354, 61, 'total_sales', '0'),
(355, 61, '_tax_status', 'taxable'),
(356, 61, '_tax_class', ''),
(357, 61, '_manage_stock', 'no'),
(358, 61, '_backorders', 'no'),
(359, 61, '_low_stock_amount', ''),
(360, 61, '_sold_individually', 'no'),
(361, 61, '_weight', ''),
(362, 61, '_length', ''),
(363, 61, '_width', ''),
(364, 61, '_height', ''),
(365, 61, '_upsell_ids', 'a:0:{}'),
(366, 61, '_crosssell_ids', 'a:0:{}'),
(367, 61, '_purchase_note', ''),
(368, 61, '_default_attributes', 'a:0:{}'),
(369, 61, '_virtual', 'no'),
(370, 61, '_downloadable', 'no'),
(371, 61, '_product_image_gallery', ''),
(372, 61, '_download_limit', '-1'),
(373, 61, '_download_expiry', '-1'),
(374, 61, '_stock', NULL),
(375, 61, '_stock_status', 'instock'),
(376, 61, '_product_version', '3.5.1'),
(377, 61, '_price', '28.000'),
(378, 61, 'slide_template', 'default'),
(379, 63, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(380, 63, '_wc_review_count', '0'),
(381, 63, '_wc_rating_count', 'a:0:{}'),
(382, 63, '_wc_average_rating', '0'),
(383, 63, '_edit_lock', '1541233107:1'),
(384, 63, '_edit_last', '1'),
(385, 64, '_wp_attached_file', '2018/11/prod000487.jpg'),
(386, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000487.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000487-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000487-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000487-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000487-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000487-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000487-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000487-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000487-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 63, '_thumbnail_id', '64'),
(388, 63, '_sku', ''),
(389, 63, '_regular_price', '12.000'),
(390, 63, '_sale_price', ''),
(391, 63, '_sale_price_dates_from', ''),
(392, 63, '_sale_price_dates_to', ''),
(393, 63, 'total_sales', '0'),
(394, 63, '_tax_status', 'taxable'),
(395, 63, '_tax_class', ''),
(396, 63, '_manage_stock', 'no'),
(397, 63, '_backorders', 'no'),
(398, 63, '_low_stock_amount', ''),
(399, 63, '_sold_individually', 'no'),
(400, 63, '_weight', ''),
(401, 63, '_length', ''),
(402, 63, '_width', ''),
(403, 63, '_height', ''),
(404, 63, '_upsell_ids', 'a:0:{}'),
(405, 63, '_crosssell_ids', 'a:0:{}'),
(406, 63, '_purchase_note', ''),
(407, 63, '_default_attributes', 'a:0:{}'),
(408, 63, '_virtual', 'no'),
(409, 63, '_downloadable', 'no'),
(410, 63, '_product_image_gallery', ''),
(411, 63, '_download_limit', '-1'),
(412, 63, '_download_expiry', '-1'),
(413, 63, '_stock', NULL),
(414, 63, '_stock_status', 'instock'),
(415, 63, '_product_version', '3.5.1'),
(416, 63, '_price', '12.000'),
(417, 63, 'slide_template', 'default'),
(418, 58, '_edit_last', '1'),
(419, 66, '_wp_attached_file', '2018/11/prod000482.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(420, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000482.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000482-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000482-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000482-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000482-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000482-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000482-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000482-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000482-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(421, 58, '_thumbnail_id', '66'),
(422, 58, '_sku', ''),
(423, 58, '_regular_price', '11.000'),
(424, 58, '_sale_price', ''),
(425, 58, '_sale_price_dates_from', ''),
(426, 58, '_sale_price_dates_to', ''),
(427, 58, 'total_sales', '0'),
(428, 58, '_tax_status', 'taxable'),
(429, 58, '_tax_class', ''),
(430, 58, '_manage_stock', 'no'),
(431, 58, '_backorders', 'no'),
(432, 58, '_low_stock_amount', ''),
(433, 58, '_sold_individually', 'no'),
(434, 58, '_weight', ''),
(435, 58, '_length', ''),
(436, 58, '_width', ''),
(437, 58, '_height', ''),
(438, 58, '_upsell_ids', 'a:0:{}'),
(439, 58, '_crosssell_ids', 'a:0:{}'),
(440, 58, '_purchase_note', ''),
(441, 58, '_default_attributes', 'a:0:{}'),
(442, 58, '_virtual', 'no'),
(443, 58, '_downloadable', 'no'),
(444, 58, '_product_image_gallery', ''),
(445, 58, '_download_limit', '-1'),
(446, 58, '_download_expiry', '-1'),
(447, 58, '_stock', NULL),
(448, 58, '_stock_status', 'instock'),
(449, 58, '_product_version', '3.5.1'),
(450, 58, '_price', '11.000'),
(451, 58, 'slide_template', 'default'),
(452, 67, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(453, 67, '_wc_review_count', '0'),
(454, 67, '_wc_rating_count', 'a:0:{}'),
(455, 67, '_wc_average_rating', '0'),
(456, 67, '_edit_lock', '1541233420:1'),
(457, 67, '_edit_last', '1'),
(458, 68, '_wp_attached_file', '2018/11/prod000498.jpg'),
(459, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000498.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000498-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000498-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000498-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000498-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000498-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000498-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000498-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000498-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 67, '_thumbnail_id', '68'),
(461, 67, '_sku', ''),
(462, 67, '_regular_price', '13.000'),
(463, 67, '_sale_price', ''),
(464, 67, '_sale_price_dates_from', ''),
(465, 67, '_sale_price_dates_to', ''),
(466, 67, 'total_sales', '0'),
(467, 67, '_tax_status', 'taxable'),
(468, 67, '_tax_class', ''),
(469, 67, '_manage_stock', 'no'),
(470, 67, '_backorders', 'no'),
(471, 67, '_low_stock_amount', ''),
(472, 67, '_sold_individually', 'no'),
(473, 67, '_weight', ''),
(474, 67, '_length', ''),
(475, 67, '_width', ''),
(476, 67, '_height', ''),
(477, 67, '_upsell_ids', 'a:0:{}'),
(478, 67, '_crosssell_ids', 'a:0:{}'),
(479, 67, '_purchase_note', ''),
(480, 67, '_default_attributes', 'a:0:{}'),
(481, 67, '_virtual', 'no'),
(482, 67, '_downloadable', 'no'),
(483, 67, '_product_image_gallery', ''),
(484, 67, '_download_limit', '-1'),
(485, 67, '_download_expiry', '-1'),
(486, 67, '_stock', NULL),
(487, 67, '_stock_status', 'instock'),
(488, 67, '_product_version', '3.5.1'),
(489, 67, '_price', '13.000'),
(490, 67, 'slide_template', 'default'),
(491, 69, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(492, 69, '_wc_review_count', '0'),
(493, 69, '_wc_rating_count', 'a:0:{}'),
(494, 69, '_wc_average_rating', '0'),
(495, 69, '_edit_lock', '1541233633:1'),
(496, 70, '_wp_attached_file', '2018/11/prod000460-1.jpg'),
(497, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:24:\"2018/11/prod000460-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"prod000460-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"prod000460-1-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:24:\"prod000460-1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:24:\"prod000460-1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"prod000460-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"prod000460-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"prod000460-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"prod000460-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(498, 69, '_edit_last', '1'),
(499, 69, '_thumbnail_id', '70'),
(500, 69, '_sku', ''),
(501, 69, '_regular_price', '14.000'),
(502, 69, '_sale_price', ''),
(503, 69, '_sale_price_dates_from', ''),
(504, 69, '_sale_price_dates_to', ''),
(505, 69, 'total_sales', '0'),
(506, 69, '_tax_status', 'taxable'),
(507, 69, '_tax_class', ''),
(508, 69, '_manage_stock', 'no'),
(509, 69, '_backorders', 'no'),
(510, 69, '_low_stock_amount', ''),
(511, 69, '_sold_individually', 'no'),
(512, 69, '_weight', ''),
(513, 69, '_length', ''),
(514, 69, '_width', ''),
(515, 69, '_height', ''),
(516, 69, '_upsell_ids', 'a:0:{}'),
(517, 69, '_crosssell_ids', 'a:0:{}'),
(518, 69, '_purchase_note', ''),
(519, 69, '_default_attributes', 'a:0:{}'),
(520, 69, '_virtual', 'no'),
(521, 69, '_downloadable', 'no'),
(522, 69, '_product_image_gallery', ''),
(523, 69, '_download_limit', '-1'),
(524, 69, '_download_expiry', '-1'),
(525, 69, '_stock', NULL),
(526, 69, '_stock_status', 'instock'),
(527, 69, '_product_version', '3.5.1'),
(528, 69, '_price', '14.000'),
(529, 69, 'slide_template', 'default'),
(530, 71, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(531, 71, '_wc_review_count', '0'),
(532, 71, '_wc_rating_count', 'a:0:{}'),
(533, 71, '_wc_average_rating', '0'),
(534, 71, '_edit_lock', '1541233566:1'),
(535, 71, '_edit_last', '1'),
(536, 72, '_wp_attached_file', '2018/11/prod000489.jpg'),
(537, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000489.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000489-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000489-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000489-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000489-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000489-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000489-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000489-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000489-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 71, '_thumbnail_id', '72'),
(539, 71, '_sku', ''),
(540, 71, '_regular_price', '19.000'),
(541, 71, '_sale_price', ''),
(542, 71, '_sale_price_dates_from', ''),
(543, 71, '_sale_price_dates_to', ''),
(544, 71, 'total_sales', '0'),
(545, 71, '_tax_status', 'taxable'),
(546, 71, '_tax_class', ''),
(547, 71, '_manage_stock', 'no'),
(548, 71, '_backorders', 'no'),
(549, 71, '_low_stock_amount', ''),
(550, 71, '_sold_individually', 'no'),
(551, 71, '_weight', ''),
(552, 71, '_length', ''),
(553, 71, '_width', ''),
(554, 71, '_height', ''),
(555, 71, '_upsell_ids', 'a:0:{}'),
(556, 71, '_crosssell_ids', 'a:0:{}'),
(557, 71, '_purchase_note', ''),
(558, 71, '_default_attributes', 'a:0:{}'),
(559, 71, '_virtual', 'no'),
(560, 71, '_downloadable', 'no'),
(561, 71, '_product_image_gallery', ''),
(562, 71, '_download_limit', '-1'),
(563, 71, '_download_expiry', '-1'),
(564, 71, '_stock', NULL),
(565, 71, '_stock_status', 'instock'),
(566, 71, '_product_version', '3.5.1'),
(567, 71, '_price', '19.000'),
(568, 71, 'slide_template', 'default'),
(569, 73, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(570, 73, '_wc_review_count', '0'),
(571, 73, '_wc_rating_count', 'a:0:{}'),
(572, 73, '_wc_average_rating', '0'),
(573, 73, '_edit_lock', '1541233648:1'),
(574, 73, '_edit_last', '1'),
(575, 74, '_wp_attached_file', '2018/11/prod000471.jpg'),
(576, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000471.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000471-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000471-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000471-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000471-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000471-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000471-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000471-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000471-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(577, 73, '_thumbnail_id', '74'),
(578, 73, '_sku', ''),
(579, 73, '_regular_price', '56.000'),
(580, 73, '_sale_price', ''),
(581, 73, '_sale_price_dates_from', ''),
(582, 73, '_sale_price_dates_to', ''),
(583, 73, 'total_sales', '0'),
(584, 73, '_tax_status', 'taxable'),
(585, 73, '_tax_class', ''),
(586, 73, '_manage_stock', 'no'),
(587, 73, '_backorders', 'no'),
(588, 73, '_low_stock_amount', ''),
(589, 73, '_sold_individually', 'no'),
(590, 73, '_weight', ''),
(591, 73, '_length', ''),
(592, 73, '_width', ''),
(593, 73, '_height', ''),
(594, 73, '_upsell_ids', 'a:0:{}'),
(595, 73, '_crosssell_ids', 'a:0:{}'),
(596, 73, '_purchase_note', ''),
(597, 73, '_default_attributes', 'a:0:{}'),
(598, 73, '_virtual', 'no'),
(599, 73, '_downloadable', 'no'),
(600, 73, '_product_image_gallery', ''),
(601, 73, '_download_limit', '-1'),
(602, 73, '_download_expiry', '-1'),
(603, 73, '_stock', NULL),
(604, 73, '_stock_status', 'instock'),
(605, 73, '_product_version', '3.5.1'),
(606, 73, '_price', '56.000'),
(607, 73, 'slide_template', 'default'),
(608, 75, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(609, 75, '_wc_review_count', '0'),
(610, 75, '_wc_rating_count', 'a:0:{}'),
(611, 75, '_wc_average_rating', '0'),
(612, 75, '_edit_lock', '1541233736:1'),
(613, 75, '_edit_last', '1'),
(614, 76, '_wp_attached_file', '2018/11/prod000501.jpg'),
(615, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000501.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000501-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000501-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000501-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000501-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000501-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000501-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000501-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000501-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(616, 75, '_thumbnail_id', '76'),
(617, 75, '_sku', ''),
(618, 75, '_regular_price', '45.000'),
(619, 75, '_sale_price', ''),
(620, 75, '_sale_price_dates_from', ''),
(621, 75, '_sale_price_dates_to', ''),
(622, 75, 'total_sales', '0'),
(623, 75, '_tax_status', 'taxable'),
(624, 75, '_tax_class', ''),
(625, 75, '_manage_stock', 'no'),
(626, 75, '_backorders', 'no'),
(627, 75, '_low_stock_amount', ''),
(628, 75, '_sold_individually', 'no'),
(629, 75, '_weight', ''),
(630, 75, '_length', ''),
(631, 75, '_width', ''),
(632, 75, '_height', ''),
(633, 75, '_upsell_ids', 'a:0:{}'),
(634, 75, '_crosssell_ids', 'a:0:{}'),
(635, 75, '_purchase_note', ''),
(636, 75, '_default_attributes', 'a:0:{}'),
(637, 75, '_virtual', 'no'),
(638, 75, '_downloadable', 'no'),
(639, 75, '_product_image_gallery', ''),
(640, 75, '_download_limit', '-1'),
(641, 75, '_download_expiry', '-1'),
(642, 75, '_stock', NULL),
(643, 75, '_stock_status', 'instock'),
(644, 75, '_product_version', '3.5.1'),
(645, 75, '_price', '45.000'),
(646, 75, 'slide_template', 'default'),
(647, 77, '_wp_attached_file', '2018/11/1920x1200-1174691-vegetables.jpg'),
(648, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:40:\"2018/11/1920x1200-1174691-vegetables.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"1920x1200-1174691-vegetables-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"1920x1200-1174691-vegetables-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 78, '_wp_attached_file', '2018/11/FreeGreatPicture.com-2848-high-definition-material-strawberry.jpg'),
(650, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:73:\"2018/11/FreeGreatPicture.com-2848-high-definition-material-strawberry.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:74:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:73:\"FreeGreatPicture.com-2848-high-definition-material-strawberry-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(651, 79, '_wp_attached_file', '2018/11/veeterzy-82538-unsplash.jpg'),
(652, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:7952;s:6:\"height\";i:5304;s:4:\"file\";s:35:\"2018/11/veeterzy-82538-unsplash.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"veeterzy-82538-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"veeterzy-82538-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(653, 80, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(654, 80, '_wc_review_count', '0'),
(655, 80, '_wc_rating_count', 'a:0:{}'),
(656, 80, '_wc_average_rating', '0'),
(657, 80, '_edit_lock', '1541235782:1'),
(658, 80, '_edit_last', '1'),
(659, 81, '_wp_attached_file', '2018/11/prod000389.jpg'),
(660, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod000389.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000389-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000389-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000389-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000389-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000389-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000389-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000389-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000389-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(661, 80, '_thumbnail_id', '81'),
(662, 80, '_sku', ''),
(663, 80, '_regular_price', '80.000'),
(664, 80, '_sale_price', ''),
(665, 80, '_sale_price_dates_from', ''),
(666, 80, '_sale_price_dates_to', ''),
(667, 80, 'total_sales', '0'),
(668, 80, '_tax_status', 'taxable'),
(669, 80, '_tax_class', ''),
(670, 80, '_manage_stock', 'no'),
(671, 80, '_backorders', 'no'),
(672, 80, '_low_stock_amount', ''),
(673, 80, '_sold_individually', 'no'),
(674, 80, '_weight', ''),
(675, 80, '_length', ''),
(676, 80, '_width', ''),
(677, 80, '_height', ''),
(678, 80, '_upsell_ids', 'a:0:{}'),
(679, 80, '_crosssell_ids', 'a:0:{}'),
(680, 80, '_purchase_note', ''),
(681, 80, '_default_attributes', 'a:0:{}'),
(682, 80, '_virtual', 'no'),
(683, 80, '_downloadable', 'no'),
(684, 80, '_product_image_gallery', ''),
(685, 80, '_download_limit', '-1'),
(686, 80, '_download_expiry', '-1'),
(687, 80, '_stock', NULL),
(688, 80, '_stock_status', 'instock'),
(689, 80, '_product_version', '3.5.1'),
(690, 80, '_price', '80.000'),
(691, 80, 'slide_template', 'default'),
(692, 82, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(693, 82, '_wc_review_count', '0'),
(694, 82, '_wc_rating_count', 'a:0:{}'),
(695, 82, '_wc_average_rating', '0'),
(696, 82, '_edit_lock', '1541236006:1'),
(697, 82, '_edit_last', '1'),
(698, 82, '_sku', ''),
(699, 82, '_regular_price', '120.000'),
(700, 82, '_sale_price', ''),
(701, 82, '_sale_price_dates_from', ''),
(702, 82, '_sale_price_dates_to', ''),
(703, 82, 'total_sales', '0'),
(704, 82, '_tax_status', 'taxable'),
(705, 82, '_tax_class', ''),
(706, 82, '_manage_stock', 'no'),
(707, 82, '_backorders', 'no'),
(708, 82, '_low_stock_amount', ''),
(709, 82, '_sold_individually', 'no'),
(710, 82, '_weight', ''),
(711, 82, '_length', ''),
(712, 82, '_width', ''),
(713, 82, '_height', ''),
(714, 82, '_upsell_ids', 'a:0:{}'),
(715, 82, '_crosssell_ids', 'a:0:{}'),
(716, 82, '_purchase_note', ''),
(717, 82, '_default_attributes', 'a:0:{}'),
(718, 82, '_virtual', 'no'),
(719, 82, '_downloadable', 'no'),
(720, 82, '_product_image_gallery', ''),
(721, 82, '_download_limit', '-1'),
(722, 82, '_download_expiry', '-1'),
(723, 82, '_stock', NULL),
(724, 82, '_stock_status', 'instock'),
(725, 82, '_product_version', '3.5.1'),
(726, 82, '_price', '120.000'),
(727, 82, 'slide_template', 'default'),
(728, 83, '_wp_attached_file', '2018/11/prod000192.jpg'),
(729, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod000192.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000192-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000192-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000192-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000192-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000192-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000192-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000192-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000192-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(730, 82, '_thumbnail_id', '83'),
(731, 84, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(732, 84, '_wc_review_count', '0'),
(733, 84, '_wc_rating_count', 'a:0:{}'),
(734, 84, '_wc_average_rating', '0'),
(735, 84, '_edit_lock', '1541236277:1'),
(736, 84, '_edit_last', '1'),
(737, 85, '_wp_attached_file', '2018/11/prod000298.jpg'),
(738, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod000298.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000298-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000298-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000298-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000298-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000298-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000298-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000298-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000298-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(739, 84, '_thumbnail_id', '85'),
(740, 84, '_sku', ''),
(741, 84, '_regular_price', '100.000'),
(742, 84, '_sale_price', ''),
(743, 84, '_sale_price_dates_from', ''),
(744, 84, '_sale_price_dates_to', ''),
(745, 84, 'total_sales', '0'),
(746, 84, '_tax_status', 'taxable'),
(747, 84, '_tax_class', ''),
(748, 84, '_manage_stock', 'no'),
(749, 84, '_backorders', 'no'),
(750, 84, '_low_stock_amount', ''),
(751, 84, '_sold_individually', 'no'),
(752, 84, '_weight', ''),
(753, 84, '_length', ''),
(754, 84, '_width', ''),
(755, 84, '_height', ''),
(756, 84, '_upsell_ids', 'a:0:{}'),
(757, 84, '_crosssell_ids', 'a:0:{}'),
(758, 84, '_purchase_note', ''),
(759, 84, '_default_attributes', 'a:0:{}'),
(760, 84, '_virtual', 'no'),
(761, 84, '_downloadable', 'no'),
(762, 84, '_product_image_gallery', ''),
(763, 84, '_download_limit', '-1'),
(764, 84, '_download_expiry', '-1'),
(765, 84, '_stock', NULL),
(766, 84, '_stock_status', 'instock'),
(767, 84, '_product_version', '3.5.1'),
(768, 84, '_price', '100.000'),
(769, 84, 'slide_template', 'default'),
(775, 87, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(776, 87, '_wc_review_count', '0'),
(777, 87, '_wc_rating_count', 'a:0:{}'),
(778, 87, '_wc_average_rating', '0'),
(779, 87, '_edit_lock', '1541236499:1'),
(780, 87, '_edit_last', '1'),
(781, 88, '_wp_attached_file', '2018/11/prod000129.jpg'),
(782, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod000129.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000129-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000129-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000129-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000129-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000129-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000129-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000129-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000129-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(783, 87, '_thumbnail_id', '88'),
(784, 87, '_sku', ''),
(785, 87, '_regular_price', '87.000'),
(786, 87, '_sale_price', ''),
(787, 87, '_sale_price_dates_from', ''),
(788, 87, '_sale_price_dates_to', ''),
(789, 87, 'total_sales', '0'),
(790, 87, '_tax_status', 'taxable'),
(791, 87, '_tax_class', ''),
(792, 87, '_manage_stock', 'no'),
(793, 87, '_backorders', 'no'),
(794, 87, '_low_stock_amount', ''),
(795, 87, '_sold_individually', 'no'),
(796, 87, '_weight', ''),
(797, 87, '_length', ''),
(798, 87, '_width', ''),
(799, 87, '_height', ''),
(800, 87, '_upsell_ids', 'a:0:{}'),
(801, 87, '_crosssell_ids', 'a:0:{}'),
(802, 87, '_purchase_note', ''),
(803, 87, '_default_attributes', 'a:0:{}'),
(804, 87, '_virtual', 'no'),
(805, 87, '_downloadable', 'no'),
(806, 87, '_product_image_gallery', ''),
(807, 87, '_download_limit', '-1'),
(808, 87, '_download_expiry', '-1'),
(809, 87, '_stock', NULL),
(810, 87, '_stock_status', 'instock'),
(811, 87, '_product_version', '3.5.1'),
(812, 87, '_price', '87.000'),
(813, 87, 'slide_template', 'default'),
(814, 89, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(815, 89, '_wc_review_count', '0'),
(816, 89, '_wc_rating_count', 'a:0:{}'),
(817, 89, '_wc_average_rating', '0'),
(818, 89, '_edit_lock', '1541236699:1'),
(819, 89, '_edit_last', '1'),
(820, 90, '_wp_attached_file', '2018/11/prod003479.jpg'),
(821, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod003479.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003479-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod003479-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod003479-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod003479-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod003479-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003479-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod003479-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003479-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(822, 89, '_thumbnail_id', '90'),
(823, 89, '_sku', ''),
(824, 89, '_regular_price', '112.000'),
(825, 89, '_sale_price', ''),
(826, 89, '_sale_price_dates_from', ''),
(827, 89, '_sale_price_dates_to', ''),
(828, 89, 'total_sales', '0'),
(829, 89, '_tax_status', 'taxable'),
(830, 89, '_tax_class', ''),
(831, 89, '_manage_stock', 'no'),
(832, 89, '_backorders', 'no'),
(833, 89, '_low_stock_amount', ''),
(834, 89, '_sold_individually', 'no'),
(835, 89, '_weight', ''),
(836, 89, '_length', ''),
(837, 89, '_width', ''),
(838, 89, '_height', ''),
(839, 89, '_upsell_ids', 'a:0:{}'),
(840, 89, '_crosssell_ids', 'a:0:{}'),
(841, 89, '_purchase_note', ''),
(842, 89, '_default_attributes', 'a:0:{}'),
(843, 89, '_virtual', 'no'),
(844, 89, '_downloadable', 'no'),
(845, 89, '_product_image_gallery', ''),
(846, 89, '_download_limit', '-1'),
(847, 89, '_download_expiry', '-1'),
(848, 89, '_stock', NULL),
(849, 89, '_stock_status', 'instock'),
(850, 89, '_product_version', '3.5.1'),
(851, 89, '_price', '112.000'),
(852, 89, 'slide_template', 'default'),
(853, 91, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(854, 91, '_wc_review_count', '0'),
(855, 91, '_wc_rating_count', 'a:0:{}'),
(856, 91, '_wc_average_rating', '0'),
(857, 91, '_edit_lock', '1541236831:1'),
(858, 91, '_edit_last', '1'),
(859, 92, '_wp_attached_file', '2018/11/prod002429.jpg'),
(860, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod002429.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002429-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002429-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002429-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002429-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002429-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002429-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002429-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002429-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(861, 91, '_thumbnail_id', '92'),
(862, 91, '_sku', ''),
(863, 91, '_regular_price', '135.000'),
(864, 91, '_sale_price', ''),
(865, 91, '_sale_price_dates_from', ''),
(866, 91, '_sale_price_dates_to', ''),
(867, 91, 'total_sales', '0'),
(868, 91, '_tax_status', 'taxable'),
(869, 91, '_tax_class', ''),
(870, 91, '_manage_stock', 'no'),
(871, 91, '_backorders', 'no'),
(872, 91, '_low_stock_amount', ''),
(873, 91, '_sold_individually', 'no'),
(874, 91, '_weight', ''),
(875, 91, '_length', ''),
(876, 91, '_width', ''),
(877, 91, '_height', ''),
(878, 91, '_upsell_ids', 'a:0:{}'),
(879, 91, '_crosssell_ids', 'a:0:{}'),
(880, 91, '_purchase_note', ''),
(881, 91, '_default_attributes', 'a:0:{}'),
(882, 91, '_virtual', 'no'),
(883, 91, '_downloadable', 'no'),
(884, 91, '_product_image_gallery', ''),
(885, 91, '_download_limit', '-1'),
(886, 91, '_download_expiry', '-1'),
(887, 91, '_stock', NULL),
(888, 91, '_stock_status', 'instock'),
(889, 91, '_product_version', '3.5.1'),
(890, 91, '_price', '135.000'),
(891, 91, 'slide_template', 'default'),
(892, 93, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(893, 93, '_wc_review_count', '0'),
(894, 93, '_wc_rating_count', 'a:0:{}'),
(895, 93, '_wc_average_rating', '0'),
(896, 93, '_edit_lock', '1541236935:1'),
(897, 93, '_edit_last', '1'),
(898, 94, '_wp_attached_file', '2018/11/prod099810.jpg'),
(899, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod099810.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099810-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod099810-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod099810-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod099810-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod099810-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099810-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod099810-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099810-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(900, 93, '_thumbnail_id', '94'),
(901, 93, '_sku', ''),
(902, 93, '_regular_price', '63.000'),
(903, 93, '_sale_price', ''),
(904, 93, '_sale_price_dates_from', ''),
(905, 93, '_sale_price_dates_to', ''),
(906, 93, 'total_sales', '0'),
(907, 93, '_tax_status', 'taxable'),
(908, 93, '_tax_class', ''),
(909, 93, '_manage_stock', 'no'),
(910, 93, '_backorders', 'no'),
(911, 93, '_low_stock_amount', ''),
(912, 93, '_sold_individually', 'no'),
(913, 93, '_weight', ''),
(914, 93, '_length', ''),
(915, 93, '_width', ''),
(916, 93, '_height', ''),
(917, 93, '_upsell_ids', 'a:0:{}'),
(918, 93, '_crosssell_ids', 'a:0:{}'),
(919, 93, '_purchase_note', ''),
(920, 93, '_default_attributes', 'a:0:{}'),
(921, 93, '_virtual', 'no'),
(922, 93, '_downloadable', 'no'),
(923, 93, '_product_image_gallery', ''),
(924, 93, '_download_limit', '-1'),
(925, 93, '_download_expiry', '-1'),
(926, 93, '_stock', NULL),
(927, 93, '_stock_status', 'instock'),
(928, 93, '_product_version', '3.5.1'),
(929, 93, '_price', '63.000'),
(930, 93, 'slide_template', 'default'),
(931, 95, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(932, 95, '_wc_review_count', '0'),
(933, 95, '_wc_rating_count', 'a:0:{}'),
(934, 95, '_wc_average_rating', '0'),
(935, 95, '_edit_lock', '1541237036:1'),
(936, 95, '_edit_last', '1'),
(937, 96, '_wp_attached_file', '2018/11/prod000374.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(938, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:673;s:4:\"file\";s:22:\"2018/11/prod000374.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000374-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000374-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000374-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000374-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000374-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000374-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000374-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000374-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(939, 95, '_thumbnail_id', '96'),
(940, 95, '_sku', ''),
(941, 95, '_regular_price', '91.000'),
(942, 95, '_sale_price', ''),
(943, 95, '_sale_price_dates_from', ''),
(944, 95, '_sale_price_dates_to', ''),
(945, 95, 'total_sales', '0'),
(946, 95, '_tax_status', 'taxable'),
(947, 95, '_tax_class', ''),
(948, 95, '_manage_stock', 'no'),
(949, 95, '_backorders', 'no'),
(950, 95, '_low_stock_amount', ''),
(951, 95, '_sold_individually', 'no'),
(952, 95, '_weight', ''),
(953, 95, '_length', ''),
(954, 95, '_width', ''),
(955, 95, '_height', ''),
(956, 95, '_upsell_ids', 'a:0:{}'),
(957, 95, '_crosssell_ids', 'a:0:{}'),
(958, 95, '_purchase_note', ''),
(959, 95, '_default_attributes', 'a:0:{}'),
(960, 95, '_virtual', 'no'),
(961, 95, '_downloadable', 'no'),
(962, 95, '_product_image_gallery', ''),
(963, 95, '_download_limit', '-1'),
(964, 95, '_download_expiry', '-1'),
(965, 95, '_stock', NULL),
(966, 95, '_stock_status', 'instock'),
(967, 95, '_product_version', '3.5.1'),
(968, 95, '_price', '91.000'),
(969, 95, 'slide_template', 'default'),
(970, 97, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(971, 97, '_wc_review_count', '0'),
(972, 97, '_wc_rating_count', 'a:0:{}'),
(973, 97, '_wc_average_rating', '0'),
(974, 97, '_edit_lock', '1541237144:1'),
(975, 97, '_edit_last', '1'),
(976, 98, '_wp_attached_file', '2018/11/prod000410.jpg'),
(977, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000410.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000410-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000410-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000410-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000410-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000410-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000410-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000410-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000410-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(978, 97, '_thumbnail_id', '98'),
(979, 97, '_sku', ''),
(980, 97, '_regular_price', '178.000'),
(981, 97, '_sale_price', ''),
(982, 97, '_sale_price_dates_from', ''),
(983, 97, '_sale_price_dates_to', ''),
(984, 97, 'total_sales', '0'),
(985, 97, '_tax_status', 'taxable'),
(986, 97, '_tax_class', ''),
(987, 97, '_manage_stock', 'no'),
(988, 97, '_backorders', 'no'),
(989, 97, '_low_stock_amount', ''),
(990, 97, '_sold_individually', 'no'),
(991, 97, '_weight', ''),
(992, 97, '_length', ''),
(993, 97, '_width', ''),
(994, 97, '_height', ''),
(995, 97, '_upsell_ids', 'a:0:{}'),
(996, 97, '_crosssell_ids', 'a:0:{}'),
(997, 97, '_purchase_note', ''),
(998, 97, '_default_attributes', 'a:0:{}'),
(999, 97, '_virtual', 'no'),
(1000, 97, '_downloadable', 'no'),
(1001, 97, '_product_image_gallery', ''),
(1002, 97, '_download_limit', '-1'),
(1003, 97, '_download_expiry', '-1'),
(1004, 97, '_stock', NULL),
(1005, 97, '_stock_status', 'instock'),
(1006, 97, '_product_version', '3.5.1'),
(1007, 97, '_price', '178.000'),
(1008, 97, 'slide_template', 'default'),
(1009, 99, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1010, 99, '_wc_review_count', '0'),
(1011, 99, '_wc_rating_count', 'a:0:{}'),
(1012, 99, '_wc_average_rating', '0'),
(1013, 99, '_edit_lock', '1541237333:1'),
(1018, 99, '_edit_last', '1'),
(1019, 101, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1020, 101, '_wc_review_count', '0'),
(1021, 101, '_wc_rating_count', 'a:0:{}'),
(1022, 101, '_wc_average_rating', '0'),
(1023, 101, '_edit_lock', '1541237397:1'),
(1024, 101, '_edit_last', '1'),
(1025, 102, '_wp_attached_file', '2018/11/prod500340.jpg'),
(1026, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500340.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500340-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500340-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500340-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500340-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500340-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500340-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500340-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500340-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1027, 101, '_thumbnail_id', '102'),
(1028, 101, '_sku', ''),
(1029, 101, '_regular_price', '236.000'),
(1030, 101, '_sale_price', ''),
(1031, 101, '_sale_price_dates_from', ''),
(1032, 101, '_sale_price_dates_to', ''),
(1033, 101, 'total_sales', '0'),
(1034, 101, '_tax_status', 'taxable'),
(1035, 101, '_tax_class', ''),
(1036, 101, '_manage_stock', 'no'),
(1037, 101, '_backorders', 'no'),
(1038, 101, '_low_stock_amount', ''),
(1039, 101, '_sold_individually', 'no'),
(1040, 101, '_weight', ''),
(1041, 101, '_length', ''),
(1042, 101, '_width', ''),
(1043, 101, '_height', ''),
(1044, 101, '_upsell_ids', 'a:0:{}'),
(1045, 101, '_crosssell_ids', 'a:0:{}'),
(1046, 101, '_purchase_note', ''),
(1047, 101, '_default_attributes', 'a:0:{}'),
(1048, 101, '_virtual', 'no'),
(1049, 101, '_downloadable', 'no'),
(1050, 101, '_product_image_gallery', ''),
(1051, 101, '_download_limit', '-1'),
(1052, 101, '_download_expiry', '-1'),
(1053, 101, '_stock', NULL),
(1054, 101, '_stock_status', 'instock'),
(1055, 101, '_product_version', '3.5.1'),
(1056, 101, '_price', '236.000'),
(1057, 101, 'slide_template', 'default'),
(1058, 103, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1059, 103, '_wc_review_count', '0'),
(1060, 103, '_wc_rating_count', 'a:0:{}'),
(1061, 103, '_wc_average_rating', '0'),
(1062, 103, '_edit_lock', '1541237571:1'),
(1063, 104, '_wp_attached_file', '2018/11/prod500348.jpg'),
(1064, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500348.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500348-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500348-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500348-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500348-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500348-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500348-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500348-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500348-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1065, 103, '_edit_last', '1'),
(1066, 103, '_thumbnail_id', '104'),
(1067, 103, '_sku', ''),
(1068, 103, '_regular_price', '32.000'),
(1069, 103, '_sale_price', ''),
(1070, 103, '_sale_price_dates_from', ''),
(1071, 103, '_sale_price_dates_to', ''),
(1072, 103, 'total_sales', '0'),
(1073, 103, '_tax_status', 'taxable'),
(1074, 103, '_tax_class', ''),
(1075, 103, '_manage_stock', 'no'),
(1076, 103, '_backorders', 'no'),
(1077, 103, '_low_stock_amount', ''),
(1078, 103, '_sold_individually', 'no'),
(1079, 103, '_weight', ''),
(1080, 103, '_length', ''),
(1081, 103, '_width', ''),
(1082, 103, '_height', ''),
(1083, 103, '_upsell_ids', 'a:0:{}'),
(1084, 103, '_crosssell_ids', 'a:0:{}'),
(1085, 103, '_purchase_note', ''),
(1086, 103, '_default_attributes', 'a:0:{}'),
(1087, 103, '_virtual', 'no'),
(1088, 103, '_downloadable', 'no'),
(1089, 103, '_product_image_gallery', ''),
(1090, 103, '_download_limit', '-1'),
(1091, 103, '_download_expiry', '-1'),
(1092, 103, '_stock', NULL),
(1093, 103, '_stock_status', 'instock'),
(1094, 103, '_product_version', '3.5.1'),
(1095, 103, '_price', '32.000'),
(1096, 103, 'slide_template', 'default'),
(1101, 106, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1102, 106, '_wc_review_count', '0'),
(1103, 106, '_wc_rating_count', 'a:0:{}'),
(1104, 106, '_wc_average_rating', '0'),
(1105, 106, '_edit_lock', '1541237797:1'),
(1106, 107, '_wp_attached_file', '2018/11/prod500406.jpg'),
(1107, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500406.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500406-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500406-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500406-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500406-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500406-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500406-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500406-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500406-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1108, 106, '_edit_last', '1'),
(1109, 106, '_thumbnail_id', '107'),
(1110, 106, '_sku', ''),
(1111, 106, '_regular_price', '230.000'),
(1112, 106, '_sale_price', ''),
(1113, 106, '_sale_price_dates_from', ''),
(1114, 106, '_sale_price_dates_to', ''),
(1115, 106, 'total_sales', '0'),
(1116, 106, '_tax_status', 'taxable'),
(1117, 106, '_tax_class', ''),
(1118, 106, '_manage_stock', 'no'),
(1119, 106, '_backorders', 'no'),
(1120, 106, '_low_stock_amount', ''),
(1121, 106, '_sold_individually', 'no'),
(1122, 106, '_weight', ''),
(1123, 106, '_length', ''),
(1124, 106, '_width', ''),
(1125, 106, '_height', ''),
(1126, 106, '_upsell_ids', 'a:0:{}'),
(1127, 106, '_crosssell_ids', 'a:0:{}'),
(1128, 106, '_purchase_note', ''),
(1129, 106, '_default_attributes', 'a:0:{}'),
(1130, 106, '_virtual', 'no'),
(1131, 106, '_downloadable', 'no'),
(1132, 106, '_product_image_gallery', ''),
(1133, 106, '_download_limit', '-1'),
(1134, 106, '_download_expiry', '-1'),
(1135, 106, '_stock', NULL),
(1136, 106, '_stock_status', 'instock'),
(1137, 106, '_product_version', '3.5.1'),
(1138, 106, '_price', '230.000'),
(1139, 106, 'slide_template', 'default'),
(1140, 108, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1141, 108, '_wc_review_count', '0'),
(1142, 108, '_wc_rating_count', 'a:0:{}'),
(1143, 108, '_wc_average_rating', '0'),
(1144, 108, '_edit_lock', '1541237714:1'),
(1145, 109, '_wp_attached_file', '2018/11/prod500434.jpg'),
(1146, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500434.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500434-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500434-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500434-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500434-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500434-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500434-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500434-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500434-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1147, 108, '_edit_last', '1'),
(1148, 108, '_thumbnail_id', '109'),
(1149, 108, '_sku', ''),
(1150, 108, '_regular_price', '300.000'),
(1151, 108, '_sale_price', ''),
(1152, 108, '_sale_price_dates_from', ''),
(1153, 108, '_sale_price_dates_to', ''),
(1154, 108, 'total_sales', '0'),
(1155, 108, '_tax_status', 'taxable'),
(1156, 108, '_tax_class', ''),
(1157, 108, '_manage_stock', 'no'),
(1158, 108, '_backorders', 'no'),
(1159, 108, '_low_stock_amount', ''),
(1160, 108, '_sold_individually', 'no'),
(1161, 108, '_weight', ''),
(1162, 108, '_length', ''),
(1163, 108, '_width', ''),
(1164, 108, '_height', ''),
(1165, 108, '_upsell_ids', 'a:0:{}'),
(1166, 108, '_crosssell_ids', 'a:0:{}'),
(1167, 108, '_purchase_note', ''),
(1168, 108, '_default_attributes', 'a:0:{}'),
(1169, 108, '_virtual', 'no'),
(1170, 108, '_downloadable', 'no'),
(1171, 108, '_product_image_gallery', ''),
(1172, 108, '_download_limit', '-1'),
(1173, 108, '_download_expiry', '-1'),
(1174, 108, '_stock', NULL),
(1175, 108, '_stock_status', 'instock'),
(1176, 108, '_product_version', '3.5.1'),
(1177, 108, '_price', '300.000'),
(1178, 108, 'slide_template', 'default'),
(1179, 110, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1180, 110, '_wc_review_count', '0'),
(1181, 110, '_wc_rating_count', 'a:0:{}'),
(1182, 110, '_wc_average_rating', '0'),
(1183, 110, '_edit_lock', '1541237774:1'),
(1184, 110, '_edit_last', '1'),
(1185, 111, '_wp_attached_file', '2018/11/prod500442.jpg'),
(1186, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500442.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500442-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500442-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500442-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500442-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500442-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500442-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500442-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500442-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1187, 110, '_thumbnail_id', '111'),
(1188, 110, '_sku', ''),
(1189, 110, '_regular_price', '250.000'),
(1190, 110, '_sale_price', ''),
(1191, 110, '_sale_price_dates_from', ''),
(1192, 110, '_sale_price_dates_to', ''),
(1193, 110, 'total_sales', '0'),
(1194, 110, '_tax_status', 'taxable'),
(1195, 110, '_tax_class', ''),
(1196, 110, '_manage_stock', 'no'),
(1197, 110, '_backorders', 'no'),
(1198, 110, '_low_stock_amount', ''),
(1199, 110, '_sold_individually', 'no'),
(1200, 110, '_weight', ''),
(1201, 110, '_length', ''),
(1202, 110, '_width', ''),
(1203, 110, '_height', ''),
(1204, 110, '_upsell_ids', 'a:0:{}'),
(1205, 110, '_crosssell_ids', 'a:0:{}'),
(1206, 110, '_purchase_note', ''),
(1207, 110, '_default_attributes', 'a:0:{}'),
(1208, 110, '_virtual', 'no'),
(1209, 110, '_downloadable', 'no'),
(1210, 110, '_product_image_gallery', ''),
(1211, 110, '_download_limit', '-1'),
(1212, 110, '_download_expiry', '-1'),
(1213, 110, '_stock', NULL),
(1214, 110, '_stock_status', 'instock'),
(1215, 110, '_product_version', '3.5.1'),
(1216, 110, '_price', '250.000'),
(1217, 110, 'slide_template', 'default'),
(1218, 112, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1219, 112, '_wc_review_count', '0'),
(1220, 112, '_wc_rating_count', 'a:0:{}'),
(1221, 112, '_wc_average_rating', '0'),
(1222, 112, '_edit_lock', '1541237831:1'),
(1223, 112, '_edit_last', '1'),
(1224, 113, '_wp_attached_file', '2018/11/prod000553.jpg'),
(1225, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000553.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000553-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000553-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000553-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000553-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000553-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000553-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000553-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000553-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1226, 112, '_thumbnail_id', '113'),
(1227, 112, '_sku', ''),
(1228, 112, '_regular_price', '500.000'),
(1229, 112, '_sale_price', ''),
(1230, 112, '_sale_price_dates_from', ''),
(1231, 112, '_sale_price_dates_to', ''),
(1232, 112, 'total_sales', '0'),
(1233, 112, '_tax_status', 'taxable'),
(1234, 112, '_tax_class', ''),
(1235, 112, '_manage_stock', 'no'),
(1236, 112, '_backorders', 'no'),
(1237, 112, '_low_stock_amount', ''),
(1238, 112, '_sold_individually', 'no'),
(1239, 112, '_weight', ''),
(1240, 112, '_length', ''),
(1241, 112, '_width', ''),
(1242, 112, '_height', ''),
(1243, 112, '_upsell_ids', 'a:0:{}'),
(1244, 112, '_crosssell_ids', 'a:0:{}'),
(1245, 112, '_purchase_note', ''),
(1246, 112, '_default_attributes', 'a:0:{}'),
(1247, 112, '_virtual', 'no'),
(1248, 112, '_downloadable', 'no'),
(1249, 112, '_product_image_gallery', ''),
(1250, 112, '_download_limit', '-1'),
(1251, 112, '_download_expiry', '-1'),
(1252, 112, '_stock', NULL),
(1253, 112, '_stock_status', 'instock'),
(1254, 112, '_product_version', '3.5.1'),
(1255, 112, '_price', '500.000'),
(1256, 112, 'slide_template', 'default'),
(1257, 114, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1258, 114, '_wc_review_count', '0'),
(1259, 114, '_wc_rating_count', 'a:0:{}'),
(1260, 114, '_wc_average_rating', '0'),
(1261, 114, '_edit_lock', '1541237979:1'),
(1262, 115, '_wp_attached_file', '2018/11/prod003510.jpg'),
(1263, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod003510.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod003510-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod003510-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod003510-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod003510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod003510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1264, 114, '_edit_last', '1'),
(1265, 114, '_thumbnail_id', '115'),
(1266, 114, '_sku', ''),
(1267, 114, '_regular_price', '400.000'),
(1268, 114, '_sale_price', ''),
(1269, 114, '_sale_price_dates_from', ''),
(1270, 114, '_sale_price_dates_to', ''),
(1271, 114, 'total_sales', '0'),
(1272, 114, '_tax_status', 'taxable'),
(1273, 114, '_tax_class', ''),
(1274, 114, '_manage_stock', 'no'),
(1275, 114, '_backorders', 'no'),
(1276, 114, '_low_stock_amount', ''),
(1277, 114, '_sold_individually', 'no'),
(1278, 114, '_weight', ''),
(1279, 114, '_length', ''),
(1280, 114, '_width', ''),
(1281, 114, '_height', ''),
(1282, 114, '_upsell_ids', 'a:0:{}'),
(1283, 114, '_crosssell_ids', 'a:0:{}'),
(1284, 114, '_purchase_note', ''),
(1285, 114, '_default_attributes', 'a:0:{}'),
(1286, 114, '_virtual', 'no'),
(1287, 114, '_downloadable', 'no'),
(1288, 114, '_product_image_gallery', ''),
(1289, 114, '_download_limit', '-1'),
(1290, 114, '_download_expiry', '-1'),
(1291, 114, '_stock', NULL),
(1292, 114, '_stock_status', 'instock'),
(1293, 114, '_product_version', '3.5.1'),
(1294, 114, '_price', '400.000'),
(1295, 114, 'slide_template', 'default'),
(1296, 116, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1297, 116, '_wc_review_count', '0'),
(1298, 116, '_wc_rating_count', 'a:0:{}'),
(1299, 116, '_wc_average_rating', '0'),
(1300, 116, '_edit_lock', '1541238034:1'),
(1301, 116, '_edit_last', '1'),
(1302, 117, '_wp_attached_file', '2018/11/prod003055.jpg'),
(1303, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod003055.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003055-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod003055-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod003055-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod003055-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod003055-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003055-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod003055-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod003055-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1304, 116, '_thumbnail_id', '117'),
(1305, 116, '_sku', ''),
(1306, 116, '_regular_price', '320.000'),
(1307, 116, '_sale_price', ''),
(1308, 116, '_sale_price_dates_from', ''),
(1309, 116, '_sale_price_dates_to', ''),
(1310, 116, 'total_sales', '0'),
(1311, 116, '_tax_status', 'taxable'),
(1312, 116, '_tax_class', ''),
(1313, 116, '_manage_stock', 'no'),
(1314, 116, '_backorders', 'no'),
(1315, 116, '_low_stock_amount', ''),
(1316, 116, '_sold_individually', 'no'),
(1317, 116, '_weight', ''),
(1318, 116, '_length', ''),
(1319, 116, '_width', ''),
(1320, 116, '_height', ''),
(1321, 116, '_upsell_ids', 'a:0:{}'),
(1322, 116, '_crosssell_ids', 'a:0:{}'),
(1323, 116, '_purchase_note', ''),
(1324, 116, '_default_attributes', 'a:0:{}'),
(1325, 116, '_virtual', 'no'),
(1326, 116, '_downloadable', 'no'),
(1327, 116, '_product_image_gallery', ''),
(1328, 116, '_download_limit', '-1'),
(1329, 116, '_download_expiry', '-1'),
(1330, 116, '_stock', NULL),
(1331, 116, '_stock_status', 'instock'),
(1332, 116, '_product_version', '3.5.1'),
(1333, 116, '_price', '320.000'),
(1334, 116, 'slide_template', 'default'),
(1335, 118, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1336, 118, '_wc_review_count', '0'),
(1337, 118, '_wc_rating_count', 'a:0:{}'),
(1338, 118, '_wc_average_rating', '0'),
(1339, 118, '_edit_lock', '1541238089:1'),
(1340, 118, '_edit_last', '1'),
(1341, 119, '_wp_attached_file', '2018/11/prod002119.jpg'),
(1342, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002119.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002119-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002119-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002119-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002119-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002119-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002119-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002119-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002119-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1343, 118, '_thumbnail_id', '119'),
(1344, 118, '_sku', ''),
(1345, 118, '_regular_price', '100.000'),
(1346, 118, '_sale_price', ''),
(1347, 118, '_sale_price_dates_from', ''),
(1348, 118, '_sale_price_dates_to', ''),
(1349, 118, 'total_sales', '0'),
(1350, 118, '_tax_status', 'taxable'),
(1351, 118, '_tax_class', ''),
(1352, 118, '_manage_stock', 'no'),
(1353, 118, '_backorders', 'no'),
(1354, 118, '_low_stock_amount', ''),
(1355, 118, '_sold_individually', 'no'),
(1356, 118, '_weight', ''),
(1357, 118, '_length', ''),
(1358, 118, '_width', ''),
(1359, 118, '_height', ''),
(1360, 118, '_upsell_ids', 'a:0:{}'),
(1361, 118, '_crosssell_ids', 'a:0:{}'),
(1362, 118, '_purchase_note', ''),
(1363, 118, '_default_attributes', 'a:0:{}'),
(1364, 118, '_virtual', 'no'),
(1365, 118, '_downloadable', 'no'),
(1366, 118, '_product_image_gallery', ''),
(1367, 118, '_download_limit', '-1'),
(1368, 118, '_download_expiry', '-1'),
(1369, 118, '_stock', NULL),
(1370, 118, '_stock_status', 'instock'),
(1371, 118, '_product_version', '3.5.1'),
(1372, 118, '_price', '100.000'),
(1373, 118, 'slide_template', 'default'),
(1374, 120, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1375, 120, '_wc_review_count', '0'),
(1376, 120, '_wc_rating_count', 'a:0:{}'),
(1377, 120, '_wc_average_rating', '0'),
(1378, 120, '_edit_lock', '1541238308:1'),
(1379, 121, '_wp_attached_file', '2018/11/prod002768.jpg'),
(1380, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002768.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002768-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002768-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002768-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002768-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002768-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002768-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1381, 120, '_edit_last', '1'),
(1382, 120, '_thumbnail_id', '121'),
(1383, 120, '_sku', ''),
(1384, 120, '_regular_price', '160.000'),
(1385, 120, '_sale_price', ''),
(1386, 120, '_sale_price_dates_from', ''),
(1387, 120, '_sale_price_dates_to', ''),
(1388, 120, 'total_sales', '0'),
(1389, 120, '_tax_status', 'taxable'),
(1390, 120, '_tax_class', ''),
(1391, 120, '_manage_stock', 'no'),
(1392, 120, '_backorders', 'no'),
(1393, 120, '_low_stock_amount', ''),
(1394, 120, '_sold_individually', 'no'),
(1395, 120, '_weight', ''),
(1396, 120, '_length', ''),
(1397, 120, '_width', ''),
(1398, 120, '_height', ''),
(1399, 120, '_upsell_ids', 'a:0:{}'),
(1400, 120, '_crosssell_ids', 'a:0:{}'),
(1401, 120, '_purchase_note', ''),
(1402, 120, '_default_attributes', 'a:0:{}'),
(1403, 120, '_virtual', 'no'),
(1404, 120, '_downloadable', 'no'),
(1405, 120, '_product_image_gallery', ''),
(1406, 120, '_download_limit', '-1'),
(1407, 120, '_download_expiry', '-1'),
(1408, 120, '_stock', NULL),
(1409, 120, '_stock_status', 'instock'),
(1410, 120, '_product_version', '3.5.1'),
(1411, 120, '_price', '160.000'),
(1412, 120, 'slide_template', 'default'),
(1417, 123, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1418, 123, '_wc_review_count', '0'),
(1419, 123, '_wc_rating_count', 'a:0:{}'),
(1420, 123, '_wc_average_rating', '0'),
(1421, 123, '_edit_lock', '1541238548:1'),
(1422, 123, '_edit_last', '1'),
(1423, 124, '_wp_attached_file', '2018/11/prod001262.jpg'),
(1424, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod001262.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001262-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod001262-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod001262-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod001262-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod001262-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001262-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod001262-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001262-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1425, 123, '_thumbnail_id', '124'),
(1426, 123, '_sku', ''),
(1427, 123, '_regular_price', '120.000'),
(1428, 123, '_sale_price', ''),
(1429, 123, '_sale_price_dates_from', ''),
(1430, 123, '_sale_price_dates_to', ''),
(1431, 123, 'total_sales', '0'),
(1432, 123, '_tax_status', 'taxable'),
(1433, 123, '_tax_class', ''),
(1434, 123, '_manage_stock', 'no'),
(1435, 123, '_backorders', 'no'),
(1436, 123, '_low_stock_amount', ''),
(1437, 123, '_sold_individually', 'no'),
(1438, 123, '_weight', ''),
(1439, 123, '_length', ''),
(1440, 123, '_width', ''),
(1441, 123, '_height', ''),
(1442, 123, '_upsell_ids', 'a:0:{}'),
(1443, 123, '_crosssell_ids', 'a:0:{}'),
(1444, 123, '_purchase_note', ''),
(1445, 123, '_default_attributes', 'a:0:{}'),
(1446, 123, '_virtual', 'no'),
(1447, 123, '_downloadable', 'no'),
(1448, 123, '_product_image_gallery', ''),
(1449, 123, '_download_limit', '-1'),
(1450, 123, '_download_expiry', '-1'),
(1451, 123, '_stock', NULL),
(1452, 123, '_stock_status', 'instock'),
(1453, 123, '_product_version', '3.5.1'),
(1454, 123, '_price', '120.000'),
(1455, 123, 'slide_template', 'default'),
(1461, 126, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1462, 126, '_wc_review_count', '0'),
(1463, 126, '_wc_rating_count', 'a:0:{}'),
(1464, 126, '_wc_average_rating', '0'),
(1465, 126, '_edit_lock', '1541238704:1'),
(1466, 126, '_edit_last', '1'),
(1467, 127, '_wp_attached_file', '2018/11/prod500153.jpg'),
(1468, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500153.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500153-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500153-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500153-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500153-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500153-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500153-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500153-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500153-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1469, 126, '_thumbnail_id', '127'),
(1470, 126, '_sku', ''),
(1471, 126, '_regular_price', '300.000'),
(1472, 126, '_sale_price', ''),
(1473, 126, '_sale_price_dates_from', ''),
(1474, 126, '_sale_price_dates_to', ''),
(1475, 126, 'total_sales', '0'),
(1476, 126, '_tax_status', 'taxable'),
(1477, 126, '_tax_class', ''),
(1478, 126, '_manage_stock', 'no'),
(1479, 126, '_backorders', 'no'),
(1480, 126, '_low_stock_amount', ''),
(1481, 126, '_sold_individually', 'no'),
(1482, 126, '_weight', ''),
(1483, 126, '_length', ''),
(1484, 126, '_width', ''),
(1485, 126, '_height', ''),
(1486, 126, '_upsell_ids', 'a:0:{}'),
(1487, 126, '_crosssell_ids', 'a:0:{}'),
(1488, 126, '_purchase_note', ''),
(1489, 126, '_default_attributes', 'a:0:{}'),
(1490, 126, '_virtual', 'no'),
(1491, 126, '_downloadable', 'no'),
(1492, 126, '_product_image_gallery', ''),
(1493, 126, '_download_limit', '-1'),
(1494, 126, '_download_expiry', '-1'),
(1495, 126, '_stock', NULL),
(1496, 126, '_stock_status', 'instock'),
(1497, 126, '_product_version', '3.5.1'),
(1498, 126, '_price', '300.000'),
(1499, 126, 'slide_template', 'default'),
(1500, 128, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1501, 128, '_wc_review_count', '0'),
(1502, 128, '_wc_rating_count', 'a:0:{}'),
(1503, 128, '_wc_average_rating', '0'),
(1504, 128, '_edit_lock', '1541238850:1'),
(1505, 128, '_edit_last', '1'),
(1506, 129, '_wp_attached_file', '2018/11/prod099793.jpg'),
(1507, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod099793.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099793-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod099793-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod099793-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod099793-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod099793-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099793-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod099793-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099793-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1508, 128, '_thumbnail_id', '129'),
(1509, 128, '_sku', ''),
(1510, 128, '_regular_price', '80.000'),
(1511, 128, '_sale_price', ''),
(1512, 128, '_sale_price_dates_from', ''),
(1513, 128, '_sale_price_dates_to', ''),
(1514, 128, 'total_sales', '0'),
(1515, 128, '_tax_status', 'taxable'),
(1516, 128, '_tax_class', ''),
(1517, 128, '_manage_stock', 'no'),
(1518, 128, '_backorders', 'no'),
(1519, 128, '_low_stock_amount', ''),
(1520, 128, '_sold_individually', 'no'),
(1521, 128, '_weight', ''),
(1522, 128, '_length', ''),
(1523, 128, '_width', ''),
(1524, 128, '_height', ''),
(1525, 128, '_upsell_ids', 'a:0:{}'),
(1526, 128, '_crosssell_ids', 'a:0:{}'),
(1527, 128, '_purchase_note', ''),
(1528, 128, '_default_attributes', 'a:0:{}'),
(1529, 128, '_virtual', 'no'),
(1530, 128, '_downloadable', 'no'),
(1531, 128, '_product_image_gallery', ''),
(1532, 128, '_download_limit', '-1'),
(1533, 128, '_download_expiry', '-1'),
(1534, 128, '_stock', NULL),
(1535, 128, '_stock_status', 'instock'),
(1536, 128, '_product_version', '3.5.1'),
(1537, 128, '_price', '80.000'),
(1538, 128, 'slide_template', 'default'),
(1539, 130, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1540, 130, '_wc_review_count', '0'),
(1541, 130, '_wc_rating_count', 'a:0:{}'),
(1542, 130, '_wc_average_rating', '0'),
(1543, 130, '_edit_lock', '1541238965:1'),
(1544, 131, '_wp_attached_file', '2018/11/prod002554.jpg'),
(1545, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002554.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002554-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002554-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002554-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002554-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002554-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002554-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002554-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002554-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1546, 130, '_edit_last', '1'),
(1547, 130, '_thumbnail_id', '131'),
(1548, 130, '_sku', ''),
(1549, 130, '_regular_price', '50.000'),
(1550, 130, '_sale_price', ''),
(1551, 130, '_sale_price_dates_from', ''),
(1552, 130, '_sale_price_dates_to', ''),
(1553, 130, 'total_sales', '0'),
(1554, 130, '_tax_status', 'taxable'),
(1555, 130, '_tax_class', ''),
(1556, 130, '_manage_stock', 'no'),
(1557, 130, '_backorders', 'no'),
(1558, 130, '_low_stock_amount', ''),
(1559, 130, '_sold_individually', 'no'),
(1560, 130, '_weight', ''),
(1561, 130, '_length', ''),
(1562, 130, '_width', ''),
(1563, 130, '_height', ''),
(1564, 130, '_upsell_ids', 'a:0:{}'),
(1565, 130, '_crosssell_ids', 'a:0:{}'),
(1566, 130, '_purchase_note', ''),
(1567, 130, '_default_attributes', 'a:0:{}'),
(1568, 130, '_virtual', 'no');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1569, 130, '_downloadable', 'no'),
(1570, 130, '_product_image_gallery', ''),
(1571, 130, '_download_limit', '-1'),
(1572, 130, '_download_expiry', '-1'),
(1573, 130, '_stock', NULL),
(1574, 130, '_stock_status', 'instock'),
(1575, 130, '_product_version', '3.5.1'),
(1576, 130, '_price', '50.000'),
(1577, 130, 'slide_template', 'default'),
(1578, 132, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1579, 132, '_wc_review_count', '0'),
(1580, 132, '_wc_rating_count', 'a:0:{}'),
(1581, 132, '_wc_average_rating', '0'),
(1582, 132, '_edit_lock', '1541239173:1'),
(1583, 133, '_wp_attached_file', '2018/11/prod001261.jpg'),
(1584, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod001261.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001261-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod001261-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod001261-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod001261-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod001261-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001261-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod001261-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001261-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1585, 132, '_edit_last', '1'),
(1586, 132, '_thumbnail_id', '133'),
(1587, 132, '_sku', ''),
(1588, 132, '_regular_price', '100.000'),
(1589, 132, '_sale_price', ''),
(1590, 132, '_sale_price_dates_from', ''),
(1591, 132, '_sale_price_dates_to', ''),
(1592, 132, 'total_sales', '0'),
(1593, 132, '_tax_status', 'taxable'),
(1594, 132, '_tax_class', ''),
(1595, 132, '_manage_stock', 'no'),
(1596, 132, '_backorders', 'no'),
(1597, 132, '_low_stock_amount', ''),
(1598, 132, '_sold_individually', 'no'),
(1599, 132, '_weight', ''),
(1600, 132, '_length', ''),
(1601, 132, '_width', ''),
(1602, 132, '_height', ''),
(1603, 132, '_upsell_ids', 'a:0:{}'),
(1604, 132, '_crosssell_ids', 'a:0:{}'),
(1605, 132, '_purchase_note', ''),
(1606, 132, '_default_attributes', 'a:0:{}'),
(1607, 132, '_virtual', 'no'),
(1608, 132, '_downloadable', 'no'),
(1609, 132, '_product_image_gallery', ''),
(1610, 132, '_download_limit', '-1'),
(1611, 132, '_download_expiry', '-1'),
(1612, 132, '_stock', NULL),
(1613, 132, '_stock_status', 'instock'),
(1614, 132, '_product_version', '3.5.1'),
(1615, 132, '_price', '100.000'),
(1616, 132, 'slide_template', 'default'),
(1617, 134, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1618, 134, '_wc_review_count', '0'),
(1619, 134, '_wc_rating_count', 'a:0:{}'),
(1620, 134, '_wc_average_rating', '0'),
(1621, 134, '_edit_lock', '1541239206:1'),
(1622, 134, '_edit_last', '1'),
(1623, 135, '_wp_attached_file', '2018/11/prod002527.jpg'),
(1624, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002527.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002527-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002527-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002527-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002527-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002527-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002527-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002527-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002527-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1625, 134, '_thumbnail_id', '135'),
(1626, 134, '_sku', ''),
(1627, 134, '_regular_price', '80.000'),
(1628, 134, '_sale_price', ''),
(1629, 134, '_sale_price_dates_from', ''),
(1630, 134, '_sale_price_dates_to', ''),
(1631, 134, 'total_sales', '0'),
(1632, 134, '_tax_status', 'taxable'),
(1633, 134, '_tax_class', ''),
(1634, 134, '_manage_stock', 'no'),
(1635, 134, '_backorders', 'no'),
(1636, 134, '_low_stock_amount', ''),
(1637, 134, '_sold_individually', 'no'),
(1638, 134, '_weight', ''),
(1639, 134, '_length', ''),
(1640, 134, '_width', ''),
(1641, 134, '_height', ''),
(1642, 134, '_upsell_ids', 'a:0:{}'),
(1643, 134, '_crosssell_ids', 'a:0:{}'),
(1644, 134, '_purchase_note', ''),
(1645, 134, '_default_attributes', 'a:0:{}'),
(1646, 134, '_virtual', 'no'),
(1647, 134, '_downloadable', 'no'),
(1648, 134, '_product_image_gallery', ''),
(1649, 134, '_download_limit', '-1'),
(1650, 134, '_download_expiry', '-1'),
(1651, 134, '_stock', NULL),
(1652, 134, '_stock_status', 'instock'),
(1653, 134, '_product_version', '3.5.1'),
(1654, 134, '_price', '80.000'),
(1655, 134, 'slide_template', 'default'),
(1656, 136, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1657, 136, '_wc_review_count', '0'),
(1658, 136, '_wc_rating_count', 'a:0:{}'),
(1659, 136, '_wc_average_rating', '0'),
(1660, 136, '_edit_lock', '1541239332:1'),
(1661, 137, '_wp_attached_file', '2018/11/prod002526.jpg'),
(1662, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002526.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002526-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002526-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002526-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002526-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002526-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002526-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002526-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002526-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1663, 136, '_edit_last', '1'),
(1664, 136, '_thumbnail_id', '137'),
(1665, 136, '_sku', ''),
(1666, 136, '_regular_price', '150.000'),
(1667, 136, '_sale_price', ''),
(1668, 136, '_sale_price_dates_from', ''),
(1669, 136, '_sale_price_dates_to', ''),
(1670, 136, 'total_sales', '0'),
(1671, 136, '_tax_status', 'taxable'),
(1672, 136, '_tax_class', ''),
(1673, 136, '_manage_stock', 'no'),
(1674, 136, '_backorders', 'no'),
(1675, 136, '_low_stock_amount', ''),
(1676, 136, '_sold_individually', 'no'),
(1677, 136, '_weight', ''),
(1678, 136, '_length', ''),
(1679, 136, '_width', ''),
(1680, 136, '_height', ''),
(1681, 136, '_upsell_ids', 'a:0:{}'),
(1682, 136, '_crosssell_ids', 'a:0:{}'),
(1683, 136, '_purchase_note', ''),
(1684, 136, '_default_attributes', 'a:0:{}'),
(1685, 136, '_virtual', 'no'),
(1686, 136, '_downloadable', 'no'),
(1687, 136, '_product_image_gallery', ''),
(1688, 136, '_download_limit', '-1'),
(1689, 136, '_download_expiry', '-1'),
(1690, 136, '_stock', NULL),
(1691, 136, '_stock_status', 'instock'),
(1692, 136, '_product_version', '3.5.1'),
(1693, 136, '_price', '150.000'),
(1694, 136, 'slide_template', 'default'),
(1695, 138, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1696, 138, '_wc_review_count', '1'),
(1697, 138, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(1698, 138, '_wc_average_rating', '4.00'),
(1699, 138, '_edit_lock', '1541239469:1'),
(1700, 138, '_edit_last', '1'),
(1701, 139, '_wp_attached_file', '2018/11/prod002384.jpg'),
(1702, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002384.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002384-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002384-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002384-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002384-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002384-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002384-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002384-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002384-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1703, 138, '_thumbnail_id', '139'),
(1704, 138, '_sku', ''),
(1705, 138, '_regular_price', '80.000'),
(1706, 138, '_sale_price', ''),
(1707, 138, '_sale_price_dates_from', ''),
(1708, 138, '_sale_price_dates_to', ''),
(1709, 138, 'total_sales', '1'),
(1710, 138, '_tax_status', 'taxable'),
(1711, 138, '_tax_class', ''),
(1712, 138, '_manage_stock', 'no'),
(1713, 138, '_backorders', 'no'),
(1714, 138, '_low_stock_amount', ''),
(1715, 138, '_sold_individually', 'no'),
(1716, 138, '_weight', ''),
(1717, 138, '_length', ''),
(1718, 138, '_width', ''),
(1719, 138, '_height', ''),
(1720, 138, '_upsell_ids', 'a:0:{}'),
(1721, 138, '_crosssell_ids', 'a:0:{}'),
(1722, 138, '_purchase_note', ''),
(1723, 138, '_default_attributes', 'a:0:{}'),
(1724, 138, '_virtual', 'no'),
(1725, 138, '_downloadable', 'no'),
(1726, 138, '_product_image_gallery', ''),
(1727, 138, '_download_limit', '-1'),
(1728, 138, '_download_expiry', '-1'),
(1729, 138, '_stock', NULL),
(1730, 138, '_stock_status', 'instock'),
(1731, 138, '_product_version', '3.5.1'),
(1732, 138, '_price', '80.000'),
(1733, 138, 'slide_template', 'default'),
(1734, 140, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1735, 140, '_wc_review_count', '0'),
(1736, 140, '_wc_rating_count', 'a:0:{}'),
(1737, 140, '_wc_average_rating', '0'),
(1738, 140, '_edit_lock', '1541239585:1'),
(1739, 141, '_wp_attached_file', '2018/11/prod002510.jpg'),
(1740, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod002510.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod002510-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod002510-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod002510-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod002510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod002510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod002510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1741, 140, '_edit_last', '1'),
(1742, 140, '_thumbnail_id', '141'),
(1743, 140, '_sku', ''),
(1744, 140, '_regular_price', '90.000'),
(1745, 140, '_sale_price', ''),
(1746, 140, '_sale_price_dates_from', ''),
(1747, 140, '_sale_price_dates_to', ''),
(1748, 140, 'total_sales', '0'),
(1749, 140, '_tax_status', 'taxable'),
(1750, 140, '_tax_class', ''),
(1751, 140, '_manage_stock', 'no'),
(1752, 140, '_backorders', 'no'),
(1753, 140, '_low_stock_amount', ''),
(1754, 140, '_sold_individually', 'no'),
(1755, 140, '_weight', ''),
(1756, 140, '_length', ''),
(1757, 140, '_width', ''),
(1758, 140, '_height', ''),
(1759, 140, '_upsell_ids', 'a:0:{}'),
(1760, 140, '_crosssell_ids', 'a:0:{}'),
(1761, 140, '_purchase_note', ''),
(1762, 140, '_default_attributes', 'a:0:{}'),
(1763, 140, '_virtual', 'no'),
(1764, 140, '_downloadable', 'no'),
(1765, 140, '_product_image_gallery', ''),
(1766, 140, '_download_limit', '-1'),
(1767, 140, '_download_expiry', '-1'),
(1768, 140, '_stock', NULL),
(1769, 140, '_stock_status', 'instock'),
(1770, 140, '_product_version', '3.5.1'),
(1771, 140, '_price', '90.000'),
(1772, 140, 'slide_template', 'default'),
(1773, 142, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1774, 142, '_wc_review_count', '0'),
(1775, 142, '_wc_rating_count', 'a:0:{}'),
(1776, 142, '_wc_average_rating', '0'),
(1777, 142, '_edit_lock', '1541239882:1'),
(1778, 142, '_edit_last', '1'),
(1779, 143, '_wp_attached_file', '2018/11/prod000569.jpg'),
(1780, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000569.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000569-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000569-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000569-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000569-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000569-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000569-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000569-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000569-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1781, 142, '_thumbnail_id', '143'),
(1782, 142, '_sku', ''),
(1783, 142, '_regular_price', '60.000'),
(1784, 142, '_sale_price', ''),
(1785, 142, '_sale_price_dates_from', ''),
(1786, 142, '_sale_price_dates_to', ''),
(1787, 142, 'total_sales', '0'),
(1788, 142, '_tax_status', 'taxable'),
(1789, 142, '_tax_class', ''),
(1790, 142, '_manage_stock', 'no'),
(1791, 142, '_backorders', 'no'),
(1792, 142, '_low_stock_amount', ''),
(1793, 142, '_sold_individually', 'no'),
(1794, 142, '_weight', ''),
(1795, 142, '_length', ''),
(1796, 142, '_width', ''),
(1797, 142, '_height', ''),
(1798, 142, '_upsell_ids', 'a:0:{}'),
(1799, 142, '_crosssell_ids', 'a:0:{}'),
(1800, 142, '_purchase_note', ''),
(1801, 142, '_default_attributes', 'a:0:{}'),
(1802, 142, '_virtual', 'no'),
(1803, 142, '_downloadable', 'no'),
(1804, 142, '_product_image_gallery', ''),
(1805, 142, '_download_limit', '-1'),
(1806, 142, '_download_expiry', '-1'),
(1807, 142, '_stock', NULL),
(1808, 142, '_stock_status', 'instock'),
(1809, 142, '_product_version', '3.5.1'),
(1810, 142, '_price', '60.000'),
(1811, 142, 'slide_template', 'default'),
(1812, 144, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1813, 144, '_wc_review_count', '0'),
(1814, 144, '_wc_rating_count', 'a:0:{}'),
(1815, 144, '_wc_average_rating', '0'),
(1816, 144, '_edit_lock', '1541240219:1'),
(1817, 144, '_edit_last', '1'),
(1818, 145, '_wp_attached_file', '2018/11/prod000760.jpg'),
(1819, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000760.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000760-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000760-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000760-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000760-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000760-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000760-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000760-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000760-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1820, 144, '_thumbnail_id', '145'),
(1821, 144, '_sku', ''),
(1822, 144, '_regular_price', '300.000'),
(1823, 144, '_sale_price', ''),
(1824, 144, '_sale_price_dates_from', ''),
(1825, 144, '_sale_price_dates_to', ''),
(1826, 144, 'total_sales', '0'),
(1827, 144, '_tax_status', 'taxable'),
(1828, 144, '_tax_class', ''),
(1829, 144, '_manage_stock', 'no'),
(1830, 144, '_backorders', 'no'),
(1831, 144, '_low_stock_amount', ''),
(1832, 144, '_sold_individually', 'no'),
(1833, 144, '_weight', ''),
(1834, 144, '_length', ''),
(1835, 144, '_width', ''),
(1836, 144, '_height', ''),
(1837, 144, '_upsell_ids', 'a:0:{}'),
(1838, 144, '_crosssell_ids', 'a:0:{}'),
(1839, 144, '_purchase_note', ''),
(1840, 144, '_default_attributes', 'a:0:{}'),
(1841, 144, '_virtual', 'no'),
(1842, 144, '_downloadable', 'no'),
(1843, 144, '_product_image_gallery', ''),
(1844, 144, '_download_limit', '-1'),
(1845, 144, '_download_expiry', '-1'),
(1846, 144, '_stock', NULL),
(1847, 144, '_stock_status', 'instock'),
(1848, 144, '_product_version', '3.5.1'),
(1849, 144, '_price', '300.000'),
(1850, 144, 'slide_template', 'default'),
(1851, 146, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1852, 146, '_wc_review_count', '0'),
(1853, 146, '_wc_rating_count', 'a:0:{}'),
(1854, 146, '_wc_average_rating', '0'),
(1855, 146, '_edit_lock', '1541240518:1'),
(1856, 146, '_edit_last', '1'),
(1857, 146, '_sku', ''),
(1858, 146, '_regular_price', '120.000'),
(1859, 146, '_sale_price', ''),
(1860, 146, '_sale_price_dates_from', ''),
(1861, 146, '_sale_price_dates_to', ''),
(1862, 146, 'total_sales', '0'),
(1863, 146, '_tax_status', 'taxable'),
(1864, 146, '_tax_class', ''),
(1865, 146, '_manage_stock', 'no'),
(1866, 146, '_backorders', 'no'),
(1867, 146, '_low_stock_amount', ''),
(1868, 146, '_sold_individually', 'no'),
(1869, 146, '_weight', ''),
(1870, 146, '_length', ''),
(1871, 146, '_width', ''),
(1872, 146, '_height', ''),
(1873, 146, '_upsell_ids', 'a:0:{}'),
(1874, 146, '_crosssell_ids', 'a:0:{}'),
(1875, 146, '_purchase_note', ''),
(1876, 146, '_default_attributes', 'a:0:{}'),
(1877, 146, '_virtual', 'no'),
(1878, 146, '_downloadable', 'no'),
(1879, 146, '_product_image_gallery', ''),
(1880, 146, '_download_limit', '-1'),
(1881, 146, '_download_expiry', '-1'),
(1882, 146, '_stock', NULL),
(1883, 146, '_stock_status', 'instock'),
(1884, 146, '_product_version', '3.5.1'),
(1885, 146, '_price', '120.000'),
(1886, 146, 'slide_template', 'default'),
(1887, 147, '_wp_attached_file', '2018/11/prod000981.jpg'),
(1888, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000981.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000981-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000981-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000981-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000981-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000981-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000981-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000981-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000981-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1889, 146, '_thumbnail_id', '147'),
(1890, 148, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1891, 148, '_wc_review_count', '0'),
(1892, 148, '_wc_rating_count', 'a:0:{}'),
(1893, 148, '_wc_average_rating', '0'),
(1894, 148, '_edit_lock', '1541240511:1'),
(1895, 148, '_edit_last', '1'),
(1896, 149, '_wp_attached_file', '2018/11/prod500105.jpg'),
(1897, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500105.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500105-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500105-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500105-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500105-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500105-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500105-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500105-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500105-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1898, 148, '_thumbnail_id', '149'),
(1899, 148, '_sku', ''),
(1900, 148, '_regular_price', '75.000'),
(1901, 148, '_sale_price', ''),
(1902, 148, '_sale_price_dates_from', ''),
(1903, 148, '_sale_price_dates_to', ''),
(1904, 148, 'total_sales', '0'),
(1905, 148, '_tax_status', 'taxable'),
(1906, 148, '_tax_class', ''),
(1907, 148, '_manage_stock', 'no'),
(1908, 148, '_backorders', 'no'),
(1909, 148, '_low_stock_amount', ''),
(1910, 148, '_sold_individually', 'no'),
(1911, 148, '_weight', ''),
(1912, 148, '_length', ''),
(1913, 148, '_width', ''),
(1914, 148, '_height', ''),
(1915, 148, '_upsell_ids', 'a:0:{}'),
(1916, 148, '_crosssell_ids', 'a:0:{}'),
(1917, 148, '_purchase_note', ''),
(1918, 148, '_default_attributes', 'a:0:{}'),
(1919, 148, '_virtual', 'no'),
(1920, 148, '_downloadable', 'no'),
(1921, 148, '_product_image_gallery', ''),
(1922, 148, '_download_limit', '-1'),
(1923, 148, '_download_expiry', '-1'),
(1924, 148, '_stock', NULL),
(1925, 148, '_stock_status', 'instock'),
(1926, 148, '_product_version', '3.5.1'),
(1927, 148, '_price', '75.000'),
(1928, 148, 'slide_template', 'default'),
(1929, 150, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1930, 150, '_wc_review_count', '0'),
(1931, 150, '_wc_rating_count', 'a:0:{}'),
(1932, 150, '_wc_average_rating', '0'),
(1933, 150, '_edit_lock', '1541240580:1'),
(1934, 150, '_edit_last', '1'),
(1935, 151, '_wp_attached_file', '2018/11/prod000827.jpg'),
(1936, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000827.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000827-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000827-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000827-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000827-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000827-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000827-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000827-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000827-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1937, 150, '_thumbnail_id', '151'),
(1938, 150, '_sku', ''),
(1939, 150, '_regular_price', '80.000'),
(1940, 150, '_sale_price', ''),
(1941, 150, '_sale_price_dates_from', ''),
(1942, 150, '_sale_price_dates_to', ''),
(1943, 150, 'total_sales', '0'),
(1944, 150, '_tax_status', 'taxable'),
(1945, 150, '_tax_class', ''),
(1946, 150, '_manage_stock', 'no'),
(1947, 150, '_backorders', 'no'),
(1948, 150, '_low_stock_amount', ''),
(1949, 150, '_sold_individually', 'no'),
(1950, 150, '_weight', ''),
(1951, 150, '_length', ''),
(1952, 150, '_width', ''),
(1953, 150, '_height', ''),
(1954, 150, '_upsell_ids', 'a:0:{}'),
(1955, 150, '_crosssell_ids', 'a:0:{}'),
(1956, 150, '_purchase_note', ''),
(1957, 150, '_default_attributes', 'a:0:{}'),
(1958, 150, '_virtual', 'no'),
(1959, 150, '_downloadable', 'no'),
(1960, 150, '_product_image_gallery', ''),
(1961, 150, '_download_limit', '-1'),
(1962, 150, '_download_expiry', '-1'),
(1963, 150, '_stock', NULL),
(1964, 150, '_stock_status', 'instock'),
(1965, 150, '_product_version', '3.5.1'),
(1966, 150, '_price', '80.000'),
(1967, 150, 'slide_template', 'default'),
(1968, 152, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(1969, 152, '_wc_review_count', '0'),
(1970, 152, '_wc_rating_count', 'a:0:{}'),
(1971, 152, '_wc_average_rating', '0'),
(1972, 152, '_edit_lock', '1541240774:1'),
(1973, 152, '_edit_last', '1'),
(1974, 153, '_wp_attached_file', '2018/11/prod099726.jpg'),
(1975, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod099726.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099726-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod099726-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod099726-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod099726-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod099726-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099726-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod099726-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod099726-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1976, 152, '_thumbnail_id', '153'),
(1977, 152, '_sku', ''),
(1978, 152, '_regular_price', '500.000'),
(1979, 152, '_sale_price', ''),
(1980, 152, '_sale_price_dates_from', ''),
(1981, 152, '_sale_price_dates_to', ''),
(1982, 152, 'total_sales', '0'),
(1983, 152, '_tax_status', 'taxable'),
(1984, 152, '_tax_class', ''),
(1985, 152, '_manage_stock', 'no'),
(1986, 152, '_backorders', 'no'),
(1987, 152, '_low_stock_amount', ''),
(1988, 152, '_sold_individually', 'no'),
(1989, 152, '_weight', ''),
(1990, 152, '_length', ''),
(1991, 152, '_width', ''),
(1992, 152, '_height', ''),
(1993, 152, '_upsell_ids', 'a:0:{}'),
(1994, 152, '_crosssell_ids', 'a:0:{}'),
(1995, 152, '_purchase_note', ''),
(1996, 152, '_default_attributes', 'a:0:{}'),
(1997, 152, '_virtual', 'no'),
(1998, 152, '_downloadable', 'no'),
(1999, 152, '_product_image_gallery', ''),
(2000, 152, '_download_limit', '-1'),
(2001, 152, '_download_expiry', '-1'),
(2002, 152, '_stock', NULL),
(2003, 152, '_stock_status', 'instock'),
(2004, 152, '_product_version', '3.5.1'),
(2005, 152, '_price', '500.000'),
(2006, 152, 'slide_template', 'default'),
(2007, 154, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2008, 154, '_wc_review_count', '0'),
(2009, 154, '_wc_rating_count', 'a:0:{}'),
(2010, 154, '_wc_average_rating', '0'),
(2011, 154, '_edit_lock', '1541241039:1'),
(2012, 154, '_edit_last', '1'),
(2013, 155, '_wp_attached_file', '2018/11/prod500401.jpg'),
(2014, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod500401.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500401-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod500401-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod500401-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod500401-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod500401-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500401-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod500401-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod500401-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2015, 154, '_thumbnail_id', '155'),
(2016, 154, '_sku', ''),
(2017, 154, '_regular_price', '80.000'),
(2018, 154, '_sale_price', ''),
(2019, 154, '_sale_price_dates_from', ''),
(2020, 154, '_sale_price_dates_to', ''),
(2021, 154, 'total_sales', '0'),
(2022, 154, '_tax_status', 'taxable'),
(2023, 154, '_tax_class', ''),
(2024, 154, '_manage_stock', 'no'),
(2025, 154, '_backorders', 'no'),
(2026, 154, '_low_stock_amount', ''),
(2027, 154, '_sold_individually', 'no'),
(2028, 154, '_weight', ''),
(2029, 154, '_length', ''),
(2030, 154, '_width', ''),
(2031, 154, '_height', ''),
(2032, 154, '_upsell_ids', 'a:0:{}'),
(2033, 154, '_crosssell_ids', 'a:0:{}'),
(2034, 154, '_purchase_note', ''),
(2035, 154, '_default_attributes', 'a:0:{}'),
(2036, 154, '_virtual', 'no'),
(2037, 154, '_downloadable', 'no'),
(2038, 154, '_product_image_gallery', ''),
(2039, 154, '_download_limit', '-1'),
(2040, 154, '_download_expiry', '-1'),
(2041, 154, '_stock', NULL),
(2042, 154, '_stock_status', 'instock'),
(2043, 154, '_product_version', '3.5.1'),
(2044, 154, '_price', '80.000'),
(2045, 154, 'slide_template', 'default'),
(2046, 156, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2047, 156, '_wc_review_count', '0'),
(2048, 156, '_wc_rating_count', 'a:0:{}'),
(2049, 156, '_wc_average_rating', '0'),
(2050, 156, '_edit_lock', '1541240977:1'),
(2051, 156, '_edit_last', '1'),
(2052, 157, '_wp_attached_file', '2018/11/prod001112.jpg'),
(2053, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod001112.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001112-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod001112-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod001112-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod001112-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod001112-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001112-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod001112-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod001112-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2054, 156, '_thumbnail_id', '157'),
(2055, 156, '_sku', ''),
(2056, 156, '_regular_price', '120.000'),
(2057, 156, '_sale_price', ''),
(2058, 156, '_sale_price_dates_from', ''),
(2059, 156, '_sale_price_dates_to', ''),
(2060, 156, 'total_sales', '0'),
(2061, 156, '_tax_status', 'taxable'),
(2062, 156, '_tax_class', ''),
(2063, 156, '_manage_stock', 'no'),
(2064, 156, '_backorders', 'no'),
(2065, 156, '_low_stock_amount', ''),
(2066, 156, '_sold_individually', 'no'),
(2067, 156, '_weight', ''),
(2068, 156, '_length', ''),
(2069, 156, '_width', ''),
(2070, 156, '_height', ''),
(2071, 156, '_upsell_ids', 'a:0:{}'),
(2072, 156, '_crosssell_ids', 'a:0:{}'),
(2073, 156, '_purchase_note', ''),
(2074, 156, '_default_attributes', 'a:0:{}'),
(2075, 156, '_virtual', 'no'),
(2076, 156, '_downloadable', 'no'),
(2077, 156, '_product_image_gallery', ''),
(2078, 156, '_download_limit', '-1'),
(2079, 156, '_download_expiry', '-1'),
(2080, 156, '_stock', NULL),
(2081, 156, '_stock_status', 'instock'),
(2082, 156, '_product_version', '3.5.1'),
(2083, 156, '_price', '120.000'),
(2084, 156, 'slide_template', 'default'),
(2085, 158, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2086, 158, '_wc_review_count', '0'),
(2087, 158, '_wc_rating_count', 'a:0:{}'),
(2088, 158, '_wc_average_rating', '0'),
(2089, 158, '_edit_lock', '1541241086:1'),
(2090, 158, '_edit_last', '1'),
(2091, 159, '_wp_attached_file', '2018/11/prod000541.jpg'),
(2092, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2018/11/prod000541.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000541-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prod000541-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:22:\"prod000541-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:22:\"prod000541-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"prod000541-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000541-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"prod000541-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"prod000541-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2093, 158, '_thumbnail_id', '159'),
(2094, 158, '_sku', ''),
(2095, 158, '_regular_price', '300.000'),
(2096, 158, '_sale_price', ''),
(2097, 158, '_sale_price_dates_from', ''),
(2098, 158, '_sale_price_dates_to', ''),
(2099, 158, 'total_sales', '0'),
(2100, 158, '_tax_status', 'taxable'),
(2101, 158, '_tax_class', ''),
(2102, 158, '_manage_stock', 'no'),
(2103, 158, '_backorders', 'no'),
(2104, 158, '_low_stock_amount', ''),
(2105, 158, '_sold_individually', 'no'),
(2106, 158, '_weight', ''),
(2107, 158, '_length', ''),
(2108, 158, '_width', ''),
(2109, 158, '_height', ''),
(2110, 158, '_upsell_ids', 'a:0:{}'),
(2111, 158, '_crosssell_ids', 'a:0:{}'),
(2112, 158, '_purchase_note', ''),
(2113, 158, '_default_attributes', 'a:0:{}'),
(2114, 158, '_virtual', 'no'),
(2115, 158, '_downloadable', 'no'),
(2116, 158, '_product_image_gallery', ''),
(2117, 158, '_download_limit', '-1'),
(2118, 158, '_download_expiry', '-1'),
(2119, 158, '_stock', NULL),
(2120, 158, '_stock_status', 'instock'),
(2121, 158, '_product_version', '3.5.1'),
(2122, 158, '_price', '300.000'),
(2123, 158, 'slide_template', 'default'),
(2124, 160, '_wp_attached_file', '2018/11/cropped-anh-thien-nhien-dep1-1.jpg'),
(2125, 160, '_wp_attachment_context', 'custom-header'),
(2126, 160, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:42:\"2018/11/cropped-anh-thien-nhien-dep1-1.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-anh-thien-nhien-dep1-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"cropped-anh-thien-nhien-dep1-1-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-anh-thien-nhien-dep1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:19;}'),
(2131, 162, '_wp_trash_meta_status', 'publish'),
(2132, 162, '_wp_trash_meta_time', '1541251454'),
(2133, 165, '_edit_lock', '1541251497:1'),
(2134, 165, '_wp_trash_meta_status', 'publish'),
(2135, 165, '_wp_trash_meta_time', '1541251524'),
(2136, 167, '_wp_trash_meta_status', 'publish'),
(2137, 167, '_wp_trash_meta_time', '1541251800'),
(2138, 3, '_edit_lock', '1541267093:1'),
(2139, 3, '_edit_last', '1'),
(2140, 3, 'slide_template', 'default'),
(2141, 169, '_wpb_vc_js_status', 'false'),
(2142, 169, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2143, 169, '_menu_item_type', 'post_type'),
(2144, 169, '_menu_item_menu_item_parent', '0'),
(2145, 169, '_menu_item_object_id', '3'),
(2146, 169, '_menu_item_object', 'page'),
(2147, 169, '_menu_item_target', ''),
(2148, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2149, 169, '_menu_item_xfn', ''),
(2150, 169, '_menu_item_url', ''),
(2151, 3, '_wpb_vc_js_status', 'false'),
(2152, 3, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2153, 173, '_wp_attached_file', '2018/11/eat.gif'),
(2154, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:15:\"2018/11/eat.gif\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"eat-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:15:\"eat-220x154.gif\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/gif\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:15:\"eat-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"eat-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"eat-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2155, 174, '_wp_attached_file', '2018/11/cropped-eat.gif'),
(2156, 174, '_wp_attachment_context', 'custom-logo');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2157, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:23:\"2018/11/cropped-eat.gif\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-eat-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:23:\"cropped-eat-220x154.gif\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/gif\";}s:24:\"vw-bakery-homepage-thumb\";a:4:{s:4:\"file\";s:23:\"cropped-eat-240x145.gif\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/gif\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-eat-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-eat-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2159, 52, '_wp_trash_meta_status', 'publish'),
(2160, 52, '_wp_trash_meta_time', '1541401022'),
(2161, 52, '_wp_desired_post_slug', 'register'),
(2162, 176, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2163, 177, '_order_key', 'wc_order_5be91ff141bfb'),
(2164, 177, '_customer_user', '1'),
(2165, 177, '_payment_method', 'cod'),
(2166, 177, '_payment_method_title', 'Cash on delivery'),
(2167, 177, '_transaction_id', ''),
(2168, 177, '_customer_ip_address', '::1'),
(2169, 177, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'),
(2170, 177, '_created_via', 'checkout'),
(2171, 177, '_date_completed', ''),
(2172, 177, '_completed_date', ''),
(2173, 177, '_date_paid', ''),
(2174, 177, '_paid_date', ''),
(2175, 177, '_cart_hash', 'ebc74f599443cad9e1118a1590144860'),
(2176, 177, '_billing_first_name', 'Quynh'),
(2177, 177, '_billing_last_name', 'Cao'),
(2178, 177, '_billing_company', ''),
(2179, 177, '_billing_address_1', 'HN'),
(2180, 177, '_billing_address_2', 'HN'),
(2181, 177, '_billing_city', 'hn'),
(2182, 177, '_billing_state', ''),
(2183, 177, '_billing_postcode', 'HNUI'),
(2184, 177, '_billing_country', 'VN'),
(2185, 177, '_billing_email', 'quynhquynh.hn1997@gmail.com'),
(2186, 177, '_billing_phone', '0987654321'),
(2187, 177, '_shipping_first_name', 'Quynh'),
(2188, 177, '_shipping_last_name', 'Cao'),
(2189, 177, '_shipping_company', ''),
(2190, 177, '_shipping_address_1', 'HN'),
(2191, 177, '_shipping_address_2', 'HN'),
(2192, 177, '_shipping_city', 'hn'),
(2193, 177, '_shipping_state', ''),
(2194, 177, '_shipping_postcode', 'HNUI'),
(2195, 177, '_shipping_country', 'VN'),
(2196, 177, '_order_currency', 'VND'),
(2197, 177, '_cart_discount', '0'),
(2198, 177, '_cart_discount_tax', '0'),
(2199, 177, '_order_shipping', '0.00'),
(2200, 177, '_order_shipping_tax', '0'),
(2201, 177, '_order_tax', '0'),
(2202, 177, '_order_total', '9535.00'),
(2203, 177, '_order_version', '3.5.1'),
(2204, 177, '_prices_include_tax', 'no'),
(2205, 177, '_billing_address_index', 'Quynh Cao  HN HN hn  HNUI VN quynhquynh.hn1997@gmail.com 0987654321'),
(2206, 177, '_shipping_address_index', 'Quynh Cao  HN HN hn  HNUI VN'),
(2207, 177, '_download_permissions_granted', 'yes'),
(2208, 177, '_recorded_sales', 'yes'),
(2209, 177, '_recorded_coupon_usage_counts', 'yes'),
(2210, 177, '_order_stock_reduced', 'yes'),
(2211, 178, '_edit_lock', '1542006505:1'),
(2212, 179, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(2213, 179, '_mc4wp_settings', 'a:8:{s:5:\"lists\";a:1:{i:0;s:10:\"a5986f3927\";}s:15:\"required_fields\";s:5:\"EMAIL\";s:12:\"double_optin\";s:1:\"1\";s:15:\"update_existing\";s:1:\"0\";s:17:\"replace_interests\";s:1:\"1\";s:18:\"hide_after_success\";s:1:\"0\";s:8:\"redirect\";s:0:\"\";s:3:\"css\";s:1:\"0\";}'),
(2214, 179, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(2215, 179, 'text_invalid_email', 'Please provide a valid email address.'),
(2216, 179, 'text_required_field_missing', 'Please fill in the required fields.'),
(2217, 179, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(2218, 179, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(2219, 179, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(2220, 179, 'text_not_subscribed', 'Given email address is not subscribed.'),
(2221, 179, 'text_no_lists_selected', 'Please select at least one list.'),
(2222, 179, 'text_updated', 'Thank you, your records have been updated!'),
(2223, 99, '_atum_manage_stock', 'yes'),
(2224, 20, '_atum_manage_stock', 'yes'),
(2225, 44, '_atum_manage_stock', 'yes'),
(2226, 59, '_atum_manage_stock', 'yes'),
(2227, 61, '_atum_manage_stock', 'yes'),
(2228, 63, '_atum_manage_stock', 'yes'),
(2229, 58, '_atum_manage_stock', 'yes'),
(2230, 67, '_atum_manage_stock', 'yes'),
(2231, 69, '_atum_manage_stock', 'yes'),
(2232, 71, '_atum_manage_stock', 'yes'),
(2233, 73, '_atum_manage_stock', 'yes'),
(2234, 75, '_atum_manage_stock', 'yes'),
(2235, 80, '_atum_manage_stock', 'yes'),
(2236, 82, '_atum_manage_stock', 'yes'),
(2237, 84, '_atum_manage_stock', 'yes'),
(2238, 87, '_atum_manage_stock', 'yes'),
(2239, 89, '_atum_manage_stock', 'yes'),
(2240, 91, '_atum_manage_stock', 'yes'),
(2241, 93, '_atum_manage_stock', 'yes'),
(2242, 95, '_atum_manage_stock', 'yes'),
(2243, 97, '_atum_manage_stock', 'yes'),
(2244, 101, '_atum_manage_stock', 'yes'),
(2245, 103, '_atum_manage_stock', 'yes'),
(2246, 106, '_atum_manage_stock', 'yes'),
(2247, 108, '_atum_manage_stock', 'yes'),
(2248, 110, '_atum_manage_stock', 'yes'),
(2249, 112, '_atum_manage_stock', 'yes'),
(2250, 114, '_atum_manage_stock', 'yes'),
(2251, 116, '_atum_manage_stock', 'yes'),
(2252, 118, '_atum_manage_stock', 'yes'),
(2253, 120, '_atum_manage_stock', 'yes'),
(2254, 123, '_atum_manage_stock', 'yes'),
(2255, 126, '_atum_manage_stock', 'yes'),
(2256, 128, '_atum_manage_stock', 'yes'),
(2257, 130, '_atum_manage_stock', 'yes'),
(2258, 132, '_atum_manage_stock', 'yes'),
(2259, 134, '_atum_manage_stock', 'yes'),
(2260, 136, '_atum_manage_stock', 'yes'),
(2261, 138, '_atum_manage_stock', 'yes'),
(2262, 140, '_atum_manage_stock', 'yes'),
(2263, 142, '_atum_manage_stock', 'yes'),
(2264, 144, '_atum_manage_stock', 'yes'),
(2265, 146, '_atum_manage_stock', 'yes'),
(2266, 148, '_atum_manage_stock', 'yes'),
(2267, 150, '_atum_manage_stock', 'yes'),
(2268, 152, '_atum_manage_stock', 'yes'),
(2269, 154, '_atum_manage_stock', 'yes'),
(2270, 156, '_atum_manage_stock', 'yes'),
(2271, 158, '_atum_manage_stock', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-01 14:21:33', '2018-11-01 14:21:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-11-01 14:21:33', '2018-11-01 14:21:33', '', 0, 'http://localhost/seeds/?p=1', 0, 'post', '', 2),
(2, 1, '2018-11-01 14:21:33', '2018-11-01 14:21:33', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/seeds/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-11-02 15:06:38', '2018-11-02 15:06:38', '', 0, 'http://localhost/seeds/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-01 14:21:33', '2018-11-01 14:21:33', '<h2>Who we are</h2>\r\nOur website address is: http://localhost/seeds.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-11-03 17:46:56', '2018-11-03 17:46:56', '', 0, 'http://localhost/seeds/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-11-01 14:27:36', '2018-11-01 14:27:36', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-11-01 14:27:36', '2018-11-01 14:27:36', '', 0, 'http://localhost/seeds/index.php/shop/', 0, 'page', '', 0),
(7, 1, '2018-11-01 14:27:37', '2018-11-01 14:27:37', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-11-01 14:27:37', '2018-11-01 14:27:37', '', 0, 'http://localhost/seeds/index.php/cart/', 0, 'page', '', 0),
(8, 1, '2018-11-01 14:27:37', '2018-11-01 14:27:37', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-11-01 14:27:37', '2018-11-01 14:27:37', '', 0, 'http://localhost/seeds/index.php/checkout/', 0, 'page', '', 0),
(9, 1, '2018-11-01 14:27:37', '2018-11-01 14:27:37', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-11-01 14:27:37', '2018-11-01 14:27:37', '', 0, 'http://localhost/seeds/index.php/my-account/', 0, 'page', '', 0),
(15, 1, '2018-11-01 14:59:33', '2018-11-01 14:59:33', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-11-01 14:59:33', '2018-11-01 14:59:33', '', 0, 'http://localhost/seeds/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2018-11-01 14:59:33', '2018-11-01 14:59:33', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-11-01 14:59:33', '2018-11-01 14:59:33', '', 0, 'http://localhost/seeds/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-11-01 14:59:34', '2018-11-01 14:59:34', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-11-01 14:59:34', '2018-11-01 14:59:34', '', 0, 'http://localhost/seeds/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2018-11-01 14:59:34', '2018-11-01 14:59:34', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-11-01 14:59:34', '2018-11-01 14:59:34', '', 0, 'http://localhost/seeds/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2018-11-01 15:22:36', '2018-11-01 15:22:36', '', 'anh-thien-nhien-dep1', '', 'inherit', 'open', 'closed', '', 'anh-thien-nhien-dep1', '', '', '2018-11-01 15:22:36', '2018-11-01 15:22:36', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/anh-thien-nhien-dep1.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-11-01 15:32:15', '2018-11-01 15:32:15', '', 'Cilantro, Calypso', 'You say cilantro; I say coriander. Whatever, Calypso makes the cut-again and again. Terrifically prolific, this new variety is slower to bolt than any other coriander available. Fragrant, citrusy herb sparks up salsa, guacamole, sauces and seafood. Perfect for your herb garden or mixed container.', 'publish', 'open', 'closed', '', 'cilantro-calypso', '', '', '2018-11-01 15:52:33', '2018-11-01 15:52:33', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=20', 0, 'product', '', 1),
(21, 1, '2018-11-01 15:32:06', '2018-11-01 15:32:06', '', 'prod001758', '', 'inherit', 'open', 'closed', '', 'prod001758', '', '', '2018-11-01 15:32:06', '2018-11-01 15:32:06', '', 20, 'http://localhost/seeds/wp-content/uploads/2018/11/prod001758.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-11-01 15:44:12', '2018-11-01 15:44:12', 'http://localhost/seeds/wp-content/uploads/2018/11/cropped-anh-thien-nhien-dep1.jpg', 'cropped-anh-thien-nhien-dep1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-anh-thien-nhien-dep1-jpg', '', '', '2018-11-01 15:44:12', '2018-11-01 15:44:12', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/cropped-anh-thien-nhien-dep1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-11-01 15:45:48', '2018-11-01 15:45:48', '{\n    \"storefront::custom_logo\": {\n        \"value\": 22,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-01 15:45:16\"\n    },\n    \"storefront::storefront_footer_background_color\": {\n        \"value\": \"#f0f0f0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-01 15:45:16\"\n    },\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-01 15:45:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '837de465-0933-4755-94ae-4e401de7822e', '', '', '2018-11-01 15:45:48', '2018-11-01 15:45:48', '', 0, 'http://localhost/seeds/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2018-11-01 15:49:44', '2018-11-01 15:49:44', '{\n    \"storefront::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-01 15:49:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2084370-0e90-4717-87e4-efceec77e22a', '', '', '2018-11-01 15:49:44', '2018-11-01 15:49:44', '', 0, 'http://localhost/seeds/c2084370-0e90-4717-87e4-efceec77e22a/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-11-02 06:12:03', '2018-11-02 06:12:03', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-11-02 06:12:03', '2018-11-02 06:12:03', '', 0, 'http://localhost/seeds/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-11-02 06:12:03', '2018-11-02 06:12:03', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-11-02 06:12:03', '2018-11-02 06:12:03', '', 0, 'http://localhost/seeds/27/', 5, 'nav_menu_item', '', 0),
(28, 1, '2018-11-02 06:12:03', '2018-11-02 06:12:03', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-11-02 06:12:03', '2018-11-02 06:12:03', '', 26, 'http://localhost/seeds/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-11-02 15:06:38', '2018-11-02 15:06:38', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/seeds/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-02 15:06:38', '2018-11-02 15:06:38', '', 2, 'http://localhost/seeds/2-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-11-02 15:07:29', '2018-11-02 15:07:29', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2018-11-02 15:16:09', '2018-11-02 15:16:09', '', 0, 'http://localhost/seeds/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-11-02 15:07:29', '2018-11-02 15:07:29', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-11-02 15:07:29', '2018-11-02 15:07:29', '', 0, 'http://localhost/seeds/31/', 6, 'nav_menu_item', '', 0),
(32, 1, '2018-11-02 15:07:29', '2018-11-02 15:07:29', '', 'Wishlist', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-02 15:07:29', '2018-11-02 15:07:29', '', 30, 'http://localhost/seeds/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-11-02 15:16:09', '2018-11-02 15:16:09', '[yith_wcwl_wishlist]', 'Wishlist', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-02 15:16:09', '2018-11-02 15:16:09', '', 30, 'http://localhost/seeds/30-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-11-02 15:46:39', '2018-11-02 15:46:39', '', 'uni_cpo_weight', '', 'publish', 'closed', 'closed', '', 'uni_cpo_weight', '', '', '2018-11-02 15:46:39', '2018-11-02 15:46:39', '', 0, 'http://localhost/seeds/uni-cpo-option/uni_cpo_weight/', 0, 'uni_cpo_option', '', 0),
(36, 1, '2018-11-02 16:00:41', '2018-11-02 16:00:41', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"categories-3\"\n            ],\n            \"sidebar-2\": [\n                \"woocommerce_product_categories-2\"\n            ],\n            \"sidebar-3\": [],\n            \"footer-1\": [],\n            \"footer-2\": [],\n            \"footer-3\": [],\n            \"footer-4\": [],\n            \"social-icon\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-02 16:00:41\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Where you can buy cute trees and plants\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-02 16:00:41\"\n    },\n    \"traza::nav_menu_locations[menu-1]\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-02 16:00:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7ffb6ae-bf13-4223-970c-03e4ff0d1400', '', '', '2018-11-02 16:00:41', '2018-11-02 16:00:41', '', 0, 'http://localhost/seeds/c7ffb6ae-bf13-4223-970c-03e4ff0d1400/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-11-02 16:20:02', '2018-11-02 16:20:02', '[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"8\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"8\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][vc_row_inner][vc_column_inner width=\"1/2\"][vc_column_text][mc4wp_form id=\"179\"][/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/2\"][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-12 11:08:01', '2018-11-12 11:08:01', '', 0, 'http://localhost/seeds/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-11-02 16:20:02', '2018-11-02 16:20:02', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-11-02 16:20:02', '2018-11-02 16:20:02', '', 0, 'http://localhost/seeds/38/', 7, 'nav_menu_item', '', 0),
(39, 1, '2018-11-02 16:20:02', '2018-11-02 16:20:02', '[vc_row][vc_column][vc_text_separator title=\"Feature Product\" color=\"purple\" style=\"shadow\"][featured_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-02 16:20:02', '2018-11-02 16:20:02', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-11-12 11:07:34', '2018-11-12 11:07:34', '<p>[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"8\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"8\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][mc4wp_form id=\"179\"][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_row_inner][vc_column_inner width=\"1/2\"][/vc_column_inner][vc_column_inner width=\"1/2\"][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]</p>\n', 'Home', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2018-11-12 11:07:34', '2018-11-12 11:07:34', '', 37, 'http://localhost/seeds/37-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2018-11-02 16:26:36', '2018-11-02 16:26:36', '[vc_row][vc_column][vc_text_separator title=\"Recent Products\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][vc_text_separator title=\"Feature Product\" color=\"purple\" style=\"shadow\"][featured_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\"][vc_separator][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-02 16:26:36', '2018-11-02 16:26:36', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-11-02 16:32:25', '2018-11-02 16:32:25', '[vc_row][vc_column][vc_text_separator title=\"Recent Products\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\"][vc_separator][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][vc_images_carousel images=\"19,21\" autoplay=\"yes\" hide_pagination_control=\"yes\" hide_prev_next_buttons=\"yes\" wrap=\"yes\" css_animation=\"fadeInRight\" title=\"Widget\"][/vc_column][/vc_row][vc_row][vc_column][ult_countdown datetime=\"2018/11/30 23:31:29\" ult_tz=\"ult-usrtz\" countdown_opts=\"sday,shr,smin,ssec\" timer_bg_color=\"#ad78e2\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-02 16:32:25', '2018-11-02 16:32:25', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-11-02 16:40:56', '2018-11-02 16:40:56', '[vc_row][vc_column][ult_countdown datetime=\"2018/11/30 23:31:29\" ult_tz=\"ult-usrtz\" countdown_opts=\"sday,shr,smin,ssec\" timer_bg_color=\"#ad78e2\"][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][vc_separator][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][vc_images_carousel images=\"19,21\" autoplay=\"yes\" hide_pagination_control=\"yes\" hide_prev_next_buttons=\"yes\" wrap=\"yes\" css_animation=\"fadeInRight\" title=\"Widget\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-02 16:40:56', '2018-11-02 16:40:56', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-11-02 16:44:19', '2018-11-02 16:44:19', '', 'Chives, Garlic Organic', '<strong>Flavor is midway between garlic and onion.</strong>\r\n\r\nFull Description\r\n\r\nThe flat, tender leaves have a flavor midway between garlic and onion. Delicious in salads, spreads and flavored vinegars. Grows best in full sun. Perennial in Zones 3-10. Start early indoors or outdoors after danger of frost. We searched the world to find the best organic seed-Burpee fully guarantees that not a drop of synthetic chemicals was used to make these excellent seeds. Certified Organic Seed.', 'publish', 'open', 'closed', '', 'chives-garlic-organic', '', '', '2018-11-02 16:44:27', '2018-11-02 16:44:27', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2018-11-02 16:43:34', '2018-11-02 16:43:34', '', 'prod000493', '', 'inherit', 'open', 'closed', '', 'prod000493', '', '', '2018-11-02 16:43:34', '2018-11-02 16:43:34', '', 44, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000493.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-11-02 16:48:31', '2018-11-02 16:48:31', '[vc_row][vc_column][vc_images_carousel images=\"19,21\" img_size=\"full\" autoplay=\"yes\" hide_pagination_control=\"yes\" hide_prev_next_buttons=\"yes\" wrap=\"yes\" css_animation=\"fadeInRight\" title=\"Widget\"][ult_countdown datetime=\"2018/11/30 23:31:29\" ult_tz=\"ult-usrtz\" countdown_opts=\"sday,shr,smin,ssec\" timer_bg_color=\"#ad78e2\"][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][vc_separator][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-02 16:48:31', '2018-11-02 16:48:31', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-11-02 16:49:39', '2018-11-02 16:49:39', '[vc_row][vc_column][vc_images_carousel images=\"19,21\" img_size=\"full\" autoplay=\"yes\" hide_pagination_control=\"yes\" hide_prev_next_buttons=\"yes\" wrap=\"yes\" css_animation=\"fadeInRight\" title=\"Widget\"][ult_countdown datetime=\"2018/11/30 23:31:29\" ult_tz=\"ult-usrtz\" countdown_opts=\"sday,shr,smin,ssec\" timer_bg_color=\"#ad78e2\"][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-02 16:49:39', '2018-11-02 16:49:39', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-11-03 01:47:40', '2018-11-03 01:47:40', '', 'uni_cpo_unit', '', 'trash', 'closed', 'closed', '', 'uni_cpo_unit__trashed', '', '', '2018-11-03 06:34:22', '2018-11-03 06:34:22', '', 0, 'http://localhost/seeds/uni-cpo-option/uni_cpo_unit/', 0, 'uni_cpo_option', '', 0),
(49, 1, '2018-11-03 02:11:39', '2018-11-03 02:11:39', '', 'uni_cpo_weight_unit', '', 'trash', 'closed', 'closed', '', 'uni_cpo_weight_unit__trashed', '', '', '2018-11-03 06:33:39', '2018-11-03 06:33:39', '', 0, 'http://localhost/seeds/uni-cpo-option/uni_cpo_weight_unit/', 0, 'uni_cpo_option', '', 0),
(50, 1, '2018-11-03 02:23:30', '2018-11-03 02:23:30', '', 'uni_cpo_weight_unit2', '', 'trash', 'closed', 'closed', '', 'uni_cpo_weight_unit2__trashed', '', '', '2018-11-03 06:33:46', '2018-11-03 06:33:46', '', 0, 'http://localhost/seeds/uni-cpo-option/uni_cpo_weight_unit2/', 0, 'uni_cpo_option', '', 0),
(51, 1, '2018-11-03 06:49:56', '2018-11-03 06:49:56', '', 'Cilantro, Calypso', '<p>You say cilantro; I say coriander. Whatever, Calypso makes the cut-again and again. Terrifically prolific, this new variety is slower to bolt than any other coriander available. Fragrant, citrusy herb sparks up salsa, guacamole, sauces and seafood. Perfect for your herb garden or mixed container.</p>', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2018-11-03 06:49:56', '2018-11-03 06:49:56', '', 20, 'http://localhost/seeds/20-autosave-v1/', 0, 'revision', '', 0),
(52, 1, '2018-11-03 07:23:13', '2018-11-03 07:23:13', '', 'Register', '', 'trash', 'closed', 'closed', '', 'register__trashed', '', '', '2018-11-05 06:57:02', '2018-11-05 06:57:02', '', 0, 'http://localhost/seeds/?page_id=52', 0, 'page', '', 0),
(53, 1, '2018-11-03 07:23:14', '2018-11-03 07:23:14', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2018-11-03 07:23:14', '2018-11-03 07:23:14', '', 0, 'http://localhost/seeds/53/', 8, 'nav_menu_item', '', 0),
(54, 1, '2018-11-03 07:23:13', '2018-11-03 07:23:13', '', 'Register', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-11-03 07:23:13', '2018-11-03 07:23:13', '', 52, 'http://localhost/seeds/52-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-11-03 07:50:26', '2018-11-03 07:50:26', '[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_images_carousel images=\"19,21\" img_size=\"full\" autoplay=\"yes\" hide_pagination_control=\"yes\" hide_prev_next_buttons=\"yes\" wrap=\"yes\" css_animation=\"fadeInRight\" title=\"Widget\"][ult_countdown datetime=\"2018/11/30 23:31:29\" ult_tz=\"ult-usrtz\" countdown_opts=\"sday,shr,smin,ssec\" timer_bg_color=\"#ad78e2\"][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-03 07:50:26', '2018-11-03 07:50:26', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-11-03 07:52:02', '2018-11-03 07:52:02', '', 'prod000460', '', 'inherit', 'open', 'closed', '', 'prod000460', '', '', '2018-11-03 07:52:02', '2018-11-03 07:52:02', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000460.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-11-03 08:22:12', '2018-11-03 08:22:12', '', 'Parsley, Single Italian', '<strong>Plain, flat, deeply cut dark green leaves with pronounced flavor.</strong>\r\n\r\nFull Description\r\n\r\nFlat-leaved variety used in salad dressings, poultry, soups and as an ingredient of pesto. Flavor is much more pronounced than that of the more familiar curled type.', 'publish', 'open', 'closed', '', 'parsley-single-italian', '', '', '2018-11-03 08:22:18', '2018-11-03 08:22:18', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2018-11-03 08:15:35', '2018-11-03 08:15:35', '', 'Parsley, Plain Organic', '<strong>Plain, flat, deeply cut dark green leaves with more pronounced flavor than Extra Curled Dwarf.</strong>\r\n\r\nFull Description\r\n\r\nFlat-leaved variety used in salad dressings, poultry, soups and as an ingredient of pesto. Flavor is much more pronounced than that of the more familiar curled type. Certified Organic Seed.\r\n\r\nGrowing description\r\n\r\nParsley may be grown from seed sown early indoors and transplanted outside after frost, directly sown, or planted as a potted plant.', 'publish', 'open', 'closed', '', 'parsley-plain-organic', '', '', '2018-11-03 08:15:43', '2018-11-03 08:15:43', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2018-11-03 08:14:25', '2018-11-03 08:14:25', '', 'prod000499', '', 'inherit', 'open', 'closed', '', 'prod000499', '', '', '2018-11-03 08:14:25', '2018-11-03 08:14:25', '', 59, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000499.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-11-03 08:17:30', '2018-11-03 08:17:30', '', 'Basil, San Remo', '<strong>Aromatic and flavorful, produces all summer into the cool days of fall.</strong>\r\n\r\nFull Description\r\n\r\nSan Remo will be a welcome addition to your herb garden. Aromatic and flavorful, with shiny dark green leaves, the 36\" tall plants produce prolifically through the summer right into the cool days of early fall. It\'s vigorous, disease resistant and tolerant of cool weather.', 'publish', 'open', 'closed', '', 'basil-san-remo', '', '', '2018-11-03 08:31:49', '2018-11-03 08:31:49', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=61', 0, 'product', '', 0),
(62, 1, '2018-11-03 08:17:09', '2018-11-03 08:17:09', '', 'prod000502', '', 'inherit', 'open', 'closed', '', 'prod000502', '', '', '2018-11-03 08:17:09', '2018-11-03 08:17:09', '', 61, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000502.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-11-03 08:19:09', '2018-11-03 08:19:09', '', 'Thyme, Common', '<strong>Aromatic leaves season meats, poultry, stews, sauces, soups and dressings.</strong>\r\n\r\nFull Description\r\n\r\nThyme is one of the most widely used culinary herbs. It is commonly grown as a decorative and functional plant in many home gardens, and bees use its pollen to make delectable honey. It is easy to grow and adaptable to most soils and climatic conditions and is perennial in USDA zone 4-8. Start early indoors.', 'publish', 'open', 'closed', '', 'thyme-common', '', '', '2018-11-03 08:19:22', '2018-11-03 08:19:22', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=63', 0, 'product', '', 0),
(64, 1, '2018-11-03 08:18:45', '2018-11-03 08:18:45', '', 'prod000487', '', 'inherit', 'open', 'closed', '', 'prod000487', '', '', '2018-11-03 08:18:45', '2018-11-03 08:18:45', '', 63, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000487.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-11-03 08:20:09', '2018-11-03 08:20:09', '[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"12\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"12\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-03 08:20:09', '2018-11-03 08:20:09', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-11-03 08:21:51', '2018-11-03 08:21:51', '', 'prod000482', '', 'inherit', 'open', 'closed', '', 'prod000482', '', '', '2018-11-03 08:21:51', '2018-11-03 08:21:51', '', 58, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000482.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-11-03 08:25:18', '2018-11-03 08:25:18', '', 'Parsley, Double Curled Organic', '<strong>Frost tolerant, compact plants with finely curled leaves. Certified Organic.</strong>\r\n\r\nFull Description\r\n\r\nParsley is great for garnishing and added flavor. The vigorous compact plants have dense dark green finely crumpled closely curled leaves and are frost tolerant. Certified Organic Seed.', 'publish', 'open', 'closed', '', 'parsley-double-curled-organic', '', '', '2018-11-03 08:25:24', '2018-11-03 08:25:24', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2018-11-03 08:24:53', '2018-11-03 08:24:53', '', 'prod000498', '', 'inherit', 'open', 'closed', '', 'prod000498', '', '', '2018-11-03 08:24:53', '2018-11-03 08:24:53', '', 67, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000498.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-11-03 08:26:58', '2018-11-03 08:26:58', '', 'Basil, Sweet', '<strong>This is the classic basil.</strong>\r\n\r\nFull Description\r\n\r\nSweet basil is ideal for tomato sauces, pesto and salads. Start early indoors or outdoors after danger of frost.', 'publish', 'open', 'closed', '', 'basil-sweet', '', '', '2018-11-03 08:27:09', '2018-11-03 08:27:09', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2018-11-03 08:26:26', '2018-11-03 08:26:26', '', 'prod000460', '', 'inherit', 'open', 'closed', '', 'prod000460-2', '', '', '2018-11-03 08:26:26', '2018-11-03 08:26:26', '', 69, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000460-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-11-03 08:28:09', '2018-11-03 08:28:09', '', 'Basil, Genovese Organic', '<strong>Best basil for Italian pesto. Certified Organic.</strong>\r\n\r\nFull Description\r\n\r\nThis Italian variety has extremely tender, fragrant, extra-large, dark green leaves and is superb for pesto. Start early indoors or outside after all danger of frost. We searched the world to find the best organic seed-Burpee fully guarantees that not a drop of synthetic chemicals was used to make these excellent seeds. Certified Organic Seed.', 'publish', 'open', 'closed', '', 'basil-genovese-organic', '', '', '2018-11-03 08:28:17', '2018-11-03 08:28:17', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2018-11-03 08:27:45', '2018-11-03 08:27:45', '', 'prod000489', '', 'inherit', 'open', 'closed', '', 'prod000489', '', '', '2018-11-03 08:27:45', '2018-11-03 08:27:45', '', 71, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000489.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-11-03 08:29:16', '2018-11-03 08:29:16', '', 'Dill, Fernleaf', '<strong>All-America Selections winner.</strong>\r\n\r\nFull Description\r\n\r\nBranching from the base, these dwarf plants have ornamental ferny leaves and are ideal for containers. Likes full sun. Start seed indoors early or sow directly in the ground after all danger of frost.', 'publish', 'open', 'closed', '', 'dill-fernleaf', '', '', '2018-11-03 08:29:23', '2018-11-03 08:29:23', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2018-11-03 08:28:49', '2018-11-03 08:28:49', '', 'prod000471', '', 'inherit', 'open', 'closed', '', 'prod000471', '', '', '2018-11-03 08:28:49', '2018-11-03 08:28:49', '', 73, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000471.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-11-03 08:30:31', '2018-11-03 08:30:31', '', 'Basil, Summerlong', '<strong>Breakthrough French basil is tasty, prolific and unstoppable, producing all summer long.</strong>\r\n\r\nFull Description\r\n\r\nVery compact, tight bushes, slow to bolt, densely covered with shiny, bright green leaves. Great for pots and ornamental edging in vegetable beds.', 'publish', 'open', 'closed', '', 'basil-summerlong', '', '', '2018-11-03 08:30:40', '2018-11-03 08:30:40', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2018-11-03 08:30:09', '2018-11-03 08:30:09', '', 'prod000501', '', 'inherit', 'open', 'closed', '', 'prod000501', '', '', '2018-11-03 08:30:09', '2018-11-03 08:30:09', '', 75, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000501.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-11-03 08:34:15', '2018-11-03 08:34:15', '', '1920x1200-1174691-vegetables', '', 'inherit', 'open', 'closed', '', '1920x1200-1174691-vegetables', '', '', '2018-11-03 08:34:15', '2018-11-03 08:34:15', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/1920x1200-1174691-vegetables.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-11-03 08:36:00', '2018-11-03 08:36:00', '', 'FreeGreatPicture.com-2848-high-definition-material-strawberry', '', 'inherit', 'open', 'closed', '', 'freegreatpicture-com-2848-high-definition-material-strawberry', '', '', '2018-11-03 08:36:00', '2018-11-03 08:36:00', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/FreeGreatPicture.com-2848-high-definition-material-strawberry.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-11-03 08:36:38', '2018-11-03 08:36:38', '', 'veeterzy-82538-unsplash', '', 'inherit', 'open', 'closed', '', 'veeterzy-82538-unsplash', '', '', '2018-11-03 08:36:38', '2018-11-03 08:36:38', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/veeterzy-82538-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-11-03 09:02:15', '2018-11-03 09:02:15', '', 'Sunflower, Fantasia Mix Hybrid', 'Your garden will come alive in a forest of spectacular color this summer! Plants range from 3-8 ft. tall and produce enough blooms to electrify the garden and to add dazzle to fresh arrangements. Aptly named, Fantasia produces flowers in an array of colors and sizes that range from 3 to 8\" across. Best of all, plants are pollen free, so they won\'t stain linens, furniture or your favorite gardening shirt. Start this annual outdoors after all chance of frost.', 'publish', 'open', 'closed', '', 'sunflower-fantasia-mix-hybrid', '', '', '2018-11-03 09:02:21', '2018-11-03 09:02:21', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2018-11-03 08:59:51', '2018-11-03 08:59:51', '', 'prod000389', '', 'inherit', 'open', 'closed', '', 'prod000389', '', '', '2018-11-03 08:59:51', '2018-11-03 08:59:51', '', 80, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000389.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-11-03 09:06:59', '2018-11-03 09:06:59', '', 'Dahlia, Showtime', '<p class=\"b-product_short_description\"><strong>Lively blooms burst with color like fireworks on the 4th of July.</strong></p>\r\n\r\n<div class=\"b-product_description\">Bright 3\" blossoms boast an outer ring of outrageous orange with a center starburst of canary ray petals. A super easy and floriferous choice for bold drama in the garden bed or as the punch of color in a mixed container.</div>', 'publish', 'open', 'closed', '', 'dahlia-showtime', '', '', '2018-11-03 09:08:20', '2018-11-03 09:08:20', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2018-11-03 09:08:10', '2018-11-03 09:08:10', '', 'prod000192', '', 'inherit', 'open', 'closed', '', 'prod000192', '', '', '2018-11-03 09:08:10', '2018-11-03 09:08:10', '', 82, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000192.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-11-03 09:10:34', '2018-11-03 09:10:34', '', 'Nemophila, Baby Blue Eyes', '<p class=\"b-product_short_description\"><strong>American wildflower is perfect in beds and containers or as an annual groundcover.</strong></p>\r\n\r\n<div class=\"b-product_description\">This versatile native American wildflower (also known as California Blue Bells) is perfect in beds and containers or as an annual groundcover. Growing only 6\" tall with a spread to 12\", nemophila often overwinters in mild climates (zone 7 and above), where it blooms in early spring. Farther north, it flowers from early to midsummer. Grows best in partial shade. Must be kept moist if grown in full sun.</div>', 'publish', 'open', 'closed', '', 'nemophila-baby-blue-eyes', '', '', '2018-11-03 09:11:57', '2018-11-03 09:11:57', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2018-11-03 09:10:16', '2018-11-03 09:10:16', '', 'prod000298', '', 'inherit', 'open', 'closed', '', 'prod000298', '', '', '2018-11-03 09:10:16', '2018-11-03 09:10:16', '', 84, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000298.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-11-03 09:15:45', '2018-11-03 09:15:45', '', 'Balsam, Mix', '<p class=\"b-product_short_description\"><strong>A favorite old-fashioned flower by 1900.</strong></p>\r\n\r\n<div class=\"b-product_description\">HEIRLOOM. While today\'s impatiens, a shade-loving hybrid of African species, was virtually unknown in gardens until after World War II, balsam, which is native to Southeast Asia, was a well-known favorite by 1900. Balsam grows well in both sun and shade, and we recommend areas with some protection from afternoon sun. It sprouts in only 4-5 days and flowers early, growing to be 12-24\" tall. The narrow plants hold their blooms close to the central stem. Victorian gardeners removed some leaves to better display the 2\" across, perfection pink, camellia-like blossoms.</div>', 'publish', 'open', 'closed', '', 'balsam-mix', '', '', '2018-11-03 09:15:54', '2018-11-03 09:15:54', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2018-11-03 09:15:39', '2018-11-03 09:15:39', '', 'prod000129', '', 'inherit', 'open', 'closed', '', 'prod000129', '', '', '2018-11-03 09:15:39', '2018-11-03 09:15:39', '', 87, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000129.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-11-03 09:19:53', '2018-11-03 09:19:53', '', 'Coleus, Olive Mosaic', '<p class=\"b-product_short_description\"><strong>Enchanting, multicolored leaves create a tropical spectacle in the shade.</strong></p>\r\n\r\n<div class=\"b-product_description\">Coleus is a foliage plant par excellence, a favorite of discerning gardeners since Victorian times. ‘Olive Mosaic’s enchanting, multicolored oblate leaves, with their hand-painted look, create a tropical spectacle in the shade from spring until late summer. Produce low-key show of blue-to white nettle-like flowers in late summer. Well-branched, vigorous, upright 18-26” tall plants will tolerate sun in hot, humid summers. Shade and sun.</div>', 'publish', 'open', 'closed', '', 'coleus-olive-mosaic', '', '', '2018-11-03 09:19:57', '2018-11-03 09:19:57', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2018-11-03 09:19:45', '2018-11-03 09:19:45', '', 'prod003479', '', 'inherit', 'open', 'closed', '', 'prod003479', '', '', '2018-11-03 09:19:45', '2018-11-03 09:19:45', '', 89, 'http://localhost/seeds/wp-content/uploads/2018/11/prod003479.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-11-03 09:22:19', '2018-11-03 09:22:19', '', 'Flowering Kale, Song Bird Red', '<p class=\"b-product_short_description\"><strong>Great plant for fall and winter gardens. Bright red double crowns with lush green leaves.</strong></p>\r\n\r\n<div class=\"b-product_description\">Flowering Kale Song Bird Red is as exotic as nightingale in the middle of the winter. Bright red leaves will bring color to your garden in the middle of the winter with lush green leaves that stay green in the darkest months of the year. Very cheerful plants deliver great effect when they are partnered with pansies for festive confetti effect in front of the house.</div>', 'publish', 'open', 'closed', '', 'flowering-kale-song-bird-red', '', '', '2018-11-03 09:22:24', '2018-11-03 09:22:24', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2018-11-03 09:22:08', '2018-11-03 09:22:08', '', 'prod002429', '', 'inherit', 'open', 'closed', '', 'prod002429', '', '', '2018-11-03 09:22:08', '2018-11-03 09:22:08', '', 91, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002429.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-11-03 09:23:52', '2018-11-03 09:23:52', '', 'Sweet Pea, Incense Peach Shades', '<p class=\"b-product_short_description\"><strong>Pastel flowers on strong stems are ideal for cutting.</strong></p>\r\n\r\n<div class=\"b-product_description\">Delicate shades of highly fragrant, large wavy blooms in pastel pink to blush creamy-white. Long, strong stems are ideal for cutting. Soft pastel flowers are blushed cream, with the standard and wing petals brushed and banded deep pink. Adds soft colors to contrast more vivid hues of sweet peas and other climbers. Accents for trellises, fences and other living walls. Shield from direct hot sun.</div>', 'publish', 'open', 'closed', '', 'sweet-pea-incense-peach-shades', '', '', '2018-11-03 09:23:56', '2018-11-03 09:23:56', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2018-11-03 09:23:47', '2018-11-03 09:23:47', '', 'prod099810', '', 'inherit', 'open', 'closed', '', 'prod099810', '', '', '2018-11-03 09:23:47', '2018-11-03 09:23:47', '', 93, 'http://localhost/seeds/wp-content/uploads/2018/11/prod099810.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2018-11-03 09:25:40', '2018-11-03 09:25:40', '', 'Statice, Mixed Bold Colors', '<p class=\"b-product_short_description\"><strong>Dense sprays of small, papery blooms on stiff stems.</strong></p>\r\n\r\n<div class=\"b-product_description\">Statice Bold Colors mix with its blend of white, yellow, rose, blue and lavender blossoms is ideal for fresh bouquets, and once dried, the flowers last for months. Proven tops for performance and adaptability in the garden, easy to grow and attracts butterflies.</div>', 'publish', 'open', 'closed', '', 'statice-mixed-bold-colors', '', '', '2018-11-03 09:25:55', '2018-11-03 09:25:55', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2018-11-03 09:25:25', '2018-11-03 09:25:25', '', 'prod000374', '', 'inherit', 'open', 'closed', '', 'prod000374', '', '', '2018-11-03 09:25:25', '2018-11-03 09:25:25', '', 95, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000374.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-11-03 09:27:26', '2018-11-03 09:27:26', '', 'Thunbergia alata Mix', '<p class=\"b-product_short_description\"><strong>Black-eyed susan vine.</strong></p>\r\n\r\n<div class=\"b-product_description\">Slender, trailing black-eyed susan vines with dark, finely etched eyes peeking out of star-shaped 1\" blooms in shades of orange, yellow and white. Hundreds of 1 1/2\" blooms. Naturally vining, perfect for hanging baskets, trellis or arbor.</div>', 'publish', 'open', 'closed', '', 'thunbergia-alata-mix', '', '', '2018-11-03 09:27:32', '2018-11-03 09:27:32', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2018-11-03 09:27:22', '2018-11-03 09:27:22', '', 'prod000410', '', 'inherit', 'open', 'closed', '', 'prod000410', '', '', '2018-11-03 09:27:22', '2018-11-03 09:27:22', '', 97, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000410.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-11-03 09:28:53', '0000-00-00 00:00:00', '', 'Fruit', '<p><br data-mce-bogus=\"1\"></p>', 'draft', 'open', 'closed', '', '', '', '', '2018-11-03 09:28:53', '2018-11-03 09:28:53', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=99', 0, 'product', '', 0),
(101, 1, '2018-11-03 09:31:26', '2018-11-03 09:31:26', '', 'Blackberry, Polar Berry', '<p class=\"b-product_short_description\"><strong>Perfect for fresh eating right off the canes and great for entertaining when mixed with black fruits.</strong></p>\r\n\r\n<div class=\"b-product_description\">Time for something completely different: this is the only white blackberry on the market! Unique creamy white berries have a classic wild blackberry flavor with just a hint of citrus. Perfect for fresh eating right off the canes as well as jams, preserves and baking. Great for entertaining when mixed with black fruits. U.S. Plant Patent #20,234.</div>', 'publish', 'open', 'closed', '', 'blackberry-polar-berry', '', '', '2018-11-03 09:31:35', '2018-11-03 09:31:35', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2018-11-03 09:31:18', '2018-11-03 09:31:18', '', 'prod500340', '', 'inherit', 'open', 'closed', '', 'prod500340', '', '', '2018-11-03 09:31:18', '2018-11-03 09:31:18', '', 101, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500340.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2018-11-03 09:33:54', '2018-11-03 09:33:54', '', 'Blueberry, Mini Blues', '<p class=\"b-product_short_description\"><strong>Irresistible mini blueberries with unforgettable gourmet flavor for gardeners and chefs who like to bake.</strong></p>\r\n\r\n<div class=\"b-product_description\">Vigorous, upright bush yields a huge harvest of very small, very sweet, delicious blueberries. New northern highbush loads up with sweet petite berries with unbeatable flavor—perfect for muffins, scones and sorbets. Provides a delightful edible landscape attraction: the bush’s dense, smooth foliage shimmering with multitudes of small, vibrantly blue berries. USDA bred in collaboration with Oregon State University, plants have even survived winters in Michigan with minimal injury. U.S. Plant Patent #28,233.</div>', 'publish', 'open', 'closed', '', 'blueberry-mini-blues', '', '', '2018-11-03 09:33:58', '2018-11-03 09:33:58', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2018-11-03 09:33:40', '2018-11-03 09:33:40', '', 'prod500348', '', 'inherit', 'open', 'closed', '', 'prod500348', '', '', '2018-11-03 09:33:40', '2018-11-03 09:33:40', '', 103, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500348.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-11-03 09:36:07', '2018-11-03 09:36:07', '', 'Strawberry, Eversweet', '<p class=\"b-product_short_description\"><strong>Especially tasty, bright-red cone-shaped berries can tolerate temperatures over 100 degrees.</strong></p>\r\n\r\n<div class=\"b-product_description\">Specially bred for the southeastern US, ‘Eversweet’ yields continuous harvests of large, sweet strawberries throughout spring, summer and fall. Especially tasty, bright-red cone-shaped berries can be enjoyed fresh or frozen.  Well-adapted, disease-resistant plants tolerate temperatures over 100 degrees with undiminished fruit flavor and quality.</div>', 'publish', 'open', 'closed', '', 'strawberry-eversweet', '', '', '2018-11-03 09:36:14', '2018-11-03 09:36:14', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2018-11-03 09:36:00', '2018-11-03 09:36:00', '', 'prod500406', '', 'inherit', 'open', 'closed', '', 'prod500406', '', '', '2018-11-03 09:36:00', '2018-11-03 09:36:00', '', 106, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500406.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-11-03 09:37:15', '2018-11-03 09:37:15', '', 'Blackberry, Columbia Giant', '<p class=\"b-product_short_description\"><strong>Abundance of incredibly large blackberries bursting with sweet juicy flavor!</strong></p>\r\n\r\n<div class=\"b-product_description\">Sometimes more is more. These are the big boys! Incredibly large blackberries bursting with sweet, juicy flavor! Pick fresh from the garden for salads, smoothies, cobblers and jams, or serve with cheeses at summer picnics. Bred by the USDA in cooperation with Oregon State University, ‘Columbia Giant’ plants are happily thornless blackberries, and extremely high-yielding too! U.S. Plant Patent #28,369.</div>', 'publish', 'open', 'closed', '', 'blackberry-columbia-giant', '', '', '2018-11-03 09:37:22', '2018-11-03 09:37:22', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2018-11-03 09:37:00', '2018-11-03 09:37:00', '', 'prod500434', '', 'inherit', 'open', 'closed', '', 'prod500434', '', '', '2018-11-03 09:37:00', '2018-11-03 09:37:00', '', 108, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500434.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-11-03 09:38:24', '2018-11-03 09:38:24', '', 'Hops, Brewer’s Gold', '<p class=\"b-product_short_description\"><strong>Long popular bittering agent infuses flavor and aroma with spice and blackcurrant notes.</strong></p>\r\n\r\n<div class=\"b-product_description\">Bittering late-addition hops, a classic ingredient of modern brewing, derives from a wild hops originally sourced in Manitoba, Canada. Planted in a sunny location, high-yielding, fast-growing vines add 20\' in a year. With late summer fragrant white flowers and deep-green lobed leaves, vines make for an attractive ornamental screen; can be trained on a trellis.</div>', 'publish', 'open', 'closed', '', 'hops-brewers-gold', '', '', '2018-11-03 09:38:30', '2018-11-03 09:38:30', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=110', 0, 'product', '', 0),
(111, 1, '2018-11-03 09:38:17', '2018-11-03 09:38:17', '', 'prod500442', '', 'inherit', 'open', 'closed', '', 'prod500442', '', '', '2018-11-03 09:38:17', '2018-11-03 09:38:17', '', 110, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500442.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-11-03 09:39:23', '2018-11-03 09:39:23', '', 'Watermelon, Bush Sugar Baby', '<p class=\"b-product_short_description\"><strong>Sweet, scarlet (icebox) watermelons grow on space-saving vines</strong></p>\r\n\r\n<div class=\"b-product_description\">A delicious, sweet must for small, sunny gardens. Each plant bears two 12 lb. melons. Burpee bred. After all danger of frost, sow 5 or 6 seeds in groups 6-8\' apart .</div>', 'publish', 'open', 'closed', '', 'watermelon-bush-sugar-baby', '', '', '2018-11-03 09:39:28', '2018-11-03 09:39:28', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=112', 0, 'product', '', 0),
(113, 1, '2018-11-03 09:39:17', '2018-11-03 09:39:17', '', 'prod000553', '', 'inherit', 'open', 'closed', '', 'prod000553', '', '', '2018-11-03 09:39:17', '2018-11-03 09:39:17', '', 112, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000553.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2018-11-03 09:40:30', '2018-11-03 09:40:30', '', 'Honeydew, Dolce Nectar Hybrid', '<p class=\"b-product_short_description\"><strong>Gorgeous pale-green flesh is utterly smooth and succulent.</strong></p>\r\n\r\n<div class=\"b-product_description\">90 days. How dew you describe the magic of Honeydew? The flavor—lighter, brighter and more nuanced than cantaloupe—alights on the tongue like sunshine. Melon’s gorgeous pale-green flesh is utterly smooth and succulent—swathed in a halo of blithe fragrance. Is there anything tastier than honeydew in counterpoint with finely sliced prosciutto? Dark-green vines produce five hefty 5-6 lb. fruits, loaded with vitamins C and B6, folate and potassium.</div>', 'publish', 'open', 'closed', '', 'honeydew-dolce-nectar-hybrid', '', '', '2018-11-03 09:40:36', '2018-11-03 09:40:36', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=114', 0, 'product', '', 0),
(115, 1, '2018-11-03 09:40:05', '2018-11-03 09:40:05', '', 'prod003510', '', 'inherit', 'open', 'closed', '', 'prod003510', '', '', '2018-11-03 09:40:05', '2018-11-03 09:40:05', '', 114, 'http://localhost/seeds/wp-content/uploads/2018/11/prod003510.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-11-03 09:42:41', '2018-11-03 09:42:41', '', 'Raspberry, Double Gold', '<p class=\"b-product_short_description\"><strong>Excellent, delightfully intense flavor and unusual color.</strong></p>\r\n\r\n<div class=\"b-product_description\">These berries are a visual treat; deeply blushed, golden champagne and distinctively cone shape. Plants are very productive and give two harvests in one season (hence the \"double\" in its name) with fruit produced the first fall and a second crop produced on the same canes the following summer. The excellent flavor, unusual color and pleasing conical shape make Double Gold a jewel in your garden. U.S. Plant Patent #24,811.</div>', 'publish', 'open', 'closed', '', 'raspberry-double-gold', '', '', '2018-11-03 09:42:46', '2018-11-03 09:42:46', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2018-11-03 09:42:35', '2018-11-03 09:42:35', '', 'prod003055', '', 'inherit', 'open', 'closed', '', 'prod003055', '', '', '2018-11-03 09:42:35', '2018-11-03 09:42:35', '', 116, 'http://localhost/seeds/wp-content/uploads/2018/11/prod003055.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-11-03 09:43:39', '2018-11-03 09:43:39', '', 'Melon, Honeydew Orange Flesh Organic', '<p class=\"b-product_short_description\"><strong>Deliciously sweet honeydew with orange flesh.</strong></p>\r\n\r\n<div class=\"b-product_description\">A very tasty melon—sweet and refreshing— with gorgeous orange flesh with flavor between honeydew and crenshaw. Eat alone or add to fruit salads or tropical drinks. Large 6½ by 6\" light green melons weigh about 5 lb.</div>', 'publish', 'open', 'closed', '', 'melon-honeydew-orange-flesh-organic', '', '', '2018-11-03 09:43:43', '2018-11-03 09:43:43', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2018-11-03 09:43:33', '2018-11-03 09:43:33', '', 'prod002119', '', 'inherit', 'open', 'closed', '', 'prod002119', '', '', '2018-11-03 09:43:33', '2018-11-03 09:43:33', '', 118, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002119.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2018-11-03 09:44:39', '2018-11-03 09:44:39', '', 'Watermelon, Orange Crisp Hybrid', '<p class=\"b-product_short_description\"><strong>Sweet and seedless orange flesh.</strong></p>\r\n\r\n<div class=\"b-product_description\">You\'ll love the brilliant orange flesh. It\'s sweet, crisp and seedless! The round fruits with dark green rinds make fun \"living\" fruit bowls. Mix in red for a bright and refreshing summer treat.</div>\r\n<div class=\"b-product_set_items \">\r\n<div class=\"b-product_set_items-headings\"></div>\r\n</div>', 'publish', 'open', 'closed', '', 'watermelon-orange-crisp-hybrid', '', '', '2018-11-03 09:44:47', '2018-11-03 09:44:47', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2018-11-03 09:44:32', '2018-11-03 09:44:32', '', 'prod002768', '', 'inherit', 'open', 'closed', '', 'prod002768', '', '', '2018-11-03 09:44:32', '2018-11-03 09:44:32', '', 120, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002768.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2018-11-03 09:50:36', '2018-11-03 09:50:36', '', 'Garden Tools - Planter', '<p class=\"b-product_short_description\"><strong>Slender-shaped shovel is versatile for many uses in the garden.</strong></p>\r\n\r\n<div class=\"b-product_description\">The Planter features a slender-shaped shovel for multiple planting uses. Solid stainless steel construction with ash wood handle and leather hang strap is balanced to reduce the effort and stress of planting. The Planter is part of a line of high-quality, long-lasting tools.</div>', 'publish', 'open', 'closed', '', 'garden-tools-planter', '', '', '2018-11-03 09:50:51', '2018-11-03 09:50:51', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=123', 0, 'product', '', 0),
(124, 1, '2018-11-03 09:49:52', '2018-11-03 09:49:52', '', 'prod001262', '', 'inherit', 'open', 'closed', '', 'prod001262', '', '', '2018-11-03 09:49:52', '2018-11-03 09:49:52', '', 123, 'http://localhost/seeds/wp-content/uploads/2018/11/prod001262.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-11-03 09:53:31', '2018-11-03 09:53:31', '', 'Unique Black Walnut Hand Forged Tools', '<p class=\"b-product_short_description\"><strong>A timeless gift for discerning gardeners!</strong></p>\r\n\r\n<div class=\"b-product_description\">Handcrafted in Bozeman, Montana by traditional blacksmith Tuli Fisher, these garden tools are an example of fine American Craft. Steel is heated to a red glow in the forge and then shaped over the anvil with a hammer. All joinery is done using solid steel rivets. Hand-forged steel set into a black walnut handle makes these tools the ideal gift for the discriminating gardener, wedding couple, or anyone (that includes you!) who has an eye for high-quality traditional crafts and a passion for gardening.</div>', 'publish', 'open', 'closed', '', 'unique-black-walnut-hand-forged-tools', '', '', '2018-11-03 09:53:36', '2018-11-03 09:53:36', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2018-11-03 09:53:05', '2018-11-03 09:53:05', '', 'prod500153', '', 'inherit', 'open', 'closed', '', 'prod500153', '', '', '2018-11-03 09:53:05', '2018-11-03 09:53:05', '', 126, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500153.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-11-03 09:55:45', '2018-11-03 09:55:45', '', 'Watering Can Loop', '<p class=\"b-product_short_description\"><strong>Ergonomic watering can reach any spot with comfort and ease</strong></p>\r\n\r\n<div class=\"b-product_description\">The sweeping handle with the pronounced arch puts a real swing into its silhouette. Thanks to this dynamic shape, reaching all the plants on the window sill is no problem, even at the very back. It makes almost no difference where one holds the big handle; the Loop is easy to manage. This new watering can is also easy to fill: it has a particularly large opening into which water can pour without risk of spillage. Holds 1.5 quarts.</div>', 'publish', 'open', 'closed', '', 'watering-can-loop', '', '', '2018-11-03 09:55:49', '2018-11-03 09:55:49', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2018-11-03 09:54:53', '2018-11-03 09:54:53', '', 'prod099793', '', 'inherit', 'open', 'closed', '', 'prod099793', '', '', '2018-11-03 09:54:53', '2018-11-03 09:54:53', '', 128, 'http://localhost/seeds/wp-content/uploads/2018/11/prod099793.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2018-11-03 09:57:52', '2018-11-03 09:57:52', '', 'Wild Bird Seed Wreath, Sunflower', '<p class=\"b-product_short_description\"><strong>The decorative and charming wreath is made from seed to feed your feathered friends.</strong></p>\r\n\r\n<div class=\"b-product_description\">The Sunflower Seed Wreath is a perfect edible wild bird treat. This detailed sunflower is made up of sunflower heart and sunflower black oil seeds. Size: 9.75\" x 9.75\" x 3.25\". Weight: 3 lb.</div>', 'publish', 'open', 'closed', '', 'wild-bird-seed-wreath-sunflower', '', '', '2018-11-03 09:57:58', '2018-11-03 09:57:58', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=130', 0, 'product', '', 0),
(131, 1, '2018-11-03 09:57:35', '2018-11-03 09:57:35', '', 'prod002554', '', 'inherit', 'open', 'closed', '', 'prod002554', '', '', '2018-11-03 09:57:35', '2018-11-03 09:57:35', '', 130, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002554.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-11-03 09:59:23', '2018-11-03 09:59:23', '', 'Garden Tools - Fork', '<p class=\"b-product_short_description\"><strong>A garden fork designed for strength and comfort.</strong></p>\r\n\r\n<div class=\"b-product_description\">This garden fork is balanced to reduce the effort and stress of planting. The solid stainless steel construction, ash wood handle, and leather hang strap make it durable and ideal for long-term use. The fork is part of a line of high-quality, long-lasting tools.</div>', 'publish', 'open', 'closed', '', 'garden-tools-fork', '', '', '2018-11-03 09:59:31', '2018-11-03 09:59:31', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=132', 0, 'product', '', 0),
(133, 1, '2018-11-03 09:59:16', '2018-11-03 09:59:16', '', 'prod001261', '', 'inherit', 'open', 'closed', '', 'prod001261', '', '', '2018-11-03 09:59:16', '2018-11-03 09:59:16', '', 132, 'http://localhost/seeds/wp-content/uploads/2018/11/prod001261.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-11-03 10:01:35', '2018-11-03 10:01:35', '', 'Ergonomic 7 Pattern Hand Sprayer', '<p class=\"b-product_short_description\"><strong>Quench your plants\' thirst with the easy to control hand sprayer.</strong></p>\r\n\r\n<div class=\"b-product_description\">The Ergonomic Flow Control 7 pattern hand sprayer makes it easier to control the flow for watering your thirsty plants. Flow-Control handle eliminates the need for the old style \"trigger\" mechanism. All the way on, all the way off, and everything in between with only the thumb. It\'s smart watering with the latest designs.</div>', 'publish', 'open', 'closed', '', 'ergonomic-7-pattern-hand-sprayer', '', '', '2018-11-03 10:01:42', '2018-11-03 10:01:42', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=134', 0, 'product', '', 0),
(135, 1, '2018-11-03 10:01:22', '2018-11-03 10:01:22', '', 'prod002527', '', 'inherit', 'open', 'closed', '', 'prod002527', '', '', '2018-11-03 10:01:22', '2018-11-03 10:01:22', '', 134, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002527.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-11-03 10:03:44', '2018-11-03 10:03:44', '', 'Garden Tool - Spade', '<p class=\"b-product_short_description\"><strong>Spear Head Spade makes your toughest tasks easier.</strong></p>\r\n\r\n<div class=\"b-product_description\">Trouble digging in rocky or dense clay soils? Difficulty transplanting or separating highly rooted and fibrous plants? Want to use less effort to do what must be done? With these spades, your toughest tasks are as much as 80% easier than with regular shovels. The blades are made of high carbon manganese steel that is thicker and harder than normal shovels, hold their edge well and are powder coated with an epoxy resin for durability and ease of cleaning. The reinforced fiberglass handles are among the lightest and strongest shovels available and are weather resistant and non-conductive.</div>', 'publish', 'open', 'closed', '', 'garden-tool-spade', '', '', '2018-11-03 10:03:50', '2018-11-03 10:03:50', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=136', 0, 'product', '', 0),
(137, 1, '2018-11-03 10:03:28', '2018-11-03 10:03:28', '', 'prod002526', '', 'inherit', 'open', 'closed', '', 'prod002526', '', '', '2018-11-03 10:03:28', '2018-11-03 10:03:28', '', 136, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002526.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-11-03 10:05:45', '2018-11-03 10:05:45', '', 'XL Pro Series Cage - Red', '<p class=\"b-product_short_description\"><strong>Our tallest and widest cages for managing the biggest tomato plants.</strong></p>\r\n\r\n<div class=\"b-product_description\">Give your tomato plants room to grow. These taller and wider tomato cages allow easy access for picking. Cages are 18\" square by 58\" high, providing 150% more growing space. Now available in red or green. Three extenders measure 18\" x 18\" x 24\" tall.</div>', 'publish', 'open', 'closed', '', 'xl-pro-series-cage-red', '', '', '2018-11-03 10:05:52', '2018-11-03 10:05:52', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=138', 0, 'product', '', 1),
(139, 1, '2018-11-03 10:05:37', '2018-11-03 10:05:37', '', 'prod002384', '', 'inherit', 'open', 'closed', '', 'prod002384', '', '', '2018-11-03 10:05:37', '2018-11-03 10:05:37', '', 138, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002384.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-11-03 10:08:13', '2018-11-03 10:08:13', '', 'Gloves Ladies Floral Infusion', '<p class=\"b-product_short_description\">T<strong>ough gloves against burrs, stickers, and barbs.</strong></p>\r\n\r\n<div class=\"b-product_description\">Ladies Botanical Collection Gardening Gloves offers the Floral Infusion design that protects your hands in the garden. Known for their toughness, these gloves have reinforced fingertips and a nitrile coating with a spandex liner, and they\'re latex free. One size fits all.</div>', 'publish', 'open', 'closed', '', 'gloves-ladies-floral-infusion', '', '', '2018-11-03 10:08:18', '2018-11-03 10:08:18', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2018-11-03 10:08:05', '2018-11-03 10:08:05', '', 'prod002510', '', 'inherit', 'open', 'closed', '', 'prod002510', '', '', '2018-11-03 10:08:05', '2018-11-03 10:08:05', '', 140, 'http://localhost/seeds/wp-content/uploads/2018/11/prod002510.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-11-03 10:13:27', '2018-11-03 10:13:27', '', 'Asparagus, Mary Washington', '<p class=\"b-product_short_description\"><strong>HEIRLOOM. Light cuttings in 2 years; regular cuttings thereafter.</strong></p>\r\n\r\n<div class=\"b-product_description\">Asparagus is a perennial vegetable, so you just plant them once and enjoy season after season of succulent spears. Seeds can be started indoors in spring for transplanting out around last frost. Bare roots can be planted as soon as they arrive in spring. Rooted plants are great for fall and should be planted 4-6 weeks before first fall frost. In 2 years, you\'ll have a light crop and a regular crop thereafter. Long after harvest, the graceful, feathery green foliage is still attractive. Zones 3-8.</div>', 'publish', 'open', 'closed', '', 'asparagus-mary-washington', '', '', '2018-11-03 10:13:32', '2018-11-03 10:13:32', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=142', 0, 'product', '', 0),
(143, 1, '2018-11-03 10:13:20', '2018-11-03 10:13:20', '', 'prod000569', '', 'inherit', 'open', 'closed', '', 'prod000569', '', '', '2018-11-03 10:13:20', '2018-11-03 10:13:20', '', 142, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000569.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2018-11-03 10:18:26', '2018-11-03 10:18:26', '', 'Mesclun, Green Party Mix', '<p class=\"b-product_short_description\"><strong>The sweetest and tangiest greens in our garden in a wide spectrum of tastes, textures </strong>and<strong> colors.</strong></p>\r\n\r\n<div class=\"b-product_description\">We put it together-a connoisseur\'s collection of flavorful lettuces (Paris White Cos, Royal Oak Leaf, Ruby, Red Salad Bowl and Green Ice). The sweetest and tangiest greens in a wide spectrum of tastes, textures and colors. This summer-long gourmet blend of lettuces plus savory endive, tangy arugula, sparky radicchio and chervil will inspire you with fresh ideas for summer salads.</div>', 'publish', 'open', 'closed', '', 'mesclun-green-party-mix', '', '', '2018-11-03 10:18:34', '2018-11-03 10:18:34', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=144', 0, 'product', '', 0),
(145, 1, '2018-11-03 10:18:18', '2018-11-03 10:18:18', '', 'prod000760', '', 'inherit', 'open', 'closed', '', 'prod000760', '', '', '2018-11-03 10:18:18', '2018-11-03 10:18:18', '', 144, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000760.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-11-03 10:20:04', '2018-11-03 10:20:04', '', 'Tomato, Bush Early Girl Hybrid', '<p class=\"b-product_short_description\"><strong>Extra-large, extra-early tomatoes grow on a true bush.</strong></p>\r\n\r\n<div class=\"b-product_description\">The earlier, the better. These extra-large, extra-early tomatoes grow on a true bush. The 4\" across tasty red fruits are much bigger than Early Girl and ripen just 2 days later. The 18\" plants are amazingly compact and self-supporting, yet productive. Multiple disease resistances.</div>', 'publish', 'open', 'closed', '', 'tomato-bush-early-girl-hybrid', '', '', '2018-11-03 10:21:38', '2018-11-03 10:21:38', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=146', 0, 'product', '', 0),
(147, 1, '2018-11-03 10:21:25', '2018-11-03 10:21:25', '', 'prod000981', '', 'inherit', 'open', 'closed', '', 'prod000981', '', '', '2018-11-03 10:21:25', '2018-11-03 10:21:25', '', 146, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000981.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-11-03 10:23:37', '2018-11-03 10:23:37', '', 'Pepper, Hot Jalapeno, Ring Leader Hybrid', '<p class=\"b-product_short_description\"><strong>New prolific leader for pickled rings in Southwest recipes, salads, and tacos.</strong></p>\r\n\r\n<div class=\"b-product_description\">Early ripening, this prolific new pepper runs rings around other jalapeños! Let ‘Ring Leader’ be your summer-long source for tasty jalapeño rings in Southwest recipes and salads, and on burgers and tacos. Fantastic stuffed or pickled too. Disease-resistant plants yield early and heavy harvests of 4\" peppers from early to late season.</div>', 'publish', 'open', 'closed', '', 'pepper-hot-jalapeno-ring-leader-hybrid', '', '', '2018-11-03 10:23:43', '2018-11-03 10:23:43', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2018-11-03 10:23:29', '2018-11-03 10:23:29', '', 'prod500105', '', 'inherit', 'open', 'closed', '', 'prod500105', '', '', '2018-11-03 10:23:29', '2018-11-03 10:23:29', '', 148, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500105.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-11-03 10:25:06', '2018-11-03 10:25:06', '', 'Pepper, Sweet, Chinese Giant', '<p class=\"b-product_short_description\"><strong>HEIRLOOM. Burpee introduced.</strong></p>\r\n\r\n<div class=\"b-product_description\">Sweet Chinese Giant was twice as big as the largest bell pepper of its day. Plants are a compact 24\" tall. Fruits are usually 4 by 4\", but Mr. Burpee pointed out that if you thin the fruits, they can grow 5\" across and 6\" long. Truly remarkable then and now.</div>', 'publish', 'open', 'closed', '', 'pepper-sweet-chinese-giant', '', '', '2018-11-03 10:25:11', '2018-11-03 10:25:11', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2018-11-03 10:25:00', '2018-11-03 10:25:00', '', 'prod000827', '', 'inherit', 'open', 'closed', '', 'prod000827', '', '', '2018-11-03 10:25:00', '2018-11-03 10:25:00', '', 150, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000827.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2018-11-03 10:26:41', '2018-11-03 10:26:41', '', 'Radish, Cook\'s Custom Blend', '<p class=\"b-product_short_description\"><strong>Our favorite colors to add to any dish.</strong></p>\r\n\r\n<div class=\"b-product_description\">Cook\'s Garden Favorite. We¹ve blended our favorite red, pink, purple and white radishes for a quick and beautiful addition to salads and party trays. Sow every two weeks for bountiful harvests all season.</div>', 'publish', 'open', 'closed', '', 'radish-cooks-custom-blend', '', '', '2018-11-03 10:26:48', '2018-11-03 10:26:48', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=152', 0, 'product', '', 0),
(153, 1, '2018-11-03 10:26:31', '2018-11-03 10:26:31', '', 'prod099726', '', 'inherit', 'open', 'closed', '', 'prod099726', '', '', '2018-11-03 10:26:31', '2018-11-03 10:26:31', '', 152, 'http://localhost/seeds/wp-content/uploads/2018/11/prod099726.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2018-11-03 10:29:52', '2018-11-03 10:29:52', '', 'Cabbage, Napa, Barrel Head Hybrid', '<p class=\"b-product_short_description\"><strong>Extra-large cylindrical heads are jam-packed with crispy, white-ribbed, green outer leaves and yellow inner leaves.</strong></p>\r\n\r\n<div class=\"b-product_description\">Almost twice the size of regular Napa cabbage! An astonishment of color, extra-large 4½ lb. cylindrical heads are jam-packed with crispy, white-ribbed, pale-green outer leaves and yellow inner leaves; one huge barrel of subtle, refreshing cabbage flavor. ‘Barrel Head’ is bolt-tolerant and resistant to downy mildew and club root.</div>', 'publish', 'open', 'closed', '', 'cabbage-napa-barrel-head-hybrid', '', '', '2018-11-03 10:29:57', '2018-11-03 10:29:57', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=154', 0, 'product', '', 0),
(155, 1, '2018-11-03 10:29:47', '2018-11-03 10:29:47', '', 'prod500401', '', 'inherit', 'open', 'closed', '', 'prod500401', '', '', '2018-11-03 10:29:47', '2018-11-03 10:29:47', '', 154, 'http://localhost/seeds/wp-content/uploads/2018/11/prod500401.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2018-11-03 10:31:30', '2018-11-03 10:31:30', '', 'Carrot, Burpee A#1 Hybrid', '<p class=\"b-product_short_description\"><strong>Super-carrot has landed!</strong></p>\r\n\r\n<div class=\"b-product_description\">Easy to grow and full of vitamins, Burpee A#1 has more flavor and sugar than other carrots, plus it has twice the vitamin A. It\'s super-sized too-10-12\" long, yet still tender and juicy. Taste how good a carrot can be! GARDEN HINTS: Sow seed in deep, well-worked stone-free soil after danger of heavy frost in the spring. Do not transplant because crooked roots may result. A 1,500 seed packet sows a 40\' row.</div>', 'publish', 'open', 'closed', '', 'carrot-burpee-a1-hybrid', '', '', '2018-11-03 10:31:37', '2018-11-03 10:31:37', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=156', 0, 'product', '', 0),
(157, 1, '2018-11-03 10:31:19', '2018-11-03 10:31:19', '', 'prod001112', '', 'inherit', 'open', 'closed', '', 'prod001112', '', '', '2018-11-03 10:31:19', '2018-11-03 10:31:19', '', 156, 'http://localhost/seeds/wp-content/uploads/2018/11/prod001112.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2018-11-03 10:33:17', '2018-11-03 10:33:17', '', 'Cantaloupe, Burpee\'s Ambrosia Hybrid', '<p class=\"b-product_short_description\"><strong>Our top-selling cantaloupe for over 20 years.</strong></p>\r\n\r\n<div class=\"b-product_description\">Burpee\'s Ambrosia has been our top-selling cantaloupe for over 20 years because of its luscious, extra-sweet taste, juiciness and nectarous aroma. The thick, firm, flesh is delicious right down to the rind. The 6\" melons average 5 lb. each. Vines yield bumper crops and are mildew-resistant.</div>', 'publish', 'open', 'closed', '', 'cantaloupe-burpees-ambrosia-hybrid', '', '', '2018-11-03 10:33:26', '2018-11-03 10:33:26', '', 0, 'http://localhost/seeds/?post_type=product&#038;p=158', 0, 'product', '', 0),
(159, 1, '2018-11-03 10:33:09', '2018-11-03 10:33:09', '', 'prod000541', '', 'inherit', 'open', 'closed', '', 'prod000541', '', '', '2018-11-03 10:33:09', '2018-11-03 10:33:09', '', 158, 'http://localhost/seeds/wp-content/uploads/2018/11/prod000541.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-11-03 12:48:50', '2018-11-03 12:48:50', '', 'cropped-anh-thien-nhien-dep1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-anh-thien-nhien-dep1-1-jpg', '', '', '2018-11-03 12:48:50', '2018-11-03 12:48:50', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/cropped-anh-thien-nhien-dep1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2018-11-03 13:24:13', '2018-11-03 13:24:13', '{\n    \"custom_css[vw-bakery]\": {\n        \"value\": \"body {\\n\\tfont-family: monospace;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-03 13:24:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc2a8c5b-58c0-43f6-9804-da4781defb42', '', '', '2018-11-03 13:24:13', '2018-11-03 13:24:13', '', 0, 'http://localhost/seeds/cc2a8c5b-58c0-43f6-9804-da4781defb42/', 0, 'customize_changeset', '', 0),
(163, 1, '2018-11-03 13:24:13', '2018-11-03 13:24:13', '', 'vw-bakery', '', 'publish', 'closed', 'closed', '', 'vw-bakery', '', '', '2018-11-03 13:30:00', '2018-11-03 13:30:00', '', 0, 'http://localhost/seeds/vw-bakery/', 0, 'custom_css', '', 0),
(164, 1, '2018-11-03 13:24:13', '2018-11-03 13:24:13', 'body {\n	font-family: monospace;\n}\n', 'vw-bakery', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-11-03 13:24:13', '2018-11-03 13:24:13', '', 163, 'http://localhost/seeds/163-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2018-11-03 13:25:24', '2018-11-03 13:25:24', '{\n    \"custom_css[vw-bakery]\": {\n        \"value\": \"body {\\n\\tfont-family: monospace;\\n}\\n\\n#header .nav ul li a {\\n\\tcolor: #060809;\\n  padding: 5px;\\n  font-size: 14px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-03 13:25:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4d7214c-39be-4305-9824-4d1a62954b9a', '', '', '2018-11-03 13:25:24', '2018-11-03 13:25:24', '', 0, 'http://localhost/seeds/?p=165', 0, 'customize_changeset', '', 0),
(166, 1, '2018-11-03 13:25:24', '2018-11-03 13:25:24', 'body {\n	font-family: monospace;\n}\n\n#header .nav ul li a {\n	color: #060809;\n  padding: 5px;\n  font-size: 14px;\n}', 'vw-bakery', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-11-03 13:25:24', '2018-11-03 13:25:24', '', 163, 'http://localhost/seeds/163-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2018-11-03 13:29:59', '2018-11-03 13:29:59', '{\n    \"custom_css[vw-bakery]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-03 13:29:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18087654-c8b4-4e16-9e70-555a16c16d72', '', '', '2018-11-03 13:29:59', '2018-11-03 13:29:59', '', 0, 'http://localhost/seeds/18087654-c8b4-4e16-9e70-555a16c16d72/', 0, 'customize_changeset', '', 0),
(168, 1, '2018-11-03 13:30:00', '2018-11-03 13:30:00', '', 'vw-bakery', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-11-03 13:30:00', '2018-11-03 13:30:00', '', 163, 'http://localhost/seeds/163-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-11-03 17:46:57', '2018-11-03 17:46:57', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2018-11-03 17:46:57', '2018-11-03 17:46:57', '', 0, 'http://localhost/seeds/169/', 9, 'nav_menu_item', '', 0),
(170, 1, '2018-11-03 17:46:56', '2018-11-03 17:46:56', '<h2>Who we are</h2>\r\nOur website address is: http://localhost/seeds.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-11-03 17:46:56', '2018-11-03 17:46:56', '', 3, 'http://localhost/seeds/3-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-11-03 17:48:40', '2018-11-03 17:48:40', '[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"6\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"6\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-03 17:48:40', '2018-11-03 17:48:40', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2018-11-03 17:50:30', '2018-11-03 17:50:30', '[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"8\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"8\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-03 17:50:30', '2018-11-03 17:50:30', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-11-05 06:06:33', '2018-11-05 06:06:33', '', 'eat', '', 'inherit', 'open', 'closed', '', 'eat', '', '', '2018-11-05 06:06:33', '2018-11-05 06:06:33', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/eat.gif', 0, 'attachment', 'image/gif', 0),
(174, 1, '2018-11-05 06:06:37', '2018-11-05 06:06:37', 'http://localhost/seeds/wp-content/uploads/2018/11/cropped-eat.gif', 'cropped-eat.gif', '', 'inherit', 'open', 'closed', '', 'cropped-eat-gif', '', '', '2018-11-05 06:06:37', '2018-11-05 06:06:37', '', 0, 'http://localhost/seeds/wp-content/uploads/2018/11/cropped-eat.gif', 0, 'attachment', 'image/gif', 0),
(176, 1, '2018-11-12 06:06:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-12 06:06:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/seeds/?p=176', 0, 'post', '', 0),
(177, 1, '2018-11-12 06:38:41', '2018-11-12 06:38:41', '', 'Order &ndash; November 12, 2018 @ 06:38 AM', '', 'wc-processing', 'open', 'closed', 'order_5be91ff141db0', 'order-nov-12-2018-0638-am', '', '', '2018-11-12 06:38:53', '2018-11-12 06:38:53', '', 0, 'http://localhost/seeds/?post_type=shop_order&#038;p=177', 0, 'shop_order', '', 1),
(178, 1, '2018-11-12 06:44:50', '0000-00-00 00:00:00', '{\n    \"custom_css[vw-bakery-child]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-12 06:44:50\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'fce832be-a5fa-475e-aa13-a464bc66e19e', '', '', '2018-11-12 06:44:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/seeds/?p=178', 0, 'customize_changeset', '', 0),
(179, 1, '2018-11-12 11:04:08', '2018-11-12 11:04:08', '<p>\r\n	<label>Enter your email address to subcribe </label>\r\n	<input type=\"email\" name=\"EMAIL\" placeholder=\"Your email address\" required />\r\n</p>\r\n\r\n<p>\r\n	<input type=\"submit\" value=\"Sign up\" />\r\n</p>', 'subscribe', '', 'publish', 'closed', 'closed', '', '179', '', '', '2018-11-12 11:04:08', '2018-11-12 11:04:08', '', 0, 'http://localhost/seeds/mc4wp-form/179/', 0, 'mc4wp-form', '', 0),
(180, 1, '2018-11-12 11:08:01', '2018-11-12 11:08:01', '[vc_row][vc_column][vc_column_text][rev_slider alias=\"hn\"][/vc_column_text][vc_text_separator title=\"Recent Products\" color=\"green\" el_width=\"50\" css_animation=\"fadeInUp\"][recent_products per_page=\"8\" columns=\"4\" orderby=\"date\" order=\"DESC\"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title=\"Top Rated product\" color=\"green\" style=\"shadow\" el_width=\"50\" css_animation=\"bounceInRight\"][top_rated_products per_page=\"8\" columns=\"4\" orderby=\"title\" order=\"ASC\"][/vc_column][/vc_row][vc_row][vc_column][vc_row_inner][vc_column_inner width=\"1/2\"][vc_column_text][mc4wp_form id=\"179\"][/vc_column_text][/vc_column_inner][vc_column_inner width=\"1/2\"][vc_column_text]\r\n\r\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-11-12 11:08:01', '2018-11-12 11:08:01', '', 37, 'http://localhost/seeds/37-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE `wp_revslider_css` (
  `id` int(9) NOT NULL,
  `handle` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  `hover` longtext COLLATE utf8_unicode_ci,
  `advanced` longtext COLLATE utf8_unicode_ci,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `advanced`, `params`) VALUES
(1, '.tp-caption.medium_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-family\":\"Arial\",\"padding\":\"2px 4px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"background-color\":\"#888\"}'),
(2, '.tp-caption.small_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"14px\",\"line-height\":\"20px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(3, '.tp-caption.medium_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(4, '.tp-caption.large_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"40px\",\"line-height\":\"40px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(5, '.tp-caption.very_large_text', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"0px 2px 5px rgba(0, 0, 0, 0.5)\",\"white-space\":\"nowrap\",\"letter-spacing\":\"-2px\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"700\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(6, '.tp-caption.very_big_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\",\"padding-top\":\"1px\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"800\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"padding\":\"0px 4px\",\"background-color\":\"#000\"}'),
(7, '.tp-caption.very_big_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\",\"padding-top\":\"1px\"},\"hover\":\"\"}', '{\"color\":\"#000\",\"font-weight\":\"700\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"padding\":\"0px 4px\",\"background-color\":\"#fff\"}'),
(8, '.tp-caption.modern_medium_fat', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#000\",\"font-weight\":\"800\",\"font-size\":\"24px\",\"line-height\":\"20px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(9, '.tp-caption.modern_medium_fat_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"800\",\"font-size\":\"24px\",\"line-height\":\"20px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(10, '.tp-caption.modern_medium_light', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#000\",\"font-weight\":\"300\",\"font-size\":\"24px\",\"line-height\":\"20px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(11, '.tp-caption.modern_big_bluebg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"letter-spacing\":\"0\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"800\",\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"padding\":\"3px 10px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"background-color\":\"#4e5b6c\"}'),
(12, '.tp-caption.modern_big_redbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"padding-top\":\"1px\",\"letter-spacing\":\"0\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-family\":\"\\\"Open Sans\\\", sans-serif\",\"padding\":\"3px 10px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\",\"background-color\":\"#de543e\"}'),
(13, '.tp-caption.modern_small_text_dark', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"white-space\":\"nowrap\"},\"hover\":\"\"}', '{\"color\":\"#555\",\"font-size\":\"14px\",\"line-height\":\"22px\",\"font-family\":\"Arial\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-style\":\"none\"}'),
(14, '.tp-caption.boxshadow', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"-moz-box-shadow\":\"0px 0px 20px rgba(0, 0, 0, 0.5)\",\"-webkit-box-shadow\":\"0px 0px 20px rgba(0, 0, 0, 0.5)\",\"box-shadow\":\"0px 0px 20px rgba(0, 0, 0, 0.5)\"},\"hover\":\"\"}', '[]'),
(15, '.tp-caption.black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"#000\"}'),
(16, '.tp-caption.noshadow', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '[]'),
(17, '.tp-caption.thinheadline_dark', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"rgba(0,0,0,0.85)\",\"font-weight\":\"300\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"transparent\"}'),
(18, '.tp-caption.thintext_dark', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"rgba(0,0,0,0.85)\",\"font-weight\":\"300\",\"font-size\":\"16px\",\"line-height\":\"26px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"transparent\"}'),
(19, '.tp-caption.largeblackbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#000\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}'),
(20, '.tp-caption.largepinkbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#db4360\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}'),
(21, '.tp-caption.largewhitebg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}', '{\"color\":\"#000\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#fff\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}'),
(22, '.tp-caption.largegreenbg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"position\":\"absolute\",\"text-shadow\":\"none\",\"-webkit-border-radius\":\"0px\",\"-moz-border-radius\":\"0px\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"font-weight\":\"300\",\"font-size\":\"50px\",\"line-height\":\"70px\",\"font-family\":\"\\\"Open Sans\\\"\",\"background-color\":\"#67ae73\",\"padding\":\"0px 20px\",\"border-radius\":\"0px\"}'),
(23, '.tp-caption.excerpt', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\",\"letter-spacing\":\"-1.5px\",\"width\":\"150px\",\"white-space\":\"normal !important\",\"height\":\"auto\"},\"hover\":\"\"}', '{\"font-size\":\"36px\",\"line-height\":\"36px\",\"font-weight\":\"700\",\"font-family\":\"Arial\",\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"rgba(0, 0, 0, 1)\",\"margin\":\"0px\",\"padding\":\"1px 4px 0px 4px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 255, 255)\",\"border-style\":\"none\"}'),
(24, '.tp-caption.large_bold_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(102, 102, 102)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"margin\":\"0px\",\"padding\":\"1px 4px 0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(25, '.tp-caption.medium_thin_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"font-size\":\"34px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(102, 102, 102)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"1px 4px 0px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(26, '.tp-caption.small_thin_grey', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"font-size\":\"18px\",\"line-height\":\"26px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(117, 117, 117)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"1px 4px 0px\",\"margin\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(27, '.tp-caption.lightgrey_divider', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"width\":\"370px\",\"height\":\"3px\",\"background-position\":\"initial initial\",\"background-repeat\":\"initial initial\"},\"hover\":\"\"}', '{\"text-decoration\":\"none\",\"background-color\":\"rgba(235, 235, 235, 1)\",\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}'),
(28, '.tp-caption.large_bold_darkblue', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"58px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(52, 73, 94)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(29, '.tp-caption.medium_bg_darkblue', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(52, 73, 94)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(30, '.tp-caption.medium_bold_red', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"24px\",\"line-height\":\"30px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(227, 58, 12)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(31, '.tp-caption.medium_light_red', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"21px\",\"line-height\":\"26px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(227, 58, 12)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(32, '.tp-caption.medium_bg_red', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(227, 58, 12)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(33, '.tp-caption.medium_bold_orange', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"24px\",\"line-height\":\"30px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(243, 156, 18)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(34, '.tp-caption.medium_bg_orange', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(243, 156, 18)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(35, '.tp-caption.grassfloor', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"width\":\"4000px\",\"height\":\"150px\"},\"hover\":\"\"}', '{\"text-decoration\":\"none\",\"background-color\":\"rgba(160, 179, 151, 1)\",\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}'),
(36, '.tp-caption.large_bold_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"58px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(37, '.tp-caption.medium_light_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(38, '.tp-caption.mediumlarge_light_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"34px\",\"line-height\":\"40px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(39, '.tp-caption.mediumlarge_light_white_center', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"34px\",\"line-height\":\"40px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px 0px 0px 0px\",\"text-align\":\"center\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(40, '.tp-caption.medium_bg_asbestos', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(127, 140, 141)\",\"padding\":\"10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(41, '.tp-caption.medium_light_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"30px\",\"line-height\":\"36px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(0, 0, 0)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(42, '.tp-caption.large_bold_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"58px\",\"line-height\":\"60px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(0, 0, 0)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"34px\",\"line-height\":\"40px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(52, 73, 94)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(44, '.tp-caption.small_light_white', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"17px\",\"line-height\":\"28px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"padding\":\"0px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(45, '.tp-caption.roundedimage', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}'),
(46, '.tp-caption.large_bg_black', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":[],\"hover\":\"\"}', '{\"font-size\":\"40px\",\"line-height\":\"40px\",\"font-weight\":\"800\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(255, 255, 255)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(0, 0, 0)\",\"padding\":\"10px 20px 15px\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 214, 88)\",\"border-style\":\"none\"}'),
(47, '.tp-caption.mediumwhitebg', '{\"translated\":5,\"type\":\"text\",\"version\":\"4\"}', 'null', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-family\":\"\\\"Open Sans\\\"\",\"color\":\"rgb(0, 0, 0)\",\"text-decoration\":\"none\",\"background-color\":\"rgb(255, 255, 255)\",\"padding\":\"5px 15px 10px\",\"border-width\":\"0px\",\"border-color\":\"rgb(0, 0, 0)\",\"border-style\":\"none\"}'),
(48, '.tp-caption.MarkerDisplay', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ff0000\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"font-style\":\"normal\",\"font-family\":\"Permanent Marker\",\"padding\":\"0px 0px 0px 0px\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(49, '.tp-caption.Restaurant-Display', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"font-size\":\"120px\",\"line-height\":\"120px\",\"font-weight\":\"700\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(50, '.tp-caption.Restaurant-Cursive', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Nothing you could do\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(51, '.tp-caption.Restaurant-ScrollDownText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(52, '.tp-caption.Restaurant-Description', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"font-size\":\"20px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(53, '.tp-caption.Restaurant-Price', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(54, '.tp-caption.Restaurant-Menuitem', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"500\",\"easing\":\"Power2.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(55, '.tp-caption.Furniture-LogoText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"#e6cfa3\",\"color-transparency\":\"1\",\"font-size\":\"160px\",\"line-height\":\"150px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(56, '.tp-caption.Furniture-Plus', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0.5\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-shadow\":\"none\",\"box-shadow\":\"rgba(0,0,0,0.1) 0 1px 3px\"},\"hover\":\"\"}', '{\"color\":\"#e6cfa3\",\"color-transparency\":\"1\",\"font-size\":\"20\",\"line-height\":\"20px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"6px\",\"7px\",\"4px\",\"7px\"],\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(57, '.tp-caption.Furniture-Title', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-shadow\":\"none\",\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"700\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(58, '.tp-caption.Furniture-Subtitle', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"20px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(59, '.tp-caption.Gym-Display', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"80px\",\"line-height\":\"70px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(60, '.tp-caption.Gym-Subline', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"5px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(61, '.tp-caption.Gym-SmallText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"22\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(62, '.tp-caption.Fashion-SmallText', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"12px\",\"line-height\":\"20px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(63, '.tp-caption.Fashion-BigDisplay', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"60px\",\"line-height\":\"60px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(64, '.tp-caption.Fashion-TextBlock', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"40px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(65, '.tp-caption.Sports-Display', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"13px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"130px\",\"line-height\":\"130px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(66, '.tp-caption.Sports-DisplayFat', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":[\"\"],\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"130px\",\"line-height\":\"130px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(67, '.tp-caption.Sports-Subline', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"4px\"},\"hover\":\"\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"font-size\":\"32px\",\"line-height\":\"32px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Raleway\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(68, '.tp-caption.Instagram-Caption', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(69, '.tp-caption.News-Title', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"70px\",\"line-height\":\"60px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Roboto Slab\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}');
INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `advanced`, `params`) VALUES
(70, '.tp-caption.News-Subtitle', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.65\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"0px\",\"border-radius\":[\"0\",\"0\",\"0px\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"300\",\"easing\":\"Power3.easeInOut\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"24px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Roboto Slab\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(71, '.tp-caption.Photography-Display', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"5px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"80px\",\"line-height\":\"70px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(72, '.tp-caption.Photography-Subline', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#777777\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(73, '.tp-caption.Photography-ImageHover', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"0.5\",\"scalex\":\"0.8\",\"scaley\":\"0.8\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"1000\",\"easing\":\"Power3.easeInOut\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20\",\"line-height\":\"22\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(74, '.tp-caption.Photography-Menuitem', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#00ffde\",\"background-transparency\":\"0.65\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"200\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"3px\",\"5px\",\"3px\",\"8px\"],\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0.65\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(75, '.tp-caption.Photography-Textblock', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(76, '.tp-caption.Photography-Subline-2', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.35\",\"font-size\":\"20px\",\"line-height\":\"30px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(77, '.tp-caption.Photography-ImageHover2', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"0.5\",\"scalex\":\"0.8\",\"scaley\":\"0.8\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"500\",\"easing\":\"Back.easeOut\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20\",\"line-height\":\"22\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Arial\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(78, '.tp-caption.WebProduct-Title', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#333333\",\"color-transparency\":\"1\",\"font-size\":\"90px\",\"line-height\":\"90px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(79, '.tp-caption.WebProduct-SubTitle', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#999999\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(80, '.tp-caption.WebProduct-Content', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#999999\",\"color-transparency\":\"1\",\"font-size\":\"16px\",\"line-height\":\"24px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\"}'),
(81, '.tp-caption.WebProduct-Menuitem', '{\"hover\":\"true\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#999999\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"200\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"3px\",\"5px\",\"3px\",\"8px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#333333\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(82, '.tp-caption.WebProduct-Title-Light', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"90px\",\"line-height\":\"90px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(83, '.tp-caption.WebProduct-SubTitle-Light', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.35\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"parallax\":\"-\"}'),
(84, '.tp-caption.WebProduct-Content-Light', '{\"hover\":\"false\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"0.65\",\"font-size\":\"16px\",\"line-height\":\"24px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"parallax\":\"-\"}'),
(85, '.tp-caption.FatRounded', '{\"hover\":\"true\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#d3d3d3\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"50px\",\"50px\",\"50px\",\"50px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-shadow\":\"none\"},\"hover\":\"\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"20px\",\"22px\",\"20px\",\"25px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0.5\",\"border-color\":\"#d3d3d3\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0px\",\"border-radius\":[\"50px\",\"50px\",\"50px\",\"50px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(86, '.tp-caption.NotGeneric-Title', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"[object Object]\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"70px\",\"line-height\":\"70px\",\"font-weight\":\"800\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"10px 0px 10px 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(87, '.tp-caption.NotGeneric-SubTitle', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"4px\",\"text-align\":\"left\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"13px\",\"line-height\":\"20px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(88, '.tp-caption.NotGeneric-CallToAction', '{\"hover\":\"true\",\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":\"0px 0px 0px 0px\",\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power3.easeOut\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"10px 30px 10px 30px\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(89, '.tp-caption.NotGeneric-Icon', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"default\",\"speed\":\"300\",\"easing\":\"Power3.easeOut\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"0px 0px 0px 0px\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"0px\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(90, '.tp-caption.NotGeneric-Menuitem', '{\"hover\":\"true\",\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":\"0px 0px 0px 0px\",\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":\"27px 30px 27px 30px\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.15\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":\"0px 0px 0px 0px\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(91, '.tp-caption.MarkerStyle', '{\"translated\":5,\"type\":\"text\",\"version\":\"5.0\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"text-align\":\"left\",\"0\":\"\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"30px\",\"font-weight\":\"100\",\"font-style\":\"normal\",\"font-family\":\"\\\"Permanent Marker\\\"\",\"padding\":\"0 0 0 0\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":\"0 0 0 0\",\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(92, '.tp-caption.Gym-Menuitem', '{\"hover\":\"true\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"200\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"20px\",\"line-height\":\"20px\",\"font-weight\":\"300\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"3px\",\"5px\",\"3px\",\"8px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(93, '.tp-caption.Newspaper-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#FFFFFF\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"13px\",\"line-height\":\"17px\",\"font-weight\":\"700\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#ffffff\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(94, '.tp-caption.Newspaper-Subtitle', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#a8d8ee\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"20px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"0\",\"0\",\"0\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(95, '.tp-caption.Newspaper-Title', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"50px\",\"line-height\":\"55px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Roboto Slab\\\"\",\"padding\":[\"0\",\"0\",\"10px\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(96, '.tp-caption.Newspaper-Title-Centered', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"50px\",\"line-height\":\"55px\",\"font-weight\":\"400\",\"font-style\":\"normal\",\"font-family\":\"\\\"Roboto Slab\\\"\",\"padding\":[\"0\",\"0\",\"10px\",\"0\"],\"text-decoration\":\"none\",\"text-align\":\"center\",\"background-color\":\"transparent\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(97, '.tp-caption.Hero-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#000000\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(98, '.tp-caption.Video-Title', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#fff\",\"color-transparency\":\"1\",\"font-size\":\"30px\",\"line-height\":\"30px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"5px\",\"5px\",\"5px\",\"5px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"-20%\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(99, '.tp-caption.Video-SubTitle', '{\"hover\":\"false\",\"type\":\"text\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"0\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"12px\",\"line-height\":\"12px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"5px\",\"5px\",\"5px\",\"5px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0.35\",\"border-color\":\"transparent\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"0\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"-20%\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(100, '.tp-caption.NotGeneric-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"3px\",\"text-align\":\"left\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"1\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(101, '.tp-caption.NotGeneric-BigButton', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"14px\",\"line-height\":\"14px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"27px\",\"30px\",\"27px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.15\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(102, '.tp-caption.WebProduct-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#333333\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#ffffff\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"2\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"1px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"16px\",\"line-height\":\"48px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"0px\",\"40px\",\"0px\",\"40px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#333333\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"1\",\"border-style\":\"none\",\"border-width\":\"2\",\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(103, '.tp-caption.Restaurant-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffe081\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"3px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"500\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#0a0a0a\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}');
INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `advanced`, `params`) VALUES
(104, '.tp-caption.Gym-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#72a800\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power1.easeInOut\"}', '{\"idle\":{\"letter-spacing\":\"1px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"13px\",\"35px\",\"13px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#8bc027\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"0\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(105, '.tp-caption.Gym-Button-Light', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#72a800\",\"background-transparency\":\"0\",\"border-color\":\"#8bc027\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Power2.easeInOut\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"transparent\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(106, '.tp-caption.Sports-Button-Light', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"500\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(107, '.tp-caption.Sports-Button-Red', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"1\",\"border-color\":\"#000000\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"500\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":{\"letter-spacing\":\"2px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"17px\",\"line-height\":\"17px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"12px\",\"35px\",\"12px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#db1c22\",\"background-transparency\":\"1\",\"border-color\":\"#db1c22\",\"border-transparency\":\"0\",\"border-style\":\"solid\",\"border-width\":\"2px\",\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(108, '.tp-caption.Photography-Button', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"auto\",\"speed\":\"300\",\"easing\":\"Power3.easeOut\"}', '{\"idle\":{\"letter-spacing\":\"1px\"},\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"600\",\"font-style\":\"normal\",\"font-family\":\"Raleway\",\"padding\":[\"13px\",\"35px\",\"13px\",\"35px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.25\",\"border-style\":\"solid\",\"border-width\":\"1px\",\"border-radius\":[\"30px\",\"30px\",\"30px\",\"30px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}'),
(109, '.tp-caption.Newspaper-Button-2', '{\"hover\":\"true\",\"type\":\"button\",\"version\":\"5.0\",\"translated\":\"5\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"text-decoration\":\"none\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"1\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"opacity\":\"1\",\"scalex\":\"1\",\"scaley\":\"1\",\"skewx\":\"0\",\"skewy\":\"0\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"pointer_events\":\"auto\",\"css_cursor\":\"pointer\",\"speed\":\"300\",\"easing\":\"Linear.easeNone\"}', '{\"idle\":\"\",\"hover\":\"\"}', '{\"color\":\"#ffffff\",\"color-transparency\":\"1\",\"font-size\":\"15px\",\"line-height\":\"15px\",\"font-weight\":\"900\",\"font-style\":\"normal\",\"font-family\":\"Roboto\",\"padding\":[\"10px\",\"30px\",\"10px\",\"30px\"],\"text-decoration\":\"none\",\"text-align\":\"left\",\"background-color\":\"#000000\",\"background-transparency\":\"0\",\"border-color\":\"#ffffff\",\"border-transparency\":\"0.5\",\"border-style\":\"solid\",\"border-width\":\"2\",\"border-radius\":[\"3px\",\"3px\",\"3px\",\"3px\"],\"z\":\"0\",\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":\"0\",\"yrotate\":\"0\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"parallax\":\"-\"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL,
  `handle` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_navigations`
--

CREATE TABLE `wp_revslider_navigations` (
  `id` int(9) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8_unicode_ci NOT NULL,
  `markup` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_sliders`
--

CREATE TABLE `wp_revslider_sliders` (
  `id` int(9) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8_unicode_ci,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`, `settings`, `type`) VALUES
(1, 'hn', 'hn', '{\"hero_active\":\"-1\",\"source_type\":\"gallery\",\"instagram-count\":\"\",\"instagram-transient\":\"1200\",\"instagram-type\":\"user\",\"instagram-user-id\":\"\",\"instagram-hash-tag\":\"\",\"flickr-count\":\"\",\"flickr-transient\":\"1200\",\"flickr-api-key\":\"\",\"flickr-type\":\"publicphotos\",\"flickr-user-url\":\"\",\"flickr-photoset\":\"\",\"flickr-photoset-select\":\"\",\"flickr-gallery-url\":\"\",\"flickr-group-url\":\"\",\"facebook-count\":\"\",\"facebook-transient\":\"1200\",\"facebook-page-url\":\"\",\"facebook-type-source\":\"album\",\"facebook-album\":\"\",\"facebook-album-select\":\"\",\"facebook-app-id\":\"\",\"facebook-app-secret\":\"\",\"twitter-count\":\"\",\"twitter-transient\":\"1200\",\"twitter-user-id\":\"\",\"twitter-image-only\":\"off\",\"twitter-include-retweets\":\"off\",\"twitter-exclude-replies\":\"off\",\"twitter-consumer-key\":\"\",\"twitter-consumer-secret\":\"\",\"twitter-access-token\":\"\",\"twitter-access-secret\":\"\",\"youtube-count\":\"\",\"youtube-transient\":\"1200\",\"youtube-api\":\"\",\"youtube-channel-id\":\"\",\"youtube-type-source\":\"channel\",\"youtube-playlist\":\"\",\"youtube-playlist-select\":\"\",\"vimeo-count\":\"\",\"vimeo-transient\":\"1200\",\"vimeo-type-source\":\"user\",\"vimeo-username\":\"\",\"vimeo-groupname\":\"\",\"vimeo-albumid\":\"\",\"vimeo-channelname\":\"\",\"product_types\":\"product\",\"product_category\":\"\",\"posts_list\":\"\",\"fetch_type\":\"cat_tag\",\"post_types\":\"post\",\"post_category\":\"\",\"product_sortby\":\"ID\",\"product_sort_direction\":\"DESC\",\"max_slider_products\":\"30\",\"excerpt_limit_product\":\"55\",\"reg_price_from\":\"\",\"reg_price_to\":\"\",\"sale_price_from\":\"\",\"sale_price_to\":\"\",\"instock_only\":\"off\",\"featured_only\":\"off\",\"post_sortby\":\"ID\",\"posts_sort_direction\":\"DESC\",\"max_slider_posts\":\"30\",\"excerpt_limit\":\"55\",\"title\":\"hn\",\"alias\":\"hn\",\"shortcode\":\"[rev_slider alias=\\\\\\\"hn\\\\\\\"]\",\"slider-type\":\"standard\",\"slider_type\":\"fullwidth\",\"width\":\"1240\",\"height\":\"868\",\"width_notebook\":\"1024\",\"height_notebook\":\"768\",\"enable_custom_size_notebook\":\"off\",\"width_tablet\":\"778\",\"height_tablet\":\"960\",\"enable_custom_size_tablet\":\"off\",\"width_mobile\":\"480\",\"height_mobile\":\"720\",\"enable_custom_size_iphone\":\"off\",\"full_screen_align_force\":\"off\",\"fullscreen_min_height\":\"\",\"autowidth_force\":\"off\",\"fullscreen_offset_container\":\"\",\"fullscreen_offset_size\":\"\",\"main_overflow_hidden\":\"off\",\"auto_height\":\"off\",\"min_height\":\"\",\"max_width\":\"\",\"force_full_width\":\"on\",\"next_slide_on_window_focus\":\"off\",\"disable_focus_listener\":\"off\",\"def-layer_selection\":\"on\",\"slider_id\":\"\",\"delay\":\"9000\",\"start_js_after_delay\":\"0\",\"def-slide_transition\":\"fade\",\"def-transition_duration\":\"300\",\"def-image_source_type\":\"full\",\"def-background_fit\":\"contain\",\"def-bg_fit_x\":\"100\",\"def-bg_fit_y\":\"100\",\"def-bg_position\":\"center center\",\"def-bg_position_x\":\"0\",\"def-bg_position_y\":\"0\",\"def-bg_repeat\":\"no-repeat\",\"def-kenburn_effect\":\"off\",\"def-kb_start_fit\":\"100\",\"def-kb_easing\":\"Linear.easeNone\",\"def-kb_end_fit\":\"100\",\"def-kb_start_offset_x\":\"0\",\"def-kb_start_offset_y\":\"0\",\"def-kb_end_offset_x\":\"0\",\"def-kb_end_offset_y\":\"0\",\"def-kb_start_rotate\":\"0\",\"def-kb_end_rotate\":\"0\",\"def-kb_blur_start\":\"0\",\"def-kb_blur_end\":\"0\",\"def-kb_duration\":\"10000\",\"0\":\"blank\",\"start_with_slide_enable\":\"off\",\"start_with_slide\":\"1\",\"first_transition_active\":\"off\",\"first_transition_type\":\"fade\",\"first_transition_duration\":\"300\",\"first_transition_slot_amount\":\"7\",\"stop_on_hover\":\"off\",\"stop_slider\":\"off\",\"stop_after_loops\":\"0\",\"stop_at_slide\":\"1\",\"shuffle\":\"off\",\"loop_slide\":\"off\",\"label_viewport\":\"off\",\"viewport_start\":\"wait\",\"viewport_area\":\"80\",\"label_presetheight\":\"off\",\"waitforinit\":\"off\",\"enable_progressbar\":\"off\",\"show_timerbar\":\"top\",\"progress_height\":\"5\",\"progressbar_color\":\"rgba(0,0,0,0.15)\",\"disable_on_mobile\":\"off\",\"disable_kenburns_on_mobile\":\"off\",\"hide_slider_under\":\"0\",\"hide_defined_layers_under\":\"0\",\"hide_all_layers_under\":\"0\",\"shadow_type\":\"0\",\"background_dotted_overlay\":\"none\",\"background_color\":\"transparent\",\"padding\":\"0\",\"show_background_image\":\"off\",\"background_image\":\"\",\"bg_fit\":\"cover\",\"bg_repeat\":\"no-repeat\",\"bg_position\":\"center center\",\"position\":\"center\",\"margin_top\":\"0\",\"margin_bottom\":\"0\",\"margin_left\":\"0\",\"margin_right\":\"0\",\"use_spinner\":\"0\",\"spinner_color\":\"#FFFFFF\",\"enable_arrows\":\"off\",\"rtl_arrows\":\"off\",\"navigation_arrow_style\":\"round\",\"navigation_arrows_preset\":\"default\",\"ph-round-arrows-hover-bg-color-color-rgba-def\":\"off\",\"ph-round-arrows-hover-bg-color-color-rgba\":\"#000000\",\"ph-round-arrows-arrow-size-custom-def\":\"off\",\"ph-round-arrows-arrow-size-custom\":\"20\",\"ph-round-arrows-arrow-color-color-def\":\"off\",\"ph-round-arrows-arrow-color-color\":\"#ffffff\",\"ph-round-arrows-bg-size-custom-def\":\"off\",\"ph-round-arrows-bg-size-custom\":\"40\",\"ph-round-arrows-bg-color-custom-def\":\"off\",\"ph-round-arrows-bg-color-custom\":\"0,0,0,0.5\",\"arrows_always_on\":\"false\",\"hide_arrows\":\"200\",\"hide_arrows_mobile\":\"1200\",\"hide_arrows_on_mobile\":\"off\",\"arrows_under_hidden\":\"0\",\"hide_arrows_over\":\"off\",\"arrows_over_hidden\":\"0\",\"leftarrow_align_hor\":\"left\",\"leftarrow_align_vert\":\"center\",\"leftarrow_offset_hor\":\"20\",\"leftarrow_offset_vert\":\"0\",\"leftarrow_position\":\"slider\",\"rightarrow_align_hor\":\"right\",\"rightarrow_align_vert\":\"center\",\"rightarrow_offset_hor\":\"20\",\"rightarrow_offset_vert\":\"0\",\"rightarrow_position\":\"slider\",\"enable_bullets\":\"on\",\"rtl_bullets\":\"off\",\"navigation_bullets_style\":\"preview4\",\"navigation_bullets_preset\":\"default\",\"ph-preview4-bullets-bullet-hover-color-rgba-def\":\"off\",\"ph-preview4-bullets-bullet-hover-color-rgba\":\"rgba(0,0,0,0.21)\",\"ph-preview4-bullets-border-custom-def\":\"off\",\"ph-preview4-bullets-border-custom\":\"2\",\"ph-preview4-bullets-bullet-color-color-def\":\"off\",\"ph-preview4-bullets-bullet-color-color\":\"#ffffff\",\"ph-preview4-bullets-bullet-size-custom-def\":\"off\",\"ph-preview4-bullets-bullet-size-custom\":\"16\",\"bullets_space\":\"5\",\"bullets_direction\":\"horizontal\",\"bullets_always_on\":\"false\",\"hide_bullets\":\"200\",\"hide_bullets_mobile\":\"1200\",\"hide_bullets_on_mobile\":\"off\",\"bullets_under_hidden\":\"0\",\"hide_bullets_over\":\"off\",\"bullets_over_hidden\":\"0\",\"bullets_align_hor\":\"center\",\"bullets_align_vert\":\"bottom\",\"bullets_offset_hor\":\"0\",\"bullets_offset_vert\":\"20\",\"bullets_position\":\"slider\",\"enable_thumbnails\":\"off\",\"rtl_thumbnails\":\"off\",\"thumbnails_padding\":\"5\",\"span_thumbnails_wrapper\":\"off\",\"thumbnails_wrapper_color\":\"transparent\",\"thumbnails_style\":\"round\",\"navigation_thumbs_preset\":\"default\",\"ph-round-thumbs-title-font-size-custom-def\":\"off\",\"ph-round-thumbs-title-font-size-custom\":\"12\",\"ph-round-thumbs-title-color-color-rgba-def\":\"off\",\"ph-round-thumbs-title-color-color-rgba\":\"#ffffff\",\"ph-round-thumbs-title-bg-color-rgba-def\":\"off\",\"ph-round-thumbs-title-bg-color-rgba\":\"rgba(0,0,0,0.85)\",\"thumb_amount\":\"5\",\"thumbnails_space\":\"5\",\"thumbnail_direction\":\"horizontal\",\"thumb_width\":\"100\",\"thumb_height\":\"50\",\"thumb_width_min\":\"100\",\"thumbs_always_on\":\"false\",\"hide_thumbs\":\"200\",\"hide_thumbs_mobile\":\"1200\",\"hide_thumbs_on_mobile\":\"off\",\"thumbs_under_hidden\":\"0\",\"hide_thumbs_over\":\"off\",\"thumbs_over_hidden\":\"0\",\"thumbnails_inner_outer\":\"inner\",\"thumbnails_align_hor\":\"center\",\"thumbnails_align_vert\":\"bottom\",\"thumbnails_offset_hor\":\"0\",\"thumbnails_offset_vert\":\"20\",\"thumbnails_position\":\"slider\",\"enable_tabs\":\"off\",\"rtl_tabs\":\"off\",\"tabs_padding\":\"5\",\"span_tabs_wrapper\":\"off\",\"tabs_wrapper_color\":\"transparent\",\"tabs_style\":\"round\",\"navigation_tabs_preset\":\"default\",\"ph-round-tabs-param2-size-custom-def\":\"off\",\"ph-round-tabs-param2-size-custom\":\"14\",\"ph-round-tabs-param2-color-color-rgba-def\":\"off\",\"ph-round-tabs-param2-color-color-rgba\":\"transparent\",\"ph-round-tabs-contentcolor-color-rgba-def\":\"off\",\"ph-round-tabs-contentcolor-color-rgba\":\"#333333\",\"ph-round-tabs-bgcolor-color-rgba-def\":\"off\",\"ph-round-tabs-bgcolor-color-rgba\":\"rgba(0,0,0,0)\",\"ph-round-tabs-hover-bg-color-color-rgba-def\":\"off\",\"ph-round-tabs-hover-bg-color-color-rgba\":\"#eeeeee\",\"ph-round-tabs-param1-size-custom-def\":\"off\",\"ph-round-tabs-param1-size-custom\":\"12\",\"ph-round-tabs-param1-color-color-rgba-def\":\"off\",\"ph-round-tabs-param1-color-color-rgba\":\"rgba(51,51,51,0.5)\",\"ph-round-tabs-image-size-custom-def\":\"off\",\"ph-round-tabs-image-size-custom\":\"60\",\"ph-round-tabs-border-size-custom-def\":\"off\",\"ph-round-tabs-border-size-custom\":\"1\",\"ph-round-tabs-border-color-color-rgba-def\":\"off\",\"ph-round-tabs-border-color-color-rgba\":\"#e5e5e5\",\"ph-round-tabs-font-family-font_family-def\":\"off\",\"ph-round-tabs-font-family-font_family\":\"Roboto\",\"tabs_amount\":\"5\",\"tabs_space\":\"5\",\"tabs_direction\":\"horizontal\",\"tabs_width\":\"100\",\"tabs_height\":\"50\",\"tabs_width_min\":\"100\",\"tabs_always_on\":\"false\",\"hide_tabs\":\"200\",\"hide_tabs_mobile\":\"1200\",\"hide_tabs_on_mobile\":\"off\",\"tabs_under_hidden\":\"0\",\"hide_tabs_over\":\"off\",\"tabs_over_hidden\":\"0\",\"tabs_inner_outer\":\"inner\",\"tabs_align_hor\":\"center\",\"tabs_align_vert\":\"bottom\",\"tabs_offset_hor\":\"0\",\"tabs_offset_vert\":\"20\",\"tabs_position\":\"slider\",\"touchenabled\":\"on\",\"touchenabled_desktop\":\"off\",\"drag_block_vertical\":\"off\",\"swipe_velocity\":\"75\",\"swipe_min_touches\":\"1\",\"swipe_direction\":\"horizontal\",\"keyboard_navigation\":\"off\",\"keyboard_direction\":\"horizontal\",\"mousescroll_navigation\":\"off\",\"mousescroll_navigation_reverse\":\"default\",\"previewimage_width\":\"100\",\"previewimage_height\":\"50\",\"carousel_infinity\":\"off\",\"carousel_space\":\"0\",\"carousel_borderr\":\"0\",\"carousel_borderr_unit\":\"px\",\"carousel_padding_top\":\"0\",\"carousel_padding_bottom\":\"0\",\"carousel_maxitems\":\"3\",\"carousel_stretch\":\"off\",\"showalllayers_carousel\":\"off\",\"carousel_easing\":\"Power3.easeInOut\",\"carousel_speed\":\"800\",\"carousel_fadeout\":\"on\",\"carousel_varyfade\":\"off\",\"carousel_rotation\":\"off\",\"carousel_varyrotate\":\"off\",\"carousel_maxrotation\":\"0\",\"carousel_scale\":\"off\",\"carousel_varyscale\":\"off\",\"carousel_scaledown\":\"50\",\"carousel_hposition\":\"center\",\"carousel_vposition\":\"center\",\"use_parallax\":\"off\",\"disable_parallax_mobile\":\"off\",\"ddd_parallax\":\"off\",\"ddd_parallax_shadow\":\"off\",\"ddd_parallax_bgfreeze\":\"off\",\"ddd_parallax_overflow\":\"off\",\"ddd_parallax_layer_overflow\":\"off\",\"ddd_parallax_zcorrection\":\"65\",\"parallax_type\":\"mouse\",\"parallax_origo\":\"enterpoint\",\"parallax_speed\":\"400\",\"parallax_bg_speed\":\"0\",\"parallax_ls_speed\":\"0\",\"parallax_level_16\":\"55\",\"parallax_level_1\":\"5\",\"parallax_level_2\":\"10\",\"parallax_level_3\":\"15\",\"parallax_level_4\":\"20\",\"parallax_level_5\":\"25\",\"parallax_level_6\":\"30\",\"parallax_level_7\":\"35\",\"parallax_level_8\":\"40\",\"parallax_level_9\":\"45\",\"parallax_level_10\":\"46\",\"parallax_level_11\":\"47\",\"parallax_level_12\":\"48\",\"parallax_level_13\":\"49\",\"parallax_level_14\":\"50\",\"parallax_level_15\":\"51\",\"fade_scrolleffect\":\"off\",\"blur_scrolleffect\":\"off\",\"grayscale_scrolleffect\":\"off\",\"scrolleffect_maxblur\":\"10\",\"scrolleffect_bg\":\"off\",\"scrolleffect_layers\":\"off\",\"scrolleffect_parallax_layers\":\"off\",\"scrolleffect_static_layers\":\"off\",\"scrolleffect_static_parallax_layers\":\"off\",\"scrolleffect_direction\":\"both\",\"scrolleffect_tilt\":\"30\",\"scrolleffect_multiplicator\":\"1.3\",\"scrolleffect_multiplicator_layers\":\"1.3\",\"scrolleffect_off_mobile\":\"on\",\"lazy_load_type\":\"none\",\"simplify_ie8_ios4\":\"off\",\"show_alternative_type\":\"off\",\"allow_android_html5_autoplay\":\"on\",\"show_alternate_image\":\"\",\"ignore_height_changes\":\"off\",\"ignore_height_changes_px\":\"0\",\"jquery_noconflict\":\"off\",\"js_to_body\":\"false\",\"output_type\":\"none\",\"jquery_debugmode\":\"off\",\"custom_css\":\"\",\"custom_javascript\":\"\"}', '{\"version\":5}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_slides`
--

CREATE TABLE `wp_revslider_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `layers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`, `settings`) VALUES
(2, 1, 2, '{\"background_type\":\"image\",\"rs-gallery-type\":\"gallery\",\"bg_external\":\"\",\"bg_color\":\"#E7E7E7\",\"slide_bg_youtube\":\"\",\"slide_bg_vimeo\":\"\",\"slide_bg_html_mpeg\":\"\",\"slide_bg_html_webm\":\"\",\"slide_bg_html_ogv\":\"\",\"image_source_type\":\"full\",\"alt_option\":\"media_library\",\"alt_attr\":\"\",\"ext_width\":\"1920\",\"ext_height\":\"1080\",\"title_option\":\"media_library\",\"title_attr\":\"\",\"video_force_cover\":\"on\",\"video_dotted_overlay\":\"none\",\"video_ratio\":\"16:9\",\"video_start_at\":\"\",\"video_end_at\":\"\",\"video_loop\":\"none\",\"video_nextslide\":\"off\",\"video_force_rewind\":\"on\",\"video_mute\":\"on\",\"video_volume\":\"100\",\"video_speed\":\"1\",\"video_arguments\":\"hd=1&wmode=opaque&showinfo=0&rel=0;\",\"video_arguments_vim\":\"title=0&byline=0&portrait=0&api=1\",\"bg_fit\":\"cover\",\"bg_fit_x\":\"100\",\"bg_fit_y\":\"100\",\"bg_position\":\"center center\",\"bg_position_x\":\"0\",\"bg_position_y\":\"0\",\"bg_repeat\":\"no-repeat\",\"media-filter-type\":\"none\",\"kenburn_effect\":\"off\",\"kb_start_fit\":\"100\",\"kb_end_fit\":\"100\",\"kb_start_offset_x\":\"0\",\"kb_end_offset_x\":\"0\",\"kb_start_offset_y\":\"0\",\"kb_end_offset_y\":\"0\",\"kb_start_rotate\":\"0\",\"kb_end_rotate\":\"0\",\"kb_blur_start\":\"0\",\"kb_blur_end\":\"0\",\"kb_easing\":\"Linear.easeNone\",\"kb_duration\":\"10000\",\"image_id\":\"78\",\"title\":\"Slide\",\"delay\":\"0\",\"stoponpurpose\":\"false\",\"invisibleslide\":\"false\",\"state\":\"published\",\"hideslideafter\":\"0\",\"hideslideonmobile\":\"off\",\"date_from\":\"\",\"date_to\":\"\",\"save_performance\":\"off\",\"slide_thumb\":\"\",\"0\":\"Remove\",\"thumb_dimension\":\"slider\",\"thumb_for_admin\":\"off\",\"slide_transition\":[\"fade\"],\"slot_amount\":[\"default\"],\"transition_rotation\":[\"0\"],\"transition_duration\":[\"300\"],\"transition_ease_in\":[\"default\"],\"transition_ease_out\":[\"default\"],\"ph-round-arrows-bg-color-custom-slide\":\"off\",\"ph-round-arrows-bg-color-custom\":\"0,0,0,0.5\",\"ph-round-arrows-bg-size-custom-slide\":\"off\",\"ph-round-arrows-bg-size-custom\":\"40\",\"ph-round-arrows-arrow-color-color-slide\":\"off\",\"ph-round-arrows-arrow-color-color\":\"#ffffff\",\"ph-round-arrows-arrow-size-custom-slide\":\"off\",\"ph-round-arrows-arrow-size-custom\":\"20\",\"ph-round-arrows-hover-bg-color-color-rgba-slide\":\"off\",\"ph-round-arrows-hover-bg-color-color-rgba\":\"#000000\",\"ph-round-bullets-bullet-size-custom-slide\":\"off\",\"ph-round-bullets-bullet-size-custom\":\"12\",\"ph-round-bullets-bullet-bg-top-color-slide\":\"off\",\"ph-round-bullets-bullet-bg-top-color\":\"#999999\",\"ph-round-bullets-bullet-bg-bottom-color-slide\":\"off\",\"ph-round-bullets-bullet-bg-bottom-color\":\"#e1e1e1\",\"ph-round-bullets-border-color-color-slide\":\"off\",\"ph-round-bullets-border-color-color\":\"#e5e5e5\",\"ph-round-bullets-border-size-custom-slide\":\"off\",\"ph-round-bullets-border-size-custom\":\"3\",\"ph-round-bullets-hover-bullet-bg-color-slide\":\"off\",\"ph-round-bullets-hover-bullet-bg-color\":\"#666666\",\"ph-round-tabs-font-family-font_family-slide\":\"off\",\"ph-round-tabs-font-family-font_family\":\"Roboto\",\"ph-round-tabs-border-color-color-rgba-slide\":\"off\",\"ph-round-tabs-border-color-color-rgba\":\"#e5e5e5\",\"ph-round-tabs-border-size-custom-slide\":\"off\",\"ph-round-tabs-border-size-custom\":\"1\",\"ph-round-tabs-image-size-custom-slide\":\"off\",\"ph-round-tabs-image-size-custom\":\"60\",\"ph-round-tabs-param1-color-color-rgba-slide\":\"off\",\"ph-round-tabs-param1-color-color-rgba\":\"rgba(51,51,51,0.5)\",\"ph-round-tabs-param1-size-custom-slide\":\"off\",\"ph-round-tabs-param1-size-custom\":\"12\",\"ph-round-tabs-hover-bg-color-color-rgba-slide\":\"off\",\"ph-round-tabs-hover-bg-color-color-rgba\":\"#eeeeee\",\"ph-round-tabs-bgcolor-color-rgba-slide\":\"off\",\"ph-round-tabs-bgcolor-color-rgba\":\"rgba(0,0,0,0)\",\"ph-round-tabs-contentcolor-color-rgba-slide\":\"off\",\"ph-round-tabs-contentcolor-color-rgba\":\"#333333\",\"ph-round-tabs-param2-color-color-rgba-slide\":\"off\",\"ph-round-tabs-param2-color-color-rgba\":\"transparent\",\"ph-round-tabs-param2-size-custom-slide\":\"off\",\"ph-round-tabs-param2-size-custom\":\"14\",\"ph-round-thumbs-title-bg-color-rgba-slide\":\"off\",\"ph-round-thumbs-title-bg-color-rgba\":\"rgba(0,0,0,0.85)\",\"ph-round-thumbs-title-color-color-rgba-slide\":\"off\",\"ph-round-thumbs-title-color-color-rgba\":\"#ffffff\",\"ph-round-thumbs-title-font-size-custom-slide\":\"off\",\"ph-round-thumbs-title-font-size-custom\":\"12\",\"params_1\":\"\",\"params_1_chars\":\"10\",\"params_2\":\"\",\"params_2_chars\":\"10\",\"params_3\":\"\",\"params_3_chars\":\"10\",\"params_4\":\"\",\"params_4_chars\":\"10\",\"params_5\":\"\",\"params_5_chars\":\"10\",\"params_6\":\"\",\"params_6_chars\":\"10\",\"params_7\":\"\",\"params_7_chars\":\"10\",\"params_8\":\"\",\"params_8_chars\":\"10\",\"params_9\":\"\",\"params_9_chars\":\"10\",\"params_10\":\"\",\"params_10_chars\":\"10\",\"slide_description\":\"\",\"class_attr\":\"\",\"id_attr\":\"\",\"data_attr\":\"\",\"enable_link\":\"false\",\"link_type\":\"regular\",\"link\":\"\",\"link_open_in\":\"same\",\"slide_link\":\"nothing\",\"link_pos\":\"front\",\"slide_bg_color\":\"#E7E7E7\",\"slide_bg_external\":\"\",\"image\":\"http:\\/\\/localhost\\/seeds\\/wp-content\\/uploads\\/2018\\/11\\/FreeGreatPicture.com-2848-high-definition-material-strawberry.jpg\",\"0\":\"Remove\"}', '[]', '\"\"'),
(3, 1, 1, '{\"background_type\":\"image\",\"rs-gallery-type\":\"gallery\",\"bg_external\":\"\",\"bg_color\":\"#E7E7E7\",\"slide_bg_youtube\":\"\",\"slide_bg_vimeo\":\"\",\"slide_bg_html_mpeg\":\"\",\"slide_bg_html_webm\":\"\",\"slide_bg_html_ogv\":\"\",\"image_source_type\":\"full\",\"alt_option\":\"media_library\",\"alt_attr\":\"\",\"ext_width\":\"1920\",\"ext_height\":\"1080\",\"title_option\":\"media_library\",\"title_attr\":\"\",\"video_force_cover\":\"on\",\"video_dotted_overlay\":\"none\",\"video_ratio\":\"16:9\",\"video_start_at\":\"\",\"video_end_at\":\"\",\"video_loop\":\"none\",\"video_nextslide\":\"off\",\"video_force_rewind\":\"on\",\"video_mute\":\"on\",\"video_volume\":\"100\",\"video_speed\":\"1\",\"video_arguments\":\"hd=1&wmode=opaque&showinfo=0&rel=0;\",\"video_arguments_vim\":\"title=0&byline=0&portrait=0&api=1\",\"bg_fit\":\"cover\",\"bg_fit_x\":\"100\",\"bg_fit_y\":\"100\",\"bg_position\":\"center center\",\"bg_position_x\":\"0\",\"bg_position_y\":\"0\",\"bg_repeat\":\"no-repeat\",\"media-filter-type\":\"none\",\"kenburn_effect\":\"off\",\"kb_start_fit\":\"100\",\"kb_end_fit\":\"100\",\"kb_start_offset_x\":\"0\",\"kb_end_offset_x\":\"0\",\"kb_start_offset_y\":\"0\",\"kb_end_offset_y\":\"0\",\"kb_start_rotate\":\"0\",\"kb_end_rotate\":\"0\",\"kb_blur_start\":\"0\",\"kb_blur_end\":\"0\",\"kb_easing\":\"Linear.easeNone\",\"kb_duration\":\"10000\",\"image_id\":\"79\",\"title\":\"Slide\",\"delay\":\"0\",\"stoponpurpose\":\"false\",\"invisibleslide\":\"false\",\"state\":\"published\",\"hideslideafter\":\"0\",\"hideslideonmobile\":\"off\",\"date_from\":\"\",\"date_to\":\"\",\"save_performance\":\"off\",\"slide_thumb\":\"\",\"0\":\"Remove\",\"thumb_dimension\":\"slider\",\"thumb_for_admin\":\"off\",\"slide_transition\":[\"slotzoom-vertical\"],\"slot_amount\":[\"default\"],\"transition_rotation\":[\"0\"],\"transition_duration\":[\"500\"],\"transition_ease_in\":[\"default\"],\"transition_ease_out\":[\"default\"],\"ph-round-arrows-bg-color-custom-slide\":\"on\",\"ph-round-arrows-bg-color-custom\":\"0,0,0,0.5\",\"ph-round-arrows-bg-size-custom-slide\":\"on\",\"ph-round-arrows-bg-size-custom\":\"40\",\"ph-round-arrows-arrow-color-color-slide\":\"on\",\"ph-round-arrows-arrow-color-color\":\"#4cd964\",\"ph-round-arrows-arrow-size-custom-slide\":\"on\",\"ph-round-arrows-arrow-size-custom\":\"20\",\"ph-round-arrows-hover-bg-color-color-rgba-slide\":\"on\",\"ph-round-arrows-hover-bg-color-color-rgba\":\"#000000\",\"ph-round-bullets-bullet-size-custom-slide\":\"off\",\"ph-round-bullets-bullet-size-custom\":\"12\",\"ph-round-bullets-bullet-bg-top-color-slide\":\"off\",\"ph-round-bullets-bullet-bg-top-color\":\"#999999\",\"ph-round-bullets-bullet-bg-bottom-color-slide\":\"off\",\"ph-round-bullets-bullet-bg-bottom-color\":\"#e1e1e1\",\"ph-round-bullets-border-color-color-slide\":\"off\",\"ph-round-bullets-border-color-color\":\"#e5e5e5\",\"ph-round-bullets-border-size-custom-slide\":\"off\",\"ph-round-bullets-border-size-custom\":\"3\",\"ph-round-bullets-hover-bullet-bg-color-slide\":\"off\",\"ph-round-bullets-hover-bullet-bg-color\":\"#666666\",\"ph-round-tabs-font-family-font_family-slide\":\"off\",\"ph-round-tabs-font-family-font_family\":\"Roboto\",\"ph-round-tabs-border-color-color-rgba-slide\":\"off\",\"ph-round-tabs-border-color-color-rgba\":\"#e5e5e5\",\"ph-round-tabs-border-size-custom-slide\":\"off\",\"ph-round-tabs-border-size-custom\":\"1\",\"ph-round-tabs-image-size-custom-slide\":\"off\",\"ph-round-tabs-image-size-custom\":\"60\",\"ph-round-tabs-param1-color-color-rgba-slide\":\"off\",\"ph-round-tabs-param1-color-color-rgba\":\"rgba(51,51,51,0.5)\",\"ph-round-tabs-param1-size-custom-slide\":\"off\",\"ph-round-tabs-param1-size-custom\":\"12\",\"ph-round-tabs-hover-bg-color-color-rgba-slide\":\"off\",\"ph-round-tabs-hover-bg-color-color-rgba\":\"#eeeeee\",\"ph-round-tabs-bgcolor-color-rgba-slide\":\"off\",\"ph-round-tabs-bgcolor-color-rgba\":\"rgba(0,0,0,0)\",\"ph-round-tabs-contentcolor-color-rgba-slide\":\"off\",\"ph-round-tabs-contentcolor-color-rgba\":\"#333333\",\"ph-round-tabs-param2-color-color-rgba-slide\":\"off\",\"ph-round-tabs-param2-color-color-rgba\":\"transparent\",\"ph-round-tabs-param2-size-custom-slide\":\"off\",\"ph-round-tabs-param2-size-custom\":\"14\",\"ph-round-thumbs-title-bg-color-rgba-slide\":\"off\",\"ph-round-thumbs-title-bg-color-rgba\":\"rgba(0,0,0,0.85)\",\"ph-round-thumbs-title-color-color-rgba-slide\":\"off\",\"ph-round-thumbs-title-color-color-rgba\":\"#ffffff\",\"ph-round-thumbs-title-font-size-custom-slide\":\"off\",\"ph-round-thumbs-title-font-size-custom\":\"12\",\"params_1\":\"\",\"params_1_chars\":\"10\",\"params_2\":\"\",\"params_2_chars\":\"10\",\"params_3\":\"\",\"params_3_chars\":\"10\",\"params_4\":\"\",\"params_4_chars\":\"10\",\"params_5\":\"\",\"params_5_chars\":\"10\",\"params_6\":\"\",\"params_6_chars\":\"10\",\"params_7\":\"\",\"params_7_chars\":\"10\",\"params_8\":\"\",\"params_8_chars\":\"10\",\"params_9\":\"\",\"params_9_chars\":\"10\",\"params_10\":\"\",\"params_10_chars\":\"10\",\"slide_description\":\"\",\"class_attr\":\"\",\"id_attr\":\"\",\"data_attr\":\"\",\"enable_link\":\"false\",\"link_type\":\"regular\",\"link\":\"\",\"link_open_in\":\"same\",\"slide_link\":\"nothing\",\"link_pos\":\"front\",\"slide_bg_color\":\"#E7E7E7\",\"slide_bg_external\":\"\",\"image\":\"http:\\/\\/localhost\\/seeds\\/wp-content\\/uploads\\/2018\\/11\\/veeterzy-82538-unsplash.jpg\",\"0\":\"Remove\"}', '[{\"text\":\"OFF 50%\",\"type\":\"text\",\"special_type\":null,\"version\":\"530\",\"frames\":{\"frame_0\":{\"time\":0,\"delay\":0,\"split\":\"none\",\"splitdelay\":\"10\",\"split_extratime\":0,\"speed\":300,\"animation\":\"tp-fade\",\"easing\":\"Power3.easeInOut\",\"text_c\":\"transparent\",\"bg_c\":\"transparent\",\"use_text_c\":false,\"use_bg_c\":false,\"split_direction\":\"forward\",\"sfxcolor\":\"#ffffff\",\"time_relative\":0,\"sfx_effect\":\"\"},\"frame_999\":{\"time\":9000.000305175781,\"delay\":0,\"split\":\"none\",\"splitdelay\":\"10\",\"split_extratime\":0,\"speed\":300,\"animation\":\"\",\"easing\":\"Power3.easeInOut\",\"split_direction\":\"forward\",\"sfxcolor\":\"#ffffff\",\"use_text_c\":false,\"use_bg_c\":false,\"text_c\":\"transparent\",\"bg_c\":\"transparent\",\"time_relative\":8700.000305175781,\"sfx_effect\":\"\"}},\"subtype\":\"\",\"specialsettings\":{},\"unique_id\":1,\"left\":{\"desktop\":0},\"top\":{\"desktop\":0},\"isDemo\":false,\"internal_class\":\"\",\"hover\":false,\"alias\":\"Sale off 10%\",\"layer_bg_position\":\"center center\",\"layer_bg_size\":\"cover\",\"layer_bg_repeat\":\"no-repeat\",\"loop_animation\":\"none\",\"loop_easing\":\"\",\"loop_speed\":\"2\",\"loop_startdeg\":-20,\"loop_enddeg\":20,\"loop_xorigin\":50,\"loop_yorigin\":50,\"loop_xstart\":0,\"loop_xend\":0,\"loop_ystart\":0,\"loop_yend\":0,\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"layer_blend_mode\":\"normal\",\"html_tag\":\"div\",\"mask_start\":false,\"mask_end\":false,\"x_start_reverse\":false,\"y_start_reverse\":false,\"x_end_reverse\":false,\"y_end_reverse\":false,\"x_rotate_start_reverse\":false,\"y_rotate_start_reverse\":false,\"z_rotate_start_reverse\":false,\"x_rotate_end_reverse\":false,\"y_rotate_end_reverse\":false,\"z_rotate_end_reverse\":false,\"scale_x_start_reverse\":false,\"scale_y_start_reverse\":false,\"scale_x_end_reverse\":false,\"scale_y_end_reverse\":false,\"skew_x_start_reverse\":false,\"skew_y_start_reverse\":false,\"skew_x_end_reverse\":false,\"skew_y_end_reverse\":false,\"mask_x_start_reverse\":false,\"mask_y_start_reverse\":false,\"mask_x_end_reverse\":false,\"mask_y_end_reverse\":false,\"mask_x_start\":\"0\",\"mask_y_start\":\"0\",\"mask_speed_start\":\"inherit\",\"mask_ease_start\":\"inherit\",\"mask_x_end\":\"0\",\"mask_y_end\":\"0\",\"mask_speed_end\":\"inherit\",\"mask_ease_end\":\"inherit\",\"alt_option\":\"media_library\",\"alt\":\"\",\"max_height\":{\"desktop\":\"auto\"},\"min_height\":\"40px\",\"max_width\":{\"desktop\":\"781px\"},\"video_width\":{\"desktop\":\"480px\"},\"video_height\":{\"desktop\":\"360px\"},\"2d_rotation\":0,\"2d_origin_x\":50,\"2d_origin_y\":50,\"whitespace\":{\"desktop\":\"nowrap\"},\"display\":\"block\",\"static_start\":\"1\",\"static_end\":\"last\",\"align_hor\":{\"desktop\":\"center\"},\"align_vert\":{\"desktop\":\"middle\"},\"hiddenunder\":false,\"resizeme\":true,\"seo-optimized\":false,\"link\":\"\",\"link_open_in\":\"same\",\"link_follow\":\"follow\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"\",\"visible-desktop\":true,\"visible-notebook\":true,\"visible-tablet\":true,\"visible-mobile\":true,\"resize-full\":true,\"show-on-hover\":false,\"basealign\":\"grid\",\"responsive_offset\":true,\"lazy-load\":\"auto\",\"image-size\":\"auto\",\"css-position\":\"relative\",\"width\":780,\"height\":21,\"cover_mode\":\"custom\",\"static_styles\":{\"font-size\":{\"desktop\":\"180px\"},\"line-height\":{\"desktop\":\"22px\"},\"font-weight\":{\"desktop\":\"800\"},\"color\":{\"desktop\":\"#ffffff\"},\"letter-spacing\":{\"desktop\":\"0\"}},\"margin\":{\"desktop\":[\"0\",\"0\",\"0\",\"0\"]},\"padding\":{\"desktop\":[\"0\",\"0\",\"0\",\"0\"]},\"text-align\":{\"desktop\":\"inherit\"},\"x_start\":\"inherit\",\"y_start\":\"inherit\",\"z_start\":\"inherit\",\"x_end\":\"inherit\",\"y_end\":\"inherit\",\"z_end\":\"inherit\",\"opacity_start\":\"0\",\"opacity_end\":\"0\",\"blurfilter_start\":\"0\",\"blurfilter_end\":\"0\",\"grayscalefilter_start\":\"0\",\"grayscalefilter_end\":\"0\",\"brightnessfilter_start\":\"100\",\"brightnessfilter_end\":\"100\",\"x_rotate_start\":\"inherit\",\"y_rotate_start\":\"inherit\",\"z_rotate_start\":\"inherit\",\"x_rotate_end\":\"inherit\",\"y_rotate_end\":\"inherit\",\"z_rotate_end\":\"inherit\",\"scale_x_start\":\"inherit\",\"scale_y_start\":\"inherit\",\"scale_x_end\":\"inherit\",\"scale_y_end\":\"inherit\",\"skew_x_start\":\"inherit\",\"skew_y_start\":\"inherit\",\"skew_x_end\":\"inherit\",\"skew_y_end\":\"inherit\",\"pers_start\":\"inherit\",\"pers_end\":\"inherit\",\"deformation\":{\"font-family\":\"Poppins\",\"font-style\":\"normal\",\"text-decoration\":\"none\",\"vertical-align\":\"top\",\"text-transform\":\"none\",\"background-color\":\"transparent\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":[\"0\",\"0\",\"0\",\"0\"],\"border-radius\":[\"0\",\"0\",\"0\",\"0\"],\"x\":0,\"y\":0,\"z\":0,\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":0,\"yrotate\":0,\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"pers\":\"600\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"blurfilter\":\"0\",\"grayscalefilter\":\"0\",\"brightnessfilter\":\"100\",\"overflow\":\"visible\",\"parallax\":\"-\"},\"svg\":{\"svgstroke-color\":\"transparent\",\"svgstroke-dasharray\":\"0\",\"svgstroke-dashoffset\":\"0\",\"svgstroke-width\":\"0\",\"svgstroke-hover-color\":\"transparent\",\"svgstroke-hover-dasharray\":\"0\",\"svgstroke-hover-dashoffset\":\"0\",\"svgstroke-hover-width\":\"0\"},\"deformation-hover\":{\"blurfilter\":\"0\",\"grayscalefilter\":\"0\",\"brightnessfilter\":\"100\",\"color\":\"#000000\",\"text-decoration\":\"none\",\"background-color\":\"transparent\",\"border-color\":\"transparent\",\"border-style\":\"none\",\"border-width\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"border-radius\":[\"0px\",\"0px\",\"0px\",\"0px\"],\"x\":0,\"y\":0,\"z\":0,\"skewx\":\"0\",\"skewy\":\"0\",\"scalex\":\"1\",\"scaley\":\"1\",\"opacity\":\"1\",\"xrotate\":0,\"yrotate\":0,\"2d_rotation\":0,\"2d_origin_x\":50,\"2d_origin_y\":50,\"speed\":\"0\",\"zindex\":\"auto\",\"easing\":\"Linear.easeNone\",\"css_cursor\":\"auto\",\"pointer_events\":\"auto\"},\"visible\":true,\"animation_overwrite\":\"wait\",\"trigger_memory\":\"keep\",\"serial\":0,\"endWithSlide\":true,\"p_uid\":-1,\"toggle\":false,\"toggle_use_hover\":false,\"toggle_inverse_content\":false,\"texttoggle\":\"\",\"scaleX\":{\"desktop\":\"\"},\"scaleY\":{\"desktop\":\"\"},\"autolinebreak\":false,\"displaymode\":true,\"scaleProportional\":false,\"attrID\":\"\",\"attrWrapperID\":\"\",\"attrClasses\":\"\",\"attrWrapperClasses\":\"\",\"attrTitle\":\"\",\"attrTabindex\":\"\",\"attrRel\":\"\",\"layer-selectable\":\"default\",\"column_break_at\":\"mobile\",\"zIndex\":5,\"addedToStage\":true,\"layer_action\":{\"tooltip_event\":[],\"action\":[],\"image_link\":[],\"link_open_in\":[],\"link_follow\":[],\"jump_to_slide\":[],\"scrollunder_offset\":[],\"action_easing\":[],\"action_speed\":[],\"actioncallback\":[],\"layer_target\":[],\"link_type\":[],\"action_delay\":[],\"toggle_layer_type\":[],\"toggle_class\":[]},\"parallax_layer_ddd_zlevel\":\"front\"}]', '\"\"'),
(4, 1, 3, '{\"background_type\":\"image\",\"rs-gallery-type\":\"gallery\",\"bg_external\":\"\",\"bg_color\":\"#E7E7E7\",\"slide_bg_youtube\":\"\",\"slide_bg_vimeo\":\"\",\"slide_bg_html_mpeg\":\"\",\"slide_bg_html_webm\":\"\",\"slide_bg_html_ogv\":\"\",\"image_source_type\":\"full\",\"alt_option\":\"media_library\",\"alt_attr\":\"\",\"ext_width\":\"1920\",\"ext_height\":\"1080\",\"title_option\":\"media_library\",\"title_attr\":\"\",\"video_force_cover\":\"on\",\"video_dotted_overlay\":\"none\",\"video_ratio\":\"16:9\",\"video_start_at\":\"\",\"video_end_at\":\"\",\"video_loop\":\"none\",\"video_nextslide\":\"off\",\"video_force_rewind\":\"on\",\"video_mute\":\"on\",\"video_volume\":\"100\",\"video_speed\":\"1\",\"video_arguments\":\"hd=1&wmode=opaque&showinfo=0&rel=0;\",\"video_arguments_vim\":\"title=0&byline=0&portrait=0&api=1\",\"bg_fit\":\"cover\",\"bg_fit_x\":\"100\",\"bg_fit_y\":\"100\",\"bg_position\":\"center center\",\"bg_position_x\":\"0\",\"bg_position_y\":\"0\",\"bg_repeat\":\"no-repeat\",\"media-filter-type\":\"none\",\"kenburn_effect\":\"off\",\"kb_start_fit\":\"100\",\"kb_end_fit\":\"100\",\"kb_start_offset_x\":\"0\",\"kb_end_offset_x\":\"0\",\"kb_start_offset_y\":\"0\",\"kb_end_offset_y\":\"0\",\"kb_start_rotate\":\"0\",\"kb_end_rotate\":\"0\",\"kb_blur_start\":\"0\",\"kb_blur_end\":\"0\",\"kb_easing\":\"Linear.easeNone\",\"kb_duration\":\"10000\",\"image_id\":\"77\",\"title\":\"Slide\",\"delay\":\"0\",\"stoponpurpose\":\"false\",\"invisibleslide\":\"false\",\"state\":\"published\",\"hideslideafter\":\"0\",\"hideslideonmobile\":\"off\",\"date_from\":\"\",\"date_to\":\"\",\"save_performance\":\"off\",\"slide_thumb\":\"\",\"0\":\"Remove\",\"thumb_dimension\":\"slider\",\"thumb_for_admin\":\"off\",\"slide_transition\":[\"fade\"],\"slot_amount\":[\"default\"],\"transition_rotation\":[\"0\"],\"transition_duration\":[\"300\"],\"transition_ease_in\":[\"default\"],\"transition_ease_out\":[\"default\"],\"ph-round-arrows-bg-color-custom-slide\":\"off\",\"ph-round-arrows-bg-color-custom\":\"0,0,0,0.5\",\"ph-round-arrows-bg-size-custom-slide\":\"off\",\"ph-round-arrows-bg-size-custom\":\"40\",\"ph-round-arrows-arrow-color-color-slide\":\"off\",\"ph-round-arrows-arrow-color-color\":\"#ffffff\",\"ph-round-arrows-arrow-size-custom-slide\":\"off\",\"ph-round-arrows-arrow-size-custom\":\"20\",\"ph-round-arrows-hover-bg-color-color-rgba-slide\":\"off\",\"ph-round-arrows-hover-bg-color-color-rgba\":\"#000000\",\"ph-round-bullets-bullet-size-custom-slide\":\"off\",\"ph-round-bullets-bullet-size-custom\":\"12\",\"ph-round-bullets-bullet-bg-top-color-slide\":\"off\",\"ph-round-bullets-bullet-bg-top-color\":\"#999999\",\"ph-round-bullets-bullet-bg-bottom-color-slide\":\"off\",\"ph-round-bullets-bullet-bg-bottom-color\":\"#e1e1e1\",\"ph-round-bullets-border-color-color-slide\":\"off\",\"ph-round-bullets-border-color-color\":\"#e5e5e5\",\"ph-round-bullets-border-size-custom-slide\":\"off\",\"ph-round-bullets-border-size-custom\":\"3\",\"ph-round-bullets-hover-bullet-bg-color-slide\":\"off\",\"ph-round-bullets-hover-bullet-bg-color\":\"#666666\",\"ph-round-tabs-font-family-font_family-slide\":\"off\",\"ph-round-tabs-font-family-font_family\":\"Roboto\",\"ph-round-tabs-border-color-color-rgba-slide\":\"off\",\"ph-round-tabs-border-color-color-rgba\":\"#e5e5e5\",\"ph-round-tabs-border-size-custom-slide\":\"off\",\"ph-round-tabs-border-size-custom\":\"1\",\"ph-round-tabs-image-size-custom-slide\":\"off\",\"ph-round-tabs-image-size-custom\":\"60\",\"ph-round-tabs-param1-color-color-rgba-slide\":\"off\",\"ph-round-tabs-param1-color-color-rgba\":\"rgba(51,51,51,0.5)\",\"ph-round-tabs-param1-size-custom-slide\":\"off\",\"ph-round-tabs-param1-size-custom\":\"12\",\"ph-round-tabs-hover-bg-color-color-rgba-slide\":\"off\",\"ph-round-tabs-hover-bg-color-color-rgba\":\"#eeeeee\",\"ph-round-tabs-bgcolor-color-rgba-slide\":\"off\",\"ph-round-tabs-bgcolor-color-rgba\":\"rgba(0,0,0,0)\",\"ph-round-tabs-contentcolor-color-rgba-slide\":\"off\",\"ph-round-tabs-contentcolor-color-rgba\":\"#333333\",\"ph-round-tabs-param2-color-color-rgba-slide\":\"off\",\"ph-round-tabs-param2-color-color-rgba\":\"transparent\",\"ph-round-tabs-param2-size-custom-slide\":\"off\",\"ph-round-tabs-param2-size-custom\":\"14\",\"ph-round-thumbs-title-bg-color-rgba-slide\":\"off\",\"ph-round-thumbs-title-bg-color-rgba\":\"rgba(0,0,0,0.85)\",\"ph-round-thumbs-title-color-color-rgba-slide\":\"off\",\"ph-round-thumbs-title-color-color-rgba\":\"#ffffff\",\"ph-round-thumbs-title-font-size-custom-slide\":\"off\",\"ph-round-thumbs-title-font-size-custom\":\"12\",\"params_1\":\"\",\"params_1_chars\":\"10\",\"params_2\":\"\",\"params_2_chars\":\"10\",\"params_3\":\"\",\"params_3_chars\":\"10\",\"params_4\":\"\",\"params_4_chars\":\"10\",\"params_5\":\"\",\"params_5_chars\":\"10\",\"params_6\":\"\",\"params_6_chars\":\"10\",\"params_7\":\"\",\"params_7_chars\":\"10\",\"params_8\":\"\",\"params_8_chars\":\"10\",\"params_9\":\"\",\"params_9_chars\":\"10\",\"params_10\":\"\",\"params_10_chars\":\"10\",\"slide_description\":\"\",\"class_attr\":\"\",\"id_attr\":\"\",\"data_attr\":\"\",\"enable_link\":\"false\",\"link_type\":\"regular\",\"link\":\"\",\"link_open_in\":\"same\",\"slide_link\":\"nothing\",\"link_pos\":\"front\",\"slide_bg_color\":\"#E7E7E7\",\"slide_bg_external\":\"\",\"image\":\"http:\\/\\/localhost\\/seeds\\/wp-content\\/uploads\\/2018\\/11\\/1920x1200-1174691-vegetables.jpg\"}', '[]', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_static_slides`
--

CREATE TABLE `wp_revslider_static_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `layers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_revslider_static_slides`
--

INSERT INTO `wp_revslider_static_slides` (`id`, `slider_id`, `params`, `layers`, `settings`) VALUES
(1, 1, '{\"background_type\":\"trans\"}', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'display_type', ''),
(2, 15, 'thumbnail_id', '57'),
(3, 15, 'product_count_product_cat', '11'),
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '94'),
(7, 18, 'product_count_product_cat', '9'),
(8, 19, 'order', '0'),
(9, 19, 'display_type', ''),
(10, 19, 'thumbnail_id', '78'),
(11, 19, 'product_count_product_cat', '10'),
(12, 20, 'order', '0'),
(13, 20, 'display_type', ''),
(14, 20, 'thumbnail_id', '141'),
(15, 20, 'product_count_product_cat', '9'),
(16, 21, 'order', '0'),
(17, 21, 'display_type', ''),
(18, 21, 'thumbnail_id', '155'),
(19, 21, 'product_count_product_cat', '9');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Herb', 'herb', 0),
(16, 'Primary menu', 'primary-menu', 0),
(17, 'text_input', 'text_input', 0),
(18, 'Flowers', 'flowers', 0),
(19, 'Fruit', 'fruit', 0),
(20, 'Gardening Supplies', 'gardening-supplies', 0),
(21, 'Vegetables', 'vegetables', 0),
(22, 'Reserved Stock', 'reserved-stock', 0),
(23, 'Customer Returns', 'customer-returns', 0),
(24, 'Warehouse Damage', 'warehouse-damage', 0),
(25, 'Lost in Post', 'lost-in-post', 0),
(26, 'Other', 'other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 16, 0),
(16, 16, 0),
(17, 16, 0),
(18, 16, 0),
(20, 2, 0),
(20, 13, 0),
(20, 15, 0),
(27, 16, 0),
(31, 16, 0),
(35, 17, 0),
(38, 16, 0),
(44, 2, 0),
(44, 15, 0),
(48, 17, 0),
(49, 17, 0),
(50, 17, 0),
(53, 16, 0),
(58, 2, 0),
(58, 15, 0),
(59, 2, 0),
(59, 15, 0),
(61, 2, 0),
(61, 15, 0),
(63, 2, 0),
(63, 15, 0),
(67, 2, 0),
(67, 15, 0),
(69, 2, 0),
(69, 15, 0),
(71, 2, 0),
(71, 15, 0),
(73, 2, 0),
(73, 15, 0),
(75, 2, 0),
(75, 15, 0),
(80, 2, 0),
(80, 18, 0),
(82, 2, 0),
(82, 18, 0),
(84, 2, 0),
(84, 18, 0),
(87, 2, 0),
(87, 18, 0),
(89, 2, 0),
(89, 18, 0),
(91, 2, 0),
(91, 18, 0),
(93, 2, 0),
(93, 18, 0),
(95, 2, 0),
(95, 18, 0),
(97, 2, 0),
(97, 18, 0),
(101, 2, 0),
(101, 19, 0),
(103, 2, 0),
(103, 19, 0),
(106, 2, 0),
(106, 19, 0),
(108, 2, 0),
(108, 19, 0),
(110, 2, 0),
(110, 19, 0),
(112, 2, 0),
(112, 19, 0),
(114, 2, 0),
(114, 19, 0),
(116, 2, 0),
(116, 19, 0),
(118, 2, 0),
(118, 19, 0),
(120, 2, 0),
(120, 19, 0),
(123, 2, 0),
(123, 20, 0),
(126, 2, 0),
(126, 20, 0),
(128, 2, 0),
(128, 20, 0),
(130, 2, 0),
(130, 20, 0),
(132, 2, 0),
(132, 20, 0),
(134, 2, 0),
(134, 20, 0),
(136, 2, 0),
(136, 20, 0),
(138, 2, 0),
(138, 13, 0),
(138, 20, 0),
(140, 2, 0),
(140, 20, 0),
(142, 2, 0),
(142, 21, 0),
(144, 2, 0),
(144, 21, 0),
(146, 2, 0),
(146, 21, 0),
(148, 2, 0),
(148, 21, 0),
(150, 2, 0),
(150, 21, 0),
(152, 2, 0),
(152, 21, 0),
(154, 2, 0),
(154, 21, 0),
(156, 2, 0),
(156, 21, 0),
(158, 2, 0),
(158, 21, 0),
(169, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 48),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 2),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 11),
(16, 16, 'nav_menu', '', 0, 9),
(17, 17, 'option_type', '', 0, 1),
(18, 18, 'product_cat', '', 0, 9),
(19, 19, 'product_cat', '', 0, 10),
(20, 20, 'product_cat', '', 0, 9),
(21, 21, 'product_cat', '', 0, 9),
(22, 22, 'atum_log_type', '', 0, 0),
(23, 23, 'atum_log_type', '', 0, 0),
(24, 24, 'atum_log_type', '', 0, 0),
(25, 25, 'atum_log_type', '', 0, 0),
(26, 26, 'atum_log_type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Quynh'),
(3, 1, 'last_name', 'Cao'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,vc_pointers_backend_editor,theme_editor_notice,atum-stock-central-screen-tab,atum-stock-central-help-tab'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"7541f12e4fd00008946b49665959a292ffd72a1ede30685cf5737ec7aed2a9ec\";a:4:{s:10:\"expiration\";i:1542175605;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1542002805;}s:64:\"d4b561479fdba15478e93bd9cec20ca994b79a5467790cfd821b42a686319903\";a:4:{s:10:\"expiration\";i:1542192161;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1542019361;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '176'),
(19, 1, 'wc_last_active', '1541980800'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&edit_element_vcUIPanelWidth=954&edit_element_vcUIPanelLeft=447px&edit_element_vcUIPanelTop=73px&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1542020878'),
(24, 1, 'closedpostboxes_page', 'a:1:{i:0;s:21:\"mymetabox_revslider_0\";}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(30, 2, 'nickname', 'nthz'),
(31, 2, 'first_name', ''),
(32, 2, 'last_name', ''),
(33, 2, 'description', ''),
(34, 2, 'rich_editing', 'true'),
(35, 2, 'syntax_highlighting', 'true'),
(36, 2, 'comment_shortcuts', 'false'),
(37, 2, 'admin_color', 'fresh'),
(38, 2, 'use_ssl', '0'),
(39, 2, 'show_admin_bar_front', 'true'),
(40, 2, 'locale', ''),
(41, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(42, 2, 'wp_user_level', '0'),
(43, 2, 'default_password_nag', '1'),
(45, 3, 'nickname', 'quynh'),
(46, 3, 'first_name', ''),
(47, 3, 'last_name', ''),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(57, 3, 'wp_user_level', '0'),
(59, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(60, 3, 'wc_last_active', '1541203200'),
(62, 4, 'nickname', 'CQuynh'),
(63, 4, 'first_name', ''),
(64, 4, 'last_name', ''),
(65, 4, 'description', ''),
(66, 4, 'rich_editing', 'true'),
(67, 4, 'syntax_highlighting', 'true'),
(68, 4, 'comment_shortcuts', 'false'),
(69, 4, 'admin_color', 'fresh'),
(70, 4, 'use_ssl', '0'),
(71, 4, 'show_admin_bar_front', 'true'),
(72, 4, 'locale', ''),
(73, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(74, 4, 'wp_user_level', '0'),
(75, 4, 'default_password_nag', '1'),
(77, 1, 'closedpostboxes_product', 'a:1:{i:0;s:21:\"mymetabox_revslider_0\";}'),
(78, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(80, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:77:\"woocommerce-product-data,postcustom,slugdiv,mymetabox_revslider_0,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(81, 1, 'screen_layout_product', '2'),
(83, 1, 'last_update', '1542004719'),
(84, 1, 'billing_first_name', 'Quynh'),
(85, 1, 'billing_last_name', 'Cao'),
(86, 1, 'billing_address_1', 'HN'),
(87, 1, 'billing_address_2', 'HN'),
(88, 1, 'billing_city', 'hn'),
(89, 1, 'billing_postcode', 'HNUI'),
(90, 1, 'billing_country', 'VN'),
(91, 1, 'billing_email', 'quynhquynh.hn1997@gmail.com'),
(92, 1, 'billing_phone', '0987654321'),
(93, 1, 'shipping_first_name', 'Quynh'),
(94, 1, 'shipping_last_name', 'Cao'),
(95, 1, 'shipping_address_1', 'HN'),
(96, 1, 'shipping_address_2', 'HN'),
(97, 1, 'shipping_city', 'hn'),
(98, 1, 'shipping_postcode', 'HNUI'),
(99, 1, 'shipping_country', 'VN'),
(100, 1, 'shipping_method', 'a:1:{i:0;s:14:\"local_pickup:2\";}'),
(102, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(104, 1, 'atum_dashboard_widgets_layout', 'a:8:{s:22:\"atum_statistics_widget\";a:5:{s:1:\"x\";i:0;s:1:\"y\";i:0;s:5:\"width\";i:12;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:17:\"atum_sales_widget\";a:5:{s:1:\"x\";i:0;s:1:\"y\";i:5;s:5:\"width\";i:3;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:22:\"atum_lost_sales_widget\";a:5:{s:1:\"x\";i:3;s:1:\"y\";i:5;s:5:\"width\";i:3;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:18:\"atum_orders_widget\";a:5:{s:1:\"x\";i:6;s:1:\"y\";i:5;s:5:\"width\";i:3;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:23:\"atum_promo_sales_widget\";a:5:{s:1:\"x\";i:9;s:1:\"y\";i:5;s:5:\"width\";i:3;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:25:\"atum_stock_control_widget\";a:5:{s:1:\"x\";i:0;s:1:\"y\";i:10;s:5:\"width\";i:6;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:16:\"atum_news_widget\";a:5:{s:1:\"x\";i:6;s:1:\"y\";i:10;s:5:\"width\";i:6;s:6:\"height\";i:4;s:10:\"min-height\";i:5;}s:18:\"atum_videos_widget\";a:5:{s:1:\"x\";i:0;s:1:\"y\";i:15;s:5:\"width\";i:12;s:6:\"height\";i:5;s:10:\"min-height\";i:7;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMRJWJ.nC0FFrLyedS3lMTgWGxUqte0', 'admin', 'quynhquynh.hn1997@gmail.com', '', '2018-11-01 14:21:31', '', 0, 'admin'),
(2, 'nthz', '$P$BCLrS/0TU5266awyWmNwXHP6K0oQ2.0', 'nthz', 'nthz@gmail.com', '', '2018-11-03 07:26:43', '1541230017:$P$BWSKsU4PaPHk7bwZLtUZRJTOS/iJpZ0', 0, 'nthz'),
(3, 'quynh', '$P$BwDhWbXvEESr9x4UrHrpNNs0qK.qif0', 'quynh', 'quynh@gmail.com', '', '2018-11-03 07:36:37', '', 0, 'quynh'),
(4, 'CQuynh', '$P$BGhlzAIK/Thz4mFK3f2B/5ltsDGBAa0', 'cquynh', 'quynhquynh@gmail.com', '', '2018-11-03 07:38:48', '1541230789:$P$BE/gy/MVLF7GyvaeDOn/7mLRia8gfv.', 0, 'CQuynh');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '20'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '6'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '432'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '432'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '20'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '5'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '360'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '360'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 2, '_uni_cpo_weight', '24'),
(20, 2, '_uni_custom_item_image', '21'),
(21, 3, '_product_id', '20'),
(22, 3, '_variation_id', '0'),
(23, 3, '_qty', '5'),
(24, 3, '_tax_class', ''),
(25, 3, '_line_subtotal', '8640'),
(26, 3, '_line_subtotal_tax', '0'),
(27, 3, '_line_total', '8640'),
(28, 3, '_line_tax', '0'),
(29, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(30, 3, '_uni_cpo_weight', '24'),
(31, 3, '_uni_custom_item_image', '21'),
(32, 4, '_product_id', '44'),
(33, 4, '_variation_id', '0'),
(34, 4, '_qty', '1'),
(35, 4, '_tax_class', ''),
(36, 4, '_line_subtotal', '23'),
(37, 4, '_line_subtotal_tax', '0'),
(38, 4, '_line_total', '23'),
(39, 4, '_line_tax', '0'),
(40, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(41, 5, '_product_id', '138'),
(42, 5, '_variation_id', '0'),
(43, 5, '_qty', '1'),
(44, 5, '_tax_class', ''),
(45, 5, '_line_subtotal', '80'),
(46, 5, '_line_subtotal_tax', '0'),
(47, 5, '_line_total', '80'),
(48, 5, '_line_tax', '0'),
(49, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(50, 6, 'method_id', 'local_pickup'),
(51, 6, 'instance_id', '2'),
(52, 6, 'cost', '0.00'),
(53, 6, 'total_tax', '0'),
(54, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(55, 6, 'Items', 'Cilantro, Calypso &times; 6, Cilantro, Calypso &times; 5, Cilantro, Calypso &times; 5, Chives, Garlic Organic &times; 1, XL Pro Series Cage - Red &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Cilantro, Calypso', 'line_item', 177),
(2, 'Cilantro, Calypso', 'line_item', 177),
(3, 'Cilantro, Calypso', 'line_item', 177),
(4, 'Chives, Garlic Organic', 'line_item', 177),
(5, 'XL Pro Series Cage - Red', 'line_item', 177),
(6, 'Local pickup', 'shipping', 177);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(27, '1', 'a:13:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:794:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-11-12T06:38:39+00:00\";s:8:\"postcode\";s:4:\"HNUI\";s:4:\"city\";s:2:\"hn\";s:9:\"address_1\";s:2:\"HN\";s:7:\"address\";s:2:\"HN\";s:9:\"address_2\";s:2:\"HN\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:4:\"HNUI\";s:13:\"shipping_city\";s:2:\"hn\";s:18:\"shipping_address_1\";s:2:\"HN\";s:16:\"shipping_address\";s:2:\"HN\";s:18:\"shipping_address_2\";s:2:\"HN\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"Quynh\";s:9:\"last_name\";s:3:\"Cao\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"0987654321\";s:5:\"email\";s:27:\"quynhquynh.hn1997@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Quynh\";s:18:\"shipping_last_name\";s:3:\"Cao\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"shipping_for_package_0\";s:947:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_9083f6547b4b87d249591e4a069493a0\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"35.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:155:\"Cilantro, Calypso &times; 6, Cilantro, Calypso &times; 5, Cilantro, Calypso &times; 5, Chives, Garlic Organic &times; 1, XL Pro Series Cage - Red &times; 1\";}}s:14:\"local_pickup:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:14:\"local_pickup:2\";s:9:\"method_id\";s:12:\"local_pickup\";s:11:\"instance_id\";i:2;s:5:\"label\";s:12:\"Local pickup\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:155:\"Cilantro, Calypso &times; 6, Cilantro, Calypso &times; 5, Cilantro, Calypso &times; 5, Chives, Garlic Organic &times; 1, XL Pro Series Cage - Red &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:65:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;s:14:\"local_pickup:2\";}}\";s:23:\"chosen_shipping_methods\";s:32:\"a:1:{i:0;s:14:\"local_pickup:2\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";s:22:\"order_awaiting_payment\";N;}', 1542175624);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Viet Nam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(1, 2, 'local_pickup', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(1, 20, 1, 1, 1, '2018-11-02 08:00:20'),
(2, 44, 1, 1, 1, '2018-11-02 23:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`) VALUES
(1, 1, '', '', 'OKMSWLA3I7B6', 0, 1, '2018-11-02 15:00:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_atum_log_itemmeta`
--
ALTER TABLE `wp_atum_log_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `log_item_id` (`log_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_atum_log_items`
--
ALTER TABLE `wp_atum_log_items`
  ADD PRIMARY KEY (`log_item_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `wp_atum_order_itemmeta`
--
ALTER TABLE `wp_atum_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `order_item_id` (`order_item_id`);

--
-- Indexes for table `wp_atum_order_items`
--
ALTER TABLE `wp_atum_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `log_id` (`order_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_revslider_navigations`
--
ALTER TABLE `wp_revslider_navigations`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_atum_log_itemmeta`
--
ALTER TABLE `wp_atum_log_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_atum_log_items`
--
ALTER TABLE `wp_atum_log_items`
  MODIFY `log_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_atum_order_itemmeta`
--
ALTER TABLE `wp_atum_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_atum_order_items`
--
ALTER TABLE `wp_atum_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2161;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2272;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_revslider_navigations`
--
ALTER TABLE `wp_revslider_navigations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
