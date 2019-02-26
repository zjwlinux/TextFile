-- MySQL dump 10.13  Distrib 5.6.23, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: detect
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `antenna_uav`
--

DROP TABLE IF EXISTS `antenna_uav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antenna_uav` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CENTER_FREQ` bigint(20) DEFAULT NULL,
  `START_FREQ` bigint(20) DEFAULT NULL,
  `END_FREQ` bigint(20) DEFAULT NULL,
  `STRENGTH` double DEFAULT NULL,
  `FINDING_TIME` datetime DEFAULT NULL,
  `AREA` tinyint(4) DEFAULT NULL,
  `ROUND` bigint(20) DEFAULT NULL,
  `DEVICE_ID` varchar(20) DEFAULT NULL,
  `DISTANCE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antenna_uav`
--

LOCK TABLES `antenna_uav` WRITE;
/*!40000 ALTER TABLE `antenna_uav` DISABLE KEYS */;
INSERT INTO `antenna_uav` VALUES (1,2663,2660,2666,-100,'2019-01-15 21:55:01',1,100000120,'DEVICE01',120),(2,2663,2660,2666,-100,'2019-01-15 21:55:01',2,100000120,'DEVICE01',120),(3,2663,2660,2666,-100,'2019-01-15 21:55:01',3,100000120,'DEVICE01',120),(4,2663,2660,2666,-100,'2019-01-15 21:55:01',1,100000123,'DEVICE01',120),(5,2663,2660,2666,-100,'2019-01-15 21:55:01',2,100000123,'DEVICE01',120),(6,2663,2660,2666,-70,'2019-01-15 21:55:01',3,100000123,'DEVICE01',120),(7,2663,2660,2666,-100,'2019-01-15 21:55:01',4,100000123,'DEVICE01',120),(8,2663,2660,2666,-100,'2019-01-15 21:55:01',5,100000123,'DEVICE01',120),(9,2663,2660,2666,-80,'2019-01-15 21:55:01',6,100000123,'DEVICE01',120),(10,2663,2660,2666,-100,'2019-01-15 21:55:01',7,100000123,'DEVICE01',120);
/*!40000 ALTER TABLE `antenna_uav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `DEVICE_ID` varchar(20) NOT NULL,
  `GPS_LANTITUDE` double DEFAULT NULL,
  `GPS_LONGITUDE` double DEFAULT NULL,
  `GPS_UPDATING_TIME` datetime DEFAULT NULL,
  `COMPASS_ANGEL` double DEFAULT NULL,
  `COMPASS_UPDATING_TIME` datetime DEFAULT NULL,
  `DEVICE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('DEVICE01',39.9463111111,116.439403333,'2019-01-14 14:47:44',10,'2019-01-14 14:47:55',NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `probe_brand`
--

DROP TABLE IF EXISTS `probe_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `probe_brand` (
  `MAC_PREFIX` varchar(20) DEFAULT NULL,
  `BRAND` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `probe_brand`
--

LOCK TABLES `probe_brand` WRITE;
/*!40000 ALTER TABLE `probe_brand` DISABLE KEYS */;
INSERT INTO `probe_brand` VALUES ('60:60:1F','大疆'),('4C:7C:5F','苹果6');
/*!40000 ALTER TABLE `probe_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `probe_uav`
--

DROP TABLE IF EXISTS `probe_uav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `probe_uav` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MAC` varchar(255) DEFAULT NULL,
  `STRENGTH` varchar(255) DEFAULT NULL,
  `FINDING_TIME` datetime DEFAULT NULL,
  `AREA` tinyint(4) DEFAULT NULL,
  `DEVICE_ID` varchar(20) DEFAULT NULL,
  `DISTANCE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `probe_uav`
--

LOCK TABLES `probe_uav` WRITE;
/*!40000 ALTER TABLE `probe_uav` DISABLE KEYS */;
/*!40000 ALTER TABLE `probe_uav` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-25 22:27:12
