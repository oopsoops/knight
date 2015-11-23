/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50538
 Source Host           : localhost
 Source Database       : knight

 Target Server Type    : MySQL
 Target Server Version : 50538
 File Encoding         : utf-8

 Date: 11/23/2015 21:17:55 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
