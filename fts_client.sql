-- MySQL dump 10.13  Distrib 5.5.62, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: fts_client
-- ------------------------------------------------------
-- Server version	5.5.62

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
) ENGINE=InnoDB AUTO_INCREMENT=9758 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_list`
--

LOCK TABLES `file_list` WRITE;
/*!40000 ALTER TABLE `file_list` DISABLE KEYS */;
INSERT INTO `file_list` VALUES (9753,'1A88922FC7CA7AD8D7118CDACC63B8AF',10,1,12,5,40,1,0,0,'2018-12-14 11:49:15',393,268,9233,'','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件','.geo','20181213184713',NULL,'CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo','优先级一级','信号','二进制',40,392532281,157865185,114008400,'上传中',72,'6.84',0,392,1),(9754,'598F9463BA776DBAF1E4A8B23DFFFD16',10,1,12,5,16,1,0,0,'2018-12-14 11:49:15',238,222,9230,'','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件','.geo','20181213184714',NULL,'CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo','优先级一级','信号','二进制',16,237846841,93876341,91744535,'上传中',98,'',0,237,1),(9755,'44299A89E94251D3955A0C35168298BD',10,1,12,5,25,1,0,0,'2018-12-14 11:49:15',238,213,9232,'','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件','.geo','20181213184716',NULL,'CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo','优先级一级','信号','二进制',25,237680441,93909066,90299440,'上传中',96,'20.51',0,237,1),(9756,'96B517A7DEF96C917D6044A322CA7871',10,1,12,5,16,1,0,0,'2018-12-14 11:49:15',230,214,9229,'','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件','.geo','20181213184717',NULL,'GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo','优先级一级','信号','二进制',16,229951161,90943129,88519882,'上传中',97,'6.84',0,229,1),(9757,'B0FCCCA0BCF5DD50970A8AFA8B665ADA',10,1,12,5,15,1,0,0,'2018-12-14 11:49:15',195,180,9231,'','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1\\geo 文件','.geo','20181213184719',NULL,'GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo','优先级一级','信号','二进制',15,194316601,77298406,75162599,'上传中',97,'',0,194,1);
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
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `END_BLOCK` int(11) DEFAULT NULL,
  `CREATE_DATE` varchar(20) NOT NULL,
  UNIQUE KEY `filescan_history_FILE_ID_uindex` (`FILE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filescan_history`
--

LOCK TABLES `filescan_history` WRITE;
/*!40000 ALTER TABLE `filescan_history` DISABLE KEYS */;
INSERT INTO `filescan_history` VALUES (69,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\test.txt',4,0,'20181214093850'),(70,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1.geo',9554361,95,'20181213184713'),(71,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo',392532281,392,'20181213184713'),(72,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo',237846841,237,'20181213184714'),(73,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo',237680441,237,'20181213184716'),(74,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo',229951161,229,'20181213184717'),(75,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo',194316601,194,'20181213184719'),(76,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件 - 副本\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1.geo',9554361,95,'20181214095023'),(77,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件 - 副本\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo',392532281,392,'20181214095023'),(78,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件 - 副本\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo',237846841,237,'20181214095025'),(79,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件 - 副本\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo',237680441,237,'20181214095026'),(80,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件 - 副本\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo',229951161,229,'20181214095027'),(81,'C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号\\geo 文件 - 副本\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo',194316601,194,'20181214095029');
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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paper`
--

