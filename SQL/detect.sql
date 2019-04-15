/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : detect

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-04-11 23:43:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for antenna_history
-- ----------------------------
DROP TABLE IF EXISTS `antenna_history`;
CREATE TABLE `antenna_history` (
  `DEVICE_ID` varchar(20) NOT NULL,
  `CONFIGURE_ID` int(11) NOT NULL,
  `ROUND` bigint(20) NOT NULL,
  `SEQUENCE` int(11) NOT NULL,
  `STRENGTH` float DEFAULT NULL,
  PRIMARY KEY (`CONFIGURE_ID`,`DEVICE_ID`,`ROUND`,`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of antenna_history
-- ----------------------------

-- ----------------------------
-- Table structure for antenna_uav
-- ----------------------------
DROP TABLE IF EXISTS `antenna_uav`;
CREATE TABLE `antenna_uav` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` varchar(20) NOT NULL,
  `CENTER_FREQ` bigint(20) DEFAULT NULL,
  `START_FREQ` bigint(20) DEFAULT NULL,
  `END_FREQ` bigint(20) DEFAULT NULL,
  `STRENGTH` double DEFAULT NULL,
  `FINDING_TIME` datetime DEFAULT NULL,
  `AREA` tinyint(4) DEFAULT NULL,
  `ROUND` bigint(20) DEFAULT NULL,
  `DISTANCE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10897 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of antenna_uav
-- ----------------------------

-- ----------------------------
-- Table structure for config_antenna
-- ----------------------------
DROP TABLE IF EXISTS `config_antenna`;
CREATE TABLE `config_antenna` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `START_FREQ` varchar(50) DEFAULT NULL,
  `END_FREQ` varchar(50) DEFAULT NULL,
  `REF_LEVEL` int(11) DEFAULT NULL,
  `RBW` varchar(50) DEFAULT NULL,
  `VBW` varchar(50) DEFAULT NULL,
  `SWEEP_TIME` int(11) DEFAULT NULL,
  `RISE_DATA_COUNT` int(11) DEFAULT NULL,
  `RISE_ANGLE` int(11) DEFAULT NULL,
  `FALL_ANGLE` int(11) DEFAULT NULL,
  `MAX_BAND_WIDTH` varchar(50) DEFAULT NULL,
  `MIN_BAND_WIDTH` varchar(50) DEFAULT NULL,
  `AVERAGE_COUNT` int(11) DEFAULT NULL,
  `TOP_VARIANCE_LIMIT` float DEFAULT NULL,
  `MIN_TOP_AVG_STRENGTH` int(11) DEFAULT NULL COMMENT '特定 ref level 下，顶端平均强度的最小值',
  `MAX_TOP_AVG_RATIO` int(11) DEFAULT NULL,
  `DISTANCE_ID` int(11) DEFAULT NULL,
  `VALID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_antenna
-- ----------------------------
INSERT INTO `config_antenna` VALUES ('1', '5.75G', '5.85G', '-50', '300K', '300K', '20', '5', '45', '-50', '15M', '8M', '30', '0.1', '-120', '97', '1', '0');
INSERT INTO `config_antenna` VALUES ('2', '2.4G', '2.5G', '-50', '300K', '300K', '20', '5', '45', '-50', '15M', '8M', '20', '0.1', '-120', '97', '1', '1');

-- ----------------------------
-- Table structure for config_distance
-- ----------------------------
DROP TABLE IF EXISTS `config_distance`;
CREATE TABLE `config_distance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `D10` varchar(50) DEFAULT NULL,
  `D50` varchar(50) DEFAULT NULL,
  `D100` varchar(50) DEFAULT NULL,
  `D200` varchar(50) DEFAULT NULL,
  `D300` varchar(50) DEFAULT NULL,
  `D400` varchar(50) DEFAULT NULL,
  `D600` varchar(50) DEFAULT NULL,
  `D800` varchar(50) DEFAULT NULL,
  `D1000` varchar(50) DEFAULT NULL,
  `D1500` varchar(50) DEFAULT NULL,
  `D2000` varchar(50) DEFAULT NULL,
  `D3000` varchar(50) DEFAULT NULL,
  `MEMO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_distance
-- ----------------------------
INSERT INTO `config_distance` VALUES ('1', '-80', '-90', '-93', '-94', '-95', '-96', '-97', '-98', '-100', '-105', '-108', '-150', 'REF LEVEL -50');
INSERT INTO `config_distance` VALUES ('2', '-68', '-70', '-72', '-80.8', '-82', '-83', '-84', '-86', '-100', '-105', '-108', '-150', 'REF LEVEL -20');

-- ----------------------------
-- Table structure for config_port
-- ----------------------------
DROP TABLE IF EXISTS `config_port`;
CREATE TABLE `config_port` (
  `DEVICE_ID` varchar(20) NOT NULL,
  `DEVICE` varchar(20) DEFAULT NULL,
  `RATE` bigint(20) DEFAULT NULL,
  `PORT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_port
-- ----------------------------
INSERT INTO `config_port` VALUES ('DEVICE01', 'COMPASS', '9600', '0');
INSERT INTO `config_port` VALUES ('DEVICE01', 'GPS', '9600', '0');
INSERT INTO `config_port` VALUES ('DEVICE01', 'SWITCH', '9600', '3');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE1', '0', '5');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE2', '0', '7');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE3', '0', '6');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE4', '0', '11');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE5', '0', '10');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE6', '0', '9');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE7', '0', '8');
INSERT INTO `config_port` VALUES ('DEVICE01', 'PROBE8', '0', '3');

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `DEVICE_ID` varchar(20) NOT NULL,
  `HOST_NAME` varchar(255) DEFAULT NULL,
  `HOST_IP` varchar(255) DEFAULT NULL,
  `GPS_LANTITUDE` double DEFAULT NULL,
  `GPS_LONGITUDE` double DEFAULT NULL,
  `GPS_UPDATING_TIME` datetime DEFAULT NULL,
  `COMPASS_ANGEL` double DEFAULT NULL,
  `COMPASS_UPDATING_TIME` datetime DEFAULT NULL,
  `PROBE_DISTANCE_ID` int(11) DEFAULT NULL,
  `VALID` tinyint(4) DEFAULT NULL,
  `MEMO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DEVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('DEVICE01', 'YIMIN100_MAC', '172.20.10.2', '39.6410247', '116.67531967', '2019-01-17 05:03:14', '0', '2019-01-19 05:18:26', '2', '1', '采育镇测试');
INSERT INTO `device` VALUES ('DEVICE02', 'YIMIN100_MAC', '172.20.10.2', '31.248801', '119.826486', '2019-01-17 05:03:14', '0', '2019-01-19 05:18:26', '2', '0', '宜兴展会');

-- ----------------------------
-- Table structure for probe_brand
-- ----------------------------
DROP TABLE IF EXISTS `probe_brand`;
CREATE TABLE `probe_brand` (
  `MAC_PREFIX` varchar(20) DEFAULT NULL,
  `BRAND` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of probe_brand
-- ----------------------------
INSERT INTO `probe_brand` VALUES ('4C:7C:5F', '苹果6');
INSERT INTO `probe_brand` VALUES ('04:4B:ED', '苹果6ZJW');
INSERT INTO `probe_brand` VALUES ('60:60:1F', '大疆3');
INSERT INTO `probe_brand` VALUES ('B4:0B:44', '锤子');

-- ----------------------------
-- Table structure for probe_uav
-- ----------------------------
DROP TABLE IF EXISTS `probe_uav`;
CREATE TABLE `probe_uav` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` varchar(20) NOT NULL,
  `MAC` varchar(255) DEFAULT NULL,
  `STRENGTH` double DEFAULT NULL,
  `FINDING_TIME` datetime DEFAULT NULL,
  `AREA` tinyint(4) DEFAULT NULL,
  `DISTANCE` double DEFAULT NULL,
  PRIMARY KEY (`ID`,`DEVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of probe_uav
-- ----------------------------
