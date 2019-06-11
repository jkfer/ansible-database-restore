-- MySQL dump 10.15  Distrib 10.0.14-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: birdwatchers
-- ------------------------------------------------------
-- Server version	10.0.14-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bird_identification_tests`
--

DROP TABLE IF EXISTS `bird_identification_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bird_identification_tests` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_id` int(11) DEFAULT NULL,
  `bird_id` int(11) DEFAULT NULL,
  `id_start` time DEFAULT NULL,
  `id_end` time DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bird_identification_tests`
--

LOCK TABLES `bird_identification_tests` WRITE;
/*!40000 ALTER TABLE `bird_identification_tests` DISABLE KEYS */;
INSERT INTO `bird_identification_tests` VALUES (1,16,125,'04:16:03','04:17:24'),(2,16,245,'07:45:53','07:48:47'),(3,16,823,'07:46:01','07:49:02'),(4,18,823,'07:47:14','07:48:51'),(5,4,125,'08:28:22','08:29:01'),(6,4,142,'08:29:18','08:29:39'),(7,4,285,'08:29:47','08:29:58'),(8,29,634,'08:30:15','08:30:57'),(9,29,1284,'08:31:09','08:31:18'),(10,26,142,'08:49:46','08:50:08'),(11,26,1265,'08:50:20','08:51:22'),(12,26,738,'08:51:35','08:52:26'),(13,26,67,'08:52:36','08:53:36'),(14,3,67,'08:54:39','08:56:29'),(15,3,7841,'08:57:06','08:59:14'),(16,27,841,'09:02:57','09:11:45'),(17,27,373,'09:11:50','09:12:43'),(18,27,536,'09:13:21','09:13:41');
/*!40000 ALTER TABLE `bird_identification_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bird_sightings`
--

DROP TABLE IF EXISTS `bird_sightings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bird_sightings` (
  `sighting_id` int(11) NOT NULL AUTO_INCREMENT,
  `bird_id` int(11) DEFAULT NULL,
  `human_id` int(11) DEFAULT NULL,
  `time_seen` datetime DEFAULT NULL,
  `location_gps` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `comments` text CHARACTER SET utf8,
  PRIMARY KEY (`sighting_id`),
  FULLTEXT KEY `comment_index` (`comments`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bird_sightings`
--

