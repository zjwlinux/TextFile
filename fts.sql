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
INSERT INTO `fts_bussiness` VALUES (12,'信号');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_client`
--

LOCK TABLES `fts_client` WRITE;
/*!40000 ALTER TABLE `fts_client` DISABLE KEYS */;
INSERT INTO `fts_client` VALUES (9,'WIN_ZJW','ZD01','94B86DAE0100','WIN_ZJW',1,'WXCS','2018-11-01 15:30:00',NULL,NULL);
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
  `is_message` int(11) NOT NULL,
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
  `sender` varchar(100) DEFAULT NULL,
  `receiver` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_download_file`
--

LOCK TABLES `fts_download_file` WRITE;
/*!40000 ALTER TABLE `fts_download_file` DISABLE KEYS */;
INSERT INTO `fts_download_file` VALUES (38,9,'系统总体流程图.png','D:\\PROJECTS\\文件\\服务器\\下载\\系统总体流程图.png',9,0,0,190431,'123','2018-12-01 17:09:22','2018-12-02 23:43:12','2018-12-02 22:40:19',11,1,0,0,0,0,'123,456','222,111,4321'),(39,9,'短消息.txt','D:\\PROJECTS\\文件\\服务器\\下载\\短消息.txt',9,0,1,41,'123',NULL,'2018-12-03 00:35:51','2018-12-03 00:35:52',17,1,0,0,0,0,'123,456','222,111,4321');
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
INSERT INTO `fts_file_type` VALUES (16,'视频'),(17,'二进制'),(18,'图片');
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
) ENGINE=MyISAM AUTO_INCREMENT=9160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fts_upload_file`
--

LOCK TABLES `fts_upload_file` WRITE;
/*!40000 ALTER TABLE `fts_upload_file` DISABLE KEYS */;
INSERT INTO `fts_upload_file` VALUES (9157,9,'PDF12.exe','信号\\PDF12.exe','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\PDF12.exe',1,9,65,'2018-12-04 17:20:01','2018-12-04 17:20:25','2018-12-04 17:20:30',1,65939296,62515552,1,12,0,0,0,0,0),(9158,9,'PDF13.exe','信号\\PDF13.exe','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\PDF13.exe',1,9,65,'2018-12-04 17:20:30','2018-12-04 17:20:54','2018-12-04 17:21:01',1,65939296,62515552,1,12,0,0,0,0,0),(9159,9,'[国家宝藏]千年古琴再被奏响10.mp4','信号\\[国家宝藏]千年古琴再被奏响10.mp4','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\[国家宝藏]千年古琴再被奏响10.mp4',1,0,1504,'2018-12-04 17:21:09','2018-12-04 17:32:06','2018-12-04 17:32:32',20,17592320,16122295,4,12,0,0,0,0,0),(9153,9,'增量文件20.txt','信号\\增量文件20.txt','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\增量文件20.txt',1,9,0,'2018-12-04 17:18:38','2018-12-04 17:18:40','2018-12-04 17:18:41',1,14,35,1,12,0,0,0,0,0),(9154,9,'PDF10.exe','信号\\PDF10.exe','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\PDF10.exe',1,9,65,'2018-12-04 17:18:55','2018-12-04 17:19:13','2018-12-04 17:19:21',1,65939296,62515552,1,12,0,0,0,0,0),(9155,9,'T119.exe','信号\\T119.exe','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\T119.exe',1,9,20,'2018-12-04 17:19:21','2018-12-04 17:19:28','2018-12-04 17:19:35',1,20689928,20418030,1,12,0,0,0,0,0),(9156,9,'PDF11.exe','信号\\PDF11.exe','D:\\PROJECTS\\文件\\服务器\\上传\\ZD01\\信号\\PDF11.exe',1,9,65,'2018-12-04 17:19:35','2018-12-04 17:19:54','2018-12-04 17:20:01',1,65939296,62515552,1,12,0,0,0,0,0);
/*!40000 ALTER TABLE `fts_upload_file` ENABLE KEYS */;
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
INSERT INTO `oauth_client` VALUES ('7e81a2ff25586615b7e1ddff1c5b08ed','975f0c15135acc1cb5e5b42206e6b435','AWW Android Client',NULL,'password,refresh_token',NULL,1,NULL,'2017-01-17 01:25:01'),('7854f0c61e9b473e300ec19ee1957b52','e88cb8a369bb9cdff355d89884b6b5ff','AWW IOS Client',NULL,'password,refresh_token',NULL,1,NULL,'2017-01-17 01:26:48'),('3c1c5dfc9a9c5724c4d5dffe5c963a87','02a223e9b8e704dbc537447f16ea89a9','AWW Android Management','','password,refresh_token','',1,'','2017-07-04 01:31:29');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
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
INSERT INTO `sys_menu` VALUES (1,NULL,'0001','终端状态','/admin/client',1,'','fa fa-train','1','',1,'2017-02-16 14:34:57',1,'2017-11-21 15:01:45'),(2,NULL,'0002','接收数据','',2,'','fa fa-cloud-upload','1','',1,'2017-11-10 09:25:51',1,'2017-11-10 11:21:59'),(3,NULL,'0003','发送数据','',3,'','fa fa-cloud-download','1','',1,'2017-11-01 15:22:37',1,'2017-11-10 11:21:13'),(4,NULL,'0004','数据统计','',4,'','fa fa-line-chart','1','',1,NULL,1,'2017-11-21 15:04:14'),(5,NULL,'0005','业务管理','',5,'','fa fa-book','1','',1,'2017-11-21 14:16:32',1,'2017-11-21 15:04:51'),(6,NULL,'0006','系统管理','',6,'','fa fa-cogs','1','',1,'2017-02-16 14:35:30',1,'2017-02-17 09:53:01'),(7,NULL,'0007','系统监控','/monitor',7,'','fa  fa-user-secret','1','monitor:*',1,'2017-07-06 15:55:37',1,'2017-11-10 11:26:32'),(8,6,'00060008','用户管理','/admin/sys/user',1,'','fa fa-user','1','user:*',1,'2017-02-16 14:40:52',1,'2017-02-16 14:40:52'),(9,6,'00060009','角色管理','/admin/sys/role',2,'','fa fa-user-plus','1','role:*',1,'2017-02-16 14:40:52',1,'2017-02-17 09:53:58'),(10,6,'00060010','菜单管理','/admin/sys/menu',3,'','fa fa-list','1','menu:*',1,'2017-02-16 14:41:43',1,'2017-02-17 10:24:35'),(11,6,'00060011','日志管理','/admin/sys/log',4,'','fa fa-database','1','log:*',1,'2017-02-16 14:42:38',1,'2017-02-17 09:54:15'),(12,6,'00060012','系统参数','/admin/sys/param',5,'','fa fa-cog','1','param:*',1,'2017-02-16 14:43:00',1,'2017-02-17 09:54:21'),(13,2,'00020013','接收列表','/admin/transfer/upload_file',1,'','fa fa-cloud-upload','1','upload_file:*',1,'2017-10-31 16:59:49',1,'2017-11-10 11:18:07'),(14,3,'00030014','发送列表','/admin/transfer/download_file',1,'','fa fa-cloud-download','1','download_file:*,upload:*',1,'2017-11-01 15:01:25',1,'2017-11-10 11:18:17'),(15,2,'00020015','历史数据','/admin/history/upload_file',2,'','fa  fa-cloud-upload','1','history_upload:*',1,'2017-11-01 15:22:47',1,'2017-11-24 10:15:52'),(16,3,'00030016','历史数据','/admin/history/download_file',2,'','fa  fa-cloud-download','1','history_download:*',1,'2017-11-07 18:19:43',1,'2017-11-24 10:15:42'),(17,5,'00050017','终端管理','/admin/transfer/client',1,'','fa fa-train','1','client:*',1,'2017-10-31 16:59:05',1,'2017-11-10 11:19:19'),(18,5,'00050018','传输配置','/admin/transfer/config',2,'','fa fa-sort-amount-asc','1','config:*',1,'2017-11-09 14:05:09',1,'2017-11-23 15:15:12'),(19,4,'00040019','接收数据统计','/admin/statistics/upload_file',1,'','fa fa-file-text','1','statistics_upload_file:*',1,'2017-11-27 10:02:20',1,'2017-11-29 12:51:21'),(20,4,'00040020','接收数据量统计','/admin/statistics/upload_traffic',2,'','fa fa-circle-o','1','statistics_upload_traffic:*',1,'2017-11-29 09:02:00',1,'2017-11-29 13:08:24'),(21,4,'00040021','发送数据统计','/admin/statistics/download_file',3,'','fa fa-circle-o','1','statistics_download_file:*',1,'2017-11-29 13:09:47',1,'2017-11-29 13:09:47'),(22,4,'00040022','发送数据量统计','/admin/statistics/download_traffic',4,'','fa fa-circle-o','1','statistics_download_traffic:*',1,'2017-11-29 13:10:36',1,'2017-11-29 13:10:36');
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
INSERT INTO `sys_param` VALUES ('port','11028'),('upload_dir','D:\\PROJECTS\\文件\\服务器\\上传'),('download_dir','D:\\PROJECTS\\文件\\服务器\\下载'),('temp_dir','D:\\PROJECTS\\文件\\服务器\\临时'),('backup_dir','D:\\PROJECTS\\文件\\服务器\\备份'),('ignored_extensions','_tmp');
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
INSERT INTO `sys_role` VALUES (1,'普通用户',1,'2017-02-22 10:26:17',1,'2017-02-22 10:26:17'),(2,'超级管理员',1,'2016-02-22 16:47:16',1,'2016-02-23 15:13:04'),(3,'系统管理员',1,'2016-02-22 16:47:16',1,'2016-02-23 15:13:04');
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
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22);
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
INSERT INTO `sys_user` VALUES (1,'e10adc3949ba59abbe56e057f20f883e','admin','18691822869',NULL,NULL,'0:0:0:0:0:0:0:1','2018-12-01 10:01:13','1',1,'2017-01-12 10:26:46',1,'2017-11-29 15:28:07','0',NULL);
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
INSERT INTO `sys_user_role` VALUES (1,2);
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

-- Dump completed on 2018-12-04 21:11:23
