-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 21 déc. 2019 à 21:41
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projet_wordpress', 'yes'),
(2, 'home', 'http://localhost/projet_wordpress', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'laurent.tomy@laposte.net', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"C:\\wamp64\\www\\projet_wordpress/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'themes/my-theme', 'yes'),
(41, 'stylesheet', 'themes/my-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '2', 'yes'),
(84, 'page_on_front', '15', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:5:{i:1576963721;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1577006920;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577006953;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577006955;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573897643;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(157, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576954509;s:7:\"checked\";a:4:{s:15:\"themes/my-theme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(311, '_site_transient_timeout_theme_roots', '1576956307', 'no'),
(312, '_site_transient_theme_roots', 'a:4:{s:15:\"themes/my-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(313, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576954510;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(156, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1576954485;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(290, 'category_children', 'a:0:{}', 'yes'),
(180, 'theme_mods_themes/my-theme', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:8:\"nav_main\";i:4;}}', 'yes'),
(181, 'current_theme', 'My theme', 'yes'),
(182, 'theme_switched', '', 'yes'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(231, 'acf_version', '5.8.7', 'yes'),
(309, '_transient_timeout_acf_plugin_updates', '1577127287', 'no'),
(310, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.7\";}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(64, 37, '_menu_item_object', 'page'),
(63, 37, '_menu_item_object_id', '2'),
(62, 37, '_menu_item_menu_item_parent', '0'),
(61, 37, '_menu_item_type', 'post_type'),
(7, 6, '_edit_lock', '1573310213:1'),
(12, 6, '_wp_trash_meta_status', 'publish'),
(13, 6, '_wp_trash_meta_time', '1574457225'),
(14, 6, '_wp_desired_post_slug', 'om-lyon-a-guichets-fermes'),
(15, 11, '_edit_lock', '1574457484:1'),
(16, 13, '_edit_lock', '1574457566:1'),
(17, 15, '_edit_lock', '1576959595:1'),
(18, 17, '_edit_lock', '1576061177:1'),
(19, 19, '_edit_lock', '1575986520:1'),
(20, 21, '_edit_lock', '1574457699:1'),
(21, 23, '_edit_lock', '1574457716:1'),
(22, 25, '_menu_item_type', 'custom'),
(23, 25, '_menu_item_menu_item_parent', '0'),
(24, 25, '_menu_item_object_id', '25'),
(25, 25, '_menu_item_object', 'custom'),
(26, 25, '_menu_item_target', ''),
(27, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 25, '_menu_item_xfn', ''),
(29, 25, '_menu_item_url', 'http://localhost/projet_wordpress/wp-admin/post.php?post=17&action=edit'),
(244, 15, '_liste_gauche_1_horaire', 'field_5df00acdcfa10'),
(31, 26, '_menu_item_type', 'custom'),
(32, 26, '_menu_item_menu_item_parent', '0'),
(33, 26, '_menu_item_object_id', '26'),
(34, 26, '_menu_item_object', 'custom'),
(35, 26, '_menu_item_target', ''),
(36, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 26, '_menu_item_xfn', ''),
(38, 26, '_menu_item_url', 'http://localhost/projet_wordpress/wp-admin/post.php?post=17&action=edit'),
(40, 27, '_menu_item_type', 'custom'),
(41, 27, '_menu_item_menu_item_parent', '0'),
(42, 27, '_menu_item_object_id', '27'),
(43, 27, '_menu_item_object', 'custom'),
(44, 27, '_menu_item_target', ''),
(45, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 27, '_menu_item_xfn', ''),
(47, 27, '_menu_item_url', 'http://localhost/projet_wordpress/wp-admin/post.php?post=19&action=edit'),
(49, 2, '_edit_lock', '1574462622:1'),
(243, 15, 'liste_gauche_1_horaire', '9h00 Wim de Vries University'),
(242, 15, '_liste_gauche_0_horaire', 'field_5df00acdcfa10'),
(241, 15, 'liste_gauche_0_horaire', '8:30 Introduction par Christophe fondation'),
(59, 30, '_edit_last', '1'),
(60, 30, '_edit_lock', '1576958599:1'),
(65, 37, '_menu_item_target', ''),
(66, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 37, '_menu_item_xfn', ''),
(68, 37, '_menu_item_url', ''),
(69, 37, '_menu_item_orphaned', '1576003812'),
(70, 38, '_menu_item_type', 'post_type'),
(71, 38, '_menu_item_menu_item_parent', '0'),
(72, 38, '_menu_item_object_id', '2'),
(73, 38, '_menu_item_object', 'page'),
(74, 38, '_menu_item_target', ''),
(75, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 38, '_menu_item_xfn', ''),
(77, 38, '_menu_item_url', ''),
(78, 38, '_menu_item_orphaned', '1576003998'),
(93, 55, '_wp_attached_file', '2019/12/portrait.jpg'),
(100, 15, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(96, 57, '_edit_lock', '1576845745:1'),
(97, 15, '_edit_last', '1'),
(98, 15, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(99, 15, '_banner_baseline', 'field_5dde5f82ec1fe'),
(94, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:155;s:6:\"height\";i:155;s:4:\"file\";s:20:\"2019/12/portrait.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"portrait-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 55, '_wp_attachment_image_alt', 'mon image'),
(101, 15, '_banner_title_marron', 'field_5dde60ddec1ff'),
(102, 15, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(103, 15, '_banner_title_vert', 'field_5dde6306ec200'),
(104, 15, 'banner_inscription', 'S\'INSCRIRE AU RENCONTRES'),
(105, 15, '_banner_inscription', 'field_5dde6322ec201'),
(106, 15, 'banner_background', '60'),
(107, 15, '_banner_background', 'field_5dde6346ec202'),
(108, 15, 'title_conf', 'LA CONFERENCE'),
(109, 15, '_title_conf', 'field_5df00933cfa0b'),
(110, 15, 'blabla_conf', 'Les rencontres de la fondations s\'intitulent cette année \"Chaîne alimentaire végétale et durabilité: une question d\'équilibre\"! Elles se tiendront le 3 décembre et auront pour objectif de décrypter la transition nutritionnelle des systèmes qui appelle à favoriser une alimentation pus végétale.'),
(111, 15, '_blabla_conf', 'field_5df0095dcfa0c'),
(112, 15, 'agenda_gauche', 'LES VÉGÉTAUX DANS LA CHAÎNE ALIMENTAIRE'),
(113, 15, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(114, 15, 'agenda_droite', 'LES ACTIVITÉS DE LA FONDATION'),
(115, 15, '_agenda_droite', 'field_5df00a91cfa0e'),
(116, 15, 'liste_gauche', '5'),
(117, 15, '_liste_gauche', 'field_5df00ab1cfa0f'),
(118, 58, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(119, 58, '_banner_baseline', 'field_5dde5f82ec1fe'),
(120, 58, 'banner_title_marron', ''),
(121, 58, '_banner_title_marron', 'field_5dde60ddec1ff'),
(122, 58, 'banner_title_vert', ''),
(123, 58, '_banner_title_vert', 'field_5dde6306ec200'),
(124, 58, 'banner_inscription', ''),
(125, 58, '_banner_inscription', 'field_5dde6322ec201'),
(126, 58, 'banner_background', ''),
(127, 58, '_banner_background', 'field_5dde6346ec202'),
(128, 58, 'title_conf', ''),
(129, 58, '_title_conf', 'field_5df00933cfa0b'),
(130, 58, 'blabla_conf', ''),
(131, 58, '_blabla_conf', 'field_5df0095dcfa0c'),
(132, 58, 'agenda_gauche', ''),
(133, 58, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(134, 58, 'agenda_droite', ''),
(135, 58, '_agenda_droite', 'field_5df00a91cfa0e'),
(136, 58, 'liste_gauche', ''),
(137, 58, '_liste_gauche', 'field_5df00ab1cfa0f'),
(138, 59, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(139, 59, '_banner_baseline', 'field_5dde5f82ec1fe'),
(140, 59, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(141, 59, '_banner_title_marron', 'field_5dde60ddec1ff'),
(142, 59, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(143, 59, '_banner_title_vert', 'field_5dde6306ec200'),
(144, 59, 'banner_inscription', ''),
(145, 59, '_banner_inscription', 'field_5dde6322ec201'),
(146, 59, 'banner_background', ''),
(147, 59, '_banner_background', 'field_5dde6346ec202'),
(148, 59, 'title_conf', ''),
(149, 59, '_title_conf', 'field_5df00933cfa0b'),
(150, 59, 'blabla_conf', ''),
(151, 59, '_blabla_conf', 'field_5df0095dcfa0c'),
(152, 59, 'agenda_gauche', ''),
(153, 59, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(154, 59, 'agenda_droite', ''),
(155, 59, '_agenda_droite', 'field_5df00a91cfa0e'),
(156, 59, 'liste_gauche', ''),
(157, 59, '_liste_gauche', 'field_5df00ab1cfa0f'),
(158, 60, '_wp_attached_file', '2019/12/bandeau.jpg'),
(159, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:277;s:4:\"file\";s:19:\"2019/12/bandeau.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bandeau-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bandeau-300x58.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:58;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bandeau-768x148.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bandeau-1024x197.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 60, '_wp_attachment_image_alt', 'fond'),
(161, 61, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(162, 61, '_banner_baseline', 'field_5dde5f82ec1fe'),
(163, 61, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(164, 61, '_banner_title_marron', 'field_5dde60ddec1ff'),
(165, 61, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(166, 61, '_banner_title_vert', 'field_5dde6306ec200'),
(167, 61, 'banner_inscription', ''),
(168, 61, '_banner_inscription', 'field_5dde6322ec201'),
(169, 61, 'banner_background', '60'),
(170, 61, '_banner_background', 'field_5dde6346ec202'),
(171, 61, 'title_conf', ''),
(172, 61, '_title_conf', 'field_5df00933cfa0b'),
(173, 61, 'blabla_conf', ''),
(174, 61, '_blabla_conf', 'field_5df0095dcfa0c'),
(175, 61, 'agenda_gauche', ''),
(176, 61, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(177, 61, 'agenda_droite', ''),
(178, 61, '_agenda_droite', 'field_5df00a91cfa0e'),
(179, 61, 'liste_gauche', ''),
(180, 61, '_liste_gauche', 'field_5df00ab1cfa0f'),
(201, 63, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(181, 62, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(182, 62, '_banner_baseline', 'field_5dde5f82ec1fe'),
(183, 62, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(184, 62, '_banner_title_marron', 'field_5dde60ddec1ff'),
(185, 62, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(186, 62, '_banner_title_vert', 'field_5dde6306ec200'),
(187, 62, 'banner_inscription', 'https://www.google.fr/search?client=opera&q=rencontre&sourceid=opera&ie=UTF-8&oe=UTF-8'),
(188, 62, '_banner_inscription', 'field_5dde6322ec201'),
(189, 62, 'banner_background', '60'),
(190, 62, '_banner_background', 'field_5dde6346ec202'),
(191, 62, 'title_conf', ''),
(192, 62, '_title_conf', 'field_5df00933cfa0b'),
(193, 62, 'blabla_conf', ''),
(194, 62, '_blabla_conf', 'field_5df0095dcfa0c'),
(195, 62, 'agenda_gauche', ''),
(196, 62, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(197, 62, 'agenda_droite', ''),
(198, 62, '_agenda_droite', 'field_5df00a91cfa0e'),
(199, 62, 'liste_gauche', ''),
(200, 62, '_liste_gauche', 'field_5df00ab1cfa0f'),
(202, 63, '_banner_baseline', 'field_5dde5f82ec1fe'),
(203, 63, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(204, 63, '_banner_title_marron', 'field_5dde60ddec1ff'),
(205, 63, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(206, 63, '_banner_title_vert', 'field_5dde6306ec200'),
(207, 63, 'banner_inscription', 'S\'INSCRIRE AU RENCONTRES'),
(208, 63, '_banner_inscription', 'field_5dde6322ec201'),
(209, 63, 'banner_background', '60'),
(210, 63, '_banner_background', 'field_5dde6346ec202'),
(211, 63, 'title_conf', ''),
(212, 63, '_title_conf', 'field_5df00933cfa0b'),
(213, 63, 'blabla_conf', ''),
(214, 63, '_blabla_conf', 'field_5df0095dcfa0c'),
(215, 63, 'agenda_gauche', ''),
(216, 63, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(217, 63, 'agenda_droite', ''),
(218, 63, '_agenda_droite', 'field_5df00a91cfa0e'),
(219, 63, 'liste_gauche', ''),
(220, 63, '_liste_gauche', 'field_5df00ab1cfa0f'),
(221, 64, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(222, 64, '_banner_baseline', 'field_5dde5f82ec1fe'),
(223, 64, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(224, 64, '_banner_title_marron', 'field_5dde60ddec1ff'),
(225, 64, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(226, 64, '_banner_title_vert', 'field_5dde6306ec200'),
(227, 64, 'banner_inscription', 'S\'INSCRIRE AU RENCONTRES'),
(228, 64, '_banner_inscription', 'field_5dde6322ec201'),
(229, 64, 'banner_background', '60'),
(230, 64, '_banner_background', 'field_5dde6346ec202'),
(231, 64, 'title_conf', 'LA CONFERENCE'),
(232, 64, '_title_conf', 'field_5df00933cfa0b'),
(233, 64, 'blabla_conf', 'Les rencontres de la fondations s\'intitulent cette année \"Chaîne alimentaire végétale et durabilité: une question d\'équilibre\"! Elles se tiendront le 3 décembre et auront pour objectif de décrypter la transition nutritionnelle des systèmes qui appelle à favoriser une alimentation pus végétale.'),
(234, 64, '_blabla_conf', 'field_5df0095dcfa0c'),
(235, 64, 'agenda_gauche', 'LES VÉGÉTAUX DANS LA CHAÎNE ALIMENTAIRE'),
(236, 64, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(237, 64, 'agenda_droite', 'LES ACTIVITÉS DE LA FONDATION'),
(238, 64, '_agenda_droite', 'field_5df00a91cfa0e'),
(239, 64, 'liste_gauche', ''),
(240, 64, '_liste_gauche', 'field_5df00ab1cfa0f'),
(245, 15, 'liste_gauche_2_horaire', '9h45 benedictid difntnt'),
(246, 15, '_liste_gauche_2_horaire', 'field_5df00acdcfa10'),
(247, 15, 'liste_gauche_3_horaire', '10h15 Armando perez cueto University'),
(248, 15, '_liste_gauche_3_horaire', 'field_5df00acdcfa10'),
(249, 15, 'liste_gauche_4_horaire', '10h45 cofee break'),
(250, 15, '_liste_gauche_4_horaire', 'field_5df00acdcfa10'),
(251, 65, 'banner_baseline', 'Les rencontres de la fondation le 03 décembre à Bruxelles'),
(252, 65, '_banner_baseline', 'field_5dde5f82ec1fe'),
(253, 65, 'banner_title_marron', 'CHAINE ALIMENTAIRE ET DURABILITE'),
(254, 65, '_banner_title_marron', 'field_5dde60ddec1ff'),
(255, 65, 'banner_title_vert', 'UNE QUESTION D\'EQUILIBRE'),
(256, 65, '_banner_title_vert', 'field_5dde6306ec200'),
(257, 65, 'banner_inscription', 'S\'INSCRIRE AU RENCONTRES'),
(258, 65, '_banner_inscription', 'field_5dde6322ec201'),
(259, 65, 'banner_background', '60'),
(260, 65, '_banner_background', 'field_5dde6346ec202'),
(261, 65, 'title_conf', 'LA CONFERENCE'),
(262, 65, '_title_conf', 'field_5df00933cfa0b'),
(263, 65, 'blabla_conf', 'Les rencontres de la fondations s\'intitulent cette année \"Chaîne alimentaire végétale et durabilité: une question d\'équilibre\"! Elles se tiendront le 3 décembre et auront pour objectif de décrypter la transition nutritionnelle des systèmes qui appelle à favoriser une alimentation pus végétale.'),
(264, 65, '_blabla_conf', 'field_5df0095dcfa0c'),
(265, 65, 'agenda_gauche', 'LES VÉGÉTAUX DANS LA CHAÎNE ALIMENTAIRE'),
(266, 65, '_agenda_gauche', 'field_5df00a5ccfa0d'),
(267, 65, 'agenda_droite', 'LES ACTIVITÉS DE LA FONDATION'),
(268, 65, '_agenda_droite', 'field_5df00a91cfa0e'),
(269, 65, 'liste_gauche', '5'),
(270, 65, '_liste_gauche', 'field_5df00ab1cfa0f'),
(271, 65, 'liste_gauche_0_horaire', '8:30 Introduction par Christophe fondation'),
(272, 65, '_liste_gauche_0_horaire', 'field_5df00acdcfa10'),
(273, 65, 'liste_gauche_1_horaire', '9h00 Wim de Vries University'),
(274, 65, '_liste_gauche_1_horaire', 'field_5df00acdcfa10'),
(275, 65, 'liste_gauche_2_horaire', '9h45 benedictid difntnt'),
(276, 65, '_liste_gauche_2_horaire', 'field_5df00acdcfa10'),
(277, 65, 'liste_gauche_3_horaire', '10h15 Armando perez cueto University'),
(278, 65, '_liste_gauche_3_horaire', 'field_5df00acdcfa10'),
(279, 65, 'liste_gauche_4_horaire', '10h45 cofee break'),
(280, 65, '_liste_gauche_4_horaire', 'field_5df00acdcfa10'),
(281, 67, '_wp_attached_file', '2019/12/bandeau-1.jpg'),
(282, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:277;s:4:\"file\";s:21:\"2019/12/bandeau-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bandeau-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bandeau-1-300x58.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:58;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bandeau-1-768x148.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bandeau-1-1024x197.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(59, 1, '2019-12-20 13:59:52', '2019-12-20 12:59:52', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-20 13:59:52', '2019-12-20 12:59:52', '', 15, 'http://localhost/projet_wordpress/2019/12/20/15-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-12-10 19:50:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-10 19:50:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/projet_wordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-12-10 19:53:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-10 19:53:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/projet_wordpress/?p=38', 1, 'nav_menu_item', '', 0),
(2, 1, '2019-11-09 10:28:40', '2019-11-09 09:28:40', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/projet_wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-11-09 10:28:40', '2019-11-09 09:28:40', '', 0, 'http://localhost/projet_wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-09 10:28:40', '2019-11-09 09:28:40', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/projet_wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-11-09 10:28:40', '2019-11-09 09:28:40', '', 0, 'http://localhost/projet_wordpress/?page_id=3', 0, 'page', '', 0),
(40, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre de la conf', 'title_conf', 'publish', 'closed', 'closed', '', 'field_5df00933cfa0b', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=40', 5, 'acf-field', '', 0),
(6, 1, '2019-11-09 10:58:37', '2019-11-09 09:58:37', '<!-- wp:paragraph {\"align\":\"left\",\"backgroundColor\":\"primary\"} -->\n<p style=\"text-align:left\" class=\"has-background has-primary-background-color\">Comme on pouvait s\'y attendre,&nbsp;<strong>le match entre l\'OM et Lyon dimanche soir au Vélodrome</strong>&nbsp;se jouera à guichets fermés. 64 900 supporters garniront l\'enceinte du boulevard Michelet. Les ultimes sésames ont trouvé preneurs ces dernières heures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"backgroundColor\":\"primary\"} -->\n<p style=\"text-align:left\" class=\"has-background has-primary-background-color\">Rappelons que l\'ensemble des groupes de supporters marseillais prépare un tifo hors du commun, à l\'occasion des 120 ans du club. L\'ambiance promet d\'être chaude pour ce choc de la 13e journée.</p>\n<!-- /wp:paragraph -->', 'OM-Lyon à guichets fermés', '', 'trash', 'open', 'open', '', 'om-lyon-a-guichets-fermes__trashed', '', '', '2019-11-22 22:13:45', '2019-11-22 21:13:45', '', 0, 'http://localhost/projet_wordpress/?p=6', 0, 'post', '', 0),
(11, 1, '2019-11-22 22:18:05', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><strong>José Mourinho a rejoint Tottenham, comment avez-vous accueilli cette nouvelle ? Le mariage peut-il fonctionner ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://www.footmercato.net/images/a/jose-mourinho-l-assure-il-a-change_268047.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>André Villas-Boas :&nbsp;<em>\"D\'abord, je suis très content pour José, car un entraîneur avec la carrière qu\'il a ne peut pas passer onze mois sans club. Il y a des entraîneurs comme moi, qui prennent une année sabbatique, ce n\'était pas le cas de José. Mais un entraîneur de son importance, avec tous les trophées qu\'il a, ne peut pas rester sans club. Il arrive dans un club que je connais bien, avec un propriétaire que je connais bien aussi. Ça fait un mariage insolite. Je les connais bien tous les deux, et je ne pense pas que ça fonctionnera très bien entre les deux personnages. Mais bon, ils sont arrivés à un accord. Et s\'il y a un entraîneur au monde qui peut faire gagner Tottenham, c\'est José. Parce que partout où il est passé, il a gagné. Sa façon de travailler est à court terme, mais droit aux objectifs et droit aux trophées. C\'est le chemin contraire à la philosophie de Tottehnam, car Mourinho a un coût. Pour Lévy (NDLR : le propriétaire de Tottenham), toutes les personnes sont un numéro, mais José est un numéro élevé. Mais c\'est aussi vrai que s\'il y a une personne qui peut faire gagner Tottenham, c\'est lui. Donc je suis content pour lui et j\'espère qu\'il va bien profiter. Il a une passion énorme pour le football. Moi j\'aime les autos, la Sainte-Victoire, les motos, tout ça, lui il est obsédé par le foot. Je sais qu\'il est content et j\'espère qu\'il profitera de ce club qui est spécial.\"</em></p>\n<!-- /wp:paragraph -->', 'Succès de Mourinho à Tottenham ? Villas-Boas a des doutes', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-22 22:18:05', '2019-11-22 21:18:05', '', 0, 'http://localhost/projet_wordpress/?p=11', 0, 'post', '', 0),
(9, 1, '2019-11-09 11:05:27', '2019-11-09 10:05:27', '<!-- wp:paragraph {\"align\":\"left\",\"backgroundColor\":\"primary\"} -->\n<p style=\"text-align:left\" class=\"has-background has-primary-background-color\">Comme on pouvait s\'y attendre,&nbsp;<strong>le match entre l\'OM et Lyon dimanche soir au Vélodrome</strong>&nbsp;se jouera à guichets fermés. 64 900 supporters garniront l\'enceinte du boulevard Michelet. Les ultimes sésames ont trouvé preneurs ces dernières heures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"backgroundColor\":\"primary\"} -->\n<p style=\"text-align:left\" class=\"has-background has-primary-background-color\">Rappelons que l\'ensemble des groupes de supporters marseillais prépare un tifo hors du commun, à l\'occasion des 120 ans du club. L\'ambiance promet d\'être chaude pour ce choc de la 13e journée.</p>\n<!-- /wp:paragraph -->', 'OM-Lyon à guichets fermés', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-11-09 11:05:27', '2019-11-09 10:05:27', '', 6, 'http://localhost/projet_wordpress/2019/11/09/6-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-11-22 22:18:05', '2019-11-22 21:18:05', '<!-- wp:paragraph -->\n<p><strong>José Mourinho a rejoint Tottenham, comment avez-vous accueilli cette nouvelle ? Le mariage peut-il fonctionner ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://www.footmercato.net/images/a/jose-mourinho-l-assure-il-a-change_268047.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>André Villas-Boas :&nbsp;<em>\"D\'abord, je suis très content pour José, car un entraîneur avec la carrière qu\'il a ne peut pas passer onze mois sans club. Il y a des entraîneurs comme moi, qui prennent une année sabbatique, ce n\'était pas le cas de José. Mais un entraîneur de son importance, avec tous les trophées qu\'il a, ne peut pas rester sans club. Il arrive dans un club que je connais bien, avec un propriétaire que je connais bien aussi. Ça fait un mariage insolite. Je les connais bien tous les deux, et je ne pense pas que ça fonctionnera très bien entre les deux personnages. Mais bon, ils sont arrivés à un accord. Et s\'il y a un entraîneur au monde qui peut faire gagner Tottenham, c\'est José. Parce que partout où il est passé, il a gagné. Sa façon de travailler est à court terme, mais droit aux objectifs et droit aux trophées. C\'est le chemin contraire à la philosophie de Tottehnam, car Mourinho a un coût. Pour Lévy (NDLR : le propriétaire de Tottenham), toutes les personnes sont un numéro, mais José est un numéro élevé. Mais c\'est aussi vrai que s\'il y a une personne qui peut faire gagner Tottenham, c\'est lui. Donc je suis content pour lui et j\'espère qu\'il va bien profiter. Il a une passion énorme pour le football. Moi j\'aime les autos, la Sainte-Victoire, les motos, tout ça, lui il est obsédé par le foot. Je sais qu\'il est content et j\'espère qu\'il profitera de ce club qui est spécial.\"</em></p>\n<!-- /wp:paragraph -->', 'Succès de Mourinho à Tottenham ? Villas-Boas a des doutes', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-11-22 22:18:05', '2019-11-22 21:18:05', '', 11, 'http://localhost/projet_wordpress/2019/11/22/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-11-22 22:19:51', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Ces derniers jours,&nbsp;<a href=\"https://www.lephoceen.fr/infos-om/mercato/mercato-l-om-doit-il-lutter-avec-monaco-pour-pavlovic-174515\" target=\"_blank\" rel=\"noreferrer noopener\"><strong>les premières rumeurs mercato de l\'OM sont apparues</strong></a>&nbsp;et, comme le hasard fait souvent bien les choses, elles concernent deux défenseurs centraux avec le Serbe Strahinja Pavlovic (Partizan Belgrade) et l\'Américain Aaron Long (NY Red Bull). Le signe que l\'OM n\'est pas si fourni que ça dans ce secteur, et le match qui se profile dimanche à Toulouse en est la preuve. En effet, avec les suspensions d\'Alvaro Gonzalez et Duje Caleta-Car, André Villas-Boas n\'aura pas d\'autre choix que d\'aligner&nbsp;<a href=\"https://www.lephoceen.fr/infos-om/saison/kamara-perrin-mais-que-sont-devenus-les-autres-174514\" target=\"_blank\" rel=\"noreferrer noopener\"><strong>une charnière très jeune et issue du centre de formation avec Bouba Kamara (19 ans) et Lucas Perrin (21 ans)</strong></a>, deux éléments qui disputaient la finale de la coupe Gambardella il y a un an et demi. De quoi s\'inquiéter ? Pas forcément, quand on regarde les performances individuelles des deux compères depuis le début de la saison. En revanche, voir cette paire diriger la défense olympienne en même temps sans élément d\'expérience à leur côté n\'est pas banal, et il y aura évidemment de l\'appréhension.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Laurenti :&nbsp;<em>\"Si l\'équipe fait ce qu\'il faut autour, Bouba et Lucas s\'en sortiront très bien\"</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Pour revenir sur le plan individuel, les deux minots sont armés et semblent complémentaires. En effet, Bouba Kamara n\'a plus à prouver ses qualités de relance et de sang-froid, alors que Lucas Perrin a démontré en début de saison qu\'il avait le niveau dans les duels et qu\'il savait jouer simple. De quoi rassurer, même s\'il est évident que le pari sera compliqué face à des attaquants d\'expérience comme Max-Alain Gradel et Yaya Sanogo.&nbsp;<em>\"Il est vrai que c\'est un poste assez sensible,&nbsp;</em>reconnait l\'ancien défenseur central olympien&nbsp;<strong>Fabien Laurenti</strong>.<em>&nbsp;Mais, ça ne m\'inquiète pas plus que ça. Au contraire, il me tarde de les voir jouer ensemble. Bouba a déjà de la bouteille malgré son jeune âge, et j\'ai beaucoup aimé les deux matches de Lucas avec l\'équipe première. Je ne vois pas pourquoi ça ne marcherait pas, d\'autant qu\'ils ont très souvent joué ensemble chez les jeunes. La clé du match, ce sera surtout l\'engagement que mettra l\'OM à tous les niveaux. Si on est dominé, c\'est sûr que ce sera compliqué, mais si l\'équipe fait ce qu\'il faut, Bouba et Lucas s\'en sortiront très bien\"</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Gavanon :&nbsp;<em>\"Villas-Boas devra compenser en mettant devant eux un joueur d\'expérience pour les soulager\"</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>De fait, ce sera à leurs coéquipiers expérimentés de tout faire pour les sécuriser et leur permettre d\'utiliser au mieux leurs qualités. Mais, ce sera aussi à André Villas-Boas de trouver la bonne formule pour mettre ses deux jeunes défenseurs dans les meilleures conditions. C\'est ce qu\'explique au Phocéen l\'ancien milieu olympien&nbsp;<strong>Benjamin Gavanon</strong>&nbsp;:&nbsp;<em>\"Voir deux gamins du centre titulaires ensemble c\'est génial. Après, ils auront besoin d\'une équipe forte autour d\'eux. Pour moi, Villas-Boas devra compenser en mettant devant eux un joueur d\'expérience pour les soulager. Je pense en particulier à Kevin Strootman, qui peut les couvrir et les aider en jouant assez bas, surtout face à l\'équipe de Kombouaré qui sera forcément agressive. Après, il y a la possibilité de faire descendre le Hollandais dans une défense à trois, mais je n\'y crois pas trop. Je le vois plutôt dans le rôle d\'une sentinelle basse qui viendrait les soulager dans les périodes de pression en s\'intégrant dans l\'axe régulièrement\"</em>. Remplaçant depuis deux matches, Strootman pourrait effectivement offrir son expérience à cette charnière 100 % marseillaise. L\'occasion de le relancer lui aussi...</p>\n<!-- /wp:paragraph -->', 'L\'OM peut-il être serein avec une charnière Kamara-Perrin ?', '', 'draft', 'open', 'open', '', '', '', '', '2019-11-22 22:19:51', '2019-11-22 21:19:51', '', 0, 'http://localhost/projet_wordpress/?p=13', 0, 'post', '', 0),
(14, 1, '2019-11-22 22:19:51', '2019-11-22 21:19:51', '<!-- wp:paragraph -->\n<p>Ces derniers jours,&nbsp;<a href=\"https://www.lephoceen.fr/infos-om/mercato/mercato-l-om-doit-il-lutter-avec-monaco-pour-pavlovic-174515\" target=\"_blank\" rel=\"noreferrer noopener\"><strong>les premières rumeurs mercato de l\'OM sont apparues</strong></a>&nbsp;et, comme le hasard fait souvent bien les choses, elles concernent deux défenseurs centraux avec le Serbe Strahinja Pavlovic (Partizan Belgrade) et l\'Américain Aaron Long (NY Red Bull). Le signe que l\'OM n\'est pas si fourni que ça dans ce secteur, et le match qui se profile dimanche à Toulouse en est la preuve. En effet, avec les suspensions d\'Alvaro Gonzalez et Duje Caleta-Car, André Villas-Boas n\'aura pas d\'autre choix que d\'aligner&nbsp;<a href=\"https://www.lephoceen.fr/infos-om/saison/kamara-perrin-mais-que-sont-devenus-les-autres-174514\" target=\"_blank\" rel=\"noreferrer noopener\"><strong>une charnière très jeune et issue du centre de formation avec Bouba Kamara (19 ans) et Lucas Perrin (21 ans)</strong></a>, deux éléments qui disputaient la finale de la coupe Gambardella il y a un an et demi. De quoi s\'inquiéter ? Pas forcément, quand on regarde les performances individuelles des deux compères depuis le début de la saison. En revanche, voir cette paire diriger la défense olympienne en même temps sans élément d\'expérience à leur côté n\'est pas banal, et il y aura évidemment de l\'appréhension.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Laurenti :&nbsp;<em>\"Si l\'équipe fait ce qu\'il faut autour, Bouba et Lucas s\'en sortiront très bien\"</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Pour revenir sur le plan individuel, les deux minots sont armés et semblent complémentaires. En effet, Bouba Kamara n\'a plus à prouver ses qualités de relance et de sang-froid, alors que Lucas Perrin a démontré en début de saison qu\'il avait le niveau dans les duels et qu\'il savait jouer simple. De quoi rassurer, même s\'il est évident que le pari sera compliqué face à des attaquants d\'expérience comme Max-Alain Gradel et Yaya Sanogo.&nbsp;<em>\"Il est vrai que c\'est un poste assez sensible,&nbsp;</em>reconnait l\'ancien défenseur central olympien&nbsp;<strong>Fabien Laurenti</strong>.<em>&nbsp;Mais, ça ne m\'inquiète pas plus que ça. Au contraire, il me tarde de les voir jouer ensemble. Bouba a déjà de la bouteille malgré son jeune âge, et j\'ai beaucoup aimé les deux matches de Lucas avec l\'équipe première. Je ne vois pas pourquoi ça ne marcherait pas, d\'autant qu\'ils ont très souvent joué ensemble chez les jeunes. La clé du match, ce sera surtout l\'engagement que mettra l\'OM à tous les niveaux. Si on est dominé, c\'est sûr que ce sera compliqué, mais si l\'équipe fait ce qu\'il faut, Bouba et Lucas s\'en sortiront très bien\"</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Gavanon :&nbsp;<em>\"Villas-Boas devra compenser en mettant devant eux un joueur d\'expérience pour les soulager\"</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>De fait, ce sera à leurs coéquipiers expérimentés de tout faire pour les sécuriser et leur permettre d\'utiliser au mieux leurs qualités. Mais, ce sera aussi à André Villas-Boas de trouver la bonne formule pour mettre ses deux jeunes défenseurs dans les meilleures conditions. C\'est ce qu\'explique au Phocéen l\'ancien milieu olympien&nbsp;<strong>Benjamin Gavanon</strong>&nbsp;:&nbsp;<em>\"Voir deux gamins du centre titulaires ensemble c\'est génial. Après, ils auront besoin d\'une équipe forte autour d\'eux. Pour moi, Villas-Boas devra compenser en mettant devant eux un joueur d\'expérience pour les soulager. Je pense en particulier à Kevin Strootman, qui peut les couvrir et les aider en jouant assez bas, surtout face à l\'équipe de Kombouaré qui sera forcément agressive. Après, il y a la possibilité de faire descendre le Hollandais dans une défense à trois, mais je n\'y crois pas trop. Je le vois plutôt dans le rôle d\'une sentinelle basse qui viendrait les soulager dans les périodes de pression en s\'intégrant dans l\'axe régulièrement\"</em>. Remplaçant depuis deux matches, Strootman pourrait effectivement offrir son expérience à cette charnière 100 % marseillaise. L\'occasion de le relancer lui aussi...</p>\n<!-- /wp:paragraph -->', 'L\'OM peut-il être serein avec une charnière Kamara-Perrin ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-11-22 22:19:51', '2019-11-22 21:19:51', '', 13, 'http://localhost/projet_wordpress/2019/11/22/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-11 09:35:35', '2019-12-11 08:35:35', '', 'Page d\'accueil', '', 'publish', 'closed', 'closed', '', 'page-daccueil', '', '', '2019-12-21 20:47:45', '2019-12-21 19:47:45', '', 0, 'http://localhost/projet_wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-11-22 22:21:08', '2019-11-22 21:21:08', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-11-22 22:21:08', '2019-11-22 21:21:08', '', 15, 'http://localhost/projet_wordpress/2019/11/22/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-11-22 22:21:28', '0000-00-00 00:00:00', '', 'Actualités', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-22 22:21:28', '2019-11-22 21:21:28', '', 0, 'http://localhost/projet_wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-11-22 22:21:28', '2019-11-22 21:21:28', '', 'Actualités', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-11-22 22:21:28', '2019-11-22 21:21:28', '', 17, 'http://localhost/projet_wordpress/2019/11/22/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-11-22 22:21:37', '0000-00-00 00:00:00', '', 'Contact', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-22 22:21:37', '2019-11-22 21:21:37', '', 0, 'http://localhost/projet_wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-11-22 22:21:37', '2019-11-22 21:21:37', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-11-22 22:21:37', '2019-11-22 21:21:37', '', 19, 'http://localhost/projet_wordpress/2019/11/22/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-11-22 22:21:54', '0000-00-00 00:00:00', '', 'Mention légales', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-22 22:21:54', '2019-11-22 21:21:54', '', 0, 'http://localhost/projet_wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-11-22 22:21:54', '2019-11-22 21:21:54', '', 'Mention légales', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-11-22 22:21:54', '2019-11-22 21:21:54', '', 21, 'http://localhost/projet_wordpress/2019/11/22/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-11-22 22:22:05', '0000-00-00 00:00:00', '', 'Plan du site', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-22 22:22:05', '2019-11-22 21:22:05', '', 0, 'http://localhost/projet_wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-11-22 22:22:05', '2019-11-22 21:22:05', '', 'Plan du site', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-11-22 22:22:05', '2019-11-22 21:22:05', '', 23, 'http://localhost/projet_wordpress/2019/11/22/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-11-22 22:48:49', '2019-11-22 21:48:49', '', 'Page Accueil', '', 'publish', 'closed', 'closed', '', 'page-accueil', '', '', '2019-12-21 20:36:36', '2019-12-21 19:36:36', '', 0, 'http://localhost/projet_wordpress/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-11-22 22:48:49', '2019-11-22 21:48:49', '', 'Actualité', '', 'publish', 'closed', 'closed', '', 'actualite', '', '', '2019-12-21 20:36:37', '2019-12-21 19:36:37', '', 0, 'http://localhost/projet_wordpress/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2019-11-22 22:48:49', '2019-11-22 21:48:49', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-21 20:36:37', '2019-12-21 19:36:37', '', 0, 'http://localhost/projet_wordpress/?p=27', 3, 'nav_menu_item', '', 0),
(65, 1, '2019-12-21 20:47:45', '2019-12-21 19:47:45', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-21 20:47:45', '2019-12-21 19:47:45', '', 15, 'http://localhost/projet_wordpress/2019/12/21/15-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-11-27 12:53:42', '2019-11-27 11:53:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contenu de la page d’accueil', 'contenu-de-la-page-daccueil', 'publish', 'closed', 'closed', '', 'group_5dde5d496a6c5', '', '', '2019-12-21 21:03:18', '2019-12-21 20:03:18', '', 0, 'http://localhost/projet_wordpress/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2019-11-27 12:53:42', '2019-11-27 11:53:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Baseline', 'banner_baseline', 'publish', 'closed', 'closed', '', 'field_5dde5f82ec1fe', '', '', '2019-11-27 12:53:42', '2019-11-27 11:53:42', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2019-11-27 12:53:42', '2019-11-27 11:53:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre marron', 'banner_title_marron', 'publish', 'closed', 'closed', '', 'field_5dde60ddec1ff', '', '', '2019-11-27 12:53:42', '2019-11-27 11:53:42', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2019-11-27 12:53:42', '2019-11-27 11:53:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre vert', 'banner_title_vert', 'publish', 'closed', 'closed', '', 'field_5dde6306ec200', '', '', '2019-11-27 12:53:42', '2019-11-27 11:53:42', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=33', 2, 'acf-field', '', 0),
(34, 1, '2019-11-27 12:53:42', '2019-11-27 11:53:42', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'lien inscription', 'banner_inscription', 'publish', 'closed', 'closed', '', 'field_5dde6322ec201', '', '', '2019-11-27 12:53:42', '2019-11-27 11:53:42', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=34', 3, 'acf-field', '', 0),
(35, 1, '2019-11-27 12:53:42', '2019-11-27 11:53:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image de fond', 'banner_background', 'publish', 'closed', 'closed', '', 'field_5dde6346ec202', '', '', '2019-12-21 21:03:18', '2019-12-21 20:03:18', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&#038;p=35', 4, 'acf-field', '', 0),
(41, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'blabla conf', 'blabla_conf', 'publish', 'closed', 'closed', '', 'field_5df0095dcfa0c', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=41', 6, 'acf-field', '', 0),
(42, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'agenda gauche', 'agenda_gauche', 'publish', 'closed', 'closed', '', 'field_5df00a5ccfa0d', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=42', 7, 'acf-field', '', 0),
(43, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'agenda droite', 'agenda_droite', 'publish', 'closed', 'closed', '', 'field_5df00a91cfa0e', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=43', 8, 'acf-field', '', 0),
(44, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'liste gauche', 'liste_gauche', 'publish', 'closed', 'closed', '', 'field_5df00ab1cfa0f', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=44', 9, 'acf-field', '', 0),
(45, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'horaire', 'horaire', 'publish', 'closed', 'closed', '', 'field_5df00acdcfa10', '', '', '2019-12-21 20:44:04', '2019-12-21 19:44:04', '', 44, 'http://localhost/projet_wordpress/?post_type=acf-field&#038;p=45', 0, 'acf-field', '', 0),
(46, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'liste droite', 'liste_droite', 'publish', 'closed', 'closed', '', 'field_5df00b59cfa11', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=46', 10, 'acf-field', '', 0),
(47, 1, '2019-12-10 22:20:58', '2019-12-10 21:20:58', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'liste perso', 'liste_perso', 'publish', 'closed', 'closed', '', 'field_5df00b73cfa12', '', '', '2019-12-10 22:20:58', '2019-12-10 21:20:58', '', 30, 'http://localhost/projet_wordpress/?post_type=acf-field&p=47', 11, 'acf-field', '', 0),
(60, 1, '2019-12-20 14:07:07', '2019-12-20 13:07:07', '', 'bandeau', '', 'inherit', 'open', 'closed', '', 'bandeau', '', '', '2019-12-20 14:07:19', '2019-12-20 13:07:19', '', 15, 'http://localhost/projet_wordpress/wp-content/uploads/2019/12/bandeau.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-12-20 14:07:21', '2019-12-20 13:07:21', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-20 14:07:21', '2019-12-20 13:07:21', '', 15, 'http://localhost/projet_wordpress/2019/12/20/15-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-12-20 13:56:33', '2019-12-20 12:56:33', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-20 13:56:33', '2019-12-20 12:56:33', '', 15, 'http://localhost/projet_wordpress/2019/12/20/15-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-12-20 13:38:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-20 13:38:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/projet_wordpress/?p=56', 0, 'post', '', 0),
(57, 1, '2019-12-20 13:42:25', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-20 13:42:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/projet_wordpress/?page_id=57', 0, 'page', '', 0),
(55, 1, '2019-12-11 12:37:07', '2019-12-11 11:37:07', '', 'portrait', '', 'inherit', 'open', 'closed', '', 'portrait', '', '', '2019-12-11 12:37:29', '2019-12-11 11:37:29', '', 15, 'http://localhost/projet_wordpress/wp-content/uploads/2019/12/portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-12-20 14:08:04', '2019-12-20 13:08:04', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-20 14:08:04', '2019-12-20 13:08:04', '', 15, 'http://localhost/projet_wordpress/2019/12/20/15-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-12-20 14:09:09', '2019-12-20 13:09:09', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-20 14:09:09', '2019-12-20 13:09:09', '', 15, 'http://localhost/projet_wordpress/2019/12/20/15-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-12-20 14:19:11', '2019-12-20 13:19:11', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-20 14:19:11', '2019-12-20 13:19:11', '', 15, 'http://localhost/projet_wordpress/2019/12/20/15-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-12-21 20:48:35', '2019-12-21 19:48:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'texted', 'te', 'publish', 'closed', 'closed', '', 'field_5dfe76fa42320', '', '', '2019-12-21 20:48:35', '2019-12-21 19:48:35', '', 46, 'http://localhost/projet_wordpress/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2019-12-21 20:59:10', '2019-12-21 19:59:10', '', 'bandeau', '', 'inherit', 'open', 'closed', '', 'bandeau-2', '', '', '2019-12-21 20:59:10', '2019-12-21 19:59:10', '', 15, 'http://localhost/projet_wordpress/wp-content/uploads/2019/12/bandeau-1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'header', 'header', 0),
(3, 'Menu foot', 'menu-foot', 0),
(4, 'menu principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 1, 0),
(11, 1, 0),
(13, 1, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'laurent23'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"e5c2d73173859ffdf6af3c462d4fa4990cb451b849b5a5c95ce7d400247c7ff4\";a:4:{s:10:\"expiration\";i:1577018218;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:132:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36 OPR/65.0.3467.72\";s:5:\"login\";i:1576845418;}s:64:\"f76640f13246118dc994886129c159d39baa4c140c35f796422ed86edde00322\";a:4:{s:10:\"expiration\";i:1577018232;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:132:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36 OPR/65.0.3467.72\";s:5:\"login\";i:1576845432;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '56'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_acf-field-group', '2'),
(25, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1576064324'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Laurent', '$P$BWaVOD2yfNJ/wdCKBwQYdnckhNtSbD1', 'laurent', 'laurent.tomy@laposte.net', '', '2019-11-16 09:39:36', '', 0, 'Laurent');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
