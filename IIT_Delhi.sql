-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: IIT_Delhi1
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

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
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article` (
  `article_id` int(25) NOT NULL,
  `article_cat_id` int(25) NOT NULL,
  `article_sub_cat_id` int(25) NOT NULL,
  `date_posted` date NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `article_approval` tinyint(1) NOT NULL,
  `article_content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article`
--

LOCK TABLES `Article` WRITE;
/*!40000 ALTER TABLE `Article` DISABLE KEYS */;
/*!40000 ALTER TABLE `Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `College_events`
--

DROP TABLE IF EXISTS `College_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `College_events` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `venue` varchar(200) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_information` varchar(200) DEFAULT NULL,
  `poster` longblob,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `College_events`
--

LOCK TABLES `College_events` WRITE;
/*!40000 ALTER TABLE `College_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `College_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Editor`
--

DROP TABLE IF EXISTS `Editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Editor` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Editor`
--

LOCK TABLES `Editor` WRITE;
/*!40000 ALTER TABLE `Editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Intercollege_events`
--

DROP TABLE IF EXISTS `Intercollege_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intercollege_events` (
  `id` int(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `venue` varchar(200) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_information` varchar(200) DEFAULT NULL,
  `poster` longblob,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intercollege_events`
--

LOCK TABLES `Intercollege_events` WRITE;
/*!40000 ALTER TABLE `Intercollege_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `Intercollege_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Moderator`
--

DROP TABLE IF EXISTS `Moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Moderator` (
  `id` int(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Moderator`
--

LOCK TABLES `Moderator` WRITE;
/*!40000 ALTER TABLE `Moderator` DISABLE KEYS */;
/*!40000 ALTER TABLE `Moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subcategory`
--

DROP TABLE IF EXISTS `Subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subcategory` (
  `id` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subcategory`
--

LOCK TABLES `Subcategory` WRITE;
/*!40000 ALTER TABLE `Subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_event`
--

DROP TABLE IF EXISTS `personal_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_event` (
  `user_id` int(25) NOT NULL,
  `id` int(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_event`
--

LOCK TABLES `personal_event` WRITE;
/*!40000 ALTER TABLE `personal_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_academics`
--

DROP TABLE IF EXISTS `user_academics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_academics` (
  `id` int(25) NOT NULL,
  `school_attended` varchar(100) DEFAULT NULL,
  `college_name` varchar(100) NOT NULL,
  `degree_type` varchar(100) NOT NULL,
  `stream_name` varchar(100) NOT NULL,
  `current_year` int(5) NOT NULL,
  `expected_passout_year` int(5) DEFAULT NULL,
  `highest_qualification` varchar(100) DEFAULT NULL,
  `class_12_10_detail` varchar(100) DEFAULT NULL,
  `technical_skills` varchar(100) DEFAULT NULL,
  `projects` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_academics`
--

LOCK TABLES `user_academics` WRITE;
/*!40000 ALTER TABLE `user_academics` DISABLE KEYS */;
INSERT INTO `user_academics` VALUES (1,'New English School','DA-IICT','B.Tech','Computer Science',2013,2015,NULL,NULL,NULL,NULL),(2,'St. Annes High School','DA-IICT','B.Tech','Computer Science',2013,2015,NULL,NULL,NULL,NULL),(3,'Delhi Public School','NIT-Warangal','B.Tech','Computer Science',2013,2015,NULL,NULL,NULL,NULL),(4,'St. Xaviers School','IIT-Delhi','B.Tech','Mechanical',2013,2014,NULL,NULL,NULL,NULL),(5,'New English School','DDIT','B.Tech','Electronics',2013,2015,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_academics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `id` int(25) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `age` int(25) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `home_town` varchar(100) DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `verify` tinyint(1) NOT NULL,
  `contact_no` int(25) DEFAULT NULL,
  `lang_known` varchar(100) DEFAULT NULL,
  `profile_image` longblob,
  `communication_address` varchar(500) DEFAULT NULL,
  `Membership` varchar(100) DEFAULT NULL,
  `other_details` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES (1,'tarang','tarangrockr@gmail.com','tarang',19,'M','1993-10-16','Nadiad','2013-08-19','tarang',0,NULL,NULL,NULL,NULL,NULL,NULL),(2,'ashish','ashishtotla@gmail.com','Ashish',19,'M','1993-08-25','Surat','2013-08-25','ashish',0,NULL,NULL,NULL,NULL,NULL,NULL),(3,'vishal','vishal.2947@gmail.com','Vishal',19,'M','1992-06-12','Delhi','2013-08-12','vishal',0,NULL,NULL,NULL,NULL,NULL,NULL),(4,'parth','parth1992@gmail.com','Parth',20,'M','1992-01-13','Ahmedabad','2013-07-05','parth',0,NULL,NULL,NULL,NULL,NULL,NULL),(5,'anjali','anjali1994@gmail.com','Anjali',18,'F','1994-07-31','Mumbai','2013-09-14','anjali',0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-13 22:57:19
