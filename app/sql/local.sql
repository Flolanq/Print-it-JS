-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-09-11 16:20:45','2023-09-11 16:20:45','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://print-it-js.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://print-it-js.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Print It JS','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','twentytwentythree','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','twentytwentythree','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','55853','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1710001245','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','55853','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','1','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1694614845;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1694622045;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1694622059;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1694622060;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1694622091;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1695054086;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1695140445;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'_transient_wp_core_block_css_files','a:496:{i:0;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/editor.css\";i:3;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/editor.min.css\";i:4;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/style-rtl.css\";i:5;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/style.css\";i:7;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/archives/style.min.css\";i:8;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/editor.css\";i:11;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/editor.min.css\";i:12;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/style-rtl.css\";i:13;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/style.css\";i:15;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/style.min.css\";i:16;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/theme.css\";i:19;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/audio/theme.min.css\";i:20;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/editor.css\";i:23;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/editor.min.css\";i:24;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/style.css\";i:27;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/avatar/style.min.css\";i:28;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/block/editor-rtl.css\";i:29;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/block/editor.css\";i:31;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/block/editor.min.css\";i:32;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/editor-rtl.css\";i:33;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/editor.css\";i:35;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/editor.min.css\";i:36;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/style-rtl.css\";i:37;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/style.css\";i:39;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/button/style.min.css\";i:40;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/editor.css\";i:43;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/editor.min.css\";i:44;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/style.css\";i:47;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/buttons/style.min.css\";i:48;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/calendar/style.css\";i:51;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/calendar/style.min.css\";i:52;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/editor.css\";i:55;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/editor.min.css\";i:56;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/style-rtl.css\";i:57;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/style.css\";i:59;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/categories/style.min.css\";i:60;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/editor-rtl.css\";i:61;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/editor.css\";i:63;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/editor.min.css\";i:64;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/style-rtl.css\";i:65;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:83:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/style.css\";i:67;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/style.min.css\";i:68;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/theme-rtl.css\";i:69;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:83:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/theme.css\";i:71;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/code/theme.min.css\";i:72;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/editor.css\";i:75;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/editor.min.css\";i:76;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/style-rtl.css\";i:77;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/style.css\";i:79;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/columns/style.min.css\";i:80;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-content/style.css\";i:83;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-content/style.min.css\";i:84;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-template/style.css\";i:87;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comment-template/style.min.css\";i:88;s:111:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:115:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:107:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:111:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:107:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:106:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/style.css\";i:99;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-title/editor.css\";i:103;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/editor.css\";i:107;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/editor.min.css\";i:108;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/style-rtl.css\";i:109;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/style.css\";i:111;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/comments/style.min.css\";i:112;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/editor.css\";i:115;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/editor.min.css\";i:116;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/style-rtl.css\";i:117;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/style.css\";i:119;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/cover/style.min.css\";i:120;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/editor-rtl.css\";i:121;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/editor.css\";i:123;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/editor.min.css\";i:124;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/style-rtl.css\";i:125;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/style.css\";i:127;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/details/style.min.css\";i:128;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/editor.css\";i:131;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/editor.min.css\";i:132;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/style-rtl.css\";i:133;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/style.css\";i:135;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/style.min.css\";i:136;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/theme.css\";i:139;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/embed/theme.min.css\";i:140;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/editor-rtl.css\";i:141;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/editor.css\";i:143;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/editor.min.css\";i:144;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/style-rtl.css\";i:145;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:83:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/style.css\";i:147;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/file/style.min.css\";i:148;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/footnotes/style.css\";i:151;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/footnotes/style.min.css\";i:152;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/freeform/editor.css\";i:155;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/freeform/editor.min.css\";i:156;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/editor.css\";i:159;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/editor.min.css\";i:160;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/style.css\";i:163;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/style.min.css\";i:164;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/theme.css\";i:167;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/gallery/theme.min.css\";i:168;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/editor-rtl.css\";i:169;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/editor.css\";i:171;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/editor.min.css\";i:172;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/style-rtl.css\";i:173;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/style.css\";i:175;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/style.min.css\";i:176;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/theme-rtl.css\";i:177;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/theme.css\";i:179;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/group/theme.min.css\";i:180;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/heading/style-rtl.css\";i:181;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/heading/style.css\";i:183;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/heading/style.min.css\";i:184;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/html/editor-rtl.css\";i:185;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/html/editor.css\";i:187;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/html/editor.min.css\";i:188;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/editor-rtl.css\";i:189;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/editor.css\";i:191;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/editor.min.css\";i:192;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/style-rtl.css\";i:193;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/style.css\";i:195;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/style.min.css\";i:196;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/theme-rtl.css\";i:197;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/theme.css\";i:199;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/image/theme.min.css\";i:200;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-comments/style.css\";i:203;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/editor.css\";i:207;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/style.css\";i:211;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/list/style-rtl.css\";i:213;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:83:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/list/style.css\";i:215;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/list/style.min.css\";i:216;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/editor.css\";i:219;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/editor.min.css\";i:220;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/style.css\";i:223;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/media-text/style.min.css\";i:224;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/more/editor-rtl.css\";i:225;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/more/editor.css\";i:227;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/more/editor.min.css\";i:228;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/editor.css\";i:231;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/style.css\";i:235;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:106:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/editor.css\";i:243;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/editor.min.css\";i:244;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/style.css\";i:247;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/navigation/style.min.css\";i:248;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/nextpage/editor.css\";i:251;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/editor.css\";i:255;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/editor.min.css\";i:256;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/style.css\";i:259;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/page-list/style.min.css\";i:260;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/editor.css\";i:263;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/style.css\";i:267;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/paragraph/style.min.css\";i:268;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-author/style.css\";i:271;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-author/style.min.css\";i:272;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:106:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:101:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:105:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/style.css\";i:279;s:101:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-date/style.css\";i:283;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-date/style.min.css\";i:284;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/style.css\";i:291;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:107:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:106:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/style.css\";i:299;s:102:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:107:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:101:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/editor.css\";i:307;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/editor.min.css\";i:308;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/style.css\";i:311;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-template/style.min.css\";i:312;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-terms/style.css\";i:315;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-terms/style.min.css\";i:316;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-title/style.css\";i:319;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/post-title/style.min.css\";i:320;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/preformatted/style.css\";i:323;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/preformatted/style.min.css\";i:324;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/editor.css\";i:327;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/style.css\";i:331;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/style.min.css\";i:332;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/theme.css\";i:335;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:108:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:112:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:104:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:108:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:104:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/editor.css\";i:343;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/style.css\";i:347;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-title/style.css\";i:351;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query-title/style.min.css\";i:352;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query/editor-rtl.css\";i:353;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query/editor.css\";i:355;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/query/editor.min.css\";i:356;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/style-rtl.css\";i:357;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/style.css\";i:359;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/style.min.css\";i:360;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/theme.css\";i:363;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/quote/theme.min.css\";i:364;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/read-more/style.css\";i:367;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/read-more/style.min.css\";i:368;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:83:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/editor.css\";i:371;s:87:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/editor.min.css\";i:372;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/style-rtl.css\";i:373;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:82:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/style.css\";i:375;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/rss/style.min.css\";i:376;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/editor-rtl.css\";i:377;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/editor.css\";i:379;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/editor.min.css\";i:380;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/style-rtl.css\";i:381;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/style.css\";i:383;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/style.min.css\";i:384;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/theme-rtl.css\";i:385;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/theme.css\";i:387;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/search/theme.min.css\";i:388;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/editor.css\";i:391;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/editor.min.css\";i:392;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/style-rtl.css\";i:393;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/style.css\";i:395;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/style.min.css\";i:396;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/theme.css\";i:399;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/separator/theme.min.css\";i:400;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/shortcode/editor.css\";i:403;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/editor.css\";i:407;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/style.css\";i:411;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-logo/style.min.css\";i:412;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-tagline/editor.css\";i:415;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:98:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/editor.css\";i:419;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/editor.min.css\";i:420;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/style.css\";i:423;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/site-title/style.min.css\";i:424;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-link/editor.css\";i:427;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-link/editor.min.css\";i:428;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/editor.css\";i:431;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/editor.min.css\";i:432;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/style.css\";i:435;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/social-links/style.min.css\";i:436;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:94:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:86:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/editor.css\";i:439;s:90:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/editor.min.css\";i:440;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/style.css\";i:443;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/spacer/style.min.css\";i:444;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/editor-rtl.css\";i:445;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/editor.css\";i:447;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/editor.min.css\";i:448;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/style-rtl.css\";i:449;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/style.css\";i:451;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/style.min.css\";i:452;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/theme-rtl.css\";i:453;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/theme.css\";i:455;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/table/theme.min.css\";i:456;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/tag-cloud/style.css\";i:459;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:101:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/editor.css\";i:463;s:97:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/editor.min.css\";i:464;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/theme.css\";i:467;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/template-part/theme.min.css\";i:468;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:103:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/term-description/style.css\";i:471;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/term-description/style.min.css\";i:472;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:100:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/editor.css\";i:475;s:96:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:99:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:91:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/style.css\";i:479;s:95:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/text-columns/style.min.css\";i:480;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/verse/style-rtl.css\";i:481;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/verse/style.css\";i:483;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/verse/style.min.css\";i:484;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/editor-rtl.css\";i:485;s:93:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:85:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/editor.css\";i:487;s:89:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/editor.min.css\";i:488;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/style-rtl.css\";i:489;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/style.css\";i:491;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/style.min.css\";i:492;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/theme-rtl.css\";i:493;s:92:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:84:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/theme.css\";i:495;s:88:\"/Users/macbook/Local Sites/print-it-js/app/public/wp-includes/blocks/video/theme.min.css\";}','yes');
INSERT INTO `wp_options` VALUES (121,'nonce_key','egiZ.i!Kcil_`9,z!q;utcIQNF3B}jb]6p=n_/q-^V>)%pUYO6B*{vY3D2^U1[~b','no');
INSERT INTO `wp_options` VALUES (122,'nonce_salt','|.]jn}?q,Wc3z1Ln/S:7s|m`k6GfYd$b5XwyXciz41gmO2bDo.1ug7>lyn6(]S?/','no');
INSERT INTO `wp_options` VALUES (124,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwentythree','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (127,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1694613223;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1694613225;s:7:\"checked\";a:3:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_timeout_browser_12cff7c401b241581c1f347ece73543d','1695054059','no');
INSERT INTO `wp_options` VALUES (134,'_site_transient_browser_12cff7c401b241581c1f347ece73543d','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"116.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (135,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1695054060','no');
INSERT INTO `wp_options` VALUES (136,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (144,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (151,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (156,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1694613225;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.78\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.78.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2902233\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2902233\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}}}','no');
INSERT INTO `wp_options` VALUES (157,'ai1wm_secret_key','EfhxSvZhAvjS','yes');
INSERT INTO `wp_options` VALUES (160,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (171,'_site_transient_ai1wm_last_check_for_updates','1694613225','no');
INSERT INTO `wp_options` VALUES (172,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (193,'_site_transient_timeout_theme_roots','1694615023','no');
INSERT INTO `wp_options` VALUES (194,'_site_transient_theme_roots','a:3:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (195,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,2,'_edit_lock','1694524515:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-09-11 16:20:45','2023-09-11 16:20:45','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-09-11 16:20:45','2023-09-11 16:20:45','',0,'http://print-it-js.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-09-11 16:20:45','2023-09-11 16:20:45','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://print-it-js.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-09-11 16:20:45','2023-09-11 16:20:45','',0,'http://print-it-js.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-09-11 16:20:45','2023-09-11 16:20:45','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://print-it-js.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-09-11 16:20:45','2023-09-11 16:20:45','',0,'http://print-it-js.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-09-11 16:20:46','2023-09-11 16:20:46','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-09-11 16:20:46','2023-09-11 16:20:46','',0,'https://print-it-js.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-09-11 16:21:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-09-11 16:21:00','0000-00-00 00:00:00','',0,'http://print-it-js.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-09-11 18:23:31','2023-09-11 18:23:31','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-09-11 18:23:31','2023-09-11 18:23:31','',0,'http://print-it-js.local/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentythree','twentytwentythree',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','lanquetin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"b25e17e5c04fa141e7f29113733eff76317293941ed757f47fd98afc17caf451\";a:4:{s:10:\"expiration\";i:1695658859;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1694449259;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-09-12T13:17:37.519Z\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'lanquetin','$P$BPielQXLZ.C0M8hBLKahudME9ynJmA0','lanquetin','dev-email@wpengine.local','http://print-it-js.local','2023-09-11 16:20:45','',0,'lanquetin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 15:53:53
