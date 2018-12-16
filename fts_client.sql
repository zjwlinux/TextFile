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
  `sourceDirRoot` tinytext,
  `sourceFullName` tinytext,
  `sourceDirName` tinytext,
  `uploadDirRoot` tinytext,
  `uploadFullName` tinytext,
  `uploadDirName` tinytext,
  `extension` varchar(10) DEFAULT NULL,
  `createTime` varchar(20) DEFAULT NULL,
  `lastWriteTime` datetime DEFAULT NULL,
  `fileName` tinytext,
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
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_list`
--

LOCK TABLES `file_list` WRITE;
/*!40000 ALTER TABLE `file_list` DISABLE KEYS */;
INSERT INTO `file_list` VALUES (239,'83D9316ECDD87B1086BC449B8A9EEAE9',10,2,11,4,0,1,154128384,0,'2018-12-17 00:59:49',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,156848128,1139841,0,'等待上传',0,'',539,566,0),(243,'47B2B115F8DAF6D16D1B571EEA66E759',10,2,11,4,0,1,156848128,0,'2018-12-17 00:59:54',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,159539200,1109724,0,'等待上传',0,'',567,593,0),(247,'9FFB62113D7C8DE1E5632DC539893142',10,2,11,4,0,1,159539200,0,'2018-12-17 01:00:00',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,162258944,1141328,0,'等待上传',0,'',594,621,0),(251,'3E26E497AFB80DABB85AAA1A4522744E',10,2,11,4,0,1,162258944,0,'2018-12-17 01:00:06',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,164978688,1132263,0,'等待上传',0,'',622,649,0),(254,'165047A3A9B20294F7D9FE72A636F2B0',10,2,11,4,0,1,164978688,0,'2018-12-17 01:00:12',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,167727104,1143395,0,'等待上传',0,'',650,677,0),(258,'30EE024CAE12E4D0B3AAA2349D7B5F1D',10,2,11,4,0,1,167727104,0,'2018-12-17 01:00:17',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,170409984,1097250,0,'等待上传',0,'',678,704,0),(262,'29CDCAFB5C01BE0CB6F6F4C4BE1FE6EC',10,2,11,4,0,1,170409984,0,'2018-12-17 01:00:23',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,173146112,1117904,0,'等待上传',0,'',705,732,0),(266,'06D6A356A4F4835706D659C70906C903',10,2,11,4,0,1,173146112,0,'2018-12-17 01:00:29',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,175898624,1138939,0,'等待上传',0,'',733,760,0),(270,'BBEB76524ECAF43944C260A036AB16EB',10,2,11,4,0,1,175898624,0,'2018-12-17 01:00:34',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,178556928,1089840,0,'等待上传',0,'',761,787,0),(273,'75AA35F5881AA3EBCF2C5BA90FAC0D1C',10,2,11,4,0,1,178556928,0,'2018-12-17 01:00:40',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,181317632,1129506,0,'等待上传',0,'',788,815,0),(277,'02B7EF10347F36CFBCDF62FC61203742',10,2,11,4,0,1,181317632,0,'2018-12-17 01:00:45',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,184016896,1108850,0,'等待上传',0,'',816,842,0),(281,'A7299F8B4384896B6E49F15BAE15C81A',10,2,11,4,0,1,184016896,0,'2018-12-17 01:00:51',29,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,186888192,1171666,0,'等待上传',0,'',843,871,0),(285,'49264F64253DA089187F43924AB695EF',10,2,11,4,0,1,186888192,0,'2018-12-17 01:00:58',30,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,189857792,1223476,0,'等待上传',0,'',872,901,0),(289,'49AF039C108ABCB2E095177DC9F1F790',10,2,11,4,0,1,189857792,0,'2018-12-17 01:01:03',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,192618496,1141193,0,'等待上传',0,'',902,929,0),(293,'BA0C3736528EC21DAD90FDD0ECD39014',10,2,11,4,0,1,192618496,0,'2018-12-17 01:01:09',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,195309568,1096974,0,'等待上传',0,'',930,956,0),(297,'0AC18D2917F7EABF361D2379087EFC29',10,2,11,4,0,1,195309568,0,'2018-12-17 01:01:15',28,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,198033408,1155531,0,'等待上传',0,'',957,984,0),(299,'9BB2D9123E58CC34481E0CCA1050580A',10,2,11,4,0,1,198033408,0,'2018-12-17 01:01:42',29,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,200908800,1194341,0,'等待上传',0,'',985,1013,0),(303,'85F008E3340DA222B0A66E5FD81C7C80',10,2,11,4,0,1,200908800,0,'2018-12-17 01:01:48',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,214179840,5425702,0,'等待上传',0,'',1014,1040,0),(317,'BB102AB9787D604397299D11C40574EC',10,2,11,4,0,1,214179840,0,'2018-12-17 01:11:52',179,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,392532000,71728725,0,'等待上传',0,'',1041,1219,0),(482,'8616070EE771B3E363E7B85E747F2866',10,2,12,4,10,1,151449600,0,'2018-12-17 00:59:43',27,0,0,'','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号','.geo','20181217005417',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','优先级二级','信号','二进制',0,154128384,1101897,0,'上传中',0,'',512,538,0);
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
  `FILE_NAME` tinytext NOT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `END_BLOCK` int(11) DEFAULT NULL,
  `CREATE_DATE` varchar(20) NOT NULL,
  UNIQUE KEY `filescan_history_FILE_ID_uindex` (`FILE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filescan_history`
--

LOCK TABLES `filescan_history` WRITE;
/*!40000 ALTER TABLE `filescan_history` DISABLE KEYS */;
INSERT INTO `filescan_history` VALUES (4,'D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo',392532000,1219,'20181217005417');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_duanxin`
--

