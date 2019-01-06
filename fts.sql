/*
Navicat MySQL Data Transfer

Source Server         : Server
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : fts

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-01-06 11:54:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fts_bussiness
-- ----------------------------
DROP TABLE IF EXISTS `fts_bussiness`;
CREATE TABLE `fts_bussiness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fts_bussiness
-- ----------------------------
INSERT INTO `fts_bussiness` VALUES ('12', '信号');

-- ----------------------------
-- Table structure for fts_client
-- ----------------------------
DROP TABLE IF EXISTS `fts_client`;
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fts_client
-- ----------------------------
INSERT INTO `fts_client` VALUES ('9', 'WIN_ZJW', 'ZD01', '94B86DAE0100', 'WIN_ZJW', '1', 'WXCS', '2018-11-01 15:30:00', null, null);
INSERT INTO `fts_client` VALUES ('10', 'MAC_ZJW', 'MAC_ZJW_DIR', '7A31C1C319E6', '', '1', 'WXCS', '2018-12-20 08:29:37', '0', '0');
INSERT INTO `fts_client` VALUES ('11', 'BJ_02', 'BJ_02_DIR', '00232486C085', '', '1', 'WXCS', '2018-12-19 14:26:13', '0', '0');

-- ----------------------------
-- Table structure for fts_client_bussiness_config
-- ----------------------------
DROP TABLE IF EXISTS `fts_client_bussiness_config`;
CREATE TABLE `fts_client_bussiness_config` (
  `client_id` int(11) NOT NULL,
  `bussiness_id` int(11) NOT NULL,
  `file_type_id` int(11) NOT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`client_id`,`bussiness_id`,`file_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fts_client_bussiness_config
-- ----------------------------

-- ----------------------------
-- Table structure for fts_client_config
-- ----------------------------
DROP TABLE IF EXISTS `fts_client_config`;
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

-- ----------------------------
-- Records of fts_client_config
-- ----------------------------

-- ----------------------------
-- Table structure for fts_download_file
-- ----------------------------
DROP TABLE IF EXISTS `fts_download_file`;
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

-- ----------------------------
-- Records of fts_download_file
-- ----------------------------
INSERT INTO `fts_download_file` VALUES ('38', '9', '系统总体流程图.png', 'D:\\PROJECTS\\文件\\服务器\\下载\\系统总体流程图.png', '9', '0', '0', '190431', '123', '2018-12-01 17:09:22', '2018-12-02 23:43:12', '2018-12-02 22:40:19', '11', '1', '0', '0', '0', '0', '123,456', '222,111,4321');
INSERT INTO `fts_download_file` VALUES ('39', '9', '短消息.txt', 'D:\\PROJECTS\\文件\\服务器\\下载\\短消息.txt', '9', '0', '1', '41', '123', null, '2018-12-03 00:35:51', '2018-12-03 00:35:52', '17', '1', '0', '0', '0', '0', '123,456', '222,111,4321');

-- ----------------------------
-- Table structure for fts_file_type
-- ----------------------------
DROP TABLE IF EXISTS `fts_file_type`;
CREATE TABLE `fts_file_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fts_file_type
-- ----------------------------
INSERT INTO `fts_file_type` VALUES ('16', '视频');
INSERT INTO `fts_file_type` VALUES ('17', '二进制');
INSERT INTO `fts_file_type` VALUES ('18', '图片');

-- ----------------------------
-- Table structure for fts_ip
-- ----------------------------
DROP TABLE IF EXISTS `fts_ip`;
CREATE TABLE `fts_ip` (
  `carrier_operator` tinyint(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `mask` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fts_ip
-- ----------------------------
INSERT INTO `fts_ip` VALUES ('1', '1.0.1.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.0.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.0.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '1.0.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '1.1.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.1.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.1.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '1.1.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '1.1.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '1.1.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '1.2.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.2.5.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.2.6.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.2.9.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.2.10.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.2.12.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '1.2.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '1.2.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '1.2.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '1.3.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '1.4.1.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.4.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.4.5.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.4.6.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.4.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '1.4.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '1.4.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '1.4.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '1.10.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '1.10.8.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '1.10.11.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '1.10.12.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '1.10.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '1.10.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '1.10.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '1.48.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '1.50.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '1.68.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '1.80.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '1.180.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '1.192.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '1.202.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '1.204.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '14.0.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '14.0.12.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '14.1.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '14.16.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '14.102.128.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '14.104.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '14.112.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '14.134.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '14.144.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '14.192.76.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '14.208.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '27.16.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '27.34.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '27.50.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '27.54.72.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '27.54.152.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '27.121.72.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '27.121.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '27.128.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '27.148.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '27.152.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '27.184.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '27.224.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '36.0.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '36.0.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '36.0.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '36.1.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '36.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '36.16.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '36.37.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '36.37.36.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '36.37.39.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '36.37.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '36.37.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '36.40.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '36.48.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '36.56.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '36.96.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '39.0.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '39.0.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '39.0.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '39.0.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '39.0.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '39.0.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '39.0.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '39.0.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '42.0.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.0.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.0.16.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.0.24.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.0.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.1.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.1.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.1.48.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.1.56.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.62.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.62.160.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.62.180.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.62.184.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.80.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '42.83.64.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.83.80.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.83.88.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.83.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.88.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '42.96.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.96.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.96.108.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.96.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.97.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '42.99.0.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '42.99.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.99.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.99.112.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.99.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.100.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '42.122.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '42.123.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.123.36.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.123.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.123.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.123.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '42.156.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.156.36.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.156.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.156.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.156.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '42.184.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '42.187.0.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '42.187.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.187.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.187.112.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.187.120.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.194.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '42.194.8.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '42.194.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '42.194.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '42.194.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '42.202.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '42.242.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '42.248.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '43.242.192.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '43.243.232.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '49.64.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '49.112.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '49.128.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '49.128.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '58.32.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '58.40.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '58.42.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '58.43.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '58.44.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '58.48.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '58.56.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '58.58.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '58.59.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '58.59.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '58.60.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '58.65.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '58.208.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '59.32.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '59.40.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '59.42.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '59.43.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '59.44.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '59.48.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '59.49.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '59.49.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '59.50.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '59.51.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '59.51.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '59.52.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '59.56.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '59.60.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '59.62.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '59.172.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '59.174.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '60.160.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '60.162.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '60.164.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '60.166.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '60.168.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '60.176.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '60.235.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.4.84.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '61.4.88.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '61.45.224.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '61.128.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '61.130.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '61.132.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.133.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.134.0.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '61.134.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '61.136.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.137.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.138.192.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '61.139.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.139.192.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '61.140.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '61.144.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '61.150.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '61.152.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.153.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.154.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '61.157.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.159.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '61.159.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.160.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.161.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '61.164.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.165.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.166.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.169.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.170.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '61.172.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '61.177.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.178.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.180.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.183.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.184.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '61.188.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '61.189.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '61.190.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '101.0.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.1.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.2.172.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.50.56.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.53.100.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.55.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.78.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.80.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '101.96.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.96.8.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.96.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.99.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.101.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.101.100.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '101.101.102.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '101.101.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.101.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.102.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.102.100.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '101.102.102.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '101.102.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.102.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.110.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.110.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.110.116.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.110.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.128.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.128.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.128.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.128.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.203.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.203.160.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.203.172.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.203.176.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.224.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '101.234.64.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.234.76.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.234.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.234.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '101.248.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '101.251.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '101.251.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '101.251.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '101.251.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '103.12.68.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.8.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.12.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.16.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.20.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.24.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.28.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.32.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.36.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.40.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.44.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.48.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.52.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.56.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.60.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.64.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.68.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.72.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.76.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.80.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.84.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.88.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.100.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.104.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.108.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.112.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.116.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.120.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.22.124.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.29.128.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.38.76.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '103.254.188.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '106.0.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '106.0.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '106.0.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '106.0.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '106.0.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '106.0.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '106.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '106.8.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '106.16.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '106.32.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '106.56.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '106.80.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '106.108.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '106.112.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '106.120.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '106.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '110.76.156.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '110.76.184.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '110.80.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '110.88.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '110.93.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '110.94.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '110.152.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '110.156.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '110.166.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '110.173.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '110.176.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '110.184.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '111.72.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '111.112.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '111.120.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '111.124.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '111.126.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '111.170.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '111.172.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '111.176.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '111.224.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '111.235.156.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '112.66.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '112.98.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '112.100.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '112.112.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '112.116.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '112.137.48.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '113.12.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '113.16.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '113.24.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '113.59.224.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '113.62.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '113.64.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '113.96.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '113.112.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '113.120.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '113.128.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '113.132.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '113.136.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '113.208.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '113.209.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '113.212.184.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '113.218.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '113.220.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '113.240.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '113.248.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '114.79.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '114.80.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '114.96.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '114.104.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '114.135.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '114.138.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '114.141.64.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '114.198.248.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '114.216.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '114.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '115.69.64.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '115.148.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '115.152.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '115.166.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '115.168.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '115.192.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '115.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '116.0.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '116.0.24.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '116.1.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '116.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '116.8.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '116.16.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '116.50.0.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '116.52.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '116.192.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '116.193.176.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '116.207.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '116.208.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '116.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '116.246.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '116.248.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '116.252.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '117.21.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '117.22.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '117.24.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '117.32.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '117.40.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '117.44.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '117.57.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '117.60.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '117.64.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '117.74.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '117.80.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '117.103.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '117.103.72.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '117.104.168.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '117.122.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '118.84.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '118.102.32.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '118.112.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '118.120.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '118.124.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '118.127.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '118.180.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '118.184.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '118.213.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '118.239.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '118.248.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '119.0.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '119.27.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '119.41.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '119.42.128.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '119.60.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '119.82.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '119.84.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '119.96.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '119.120.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '119.128.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '119.144.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '119.148.176.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '119.151.192.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '119.160.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '119.252.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '120.32.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '120.40.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '120.68.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '120.88.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '120.143.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '121.0.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '121.8.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '121.32.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '121.50.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '121.54.176.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '121.56.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '121.58.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '121.58.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '121.58.160.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '121.59.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '121.60.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '121.101.0.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '121.200.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '121.204.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '121.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '122.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '122.102.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '122.128.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '122.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '122.240.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '122.248.24.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '122.255.64.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '123.50.160.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '123.52.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '123.96.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '123.101.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '123.103.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '123.149.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '123.150.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '123.160.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '123.164.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '123.168.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '123.172.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '123.174.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '123.177.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '123.178.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '123.180.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '123.184.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '123.244.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '124.31.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.40.192.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '124.72.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.73.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.74.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.76.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '124.109.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '124.112.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.114.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.116.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.117.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.118.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.224.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.225.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '124.226.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.228.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '124.232.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.234.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '124.236.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '125.64.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '125.72.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '125.73.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '125.74.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '125.76.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '125.76.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '125.77.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '125.78.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '125.80.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '125.88.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '125.104.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '125.112.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '125.208.0.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '139.189.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '139.200.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '140.75.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.224.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.237.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.240.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.243.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.246.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.249.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.250.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '140.255.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '144.0.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '144.7.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '144.12.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '144.52.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '144.123.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '144.255.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '150.0.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '150.115.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '150.121.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '150.122.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '150.138.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '150.223.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '153.118.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '163.53.220.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '171.8.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '171.40.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '171.80.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '171.88.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '171.104.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '171.112.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '171.208.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '175.0.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '175.30.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '180.96.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '180.136.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '180.148.16.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '180.148.152.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '180.148.216.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '180.149.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '180.152.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '180.160.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '180.212.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '182.23.184.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '182.23.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '182.32.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '182.84.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '182.96.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '182.128.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '182.144.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '182.200.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '182.240.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '183.0.0.0', '10');
INSERT INTO `fts_ip` VALUES ('1', '183.64.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '183.78.180.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '183.91.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '183.128.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '183.160.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '202.0.100.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.0.122.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.0.176.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.3.128.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.6.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.66.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.72.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.6.88.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.92.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.103.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.6.108.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.6.110.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.6.114.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.6.176.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.8.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.8.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.8.4.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.8.12.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.8.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.8.77.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.8.192.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.9.32.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.9.34.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.9.48.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.9.51.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.9.52.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.9.54.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.9.57.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.9.58.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.12.1.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.2.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.17.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.72.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.84.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.12.96.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.98.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.12.106.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.111.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.12.116.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.64.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.69.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.74.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.76.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.78.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.88.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.97.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.104.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.108.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.111.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.114.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.118.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.124.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.127.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.135.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.136.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.149.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.151.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.157.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.158.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.169.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.170.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.176.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.184.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.208.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.213.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.219.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.220.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.222.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.225.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.226.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.14.231.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.239.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.246.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.14.251.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.66.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.79.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.88.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.20.90.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.94.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.20.114.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.117.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.120.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.125.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.20.127.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.132.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.141.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.142.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.147.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.148.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.150.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.21.152.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.21.154.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.21.156.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.27.136.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.38.130.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.136.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.142.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.149.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.38.150.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.154.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.156.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.38.158.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.168.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.38.170.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.4.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.40.7.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.15.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.135.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.136.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.140.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.143.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.144.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.40.150.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.155.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.156.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.40.158.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.40.162.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.41.8.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.41.11.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.41.12.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.41.128.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.41.130.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.41.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.44.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.44.67.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.44.74.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.44.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.44.132.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.44.146.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.45.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.45.2.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.45.15.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.45.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.46.16.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.46.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.46.20.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.46.128.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.47.82.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.47.126.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.47.128.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.47.130.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.57.240.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.58.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.59.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.59.212.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.59.236.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.60.48.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.60.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.60.132.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.60.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.60.144.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.62.112.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.62.248.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.62.252.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.62.255.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.63.81.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.63.82.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.63.84.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.63.88.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.65.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.65.8.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.67.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.70.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.70.192.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.72.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.72.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.73.128.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.74.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.74.254.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.75.252.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.76.252.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.77.80.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.77.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.78.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.79.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.79.248.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.80.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.80.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.81.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.83.252.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.84.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.84.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.84.24.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.86.249.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.86.252.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.87.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.89.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.90.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.90.196.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.91.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.91.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.92.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.92.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.92.252.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.94.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.95.240.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.96.128.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.144.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.96.160.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.168.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.176.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.96.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.96.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.96.240.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.97.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.97.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.97.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.97.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.97.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.97.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.97.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.98.32.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.40.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.98.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.98.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.98.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.98.160.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.168.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.176.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.98.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.98.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.98.240.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.100.64.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.72.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.128.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.144.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.160.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.168.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.176.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.100.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.100.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.101.0.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '202.101.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.101.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.101.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.102.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.102.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.102.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '202.102.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.102.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.102.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.103.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.103.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.103.16.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.103.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.103.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.103.96.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.103.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.103.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.103.128.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '202.103.192.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.103.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.103.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.103.240.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.104.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '202.107.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '202.109.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '202.110.128.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '202.111.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '202.111.192.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '202.122.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.122.132.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.124.16.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.124.24.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.125.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.127.128.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.127.194.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.127.196.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.127.212.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.133.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.134.58.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.134.128.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.137.231.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.143.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.143.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.143.56.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.146.160.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.146.188.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.146.196.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.146.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.147.144.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.148.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.148.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.149.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.150.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.150.56.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.150.192.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.150.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.151.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.151.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.153.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.157.192.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.162.67.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.162.75.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.164.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.165.239.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.165.240.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '202.165.243.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.165.245.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.165.251.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.165.252.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.166.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.170.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.171.216.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.171.235.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.172.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.173.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.173.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.174.64.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.176.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.180.208.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.182.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '202.182.192.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '202.189.184.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.191.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '202.191.68.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '202.191.72.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '202.191.80.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.0.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.0.10.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.42.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.45.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.46.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.81.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.82.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.90.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.96.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.0.114.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.122.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.128.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.130.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.132.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.0.137.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.142.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.144.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.146.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.148.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.150.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.0.152.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.177.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.0.224.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.4.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.1.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.26.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.1.65.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.66.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.1.70.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.1.76.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.1.90.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.97.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.98.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.1.100.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.1.108.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.253.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.1.254.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.2.64.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.2.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.2.112.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.2.126.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.2.140.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.2.150.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.2.152.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.2.156.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.2.160.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.2.180.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.2.196.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.2.209.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.2.214.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.2.226.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.2.229.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.2.236.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.3.68.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.72.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.3.75.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.80.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.3.96.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.3.105.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.112.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.3.120.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.123.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.135.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.139.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.3.143.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.132.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.4.134.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.151.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.152.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.4.174.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.4.180.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.186.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.205.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.208.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.4.227.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.4.230.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.4.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.7.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.8.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.11.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.21.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.22.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.44.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.46.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.52.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.5.56.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.60.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.114.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.118.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.120.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.172.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.180.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.182.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.185.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.186.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.188.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.190.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.195.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.5.214.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.5.218.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.6.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.6.136.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.6.138.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.6.142.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.6.150.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.6.157.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.6.159.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.6.224.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.6.248.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.7.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.7.138.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.7.147.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.7.150.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.7.158.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.7.192.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.7.200.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.8.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.23.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.24.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.8.70.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.82.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.86.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.91.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.110.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.115.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.166.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.169.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.173.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.184.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.186.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.190.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.197.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.198.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.203.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.209.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.210.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.8.212.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.8.217.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.8.220.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.32.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.36.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.9.57.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.63.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.65.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.70.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.9.72.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.75.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.76.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.9.96.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.9.100.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.9.108.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.9.158.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.10.34.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.10.56.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.10.74.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.10.84.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.10.88.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.10.95.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.10.125.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.70.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.76.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.11.82.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.84.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.11.100.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.11.109.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.117.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.122.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.126.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.136.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.11.141.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.11.142.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.11.180.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.11.208.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.12.16.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.19.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.57.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.65.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.66.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.70.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.12.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.88.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.12.100.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.12.103.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.114.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.118.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.130.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.137.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.196.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.12.200.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.12.211.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.219.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.226.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.12.240.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.13.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.13.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.13.44.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.13.80.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.13.88.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.13.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.13.173.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.13.224.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.13.227.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.13.233.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.24.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.14.33.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.56.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.61.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.62.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.104.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.114.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.14.118.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.162.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.184.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.14.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.194.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.14.214.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.231.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.14.246.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.0.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.15.20.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.15.22.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.88.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.15.105.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.112.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.15.130.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.15.149.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.151.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.156.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.15.174.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.227.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.15.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.15.240.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.15.246.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.10.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.12.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.16.16.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.16.27.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.38.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.49.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.50.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.16.58.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.133.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.161.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.162.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.186.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.16.228.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.238.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.240.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.16.245.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.2.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.28.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.39.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.56.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.74.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.17.88.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.17.136.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.164.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.190.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.17.231.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.233.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.248.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.17.255.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.18.4.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.7.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.31.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.37.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.48.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.18.52.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.72.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.18.80.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.18.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.100.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.18.105.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.107.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.110.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.132.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.18.144.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.153.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.199.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.208.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.211.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.18.215.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.30.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.32.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.19.41.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.44.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.19.46.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.58.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.60.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.19.64.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.68.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.72.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.101.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.111.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.133.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.144.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.149.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.156.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.176.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.178.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.19.208.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.228.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.19.233.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.242.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.19.248.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.19.255.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.17.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.40.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.20.48.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.61.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.65.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.84.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.20.89.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.106.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.20.115.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.117.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.118.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.20.122.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.126.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.20.135.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.20.150.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.230.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.232.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.20.236.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.21.2.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.8.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.10.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.33.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.34.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.41.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.44.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.68.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.82.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.96.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.21.124.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.136.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.21.145.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.21.206.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.28.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.22.31.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.68.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.76.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.78.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.84.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.22.99.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.106.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.122.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.22.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.163.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.166.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.170.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.176.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.22.194.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.242.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.22.245.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.246.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.22.252.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.23.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.47.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.61.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.62.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.23.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.85.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.23.98.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.107.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.112.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.130.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.140.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.23.172.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.182.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.186.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.23.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.197.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.198.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.204.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.23.224.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.226.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.23.228.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.23.249.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.23.251.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.13.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.18.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.27.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.43.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.56.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.58.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.67.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.74.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.79.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.80.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.24.84.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.24.86.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.90.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.111.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.112.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.116.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.122.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.24.145.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.152.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.24.157.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.161.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.167.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.186.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.24.199.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.202.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.212.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.24.217.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.219.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.24.244.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.19.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.20.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.25.46.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.48.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.25.64.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.25.91.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.99.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.100.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.106.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.135.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.138.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.147.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.153.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.154.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.25.164.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.166.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.174.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.25.180.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.182.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.191.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.199.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.200.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.202.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.25.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.25.229.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.235.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.236.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.25.242.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.12.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.34.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.49.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.50.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.55.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.56.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.26.60.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.65.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.68.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.76.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.80.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.84.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.97.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.102.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.26.115.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.116.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.143.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.144.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.148.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.26.154.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.158.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.26.170.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.173.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.176.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.185.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.202.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.26.210.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.214.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.222.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.224.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.228.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.26.232.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.0.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.10.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.15.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.16.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.20.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.22.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.27.40.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.45.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.53.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.65.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.66.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.81.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.88.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.102.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.109.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.117.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.121.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.122.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.27.125.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.200.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.202.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.233.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.241.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.27.250.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.10.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.12.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.33.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.34.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.28.43.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.44.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.54.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.56.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.74.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.76.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.86.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.88.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.112.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.136.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.140.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.145.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.165.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.169.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.170.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.178.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.28.185.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.196.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.28.226.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.28.239.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.2.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.8.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.29.13.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.14.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.28.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.46.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.57.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.61.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.63.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.69.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.81.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.90.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.95.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.100.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.103.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.112.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.120.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.29.182.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.29.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.189.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.190.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.205.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.210.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.217.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.227.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.231.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.233.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.234.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.248.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.29.254.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.30.16.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.30.25.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.27.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.29.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.66.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.81.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.87.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.111.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.121.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.123.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.152.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.156.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.162.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.173.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.175.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.194.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.217.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.220.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.222.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.232.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.30.235.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.240.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.30.246.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.30.250.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.31.45.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.46.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.49.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.51.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.54.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.31.69.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.72.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.80.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.85.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.97.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.105.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.106.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.108.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.31.124.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.162.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.174.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.177.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.181.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.189.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.204.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.220.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.222.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.31.225.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.229.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.31.248.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.31.253.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.20.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.48.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.32.56.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.60.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.62.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.68.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.32.76.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.81.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.84.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.32.95.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.102.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.105.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.130.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.133.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.140.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.152.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.186.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.32.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.196.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.203.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.32.204.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.32.212.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.4.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.7.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.33.21.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.26.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.32.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.63.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.64.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.67.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.68.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.79.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.100.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.122.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.145.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.156.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.158.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.33.174.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.185.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.200.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.202.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.33.204.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.206.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.33.214.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.33.224.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.33.226.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.233.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.243.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.33.250.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.4.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.21.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.27.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.39.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.48.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.34.54.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.56.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.34.67.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.69.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.76.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.92.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.106.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.113.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.147.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.150.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.152.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.34.161.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.162.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.192.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.34.204.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.34.232.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.240.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.242.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.245.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.34.251.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.2.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.55.4.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.10.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.13.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.22.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.30.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.93.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.101.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.109.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.110.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.116.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.55.119.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.128.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.55.146.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.55.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.196.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.218.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.55.221.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.55.224.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.1.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.4.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.12.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.24.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.38.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.40.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.46.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.48.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.56.68.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.56.82.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.56.84.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.56.95.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.110.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.121.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.161.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.169.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.172.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.56.175.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.183.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.185.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.187.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.192.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.198.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.201.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.208.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.56.210.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.214.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.216.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.227.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.228.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.232.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.240.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.252.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.56.254.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.5.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.6.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.12.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.57.28.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.39.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.46.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.58.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.61.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.66.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.69.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.70.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.57.73.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.90.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.101.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.109.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.123.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.157.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.200.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.202.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.206.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.222.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.224.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.57.246.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.57.249.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.253.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.57.254.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.62.2.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.62.131.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.62.139.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.62.161.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.62.197.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.62.228.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.62.234.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.62.246.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.76.160.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.76.168.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.77.180.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.78.48.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.80.4.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.80.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.80.57.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.80.132.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.80.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.81.0.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.82.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.82.16.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.83.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.83.224.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.86.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.86.254.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.89.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.89.136.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.90.8.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.92.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.95.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.99.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.100.48.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.100.63.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.104.32.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.105.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.105.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.110.208.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.110.232.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.110.234.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.118.241.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.119.113.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.119.114.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.119.116.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.119.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.128.224.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.129.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.130.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.142.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.144.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.145.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.148.80.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.148.86.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.149.92.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.152.128.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.153.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.160.104.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.160.129.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.160.192.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.161.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.168.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.170.58.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.171.0.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.174.4.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.176.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.189.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.189.6.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.189.112.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.189.192.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.190.249.0', '24');
INSERT INTO `fts_ip` VALUES ('1', '203.191.0.0', '23');
INSERT INTO `fts_ip` VALUES ('1', '203.193.224.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.194.120.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.195.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.195.112.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.196.8.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.202.236.0', '22');
INSERT INTO `fts_ip` VALUES ('1', '203.205.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '203.212.0.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '203.215.232.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '203.223.16.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '210.5.56.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '210.75.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '210.77.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '210.192.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '211.100.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '211.154.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.0.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.1.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.2.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.4.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.6.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.13.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.14.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.16.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '218.20.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.21.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '218.22.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.30.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.62.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '218.63.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.64.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.66.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '218.67.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '218.70.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.72.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '218.76.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.78.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '218.80.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '218.84.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '218.88.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '218.100.88.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '218.100.96.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '218.100.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '218.185.240.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '219.128.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '219.144.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '219.148.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '219.149.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '219.149.128.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '219.149.192.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '219.150.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '219.150.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '219.150.64.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '219.150.96.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '219.150.112.0', '20');
INSERT INTO `fts_ip` VALUES ('1', '219.150.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '219.151.0.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '219.151.32.0', '19');
INSERT INTO `fts_ip` VALUES ('1', '219.151.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '219.151.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '219.152.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '219.159.64.0', '18');
INSERT INTO `fts_ip` VALUES ('1', '219.159.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '220.160.0.0', '11');
INSERT INTO `fts_ip` VALUES ('1', '220.247.136.0', '21');
INSERT INTO `fts_ip` VALUES ('1', '221.224.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '221.232.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '221.236.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '221.238.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '221.239.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '221.239.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.64.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '222.72.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.74.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.75.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.76.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '222.80.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.82.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.83.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.83.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.84.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.85.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.85.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.86.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.88.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.90.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.92.0.0', '14');
INSERT INTO `fts_ip` VALUES ('1', '222.168.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.170.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.172.0.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.172.128.0', '17');
INSERT INTO `fts_ip` VALUES ('1', '222.173.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.174.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.176.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '222.184.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '222.208.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '222.216.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.218.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.219.0.0', '16');
INSERT INTO `fts_ip` VALUES ('1', '222.220.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.222.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '222.240.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '223.8.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '223.144.0.0', '12');
INSERT INTO `fts_ip` VALUES ('1', '223.198.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '223.214.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '223.220.0.0', '15');
INSERT INTO `fts_ip` VALUES ('1', '223.240.0.0', '13');
INSERT INTO `fts_ip` VALUES ('1', '223.255.252.0', '23');
INSERT INTO `fts_ip` VALUES ('2', '1.24.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '1.56.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '1.188.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '14.204.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '27.8.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '27.36.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '27.40.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '27.50.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '27.54.192.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '27.98.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '27.112.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '27.115.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '27.192.0.0', '11');
INSERT INTO `fts_ip` VALUES ('2', '36.32.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '36.248.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '39.64.0.0', '11');
INSERT INTO `fts_ip` VALUES ('2', '42.1.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '42.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '42.48.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '42.51.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '42.52.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '42.56.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '42.63.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '42.84.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '42.157.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '42.176.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '42.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '43.224.12.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.224.24.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.224.52.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.224.160.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.224.208.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.226.116.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.226.120.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.226.160.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.229.236.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.240.0.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.240.132.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.240.204.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.241.48.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.241.92.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.241.184.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.242.148.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.242.152.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.242.156.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.242.164.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.242.180.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.4.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.16.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.88.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.128.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.156.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.180.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.243.228.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.247.88.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.247.212.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.247.216.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.248.4.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.248.20.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.248.48.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.248.108.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.248.148.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.248.244.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.249.4.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.249.136.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.249.236.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.4.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.96.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.112.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.128.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.144.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.168.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.200.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.212.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.250.244.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.251.4.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.251.36.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.251.232.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.254.44.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.254.52.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.254.104.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.254.116.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.254.144.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.254.148.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '43.255.204.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.112.228.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.112.232.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.113.24.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.113.240.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.113.252.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.115.144.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.115.200.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.117.124.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.121.96.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.124.20.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.124.68.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '45.126.108.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '58.16.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '58.17.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '58.17.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '58.18.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '58.19.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '58.20.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '58.21.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '58.22.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.24.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.30.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.144.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '58.240.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.242.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.244.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.246.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '58.248.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '60.0.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '60.8.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '60.10.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.11.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.12.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.13.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '60.13.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '60.13.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '60.14.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '60.16.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '60.24.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '60.28.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '60.30.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.31.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.63.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.204.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '60.208.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '60.216.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '60.218.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '60.220.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '60.253.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '60.255.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.28.0.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '61.28.16.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '61.28.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '61.28.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.45.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.48.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '61.52.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '61.54.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.55.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.133.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.134.96.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '61.134.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.134.192.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.135.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.136.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.136.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.137.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.138.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.138.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.138.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.139.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.148.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '61.156.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.158.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.158.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.159.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.161.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '61.161.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.162.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.163.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.167.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.168.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.176.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.179.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.180.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.181.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.182.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '61.189.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '61.240.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '101.16.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '101.64.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '101.72.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '101.204.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '101.232.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '103.3.96.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.100.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.104.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.108.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.112.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.116.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.120.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.124.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.132.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.136.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.140.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.148.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.152.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.3.156.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.5.56.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.5.252.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.7.212.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.9.248.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.14.84.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.18.224.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.21.116.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.22.188.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.25.40.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.27.4.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.27.240.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.28.204.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.31.200.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.36.208.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.37.44.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.37.100.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.38.32.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.38.40.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.39.88.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.40.192.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.40.212.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.43.192.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.45.168.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.45.224.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.52.96.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.52.100.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.52.176.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.53.204.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.55.172.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.55.228.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.56.60.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.57.196.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.61.176.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.192.132.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.192.188.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.203.140.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.204.72.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.227.120.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.229.148.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.229.212.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.230.196.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.230.236.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.233.228.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.234.244.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.236.240.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.238.28.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.238.32.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.238.144.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.239.244.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.240.36.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.240.72.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.240.84.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.240.124.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.240.172.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.246.8.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.246.152.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.248.100.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.32.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.104.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.124.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.180.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.192.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.216.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.250.248.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.251.32.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.251.96.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.251.124.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.251.160.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.251.240.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '103.255.200.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '110.6.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '110.16.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '110.52.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '110.72.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '110.228.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '110.232.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '110.236.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '110.240.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '111.85.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '111.160.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '111.192.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '111.228.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '112.64.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '112.80.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '112.88.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '112.96.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '112.109.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '112.111.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '112.122.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '112.132.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '112.192.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '112.224.0.0', '11');
INSERT INTO `fts_ip` VALUES ('2', '113.0.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '113.8.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '113.18.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '113.56.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '113.58.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '113.59.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '113.194.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '113.200.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '113.204.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '113.213.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '113.224.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '114.54.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '114.60.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '114.118.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '114.119.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '114.240.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '115.46.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '115.48.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '115.85.192.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '115.172.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '116.2.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '116.60.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '116.70.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '116.95.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '116.112.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '116.116.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '116.194.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '116.199.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '116.199.128.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '116.214.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '116.216.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '116.242.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '116.244.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '116.254.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '116.255.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '117.8.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '117.74.64.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '117.75.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '117.76.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '117.100.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '117.120.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '117.121.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '118.72.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '118.80.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '118.88.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '118.88.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '118.88.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '118.102.16.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '118.132.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '118.144.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '118.191.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '118.192.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '118.193.0.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '118.212.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '118.224.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '118.244.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '119.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '119.27.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '119.32.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '119.36.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '119.37.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '119.37.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '119.38.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '119.39.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '119.40.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '119.40.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '119.42.0.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '119.42.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '119.44.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '119.48.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '119.59.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '119.62.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '119.108.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '119.112.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '119.148.160.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '119.162.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '119.164.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '119.176.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '119.232.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '119.248.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '119.252.240.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '120.0.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '120.64.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '120.80.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '120.128.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '120.132.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '121.16.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '121.24.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '121.28.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '121.30.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '121.31.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '121.52.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '121.55.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '121.68.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '121.76.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '121.89.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '121.100.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '121.201.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '122.13.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '122.96.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '122.102.64.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '122.136.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '122.156.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '122.188.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '122.192.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '123.4.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '123.8.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '123.98.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '123.100.0.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '123.112.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '123.128.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '123.138.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '123.144.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '123.148.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '123.152.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '123.176.80.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '123.188.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '123.196.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '123.232.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '123.253.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.6.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '124.20.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.21.0.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '124.21.16.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '124.21.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '124.21.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '124.21.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '124.42.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '124.42.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '124.64.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '124.66.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '124.67.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.68.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '124.88.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.89.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '124.89.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '124.90.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '124.92.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '124.128.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '124.152.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.160.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.161.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.162.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.163.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '124.164.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '124.172.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '124.240.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '124.248.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '125.32.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '125.33.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '125.34.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '125.35.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '125.35.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '125.36.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '125.40.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '125.211.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '139.9.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '139.170.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '139.208.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '139.226.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '140.206.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '150.129.136.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '150.242.152.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '150.255.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '153.0.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '153.3.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '153.34.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '153.36.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '153.99.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '153.101.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.0.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.18.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.61.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.122.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.148.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.156.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '157.255.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '163.0.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '163.53.48.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '163.53.52.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '163.125.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '163.142.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '163.177.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '163.179.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '163.204.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '171.34.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '171.36.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '171.116.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '171.120.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '175.16.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '175.42.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '175.44.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '175.106.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '175.146.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '175.148.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '175.152.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '175.160.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '175.184.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '180.77.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '180.95.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '180.129.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '180.130.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '180.189.148.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '180.223.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '182.54.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '182.88.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '182.112.0.0', '12');
INSERT INTO `fts_ip` VALUES ('2', '182.236.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '183.92.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '183.184.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '202.74.8.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.75.208.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.92.0.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '202.96.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.96.64.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.96.72.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.96.80.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.97.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.97.192.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.97.224.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.97.232.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.97.240.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.98.0.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.98.8.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.98.16.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.99.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.99.64.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.99.96.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.104.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.112.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.99.128.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.99.160.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.168.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.176.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.99.192.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.200.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.208.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.99.224.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.232.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.99.240.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.101.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.102.128.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.102.136.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.102.144.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.102.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.102.224.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.102.232.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '202.102.240.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.106.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '202.107.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '202.108.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '202.110.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.110.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.110.192.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.111.128.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.111.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.115.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.115.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '202.122.128.0', '24');
INSERT INTO `fts_ip` VALUES ('2', '202.127.112.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '202.127.209.0', '24');
INSERT INTO `fts_ip` VALUES ('2', '202.130.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '202.160.140.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '202.170.128.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '203.93.8.0', '24');
INSERT INTO `fts_ip` VALUES ('2', '203.93.9.0', '24');
INSERT INTO `fts_ip` VALUES ('2', '203.93.10.0', '23');
INSERT INTO `fts_ip` VALUES ('2', '203.93.12.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '203.93.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '203.93.136.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '203.93.140.0', '24');
INSERT INTO `fts_ip` VALUES ('2', '203.93.192.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '203.135.96.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '203.135.112.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '203.135.160.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '203.166.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '203.223.0.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '210.5.128.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '210.13.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.13.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.13.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '210.14.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.14.192.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.14.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.15.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.15.96.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.15.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.21.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '210.21.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '210.22.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '210.51.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '210.52.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.52.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.52.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '210.53.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '210.53.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '210.56.192.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.72.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.74.64.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.74.96.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.74.128.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.78.0.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.78.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '210.78.192.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.79.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '210.82.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '211.90.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '211.92.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '211.94.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '211.96.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '211.101.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '211.144.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '218.7.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.8.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '218.10.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.11.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.12.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.21.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '218.24.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '218.26.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.27.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.28.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '218.56.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '218.60.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '218.62.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '218.67.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '218.68.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '218.104.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '218.104.128.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '218.104.160.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '218.104.192.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '218.104.200.0', '21');
INSERT INTO `fts_ip` VALUES ('2', '218.104.208.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '218.104.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '218.105.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '218.106.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '219.154.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '219.156.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '219.158.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '219.158.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '219.159.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '219.232.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '220.152.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '220.192.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '220.194.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '220.196.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '220.200.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '220.231.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '220.234.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '220.248.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '220.252.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.0.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.2.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.3.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.3.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.4.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.5.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.5.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.6.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.7.0.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.7.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.7.64.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.7.96.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.7.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.8.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.10.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.11.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.11.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.11.192.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.11.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.12.0.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.12.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.13.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.13.64.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.13.96.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.13.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.14.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.137.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.192.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.194.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.195.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.196.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.198.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.199.0.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.199.32.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '221.199.48.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '221.199.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.199.128.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.199.192.0', '20');
INSERT INTO `fts_ip` VALUES ('2', '221.199.224.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '221.200.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '221.204.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.206.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.207.0.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.207.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '221.207.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '221.208.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '221.212.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.213.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '221.214.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '221.216.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '222.128.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '222.132.0.0', '14');
INSERT INTO `fts_ip` VALUES ('2', '222.136.0.0', '13');
INSERT INTO `fts_ip` VALUES ('2', '222.160.0.0', '15');
INSERT INTO `fts_ip` VALUES ('2', '222.162.0.0', '16');
INSERT INTO `fts_ip` VALUES ('2', '222.163.0.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '222.163.32.0', '19');
INSERT INTO `fts_ip` VALUES ('2', '222.163.64.0', '18');
INSERT INTO `fts_ip` VALUES ('2', '222.163.128.0', '17');
INSERT INTO `fts_ip` VALUES ('2', '223.27.184.0', '22');
INSERT INTO `fts_ip` VALUES ('2', '223.166.0.0', '15');
INSERT INTO `fts_ip` VALUES ('3', '36.128.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '39.128.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '43.251.244.0', '22');
INSERT INTO `fts_ip` VALUES ('3', '45.121.172.0', '22');
INSERT INTO `fts_ip` VALUES ('3', '45.121.176.0', '22');
INSERT INTO `fts_ip` VALUES ('3', '103.20.112.0', '22');
INSERT INTO `fts_ip` VALUES ('3', '103.21.176.0', '22');
INSERT INTO `fts_ip` VALUES ('3', '103.62.24.0', '22');
INSERT INTO `fts_ip` VALUES ('3', '111.0.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '112.0.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '117.128.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '120.192.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '183.192.0.0', '10');
INSERT INTO `fts_ip` VALUES ('3', '211.103.0.0', '17');
INSERT INTO `fts_ip` VALUES ('3', '211.136.0.0', '14');
INSERT INTO `fts_ip` VALUES ('3', '211.140.0.0', '15');
INSERT INTO `fts_ip` VALUES ('3', '211.142.0.0', '17');
INSERT INTO `fts_ip` VALUES ('3', '211.142.128.0', '17');
INSERT INTO `fts_ip` VALUES ('3', '211.143.0.0', '16');
INSERT INTO `fts_ip` VALUES ('3', '218.200.0.0', '14');
INSERT INTO `fts_ip` VALUES ('3', '218.204.0.0', '15');
INSERT INTO `fts_ip` VALUES ('3', '218.206.0.0', '15');
INSERT INTO `fts_ip` VALUES ('3', '221.130.0.0', '15');
INSERT INTO `fts_ip` VALUES ('3', '221.176.0.0', '13');
INSERT INTO `fts_ip` VALUES ('3', '223.64.0.0', '11');
INSERT INTO `fts_ip` VALUES ('3', '223.96.0.0', '12');
INSERT INTO `fts_ip` VALUES ('3', '223.112.0.0', '14');
INSERT INTO `fts_ip` VALUES ('3', '223.116.0.0', '15');
INSERT INTO `fts_ip` VALUES ('3', '223.120.0.0', '13');

-- ----------------------------
-- Table structure for fts_upload_file
-- ----------------------------
DROP TABLE IF EXISTS `fts_upload_file`;
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
) ENGINE=MyISAM AUTO_INCREMENT=9231 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fts_upload_file
-- ----------------------------
INSERT INTO `fts_upload_file` VALUES ('9220', '10', '[国家宝藏]千年古琴再被奏响13.mp4', '信号\\视频\\2018\\12\\17\\其他\\[国家宝藏]千年古琴再被奏响13.mp4', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\17\\其他\\[国家宝藏]千年古琴再被奏响13.mp4', '1', '0', '-1', '2018-12-18 10:31:04', '2018-12-18 10:31:04', '2018-12-18 10:31:04', '0', '1501670000', '1499695511', '4', '12', '16', null, null, null, null);
INSERT INTO `fts_upload_file` VALUES ('9221', '10', '[国家宝藏]千年古琴再被奏响12.mp4', '信号\\视频\\2018\\12\\17\\其他\\[国家宝藏]千年古琴再被奏响12.mp4', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\17\\其他\\[国家宝藏]千年古琴再被奏响12.mp4', '1', '0', '-1', '2018-12-19 09:27:59', '2018-12-19 09:27:59', '2018-12-19 09:27:59', '0', '940010000', '938248061', '4', '12', '16', null, null, null, null);
INSERT INTO `fts_upload_file` VALUES ('9222', '10', 'CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1-(0.343-472.971)-02.geo', '信号\\二进制\\2018\\12\\18\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1-(0.343-472.971)-02.geo', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\18\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1-(0.343-472.971)-02.geo', '1', '9', '0', '2018-12-19 09:28:05', '2018-12-19 09:28:51', '2018-12-19 09:28:51', '1', '11529', '640', '1', '12', '17', '0', '0', '0', '640');
INSERT INTO `fts_upload_file` VALUES ('9223', '10', 'CHQS-HAERBIN-QIQIHAQR-08122018-102645-0-(12.647-282.448)-01.geo', '信号\\二进制\\2018\\12\\18\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0-(12.647-282.448)-01.geo', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\18\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0-(12.647-282.448)-01.geo', '1', '0', '-1', '2018-12-19 09:28:41', '2018-12-19 09:28:41', '2018-12-19 09:28:41', '0', '224497817', '88669662', '1', '12', '17', null, null, null, null);
INSERT INTO `fts_upload_file` VALUES ('9224', '10', 'CHQX-HAERBIN-QIQIHAQR-08122018-081203-1-(12.647-282.448)-01.geo', '信号\\二进制\\2018\\12\\18\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1-(12.647-282.448)-01.geo', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\18\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1-(12.647-282.448)-01.geo', '1', '0', '-1', '2018-12-19 09:29:15', '2018-12-19 09:29:15', '2018-12-19 09:29:15', '0', '224534425', '88762961', '1', '12', '17', null, null, null, null);
INSERT INTO `fts_upload_file` VALUES ('9225', '11', 'vs2015.com_chs7.iso', '信号\\二进制\\2018\\12\\11\\其他\\vs2015.com_chs7.iso', 'D:\\TIELU\\FILE\\Upload\\信号\\BJ_02_DIR\\2018\\12\\11\\其他\\vs2015.com_chs7.iso', '1', '9', '4013', '2018-12-19 09:52:41', '2018-12-19 12:34:00', '2018-12-19 12:45:33', '1', '4013920256', '3919068720', '1', '12', '17', '433', '7', '85996', '3919068720');
INSERT INTO `fts_upload_file` VALUES ('9226', '11', 'vs2015.com_chs8.iso', '信号\\二进制\\2018\\12\\14\\其他\\vs2015.com_chs8.iso', 'D:\\TIELU\\FILE\\Upload\\信号\\BJ_02_DIR\\2018\\12\\14\\其他\\vs2015.com_chs8.iso', '1', '9', '4013', '2018-12-19 12:26:46', '2018-12-19 21:46:37', '2018-12-19 21:56:09', '1', '4013920256', '3919068720', '1', '12', '17', '113', '5', '1770', '3919068720');
INSERT INTO `fts_upload_file` VALUES ('9227', '10', 'TeamViewer_Setup - 副本.exe', '信号\\二进制\\2018\\12\\19\\其他\\TeamViewer_Setup - 副本.exe', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\19\\其他\\TeamViewer_Setup - 副本.exe', '1', '9', '45', '2018-12-19 21:32:43', '2018-12-19 21:57:16', '2018-12-19 21:57:19', '1', '22542680', '22271890', '1', '12', '17', '14', '4', '223', '22271890');
INSERT INTO `fts_upload_file` VALUES ('9228', '10', 'CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1-(0.343-472.971)-02.geo', '信号\\二进制\\2018\\12\\19\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1-(0.343-472.971)-02.geo', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\19\\长珲客专\\CCHX-CHANGCHUNXI-HUNCHUN-07122018-085117-1-(0.343-472.971)-02.geo', '1', '0', '0', '2018-12-19 22:19:47', '2018-12-19 22:19:49', '2018-12-19 22:19:49', '1', '11529', '640', '1', '12', '17', '8', '8', '8', '640');
INSERT INTO `fts_upload_file` VALUES ('9229', '10', 'CHQS-HAERBIN-QIQIHAQR-08122018-102645-0-(12.647-282.448)-01.geo', '信号\\二进制\\2018\\12\\19\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0-(12.647-282.448)-01.geo', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\19\\哈齐客专\\CHQS-HAERBIN-QIQIHAQR-08122018-102645-0-(12.647-282.448)-01.geo', '1', '9', '225', '2018-12-19 22:21:27', '2018-12-19 22:37:18', '2018-12-19 22:37:27', '2', '224497817', '88669701', '1', '12', '17', '98', '6', '413', '88669701');
INSERT INTO `fts_upload_file` VALUES ('9230', '10', 'CHQX-HAERBIN-QIQIHAQR-08122018-081203-1-(12.647-282.448)-01.geo', '信号\\二进制\\2018\\12\\19\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1-(12.647-282.448)-01.geo', 'D:\\TIELU\\FILE\\Upload\\信号\\MAC_ZJW_DIR\\2018\\12\\19\\哈齐客专\\CHQX-HAERBIN-QIQIHAQR-08122018-081203-1-(12.647-282.448)-01.geo', '1', '9', '225', '2018-12-19 22:37:27', '2018-12-19 22:46:41', '2018-12-19 22:46:50', '2', '224534425', '88763059', '1', '12', '17', '157', '6', '233', '88763059');

-- ----------------------------
-- Table structure for geo_line_code
-- ----------------------------
DROP TABLE IF EXISTS `geo_line_code`;
CREATE TABLE `geo_line_code` (
  `LINE_CODE` varchar(4) NOT NULL,
  `LINE_NAME` varchar(20) NOT NULL,
  `SUB_CODE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of geo_line_code
-- ----------------------------
INSERT INTO `geo_line_code` VALUES ('0002', '京沪', 'JJH,BJH,AJH,BJHS,AJHU,JHU,jh3');
INSERT INTO `geo_line_code` VALUES ('0007', '京哈', 'JHA');
INSERT INTO `geo_line_code` VALUES ('0046', '武九', 'AWJ,BWJ,NWJ');
INSERT INTO `geo_line_code` VALUES ('0056', '襄渝', 'AXY,YQW');
INSERT INTO `geo_line_code` VALUES ('0072', '益湛', 'AY,AYZ,AYZX,ACM,LSL,CYZ,LSL,LLS');
INSERT INTO `geo_line_code` VALUES ('0073', '衡柳', 'AHL,CHL');
INSERT INTO `geo_line_code` VALUES ('0085', '成昆', 'CKX,CK,CKJ、ACK');
INSERT INTO `geo_line_code` VALUES ('0091', '衢九', 'CQJ');
INSERT INTO `geo_line_code` VALUES ('0349', '唐呼', 'ATZ,TZ,ATH');
INSERT INTO `geo_line_code` VALUES ('0415', '京包客专', 'AJNB,AJB,CJB,AJBK,CJB,AJB,AJBK,CJBK');
INSERT INTO `geo_line_code` VALUES ('0430', '汉丹', 'AHD');
INSERT INTO `geo_line_code` VALUES ('0610', '宁启', 'JNQ,BNQ,ANQ,CNQ');
INSERT INTO `geo_line_code` VALUES ('0630', '金山', 'AJS,BJS,JJS');
INSERT INTO `geo_line_code` VALUES ('0693', '龙漳', 'ALZ,BLZ,GLZ,NLZ,clz');
INSERT INTO `geo_line_code` VALUES ('0694', '昌福', 'BCF,ACF,CCF,GCF,GYP');
INSERT INTO `geo_line_code` VALUES ('0695', '永莆', 'BYP,AYP,CYP,GYP');
INSERT INTO `geo_line_code` VALUES ('0816', '达成', 'ADC');
INSERT INTO `geo_line_code` VALUES ('0830', '昆玉河', 'KYH,AKY,CKY');
INSERT INTO `geo_line_code` VALUES ('0850', '高南', 'AGN');
INSERT INTO `geo_line_code` VALUES ('0851', '贵开', 'AGK');
INSERT INTO `geo_line_code` VALUES ('0918', '中川铁路', 'AZC');
INSERT INTO `geo_line_code` VALUES ('1544', '齐河联络线', '');
INSERT INTO `geo_line_code` VALUES ('1655', '淮萧联络线', 'LHX');
INSERT INTO `geo_line_code` VALUES ('2624', '虹桥联络线', 'hql');
INSERT INTO `geo_line_code` VALUES ('2838', '成渝高铁', 'CCY,GCY');
INSERT INTO `geo_line_code` VALUES ('3001', '京广高铁', 'GJG');
INSERT INTO `geo_line_code` VALUES ('3002', '京沪高铁', 'GJH');
INSERT INTO `geo_line_code` VALUES ('3005', '沪蓉', 'AHR、HNH、AHW、AHN、CNH、HFN');
INSERT INTO `geo_line_code` VALUES ('3007', '京哈高铁', 'GHD,gjha');
INSERT INTO `geo_line_code` VALUES ('3008', '沪昆高铁', 'GHK,GHH');
INSERT INTO `geo_line_code` VALUES ('3009', '杭深', 'CHS,BHS,AHS,GHS,NHS');
INSERT INTO `geo_line_code` VALUES ('3010', '京津城际', 'CJJ');
INSERT INTO `geo_line_code` VALUES ('3011', '胶济客专', 'BJJ');
INSERT INTO `geo_line_code` VALUES ('3012', '石太客专', 'CST,STK ，SKZ');
INSERT INTO `geo_line_code` VALUES ('3013', '徐兰高铁', 'GZX,GXB,GXLS,GXLX,GXL');
INSERT INTO `geo_line_code` VALUES ('3014', '成灌铁路', 'CCG');
INSERT INTO `geo_line_code` VALUES ('3015', '沪宁高铁', 'GHN');
INSERT INTO `geo_line_code` VALUES ('3016', '广珠城际', 'CGZ');
INSERT INTO `geo_line_code` VALUES ('3017', '昌九城际', 'BCJ,ACJ,CCJ,NCJ,GCJ,cjj');
INSERT INTO `geo_line_code` VALUES ('3018', '海南东环', 'adh,ADH,DHS,DHX,HNDH');
INSERT INTO `geo_line_code` VALUES ('3019', '沈大高铁', 'GHD、GSD');
INSERT INTO `geo_line_code` VALUES ('3020', '长珲客专', 'CCH');
INSERT INTO `geo_line_code` VALUES ('3021', '广深港', 'GSG');
INSERT INTO `geo_line_code` VALUES ('3023', '津秦客专', 'GJQ,CJQ');
INSERT INTO `geo_line_code` VALUES ('3024', '合蚌高铁', 'GHB');
INSERT INTO `geo_line_code` VALUES ('3025', '盘营高铁', 'GPY');
INSERT INTO `geo_line_code` VALUES ('3026', '宁杭高铁', 'GNH');
INSERT INTO `geo_line_code` VALUES ('3027', '大西高铁', 'GDX,CDX');
INSERT INTO `geo_line_code` VALUES ('3028', '柳南客专', 'ALN,CLN');
INSERT INTO `geo_line_code` VALUES ('3029', '南广', 'CNG');
INSERT INTO `geo_line_code` VALUES ('3030', '邕北', 'CYB,AYB');
INSERT INTO `geo_line_code` VALUES ('3031', '钦防', 'CQF');
INSERT INTO `geo_line_code` VALUES ('3032', '兰新客专', 'CLX,GLX');
INSERT INTO `geo_line_code` VALUES ('3033', '武九客专', 'CWS');
INSERT INTO `geo_line_code` VALUES ('3034', '武咸城际', 'CWX');
INSERT INTO `geo_line_code` VALUES ('3035', '汉孝城际', 'CHX,CWX,GHX,GWX');
INSERT INTO `geo_line_code` VALUES ('3036', '武冈城际', 'CWG');
INSERT INTO `geo_line_code` VALUES ('3037', '郫彭', 'CPP');
INSERT INTO `geo_line_code` VALUES ('3038', '青荣城际', 'BQR,CQR');
INSERT INTO `geo_line_code` VALUES ('3040', '西成客专', 'CXC');
INSERT INTO `geo_line_code` VALUES ('3041', '成贵客专', 'BCG,CCG');
INSERT INTO `geo_line_code` VALUES ('3042', '峨眉山', 'CEM');
INSERT INTO `geo_line_code` VALUES ('3044', '贵广客专', 'CGG');
INSERT INTO `geo_line_code` VALUES ('3045', '沈丹客专', 'CSD,GSD');
INSERT INTO `geo_line_code` VALUES ('3046', '哈齐客专', 'CHQ,CHQS');
INSERT INTO `geo_line_code` VALUES ('3047', '合福高铁', 'HFGS,GHF');
INSERT INTO `geo_line_code` VALUES ('3048', '渝贵', '');
INSERT INTO `geo_line_code` VALUES ('3049', '郑焦城际', 'CZJ');
INSERT INTO `geo_line_code` VALUES ('3050', '郑开城际', 'CZK');
INSERT INTO `geo_line_code` VALUES ('3052', '广惠城际', 'CGH');
INSERT INTO `geo_line_code` VALUES ('3053', '宁安客专', 'CNA');
INSERT INTO `geo_line_code` VALUES ('3054', '丹大快速', 'CDD');
INSERT INTO `geo_line_code` VALUES ('3055', '赣瑞龙', 'CGL,GRL,NGRL');
INSERT INTO `geo_line_code` VALUES ('3056', '南昆客专', 'CNK');
INSERT INTO `geo_line_code` VALUES ('3057', '郑机城际', 'CZJ,BZJ');
INSERT INTO `geo_line_code` VALUES ('3058', '金温', 'CJW');
INSERT INTO `geo_line_code` VALUES ('3059', '西环高铁', 'XHG,AXH,HNXH');
INSERT INTO `geo_line_code` VALUES ('3060', '广肇城际', 'BGZ');
INSERT INTO `geo_line_code` VALUES ('3062', '兰渝', 'ALY');
INSERT INTO `geo_line_code` VALUES ('3063', '郑渝客专', 'CYW,GYW,CZY,GZY');
INSERT INTO `geo_line_code` VALUES ('3064', '长株城际', 'CCZ');
INSERT INTO `geo_line_code` VALUES ('3065', '湘潭城际', 'CXT');
INSERT INTO `geo_line_code` VALUES ('3067', '石济客专', 'CSJ');
INSERT INTO `geo_line_code` VALUES ('3068', '长沙西城际', 'CCS');
INSERT INTO `geo_line_code` VALUES ('3070', '哈佳线', 'CHJ');
INSERT INTO `geo_line_code` VALUES ('3071', '深湛线', '');
INSERT INTO `geo_line_code` VALUES ('3075', '楚大线', '');
INSERT INTO `geo_line_code` VALUES ('9996', '津保铁路', 'CJB,GJB');

-- ----------------------------
-- Table structure for geo_line_unit
-- ----------------------------
DROP TABLE IF EXISTS `geo_line_unit`;
CREATE TABLE `geo_line_unit` (
  `UNIT_CODE` varchar(2) NOT NULL,
  `LINE_CODE` varchar(4) NOT NULL,
  `DIRECTION_ID` varchar(2) NOT NULL,
  `START_MILE` float NOT NULL,
  `END_MILE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of geo_line_unit
-- ----------------------------
INSERT INTO `geo_line_unit` VALUES ('03', '0002', '01', '0', '371');
INSERT INTO `geo_line_unit` VALUES ('06', '0002', '01', '371', '763');
INSERT INTO `geo_line_unit` VALUES ('07', '0002', '01', '763', '9999');
INSERT INTO `geo_line_unit` VALUES ('03', '0002', '02', '0', '371');
INSERT INTO `geo_line_unit` VALUES ('06', '0002', '02', '371', '763');
INSERT INTO `geo_line_unit` VALUES ('07', '0002', '02', '763', '1463');
INSERT INTO `geo_line_unit` VALUES ('06', '0002', '06', '466.598', '502.835');
INSERT INTO `geo_line_unit` VALUES ('07', '0002', '06', '1151.69', '1159');
INSERT INTO `geo_line_unit` VALUES ('06', '0002', '07', '465.853', '501.308');
INSERT INTO `geo_line_unit` VALUES ('03', '0007', '01', '0', '312.498');
INSERT INTO `geo_line_unit` VALUES ('02', '0007', '01', '312.498', '1172');
INSERT INTO `geo_line_unit` VALUES ('01', '0007', '01', '1172', '1249.4');
INSERT INTO `geo_line_unit` VALUES ('03', '0007', '02', '0', '312.498');
INSERT INTO `geo_line_unit` VALUES ('02', '0007', '02', '312.498', '1172');
INSERT INTO `geo_line_unit` VALUES ('01', '0007', '02', '1172', '1249.42');
INSERT INTO `geo_line_unit` VALUES ('17', '0046', '01', '0', '185.809');
INSERT INTO `geo_line_unit` VALUES ('13', '0046', '01', '185.809', '9999');
INSERT INTO `geo_line_unit` VALUES ('17', '0046', '02', '0', '185.809');
INSERT INTO `geo_line_unit` VALUES ('13', '0046', '02', '185.809', '9999');
INSERT INTO `geo_line_unit` VALUES ('17', '0056', '01', '0', '174.994');
INSERT INTO `geo_line_unit` VALUES ('16', '0056', '01', '174.994', '581.191');
INSERT INTO `geo_line_unit` VALUES ('10', '0056', '01', '581.191', '9999');
INSERT INTO `geo_line_unit` VALUES ('17', '0056', '02', '0', '174.994');
INSERT INTO `geo_line_unit` VALUES ('16', '0056', '02', '174.994', '581.191');
INSERT INTO `geo_line_unit` VALUES ('10', '0056', '02', '581.191', '9999');
INSERT INTO `geo_line_unit` VALUES ('08', '0072', '01', '0', '7');
INSERT INTO `geo_line_unit` VALUES ('08', '0072', '02', '0', '7');
INSERT INTO `geo_line_unit` VALUES ('08', '0072', '05', '7', '950.344');
INSERT INTO `geo_line_unit` VALUES ('09', '0072', '05', '333.629', '798.721');
INSERT INTO `geo_line_unit` VALUES ('08', '0073', '01', '0', '147.873');
INSERT INTO `geo_line_unit` VALUES ('09', '0073', '01', '147.873', '497.965');
INSERT INTO `geo_line_unit` VALUES ('08', '0073', '02', '0', '147.873');
INSERT INTO `geo_line_unit` VALUES ('09', '0073', '02', '147.873', '497.965');
INSERT INTO `geo_line_unit` VALUES ('15', '0085', '01', '945.716', '1097.45');
INSERT INTO `geo_line_unit` VALUES ('15', '0085', '02', '945.716', '1097.45');
INSERT INTO `geo_line_unit` VALUES ('10', '0085', '05', '0', '750.897');
INSERT INTO `geo_line_unit` VALUES ('14', '0085', '05', '750.897', '945.715');
INSERT INTO `geo_line_unit` VALUES ('07', '0091', '01', '0', '96.416');
INSERT INTO `geo_line_unit` VALUES ('13', '0091', '01', '96.416', '335.383');
INSERT INTO `geo_line_unit` VALUES ('07', '0091', '02', '0', '96.416');
INSERT INTO `geo_line_unit` VALUES ('13', '0091', '02', '96.416', '335.383');
INSERT INTO `geo_line_unit` VALUES ('03', '0349', '01', '10', '591');
INSERT INTO `geo_line_unit` VALUES ('04', '0349', '01', '591', '859.872');
INSERT INTO `geo_line_unit` VALUES ('03', '0349', '02', '9.913', '591');
INSERT INTO `geo_line_unit` VALUES ('04', '0349', '02', '591', '859.822');
INSERT INTO `geo_line_unit` VALUES ('04', '0415', '01', '352.101', '659.9');
INSERT INTO `geo_line_unit` VALUES ('04', '0415', '02', '352.101', '659.9');
INSERT INTO `geo_line_unit` VALUES ('17', '0430', '01', '0', '370.583');
INSERT INTO `geo_line_unit` VALUES ('17', '0430', '02', '0', '370.583');
INSERT INTO `geo_line_unit` VALUES ('17', '0430', '05', '370.583', '418.506');
INSERT INTO `geo_line_unit` VALUES ('07', '0610', '01', '0', '269');
INSERT INTO `geo_line_unit` VALUES ('07', '0610', '02', '0', '269');
INSERT INTO `geo_line_unit` VALUES ('07', '0630', '01', '0', '55.267');
INSERT INTO `geo_line_unit` VALUES ('07', '0630', '02', '0', '55.303');
INSERT INTO `geo_line_unit` VALUES ('13', '0693', '01', '0', '115');
INSERT INTO `geo_line_unit` VALUES ('13', '0693', '02', '0', '114');
INSERT INTO `geo_line_unit` VALUES ('13', '0694', '01', '0', '545.97');
INSERT INTO `geo_line_unit` VALUES ('13', '0694', '02', '0', '545.97');
INSERT INTO `geo_line_unit` VALUES ('13', '0695', '01', '488.372', '545.366');
INSERT INTO `geo_line_unit` VALUES ('13', '0695', '02', '488.441', '545.337');
INSERT INTO `geo_line_unit` VALUES ('10', '0816', '01', '0.022', '355.526');
INSERT INTO `geo_line_unit` VALUES ('10', '0816', '02', '0', '355.526');
INSERT INTO `geo_line_unit` VALUES ('14', '0830', '01', '0.093', '382.394');
INSERT INTO `geo_line_unit` VALUES ('14', '0830', '02', '0.093', '382.394');
INSERT INTO `geo_line_unit` VALUES ('10', '0850', '05', '0', '101.588');
INSERT INTO `geo_line_unit` VALUES ('10', '0851', '01', '0', '67');
INSERT INTO `geo_line_unit` VALUES ('10', '0851', '02', '0', '67');
INSERT INTO `geo_line_unit` VALUES ('11', '0918', '01', '14.304', '62.726');
INSERT INTO `geo_line_unit` VALUES ('11', '0918', '02', '14.299', '62.726');
INSERT INTO `geo_line_unit` VALUES ('06', '1544', '01', '0', '19.376');
INSERT INTO `geo_line_unit` VALUES ('06', '1544', '02', '0', '19.376');
INSERT INTO `geo_line_unit` VALUES ('07', '1655', '01', '0', '28.7');
INSERT INTO `geo_line_unit` VALUES ('07', '1655', '02', '0', '28.7');
INSERT INTO `geo_line_unit` VALUES ('07', '2624', '01', '0', '21.796');
INSERT INTO `geo_line_unit` VALUES ('07', '2624', '02', '0', '21.796');
INSERT INTO `geo_line_unit` VALUES ('10', '2838', '01', '0', '296.1');
INSERT INTO `geo_line_unit` VALUES ('10', '2838', '02', '0', '296.1');
INSERT INTO `geo_line_unit` VALUES ('03', '3001', '01', '0', '510.33');
INSERT INTO `geo_line_unit` VALUES ('05', '3001', '01', '510.33', '780.712');
INSERT INTO `geo_line_unit` VALUES ('17', '3001', '01', '780.712', '1353.65');
INSERT INTO `geo_line_unit` VALUES ('08', '3001', '01', '1353.65', '2295.53');
INSERT INTO `geo_line_unit` VALUES ('03', '3001', '02', '0', '510.33');
INSERT INTO `geo_line_unit` VALUES ('05', '3001', '02', '510.33', '780.712');
INSERT INTO `geo_line_unit` VALUES ('17', '3001', '02', '780.712', '1353.65');
INSERT INTO `geo_line_unit` VALUES ('08', '3001', '02', '1353.65', '2295.53');
INSERT INTO `geo_line_unit` VALUES ('03', '3002', '01', '0', '316.255');
INSERT INTO `geo_line_unit` VALUES ('06', '3002', '01', '316.255', '691.859');
INSERT INTO `geo_line_unit` VALUES ('07', '3002', '01', '691.895', '9999');
INSERT INTO `geo_line_unit` VALUES ('03', '3002', '02', '0', '316.255');
INSERT INTO `geo_line_unit` VALUES ('06', '3002', '02', '316.255', '691.859');
INSERT INTO `geo_line_unit` VALUES ('07', '3002', '02', '691.895', '9999');
INSERT INTO `geo_line_unit` VALUES ('07', '3005', '01', '0', '663.595');
INSERT INTO `geo_line_unit` VALUES ('17', '3005', '01', '663.595', '1398.21');
INSERT INTO `geo_line_unit` VALUES ('10', '3005', '01', '1398.21', '1962.02');
INSERT INTO `geo_line_unit` VALUES ('07', '3005', '02', '0', '663.595');
INSERT INTO `geo_line_unit` VALUES ('17', '3005', '02', '663.595', '1398.21');
INSERT INTO `geo_line_unit` VALUES ('10', '3005', '02', '1398.21', '1962.02');
INSERT INTO `geo_line_unit` VALUES ('02', '3007', '01', '702', '1144.56');
INSERT INTO `geo_line_unit` VALUES ('01', '3007', '01', '1144.56', '1242.53');
INSERT INTO `geo_line_unit` VALUES ('02', '3007', '02', '702', '1144.56');
INSERT INTO `geo_line_unit` VALUES ('01', '3007', '02', '1144.56', '1242.53');
INSERT INTO `geo_line_unit` VALUES ('07', '3008', '01', '0', '429.202');
INSERT INTO `geo_line_unit` VALUES ('13', '3008', '01', '429.202', '1006.8');
INSERT INTO `geo_line_unit` VALUES ('08', '3008', '01', '1006.8', '1504.36');
INSERT INTO `geo_line_unit` VALUES ('10', '3008', '01', '1504.36', '2071.46');
INSERT INTO `geo_line_unit` VALUES ('14', '3008', '01', '2071.46', '2252.29');
INSERT INTO `geo_line_unit` VALUES ('07', '3008', '02', '0', '429.202');
INSERT INTO `geo_line_unit` VALUES ('13', '3008', '02', '429.202', '1006.8');
INSERT INTO `geo_line_unit` VALUES ('08', '3008', '02', '1006.8', '1504.36');
INSERT INTO `geo_line_unit` VALUES ('10', '3008', '02', '1504.36', '2071.46');
INSERT INTO `geo_line_unit` VALUES ('14', '3008', '02', '2071.46', '2252.38');
INSERT INTO `geo_line_unit` VALUES ('07', '3009', '01', '159.328', '664.589');
INSERT INTO `geo_line_unit` VALUES ('13', '3009', '01', '664.589', '1259.99');
INSERT INTO `geo_line_unit` VALUES ('08', '3009', '01', '1259.99', '1622.33');
INSERT INTO `geo_line_unit` VALUES ('07', '3009', '02', '159.189', '664.589');
INSERT INTO `geo_line_unit` VALUES ('13', '3009', '02', '664.589', '1259.99');
INSERT INTO `geo_line_unit` VALUES ('08', '3009', '02', '1259.99', '1622.33');
INSERT INTO `geo_line_unit` VALUES ('03', '3010', '01', '0', '163');
INSERT INTO `geo_line_unit` VALUES ('03', '3010', '02', '0', '163');
INSERT INTO `geo_line_unit` VALUES ('06', '3011', '01', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('06', '3011', '02', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('03', '3012', '01', '0', '223');
INSERT INTO `geo_line_unit` VALUES ('03', '3012', '02', '0', '223');
INSERT INTO `geo_line_unit` VALUES ('07', '3013', '01', '190', '299.02');
INSERT INTO `geo_line_unit` VALUES ('05', '3013', '01', '299.02', '950.627');
INSERT INTO `geo_line_unit` VALUES ('16', '3013', '01', '950.627', '1305.11');
INSERT INTO `geo_line_unit` VALUES ('11', '3013', '01', '1305.11', '1641.86');
INSERT INTO `geo_line_unit` VALUES ('07', '3013', '02', '190', '299.02');
INSERT INTO `geo_line_unit` VALUES ('05', '3013', '02', '299.02', '950.627');
INSERT INTO `geo_line_unit` VALUES ('16', '3013', '02', '950.627', '1305.11');
INSERT INTO `geo_line_unit` VALUES ('11', '3013', '02', '1305.11', '1641.86');
INSERT INTO `geo_line_unit` VALUES ('10', '3014', '01', '8.178', '64.791');
INSERT INTO `geo_line_unit` VALUES ('10', '3014', '02', '8.187', '64.815');
INSERT INTO `geo_line_unit` VALUES ('10', '3014', '05', '0', '8.187');
INSERT INTO `geo_line_unit` VALUES ('07', '3015', '01', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('07', '3015', '02', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('08', '3016', '01', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('08', '3016', '02', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('13', '3017', '01', '0', '141');
INSERT INTO `geo_line_unit` VALUES ('13', '3017', '02', '0.253', '141');
INSERT INTO `geo_line_unit` VALUES ('08', '3018', '01', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('08', '3018', '02', '0.005', '9999');
INSERT INTO `geo_line_unit` VALUES ('02', '3019', '01', '0', '402');
INSERT INTO `geo_line_unit` VALUES ('02', '3019', '02', '0', '402');
INSERT INTO `geo_line_unit` VALUES ('02', '3020', '01', '0', '472.971');
INSERT INTO `geo_line_unit` VALUES ('02', '3020', '02', '0', '472.971');
INSERT INTO `geo_line_unit` VALUES ('08', '3021', '01', '2290', '2409.43');
INSERT INTO `geo_line_unit` VALUES ('19', '3021', '01', '2409.43', '2435.16');
INSERT INTO `geo_line_unit` VALUES ('08', '3021', '02', '2290', '2409.43');
INSERT INTO `geo_line_unit` VALUES ('19', '3021', '02', '2409.43', '2435.16');
INSERT INTO `geo_line_unit` VALUES ('03', '3023', '01', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('03', '3023', '02', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('07', '3024', '01', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('07', '3024', '02', '0', '9999');
INSERT INTO `geo_line_unit` VALUES ('02', '3025', '01', '0', '89.314');
INSERT INTO `geo_line_unit` VALUES ('02', '3025', '02', '0', '86.1');
INSERT INTO `geo_line_unit` VALUES ('07', '3026', '01', '0', '255');
INSERT INTO `geo_line_unit` VALUES ('07', '3026', '02', '0', '255');
INSERT INTO `geo_line_unit` VALUES ('18', '3027', '01', '261.378', '843.07');
INSERT INTO `geo_line_unit` VALUES ('16', '3027', '01', '843.07', '848.026');
INSERT INTO `geo_line_unit` VALUES ('18', '3027', '02', '261.542', '843.07');
INSERT INTO `geo_line_unit` VALUES ('16', '3027', '02', '843.07', '848.026');
INSERT INTO `geo_line_unit` VALUES ('09', '3028', '01', '0', '226');
INSERT INTO `geo_line_unit` VALUES ('09', '3028', '02', '0', '226');
INSERT INTO `geo_line_unit` VALUES ('09', '3029', '01', '0', '573.402');
INSERT INTO `geo_line_unit` VALUES ('09', '3029', '02', '0', '573.428');
INSERT INTO `geo_line_unit` VALUES ('09', '3030', '01', '0', '198');
INSERT INTO `geo_line_unit` VALUES ('09', '3030', '02', '0', '198');
INSERT INTO `geo_line_unit` VALUES ('09', '3031', '01', '0', '63');
INSERT INTO `geo_line_unit` VALUES ('09', '3031', '02', '0', '63');
INSERT INTO `geo_line_unit` VALUES ('11', '3032', '01', '1641', '2580.24');
INSERT INTO `geo_line_unit` VALUES ('12', '3032', '01', '2580.24', '3432.93');
INSERT INTO `geo_line_unit` VALUES ('11', '3032', '02', '1641', '2580.24');
INSERT INTO `geo_line_unit` VALUES ('12', '3032', '02', '2580.24', '3432.93');
INSERT INTO `geo_line_unit` VALUES ('17', '3033', '01', '0', '153.696');
INSERT INTO `geo_line_unit` VALUES ('13', '3033', '01', '153.696', '209.766');
INSERT INTO `geo_line_unit` VALUES ('17', '3033', '02', '0', '153.696');
INSERT INTO `geo_line_unit` VALUES ('13', '3033', '02', '153.696', '209.682');
INSERT INTO `geo_line_unit` VALUES ('17', '3034', '01', '0', '75.884');
INSERT INTO `geo_line_unit` VALUES ('17', '3034', '02', '0', '75.884');
INSERT INTO `geo_line_unit` VALUES ('17', '3035', '01', '0', '61');
INSERT INTO `geo_line_unit` VALUES ('17', '3035', '02', '0', '61');
INSERT INTO `geo_line_unit` VALUES ('17', '3036', '01', '0', '35.911');
INSERT INTO `geo_line_unit` VALUES ('17', '3036', '02', '0', '35.911');
INSERT INTO `geo_line_unit` VALUES ('10', '3037', '01', '0', '21.1');
INSERT INTO `geo_line_unit` VALUES ('10', '3037', '02', '0', '21.1');
INSERT INTO `geo_line_unit` VALUES ('06', '3038', '01', '0.071', '302.757');
INSERT INTO `geo_line_unit` VALUES ('06', '3038', '02', '1.939', '302.757');
INSERT INTO `geo_line_unit` VALUES ('16', '3040', '01', '0', '340.117');
INSERT INTO `geo_line_unit` VALUES ('10', '3040', '01', '340.117', '684');
INSERT INTO `geo_line_unit` VALUES ('16', '3040', '02', '0', '340.117');
INSERT INTO `geo_line_unit` VALUES ('10', '3040', '02', '340.117', '684');
INSERT INTO `geo_line_unit` VALUES ('10', '3041', '01', '0.011', '130.522');
INSERT INTO `geo_line_unit` VALUES ('10', '3041', '02', '0', '131.212');
INSERT INTO `geo_line_unit` VALUES ('10', '3042', '01', '0', '31');
INSERT INTO `geo_line_unit` VALUES ('10', '3042', '02', '0.688', '31');
INSERT INTO `geo_line_unit` VALUES ('10', '3044', '01', '0', '278.035');
INSERT INTO `geo_line_unit` VALUES ('09', '3044', '01', '278.035', '688.662');
INSERT INTO `geo_line_unit` VALUES ('08', '3044', '01', '688.662', '858.995');
INSERT INTO `geo_line_unit` VALUES ('10', '3044', '02', '0', '278.035');
INSERT INTO `geo_line_unit` VALUES ('09', '3044', '02', '278.035', '688.662');
INSERT INTO `geo_line_unit` VALUES ('08', '3044', '02', '688.662', '858.995');
INSERT INTO `geo_line_unit` VALUES ('02', '3045', '01', '0', '209.265');
INSERT INTO `geo_line_unit` VALUES ('02', '3045', '02', '0', '209.266');
INSERT INTO `geo_line_unit` VALUES ('01', '3046', '01', '12.647', '282.448');
INSERT INTO `geo_line_unit` VALUES ('01', '3046', '02', '12.647', '282.448');
INSERT INTO `geo_line_unit` VALUES ('07', '3047', '01', '959.665', '1307.23');
INSERT INTO `geo_line_unit` VALUES ('13', '3047', '01', '1307.23', '1809.19');
INSERT INTO `geo_line_unit` VALUES ('07', '3047', '02', '959.665', '1307.23');
INSERT INTO `geo_line_unit` VALUES ('13', '3047', '02', '1307.23', '1809.19');
INSERT INTO `geo_line_unit` VALUES ('10', '3048', '01', '0', '379.422');
INSERT INTO `geo_line_unit` VALUES ('10', '3048', '02', '0', '379.422');
INSERT INTO `geo_line_unit` VALUES ('05', '3049', '01', '0.101', '71.4');
INSERT INTO `geo_line_unit` VALUES ('05', '3049', '02', '0', '71.4');
INSERT INTO `geo_line_unit` VALUES ('05', '3050', '01', '0', '51');
INSERT INTO `geo_line_unit` VALUES ('05', '3050', '02', '0.083', '51');
INSERT INTO `geo_line_unit` VALUES ('08', '3052', '01', '37', '140');
INSERT INTO `geo_line_unit` VALUES ('08', '3052', '02', '37', '140');
INSERT INTO `geo_line_unit` VALUES ('07', '3053', '01', '0', '258');
INSERT INTO `geo_line_unit` VALUES ('07', '3053', '02', '0', '258');
INSERT INTO `geo_line_unit` VALUES ('02', '3054', '01', '16.526', '311.638');
INSERT INTO `geo_line_unit` VALUES ('02', '3054', '02', '16.526', '311.534');
INSERT INTO `geo_line_unit` VALUES ('13', '3055', '01', '0', '251');
INSERT INTO `geo_line_unit` VALUES ('13', '3055', '02', '0', '251');
INSERT INTO `geo_line_unit` VALUES ('09', '3056', '01', '0', '255.39');
INSERT INTO `geo_line_unit` VALUES ('14', '3056', '01', '255.39', '705.669');
INSERT INTO `geo_line_unit` VALUES ('09', '3056', '02', '0', '255.39');
INSERT INTO `geo_line_unit` VALUES ('14', '3056', '02', '255.39', '705.669');
INSERT INTO `geo_line_unit` VALUES ('05', '3057', '01', '0', '28.295');
INSERT INTO `geo_line_unit` VALUES ('05', '3057', '02', '0', '28.295');
INSERT INTO `geo_line_unit` VALUES ('07', '3058', '01', '0', '240.8');
INSERT INTO `geo_line_unit` VALUES ('07', '3058', '02', '0', '240.8');
INSERT INTO `geo_line_unit` VALUES ('08', '3059', '01', '0', '344.98');
INSERT INTO `geo_line_unit` VALUES ('08', '3059', '02', '0', '344.98');
INSERT INTO `geo_line_unit` VALUES ('08', '3060', '01', '34.5', '118.838');
INSERT INTO `geo_line_unit` VALUES ('08', '3060', '02', '34.5', '118.838');
INSERT INTO `geo_line_unit` VALUES ('10', '3062', '01', '497.443', '800.403');
INSERT INTO `geo_line_unit` VALUES ('10', '3062', '02', '497.443', '801.844');
INSERT INTO `geo_line_unit` VALUES ('10', '3063', '01', '840', '1086.6');
INSERT INTO `geo_line_unit` VALUES ('10', '3063', '02', '840', '1086.6');
INSERT INTO `geo_line_unit` VALUES ('08', '3064', '01', '0', '59');
INSERT INTO `geo_line_unit` VALUES ('08', '3064', '02', '0', '59');
INSERT INTO `geo_line_unit` VALUES ('08', '3065', '01', '25.827', '49.858');
INSERT INTO `geo_line_unit` VALUES ('08', '3065', '02', '25.827', '49.858');
INSERT INTO `geo_line_unit` VALUES ('03', '3067', '01', '0', '229.241');
INSERT INTO `geo_line_unit` VALUES ('06', '3067', '01', '229.241', '310.208');
INSERT INTO `geo_line_unit` VALUES ('03', '3067', '02', '0', '229.241');
INSERT INTO `geo_line_unit` VALUES ('06', '3067', '02', '229.241', '310.208');
INSERT INTO `geo_line_unit` VALUES ('08', '3068', '01', '0', '21.9');
INSERT INTO `geo_line_unit` VALUES ('08', '3068', '02', '0', '21.9');
INSERT INTO `geo_line_unit` VALUES ('01', '3070', '01', '0', '341');
INSERT INTO `geo_line_unit` VALUES ('01', '3070', '02', '0', '341');
INSERT INTO `geo_line_unit` VALUES ('08', '3071', '01', '131', '485.853');
INSERT INTO `geo_line_unit` VALUES ('08', '3071', '02', '131.153', '485.976');
INSERT INTO `geo_line_unit` VALUES ('14', '3075', '01', '0', '174.591');
INSERT INTO `geo_line_unit` VALUES ('14', '3075', '02', '0', '174.591');
INSERT INTO `geo_line_unit` VALUES ('03', '9996', '01', '0', '137.5');
INSERT INTO `geo_line_unit` VALUES ('03', '9996', '02', '0', '137.5');

-- ----------------------------
-- Table structure for geo_segment_info
-- ----------------------------
DROP TABLE IF EXISTS `geo_segment_info`;
CREATE TABLE `geo_segment_info` (
  `LINE_NO` varchar(255) DEFAULT NULL,
  `MILE_BEGIN` float DEFAULT NULL,
  `MILE_END` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of geo_segment_info
-- ----------------------------
INSERT INTO `geo_segment_info` VALUES ('L01', '0', '300.1');
INSERT INTO `geo_segment_info` VALUES ('L01', '300.1', '500.25');
INSERT INTO `geo_segment_info` VALUES ('L01', '500.25', '800');

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
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

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client`;
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

-- ----------------------------
-- Records of oauth_client
-- ----------------------------
INSERT INTO `oauth_client` VALUES ('7e81a2ff25586615b7e1ddff1c5b08ed', '975f0c15135acc1cb5e5b42206e6b435', 'AWW Android Client', null, 'password,refresh_token', null, '1', null, '2017-01-17 09:25:01');
INSERT INTO `oauth_client` VALUES ('7854f0c61e9b473e300ec19ee1957b52', 'e88cb8a369bb9cdff355d89884b6b5ff', 'AWW IOS Client', null, 'password,refresh_token', null, '1', null, '2017-01-17 09:26:48');
INSERT INTO `oauth_client` VALUES ('3c1c5dfc9a9c5724c4d5dffe5c963a87', '02a223e9b8e704dbc537447f16ea89a9', 'AWW Android Management', '', 'password,refresh_token', '', '1', '', '2017-07-04 09:31:29');

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `create_time` timestamp NULL DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `oauth_code_expired_seconds` int(11) DEFAULT '-1',
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
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

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
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

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', null, '0001', '终端状态', '/admin/client', '1', '', 'fa fa-train', '1', '', '1', '2017-02-16 14:34:57', '1', '2017-11-21 15:01:45');
INSERT INTO `sys_menu` VALUES ('2', null, '0002', '接收数据', '', '2', '', 'fa fa-cloud-upload', '1', '', '1', '2017-11-10 09:25:51', '1', '2017-11-10 11:21:59');
INSERT INTO `sys_menu` VALUES ('3', null, '0003', '发送数据', '', '3', '', 'fa fa-cloud-download', '1', '', '1', '2017-11-01 15:22:37', '1', '2017-11-10 11:21:13');
INSERT INTO `sys_menu` VALUES ('4', null, '0004', '数据统计', '', '4', '', 'fa fa-line-chart', '1', '', '1', null, '1', '2017-11-21 15:04:14');
INSERT INTO `sys_menu` VALUES ('5', null, '0005', '业务管理', '', '5', '', 'fa fa-book', '1', '', '1', '2017-11-21 14:16:32', '1', '2017-11-21 15:04:51');
INSERT INTO `sys_menu` VALUES ('6', null, '0006', '系统管理', '', '6', '', 'fa fa-cogs', '1', '', '1', '2017-02-16 14:35:30', '1', '2017-02-17 09:53:01');
INSERT INTO `sys_menu` VALUES ('7', null, '0007', '系统监控', '/monitor', '7', '', 'fa  fa-user-secret', '1', 'monitor:*', '1', '2017-07-06 15:55:37', '1', '2017-11-10 11:26:32');
INSERT INTO `sys_menu` VALUES ('8', '6', '00060008', '用户管理', '/admin/sys/user', '1', '', 'fa fa-user', '1', 'user:*', '1', '2017-02-16 14:40:52', '1', '2017-02-16 14:40:52');
INSERT INTO `sys_menu` VALUES ('9', '6', '00060009', '角色管理', '/admin/sys/role', '2', '', 'fa fa-user-plus', '1', 'role:*', '1', '2017-02-16 14:40:52', '1', '2017-02-17 09:53:58');
INSERT INTO `sys_menu` VALUES ('10', '6', '00060010', '菜单管理', '/admin/sys/menu', '3', '', 'fa fa-list', '1', 'menu:*', '1', '2017-02-16 14:41:43', '1', '2017-02-17 10:24:35');
INSERT INTO `sys_menu` VALUES ('11', '6', '00060011', '日志管理', '/admin/sys/log', '4', '', 'fa fa-database', '1', 'log:*', '1', '2017-02-16 14:42:38', '1', '2017-02-17 09:54:15');
INSERT INTO `sys_menu` VALUES ('12', '6', '00060012', '系统参数', '/admin/sys/param', '5', '', 'fa fa-cog', '1', 'param:*', '1', '2017-02-16 14:43:00', '1', '2017-02-17 09:54:21');
INSERT INTO `sys_menu` VALUES ('13', '2', '00020013', '接收列表', '/admin/transfer/upload_file', '1', '', 'fa fa-cloud-upload', '1', 'upload_file:*', '1', '2017-10-31 16:59:49', '1', '2017-11-10 11:18:07');
INSERT INTO `sys_menu` VALUES ('14', '3', '00030014', '发送列表', '/admin/transfer/download_file', '1', '', 'fa fa-cloud-download', '1', 'download_file:*,upload:*', '1', '2017-11-01 15:01:25', '1', '2017-11-10 11:18:17');
INSERT INTO `sys_menu` VALUES ('15', '2', '00020015', '历史数据', '/admin/history/upload_file', '2', '', 'fa  fa-cloud-upload', '1', 'history_upload:*', '1', '2017-11-01 15:22:47', '1', '2017-11-24 10:15:52');
INSERT INTO `sys_menu` VALUES ('16', '3', '00030016', '历史数据', '/admin/history/download_file', '2', '', 'fa  fa-cloud-download', '1', 'history_download:*', '1', '2017-11-07 18:19:43', '1', '2017-11-24 10:15:42');
INSERT INTO `sys_menu` VALUES ('17', '5', '00050017', '终端管理', '/admin/transfer/client', '1', '', 'fa fa-train', '1', 'client:*', '1', '2017-10-31 16:59:05', '1', '2017-11-10 11:19:19');
INSERT INTO `sys_menu` VALUES ('18', '5', '00050018', '传输配置', '/admin/transfer/config', '2', '', 'fa fa-sort-amount-asc', '1', 'config:*', '1', '2017-11-09 14:05:09', '1', '2017-11-23 15:15:12');
INSERT INTO `sys_menu` VALUES ('19', '4', '00040019', '接收数据统计', '/admin/statistics/upload_file', '1', '', 'fa fa-file-text', '1', 'statistics_upload_file:*', '1', '2017-11-27 10:02:20', '1', '2017-11-29 12:51:21');
INSERT INTO `sys_menu` VALUES ('20', '4', '00040020', '接收数据量统计', '/admin/statistics/upload_traffic', '2', '', 'fa fa-circle-o', '1', 'statistics_upload_traffic:*', '1', '2017-11-29 09:02:00', '1', '2017-11-29 13:08:24');
INSERT INTO `sys_menu` VALUES ('21', '4', '00040021', '发送数据统计', '/admin/statistics/download_file', '3', '', 'fa fa-circle-o', '1', 'statistics_download_file:*', '1', '2017-11-29 13:09:47', '1', '2017-11-29 13:09:47');
INSERT INTO `sys_menu` VALUES ('22', '4', '00040022', '发送数据量统计', '/admin/statistics/download_traffic', '4', '', 'fa fa-circle-o', '1', 'statistics_download_traffic:*', '1', '2017-11-29 13:10:36', '1', '2017-11-29 13:10:36');

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `name` varchar(64) NOT NULL COMMENT '参数名称',
  `value` varchar(4096) DEFAULT NULL COMMENT '参数值',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('port', '11028');
INSERT INTO `sys_param` VALUES ('upload_dir', 'D:\\Projects\\FengHuang\\TIELU\\测试\\服务器\\Upload');
INSERT INTO `sys_param` VALUES ('download_dir', 'D:\\Projects\\FengHuang\\TIELU\\测试\\服务器\\Download');
INSERT INTO `sys_param` VALUES ('temp_dir', 'D:\\Projects\\FengHuang\\TIELU\\测试\\服务器\\Temp');
INSERT INTO `sys_param` VALUES ('backup_dir', 'D:\\Projects\\FengHuang\\TIELU\\测试\\服务器\\Backup');
INSERT INTO `sys_param` VALUES ('ignored_extensions', '_tmp');
INSERT INTO `sys_param` VALUES ('geo_split_dir', 'D:\\Projects\\FengHuang\\TIELU\\测试\\服务器\\Geo');
INSERT INTO `sys_param` VALUES ('ip', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
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

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '普通用户', '1', '2017-02-22 10:26:17', '1', '2017-02-22 10:26:17');
INSERT INTO `sys_role` VALUES ('2', '超级管理员', '1', '2016-02-22 16:47:16', '1', '2016-02-23 15:13:04');
INSERT INTO `sys_role` VALUES ('3', '系统管理员', '1', '2016-02-22 16:47:16', '1', '2016-02-23 15:13:04');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
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

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '18691822869', null, null, '0:0:0:0:0:0:0:1', '2019-01-03 11:49:06', '1', '1', '2017-01-12 10:26:46', '1', '2017-11-29 15:28:07', '0', null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '2');
