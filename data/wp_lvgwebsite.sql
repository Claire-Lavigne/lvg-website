-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07/08/2019 às 21:27
-- Versão do servidor: 5.7.25-1
-- Versão do PHP: 7.2.15-0ubuntu3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wp_lvgwebsite`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-07-31 19:19:32', '2019-07-31 17:19:32', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lvg-website/wp', 'yes'),
(2, 'home', 'http://localhost/lvg-website/', 'yes'),
(3, 'blogname', 'lvgstudio', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'helio-cruz@hotmail.local', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'lvg', 'yes'),
(41, 'stylesheet', 'lvg', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
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
(103, 'cron', 'a:6:{i:1565205572;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1565241572;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1565284772;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565284831;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565284832;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(118, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564657414;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}', 'yes'),
(130, 'can_compress_scripts', '0', 'no'),
(145, 'new_admin_email', 'helio-cruz@hotmail.local', 'yes'),
(152, 'current_theme', 'LVG Theme', 'yes'),
(153, 'theme_mods_lvg', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"menu_header\";i:2;s:11:\"menu_footer\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564657401;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(175, 'recently_activated', 'a:0:{}', 'yes'),
(182, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(202, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1564653515;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(204, '_site_transient_timeout_browser_6b8ff478567d8c629faa0d4d1edab95d', '1565262081', 'no'),
(205, '_site_transient_browser_6b8ff478567d8c629faa0d4d1edab95d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"76.0.3809.87\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(260, '_site_transient_timeout_theme_roots', '1565201804', 'no'),
(261, '_site_transient_theme_roots', 'a:2:{s:3:\"lvg\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(263, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1565200005;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-06 06:39:46\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(264, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1565200006;s:7:\"checked\";a:2:{s:3:\"lvg\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(265, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1565200007;s:7:\"checked\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:21:\"hello-dolly/hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_lock', '1564677158:1'),
(4, 5, '_wp_page_template', 'template-portfolio.php'),
(5, 7, '_edit_lock', '1564664256:1'),
(6, 7, '_wp_page_template', 'template-tarifs.php'),
(7, 9, '_edit_lock', '1564602559:1'),
(8, 9, '_wp_page_template', 'template-contact.php'),
(9, 11, '_edit_lock', '1564602559:1'),
(10, 11, '_wp_page_template', 'template-faq.php'),
(11, 18, '_menu_item_type', 'post_type'),
(12, 18, '_menu_item_menu_item_parent', '0'),
(13, 18, '_menu_item_object_id', '11'),
(14, 18, '_menu_item_object', 'page'),
(15, 18, '_menu_item_target', ''),
(16, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 18, '_menu_item_xfn', ''),
(18, 18, '_menu_item_url', ''),
(20, 19, '_menu_item_type', 'post_type'),
(21, 19, '_menu_item_menu_item_parent', '0'),
(22, 19, '_menu_item_object_id', '9'),
(23, 19, '_menu_item_object', 'page'),
(24, 19, '_menu_item_target', ''),
(25, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 19, '_menu_item_xfn', ''),
(27, 19, '_menu_item_url', ''),
(29, 20, '_menu_item_type', 'post_type'),
(30, 20, '_menu_item_menu_item_parent', '0'),
(31, 20, '_menu_item_object_id', '7'),
(32, 20, '_menu_item_object', 'page'),
(33, 20, '_menu_item_target', ''),
(34, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 20, '_menu_item_xfn', ''),
(36, 20, '_menu_item_url', ''),
(38, 21, '_menu_item_type', 'post_type'),
(39, 21, '_menu_item_menu_item_parent', '0'),
(40, 21, '_menu_item_object_id', '5'),
(41, 21, '_menu_item_object', 'page'),
(42, 21, '_menu_item_target', ''),
(43, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 21, '_menu_item_xfn', ''),
(45, 21, '_menu_item_url', ''),
(47, 22, '_menu_item_type', 'custom'),
(48, 22, '_menu_item_menu_item_parent', '0'),
(49, 22, '_menu_item_object_id', '22'),
(50, 22, '_menu_item_object', 'custom'),
(51, 22, '_menu_item_target', ''),
(52, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 22, '_menu_item_xfn', ''),
(54, 22, '_menu_item_url', 'http://localhost/lvg-website/'),
(55, 23, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]'),
(56, 23, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"lvgwebsite \"[your-subject]\"\";s:6:\"sender\";s:37:\"lvgwebsite <helio-cruz@hotmail.local>\";s:9:\"recipient\";s:24:\"helio-cruz@hotmail.local\";s:4:\"body\";s:198:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(57, 23, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"lvgwebsite \"[your-subject]\"\";s:6:\"sender\";s:37:\"lvgwebsite <helio-cruz@hotmail.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\";s:18:\"additional_headers\";s:34:\"Reply-To: helio-cruz@hotmail.local\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(58, 23, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(59, 23, '_additional_settings', ''),
(60, 23, '_locale', 'fr_FR'),
(61, 24, '_form', '[text Nom placeholder \"Nom\"]\n[text* firstname placeholder \"Prénom\"]\n[email* email placeholder \"Email\"]\n[tel* Telephone placeholder \"Téléphone\"] \n[textarea* message placeholder \"Message\"]\n\n <button class=\"button--pink\" submit =\"Envoyer\" >Envoyer</button>'),
(62, 24, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"lvgwebsite \"[objet]\"\";s:6:\"sender\";s:35:\"lvgwebsite <helio-cruz@hotmail.com>\";s:9:\"recipient\";s:22:\"helio-cruz@hotmail.com\";s:4:\"body\";s:241:\"De : [lastname] [firstname] <[email]>\nObjet : [objet]\n\nCorps du message :\n[message]\n\nSignature :\n[lastname] [firstname]\n[email]\n[tel]\n-- \nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(63, 24, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"lvgwebsite \"[your-subject]\"\";s:6:\"sender\";s:37:\"lvgwebsite <helio-cruz@hotmail.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\";s:18:\"additional_headers\";s:34:\"Reply-To: helio-cruz@hotmail.local\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(64, 24, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(65, 24, '_additional_settings', ''),
(66, 24, '_locale', 'fr_FR'),
(67, 25, '_edit_lock', '1564681842:1'),
(68, 29, '_menu_item_type', 'custom'),
(69, 29, '_menu_item_menu_item_parent', '0'),
(70, 29, '_menu_item_object_id', '29'),
(71, 29, '_menu_item_object', 'custom'),
(72, 29, '_menu_item_target', ''),
(73, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 29, '_menu_item_xfn', ''),
(75, 29, '_menu_item_url', 'http://localhost/lvg-website/mentions-legales-et-cgu/'),
(77, 30, '_edit_lock', '1564693059:1'),
(78, 30, '_wp_page_template', 'template-droitimage.php'),
(79, 32, '_menu_item_type', 'post_type'),
(80, 32, '_menu_item_menu_item_parent', '0'),
(81, 32, '_menu_item_object_id', '30'),
(82, 32, '_menu_item_object', 'page'),
(83, 32, '_menu_item_target', ''),
(84, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 32, '_menu_item_xfn', ''),
(86, 32, '_menu_item_url', ''),
(94, 34, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]'),
(95, 34, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"lvgstudio \"[your-subject]\"\";s:6:\"sender\";s:36:\"lvgstudio <helio-cruz@hotmail.local>\";s:9:\"recipient\";s:24:\"helio-cruz@hotmail.local\";s:4:\"body\";s:197:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de lvgstudio (http://localhost/lvg-website)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(96, 34, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"lvgstudio \"[your-subject]\"\";s:6:\"sender\";s:36:\"lvgstudio <helio-cruz@hotmail.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:139:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de lvgstudio (http://localhost/lvg-website)\";s:18:\"additional_headers\";s:34:\"Reply-To: helio-cruz@hotmail.local\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(97, 34, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(98, 34, '_additional_settings', ''),
(99, 34, '_locale', 'fr_FR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-07-31 19:19:32', '2019-07-31 17:19:32', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-07-31 19:19:32', '2019-07-31 17:19:32', '', 0, 'http://localhost/lvg-website/wp/?p=1', 0, 'post', '', 1),
(5, 1, '2019-07-31 21:08:17', '2019-07-31 19:08:17', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-07-31 21:08:24', '2019-07-31 19:08:24', '', 0, 'http://localhost/lvg-website/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-07-31 21:08:17', '2019-07-31 19:08:17', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-31 21:08:17', '2019-07-31 19:08:17', '', 5, 'http://localhost/lvg-website/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-07-31 21:13:25', '2019-07-31 19:13:25', '', 'Tarifs', '', 'publish', 'closed', 'closed', '', 'tarifs', '', '', '2019-07-31 21:13:25', '2019-07-31 19:13:25', '', 0, 'http://localhost/lvg-website/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-07-31 21:13:25', '2019-07-31 19:13:25', '', 'Tarifs', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-07-31 21:13:25', '2019-07-31 19:13:25', '', 7, 'http://localhost/lvg-website/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-07-31 21:16:13', '2019-07-31 19:16:13', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-07-31 21:16:13', '2019-07-31 19:16:13', '', 0, 'http://localhost/lvg-website/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-07-31 21:16:13', '2019-07-31 19:16:13', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-07-31 21:16:13', '2019-07-31 19:16:13', '', 9, 'http://localhost/lvg-website/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-07-31 21:16:26', '2019-07-31 19:16:26', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-07-31 21:16:26', '2019-07-31 19:16:26', '', 0, 'http://localhost/lvg-website/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-07-31 21:16:26', '2019-07-31 19:16:26', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-31 21:16:26', '2019-07-31 19:16:26', '', 11, 'http://localhost/lvg-website/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-07-31 21:33:48', '2019-07-31 19:33:48', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2019-07-31 21:33:48', '2019-07-31 19:33:48', '', 5, 'http://localhost/lvg-website/5-autosave-v1/', 0, 'revision', '', 0),
(15, 1, '2019-07-31 21:35:13', '2019-07-31 19:35:13', '', 'Tarifs', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2019-07-31 21:35:13', '2019-07-31 19:35:13', '', 7, 'http://localhost/lvg-website/7-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2019-07-31 21:37:20', '2019-07-31 19:37:20', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2019-07-31 21:37:20', '2019-07-31 19:37:20', '', 9, 'http://localhost/lvg-website/9-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2019-07-31 21:40:19', '2019-07-31 19:40:19', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2019-07-31 21:40:19', '2019-07-31 19:40:19', '', 11, 'http://localhost/lvg-website/11-autosave-v1/', 0, 'revision', '', 0),
(18, 1, '2019-07-31 21:49:42', '2019-07-31 19:49:42', '', 'Faq', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-07-31 22:12:46', '2019-07-31 20:12:46', '', 0, 'http://localhost/lvg-website/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2019-07-31 21:49:42', '2019-07-31 19:49:42', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-07-31 22:12:46', '2019-07-31 20:12:46', '', 0, 'http://localhost/lvg-website/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2019-07-31 21:49:42', '2019-07-31 19:49:42', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-07-31 22:12:46', '2019-07-31 20:12:46', '', 0, 'http://localhost/lvg-website/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2019-07-31 21:49:42', '2019-07-31 19:49:42', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-07-31 22:12:46', '2019-07-31 20:12:46', '', 0, 'http://localhost/lvg-website/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2019-07-31 22:10:22', '2019-07-31 20:10:22', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-31 22:12:46', '2019-07-31 20:12:46', '', 0, 'http://localhost/lvg-website/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-08-01 09:58:35', '2019-08-01 07:58:35', '<label> Votre nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse de messagerie (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Objet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Envoyer\"]\n1\nlvgwebsite \"[your-subject]\"\nlvgwebsite <helio-cruz@hotmail.local>\nhelio-cruz@hotmail.local\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\nReply-To: [your-email]\n\n\n\n\nlvgwebsite \"[your-subject]\"\nlvgwebsite <helio-cruz@hotmail.local>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\nReply-To: helio-cruz@hotmail.local\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Formulaire de contact - Exemple', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2019-08-01 11:11:55', '2019-08-01 09:11:55', '', 0, 'http://localhost/lvg-website/?post_type=wpcf7_contact_form&#038;p=23', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2019-08-01 10:01:32', '2019-08-01 08:01:32', '[text Nom placeholder \"Nom\"]\r\n[text* firstname placeholder \"Prénom\"]\r\n[email* email placeholder \"Email\"]\r\n[tel* Telephone placeholder \"Téléphone\"] \r\n[textarea* message placeholder \"Message\"]\r\n\r\n <button class=\"button--pink\" submit =\"Envoyer\" >Envoyer</button>\n1\nlvgwebsite \"[objet]\"\nlvgwebsite <helio-cruz@hotmail.com>\nhelio-cruz@hotmail.com\nDe : [lastname] [firstname] <[email]>\r\nObjet : [objet]\r\n\r\nCorps du message :\r\n[message]\r\n\r\nSignature :\r\n[lastname] [firstname]\r\n[email]\r\n[tel]\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\nReply-To: [email]\n\n\n\n\nlvgwebsite \"[your-subject]\"\nlvgwebsite <helio-cruz@hotmail.local>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de lvgwebsite (http://localhost/lvg-website)\nReply-To: helio-cruz@hotmail.local\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Formulaire de contact', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1_copy', '', '', '2019-08-01 23:36:11', '2019-08-01 21:36:11', '', 0, 'http://localhost/lvg-website/?post_type=wpcf7_contact_form&#038;p=24', 0, 'wpcf7_contact_form', '', 0),
(25, 1, '2019-08-01 18:37:27', '2019-08-01 16:37:27', '<!-- wp:html -->\n<main class=\"mentions\">\n        <h2 class=\"mentions__title\">MENTIONS LÉGALES</h2>\n            <p>\"L\'informatique doit être au service de chaque citoyen. Elle ne doit porter atteinte, ni à l\'identité humaine, ni aux droits de l\'homme, ni à la vie privée, ni aux libertés individuelles ou publiques\" (Article 1 de la loi du 6/1/1978).</p>\n            <p>C\'est dans cet état d\'esprit que nous mettons à votre disposition des informations sur <a href=\"index.html\">LVG STUDIO</a></p>\n            <p>Nous nous engageons à respecter les conditions de fonctionnement ci-dessous.</p>\n\n        <h2 class=\"mentions__title\">CONDITIONS GÉNÉRALES D\'UTILISATION DU SITE</h2>\n            <p><a href=\"index.html\">LVG STUDIO</a> est destiné à l\'information des internautes qui l\'utilisent.L\'accès et l\'utilisation de ce site sont soumis aux présentes conditions générales détaillées ci-après ainsi qu\'aux lois applicables.</p>\n            <p>La connexion et l\'accès à <a href=\"index.html\">LVG STUDIO</a> implique l\'acceptation intégrale et sans réserve par l\'internaute de toutes les dispositions des présentes conditions générales.</p>\n            <p><a href=\"index.html\">LVG STUDIO</a> est produit par Mr Laurent Lavigne entreprise dénommée \"LVG STUDIO\", immatriculé au Registre du Commerce et des sociétés d\'Albi, sous le numéro G8101. N° de SIRET : 788 675 858 00013 - Code APE 7420ZR. Le siège social est situé 432 Route de Castres 81990 Puygouzon</p>\n            <p>Ce site n\'étant pas un site marchand, les aspects conditions générales de vente et sécurité des modes de paiement ne sont pas abordés dans la charte ci-dessous. La présente charte et les principes qui en découlent peuvent être modifiés par <a href=\"index.html\">LVG STUDIO</a> à n\'importe quel moment. <a href=\"index.html\">LVG STUDIO</a> vous invite donc à consulter régulièrement cette page.</p>\n        \n        <h2 class=\"mentions__title\">DROIT APPLICABLE</h2>\n            <p>Le présent site est soumis au droit Français.</p>\n    </main>\n<!-- /wp:html -->', 'Mentions légales et CGU', '', 'publish', 'closed', 'closed', '', 'mentions-legales-et-cgu', '', '', '2019-08-01 19:25:10', '2019-08-01 17:25:10', '', 0, 'http://localhost/lvg-website/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-08-01 18:33:23', '2019-08-01 16:33:23', '<!-- wp:paragraph {\"className\":\"mentions\"} -->\n <main class=\"mentions\">\n        <h2 class=\"mentions__title\">MENTIONS LÉGALES</h2>\n            <p>\"L\'informatique doit être au service de chaque citoyen. Elle ne doit porter atteinte, ni à l\'identité humaine, ni aux droits de l\'homme, ni à la vie privée, ni aux libertés individuelles ou publiques\" (Article 1 de la loi du 6/1/1978).</p>\n            <p>C\'est dans cet état d\'esprit que nous mettons à votre disposition des informations sur <a href=\"index.html\">LVG STUDIO</a></p>\n            <p>Nous nous engageons à respecter les conditions de fonctionnement ci-dessous.</p>\n\n        <h2 class=\"mentions__title\">CONDITIONS GÉNÉRALES D\'UTILISATION DU SITE</h2>\n            <p><a href=\"index.html\">LVG STUDIO</a> est destiné à l\'information des internautes qui l\'utilisent.L\'accès et l\'utilisation de ce site sont soumis aux présentes conditions générales détaillées ci-après ainsi qu\'aux lois applicables.</p>\n            <p>La connexion et l\'accès à <a href=\"index.html\">LVG STUDIO</a> implique l\'acceptation intégrale et sans réserve par l\'internaute de toutes les dispositions des présentes conditions générales.</p>\n            <p><a href=\"index.html\">LVG STUDIO</a> est produit par Mr Laurent Lavigne entreprise dénommée \"LVG STUDIO\", immatriculé au Registre du Commerce et des sociétés d\'Albi, sous le numéro G8101. N° de SIRET : 788 675 858 00013 - Code APE 7420ZR. Le siège social est situé 432 Route de Castres 81990 Puygouzon</p>\n            <p>Ce site n\'étant pas un site marchand, les aspects conditions générales de vente et sécurité des modes de paiement ne sont pas abordés dans la charte ci-dessous. La présente charte et les principes qui en découlent peuvent être modifiés par <a href=\"index.html\">LVG STUDIO</a> à n\'importe quel moment. <a href=\"index.html\">LVG STUDIO</a> vous invite donc à consulter régulièrement cette page.</p>\n        \n        <h2 class=\"mentions__title\">DROIT APPLICABLE</h2>\n            <p>Le présent site est soumis au droit Français.</p>\n    </main>\n    <footer>\n            <a href=\"https://www.facebook.com/lvgstudio/\" target=\"_blank\" rel=\"noopener noreferrer\"><i class=\"fa fa-facebook-square fa-2x\"></i></a>\n            <a href=\"https://www.instagram.com/lavignephotographe/\" target=\"_blank\" rel=\"noopener noreferrer\"><i class=\"fa fa-instagram fa-2x\"></i></a>\n            <p class=\"mentions-link\"><a href=\"mentions-legales.html\">MENTIONS LÉGALES ET CGU </a>\n                <br><span id=\"year\"></span><a href=\"index.html\">LVG STUDIO</a>\n                <br><a href=\"droit-image.html\">DROIT D\'IMAGE</a></p>\n            <p>SIRET 788 675 858 00013 - R.M. : 81 - R.C.S. : G8101 GREFFE D\'ALBI - APE/NAFA : 7420ZR</p>\n    </footer>\n<!-- /wp:paragraph -->', 'Mentions légales et CGU', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-08-01 18:33:23', '2019-08-01 16:33:23', '', 25, 'http://localhost/lvg-website/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-08-01 18:34:03', '2019-08-01 16:34:03', '<!-- wp:html -->\n <main class=\"mentions\">\n        <h2 class=\"mentions__title\">MENTIONS LÉGALES</h2>\n            <p>\"L\'informatique doit être au service de chaque citoyen. Elle ne doit porter atteinte, ni à l\'identité humaine, ni aux droits de l\'homme, ni à la vie privée, ni aux libertés individuelles ou publiques\" (Article 1 de la loi du 6/1/1978).</p>\n            <p>C\'est dans cet état d\'esprit que nous mettons à votre disposition des informations sur <a href=\"index.html\">LVG STUDIO</a></p>\n            <p>Nous nous engageons à respecter les conditions de fonctionnement ci-dessous.</p>\n\n        <h2 class=\"mentions__title\">CONDITIONS GÉNÉRALES D\'UTILISATION DU SITE</h2>\n            <p><a href=\"index.html\">LVG STUDIO</a> est destiné à l\'information des internautes qui l\'utilisent.L\'accès et l\'utilisation de ce site sont soumis aux présentes conditions générales détaillées ci-après ainsi qu\'aux lois applicables.</p>\n            <p>La connexion et l\'accès à <a href=\"index.html\">LVG STUDIO</a> implique l\'acceptation intégrale et sans réserve par l\'internaute de toutes les dispositions des présentes conditions générales.</p>\n            <p><a href=\"index.html\">LVG STUDIO</a> est produit par Mr Laurent Lavigne entreprise dénommée \"LVG STUDIO\", immatriculé au Registre du Commerce et des sociétés d\'Albi, sous le numéro G8101. N° de SIRET : 788 675 858 00013 - Code APE 7420ZR. Le siège social est situé 432 Route de Castres 81990 Puygouzon</p>\n            <p>Ce site n\'étant pas un site marchand, les aspects conditions générales de vente et sécurité des modes de paiement ne sont pas abordés dans la charte ci-dessous. La présente charte et les principes qui en découlent peuvent être modifiés par <a href=\"index.html\">LVG STUDIO</a> à n\'importe quel moment. <a href=\"index.html\">LVG STUDIO</a> vous invite donc à consulter régulièrement cette page.</p>\n        \n        <h2 class=\"mentions__title\">DROIT APPLICABLE</h2>\n            <p>Le présent site est soumis au droit Français.</p>\n    </main>\n    \n<!-- /wp:html -->', 'Mentions légales et CGU', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-08-01 18:34:03', '2019-08-01 16:34:03', '', 25, 'http://localhost/lvg-website/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-08-01 18:35:10', '2019-08-01 16:35:10', '<!-- wp:html -->\n<main class=\"mentions\">\n        <h2 class=\"mentions__title\">MENTIONS LÉGALES</h2>\n            <p>\"L\'informatique doit être au service de chaque citoyen. Elle ne doit porter atteinte, ni à l\'identité humaine, ni aux droits de l\'homme, ni à la vie privée, ni aux libertés individuelles ou publiques\" (Article 1 de la loi du 6/1/1978).</p>\n            <p>C\'est dans cet état d\'esprit que nous mettons à votre disposition des informations sur <a href=\"index.html\">LVG STUDIO</a></p>\n            <p>Nous nous engageons à respecter les conditions de fonctionnement ci-dessous.</p>\n\n        <h2 class=\"mentions__title\">CONDITIONS GÉNÉRALES D\'UTILISATION DU SITE</h2>\n            <p><a href=\"index.html\">LVG STUDIO</a> est destiné à l\'information des internautes qui l\'utilisent.L\'accès et l\'utilisation de ce site sont soumis aux présentes conditions générales détaillées ci-après ainsi qu\'aux lois applicables.</p>\n            <p>La connexion et l\'accès à <a href=\"index.html\">LVG STUDIO</a> implique l\'acceptation intégrale et sans réserve par l\'internaute de toutes les dispositions des présentes conditions générales.</p>\n            <p><a href=\"index.html\">LVG STUDIO</a> est produit par Mr Laurent Lavigne entreprise dénommée \"LVG STUDIO\", immatriculé au Registre du Commerce et des sociétés d\'Albi, sous le numéro G8101. N° de SIRET : 788 675 858 00013 - Code APE 7420ZR. Le siège social est situé 432 Route de Castres 81990 Puygouzon</p>\n            <p>Ce site n\'étant pas un site marchand, les aspects conditions générales de vente et sécurité des modes de paiement ne sont pas abordés dans la charte ci-dessous. La présente charte et les principes qui en découlent peuvent être modifiés par <a href=\"index.html\">LVG STUDIO</a> à n\'importe quel moment. <a href=\"index.html\">LVG STUDIO</a> vous invite donc à consulter régulièrement cette page.</p>\n        \n        <h2 class=\"mentions__title\">DROIT APPLICABLE</h2>\n            <p>Le présent site est soumis au droit Français.</p>\n    </main>\n<!-- /wp:html -->', 'Mentions légales et CGU', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-08-01 18:35:10', '2019-08-01 16:35:10', '', 25, 'http://localhost/lvg-website/25-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-08-01 18:51:50', '2019-08-01 16:51:50', '', 'MENTIONS LÉGALES ET CGU', '', 'publish', 'closed', 'closed', '', 'mentions-legales-et-cgu', '', '', '2019-08-01 19:43:14', '2019-08-01 17:43:14', '', 0, 'http://localhost/lvg-website/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-08-01 19:44:17', '2019-08-01 17:44:17', '', 'DROIT D\'IMAGE', '', 'publish', 'closed', 'closed', '', 'droit-dimage', '', '', '2019-08-01 19:50:57', '2019-08-01 17:50:57', '', 0, 'http://localhost/lvg-website/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-08-01 19:44:17', '2019-08-01 17:44:17', '', 'Droit d\'image', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-08-01 19:44:17', '2019-08-01 17:44:17', '', 30, 'http://localhost/lvg-website/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-08-01 19:44:51', '2019-08-01 17:44:51', '', 'Droit d\'image', '', 'publish', 'closed', 'closed', '', 'droit-dimage', '', '', '2019-08-01 19:44:53', '2019-08-01 17:44:53', '', 0, 'http://localhost/lvg-website/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2019-08-01 19:49:17', '2019-08-01 17:49:17', '', 'DROIT D\'IMAGE', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-08-01 19:49:17', '2019-08-01 17:49:17', '', 30, 'http://localhost/lvg-website/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-08-01 23:09:51', '2019-08-01 21:09:51', '<label> Votre nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse de messagerie (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Objet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Envoyer\"]\n1\nlvgstudio \"[your-subject]\"\nlvgstudio <helio-cruz@hotmail.local>\nhelio-cruz@hotmail.local\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de lvgstudio (http://localhost/lvg-website)\nReply-To: [your-email]\n\n\n\n\nlvgstudio \"[your-subject]\"\nlvgstudio <helio-cruz@hotmail.local>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de lvgstudio (http://localhost/lvg-website)\nReply-To: helio-cruz@hotmail.local\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2019-08-01 23:09:51', '2019-08-01 21:09:51', '', 0, 'http://localhost/lvg-website/?post_type=wpcf7_contact_form&p=34', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'menu-header', 'menu-header', 0),
(3, 'menu-mentions', 'menu-mentions', 0),
(4, 'menu-droits', 'menu-droits', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(29, 3, 0),
(32, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"4285388482d2557b3bfed8d22d92f9568ffa1236f2a1276297469edc0284d5bf\";a:4:{s:10:\"expiration\";i:1565803631;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594031;}s:64:\"f710aa3a455f156beb302ee4a412517daca3ccdbb16377a9bb28f42f03d5d818\";a:4:{s:10:\"expiration\";i:1564783643;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564610843;}s:64:\"5832a16ca3193f2da4c1bb15e8d63ca4e1d34ebb8633121fccf1fed823dbe5c8\";a:4:{s:10:\"expiration\";i:1564834694;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36\";s:5:\"login\";i:1564661894;}s:64:\"dbc011c209d1ef551c5a7abda8ee28e09228233c8db74dfed398f3b820bd840e\";a:4:{s:10:\"expiration\";i:1564854767;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36\";s:5:\"login\";i:1564681967;}s:64:\"8eadd8e5f514c259996282b532a72c5faf82a0984b222a7d4283bf1c193ea4f3\";a:4:{s:10:\"expiration\";i:1564918753;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36\";s:5:\"login\";i:1564745953;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o'),
(19, 1, 'wp_user-settings-time', '1564657296'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Fazendo dump de dados para tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BYR4K4E3V1Vbb4wCE.n8jWYH4bMjnS/', 'root', 'helio-cruz@hotmail.local', '', '2019-07-31 17:19:32', '', 0, 'root');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
