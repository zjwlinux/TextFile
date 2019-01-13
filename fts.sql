-- MySQL dump 10.13  Distrib 5.5.62, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: fts
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
-- Table structure for table `fts_bussiness`
--

DROP TABLE IF EXISTS `fts_bussiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_bussiness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_bussiness`
--

LOCK TABLES `fts_bussiness` WRITE;
/*!40000 ALTER TABLE `fts_bussiness` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_bussiness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_client`
--

DROP TABLE IF EXISTS `fts_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `dir` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `mac` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `security_key` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `network_type` tinyint(4) DEFAULT NULL,
  `carrier_operator` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_client`
--

LOCK TABLES `fts_client` WRITE;
/*!40000 ALTER TABLE `fts_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_client_bussiness_config`
--

DROP TABLE IF EXISTS `fts_client_bussiness_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_client_bussiness_config` (
  `client_id` int(11) NOT NULL,
  `bussiness_id` int(11) NOT NULL,
  `file_type_id` int(11) NOT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`client_id`,`bussiness_id`,`file_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_client_bussiness_config`
--

LOCK TABLES `fts_client_bussiness_config` WRITE;
/*!40000 ALTER TABLE `fts_client_bussiness_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_client_bussiness_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_client_config`
--

DROP TABLE IF EXISTS `fts_client_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_client_config` (
  `client_id` int(11) NOT NULL,
  `init_timeout` int(11) DEFAULT NULL,
  `min_timeout` int(4) DEFAULT NULL,
  `max_timeout` int(11) DEFAULT NULL,
  `block_size` int(11) DEFAULT NULL,
  `pool_size` int(11) DEFAULT NULL,
  `priority1_thread_size` int(11) DEFAULT NULL,
  `priority2_thread_size` int(11) DEFAULT NULL,
  `priority3_thread_size` int(11) DEFAULT NULL,
  `priority4_thread_size` int(11) DEFAULT NULL,
  `priority5_thread_size` int(11) DEFAULT NULL,
  `config_version` int(11) DEFAULT NULL,
  `config_flag` tinyint(4) DEFAULT NULL,
  `bussiness_config_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_client_config`
--

LOCK TABLES `fts_client_config` WRITE;
/*!40000 ALTER TABLE `fts_client_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_client_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_download_file`
--

DROP TABLE IF EXISTS `fts_download_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_download_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `is_compressed` tinyint(4) NOT NULL,
  `length` bigint(20) NOT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `avg_tr` int(11) DEFAULT NULL,
  `min_tr` int(11) DEFAULT NULL,
  `max_tr` int(11) DEFAULT NULL,
  `traffic` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_download_file`
--

LOCK TABLES `fts_download_file` WRITE;
/*!40000 ALTER TABLE `fts_download_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_download_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_file_type`
--

DROP TABLE IF EXISTS `fts_file_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_file_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_file_type`
--

LOCK TABLES `fts_file_type` WRITE;
/*!40000 ALTER TABLE `fts_file_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_file_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fts_upload_file`
--

DROP TABLE IF EXISTS `fts_upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `client_path` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `path` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `is_compressed` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  `length` bigint(20) DEFAULT NULL,
  `compressed_length` bigint(20) DEFAULT NULL,
  `priority` tinyint(255) DEFAULT NULL,
  `bussiness` int(11) DEFAULT NULL,
  `file_type` int(255) DEFAULT NULL,
  `avg_tr` int(11) DEFAULT NULL,
  `min_tr` int(11) DEFAULT NULL,
  `max_tr` int(11) DEFAULT NULL,
  `traffic` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9638 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_upload_file`
--

LOCK TABLES `fts_upload_file` WRITE;
/*!40000 ALTER TABLE `fts_upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `fts_upload_file` ENABLE KEYS */;
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
INSERT INTO `geo_line_code` (`LINE_CODE`, `LINE_NAME`, `SUB_CODE`) VALUES ('0002','京沪','JJH,BJH,AJH,BJHS,AJHU,JHU,jh3'),('0007','京哈','JHA'),('0046','武九','AWJ,BWJ,NWJ'),('0056','襄渝','AXY,YQW'),('0072','益湛','AY,AYZ,AYZX,ACM,LSL,CYZ,LSL,LLS'),('0073','衡柳','AHL,CHL'),('0085','成昆','CKX,CK,CKJ,ACK'),('0091','衢九','CQJ'),('0349','唐呼','ATZ,TZ,ATH'),('0415','京包客专','AJNB,AJB,CJB,AJBK,CJB,AJB,AJBK,CJBK'),('0430','汉丹','AHD'),('0610','宁启','JNQ,BNQ,ANQ,CNQ'),('0630','金山','AJS,BJS,JJS'),('0693','龙漳','ALZ,BLZ,GLZ,NLZ,clz'),('0694','昌福','BCF,ACF,CCF,GCF,GYP'),('0695','永莆','BYP,AYP,CYP,GYP'),('0816','达成','ADC'),('0830','昆玉河','KYH,AKY,CKY'),('0850','高南','AGN'),('0851','贵开','AGK'),('0918','中川铁路','AZC'),('1544','齐河联络线',''),('1655','淮萧联络线','LHX'),('2624','虹桥联络线','hql'),('2838','成渝高铁','CCY,GCY'),('3001','京广高铁','GJG'),('3002','京沪高铁','GJH'),('3005','沪蓉','AHR,HNH,AHW,AHN,CNH,HFN'),('3007','京哈高铁','GHD,gjha'),('3008','沪昆高铁','GHK,GHH'),('3009','杭深','CHS,BHS,AHS,GHS,NHS'),('3010','京津城际','CJJ'),('3011','胶济客专','BJJ'),('3012','石太客专','CST,STK,SKZ'),('3013','徐兰高铁','GZX,GXB,GXLS,GXLX,GXL'),('3014','成灌铁路','CCG'),('3015','沪宁高铁','GHN'),('3016','广珠城际','CGZ'),('3017','昌九城际','BCJ,ACJ,CCJ,NCJ,GCJ,cjj'),('3018','海南东环','adh,ADH,DHS,DHX,HNDH'),('3019','沈大高铁','GHD,GSD'),('3020','长珲客专','CCH'),('3021','广深港','GSG'),('3023','津秦客专','GJQ,CJQ'),('3024','合蚌高铁','GHB'),('3025','盘营高铁','GPY'),('3026','宁杭高铁','GNH'),('3027','大西高铁','GDX,CDX'),('3028','柳南客专','ALN,CLN'),('3029','南广','CNG'),('3030','邕北','CYB,AYB'),('3031','钦防','CQF'),('3032','兰新客专','CLX,GLX'),('3033','武九客专','CWS'),('3034','武咸城际','CWX'),('3035','汉孝城际','CHX,CWX,GHX,GWX'),('3036','武冈城际','CWG'),('3037','郫彭','CPP'),('3038','青荣城际','BQR,CQR'),('3040','西成客专','CXC'),('3041','成贵客专','BCG,CCG'),('3042','峨眉山','CEM'),('3044','贵广客专','CGG'),('3045','沈丹客专','CSD,GSD'),('3046','哈齐客专','CHQ,CHQS'),('3047','合福高铁','HFGS,GHF'),('3048','渝贵',''),('3049','郑焦城际','CZJ'),('3050','郑开城际','CZK'),('3052','广惠城际','CGH'),('3053','宁安客专','CNA'),('3054','丹大快速','CDD'),('3055','赣瑞龙','CGL,GRL,NGRL'),('3056','南昆客专','CNK'),('3057','郑机城际','CZJ,BZJ'),('3058','金温','CJW'),('3059','西环高铁','XHG,AXH,HNXH'),('3060','广肇城际','BGZ'),('3062','兰渝','ALY'),('3063','郑渝客专','CYW,GYW,CZY,GZY'),('3064','长株城际','CCZ'),('3065','湘潭城际','CXT'),('3067','石济客专','CSJ'),('3068','长沙西城际','CCS'),('3070','哈佳线','CHJ'),('3071','深湛线',''),('3075','楚大线',''),('9996','津保铁路','CJB,GJB');
/*!40000 ALTER TABLE `geo_line_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_line_unit`
--

DROP TABLE IF EXISTS `geo_line_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_line_unit` (
  `UNIT_CODE` varchar(2) NOT NULL,
  `LINE_CODE` varchar(4) NOT NULL,
  `DIRECTION_ID` varchar(2) NOT NULL,
  `START_MILE` float NOT NULL,
  `END_MILE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_line_unit`
--

LOCK TABLES `geo_line_unit` WRITE;
/*!40000 ALTER TABLE `geo_line_unit` DISABLE KEYS */;
INSERT INTO `geo_line_unit` (`UNIT_CODE`, `LINE_CODE`, `DIRECTION_ID`, `START_MILE`, `END_MILE`) VALUES ('03','0002','01',0,371),('06','0002','01',371,763),('07','0002','01',763,9999),('03','0002','02',0,371),('06','0002','02',371,763),('07','0002','02',763,1463),('06','0002','06',466.598,502.835),('07','0002','06',1151.69,1159),('06','0002','07',465.853,501.308),('03','0007','01',0,312.498),('02','0007','01',312.498,1172),('01','0007','01',1172,1249.4),('03','0007','02',0,312.498),('02','0007','02',312.498,1172),('01','0007','02',1172,1249.42),('17','0046','01',0,185.809),('13','0046','01',185.809,9999),('17','0046','02',0,185.809),('13','0046','02',185.809,9999),('17','0056','01',0,174.994),('16','0056','01',174.994,581.191),('10','0056','01',581.191,9999),('17','0056','02',0,174.994),('16','0056','02',174.994,581.191),('10','0056','02',581.191,9999),('08','0072','01',0,7),('08','0072','02',0,7),('08','0072','05',7,950.344),('09','0072','05',333.629,798.721),('08','0073','01',0,147.873),('09','0073','01',147.873,497.965),('08','0073','02',0,147.873),('09','0073','02',147.873,497.965),('15','0085','01',945.716,1097.45),('15','0085','02',945.716,1097.45),('10','0085','05',0,750.897),('14','0085','05',750.897,945.715),('07','0091','01',0,96.416),('13','0091','01',96.416,335.383),('07','0091','02',0,96.416),('13','0091','02',96.416,335.383),('03','0349','01',10,591),('04','0349','01',591,859.872),('03','0349','02',9.913,591),('04','0349','02',591,859.822),('04','0415','01',352.101,659.9),('04','0415','02',352.101,659.9),('17','0430','01',0,370.583),('17','0430','02',0,370.583),('17','0430','05',370.583,418.506),('07','0610','01',0,269),('07','0610','02',0,269),('07','0630','01',0,55.267),('07','0630','02',0,55.303),('13','0693','01',0,115),('13','0693','02',0,114),('13','0694','01',0,545.97),('13','0694','02',0,545.97),('13','0695','01',488.372,545.366),('13','0695','02',488.441,545.337),('10','0816','01',0.022,355.526),('10','0816','02',0,355.526),('14','0830','01',0.093,382.394),('14','0830','02',0.093,382.394),('10','0850','05',0,101.588),('10','0851','01',0,67),('10','0851','02',0,67),('11','0918','01',14.304,62.726),('11','0918','02',14.299,62.726),('06','1544','01',0,19.376),('06','1544','02',0,19.376),('07','1655','01',0,28.7),('07','1655','02',0,28.7),('07','2624','01',0,21.796),('07','2624','02',0,21.796),('10','2838','01',0,296.1),('10','2838','02',0,296.1),('03','3001','01',0,510.33),('05','3001','01',510.33,780.712),('17','3001','01',780.712,1353.65),('08','3001','01',1353.65,2295.53),('03','3001','02',0,510.33),('05','3001','02',510.33,780.712),('17','3001','02',780.712,1353.65),('08','3001','02',1353.65,2295.53),('03','3002','01',0,316.255),('06','3002','01',316.255,691.859),('07','3002','01',691.895,9999),('03','3002','02',0,316.255),('06','3002','02',316.255,691.859),('07','3002','02',691.895,9999),('07','3005','01',0,663.595),('17','3005','01',663.595,1398.21),('10','3005','01',1398.21,1962.02),('07','3005','02',0,663.595),('17','3005','02',663.595,1398.21),('10','3005','02',1398.21,1962.02),('02','3007','01',702,1144.56),('01','3007','01',1144.56,1242.53),('02','3007','02',702,1144.56),('01','3007','02',1144.56,1242.53),('07','3008','01',0,429.202),('13','3008','01',429.202,1006.8),('08','3008','01',1006.8,1504.36),('10','3008','01',1504.36,2071.46),('14','3008','01',2071.46,2252.29),('07','3008','02',0,429.202),('13','3008','02',429.202,1006.8),('08','3008','02',1006.8,1504.36),('10','3008','02',1504.36,2071.46),('14','3008','02',2071.46,2252.38),('07','3009','01',159.328,664.589),('13','3009','01',664.589,1259.99),('08','3009','01',1259.99,1622.33),('07','3009','02',159.189,664.589),('13','3009','02',664.589,1259.99),('08','3009','02',1259.99,1622.33),('03','3010','01',0,163),('03','3010','02',0,163),('06','3011','01',0,9999),('06','3011','02',0,9999),('03','3012','01',0,223),('03','3012','02',0,223),('07','3013','01',190,299.02),('05','3013','01',299.02,950.627),('16','3013','01',950.627,1305.11),('11','3013','01',1305.11,1641.86),('07','3013','02',190,299.02),('05','3013','02',299.02,950.627),('16','3013','02',950.627,1305.11),('11','3013','02',1305.11,1641.86),('10','3014','01',8.178,64.791),('10','3014','02',8.187,64.815),('10','3014','05',0,8.187),('07','3015','01',0,9999),('07','3015','02',0,9999),('08','3016','01',0,9999),('08','3016','02',0,9999),('13','3017','01',0,141),('13','3017','02',0.253,141),('08','3018','01',0,9999),('08','3018','02',0.005,9999),('02','3019','01',0,402),('02','3019','02',0,402),('02','3020','01',0,472.971),('02','3020','02',0,472.971),('08','3021','01',2290,2409.43),('19','3021','01',2409.43,2435.16),('08','3021','02',2290,2409.43),('19','3021','02',2409.43,2435.16),('03','3023','01',0,9999),('03','3023','02',0,9999),('07','3024','01',0,9999),('07','3024','02',0,9999),('02','3025','01',0,89.314),('02','3025','02',0,86.1),('07','3026','01',0,255),('07','3026','02',0,255),('18','3027','01',261.378,843.07),('16','3027','01',843.07,848.026),('18','3027','02',261.542,843.07),('16','3027','02',843.07,848.026),('09','3028','01',0,226),('09','3028','02',0,226),('09','3029','01',0,573.402),('09','3029','02',0,573.428),('09','3030','01',0,198),('09','3030','02',0,198),('09','3031','01',0,63),('09','3031','02',0,63),('11','3032','01',1641,2580.24),('12','3032','01',2580.24,3432.93),('11','3032','02',1641,2580.24),('12','3032','02',2580.24,3432.93),('17','3033','01',0,153.696),('13','3033','01',153.696,209.766),('17','3033','02',0,153.696),('13','3033','02',153.696,209.682),('17','3034','01',0,75.884),('17','3034','02',0,75.884),('17','3035','01',0,61),('17','3035','02',0,61),('17','3036','01',0,35.911),('17','3036','02',0,35.911),('10','3037','01',0,21.1),('10','3037','02',0,21.1),('06','3038','01',0.071,302.757),('06','3038','02',1.939,302.757),('16','3040','01',0,340.117),('10','3040','01',340.117,684),('16','3040','02',0,340.117),('10','3040','02',340.117,684),('10','3041','01',0.011,130.522),('10','3041','02',0,131.212),('10','3042','01',0,31),('10','3042','02',0.688,31),('10','3044','01',0,278.035),('09','3044','01',278.035,688.662),('08','3044','01',688.662,858.995),('10','3044','02',0,278.035),('09','3044','02',278.035,688.662),('08','3044','02',688.662,858.995),('02','3045','01',0,209.265),('02','3045','02',0,209.266),('01','3046','01',12.647,282.448),('01','3046','02',12.647,282.448),('07','3047','01',959.665,1307.23),('13','3047','01',1307.23,1809.19),('07','3047','02',959.665,1307.23),('13','3047','02',1307.23,1809.19),('10','3048','01',0,379.422),('10','3048','02',0,379.422),('05','3049','01',0.101,71.4),('05','3049','02',0,71.4),('05','3050','01',0,51),('05','3050','02',0.083,51),('08','3052','01',37,140),('08','3052','02',37,140),('07','3053','01',0,258),('07','3053','02',0,258),('02','3054','01',16.526,311.638),('02','3054','02',16.526,311.534),('13','3055','01',0,251),('13','3055','02',0,251),('09','3056','01',0,255.39),('14','3056','01',255.39,705.669),('09','3056','02',0,255.39),('14','3056','02',255.39,705.669),('05','3057','01',0,28.295),('05','3057','02',0,28.295),('07','3058','01',0,240.8),('07','3058','02',0,240.8),('08','3059','01',0,344.98),('08','3059','02',0,344.98),('08','3060','01',34.5,118.838),('08','3060','02',34.5,118.838),('10','3062','01',497.443,800.403),('10','3062','02',497.443,801.844),('10','3063','01',840,1086.6),('10','3063','02',840,1086.6),('08','3064','01',0,59),('08','3064','02',0,59),('08','3065','01',25.827,49.858),('08','3065','02',25.827,49.858),('03','3067','01',0,229.241),('06','3067','01',229.241,310.208),('03','3067','02',0,229.241),('06','3067','02',229.241,310.208),('08','3068','01',0,21.9),('08','3068','02',0,21.9),('01','3070','01',0,341),('01','3070','02',0,341),('08','3071','01',131,485.853),('08','3071','02',131.153,485.976),('14','3075','01',0,174.591),('14','3075','02',0,174.591),('03','9996','01',0,137.5),('03','9996','02',0,137.5);
/*!40000 ALTER TABLE `geo_line_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `create_time` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `access_token_expired_seconds` int(11) DEFAULT '-1',
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_token_expired_seconds` int(11) DEFAULT '-1',
  UNIQUE KEY `access_token` (`access_token`),
  UNIQUE KEY `refresh_token` (`refresh_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client`
--

DROP TABLE IF EXISTS `oauth_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client` (
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `grant_types` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(255) DEFAULT NULL,
  `validity` int(11) DEFAULT '-1',
  `description` varchar(4096) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client`
--

LOCK TABLES `oauth_client` WRITE;
/*!40000 ALTER TABLE `oauth_client` DISABLE KEYS */;
INSERT INTO `oauth_client` (`client_id`, `client_secret`, `client_name`, `scope`, `grant_types`, `redirect_uri`, `validity`, `description`, `create_time`) VALUES ('7e81a2ff25586615b7e1ddff1c5b08ed','975f0c15135acc1cb5e5b42206e6b435','AWW Android Client',NULL,'password,refresh_token',NULL,1,NULL,'2017-01-17 01:25:01'),('7854f0c61e9b473e300ec19ee1957b52','e88cb8a369bb9cdff355d89884b6b5ff','AWW IOS Client',NULL,'password,refresh_token',NULL,1,NULL,'2017-01-17 01:26:48'),('3c1c5dfc9a9c5724c4d5dffe5c963a87','02a223e9b8e704dbc537447f16ea89a9','AWW Android Management','','password,refresh_token','',1,'','2017-07-04 01:31:29');
/*!40000 ALTER TABLE `oauth_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `create_time` timestamp NULL DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `oauth_code_expired_seconds` int(11) DEFAULT '-1',
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级编号',
  `code` varchar(256) DEFAULT NULL COMMENT '代码',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `href` varchar(128) DEFAULT NULL COMMENT '链接',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `target` varchar(128) DEFAULT NULL COMMENT 'target',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) DEFAULT NULL COMMENT '是否显示',
  `permission` varchar(128) DEFAULT NULL COMMENT '权限',
  `create_by` bigint(20) NOT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) NOT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sys_area_nname` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`id`, `parent_id`, `code`, `name`, `href`, `sort`, `target`, `icon`, `is_show`, `permission`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES (1,NULL,'0001','终端状态','/admin/client',1,'','fa fa-train','1','',1,'2017-02-16 14:34:57',1,'2017-11-21 15:01:45'),(2,NULL,'0002','接收数据','',2,'','fa fa-cloud-upload','1','',1,'2017-11-10 09:25:51',1,'2017-11-10 11:21:59'),(3,NULL,'0003','发送数据','',3,'','fa fa-cloud-download','1','',1,'2017-11-01 15:22:37',1,'2017-11-10 11:21:13'),(4,NULL,'0004','数据统计','',4,'','fa fa-line-chart','1','',1,NULL,1,'2017-11-21 15:04:14'),(5,NULL,'0005','业务管理','',5,'','fa fa-book','1','',1,'2017-11-21 14:16:32',1,'2017-11-21 15:04:51'),(6,NULL,'0006','系统管理','',6,'','fa fa-cogs','1','',1,'2017-02-16 14:35:30',1,'2017-02-17 09:53:01'),(7,NULL,'0007','系统监控','/monitor',7,'','fa  fa-user-secret','1','monitor:*',1,'2017-07-06 15:55:37',1,'2017-11-10 11:26:32'),(8,6,'00060008','用户管理','/admin/sys/user',1,'','fa fa-user','1','user:*',1,'2017-02-16 14:40:52',1,'2017-02-16 14:40:52'),(9,6,'00060009','角色管理','/admin/sys/role',2,'','fa fa-user-plus','1','role:*',1,'2017-02-16 14:40:52',1,'2017-02-17 09:53:58'),(10,6,'00060010','菜单管理','/admin/sys/menu',3,'','fa fa-list','1','menu:*',1,'2017-02-16 14:41:43',1,'2017-02-17 10:24:35'),(11,6,'00060011','日志管理','/admin/sys/log',4,'','fa fa-database','1','log:*',1,'2017-02-16 14:42:38',1,'2017-02-17 09:54:15'),(12,6,'00060012','系统参数','/admin/sys/param',5,'','fa fa-cog','1','param:*',1,'2017-02-16 14:43:00',1,'2017-02-17 09:54:21'),(13,2,'00020013','接收列表','/admin/transfer/upload_file',1,'','fa fa-cloud-upload','1','upload_file:*',1,'2017-10-31 16:59:49',1,'2017-11-10 11:18:07'),(14,3,'00030014','发送列表','/admin/transfer/download_file',1,'','fa fa-cloud-download','1','download_file:*,upload:*',1,'2017-11-01 15:01:25',1,'2017-11-10 11:18:17'),(15,2,'00020015','历史数据','/admin/history/upload_file',2,'','fa  fa-cloud-upload','1','history_upload:*',1,'2017-11-01 15:22:47',1,'2017-11-24 10:15:52'),(16,3,'00030016','历史数据','/admin/history/download_file',2,'','fa  fa-cloud-download','1','history_download:*',1,'2017-11-07 18:19:43',1,'2017-11-24 10:15:42'),(17,5,'00050017','终端管理','/admin/transfer/client',1,'','fa fa-train','1','client:*',1,'2017-10-31 16:59:05',1,'2017-11-10 11:19:19'),(18,5,'00050018','传输配置','/admin/transfer/config',2,'','fa fa-sort-amount-asc','1','config:*',1,'2017-11-09 14:05:09',1,'2017-11-23 15:15:12'),(19,4,'00040019','接收数据统计','/admin/statistics/upload_file',1,'','fa fa-file-text','1','statistics_upload_file:*',1,'2017-11-27 10:02:20',1,'2017-11-29 12:51:21'),(20,4,'00040020','接收数据量统计','/admin/statistics/upload_traffic',2,'','fa fa-circle-o','1','statistics_upload_traffic:*',1,'2017-11-29 09:02:00',1,'2017-11-29 13:08:24'),(21,4,'00040021','发送数据统计','/admin/statistics/download_file',3,'','fa fa-circle-o','1','statistics_download_file:*',1,'2017-11-29 13:09:47',1,'2017-11-29 13:09:47'),(22,4,'00040022','发送数据量统计','/admin/statistics/download_traffic',4,'','fa fa-circle-o','1','statistics_download_traffic:*',1,'2017-11-29 13:10:36',1,'2017-11-29 13:10:36');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_param`
--

DROP TABLE IF EXISTS `sys_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_param` (
  `name` varchar(64) NOT NULL COMMENT '参数名称',
  `value` varchar(4096) DEFAULT NULL COMMENT '参数值',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_param`
--

LOCK TABLES `sys_param` WRITE;
/*!40000 ALTER TABLE `sys_param` DISABLE KEYS */;
INSERT INTO `sys_param` (`name`, `value`) VALUES ('port','11028'),('upload_dir','C:\\Users\\zjw\\Documents\\测试\\服务器\\上传'),('download_dir','C:\\Users\\zjw\\Documents\\测试\\服务器\\下载'),('temp_dir','C:\\Users\\zjw\\Documents\\测试\\服务器\\临时'),('backup_dir','C:\\Users\\zjw\\Documents\\测试\\服务器\\备份'),('ignored_extensions','_tmp'),('geo_split_dir','C:\\Users\\zjw\\Documents\\测试\\服务器\\管界分割'),('ip','');
/*!40000 ALTER TABLE `sys_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `create_by` bigint(20) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sys_role_enname` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `name`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES (1,'普通用户',1,'2017-02-22 10:26:17',1,'2017-02-22 10:26:17'),(2,'超级管理员',1,'2016-02-22 16:47:16',1,'2016-02-23 15:13:04'),(3,'系统管理员',1,'2016-02-22 16:47:16',1,'2016-02-23 15:13:04');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `area_id` bigint(20) DEFAULT NULL COMMENT '区域',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` char(1) DEFAULT '1' COMMENT '是否可登录',
  `create_by` bigint(20) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(20) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `location_id` bigint(20) DEFAULT NULL COMMENT '区域编号',
  PRIMARY KEY (`id`),
  KEY `sys_user_name` (`name`),
  KEY `sys_user_login_date` (`login_date`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `password`, `name`, `mobile`, `photo`, `area_id`, `login_ip`, `login_date`, `login_flag`, `create_by`, `create_date`, `update_by`, `update_date`, `del_flag`, `location_id`) VALUES (1,'e10adc3949ba59abbe56e057f20f883e','admin','18691822869',NULL,NULL,'0:0:0:0:0:0:0:1','2019-01-07 21:33:09','1',1,'2017-01-12 10:26:46',1,'2017-11-29 15:28:07','0',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-13 22:56:05
