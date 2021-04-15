-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: dbwordpress
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dbwordpress`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dbwordpress` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dbwordpress`;

--
-- Table structure for table `wp_7777_commentmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_commentmeta`
--


--
-- Table structure for table `wp_7777_comments`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_comments`
--

INSERT INTO `wp_7777_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES (1,1,'Un commentateur WordPress','wapuu@wordpress.example','https://wordpress.org/','','2021-04-07 15:47:09','2021-04-07 13:47:09','Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);

--
-- Table structure for table `wp_7777_links`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_links`
--


--
-- Table structure for table `wp_7777_options`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_options`
--

INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (1,'siteurl','http://192.168.122.10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (2,'home','http://192.168.122.10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (3,'blogname','testweb','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (4,'blogdescription','Un site utilisant WordPress','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (6,'admin_email','test@burdo.fr','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (18,'default_category','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (23,'date_format','j F Y','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (24,'time_format','G\\hi','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (25,'links_updated_date_format','d F Y G\\hi','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (29,'rewrite_rules','a:81:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (34,'category_base','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (39,'recently_edited','','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (40,'template','twentytwentyone','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (41,'stylesheet','twentytwentyone','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (48,'upload_path','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (52,'tag_base','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (80,'timezone_string','Europe/Paris','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (91,'admin_email_lifespan','1633355222','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (99,'wp_7777_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (101,'WPLANG','fr_FR','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (102,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (103,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (104,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (105,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (106,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (107,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (108,'cron','a:6:{i:1618429630;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618451230;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618494429;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618494430;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1618494482;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (109,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (110,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (115,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (116,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (117,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (119,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (120,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (122,'theme_mods_twentytwentyone','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (130,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"http://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"http://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618426113;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (133,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618426144;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (134,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618426146;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (135,'can_compress_scripts','0','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (153,'_site_transient_timeout_theme_roots','1618427937','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (154,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (155,'_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9','1619030964','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (156,'_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (157,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":2}','yes');

--
-- Table structure for table `wp_7777_postmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_postmeta`
--

INSERT INTO `wp_7777_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_7777_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_7777_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (3,2,'_edit_lock','1617803309:1');

--
-- Table structure for table `wp_7777_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_posts`
--

INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (1,1,'2021-04-07 15:47:09','2021-04-07 13:47:09','<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->','Bonjour tout le monde !','','publish','open','open','','bonjour-tout-le-monde','','','2021-04-07 15:47:09','2021-04-07 13:47:09','',0,'http://192.168.122.10/?p=1',0,'post','',1);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (2,1,'2021-04-07 15:47:09','2021-04-07 13:47:09','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour&nbsp;! Je suis un damien et j’aime être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil .. bien accompagné !!!!</p></blockquote>\n<!-- /wp:quote -->','my db page','','publish','closed','open','','page-d-exemple','','','2021-04-07 15:50:37','2021-04-07 13:50:37','',0,'http://192.168.122.10/?page_id=2',0,'page','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (3,1,'2021-04-07 15:47:09','2021-04-07 13:47:09','<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://192.168.122.10.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->','Politique de confidentialité','','draft','closed','open','','politique-de-confidentialite','','','2021-04-07 15:47:09','2021-04-07 13:47:09','',0,'http://192.168.122.10/?page_id=3',0,'page','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (4,1,'2021-04-07 15:47:19','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2021-04-07 15:47:19','0000-00-00 00:00:00','',0,'http://192.168.122.10/?p=4',0,'post','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (6,1,'2021-04-07 15:49:49','2021-04-07 13:49:49','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un damien et j’aime être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil .. bien accompagné !!!!</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://192.168.122.10/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->','my db page','','inherit','closed','closed','','2-revision-v1','','','2021-04-07 15:49:49','2021-04-07 13:49:49','',2,'http://192.168.122.10/?p=6',0,'revision','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (7,1,'2021-04-07 15:50:37','2021-04-07 13:50:37','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour&nbsp;! Je suis un damien et j’aime être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil .. bien accompagné !!!!</p></blockquote>\n<!-- /wp:quote -->','my db page','','inherit','closed','closed','','2-revision-v1','','','2021-04-07 15:50:37','2021-04-07 13:50:37','',2,'http://192.168.122.10/?p=7',0,'revision','',0);

--
-- Table structure for table `wp_7777_term_relationships`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_term_relationships`
--

INSERT INTO `wp_7777_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1,1,0);