LOCK TABLES `bird_sightings` WRITE;
/*!40000 ALTER TABLE `bird_sightings` DISABLE KEYS */;
INSERT INTO `bird_sightings` VALUES (1,1360,2,'2013-10-01 04:57:12','30.29138551; -90.3093338','This is in the Manchac Wildlife Management Area at the end of Pass Manchac at Lake Pontchartrain.'),(2,1359,19,'2013-10-01 05:09:27','66.16051056; -162.7734375','It was a major effort getting here, but what a beautiful bird that so few people have seen in their life.'),(3,1369,3,'2013-10-01 05:13:25','29.68417534; -85.13957977',''),(4,1368,27,'2013-10-01 05:40:00','42.81958072; 133.02246094','I saw a female near Zaliv Nakhodka.'),(5,1364,26,'2013-10-01 07:06:46','42.69096856; 130.78185081','Such a beautiful bird. I saw it on the northern shore of Ekspeditsii bay, near Krasino, Russia.'),(6,1364,19,'2013-10-01 07:45:45','51.70469364; 58.63746643','Spotted in a mountain lake northwest of Kuvandyk, Russia.'),(7,1364,26,'2013-10-01 07:45:45','42.69096856; 130.78185081','–≠—Ç–æ —Ç–∞–∫–∞—è –¥–æ–≤–æ–ª—å–Ω–æ –ø—Ç–∏—Ü—ã.'),(8,1364,26,'2013-10-01 07:45:45','42.69096856; 130.78185081',NULL),(9,307,28,'2013-10-02 07:39:44',NULL,NULL),(10,251,28,'2013-10-02 07:39:44',NULL,NULL),(11,309,28,'2013-10-02 07:39:44',NULL,NULL),(12,337,28,'2013-10-02 07:39:44',NULL,NULL),(13,345,28,'2013-10-02 07:39:44',NULL,NULL),(14,307,19,'2013-10-02 08:41:26',NULL,NULL),(15,2298,44,'2013-10-15 07:07:55','31.17128442; -90.2982112',NULL),(16,2298,44,'2013-10-15 07:12:01','31.17128442; -90.2982112','\0\0\0x');
/*!40000 ALTER TABLE `bird_sightings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birder_families`
--

DROP TABLE IF EXISTS `birder_families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birder_families` (
  `birder_family_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_id` int(11) DEFAULT NULL,
  `children_ages` char(25) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`birder_family_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birder_families`
--

LOCK TABLES `birder_families` WRITE;
/*!40000 ALTER TABLE `birder_families` DISABLE KEYS */;
INSERT INTO `birder_families` VALUES (1,15,'5, 8, 16'),(2,27,'6, 8, 10'),(3,4,'2, 4');
/*!40000 ALTER TABLE `birder_families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birding_events`
--

DROP TABLE IF EXISTS `birding_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birding_events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `event_description` text COLLATE latin1_bin,
  `meeting_point` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `event_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birding_events`
--

LOCK TABLES `birding_events` WRITE;
/*!40000 ALTER TABLE `birding_events` DISABLE KEYS */;
INSERT INTO `birding_events` VALUES (1,'Sandpipers in San Diego','Birdwatching Outing in San Diego to look for Sandpipers, Curlews, Godwits, Snipes and other shore birds. Birders will walk the beaches and surrounding area in groups of six.  A light lunch will be provided.','Hotel del Coronado, the deck near the entrance to the restaurant.','2014-06-15 09:00:00'),(2,'First Young Birders Picnic','An outing to encourage birdwatching with children.',NULL,'2014-06-15 10:30:00');
/*!40000 ALTER TABLE `birding_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birding_events_children`
--

DROP TABLE IF EXISTS `birding_events_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birding_events_children` (
  `children_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `human_id` int(11) DEFAULT NULL,
  `children_ages` char(50) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`children_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birding_events_children`
--

LOCK TABLES `birding_events_children` WRITE;
/*!40000 ALTER TABLE `birding_events_children` DISABLE KEYS */;
INSERT INTO `birding_events_children` VALUES (1,2,16,'3,6,12'),(2,2,17,'8,10,12'),(3,2,27,'10,11');
/*!40000 ALTER TABLE `birding_events_children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birdwatcher_prospects`
--

DROP TABLE IF EXISTS `birdwatcher_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birdwatcher_prospects` (
  `prospect_id` int(11) DEFAULT NULL,
  `prospect_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `prospect_email` varchar(255) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birdwatcher_prospects`
--

LOCK TABLES `birdwatcher_prospects` WRITE;
/*!40000 ALTER TABLE `birdwatcher_prospects` DISABLE KEYS */;
INSERT INTO `birdwatcher_prospects` VALUES (3,'Mr. Bogdan Kecman','bodgan@kecman-birds.com'),(4,'Mr. Giuseppe Maxia','geemaxia@gmail.com'),(6,'Ms. Sveta Smirnova','bettasveta@gmail.com');
/*!40000 ALTER TABLE `birdwatcher_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birdwatcher_prospects_import`
--

DROP TABLE IF EXISTS `birdwatcher_prospects_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birdwatcher_prospects_import` (
  `prospect_id` int(11) NOT NULL AUTO_INCREMENT,
  `prospect_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `prospect_email` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `prospect_country` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`prospect_id`),
  UNIQUE KEY `prospect_email` (`prospect_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birdwatcher_prospects_import`
--

LOCK TABLES `birdwatcher_prospects_import` WRITE;
/*!40000 ALTER TABLE `birdwatcher_prospects_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `birdwatcher_prospects_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eastern_birders`
--

DROP TABLE IF EXISTS `eastern_birders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eastern_birders` (
  `birder_id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `family_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`birder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eastern_birders`
--

LOCK TABLES `eastern_birders` WRITE;
/*!40000 ALTER TABLE `eastern_birders` DISABLE KEYS */;
INSERT INTO `eastern_birders` VALUES (162,'Elena','Bokova'),(185,'Sveta','Smirnova'),(214,'Katerina','Smirnova');
/*!40000 ALTER TABLE `eastern_birders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eastern_birders_spottings`
--

DROP TABLE IF EXISTS `eastern_birders_spottings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eastern_birders_spottings` (
  `spot_id` int(11) NOT NULL AUTO_INCREMENT,
  `birder_id` int(11) DEFAULT NULL,
  `science_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `date_spotted` datetime DEFAULT NULL,
  `latitude` double(12,8) DEFAULT NULL,
  `longitude` double(12,8) DEFAULT NULL,
  PRIMARY KEY (`spot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eastern_birders_spottings`
--

LOCK TABLES `eastern_birders_spottings` WRITE;
/*!40000 ALTER TABLE `eastern_birders_spottings` DISABLE KEYS */;
INSERT INTO `eastern_birders_spottings` VALUES (1,214,'Numenius arquata','2013-10-01 07:45:45',42.69096856,130.78185081);
/*!40000 ALTER TABLE `eastern_birders_spottings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `humans`
--

DROP TABLE IF EXISTS `humans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `humans` (
  `human_id` int(11) NOT NULL AUTO_INCREMENT,
  `formal_title` enum('Mr','Ms') COLLATE latin1_bin DEFAULT NULL,
  `name_first` varchar(25) COLLATE latin1_bin DEFAULT NULL,
  `name_last` varchar(25) COLLATE latin1_bin DEFAULT NULL,
  `email_address` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `street_address` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `city` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `state_province` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  `postal_code` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `country_id` char(2) COLLATE latin1_bin DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `membership_type` enum('basic','premium') COLLATE latin1_bin DEFAULT NULL,
  `membership_expiration` date DEFAULT NULL,
  `better_birders_site` tinyint(4) DEFAULT '0',
  `possible_duplicate` tinyint(4) DEFAULT '0',
  `birding_background` blob,
  `skill_level` enum('Backyard Birder','Street Noticer','Field Spotter','Expert') COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`human_id`),
  UNIQUE KEY `email_address` (`email_address`),
  KEY `human_names` (`name_last`,`name_first`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humans`
--

LOCK TABLES `humans` WRITE;
/*!40000 ALTER TABLE `humans` DISABLE KEYS */;
INSERT INTO `humans` VALUES (1,'Mr','Russell','Dyer','russell@mysqlresources.com',NULL,NULL,NULL,NULL,'uk','2013-10-01','premium','2013-09-22',0,1,NULL,'Street Noticer'),(2,'Mr','Richard','Stringer','richard@mysqlresources.com',NULL,NULL,NULL,NULL,'uk','2013-10-01','premium','2013-09-22',0,0,NULL,'Field Spotter'),(3,'Ms','Rusty','Osborne','rusty@mysqlresources.com',NULL,NULL,NULL,NULL,'ch','2013-10-01','premium','2013-12-22',0,0,NULL,'Street Noticer'),(4,'Ms','Lexi','Hollar','alexandra@mysqlresources.com',NULL,NULL,NULL,NULL,'uk','2013-10-01','premium','2013-09-22',0,0,NULL,'Backyard Birder'),(15,'Mr','Barry','Pilson','barry@gomail.com',NULL,NULL,NULL,NULL,NULL,'2013-10-01',NULL,NULL,0,0,NULL,'Expert'),(16,'Mr','Ricky','Adams','ricky@gomail.com',NULL,NULL,NULL,NULL,NULL,'2013-10-01',NULL,NULL,0,0,NULL,'Backyard Birder'),(17,'Mr','Rusell','Dyer','russell@dyerhouse.com',NULL,NULL,NULL,NULL,'us','2013-10-01','basic',NULL,0,1,NULL,'Field Spotter'),(25,'Ms','Elena','Bokova','elena.bokova@yahoo.com',NULL,NULL,NULL,NULL,'ru','2013-10-01','basic',NULL,0,1,NULL,'Backyard Birder'),(19,'Ms','Elena','Bokova','ebokova@gmail.com',NULL,NULL,NULL,NULL,'ru','2011-05-21','premium','2016-10-01',1,1,NULL,'Backyard Birder'),(26,'Ms','Katerina','Smirnova','katya@mail.ru',NULL,NULL,NULL,NULL,'ru','2012-02-01','basic',NULL,0,0,NULL,'Field Spotter'),(27,'Ms','Anahit','Vanetsyan','anahit@gmail.com',NULL,NULL,NULL,NULL,'ru','2011-10-01','basic',NULL,0,0,NULL,'Backyard Birder'),(28,'Ms','Marie','Dyer','marie@gmail.com',NULL,NULL,NULL,NULL,'us','2012-12-07','basic',NULL,0,0,NULL,'Expert'),(29,'Ms','Geoffrey','Dyer','',NULL,NULL,'Ocean Beach','NJ','us','2012-04-12','basic',NULL,0,0,NULL,'Backyard Birder'),(30,'Ms','MICHAEL','STONE',NULL,NULL,NULL,'San Diego','CA','us','2012-04-12','basic',NULL,0,0,NULL,'Backyard Birder'),(34,'Ms','Melissa','Lee',NULL,NULL,NULL,NULL,NULL,NULL,'2013-10-15',NULL,NULL,0,0,'\0\0\0xúÀIÕK/…®THJLŒN/ /ÕK—””\0Z˝∆','Street Noticer'),(35,'Mr','andy','oram',NULL,NULL,'Cambridge','MA','02140','us','2013-10-16','basic',NULL,0,0,NULL,'Expert'),(36,'Mr','Michael','Zabalaoui',NULL,NULL,'New Orleans','LA','70130','us','2013-10-16','basic',NULL,0,0,NULL,'Street Noticer');
/*!40000 ALTER TABLE `humans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_prospects`
--

DROP TABLE IF EXISTS `membership_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_prospects` (
  `prospect_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_title` char(2) COLLATE latin1_bin DEFAULT NULL,
  `name_first` varchar(25) COLLATE latin1_bin DEFAULT NULL,
  `name_last` varchar(25) COLLATE latin1_bin DEFAULT NULL,
  `email_address` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `last_contacted` date DEFAULT NULL,
  PRIMARY KEY (`prospect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_prospects`
--

LOCK TABLES `membership_prospects` WRITE;
/*!40000 ALTER TABLE `membership_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possible_duplicate_email`
--

DROP TABLE IF EXISTS `possible_duplicate_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `possible_duplicate_email` (
  `human_id` int(11) DEFAULT NULL,
  `email_address1` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `email_address2` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possible_duplicate_email`
--

LOCK TABLES `possible_duplicate_email` WRITE;
/*!40000 ALTER TABLE `possible_duplicate_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `possible_duplicate_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prize_winners`
--

DROP TABLE IF EXISTS `prize_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prize_winners` (
  `winner_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_id` int(11) DEFAULT NULL,
  `winner_date` date DEFAULT NULL,
  `prize_chosen` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `prize_sent` date DEFAULT NULL,
  PRIMARY KEY (`winner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prize_winners`
--

LOCK TABLES `prize_winners` WRITE;
/*!40000 ALTER TABLE `prize_winners` DISABLE KEYS */;
INSERT INTO `prize_winners` VALUES (49,25,NULL,NULL,NULL),(48,19,NULL,NULL,NULL),(47,17,NULL,NULL,NULL),(46,16,NULL,NULL,NULL),(45,15,NULL,NULL,NULL),(44,4,NULL,NULL,NULL),(43,3,NULL,NULL,NULL),(42,2,NULL,NULL,NULL),(41,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `prize_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `prospect_id` int(11) NOT NULL AUTO_INCREMENT,
  `prospect_name` char(54) COLLATE latin1_bin DEFAULT NULL,
  `email` char(50) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`prospect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
INSERT INTO `prospects` VALUES (3,'Mr. Bogdan                   Kecman','bodgan@kecman-birds.com'),(4,'Mr. Giuseppe                 Maxia','geemaxia@gmail.com'),(6,'Ms. Sveta                    Smirnova','bettasveta@gmail.com'),(7,'Ms.|Sveta|Smirnova','bettasveta@gmail.com');
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `random_numbers`
--

DROP TABLE IF EXISTS `random_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `random_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `random_numbers`
--

LOCK TABLES `random_numbers` WRITE;
/*!40000 ALTER TABLE `random_numbers` DISABLE KEYS */;
INSERT INTO `random_numbers` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `random_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answers`
--

DROP TABLE IF EXISTS `survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `answer` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answers`
--

LOCK TABLES `survey_answers` WRITE;
/*!40000 ALTER TABLE `survey_answers` DISABLE KEYS */;
INSERT INTO `survey_answers` VALUES (7,29,1,'2014-02-24 02:08:48','2'),(8,29,2,'2014-02-24 02:08:48','2'),(9,35,1,'2014-02-24 02:08:48','1'),(10,35,2,'2014-02-24 02:08:48','1'),(11,26,1,'2014-02-24 02:08:48','2'),(12,26,2,'2014-02-24 02:08:48','1'),(13,27,1,'2014-02-24 02:08:48','2'),(14,27,2,'2014-02-24 02:08:48','4'),(15,16,1,'2014-02-24 02:08:48','3'),(16,3,1,'2014-02-24 02:08:48','1'),(17,3,2,'2014-02-24 02:08:48','1'),(18,36,1,'2014-02-24 03:05:43','2'),(19,36,2,'2014-02-24 03:05:43','2'),(20,37,1,'2014-02-24 03:05:43','1'),(21,37,2,'2014-02-24 03:05:43','1'),(22,38,1,'2014-02-24 03:05:43','2'),(23,38,2,'2014-02-24 03:05:43','1'),(24,39,1,'2014-02-24 03:05:43','2'),(25,39,2,'2014-02-24 03:05:43','4'),(26,40,1,'2014-02-24 03:05:43','3'),(27,41,1,'2014-02-24 03:05:43','1'),(28,42,2,'2014-02-24 03:05:43','1'),(29,43,1,'2014-02-24 03:05:43','2'),(30,43,2,'2014-02-24 03:05:43','2'),(31,44,1,'2014-02-24 03:05:43','1'),(32,45,2,'2014-02-24 03:05:43','1'),(33,46,1,'2014-02-24 03:05:43','2'),(34,46,2,'2014-02-24 03:05:43','1'),(35,47,1,'2014-02-24 03:05:43','2'),(36,47,2,'2014-02-24 03:05:43','4'),(37,48,1,'2014-02-24 03:05:43','3'),(38,49,1,'2014-02-24 03:05:43','1'),(39,49,2,'2014-02-24 03:05:43','1'),(40,50,1,'2014-02-24 03:08:37','2'),(41,50,2,'2014-02-24 03:08:37','2'),(42,51,1,'2014-02-24 03:08:37','1'),(43,51,2,'2014-02-24 03:08:37','1'),(44,52,1,'2014-02-24 03:08:37','2'),(45,52,2,'2014-02-24 03:08:37','1'),(46,53,1,'2014-02-24 03:08:37','2'),(47,53,2,'2014-02-24 03:08:37','4'),(48,54,1,'2014-02-24 03:08:37','3'),(49,55,1,'2014-02-24 03:08:37','1'),(50,55,2,'2014-02-24 03:08:37','1'),(51,56,1,'2014-02-24 03:08:37','2'),(52,57,2,'2014-02-24 03:08:37','2'),(53,58,1,'2014-02-24 03:08:37','1'),(54,58,2,'2014-02-24 03:08:37','1'),(55,59,1,'2014-02-24 03:08:37','2'),(56,59,2,'2014-02-24 03:08:37','1'),(57,60,1,'2014-02-24 03:08:37','2'),(58,60,2,'2014-02-24 03:08:37','4'),(59,61,1,'2014-02-24 03:08:37','3'),(60,62,1,'2014-02-24 03:08:37','1'),(61,62,2,'2014-02-24 03:08:37','1'),(62,63,1,'2014-02-24 03:10:38','2'),(63,63,2,'2014-02-24 03:10:38','2'),(64,64,1,'2014-02-24 03:10:38','1'),(65,64,2,'2014-02-24 03:10:38','1'),(66,65,1,'2014-02-24 03:10:38','2'),(67,65,2,'2014-02-24 03:10:38','1'),(68,66,1,'2014-02-24 03:10:38','2'),(69,66,2,'2014-02-24 03:10:38','4'),(70,67,1,'2014-02-24 03:10:38','3'),(71,68,1,'2014-02-24 03:10:38','1'),(72,68,2,'2014-02-24 03:10:38','1'),(73,69,1,'2014-02-24 03:10:38','2'),(74,69,2,'2014-02-24 03:10:38','2'),(75,70,1,'2014-02-24 03:10:38','1'),(76,70,2,'2014-02-24 03:10:38','1'),(77,71,1,'2014-02-24 03:10:38','2'),(78,71,2,'2014-02-24 03:10:38','1'),(79,72,1,'2014-02-24 03:10:38','2'),(80,72,2,'2014-02-24 03:10:38','4'),(81,73,1,'2014-02-24 03:10:38','3'),(82,74,1,'2014-02-24 03:10:38','1'),(83,74,2,'2014-02-24 03:10:38','1'),(84,75,1,'2014-02-24 03:12:01','2'),(85,75,2,'2014-02-24 03:12:01','2'),(86,76,1,'2014-02-24 03:12:01','1'),(87,76,2,'2014-02-24 03:12:01','1'),(88,77,1,'2014-02-24 03:12:01','2'),(89,77,2,'2014-02-24 03:12:01','1'),(90,78,1,'2014-02-24 03:12:01','2'),(91,78,2,'2014-02-24 03:12:01','4'),(92,79,1,'2014-02-24 03:12:01','3'),(93,80,1,'2014-02-24 03:12:01','1'),(94,81,2,'2014-02-24 03:12:01','1'),(95,82,1,'2014-02-24 03:12:01','2'),(96,82,2,'2014-02-24 03:12:01','2'),(97,83,1,'2014-02-24 03:12:01','1'),(98,83,2,'2014-02-24 03:12:01','1'),(99,84,1,'2014-02-24 03:12:01','2'),(100,84,2,'2014-02-24 03:12:01','1'),(101,85,1,'2014-02-24 03:12:01','2'),(102,85,2,'2014-02-24 03:12:01','4'),(103,86,1,'2014-02-24 03:12:01','3'),(104,87,1,'2014-02-24 03:12:01','1'),(105,87,2,'2014-02-24 03:12:01','1'),(106,88,1,'2014-02-24 03:13:28','2'),(107,88,2,'2014-02-24 03:13:28','2'),(108,89,1,'2014-02-24 03:13:28','1'),(109,89,2,'2014-02-24 03:13:28','1'),(110,90,1,'2014-02-24 03:13:28','2'),(111,90,2,'2014-02-24 03:13:28','1'),(112,91,1,'2014-02-24 03:13:28','2'),(113,91,2,'2014-02-24 03:13:28','4'),(114,92,1,'2014-02-24 03:13:28','3'),(115,93,1,'2014-02-24 03:13:28','1'),(116,93,2,'2014-02-24 03:13:28','1'),(117,94,1,'2014-02-24 03:13:28','2'),(118,94,2,'2014-02-24 03:13:28','2'),(119,95,1,'2014-02-24 03:13:28','1'),(120,95,2,'2014-02-24 03:13:28','1'),(121,96,1,'2014-02-24 03:13:28','2'),(122,96,2,'2014-02-24 03:13:28','1'),(123,97,1,'2014-02-24 03:13:28','2'),(124,97,2,'2014-02-24 03:13:28','4'),(125,98,1,'2014-02-24 03:13:28','3'),(126,99,1,'2014-02-24 03:13:28','1'),(127,99,2,'2014-02-24 03:13:28','1'),(128,100,1,'2014-02-24 03:13:28','1'),(129,100,2,'2014-02-24 03:13:28','1'),(130,101,1,'2014-02-24 03:15:39','2'),(131,101,2,'2014-02-24 03:15:39','2'),(132,102,1,'2014-02-24 03:15:39','1'),(133,102,2,'2014-02-24 03:15:39','1'),(134,103,1,'2014-02-24 03:15:39','2'),(135,103,2,'2014-02-24 03:15:39','1'),(136,104,1,'2014-02-24 03:15:39','2'),(137,104,2,'2014-02-24 03:15:39','4'),(138,105,1,'2014-02-24 03:15:39','3'),(139,106,1,'2014-02-24 03:15:39','1'),(140,106,2,'2014-02-24 03:15:39','1'),(141,107,1,'2014-02-24 03:15:39','2'),(142,107,2,'2014-02-24 03:15:39','2'),(143,108,1,'2014-02-24 03:15:39','1'),(144,108,2,'2014-02-24 03:15:39','1'),(145,109,1,'2014-02-24 03:15:39','2'),(146,109,2,'2014-02-24 03:15:39','1'),(147,110,1,'2014-02-24 03:15:39','2'),(148,110,2,'2014-02-24 03:15:39','4'),(149,111,1,'2014-02-24 03:15:39','3'),(150,112,1,'2014-02-24 03:15:39','1'),(151,112,2,'2014-02-24 03:15:39','1'),(152,113,1,'2014-02-24 03:15:39','1'),(153,113,2,'2014-02-24 03:15:39','1'),(154,114,1,'2014-02-24 03:47:59','2'),(155,114,2,'2014-02-24 03:47:59','2'),(156,115,1,'2014-02-24 03:47:59','1'),(157,115,2,'2014-02-24 03:47:59','1'),(158,116,1,'2014-02-24 03:47:59','2'),(159,116,2,'2014-02-24 03:47:59','1'),(160,117,1,'2014-02-24 03:47:59','2'),(161,117,2,'2014-02-24 03:47:59','4'),(162,118,1,'2014-02-24 03:47:59','3'),(163,119,1,'2014-02-24 03:47:59','1'),(164,119,2,'2014-02-24 03:47:59','1');
/*!40000 ALTER TABLE `survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `question` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `choices` blob,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (1,1,'What\'s your favorite setting for birdwatching?','\0\0\0\0;\0k!forest!shore!backyard'),(2,2,'Which type of birds do you like best?','\0\0\0\0K\0{\0£!perching!shore!fowl!rapture');
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `survey_id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'Favorite Birding Location'),(2,'Preferred Birds');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-28  8:19:00
