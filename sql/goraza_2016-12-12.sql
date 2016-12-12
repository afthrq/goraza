# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.13)
# Database: goraza
# Generation Time: 2016-12-12 10:13:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2016-12-09 14:20:47','2016-12-09 14:20:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://localhost:8888/goraza','yes'),
	(2,'home','http://localhost:8888/goraza','yes'),
	(3,'blogname','Goraza','yes'),
	(4,'blogdescription','Welcome to our site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','ahmad.fathoriq@gmail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','','yes'),
	(29,'rewrite_rules','','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:4:{i:0;s:45:\"businessx-extensions/businessx-extensions.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:41:\"wordpress-importer/wordpress-importer.php\";i:3;s:35:\"wordpress-reset/wordpress-reset.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','businessx','yes'),
	(41,'stylesheet','businessx','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','38590','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','page','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','','yes'),
	(83,'page_for_posts','5','yes'),
	(84,'page_on_front','4','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'initial_db_version','38590','yes'),
	(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpgmp_admin_overview\";b:1;s:19:\"wpgmp_form_location\";b:1;s:21:\"wpgmp_manage_location\";b:1;s:14:\"wpgmp_form_map\";b:1;s:16:\"wpgmp_manage_map\";b:1;s:20:\"wpgmp_form_group_map\";b:1;s:22:\"wpgmp_manage_group_map\";b:1;s:21:\"wpgmp_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'fresh_site','0','yes'),
	(94,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'sidebars_widgets','a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"sidebar-index\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-single\";a:0:{}s:12:\"sidebar-page\";a:0:{}s:16:\"sidebar-footer-1\";N;s:16:\"sidebar-footer-2\";N;s:16:\"sidebar-footer-3\";N;s:13:\"array_version\";i:3;s:14:\"section-slider\";a:1:{i:0;s:16:\"bx-item-slider-3\";}s:16:\"section-features\";a:4:{i:0;s:18:\"bx-item-features-3\";i:1;s:18:\"bx-item-features-7\";i:2;s:18:\"bx-item-features-5\";i:3;s:18:\"bx-item-features-6\";}s:13:\"section-about\";a:0:{}}','yes'),
	(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'cron','a:4:{i:1481538756;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1481552447;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1481552483;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(105,'nonce_key','pI~7fS`/D!0xEnTv@$K(=`~K.pW?3LF}&!`31O_l2,pJ8|rF$Gfu2k.)4g5E1%uV','no'),
	(106,'nonce_salt','S+xT,|NQA5Dk(%$NINjOy!lY5P@c0CA6j;SVhD3D&_N50j2m>ww|eivfL{DpS?,]','no'),
	(107,'theme_mods_twentysixteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1481293826;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
	(110,'logged_in_key','jchTN@[p%~{/tuI!Oee1 qG%hO.^0sPX3E&oq_D:E>h;T5#4*odzyIupZj&P,n,B','no'),
	(111,'logged_in_salt','6x)p&}rovLo(#g:FkwqPYH,t7~>|>%pA7.cms7U47n2wxK$-gCbr`4Kxg/|{5&q#','no'),
	(112,'auth_key','FRMEnBX%eWc+sz<%U7^I#-VTO!)e>GS%)jk*>7?UhkP8B{uu o6Yc0%t8agJ;5(u','no'),
	(113,'auth_salt','h gy4>GN/sf9l}&n$#|{s*fk%I1xKw8WdZ7cRwK f8vgI^Mh5z[0w,+5d_/xLAck','no'),
	(115,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.7\";s:7:\"version\";s:3:\"4.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1481536087;s:15:\"version_checked\";s:3:\"4.7\";s:12:\"translations\";a:0:{}}','no'),
	(121,'_site_transient_timeout_browser_55ae8ef8628e0f8d24166d0eb8f0f156','1481898055','no'),
	(122,'_site_transient_browser_55ae8ef8628e0f8d24166d0eb8f0f156','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"54.0.2840.98\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','no'),
	(123,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1481536087;s:7:\"checked\";a:5:{s:15:\"businessx-child\";s:5:\"1.0.0\";s:9:\"businessx\";s:7:\"1.0.5.1\";s:13:\"twentyfifteen\";s:3:\"1.5\";s:14:\"twentyfourteen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip\";}}s:12:\"translations\";a:0:{}}','no'),
	(124,'can_compress_scripts','1','no'),
	(132,'recently_activated','a:0:{}','yes'),
	(144,'_site_transient_timeout_wporg_theme_feature_list','1481304621','no'),
	(145,'_site_transient_wporg_theme_feature_list','a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}','no'),
	(149,'_transient_twentysixteen_categories','1','yes'),
	(150,'current_theme','Businessx','yes'),
	(151,'theme_mods_businessx','a:20:{i:0;b:0;s:27:\"businessx_sections_position\";a:12:{i:0;s:25:\"businessx_section__slider\";i:1;s:27:\"businessx_section__features\";i:2;s:23:\"businessx_section__team\";i:3;s:24:\"businessx_section__about\";i:4;s:26:\"businessx_section__clients\";i:5;s:28:\"businessx_section__portfolio\";i:6;s:26:\"businessx_section__actions\";i:7;s:31:\"businessx_section__testimonials\";i:8;s:26:\"businessx_section__pricing\";i:9;s:22:\"businessx_section__faq\";i:10;s:23:\"businessx_section__hero\";i:11;s:23:\"businessx_section__blog\";}s:18:\"custom_css_post_id\";i:-1;s:19:\"slider_section_hide\";i:0;s:21:\"slider_arrows_disable\";i:1;s:22:\"features_section_title\";s:24:\"What the hell is Goraza?\";s:28:\"features_section_description\";s:126:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus velit nec sem elementum, et convallis massa facilisis.\";s:18:\"about_section_hide\";i:0;s:22:\"about_section_hide_btn\";i:1;s:25:\"about_section_description\";s:732:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus velit nec sem elementum, et convallis massa facilisis. Donec mattis risus sapien, imperdiet consequat urna suscipit in. Nunc in turpis erat. Ut commodo vulputate orci sit amet lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam laoreet sagittis vestibulum. Sed id urna porta, euismod augue et, fermentum metus. Nullam quis vestibulum odio. Praesent rutrum pretium sollicitudin. Curabitur a tortor mauris. Vivamus mollis euismod mauris, sit amet imperdiet nunc eleifend sit amet. Sed justo eros, rhoncus ac maximus vitae, eleifend quis arcu. Mauris cursus consectetur magna, ut mollis nulla varius ac.\";s:15:\"disable_helpers\";i:1;s:17:\"animations_enable\";i:1;s:19:\"about_section_title\";s:8:\"About Us\";s:18:\"team_section_title\";s:50:\"Life and sports cannot be separated; They are one.\";s:24:\"team_section_description\";s:0:\"\";s:13:\"team_bg_image\";s:80:\"http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-119631.jpeg\";s:15:\"team_bg_overlay\";i:1;s:16:\"team_bg_parallax\";i:1;s:20:\"team_bg_parallax_img\";s:80:\"http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-119631.jpeg\";s:20:\"clients_section_hide\";i:1;}','yes'),
	(152,'theme_switched','','yes'),
	(154,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1481536087;s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.11\";s:19:\"akismet/akismet.php\";s:6:\"3.1.11\";s:45:\"businessx-extensions/businessx-extensions.php\";s:7:\"1.0.4.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"4.6\";s:9:\"hello.php\";s:3:\"1.6\";s:19:\"jetpack/jetpack.php\";s:5:\"4.4.2\";s:35:\"redux-framework/redux-framework.php\";s:5:\"3.6.3\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.3\";s:35:\"wordpress-reset/wordpress-reset.php\";s:3:\"1.4\";s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";s:5:\"3.1.8\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.3.2.zip\";s:6:\"tested\";s:3:\"4.7\";s:13:\"compatibility\";O:8:\"stdClass\":1:{s:6:\"scalar\";O:8:\"stdClass\":1:{s:6:\"scalar\";b:0;}}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"21367\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip\";}s:45:\"businessx-extensions/businessx-extensions.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"73838\";s:4:\"slug\";s:20:\"businessx-extensions\";s:6:\"plugin\";s:45:\"businessx-extensions/businessx-extensions.php\";s:11:\"new_version\";s:7:\"1.0.4.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/businessx-extensions/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/businessx-extensions.1.0.4.1.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.6.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"20101\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.4.4.2.zip\";s:14:\"upgrade_notice\";s:88:\"Jetpack 4.4.2 fixes compatibility issues with WordPress 4.7. Please upgrade immediately.\";}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"45018\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:5:\"3.6.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.3.zip\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"14975\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip\";}s:35:\"wordpress-reset/wordpress-reset.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"7057\";s:4:\"slug\";s:15:\"wordpress-reset\";s:6:\"plugin\";s:35:\"wordpress-reset/wordpress-reset.php\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wordpress-reset/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-reset.1.4.zip\";}s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"39250\";s:4:\"slug\";s:20:\"wp-google-map-plugin\";s:6:\"plugin\";s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";s:11:\"new_version\";s:5:\"3.1.8\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/wp-google-map-plugin/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-google-map-plugin.zip\";}}}','no'),
	(155,'widget_bx-item-features','a:5:{s:12:\"_multiwidget\";i:1;i:3;a:10:{s:5:\"title\";s:12:\"Pick a place\";s:10:\"btn_anchor\";s:0:\"\";s:7:\"btn_url\";s:0:\"\";s:11:\"figure_icon\";s:13:\"fa-map-marker\";s:12:\"figure_image\";s:0:\"\";s:5:\"color\";s:7:\"#76bc1c\";s:11:\"show_figure\";i:1;s:11:\"figure_type\";s:7:\"ft-icon\";s:10:\"btn_target\";s:5:\"_self\";s:7:\"excerpt\";s:26:\"Lorem ipsum dolor sit amet\";}i:5;a:10:{s:5:\"title\";s:7:\"Book it\";s:10:\"btn_anchor\";s:0:\"\";s:7:\"btn_url\";s:0:\"\";s:11:\"figure_icon\";s:11:\"fa-calendar\";s:12:\"figure_image\";s:0:\"\";s:5:\"color\";s:7:\"#76bc1c\";s:11:\"show_figure\";i:1;s:11:\"figure_type\";s:7:\"ft-icon\";s:10:\"btn_target\";s:5:\"_self\";s:7:\"excerpt\";s:26:\"Lorem ipsum dolor sit amet\";}i:6;a:10:{s:5:\"title\";s:23:\"Play with your Friends!\";s:10:\"btn_anchor\";s:0:\"\";s:7:\"btn_url\";s:0:\"\";s:11:\"figure_icon\";s:8:\"fa-users\";s:12:\"figure_image\";s:0:\"\";s:5:\"color\";s:7:\"#76bc1c\";s:11:\"show_figure\";i:1;s:11:\"figure_type\";s:7:\"ft-icon\";s:10:\"btn_target\";s:5:\"_self\";s:7:\"excerpt\";s:26:\"Lorem ipsum dolor sit amet\";}i:7;a:10:{s:5:\"title\";s:12:\"Pick a sport\";s:10:\"btn_anchor\";s:0:\"\";s:7:\"btn_url\";s:0:\"\";s:11:\"figure_icon\";s:11:\"fa-futbol-o\";s:12:\"figure_image\";s:0:\"\";s:5:\"color\";s:7:\"#76bc1c\";s:11:\"show_figure\";i:1;s:11:\"figure_type\";s:7:\"ft-icon\";s:10:\"btn_target\";s:5:\"_self\";s:7:\"excerpt\";s:26:\"Lorem ipsum dolor sit amet\";}}','yes'),
	(156,'widget_bx-item-faq','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(157,'widget_bx-item-clients','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(158,'widget_bx-item-actions','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(159,'widget_bx-item-about','a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"excerpt\";s:126:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus velit nec sem elementum, et convallis massa facilisis.\";}}','yes'),
	(160,'widget_bx-item-testimonials','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(161,'widget_bx-item-team','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(162,'widget_bx-item-pricing','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(163,'widget_bx-item-slider','a:2:{s:12:\"_multiwidget\";i:1;i:3;a:28:{s:5:\"title\";s:46:\"Play sports anywhere, right at your fingertips\";s:9:\"paragraph\";s:0:\"\";s:11:\"btn_between\";s:0:\"\";s:10:\"btn_1_text\";s:8:\"Discover\";s:9:\"btn_1_url\";s:17:\"#section-features\";s:8:\"btn_1_bg\";s:7:\"#76bc1c\";s:9:\"btn_1_bgh\";s:7:\"#82cf1f\";s:9:\"btn_1_bgf\";s:7:\"#69a619\";s:8:\"btn_2_bg\";s:7:\"#1c82bc\";s:9:\"btn_2_bgh\";s:7:\"#1c82bc\";s:9:\"btn_2_bgf\";s:7:\"#1972a6\";s:12:\"btn_2_border\";s:7:\"#1c82bc\";s:10:\"btn_2_text\";s:17:\"Call to Action #2\";s:9:\"btn_2_url\";s:0:\"\";s:10:\"background\";s:80:\"http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-104675.jpeg\";s:9:\"ov_bg_top\";s:7:\"#05141e\";s:9:\"ov_bg_bot\";s:7:\"#05141e\";s:8:\"h2_color\";s:7:\"#ffffff\";s:7:\"p_color\";s:7:\"#ffffff\";s:8:\"btn_type\";s:14:\"btns-1-default\";s:9:\"btn_2_bgo\";s:3:\"0.5\";s:9:\"ov_op_top\";s:3:\"0.9\";s:9:\"ov_op_bot\";s:3:\"0.1\";s:9:\"p_opacity\";s:3:\"0.9\";s:11:\"text_shadow\";s:3:\"0.7\";s:8:\"btn_show\";i:1;s:12:\"btn_1_target\";i:0;s:12:\"btn_2_target\";i:0;}}','yes'),
	(166,'jetpack_activated','1','yes'),
	(167,'jetpack_sync_settings_disable','0','yes'),
	(168,'jetpack_file_data','a:1:{s:5:\"4.4.2\";a:50:{s:32:\"31e5b9ae08b62c2b0cd8a7792242298b\";a:14:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:40:\"Check your spelling, style, and grammar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";}s:32:\"3f41b2d629265b5de8108b463abbe8e2\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:64:\"Transform image galleries into gorgeous, full-screen slideshows.\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";}s:32:\"c6ebb418dde302de09600a6025370583\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:65:\"Allow comments with WordPress.com, Twitter, Facebook, or Google+.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";}s:32:\"836f9485669e1bbb02920cb474730df0\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";}s:32:\"ea3970eebf8aac55fc3eca5dca0e0157\";a:14:{s:4:\"name\";s:20:\"Custom Content Types\";s:11:\"description\";s:61:\"Organize and display different types of content on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";}s:32:\"d2bb05ccad3d8789df40ca3abb97336c\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";}s:32:\"a2064eec5b9c7e0d816af71dee7a715f\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"53a4ec755022ef3953699734c343da02\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";}s:32:\"72fecb67ee6704ba0a33e0225316ad06\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"d56e2886185a9eace719cc57d46770df\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";}s:32:\"e391e760617bd0e0736550e34a73d7fe\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:8:\"2.0.3 ??\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"2e345370766346c616b3c5046e817720\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:54:\"Automatically load new content when a visitor scrolls.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";}s:32:\"bd69edbf134de5fae8fdcf2e70a45b56\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";}s:32:\"8110b7a4423aaa619dfa46b8843e10d1\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";}s:32:\"fd7e85d3b4887fa6b6f997d6592c1f33\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";}s:32:\"c5dfef41fad5bcdcaae8e315e5cfc420\";a:14:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";}s:32:\"fd6dc399b92bce76013427e3107c314f\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:51:\"Write posts or pages in plain-text Markdown syntax.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";}s:32:\"c49a35b6482b0426cb07ad28ecf5d7df\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:47:\"Optimize your site for smartphones and tablets.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";}s:32:\"b42e38f6fafd2e4104ebe5bf39b4be47\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"771cfeeba0d3d23ec344d5e781fb0ae2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"54f0661d27c814fc8bde39580181d939\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"46c4c413b5c72bbd3c3dbd14ff8f8adc\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"9ea52fa25783e5ceeb6bfaed3268e64e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";}s:32:\"cfcaafd0fcad087899d715e0b877474d\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";}s:32:\"0d18bfa69bec61550c1d813ce64149b0\";a:14:{s:4:\"name\";s:10:\"Omnisearch\";s:11:\"description\";s:66:\"Search your entire database from a single field in your dashboard.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"16\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:6:\"search\";}s:32:\"3f0a11e23118f0788d424b646a6d465f\";a:14:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:27:\"Speed up images and photos.\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";}s:32:\"e37cfbcb72323fb1fe8255a2edb4d738\";a:14:{s:4:\"name\";s:13:\"Post by Email\";s:11:\"description\";s:34:\"Publish posts by sending an email.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";}s:32:\"728290d131a480bfe7b9e405d7cd925f\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:43:\"Prevent and block malicious login attempts.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";}s:32:\"f9ce784babbbf4dcca99b8cd2ceb420c\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";}s:32:\"052c03877dd3d296a71531cb07ad939a\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"52edecb2a75222e75b2dce4356a4efce\";a:14:{s:4:\"name\";s:13:\"Related Posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";}s:32:\"68b0d01689803c0ea7e4e60a86de2519\";a:14:{s:4:\"name\";s:9:\"SEO tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:18:\"Traffic, Jumpstart\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";}s:32:\"8b059cb50a66b717f1ec842e736b858c\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";}s:32:\"a6d2394329871857401255533a9873f7\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:245:\"shortcodes, shortcode, embeds, media, bandcamp, blip.tv, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";}s:32:\"21496e2897ea5f81605e2f2ac3beb921\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";}s:32:\"e2a54a5d7879a4162709e6ffb540dd08\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"f5c537bc304f55b29c1a87e30be0cd24\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";}s:32:\"59a23643437358a9b557f1d1e20ab040\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"6a90f97c3194cfca5671728eaaeaf15e\";a:14:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:46:\"Secure user authentication with WordPress.com.\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";}s:32:\"b65604e920392e2f7134b646760b75e8\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";}s:32:\"23a586dd7ead00e69ec53eb32ef740e4\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:55:\"Notify your readers of new posts and comments by email.\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";}s:32:\"1d978b8d84d2f378fe1a702a67633b6d\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"b3b983461d7f3d27322a3551ed8a9405\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";}s:32:\"d924e5b05722b0e104448543598f54c0\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}s:32:\"36741583b10c521997e563ad8e1e8b77\";a:14:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";}s:32:\"2b9b44f09b5459617d68dd82ee17002a\";a:14:{s:4:\"name\";s:17:\"Site Verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";}s:32:\"5ab4c0db7c42e10e646342da0274c491\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:44:\"Powerful, simple video hosting for WordPress\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";}s:32:\"60a1d3aa38bc0fe1039e59dd60888543\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";}s:32:\"174ed3416476c2cb9ff5b0f671280b15\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";}s:32:\"28b931a1db19bd24869bd54b14e733d5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";}}}','yes'),
	(169,'jetpack_available_modules','a:1:{s:5:\"4.4.2\";a:37:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"omnisearch\";s:3:\"2.3\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";}}','yes'),
	(170,'jetpack_options','a:4:{s:7:\"version\";s:16:\"4.4.2:1481293957\";s:11:\"old_version\";s:16:\"4.4.2:1481293957\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}','yes'),
	(172,'jetpack_testimonial','0','yes'),
	(173,'do_activate','0','yes'),
	(176,'_transient_timeout_jetpack_https_test_message','1481622530','no'),
	(177,'_transient_jetpack_https_test_message','WordPress reports no SSL support','no'),
	(180,'bxext_fp_installed','1','yes'),
	(191,'_site_transient_timeout_theme_roots','1481537887','no'),
	(192,'_site_transient_theme_roots','a:5:{s:15:\"businessx-child\";s:7:\"/themes\";s:9:\"businessx\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),
	(195,'_transient_timeout_jetpack_https_test','1481622530','no'),
	(196,'_transient_jetpack_https_test','0','no'),
	(197,'_transient_timeout_plugin_slugs','1481622531','no'),
	(198,'_transient_plugin_slugs','a:6:{i:0;s:19:\"akismet/akismet.php\";i:1;s:45:\"businessx-extensions/businessx-extensions.php\";i:2;s:9:\"hello.php\";i:3;s:19:\"jetpack/jetpack.php\";i:4;s:41:\"wordpress-importer/wordpress-importer.php\";i:5;s:35:\"wordpress-reset/wordpress-reset.php\";}','no'),
	(199,'_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b','1481579331','no'),
	(200,'_transient_dash_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Couldn\'t resolve host \'wordpress.org\'</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Couldn\'t resolve host \'planet.wordpress.org\'</p></div><div class=\"rss-widget\"><ul></ul></div>','no'),
	(203,'_transient_timeout_jetpack_idc_allowed','1481540398','no'),
	(204,'_transient_jetpack_idc_allowed','1','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,4,'_wp_page_template','template-frontpage.php'),
	(3,7,'_wp_attached_file','2016/12/pexels-photo-104675.jpeg'),
	(4,7,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:5760;s:6:\"height\";i:3840;s:4:\"file\";s:32:\"2016/12/pexels-photo-104675.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-104675-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pexels-photo-104675-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-104675-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-104675-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-104675-1200x800.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"businessx-tmb-portfolio\";a:4:{s:4:\"file\";s:32:\"pexels-photo-104675-630x415.jpeg\";s:5:\"width\";i:630;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"businessx-tmb-blog-wide\";a:4:{s:4:\"file\";s:32:\"pexels-photo-104675-594x396.jpeg\";s:5:\"width\";i:594;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"businessx-tmb-blog-normal\";a:4:{s:4:\"file\";s:32:\"pexels-photo-104675-250x250.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:13:\"Markus Spiske\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1462014441\";s:9:\"copyright\";s:13:\"Markus Spiske\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(5,6,'_wp_trash_meta_status','publish'),
	(6,6,'_wp_trash_meta_time','1481294879'),
	(7,8,'_wp_trash_meta_status','publish'),
	(8,8,'_wp_trash_meta_time','1481335490'),
	(9,10,'_wp_attached_file','2016/12/pexels-photo-119631.jpeg'),
	(10,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3365;s:6:\"height\";i:1892;s:4:\"file\";s:32:\"2016/12/pexels-photo-119631.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-119631-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pexels-photo-119631-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-119631-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-119631-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-119631-1200x675.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"businessx-tmb-portfolio\";a:4:{s:4:\"file\";s:32:\"pexels-photo-119631-630x415.jpeg\";s:5:\"width\";i:630;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"businessx-tmb-blog-wide\";a:4:{s:4:\"file\";s:32:\"pexels-photo-119631-594x334.jpeg\";s:5:\"width\";i:594;s:6:\"height\";i:334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"businessx-tmb-blog-normal\";a:4:{s:4:\"file\";s:32:\"pexels-photo-119631-250x250.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GF2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1464606034\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"14\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
	(11,9,'_wp_trash_meta_status','publish'),
	(12,9,'_wp_trash_meta_time','1481336011'),
	(13,11,'_wp_trash_meta_status','publish'),
	(14,11,'_wp_trash_meta_time','1481336062'),
	(15,13,'_wp_trash_meta_status','publish'),
	(16,13,'_wp_trash_meta_time','1481536207');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2016-12-09 14:20:47','2016-12-09 14:20:47','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2016-12-09 14:20:47','2016-12-09 14:20:47','',0,'http://localhost:8888/goraza/?p=1',0,'post','',1),
	(2,1,'2016-12-09 14:20:47','2016-12-09 14:20:47','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/goraza/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2016-12-09 14:20:47','2016-12-09 14:20:47','',0,'http://localhost:8888/goraza/?page_id=2',0,'page','',0),
	(3,1,'2016-12-09 14:20:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2016-12-09 14:20:55','0000-00-00 00:00:00','',0,'http://localhost:8888/goraza/?p=3',0,'post','',0),
	(4,1,'2016-12-09 14:34:51','2016-12-09 14:34:51','','Businessx Front Page','','publish','closed','closed','','businessx-front-page','','','2016-12-09 14:34:51','2016-12-09 14:34:51','',0,'http://localhost:8888/goraza/?page_id=4',0,'page','',0),
	(5,1,'2016-12-09 14:34:51','2016-12-09 14:34:51','','Blog','','publish','closed','closed','','blog','','','2016-12-09 14:34:51','2016-12-09 14:34:51','',0,'http://localhost:8888/goraza/?page_id=5',0,'page','',0),
	(6,1,'2016-12-09 14:47:59','2016-12-09 14:47:59','{\n    \"blogdescription\": {\n        \"value\": \"Welcome to our site\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[section-slider]\": {\n        \"value\": [\n            \"bx-item-slider-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::slider_section_hide\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-slider[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyODp7czo1OiJ0aXRsZSI7czo0NjoiUGxheSBzcG9ydHMgYW55d2hlcmUsIHJpZ2h0IGF0IHlvdXIgZmluZ2VydGlwcyI7czo5OiJwYXJhZ3JhcGgiO3M6MjY6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0IjtzOjExOiJidG5fYmV0d2VlbiI7czowOiIiO3M6MTA6ImJ0bl8xX3RleHQiO3M6ODoiRGlzY292ZXIiO3M6OToiYnRuXzFfdXJsIjtzOjE3OiIjc2VjdGlvbi1mZWF0dXJlcyI7czo4OiJidG5fMV9iZyI7czo3OiIjNzZiYzFjIjtzOjk6ImJ0bl8xX2JnaCI7czo3OiIjODJjZjFmIjtzOjk6ImJ0bl8xX2JnZiI7czo3OiIjNjlhNjE5IjtzOjg6ImJ0bl8yX2JnIjtzOjc6IiMxYzgyYmMiO3M6OToiYnRuXzJfYmdoIjtzOjc6IiMxYzgyYmMiO3M6OToiYnRuXzJfYmdmIjtzOjc6IiMxOTcyYTYiO3M6MTI6ImJ0bl8yX2JvcmRlciI7czo3OiIjMWM4MmJjIjtzOjEwOiJidG5fMl90ZXh0IjtzOjE3OiJDYWxsIHRvIEFjdGlvbiAjMiI7czo5OiJidG5fMl91cmwiO3M6MDoiIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjgwOiJodHRwOi8vbG9jYWxob3N0Ojg4ODgvZ29yYXphL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE2LzEyL3BleGVscy1waG90by0xMDQ2NzUuanBlZyI7czo5OiJvdl9iZ190b3AiO3M6NzoiIzA1MTQxZSI7czo5OiJvdl9iZ19ib3QiO3M6NzoiIzA1MTQxZSI7czo4OiJoMl9jb2xvciI7czo3OiIjZmZmZmZmIjtzOjc6InBfY29sb3IiO3M6NzoiI2ZmZmZmZiI7czo4OiJidG5fdHlwZSI7czoxNDoiYnRucy0xLWRlZmF1bHQiO3M6OToiYnRuXzJfYmdvIjtzOjM6IjAuNSI7czo5OiJvdl9vcF90b3AiO3M6MzoiMC45IjtzOjk6Im92X29wX2JvdCI7czozOiIwLjEiO3M6OToicF9vcGFjaXR5IjtzOjM6IjAuOSI7czoxMToidGV4dF9zaGFkb3ciO3M6MzoiMC43IjtzOjg6ImJ0bl9zaG93IjtpOjE7czoxMjoiYnRuXzFfdGFyZ2V0IjtpOjA7czoxMjoiYnRuXzJfdGFyZ2V0IjtpOjA7fQ==\",\n            \"title\": \"Play sports anywhere, right at your fingertips\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"89974e66bbaca0b61f25eadec3b0fbcb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::slider_arrows_disable\": {\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::features_section_title\": {\n        \"value\": \"What the hell is Goraza?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[section-features]\": {\n        \"value\": [\n            \"bx-item-features-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-features[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czowOiIiO3M6MTA6ImJ0bl9hbmNob3IiO3M6MDoiIjtzOjc6ImJ0bl91cmwiO3M6MDoiIjtzOjExOiJmaWd1cmVfaWNvbiI7czoxMToiZmEtZnV0Ym9sLW8iO3M6MTI6ImZpZ3VyZV9pbWFnZSI7czowOiIiO3M6NToiY29sb3IiO3M6NzoiI2JjMWMzNiI7czoxMToic2hvd19maWd1cmUiO2k6MTtzOjExOiJmaWd1cmVfdHlwZSI7czo3OiJmdC1pY29uIjtzOjEwOiJidG5fdGFyZ2V0IjtzOjU6Il9zZWxmIjtzOjc6ImV4Y2VycHQiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0f9a8d7c970c54e6ceb4427ac94379d8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','599786f2-efdf-4b16-a69b-50bfd5074ea4','','','2016-12-09 14:47:59','2016-12-09 14:47:59','',0,'http://localhost:8888/goraza/?p=6',0,'customize_changeset','',0),
	(7,1,'2016-12-09 14:44:07','2016-12-09 14:44:07','','Header-photo','','inherit','open','closed','','pexels-photo-104675','','','2016-12-09 14:44:30','2016-12-09 14:44:30','',0,'http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-104675.jpeg',0,'attachment','image/jpeg',0),
	(8,1,'2016-12-10 02:04:50','2016-12-10 02:04:50','{\n    \"widget_bx-item-features[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czoxMjoiUGljayBhIHBsYWNlIjtzOjEwOiJidG5fYW5jaG9yIjtzOjA6IiI7czo3OiJidG5fdXJsIjtzOjA6IiI7czoxMToiZmlndXJlX2ljb24iO3M6MTM6ImZhLW1hcC1tYXJrZXIiO3M6MTI6ImZpZ3VyZV9pbWFnZSI7czowOiIiO3M6NToiY29sb3IiO3M6NzoiIzc2YmMxYyI7czoxMToic2hvd19maWd1cmUiO2k6MTtzOjExOiJmaWd1cmVfdHlwZSI7czo3OiJmdC1pY29uIjtzOjEwOiJidG5fdGFyZ2V0IjtzOjU6Il9zZWxmIjtzOjc6ImV4Y2VycHQiO3M6MjY6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0Ijt9\",\n            \"title\": \"Pick a place\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7a2d31f99f8f6369d8e6d6e5ae773b64\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[section-features]\": {\n        \"value\": [\n            \"bx-item-features-3\",\n            \"bx-item-features-7\",\n            \"bx-item-features-5\",\n            \"bx-item-features-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-features[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czo3OiJCb29rIGl0IjtzOjEwOiJidG5fYW5jaG9yIjtzOjA6IiI7czo3OiJidG5fdXJsIjtzOjA6IiI7czoxMToiZmlndXJlX2ljb24iO3M6MTE6ImZhLWNhbGVuZGFyIjtzOjEyOiJmaWd1cmVfaW1hZ2UiO3M6MDoiIjtzOjU6ImNvbG9yIjtzOjc6IiM3NmJjMWMiO3M6MTE6InNob3dfZmlndXJlIjtpOjE7czoxMToiZmlndXJlX3R5cGUiO3M6NzoiZnQtaWNvbiI7czoxMDoiYnRuX3RhcmdldCI7czo1OiJfc2VsZiI7czo3OiJleGNlcnB0IjtzOjI2OiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCI7fQ==\",\n            \"title\": \"Book it\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2feceeab5d9ffca493e1a120b7f02eba\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::features_section_description\": {\n        \"value\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus velit nec sem elementum, et convallis massa facilisis.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-features[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czoyMzoiUGxheSB3aXRoIHlvdXIgRnJpZW5kcyEiO3M6MTA6ImJ0bl9hbmNob3IiO3M6MDoiIjtzOjc6ImJ0bl91cmwiO3M6MDoiIjtzOjExOiJmaWd1cmVfaWNvbiI7czo4OiJmYS11c2VycyI7czoxMjoiZmlndXJlX2ltYWdlIjtzOjA6IiI7czo1OiJjb2xvciI7czo3OiIjNzZiYzFjIjtzOjExOiJzaG93X2ZpZ3VyZSI7aToxO3M6MTE6ImZpZ3VyZV90eXBlIjtzOjc6ImZ0LWljb24iO3M6MTA6ImJ0bl90YXJnZXQiO3M6NToiX3NlbGYiO3M6NzoiZXhjZXJwdCI7czoyNjoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQiO30=\",\n            \"title\": \"Play with your Friends!\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49bf50141cf23c93f0d6642e12e88ce3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-features[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czoxMjoiUGljayBhIHNwb3J0IjtzOjEwOiJidG5fYW5jaG9yIjtzOjA6IiI7czo3OiJidG5fdXJsIjtzOjA6IiI7czoxMToiZmlndXJlX2ljb24iO3M6MTE6ImZhLWZ1dGJvbC1vIjtzOjEyOiJmaWd1cmVfaW1hZ2UiO3M6MDoiIjtzOjU6ImNvbG9yIjtzOjc6IiM3NmJjMWMiO3M6MTE6InNob3dfZmlndXJlIjtpOjE7czoxMToiZmlndXJlX3R5cGUiO3M6NzoiZnQtaWNvbiI7czoxMDoiYnRuX3RhcmdldCI7czo1OiJfc2VsZiI7czo3OiJleGNlcnB0IjtzOjI2OiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCI7fQ==\",\n            \"title\": \"Pick a sport\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1f3b45d1dd65ca77a0590ebda5da3f8d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[section-about]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-about[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJleGNlcnB0IjtzOjEyNjoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gQWVuZWFuIGZpbmlidXMgdmVsaXQgbmVjIHNlbSBlbGVtZW50dW0sIGV0IGNvbnZhbGxpcyBtYXNzYSBmYWNpbGlzaXMuIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c32c96c2bbccdd2deb6a6bcb403ae52c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::about_section_hide\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::about_section_hide_btn\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::about_section_description\": {\n        \"value\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus velit nec sem elementum, et convallis massa facilisis. Donec mattis risus sapien, imperdiet consequat urna suscipit in. Nunc in turpis erat. Ut commodo vulputate orci sit amet lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \\nAliquam laoreet sagittis vestibulum. Sed id urna porta, euismod augue et, fermentum metus. Nullam quis vestibulum odio. Praesent rutrum pretium sollicitudin. Curabitur a tortor mauris. Vivamus mollis euismod mauris, sit amet imperdiet nunc eleifend sit amet. Sed justo eros, rhoncus ac maximus vitae, eleifend quis arcu. Mauris cursus consectetur magna, ut mollis nulla varius ac.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::disable_helpers\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::animations_enable\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','fe38a3e0-9e8c-4bbb-ae66-0854b6123374','','','2016-12-10 02:04:50','2016-12-10 02:04:50','',0,'http://localhost:8888/goraza/?p=8',0,'customize_changeset','',0),
	(9,1,'2016-12-10 02:13:31','2016-12-10 02:13:31','{\n    \"businessx::about_section_title\": {\n        \"value\": \"About Us\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::team_section_title\": {\n        \"value\": \"Life and sports cannot be seperated; They are one.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::team_section_description\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::team_bg_image\": {\n        \"value\": \"http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-119631.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::team_bg_overlay\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::team_bg_parallax\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::team_bg_parallax_img\": {\n        \"value\": \"http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-119631.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::clients_section_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','15a37ac0-c985-4003-9741-220983aa5d80','','','2016-12-10 02:13:31','2016-12-10 02:13:31','',0,'http://localhost:8888/goraza/?p=9',0,'customize_changeset','',0),
	(10,1,'2016-12-10 02:09:21','2016-12-10 02:09:21','','pexels-photo-119631','','inherit','open','closed','','pexels-photo-119631','','','2016-12-10 02:09:21','2016-12-10 02:09:21','',0,'http://localhost:8888/goraza/wp-content/uploads/2016/12/pexels-photo-119631.jpeg',0,'attachment','image/jpeg',0),
	(11,1,'2016-12-10 02:14:21','2016-12-10 02:14:21','{\n    \"businessx::team_section_title\": {\n        \"value\": \"Life and sports cannot be separated; They are one.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','db531296-4306-4355-b75d-d914f36c4cdd','','','2016-12-10 02:14:21','2016-12-10 02:14:21','',0,'http://localhost:8888/goraza/?p=11',0,'customize_changeset','',0),
	(12,1,'2016-12-10 11:07:06','0000-00-00 00:00:00','{\n    \"sidebars_widgets[section-actions]\": {\n        \"value\": [\n            \"bx-item-actions-3\",\n            \"bx-item-actions-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-actions[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyODp7czo1OiJ0aXRsZSI7czo0OiJIYWxvIjtzOjI6Im9yIjtzOjI6Ik9yIjtzOjU6ImltYWdlIjtzOjA6IiI7czoxMToiYnRuXzFfdGl0bGUiO3M6MTQ6IkNhbGwgdG8gQWN0aW9uIjtzOjk6ImJ0bl8xX3VybCI7czowOiIiO3M6ODoiYnRuXzFfYmciO3M6NzoiI2VlYjEyMCI7czoxMToiYnRuXzFfaG92ZXIiO3M6NzoiI2ZmYmMyMSI7czoxMjoiYnRuXzFfYWN0aXZlIjtzOjc6IiNkYmEyMWQiO3M6MTE6ImJ0bl8yX3RpdGxlIjtzOjE0OiJDYWxsIHRvIEFjdGlvbiI7czo5OiJidG5fMl91cmwiO3M6MDoiIjtzOjg6ImJ0bl8yX2JnIjtzOjc6IiNlZWIxMjAiO3M6MTE6ImJ0bl8yX2hvdmVyIjtzOjc6IiNmZmJjMjEiO3M6MTI6ImJ0bl8yX2FjdGl2ZSI7czo3OiIjZGJhMjFkIjtzOjExOiJ0aXRsZV9jb2xvciI7czo3OiIjZmZmZmZmIjtzOjEzOiJleGNlcnB0X2NvbG9yIjtzOjc6IiNmZmZmZmYiO3M6MTE6ImxpbmtzX2NvbG9yIjtzOjc6IiNmZmViM2IiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO3M6NzoiI2RmMzAzNCI7czoxNjoiYmFja2dyb3VuZF9pbWFnZSI7czowOiIiO3M6MTM6Im92ZXJsYXlfY29sb3IiO3M6NzoiIzAwMDAwMCI7czo3OiJleGNlcnB0IjtzOjI6IllhIjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjE1OiJvdmVybGF5X29wYWNpdHkiO3M6MzoiMC41IjtzOjEwOiJzaG93X2J0bl8xIjtpOjE7czoxMjoiYnRuXzFfdGFyZ2V0IjtpOjA7czoxMDoic2hvd19idG5fMiI7aTowO3M6MTI6ImJ0bl8yX3RhcmdldCI7aTowO3M6Nzoib3ZlcmxheSI7aTowO3M6ODoicGFyYWxsYXgiO2k6MDt9\",\n            \"title\": \"Halo\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0149f5d9ca3ce3bf07a66f4b4c4ba586\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::portfolio_section_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::hero_section_title\": {\n        \"value\": \"If you\'re interested with this project, subscribe to our newsletter\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::hero_section_description\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::hero_section_btns\": {\n        \"value\": \"btns-1-default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::hero_section_1st_btn\": {\n        \"value\": \"Subscribe\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::actions_section_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-actions[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyODp7czo1OiJ0aXRsZSI7czo0OiJIYWxvIjtzOjI6Im9yIjtzOjI6Ik9yIjtzOjU6ImltYWdlIjtzOjA6IiI7czoxMToiYnRuXzFfdGl0bGUiO3M6MTQ6IkNhbGwgdG8gQWN0aW9uIjtzOjk6ImJ0bl8xX3VybCI7czowOiIiO3M6ODoiYnRuXzFfYmciO3M6NzoiI2VlYjEyMCI7czoxMToiYnRuXzFfaG92ZXIiO3M6NzoiI2ZmYmMyMSI7czoxMjoiYnRuXzFfYWN0aXZlIjtzOjc6IiNkYmEyMWQiO3M6MTE6ImJ0bl8yX3RpdGxlIjtzOjE0OiJDYWxsIHRvIEFjdGlvbiI7czo5OiJidG5fMl91cmwiO3M6MDoiIjtzOjg6ImJ0bl8yX2JnIjtzOjc6IiNlZWIxMjAiO3M6MTE6ImJ0bl8yX2hvdmVyIjtzOjc6IiNmZmJjMjEiO3M6MTI6ImJ0bl8yX2FjdGl2ZSI7czo3OiIjZGJhMjFkIjtzOjExOiJ0aXRsZV9jb2xvciI7czo3OiIjZmZmZmZmIjtzOjEzOiJleGNlcnB0X2NvbG9yIjtzOjc6IiNmZmZmZmYiO3M6MTE6ImxpbmtzX2NvbG9yIjtzOjc6IiNmZmViM2IiO3M6MTY6ImJhY2tncm91bmRfY29sb3IiO3M6NzoiI2RmMzAzNCI7czoxNjoiYmFja2dyb3VuZF9pbWFnZSI7czowOiIiO3M6MTM6Im92ZXJsYXlfY29sb3IiO3M6NzoiIzAwMDAwMCI7czo3OiJleGNlcnB0IjtzOjA6IiI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czoxNToib3ZlcmxheV9vcGFjaXR5IjtzOjM6IjAuNSI7czoxMDoic2hvd19idG5fMSI7aToxO3M6MTI6ImJ0bl8xX3RhcmdldCI7aTowO3M6MTA6InNob3dfYnRuXzIiO2k6MDtzOjEyOiJidG5fMl90YXJnZXQiO2k6MDtzOjc6Im92ZXJsYXkiO2k6MDtzOjg6InBhcmFsbGF4IjtpOjA7fQ==\",\n            \"title\": \"Halo\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"49a0be918c02a2d58766c0b9b3867795\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[section-pricing]\": {\n        \"value\": [\n            \"bx-item-pricing-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::testimonials_section_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::pricing_section_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::blog_section_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"widget_bx-item-pricing[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyMDp7czo1OiJ0aXRsZSI7czoxMToiUGFrZXQgSGVtYXQiO3M6NToicHJpY2UiO3M6MDoiIjtzOjY6InBlcmlvZCI7czowOiIiO3M6NToiYmFkZ2UiO3M6MDoiIjtzOjEwOiJidG5fYW5jaG9yIjtzOjA6IiI7czo3OiJidG5fdXJsIjtzOjA6IiI7czo3OiJpdGVtX2JnIjtzOjc6IiM0ZWI1ZDUiO3M6ODoiaXRlbV9idG4iO3M6NzoiIzc2YmMxYyI7czoxNDoiaXRlbV9idG5faG92ZXIiO3M6NzoiIzgyY2YxZiI7czoxNToiaXRlbV9idG5fYWN0aXZlIjtzOjc6IiM2OWE2MTkiO3M6MTI6Iml0ZW1faWNvbl9hdiI7czo3OiIjYzNlZjkzIjtzOjE0OiJpdGVtX2ljb25fdW5hdiI7czo3OiIjZWY5MzkzIjtzOjEwOiJpdGVtX2JhZGdlIjtzOjc6IiNjMTdlZTAiO3M6MTU6Iml0ZW1fYmFkZ2VfdGV4dCI7czo3OiIjZmZmZmZmIjtzOjc6Imxpc3RfYmciO3M6NzoiI2ZmZmZmZiI7czoxMDoibGlzdF9jb2xvciI7czo3OiIjNjM2MzYzIjtzOjc6ImRldGFpbHMiO3M6NzoiI2ZmZmZmZiI7czo0OiJsaXN0IjthOjE6e2k6MDthOjI6e3M6Njoic3RhdHVzIjtzOjk6ImF2YWlsYWJsZSI7czo0OiJpdGVtIjtzOjA6IiI7fX1zOjQ6Imljb3MiO2k6MTtzOjEwOiJidG5fdGFyZ2V0IjtzOjU6Il9zZWxmIjt9\",\n            \"title\": \"Paket Hemat\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8dd803f2c843f532b16d0de83c04e0da\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"businessx::faq_section_title\": {\n        \"value\": \"Playing Sports made easier.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"businessx::faq_section_description\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','e4662251-6920-40e3-b2d1-8dfa5cba2c3e','','','2016-12-10 11:17:04','2016-12-10 11:17:04','',0,'http://localhost:8888/goraza/?p=12',0,'customize_changeset','',0),
	(13,1,'2016-12-12 09:50:07','2016-12-12 09:50:07','{\n    \"widget_bx-item-slider[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyODp7czo1OiJ0aXRsZSI7czo0NjoiUGxheSBzcG9ydHMgYW55d2hlcmUsIHJpZ2h0IGF0IHlvdXIgZmluZ2VydGlwcyI7czo5OiJwYXJhZ3JhcGgiO3M6MDoiIjtzOjExOiJidG5fYmV0d2VlbiI7czowOiIiO3M6MTA6ImJ0bl8xX3RleHQiO3M6ODoiRGlzY292ZXIiO3M6OToiYnRuXzFfdXJsIjtzOjE3OiIjc2VjdGlvbi1mZWF0dXJlcyI7czo4OiJidG5fMV9iZyI7czo3OiIjNzZiYzFjIjtzOjk6ImJ0bl8xX2JnaCI7czo3OiIjODJjZjFmIjtzOjk6ImJ0bl8xX2JnZiI7czo3OiIjNjlhNjE5IjtzOjg6ImJ0bl8yX2JnIjtzOjc6IiMxYzgyYmMiO3M6OToiYnRuXzJfYmdoIjtzOjc6IiMxYzgyYmMiO3M6OToiYnRuXzJfYmdmIjtzOjc6IiMxOTcyYTYiO3M6MTI6ImJ0bl8yX2JvcmRlciI7czo3OiIjMWM4MmJjIjtzOjEwOiJidG5fMl90ZXh0IjtzOjE3OiJDYWxsIHRvIEFjdGlvbiAjMiI7czo5OiJidG5fMl91cmwiO3M6MDoiIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjgwOiJodHRwOi8vbG9jYWxob3N0Ojg4ODgvZ29yYXphL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE2LzEyL3BleGVscy1waG90by0xMDQ2NzUuanBlZyI7czo5OiJvdl9iZ190b3AiO3M6NzoiIzA1MTQxZSI7czo5OiJvdl9iZ19ib3QiO3M6NzoiIzA1MTQxZSI7czo4OiJoMl9jb2xvciI7czo3OiIjZmZmZmZmIjtzOjc6InBfY29sb3IiO3M6NzoiI2ZmZmZmZiI7czo4OiJidG5fdHlwZSI7czoxNDoiYnRucy0xLWRlZmF1bHQiO3M6OToiYnRuXzJfYmdvIjtzOjM6IjAuNSI7czo5OiJvdl9vcF90b3AiO3M6MzoiMC45IjtzOjk6Im92X29wX2JvdCI7czozOiIwLjEiO3M6OToicF9vcGFjaXR5IjtzOjM6IjAuOSI7czoxMToidGV4dF9zaGFkb3ciO3M6MzoiMC43IjtzOjg6ImJ0bl9zaG93IjtpOjE7czoxMjoiYnRuXzFfdGFyZ2V0IjtpOjA7czoxMjoiYnRuXzJfdGFyZ2V0IjtpOjA7fQ==\",\n            \"title\": \"Play sports anywhere, right at your fingertips\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2f5497868d4818d7402d0199f3987c05\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','23632370-b4c8-4e6c-94fa-5a53b6e51a88','','','2016-12-12 09:50:07','2016-12-12 09:50:07','',0,'http://localhost:8888/goraza/?p=13',0,'customize_changeset','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'locale',''),
	(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(12,1,'wp_user_level','10'),
	(13,1,'dismissed_wp_pointers',''),
	(14,1,'default_password_nag',''),
	(15,1,'show_welcome_panel','1'),
	(17,1,'wp_dashboard_quick_press_last_post_id','3'),
	(18,1,'wp_user-settings','libraryContent=browse'),
	(19,1,'wp_user-settings-time','1481334862'),
	(20,1,'session_tokens','a:1:{s:64:\"7fc2c1127f7b99fd600ca0453e89ac341b479f93d8b5361e841ccdbf13c35b9b\";a:4:{s:10:\"expiration\";i:1481709295;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36\";s:5:\"login\";i:1481536495;}}');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$B.9cy5LykwUrsrhabvdB1hsljQy5Ff1','admin','ahmad.fathoriq@gmail.com','','2016-12-09 14:20:47','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