LOCK TABLES `tb_paper` WRITE;
/*!40000 ALTER TABLE `tb_paper` DISABLE KEYS */;
INSERT INTO `tb_paper` VALUES (234,NULL,'信号\\2018\\12\\13\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1.geo','信号',1,9554361,3819965,'2018-12-13 18:49:04','2018-12-13 18:49:27',96,NULL,'新文件'),(235,NULL,'信号\\2018\\12\\13\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo','信号',1,392532281,157865185,'2018-12-13 18:49:04','2018-12-13 18:59:39',393,NULL,'新文件'),(236,NULL,'信号\\2018\\12\\13\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo','信号',1,237846841,93876341,'2018-12-13 18:49:04','2018-12-13 19:05:34',238,NULL,'新文件'),(237,NULL,'信号\\2018\\12\\13\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo','信号',1,237680441,93909066,'2018-12-13 18:49:04','2018-12-13 19:11:33',238,NULL,'新文件'),(238,NULL,'信号\\2018\\12\\13\\京哈高铁\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo','信号',1,229951161,90943129,'2018-12-13 18:49:04','2018-12-13 19:17:12',230,NULL,'新文件'),(239,NULL,'信号\\2018\\12\\13\\京哈高铁\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo','信号',1,194316601,77298406,'2018-12-13 18:49:04','2018-12-13 20:53:06',195,NULL,'新文件'),(240,NULL,'信号\\2018\\12\\14\\其他\\test.txt','信号',1,4,24,'2018-12-14 09:38:53','2018-12-14 09:38:57',1,NULL,'新文件'),(241,NULL,'信号\\2018\\12\\14\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1.geo','信号',1,9554361,3819965,'2018-12-14 09:50:23','2018-12-14 09:51:51',96,NULL,'新文件'),(242,NULL,'信号\\2018\\12\\14\\其他\\test.txt','信号',1,4,24,'2018-12-14 11:49:15','2018-12-14 11:49:43',1,NULL,'新文件'),(243,NULL,'信号\\2018\\12\\14\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1.geo','信号',1,9554361,3819965,'2018-12-14 11:49:15','2018-12-14 11:52:50',96,NULL,'新文件'),(244,NULL,'信号\\2018\\12\\13\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1.geo','信号',1,9554361,3819965,'2018-12-14 11:49:15','2018-12-14 11:55:57',96,NULL,'新文件'),(245,NULL,'信号\\2018\\12\\14\\京哈高铁\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo','信号',1,194316601,77298406,'2018-12-14 09:51:02','2018-12-14 11:56:43',195,NULL,'新文件'),(246,NULL,'信号\\2018\\12\\14\\京哈高铁\\GJHAX-BEIJING-HAERBIN-07122018-151113-1.geo','信号',1,194316601,77298406,'2018-12-14 11:49:15','2018-12-14 11:56:46',195,NULL,'新文件'),(247,NULL,'信号\\2018\\12\\14\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo','信号',1,237680441,93909066,'2018-12-14 09:51:02','2018-12-14 12:08:51',238,NULL,'新文件'),(248,NULL,'信号\\2018\\12\\14\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1.geo','信号',1,237680441,93909066,'2018-12-14 11:49:15','2018-12-14 12:09:26',238,NULL,'新文件'),(249,NULL,'信号\\2018\\12\\14\\京哈高铁\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo','信号',1,229951161,90943129,'2018-12-14 09:51:02','2018-12-14 12:09:29',230,NULL,'新文件'),(250,NULL,'信号\\2018\\12\\14\\京哈高铁\\GJHAX-BEIJING-HAERBIN-07122018-063933-1.geo','信号',1,229951161,90943129,'2018-12-14 11:49:15','2018-12-14 12:10:36',230,NULL,'新文件'),(251,NULL,'信号\\2018\\12\\14\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo','信号',1,237846841,93876341,'2018-12-14 09:51:02','2018-12-14 12:12:07',238,NULL,'新文件'),(252,NULL,'信号\\2018\\12\\14\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0.geo','信号',1,237846841,93876341,'2018-12-14 11:49:15','2018-12-14 12:12:17',238,NULL,'新文件'),(253,NULL,'信号\\2018\\12\\14\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo','信号',1,392532281,157865185,'2018-12-14 09:50:23','2018-12-14 12:18:42',393,NULL,'新文件'),(254,NULL,'信号\\2018\\12\\14\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-090407-1.geo','信号',1,392532281,157865185,'2018-12-14 11:49:15','2018-12-14 12:18:50',393,NULL,'新文件');
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
) ENGINE=InnoDB AUTO_INCREMENT=1890 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tranparam`
--

LOCK TABLES `tb_tranparam` WRITE;
/*!40000 ALTER TABLE `tb_tranparam` DISABLE KEYS */;
INSERT INTO `tb_tranparam` VALUES (1861,3,'TEMP_DIR','临时目录','D:\\PROJECTS\\文件\\目录配置\\临时目录'),(1862,3,'BACK_DIR','备份目录','D:\\PROJECTS\\文件\\目录配置\\备份目录'),(1863,3,'MSG_DIR','短信目录','D:\\PROJECTS\\文件\\目录配置\\短信目录'),(1864,3,'DOWNLOAD_DIR','下载目录','D:\\PROJECTS\\文件\\目录配置\\下载目录'),(1865,3,'REQUEST_DIR','请求目录','D:\\PROJECTS\\文件\\目录配置\\请求目录'),(1866,4,'SERVER_IP','服务器 IP','218.81.89.199'),(1867,4,'SERVER_PORT','服务器端口','11028'),(1868,5,'BLOCK_SIZE','文件分块大小（MB）','1'),(1869,5,'THREAD_POOL_SIZE','线程池大小（个）','200'),(1870,5,'PRIORITY1_WEIGHT','优先级1权重','5'),(1871,5,'PRIORITY2_WEIGHT','优先级2权重','4'),(1872,5,'PRIORITY3_WEIGHT','优先级3权重','3'),(1873,5,'PRIORITY4_WEIGHT','优先级4权重','2'),(1874,5,'PRIORITY5_WEIGHT','优先级5权重','1'),(1875,5,'EXPIRE_TIME','超时时间（毫秒）','3000'),(1876,5,'DATAGRAM_SIZE','数据包大小（字节）','1400'),(1877,14,'FILETYPE_BINARY','二进制','优先级一级'),(1878,14,'FILETYPE_IMAGE','图片','优先级二级'),(1879,14,'FILETYPE_VIDEO','视频','优先级三级'),(1880,13,'SOURCE_DIR','源目录','D:\\PROJECTS\\文件\\源文件\\轨道几何'),(1881,13,'UPLOAD_DIR','上传目录','D:\\PROJECTS\\文件\\上传文件\\轨道几何'),(1882,15,'SOURCE_DIR','源目录','C:\\Users\\zjw\\Documents\\测试\\客户端\\源文件\\信号'),(1883,15,'UPLOAD_DIR','上传目录','C:\\Users\\zjw\\Documents\\测试\\客户端\\上传文件\\folder1'),(1884,16,'FILETYPE_BINARY','二进制','优先级一级'),(1885,16,'FILETYPE_IMAGE','图片','优先级二级'),(1886,16,'FILETYPE_VIDEO','视频','优先级四级'),(1887,5,'UPLOAD_FILE_COUNT','上传文件数量（个）','100'),(1888,5,'DOWNLOAD_FILE_COUNT','下载文件数量（个）','1'),(1889,4,'DEFAULT_MAC','默认 MAC 地址','7A31C1C319E6');
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

-- Dump completed on 2018-12-14 13:45:37
