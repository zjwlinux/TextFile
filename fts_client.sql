-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fts_client
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `file_list`
--

DROP TABLE IF EXISTS `file_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_list` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) DEFAULT NULL,
  `transferType` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `assignedThreadCount` int(11) DEFAULT NULL,
  `isCompressed` int(11) DEFAULT NULL,
  `fileOldSize` int(11) DEFAULT NULL,
  `downloadLevel` int(11) DEFAULT NULL,
  `queueTime` datetime DEFAULT NULL,
  `totalBlockCount` int(11) DEFAULT NULL,
  `handledBlockCount` int(11) DEFAULT NULL,
  `remoteFileId` int(11) DEFAULT NULL,
  `remoteMD5` varchar(32) DEFAULT NULL,
  `sourceDirRoot` varchar(100) DEFAULT NULL,
  `sourceFullName` varchar(100) DEFAULT NULL,
  `sourceDirName` varchar(100) DEFAULT NULL,
  `uploadDirRoot` varchar(100) DEFAULT NULL,
  `uploadFullName` varchar(100) DEFAULT NULL,
  `uploadDirName` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastWriteTime` datetime DEFAULT NULL,
  `fileName` varchar(100) DEFAULT NULL,
  `priorityDesc` varchar(100) DEFAULT NULL,
  `business` varchar(20) DEFAULT NULL,
  `fileType` varchar(20) DEFAULT NULL,
  `threadUsed` int(11) DEFAULT NULL,
  `fileSize` bigint(20) DEFAULT NULL,
  `fileSizeCmpressed` bigint(20) DEFAULT NULL,
  `transferedSize` bigint(20) DEFAULT NULL,
  `statusDesc` varchar(20) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  `beginBlockId` int(11) DEFAULT NULL,
  `endBlockId` int(11) DEFAULT NULL,
  `isNewFile` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_list_file_id_uindex` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_list`
--

LOCK TABLES `file_list` WRITE;
/*!40000 ALTER TABLE `file_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filescan_history`
--

DROP TABLE IF EXISTS `filescan_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filescan_history` (
  `FILE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` varchar(100) NOT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `END_BLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  UNIQUE KEY `filescan_history_FILE_ID_uindex` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filescan_history`
--

LOCK TABLES `filescan_history` WRITE;
/*!40000 ALTER TABLE `filescan_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `filescan_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_duanxin`
--