LOCK TABLES `fts_duanxin` WRITE;
/*!40000 ALTER TABLE `fts_duanxin` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_duanxin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_line_code`
--

DROP TABLE IF EXISTS `geo_line_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_line_code` (
  `LINE_CODE` varchar(4) NOT NULL,
  `LINE_NAME` varchar(20) NOT NULL,
  `SUB_CODE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_line_code`
--

LOCK TABLES `geo_line_code` WRITE;
/*!40000 ALTER TABLE `geo_line_code` DISABLE KEYS */;
INSERT INTO `geo_line_code` VALUES ('0002','京沪','JJH,BJH,AJH,BJHS,AJHU,JHU,jh3'),('0007','京哈','JHA'),('0046','武九','AWJ,BWJ,NWJ'),('0056','襄渝','AXY,YQW'),('0072','益湛','AY,AYZ,AYZX,ACM,LSL,CYZ,LSL,LLS'),('0073','衡柳','AHL,CHL'),('0085','成昆','CKX,CK,CKJ、ACK'),('0091','衢九','CQJ'),('0349','唐呼','ATZ,TZ,ATH'),('0415','京包客专','AJNB,AJB,CJB,AJBK,CJB,AJB,AJBK,CJBK'),('0430','汉丹','AHD'),('0610','宁启','JNQ,BNQ,ANQ,CNQ'),('0630','金山','AJS,BJS,JJS'),('0693','龙漳','ALZ,BLZ,GLZ,NLZ,clz'),('0694','昌福','BCF,ACF,CCF,GCF,GYP'),('0695','永莆','BYP,AYP,CYP,GYP'),('0816','达成','ADC'),('0830','昆玉河','KYH,AKY,CKY'),('0850','高南','AGN'),('0851','贵开','AGK'),('0918','中川铁路','AZC'),('1544','齐河联络线',''),('1655','淮萧联络线','LHX'),('2624','虹桥联络线','hql'),('2838','成渝高铁','CCY,GCY'),('3001','京广高铁','GJG'),('3002','京沪高铁','GJH'),('3005','沪蓉','AHR、HNH、AHW、AHN、CNH、HFN'),('3007','京哈高铁','GHD,gjha'),('3008','沪昆高铁','GHK,GHH'),('3009','杭深','CHS,BHS,AHS,GHS,NHS'),('3010','京津城际','CJJ'),('3011','胶济客专','BJJ'),('3012','石太客专','CST,STK ，SKZ'),('3013','徐兰高铁','GZX,GXB,GXLS,GXLX,GXL'),('3014','成灌铁路','CCG'),('3015','沪宁高铁','GHN'),('3016','广珠城际','CGZ'),('3017','昌九城际','BCJ,ACJ,CCJ,NCJ,GCJ,cjj'),('3018','海南东环','adh,ADH,DHS,DHX,HNDH'),('3019','沈大高铁','GHD、GSD'),('3020','长珲客专','CCH'),('3021','广深港','GSG'),('3023','津秦客专','GJQ,CJQ'),('3024','合蚌高铁','GHB'),('3025','盘营高铁','GPY'),('3026','宁杭高铁','GNH'),('3027','大西高铁','GDX,CDX'),('3028','柳南客专','ALN,CLN'),('3029','南广','CNG'),('3030','邕北','CYB,AYB'),('3031','钦防','CQF'),('3032','兰新客专','CLX,GLX'),('3033','武九客专','CWS'),('3034','武咸城际','CWX'),('3035','汉孝城际','CHX,CWX,GHX,GWX'),('3036','武冈城际','CWG'),('3037','郫彭','CPP'),('3038','青荣城际','BQR,CQR'),('3040','西成客专','CXC'),('3041','成贵客专','BCG,CCG'),('3042','峨眉山','CEM'),('3044','贵广客专','CGG'),('3045','沈丹客专','CSD,GSD'),('3046','哈齐客专','CHQ,CHQS'),('3047','合福高铁','HFGS,GHF'),('3048','渝贵',''),('3049','郑焦城际','CZJ'),('3050','郑开城际','CZK'),('3052','广惠城际','CGH'),('3053','宁安客专','CNA'),('3054','丹大快速','CDD'),('3055','赣瑞龙','CGL,GRL,NGRL'),('3056','南昆客专','CNK'),('3057','郑机城际','CZJ,BZJ'),('3058','金温','CJW'),('3059','西环高铁','XHG,AXH,HNXH'),('3060','广肇城际','BGZ'),('3062','兰渝','ALY'),('3063','郑渝客专','CYW,GYW,CZY,GZY'),('3064','长株城际','CCZ'),('3065','湘潭城际','CXT'),('3067','石济客专','CSJ'),('3068','长沙西城际','CCS'),('3070','哈佳线','CHJ'),('3071','深湛线',''),('3075','楚大线',''),('9996','津保铁路','CJB,GJB');
/*!40000 ALTER TABLE `geo_line_code` ENABLE KEYS */;
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
  `file_name` tinytext NOT NULL,
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
  UNIQUE KEY `tb_paper_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paper`
