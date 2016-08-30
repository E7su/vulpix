CREATE DATABASE  IF NOT EXISTS `Vulpix` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Vulpix`;
-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Vulpix
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `Vulpix_2`
--

DROP TABLE IF EXISTS `Vulpix_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vulpix_2` (
  `cus` varchar(20) DEFAULT NULL,
  `code_pu` varchar(255) DEFAULT NULL,
  `pu` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(100) CHARACTER SET cp850 COLLATE cp850_bin DEFAULT NULL,
  `date_login_ak` datetime DEFAULT NULL,
  `date_last_login_ak` datetime DEFAULT NULL,
  `date_login_aml` datetime DEFAULT NULL,
  `date_login_am` datetime DEFAULT NULL,
  `date_last_login_aml` datetime DEFAULT NULL,
  `date_last_login_am` datetime DEFAULT NULL,
  `actions` varchar(255) DEFAULT NULL,
  `lite_full` varchar(255) DEFAULT NULL,
  `ukd_chennel` varchar(255) DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `action_execution_chennel` varchar(255) DEFAULT NULL,
  KEY `cus` (`cus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-30 17:51:45