DROP TABLE IF EXISTS `fts_duanxin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_duanxin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FULL_NAME` tinytext NOT NULL,
  `SENDER` tinytext NOT NULL,
  `RECEIVER` varchar(200) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `COMMENT` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_duanxin`
--

LOCK TABLES `fts_duanxin` WRITE;
/*!40000 ALTER TABLE `fts_duanxin` DISABLE KEYS */;
INSERT INTO `fts_duanxin` VALUES (1,'D:\\PROJECTS\\文件\\目录配置\\短信目录\\短消息.txt','123,456','222,111,4321',2,'错误原因:1, 发送号码：1234567890123，接收号码：12345678901234;错误原因:3, 发送号码：1234567890123，接收号码：123456789012;');
/*!40000 ALTER TABLE `fts_duanxin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paper`
--

DROP TABLE IF EXISTS `tb_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `file_name` varchar(100) NOT NULL,
  `business` varchar(50) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_size_compressed` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `traffic` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `newFile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_paper_FileName_uindex` (`file_name`),
  UNIQUE KEY `tb_paper_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9476 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paper`
--

LOCK TABLES `tb_paper` WRITE;
/*!40000 ALTER TABLE `tb_paper` DISABLE KEYS */;
INSERT INTO `tb_paper` VALUES (158,1,'fts_client.sql','信号',1,36581,6849,'2018-10-31 12:37:24','2018-10-31 12:42:36',1,NULL,NULL),(159,2,'fts_client - 副本.sql','信号',1,36581,6849,'2018-10-31 12:43:26','2018-10-31 12:43:28',1,NULL,NULL),(160,1,'PhpStorm2 - 副本.exe','信号',1,235222288,235206789,'2018-10-31 12:43:41','2018-10-31 12:49:33',236,NULL,NULL),(161,2,'PhpStorm3 - 副本.exe','信号',1,235222288,235206789,'2018-10-31 12:43:49','2018-10-31 12:51:03',236,NULL,NULL),(162,1,'PhpStorm48 - 副本.exe','信号',1,235222288,235206789,'2018-10-31 12:54:32','2018-10-31 13:14:20',236,NULL,NULL),(163,1,'[国家宝藏]0128期：周冬雨穿越变身大祭司，千年古琴再被奏响_bd.mp4','信号',4,1501670784,1499696251,'2018-11-01 12:25:11','2018-11-01 18:16:22',1502,NULL,NULL),(164,1,'server.xml','信号',1,7678,2617,'2018-11-02 21:44:39','2018-11-02 21:50:52',1,NULL,NULL),(165,2,'server - 副本.xml','信号',1,7678,2617,'2018-11-02 21:50:57','2018-11-02 21:51:00',1,NULL,NULL),(166,1,'[国家宝藏]0128期：周冬雨穿越变身大祭司，千年古琴再被奏响_bd - 副本.mp4','信号',4,1501670784,1499696251,'2018-11-02 21:51:42','2018-11-02 22:31:39',1502,NULL,NULL),(167,3,'PhpStorm51 - 副本.exe','信号',1,235222288,235206789,'2018-11-02 23:30:14','2018-11-03 00:16:34',236,NULL,NULL),(168,2,'PhpStorm51.exe','信号',1,235222288,235206789,'2018-11-02 22:45:14','2018-11-03 00:16:52',236,NULL,NULL),(169,1,'PhpStorm50.exe','信号',1,235222288,235206789,'2018-11-02 22:34:25','2018-11-03 00:16:52',236,NULL,NULL),(170,1,'PhpStorm52.exe','信号',1,235222288,235206789,'2018-11-03 22:36:47','2018-11-03 22:45:05',236,NULL,NULL),(171,2,'test.txt','信号',1,10,30,'2018-11-10 15:46:14','2018-11-10 17:48:48',1,NULL,NULL),(181,6,'二上词语积累（三）.doc','信号',1,26112,7297,'2018-11-10 21:53:48','2018-11-10 21:53:50',1,NULL,NULL),(182,1,'test2.txt','信号',1,10,30,'2018-11-10 21:56:47','2018-11-11 17:48:30',1,NULL,NULL),(189,7,'test3.txt','信号',1,12,32,'2018-11-11 19:23:08','2018-11-11 19:23:56',1,NULL,NULL),(193,4,'test4.txt','信号',1,12,32,'2018-11-11 20:33:59','2018-11-11 20:35:38',1,NULL,NULL),(195,3,'test5.txt','信号',1,12,32,'2018-11-11 20:47:29','2018-11-11 21:06:05',1,NULL,NULL),(204,1,'[国家宝藏]千年古琴再被奏响 - 副本.mp4','信号',4,1501670784,1499696251,'2018-11-11 21:48:11','2018-11-11 21:52:00',1502,NULL,NULL),(205,1,'MSangoSetup1.2.22.51.exe.ttd','信号',1,1020300474,160269358,'2018-11-11 21:54:03','2018-11-11 21:54:51',1021,NULL,NULL),(207,2,'test6.txt','信号',1,96,52,'2018-11-11 23:16:57','2018-11-11 23:20:23',1,NULL,NULL),(212,7,'test7.txt','信号',1,2,22,'2018-11-11 23:24:57','2018-11-11 23:26:28',1,NULL,NULL),(216,3,'test8.txt','信号',1,32,23,'2018-11-11 23:48:58','2018-11-11 23:50:09',1,NULL,NULL),(225,1,'[国家宝藏]千年古琴再被奏响1.mp4','信号',4,30000,6483,'2018-11-12 00:41:41','2018-11-12 00:41:45',1,NULL,NULL),(226,6,'test01.txt','信号',1,14,31,'2018-12-02 01:05:37','2018-12-02 01:39:41',1,NULL,'新文件'),(228,13,'PhpStorm47.exe','信号',1,235222288,235206789,'2018-12-02 01:52:59','2018-12-02 09:10:31',236,NULL,'新文件'),(231,0,'test01 - 副本.txt','信号',1,14,31,'2018-12-02 09:16:32','2018-12-02 09:16:34',1,NULL,'新文件'),(232,50,'PhpStorm48.exe','信号',1,235222288,235206789,'2018-12-02 09:16:47','2018-12-02 09:33:40',236,NULL,'新文件'),(233,0,'PhpStorm49.exe','信号',1,235222288,235206789,'2018-12-02 09:34:25','2018-12-02 09:35:49',236,NULL,'新文件'),(234,73,'信号PhpStorm47.exe','信号',1,235222383,235206857,'2018-12-02 09:35:09','2018-12-02 09:39:35',236,NULL,'新文件'),(235,0,'2350.png','信号',2,9372,9337,'2018-12-02 09:41:26','2018-12-02 09:41:29',1,NULL,'新文件'),(236,0,'2414.png','信号',2,1277,1261,'2018-12-02 09:41:26','2018-12-02 09:41:31',1,NULL,'新文件'),(237,0,'2415.png','信号',2,585,557,'2018-12-02 09:41:26','2018-12-02 09:41:33',1,NULL,'新文件'),(238,0,'2411.png','信号',2,1190,1176,'2018-12-02 09:41:26','2018-12-02 09:41:35',1,NULL,'新文件'),(239,0,'2412.png','信号',2,1071,1049,'2018-12-02 09:41:26','2018-12-02 09:41:37',1,NULL,'新文件'),(240,0,'2413.png','信号',2,197,195,'2018-12-02 09:41:26','2018-12-02 09:41:39',1,NULL,'新文件'),(241,0,'2402.png','信号',2,1775,1746,'2018-12-02 09:41:26','2018-12-02 09:41:41',1,NULL,'新文件'),(242,0,'2403.png','信号',2,3562,3571,'2018-12-02 09:41:26','2018-12-02 09:41:44',1,NULL,'新文件'),(243,0,'2360.png','信号',2,4735,4753,'2018-12-02 09:41:26','2018-12-02 09:41:46',1,NULL,'新文件'),(244,0,'2416.png','信号',2,677,656,'2018-12-02 09:41:26','2018-12-02 09:41:48',1,NULL,'新文件'),(245,0,'2353.png','信号',2,12321,12283,'2018-12-02 09:41:26','2018-12-02 09:41:50',1,NULL,'新文件'),(246,0,'2420.png','信号',2,704,700,'2018-12-02 09:41:26','2018-12-02 09:41:52',1,NULL,'新文件'),(247,0,'2361.png','信号',2,3208,3231,'2018-12-02 09:41:26','2018-12-02 09:41:54',1,NULL,'新文件'),(248,0,'2421.png','信号',2,915,917,'2018-12-02 09:41:26','2018-12-02 09:41:56',1,NULL,'新文件'),(249,0,'2373.png','信号',2,6955,6879,'2018-12-02 09:41:26','2018-12-02 09:41:58',1,NULL,'新文件'),(251,0,'2391.png','信号',2,3599,3581,'2018-12-02 09:41:26','2018-12-02 09:42:02',1,NULL,'新文件'),(252,0,'2417.png','信号',2,607,582,'2018-12-02 09:41:26','2018-12-02 09:42:04',1,NULL,'新文件'),(253,0,'2351.png','信号',2,6475,6474,'2018-12-02 09:41:26','2018-12-02 09:42:06',1,NULL,'新文件'),(254,0,'2418.png','信号',2,1112,1109,'2018-12-02 09:41:26','2018-12-02 09:42:08',1,NULL,'新文件'),(255,0,'2352.png','信号',2,6851,6867,'2018-12-02 09:41:26','2018-12-02 09:42:10',1,NULL,'新文件'),(256,0,'2419.png','信号',2,1582,1600,'2018-12-02 09:41:26','2018-12-02 09:42:13',1,NULL,'新文件'),(257,0,'2377.png','信号',2,7039,7029,'2018-12-02 09:41:26','2018-12-02 09:42:15',1,NULL,'新文件'),(258,0,'2404.png','信号',2,1554,1520,'2018-12-02 09:41:26','2018-12-02 09:42:17',1,NULL,'新文件'),(259,0,'2390.png','信号',2,3538,3561,'2018-12-02 09:41:26','2018-12-02 09:42:19',1,NULL,'新文件'),(260,0,'2399.png','信号',2,6697,6686,'2018-12-02 09:41:26','2018-12-02 09:42:21',1,NULL,'新文件'),(261,0,'2376.png','信号',2,6812,6803,'2018-12-02 09:41:26','2018-12-02 09:42:23',1,NULL,'新文件'),(262,0,'2400.png','信号',2,11483,11486,'2018-12-02 09:41:26','2018-12-02 09:42:25',1,NULL,'新文件'),(263,0,'2375.png','信号',2,8390,8351,'2018-12-02 09:41:26','2018-12-02 09:42:27',1,NULL,'新文件'),(264,0,'2401.png','信号',2,3217,3212,'2018-12-02 09:41:26','2018-12-02 09:42:29',1,NULL,'新文件'),(265,0,'2378.png','信号',2,5378,5393,'2018-12-02 09:41:26','2018-12-02 09:42:31',1,NULL,'新文件'),(266,0,'2408.png','信号',2,3901,3864,'2018-12-02 09:41:26','2018-12-02 09:42:33',1,NULL,'新文件'),(267,0,'2359.png','信号',2,1778,1768,'2018-12-02 09:41:26','2018-12-02 09:42:35',1,NULL,'新文件'),(268,0,'2409.png','信号',2,5854,5804,'2018-12-02 09:41:26','2018-12-02 09:42:37',1,NULL,'新文件'),(269,0,'2389.png','信号',2,2457,2389,'2018-12-02 09:41:26','2018-12-02 09:42:40',1,NULL,'新文件'),(270,0,'2410.png','信号',2,3073,3007,'2018-12-02 09:41:26','2018-12-02 09:42:42',1,NULL,'新文件'),(271,0,'2355.png','信号',2,10435,10428,'2018-12-02 09:41:26','2018-12-02 09:42:44',1,NULL,'新文件'),(272,0,'2405.png','信号',2,197,195,'2018-12-02 09:41:26','2018-12-02 09:42:46',1,NULL,'新文件'),(273,0,'2379.png','信号',2,9148,9119,'2018-12-02 09:41:26','2018-12-02 09:42:48',1,NULL,'新文件'),(274,0,'2406.png','信号',2,1835,1832,'2018-12-02 09:41:26','2018-12-02 09:42:50',1,NULL,'新文件'),(275,0,'2365.png','信号',2,7750,7747,'2018-12-02 09:41:26','2018-12-02 09:42:52',1,NULL,'新文件'),(276,0,'2407.png','信号',2,4501,4488,'2018-12-02 09:41:26','2018-12-02 09:42:54',1,NULL,'新文件'),(277,0,'2354.png','信号',1,13043,13021,'2018-12-02 09:41:26','2018-12-02 09:42:56',1,NULL,'新文件'),(278,0,'2366.png','信号',2,13057,12998,'2018-12-02 09:41:26','2018-12-02 09:42:58',1,NULL,'新文件'),(279,0,'2370.png','信号',2,2997,2953,'2018-12-02 09:41:26','2018-12-02 09:43:00',1,NULL,'新文件'),(280,0,'2367.png','信号',2,8133,8092,'2018-12-02 09:41:26','2018-12-02 09:43:02',1,NULL,'新文件'),(281,0,'2382.png','信号',2,855,851,'2018-12-02 09:41:26','2018-12-02 09:43:05',1,NULL,'新文件'),(282,0,'2368.png','信号',2,10746,10716,'2018-12-02 09:41:26','2018-12-02 09:43:07',1,NULL,'新文件'),(283,0,'2395.png','信号',2,952,923,'2018-12-02 09:41:26','2018-12-02 09:43:09',1,NULL,'新文件'),(287,168,'2398.png','信号',2,1506,1485,'2018-12-02 09:41:26','2018-12-02 09:43:51',1,NULL,'新文件'),(288,167,'2397.png','信号',2,1466,1489,'2018-12-02 09:41:26','2018-12-02 09:43:51',1,NULL,'新文件'),(300,157,'2387.png','信号',2,669,649,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(301,156,'2386.png','信号',2,1616,1588,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(302,158,'2388.png','信号',2,1813,1714,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(303,155,'2385.png','信号',2,5399,5365,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(304,150,'2380.png','信号',2,5919,5874,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(305,151,'2381.png','信号',2,4362,4347,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(306,154,'2384.png','信号',2,1996,1967,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(307,153,'2383.png','信号',2,890,891,'2018-12-02 09:41:26','2018-12-02 09:43:52',1,NULL,'新文件'),(330,1990,'2393.png','信号',2,4378,4348,'2018-12-02 09:41:33','2018-12-02 09:44:00',1,NULL,'新文件'),(347,214,'2371.png','信号',2,7083,7089,'2018-12-02 09:41:26','2018-12-02 09:44:01',1,NULL,'新文件'),(349,133,'2363.png','信号',2,989,999,'2018-12-02 09:41:26','2018-12-02 09:44:01',1,NULL,'新文件'),(406,2072,'2372.png','信号',2,6320,6331,'2018-12-02 09:41:33','2018-12-02 09:44:14',1,NULL,'新文件'),(460,144,'2374.png','信号',2,8351,8274,'2018-12-02 09:41:26','2018-12-02 09:44:23',1,NULL,'新文件'),(461,1993,'2396.png','信号',2,1201,898,'2018-12-02 09:41:33','2018-12-02 09:44:23',1,NULL,'新文件'),(502,2033,'2362.png','信号',2,8699,8670,'2018-12-02 09:41:33','2018-12-02 09:44:31',1,NULL,'新文件'),(504,241,'2392.png','信号',2,2179,2186,'2018-12-02 09:41:33','2018-12-02 09:44:31',1,NULL,'新文件'),(636,207,'2364.png','信号',2,4564,4583,'2018-12-02 09:41:26','2018-12-02 09:45:04',1,NULL,'新文件'),(733,2040,'2369.png','信号',2,6932,6887,'2018-12-02 09:41:33','2018-12-02 09:45:24',1,NULL,'新文件'),(1963,34749,'2356.png','信号',2,9650,9604,'2018-12-02 09:41:26','2018-12-02 10:08:37',1,NULL,'新文件'),(1964,34837,'2394.png','信号',2,197,195,'2018-12-02 09:41:33','2018-12-02 10:08:37',1,NULL,'新文件'),(1966,34748,'2357.png','信号',2,15474,15383,'2018-12-02 09:41:26','2018-12-02 10:08:41',1,NULL,'新文件'),(1968,34750,'2358.png','信号',2,12692,12653,'2018-12-02 09:41:26','2018-12-02 10:08:46',1,NULL,'新文件'),(6704,0,'信号[国家宝藏]千年古琴再被奏响1.mp4','信号',4,1501670784,1499738533,'2018-12-02 20:08:38','2018-12-02 20:24:15',1502,NULL,'新文件'),(9474,86092,'系统总体流程图.png','',0,190431,190431,'0001-01-01 00:00:00','2018-12-02 22:40:42',1,NULL,'增量文件'),(9475,0,'短消息.txt','',0,41,41,'0001-01-01 00:00:00','2018-12-02 23:00:47',0,NULL,'');
/*!40000 ALTER TABLE `tb_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tranparam`
--

DROP TABLE IF EXISTS `tb_tranparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tranparam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NodeID` int(11) DEFAULT NULL,
  `ParamId` varchar(20) DEFAULT NULL,
  `ParamName` varchar(100) DEFAULT NULL,
  `ParamValue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1513 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tranparam`
--

LOCK TABLES `tb_tranparam` WRITE;
/*!40000 ALTER TABLE `tb_tranparam` DISABLE KEYS */;
INSERT INTO `tb_tranparam` VALUES (1484,3,'TEMP_DIR','临时目录','D:\\PROJECTS\\文件\\目录配置\\临时目录'),(1485,3,'BACK_DIR','备份目录','D:\\PROJECTS\\文件\\目录配置\\备份目录'),(1486,3,'MSG_DIR','短信目录','D:\\PROJECTS\\文件\\目录配置\\短信目录'),(1487,3,'DOWNLOAD_DIR','下载目录','D:\\PROJECTS\\文件\\目录配置\\下载目录'),(1488,3,'REQUEST_DIR','请求目录','D:\\PROJECTS\\文件\\目录配置\\请求目录'),(1489,4,'SERVER_IP','服务器 IP','192.168.31.182'),(1490,4,'SERVER_PORT','服务器端口','11028'),(1491,5,'BLOCK_SIZE','文件分块大小（MB）','1'),(1492,5,'THREAD_POOL_SIZE','线程池大小（个）','1'),(1493,5,'PRIORITY1_WEIGHT','优先级1权重','5'),(1494,5,'PRIORITY2_WEIGHT','优先级2权重','4'),(1495,5,'PRIORITY3_WEIGHT','优先级3权重','3'),(1496,5,'PRIORITY4_WEIGHT','优先级4权重','2'),(1497,5,'PRIORITY5_WEIGHT','优先级5权重','1'),(1498,5,'EXPIRE_TIME','超时时间（毫秒）','3000'),(1499,5,'DATAGRAM_SIZE','数据包大小（字节）','3000'),(1500,14,'FILETYPE_BINARY','二进制','优先级一级'),(1501,14,'FILETYPE_IMAGE','图片','优先级二级'),(1502,14,'FILETYPE_VIDEO','视频','优先级三级'),(1503,13,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\源文件\\轨道几何'),(1504,13,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\上传文件\\轨道几何'),(1505,15,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\源文件\\信号'),(1506,15,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\上传文件\\信号'),(1507,16,'FILETYPE_BINARY','二进制','优先级一级'),(1508,16,'FILETYPE_IMAGE','图片','优先级二级'),(1509,16,'FILETYPE_VIDEO','视频','优先级四级'),(1510,5,'UPLOAD_FILE_COUNT','上传文件数量（个）','10'),(1511,5,'DOWNLOAD_FILE_COUNT','下载文件数量（个）','1'),(1512,4,'DEFAULT_MAC','默认 MAC 地址','94B86DAE0100');
/*!40000 ALTER TABLE `tb_tranparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tranparam_tree`
--

DROP TABLE IF EXISTS `tb_tranparam_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tranparam_tree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(11) DEFAULT NULL,
  `NodeID` int(11) DEFAULT NULL,
  `NodeName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tranparam_tree`
--

LOCK TABLES `tb_tranparam_tree` WRITE;
/*!40000 ALTER TABLE `tb_tranparam_tree` DISABLE KEYS */;
INSERT INTO `tb_tranparam_tree` VALUES (1,1,2,'通用配置'),(2,1,11,'专业配置'),(3,2,3,'目录配置'),(4,2,4,'传输配置'),(11,15,13,'轨道几何'),(12,11,15,'信号');
/*!40000 ALTER TABLE `tb_tranparam_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (3,'aa','a'),(5,'test','aa'),(7,'test11','aa');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 23:26:20