--
-- Table structure for table `wp_7777_term_taxonomy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_term_taxonomy`
--

INSERT INTO `wp_7777_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (1,1,'category','',0,1);

--
-- Table structure for table `wp_7777_termmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_termmeta`
--


--
-- Table structure for table `wp_7777_terms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_terms`
--

INSERT INTO `wp_7777_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (1,'Non classé','non-classe',0);

--
-- Table structure for table `wp_7777_usermeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_usermeta`
--

INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (1,1,'nickname','damien');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (2,1,'first_name','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (3,1,'last_name','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (4,1,'description','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (11,1,'locale','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (12,1,'wp_7777_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (13,1,'wp_7777_user_level','10');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (16,1,'session_tokens','a:1:{s:64:\"e8cbe1856b5189bcc87875eb375c8310ee5d4aaedfd0af893a01ec356383b15a\";a:4:{s:10:\"expiration\";i:1619012837;s:2:\"ip\";s:14:\"192.168.122.10\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0\";s:5:\"login\";i:1617803237;}}');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (17,1,'wp_7777_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:13:\"192.168.122.0\";}');

--
-- Table structure for table `wp_7777_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_users`
--

INSERT INTO `wp_7777_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES (1,'damien','$P$BwAcVa1ao.ZUUlkkVbJbGs.Ba716UJ1','damien','test@burdo.fr','http://192.168.122.10','2021-04-07 13:47:08','',0,'damien');

--
-- Current Database: `dbwordpress`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dbwordpress` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dbwordpress`;

--
-- Table structure for table `wp_7777_commentmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_commentmeta`
--


--
-- Table structure for table `wp_7777_comments`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_comments`
--

INSERT INTO `wp_7777_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES (1,1,'Un commentateur WordPress','wapuu@wordpress.example','https://wordpress.org/','','2021-04-07 15:47:09','2021-04-07 13:47:09','Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);

--
-- Table structure for table `wp_7777_links`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_links`
--


--
-- Table structure for table `wp_7777_options`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_options`
--

INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (1,'siteurl','http://192.168.122.10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (2,'home','http://192.168.122.10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (3,'blogname','testweb','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (4,'blogdescription','Un site utilisant WordPress','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (6,'admin_email','test@burdo.fr','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (18,'default_category','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (23,'date_format','j F Y','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (24,'time_format','G\\hi','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (25,'links_updated_date_format','d F Y G\\hi','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (29,'rewrite_rules','a:81:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (34,'category_base','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (39,'recently_edited','','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (40,'template','twentytwentyone','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (41,'stylesheet','twentytwentyone','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (48,'upload_path','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (52,'tag_base','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (80,'timezone_string','Europe/Paris','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (91,'admin_email_lifespan','1633355222','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (99,'wp_7777_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (101,'WPLANG','fr_FR','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (102,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (103,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (104,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (105,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (106,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (107,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (108,'cron','a:6:{i:1618429630;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618451230;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618494429;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618494430;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1618494482;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (109,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (110,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (115,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (116,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (117,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (119,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (120,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (122,'theme_mods_twentytwentyone','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (130,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"http://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"http://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618426113;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (133,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618426144;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (134,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618426146;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (135,'can_compress_scripts','0','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (153,'_site_transient_timeout_theme_roots','1618427937','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (154,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (155,'_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9','1619030964','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (156,'_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_7777_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES (157,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":2}','yes');

--
-- Table structure for table `wp_7777_postmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_postmeta`
--

INSERT INTO `wp_7777_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_7777_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_7777_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (3,2,'_edit_lock','1617803309:1');

--
-- Table structure for table `wp_7777_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_posts`
--

INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (1,1,'2021-04-07 15:47:09','2021-04-07 13:47:09','<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->','Bonjour tout le monde !','','publish','open','open','','bonjour-tout-le-monde','','','2021-04-07 15:47:09','2021-04-07 13:47:09','',0,'http://192.168.122.10/?p=1',0,'post','',1);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (2,1,'2021-04-07 15:47:09','2021-04-07 13:47:09','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour&nbsp;! Je suis un damien et j’aime être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil .. bien accompagné !!!!</p></blockquote>\n<!-- /wp:quote -->','my db page','','publish','closed','open','','page-d-exemple','','','2021-04-07 15:50:37','2021-04-07 13:50:37','',0,'http://192.168.122.10/?page_id=2',0,'page','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (3,1,'2021-04-07 15:47:09','2021-04-07 13:47:09','<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://192.168.122.10.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->','Politique de confidentialité','','draft','closed','open','','politique-de-confidentialite','','','2021-04-07 15:47:09','2021-04-07 13:47:09','',0,'http://192.168.122.10/?page_id=3',0,'page','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (4,1,'2021-04-07 15:47:19','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2021-04-07 15:47:19','0000-00-00 00:00:00','',0,'http://192.168.122.10/?p=4',0,'post','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (6,1,'2021-04-07 15:49:49','2021-04-07 13:49:49','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un damien et j’aime être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil .. bien accompagné !!!!</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://192.168.122.10/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->','my db page','','inherit','closed','closed','','2-revision-v1','','','2021-04-07 15:49:49','2021-04-07 13:49:49','',2,'http://192.168.122.10/?p=6',0,'revision','',0);
INSERT INTO `wp_7777_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES (7,1,'2021-04-07 15:50:37','2021-04-07 13:50:37','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour&nbsp;! Je suis un damien et j’aime être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil .. bien accompagné !!!!</p></blockquote>\n<!-- /wp:quote -->','my db page','','inherit','closed','closed','','2-revision-v1','','','2021-04-07 15:50:37','2021-04-07 13:50:37','',2,'http://192.168.122.10/?p=7',0,'revision','',0);

--
-- Table structure for table `wp_7777_term_relationships`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_term_relationships`
--

INSERT INTO `wp_7777_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1,1,0);

--
-- Table structure for table `wp_7777_term_taxonomy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_term_taxonomy`
--

INSERT INTO `wp_7777_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (1,1,'category','',0,1);

--
-- Table structure for table `wp_7777_termmeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_termmeta`
--


--
-- Table structure for table `wp_7777_terms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_terms`
--

INSERT INTO `wp_7777_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (1,'Non classé','non-classe',0);

--
-- Table structure for table `wp_7777_usermeta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_usermeta`
--

INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (1,1,'nickname','damien');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (2,1,'first_name','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (3,1,'last_name','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (4,1,'description','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (11,1,'locale','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (12,1,'wp_7777_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (13,1,'wp_7777_user_level','10');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (16,1,'session_tokens','a:1:{s:64:\"e8cbe1856b5189bcc87875eb375c8310ee5d4aaedfd0af893a01ec356383b15a\";a:4:{s:10:\"expiration\";i:1619012837;s:2:\"ip\";s:14:\"192.168.122.10\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0\";s:5:\"login\";i:1617803237;}}');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (17,1,'wp_7777_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_7777_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:13:\"192.168.122.0\";}');

--
-- Table structure for table `wp_7777_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_7777_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_7777_users`
--

INSERT INTO `wp_7777_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES (1,'damien','$P$BwAcVa1ao.ZUUlkkVbJbGs.Ba716UJ1','damien','test@burdo.fr','http://192.168.122.10','2021-04-07 13:47:08','',0,'damien');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15 11:58:15