--

LOCK TABLES `tb_paper` WRITE;
/*!40000 ALTER TABLE `tb_paper` DISABLE KEYS */;
INSERT INTO `tb_paper` VALUES (11,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,112177152,45454598,'2018-12-17 00:58:14','2018-12-17 01:01:42',113,NULL,'新文件'),(12,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,116436992,17242508,'2018-12-17 00:58:37','2018-12-17 01:12:51',43,NULL,'增量文件'),(13,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,124887040,34317675,'2018-12-17 00:58:42','2018-12-17 01:14:43',85,NULL,'增量文件'),(14,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,127676416,11270866,'2018-12-17 00:58:48','2018-12-17 01:15:01',28,NULL,'增量文件'),(15,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,130215936,10421742,'2018-12-17 00:58:53','2018-12-17 01:15:19',26,NULL,'增量文件'),(16,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,132829184,10952142,'2018-12-17 00:58:59','2018-12-17 01:15:40',27,NULL,'增量文件'),(17,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,135589888,11240799,'2018-12-17 00:59:05','2018-12-17 01:15:58',28,NULL,'增量文件'),(18,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,138129408,10394500,'2018-12-17 00:59:10','2018-12-17 01:16:17',26,NULL,'增量文件'),(19,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,140656640,6937307,'2018-12-17 00:59:15','2018-12-17 01:16:29',26,NULL,'增量文件'),(20,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,143286272,1099819,'2018-12-17 00:59:21','2018-12-17 01:16:38',27,NULL,'增量文件'),(21,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,146046976,1154122,'2018-12-17 00:59:26','2018-12-17 01:16:51',28,NULL,'增量文件'),(22,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,148738048,1112219,'2018-12-17 00:59:32','2018-12-17 01:17:38',27,NULL,'增量文件'),(23,NULL,'信号\\二进制\\2018\\12\\17\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090409-1.geo','信号',2,151449600,1146780,'2018-12-17 00:59:38','2018-12-17 01:18:37',28,NULL,'增量文件');
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
) ENGINE=InnoDB AUTO_INCREMENT=2150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tranparam`
--

LOCK TABLES `tb_tranparam` WRITE;
/*!40000 ALTER TABLE `tb_tranparam` DISABLE KEYS */;
INSERT INTO `tb_tranparam` VALUES (2104,3,'TEMP_DIR','临时目录','D:\\PROJECTS\\文件\\目录配置\\临时目录'),(2105,3,'BACK_DIR','备份目录','D:\\PROJECTS\\文件\\目录配置\\备份目录'),(2106,3,'MSG_DIR','短信目录','D:\\PROJECTS\\文件\\目录配置\\短信目录'),(2107,3,'DOWNLOAD_DIR','下载目录','D:\\PROJECTS\\文件\\目录配置\\下载目录'),(2108,3,'REQUEST_DIR','请求目录','D:\\PROJECTS\\文件\\目录配置\\请求目录'),(2109,4,'SERVER_IP','服务器 IP','218.81.89.199'),(2110,4,'SERVER_PORT','服务器端口','11028'),(2111,5,'BLOCK_SIZE','文件分块大小（MB）','1'),(2112,5,'THREAD_POOL_SIZE','线程池大小（个）','10'),(2113,5,'PRIORITY1_WEIGHT','优先级1权重','5'),(2114,5,'PRIORITY2_WEIGHT','优先级2权重','4'),(2115,5,'PRIORITY3_WEIGHT','优先级3权重','3'),(2116,5,'PRIORITY4_WEIGHT','优先级4权重','2'),(2117,5,'PRIORITY5_WEIGHT','优先级5权重','1'),(2118,5,'EXPIRE_TIME','超时时间（毫秒）','3000'),(2119,5,'DATAGRAM_SIZE','数据包大小（字节）','1400'),(2120,14,'FILETYPE_BINARY','二进制','优先级一级'),(2121,14,'FILETYPE_IMAGE','图片','优先级二级'),(2122,14,'FILETYPE_VIDEO','视频','优先级三级'),(2123,13,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\源文件\\轨道几何'),(2124,13,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\上传文件\\轨道几何'),(2125,15,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\信号'),(2126,15,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\信号'),(2127,16,'FILETYPE_BINARY','二进制','优先级二级'),(2128,16,'FILETYPE_IMAGE','图片','优先级三级'),(2129,16,'FILETYPE_VIDEO','视频','优先级四级'),(2130,5,'UPLOAD_FILE_COUNT','上传文件数量（个）','50'),(2131,5,'DOWNLOAD_FILE_COUNT','下载文件数量（个）','1'),(2132,4,'DEFAULT_MAC','默认 MAC 地址','94B86DAE0100'),(2133,5,'MAX_EXPIRE_TIME','最大超时时间（毫秒）','5000'),(2134,5,'MIN_EXPIRE_TIME','最小超时时间（毫秒）','1000'),(2135,17,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\轨道检测'),(2136,17,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\轨道检测'),(2137,18,'FILETYPE_BINARY','二进制','优先级一级'),(2138,18,'FILETYPE_IMAGE','图片','优先级二级'),(2139,18,'FILETYPE_VIDEO','视频','优先级三级'),(2140,19,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\通讯'),(2141,19,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\通讯'),(2142,20,'FILETYPE_BINARY','二进制','优先级一级'),(2143,20,'FILETYPE_IMAGE','图片','优先级二级'),(2144,20,'FILETYPE_VIDEO','视频','优先级三级'),(2145,21,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\测试\\客户端\\源文件\\弓网'),(2146,21,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\测试\\客户端\\上传文件\\弓网'),(2147,22,'FILETYPE_BINARY','二进制','优先级一级'),(2148,22,'FILETYPE_IMAGE','图片','优先级二级'),(2149,22,'FILETYPE_VIDEO','视频','优先级三级');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tranparam_tree`
--

LOCK TABLES `tb_tranparam_tree` WRITE;
/*!40000 ALTER TABLE `tb_tranparam_tree` DISABLE KEYS */;
INSERT INTO `tb_tranparam_tree` VALUES (1,1,2,'通用配置'),(2,1,11,'专业配置'),(3,2,3,'目录配置'),(4,2,4,'传输配置'),(11,15,13,'轨道几何'),(12,11,15,'信号'),(13,11,17,'轨道检测'),(14,11,19,'通讯'),(15,11,21,'弓网');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (8,'admin','admin');
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

-- Dump completed on 2018-12-17  1:23:08
