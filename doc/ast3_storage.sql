/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : ast3_storage

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2015-06-12 07:52:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `directory_info`
-- ----------------------------
DROP TABLE IF EXISTS `directory_info`;
CREATE TABLE `directory_info` (
  `directory_id` int(11) NOT NULL AUTO_INCREMENT,
  `directory_name` varchar(255) NOT NULL,
  `disk_uuid` varchar(255) NOT NULL,
  `disk_name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `directory_size` double NOT NULL,
  `time` datetime NOT NULL,
  `recent_use_time` datetime NOT NULL,
  `permission` int(11) NOT NULL,
  `accessed_time` int(11) NOT NULL,
  `file_number` int(11) NOT NULL,
  PRIMARY KEY (`directory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `disk_info`
-- ----------------------------
DROP TABLE IF EXISTS `disk_info`;
CREATE TABLE `disk_info` (
  `disk_id` int(11) NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(255) NOT NULL,
  `disk_uuid` varchar(255) NOT NULL,
  `disk_type` varchar(255) NOT NULL,
  `disk_capacity` double NOT NULL,
  `disk_used` double NOT NULL,
  `recent_use_time` datetime NOT NULL,
  `permission` int(11) NOT NULL,
  `disk_status` int(11) NOT NULL,
  PRIMARY KEY (`disk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `file_info`
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `disk_uuid` varchar(255) NOT NULL,
  `directory_name` varchar(255) NOT NULL,
  `disk_name` varchar(255) NOT NULL,
  `md5` varchar(255) NOT NULL,
  `file_size` double NOT NULL,
  `ra_val` double NOT NULL,
  `dec_val` double NOT NULL,
  `time` datetime NOT NULL,
  `recent_use_time` datetime NOT NULL,
  `permission` int(11) NOT NULL,
  `file_type` int(11) NOT NULL,
  `accessed_time` int(11) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201601 DEFAULT CHARSET=utf8;
