/*
Navicat MySQL Data Transfer

Source Server         : Server
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : fts_client

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-01-06 11:54:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for filescan_history
-- ----------------------------
DROP TABLE IF EXISTS `filescan_history`;
CREATE TABLE `filescan_history` (
  `FILE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` tinytext NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `END_BLOCK` int(11) DEFAULT NULL,
  `CREATE_DATE` varchar(20) NOT NULL,
  UNIQUE KEY `filescan_history_FILE_ID_uindex` (`FILE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filescan_history
-- ----------------------------

-- ----------------------------
-- Table structure for file_list
-- ----------------------------
DROP TABLE IF EXISTS `file_list`;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_list
-- ----------------------------

-- ----------------------------
-- Table structure for fts_duanxin
-- ----------------------------
DROP TABLE IF EXISTS `fts_duanxin`;
CREATE TABLE `fts_duanxin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FULL_NAME` tinytext NOT NULL,
  `SENDER` tinytext NOT NULL,
  `RECEIVER` varchar(200) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `COMMENT` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fts_duanxin
-- ----------------------------

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
-- Table structure for tb_paper
-- ----------------------------
DROP TABLE IF EXISTS `tb_paper`;
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
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paper
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tranparam
-- ----------------------------
DROP TABLE IF EXISTS `tb_tranparam`;
CREATE TABLE `tb_tranparam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NodeID` int(11) DEFAULT NULL,
  `ParamId` varchar(20) DEFAULT NULL,
  `ParamName` varchar(100) DEFAULT NULL,
  `ParamValue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1958 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tranparam
-- ----------------------------
INSERT INTO `tb_tranparam` VALUES ('1924', '3', 'TEMP_DIR', '临时目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\目录配置\\临时目录');
INSERT INTO `tb_tranparam` VALUES ('1925', '3', 'BACK_DIR', '备份目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\目录配置\\备份目录');
INSERT INTO `tb_tranparam` VALUES ('1926', '3', 'MSG_DIR', '短信目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\目录配置\\短信目录');
INSERT INTO `tb_tranparam` VALUES ('1927', '3', 'DOWNLOAD_DIR', '下载目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\目录配置\\下载目录');
INSERT INTO `tb_tranparam` VALUES ('1928', '3', 'REQUEST_DIR', '请求目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\目录配置\\请求目录');
INSERT INTO `tb_tranparam` VALUES ('1929', '4', 'SERVER_IP', '服务器 IP', '61.237.239.139');
INSERT INTO `tb_tranparam` VALUES ('1930', '4', 'SERVER_PORT', '服务器端口', '1028');
INSERT INTO `tb_tranparam` VALUES ('1931', '5', 'BLOCK_SIZE', '文件分块大小（MB）', '1');
INSERT INTO `tb_tranparam` VALUES ('1932', '5', 'THREAD_POOL_SIZE', '线程池大小（个）', '200');
INSERT INTO `tb_tranparam` VALUES ('1933', '5', 'PRIORITY1_WEIGHT', '优先级1权重', '5');
INSERT INTO `tb_tranparam` VALUES ('1934', '5', 'PRIORITY2_WEIGHT', '优先级2权重', '4');
INSERT INTO `tb_tranparam` VALUES ('1935', '5', 'PRIORITY3_WEIGHT', '优先级3权重', '3');
INSERT INTO `tb_tranparam` VALUES ('1936', '5', 'PRIORITY4_WEIGHT', '优先级4权重', '2');
INSERT INTO `tb_tranparam` VALUES ('1937', '5', 'PRIORITY5_WEIGHT', '优先级5权重', '1');
INSERT INTO `tb_tranparam` VALUES ('1938', '5', 'EXPIRE_TIME', '超时时间（毫秒）', '3000');
INSERT INTO `tb_tranparam` VALUES ('1939', '5', 'DATAGRAM_SIZE', '数据包大小（字节）', '1400');
INSERT INTO `tb_tranparam` VALUES ('1940', '14', 'FILETYPE_BINARY', '二进制', '优先级一级');
INSERT INTO `tb_tranparam` VALUES ('1941', '14', 'FILETYPE_IMAGE', '图片', '优先级二级');
INSERT INTO `tb_tranparam` VALUES ('1942', '14', 'FILETYPE_VIDEO', '视频', '优先级三级');
INSERT INTO `tb_tranparam` VALUES ('1943', '13', 'SOURCE_DIR', '源目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\源文件\\轨道几何');
INSERT INTO `tb_tranparam` VALUES ('1944', '13', 'UPLOAD_DIR', '上传目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\上传文件\\轨道几何');
INSERT INTO `tb_tranparam` VALUES ('1945', '15', 'SOURCE_DIR', '源目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\源文件\\信号');
INSERT INTO `tb_tranparam` VALUES ('1946', '15', 'UPLOAD_DIR', '上传目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\上传目录\\信号');
INSERT INTO `tb_tranparam` VALUES ('1947', '16', 'FILETYPE_BINARY', '二进制', '优先级一级');
INSERT INTO `tb_tranparam` VALUES ('1948', '16', 'FILETYPE_IMAGE', '图片', '优先级二级');
INSERT INTO `tb_tranparam` VALUES ('1949', '16', 'FILETYPE_VIDEO', '视频', '优先级四级');
INSERT INTO `tb_tranparam` VALUES ('1950', '5', 'UPLOAD_FILE_COUNT', '上传文件数量（个）', '100');
INSERT INTO `tb_tranparam` VALUES ('1951', '5', 'DOWNLOAD_FILE_COUNT', '下载文件数量（个）', '1');
INSERT INTO `tb_tranparam` VALUES ('1952', '4', 'DEFAULT_MAC', '默认 MAC 地址', '8C16451E969B');
INSERT INTO `tb_tranparam` VALUES ('1953', '17', 'SOURCE_DIR', '源目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\源文件\\通讯');
INSERT INTO `tb_tranparam` VALUES ('1954', '17', 'UPLOAD_DIR', '上传目录', 'D:\\Projects\\FengHuang\\TIELU\\测试\\客户端\\上传目录\\通讯');
INSERT INTO `tb_tranparam` VALUES ('1955', '18', 'FILETYPE_BINARY', '二进制', '优先级一级');
INSERT INTO `tb_tranparam` VALUES ('1956', '18', 'FILETYPE_IMAGE', '图片', '优先级二级');
INSERT INTO `tb_tranparam` VALUES ('1957', '18', 'FILETYPE_VIDEO', '视频', '优先级三级');

-- ----------------------------
-- Table structure for tb_tranparam_tree
-- ----------------------------
DROP TABLE IF EXISTS `tb_tranparam_tree`;
CREATE TABLE `tb_tranparam_tree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(11) DEFAULT NULL,
  `NodeID` int(11) DEFAULT NULL,
  `NodeName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tranparam_tree
-- ----------------------------
INSERT INTO `tb_tranparam_tree` VALUES ('1', '1', '2', '通用配置');
INSERT INTO `tb_tranparam_tree` VALUES ('2', '1', '11', '专业配置');
INSERT INTO `tb_tranparam_tree` VALUES ('3', '2', '3', '目录配置');
INSERT INTO `tb_tranparam_tree` VALUES ('4', '2', '4', '传输配置');
INSERT INTO `tb_tranparam_tree` VALUES ('11', '15', '13', '轨道几何');
INSERT INTO `tb_tranparam_tree` VALUES ('12', '11', '15', '信号');
INSERT INTO `tb_tranparam_tree` VALUES ('13', '11', '17', '轨道几何');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('8', 'admin', 'admin');
