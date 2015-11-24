/*
 Navicat MySQL Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50538
 Source Host           : localhost
 Source Database       : knight

 Target Server Type    : MySQL
 Target Server Version : 50538
 File Encoding         : utf-8

 Date: 11/24/2015 21:52:46 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `kn_activity`
-- ----------------------------
DROP TABLE IF EXISTS `kn_activity`;
CREATE TABLE `kn_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `edittime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `kn_club`
-- ----------------------------
DROP TABLE IF EXISTS `kn_club`;
CREATE TABLE `kn_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clubid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationx` float NOT NULL DEFAULT '0',
  `locationy` float NOT NULL DEFAULT '0',
  `edittime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `kn_clubmember`
-- ----------------------------
DROP TABLE IF EXISTS `kn_clubmember`;
CREATE TABLE `kn_clubmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clubid` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `kn_comment`
-- ----------------------------
DROP TABLE IF EXISTS `kn_comment`;
CREATE TABLE `kn_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moid` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `replayid` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `kn_contact`
-- ----------------------------
DROP TABLE IF EXISTS `kn_contact`;
CREATE TABLE `kn_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid1` varchar(255) NOT NULL,
  `userid2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `kn_member`
-- ----------------------------
DROP TABLE IF EXISTS `kn_member`;
CREATE TABLE `kn_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `loginname` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `edittime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `kn_member`
-- ----------------------------
BEGIN;
INSERT INTO `kn_member` VALUES ('1', '40c509c87ca0f3439abec216e1d8ff15', 'test', 'test nick', 'test real', 'e10adc3949ba59abbe56e057f20f883e', 'test@qq.com', '13112345678', '1', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `kn_moment`
-- ----------------------------
DROP TABLE IF EXISTS `kn_moment`;
CREATE TABLE `kn_moment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  `edittime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `kn_token`
-- ----------------------------
DROP TABLE IF EXISTS `kn_token`;
CREATE TABLE `kn_token` (
  `userid` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiredtime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
