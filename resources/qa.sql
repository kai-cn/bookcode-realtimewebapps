/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Version : 50624
 Source Host           : localhost
 Source Database       : qa

 Target Server Version : 50624
 File Encoding         : utf-8

 Date: 08/06/2015 17:25:40 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `presenters`
-- ----------------------------
DROP TABLE IF EXISTS `presenters`;
CREATE TABLE `presenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `question_votes`
-- ----------------------------
DROP TABLE IF EXISTS `question_votes`;
CREATE TABLE `question_votes` (
  `question_id` int(11) NOT NULL,
  `vote_count` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `is_answered` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `room_owners`
-- ----------------------------
DROP TABLE IF EXISTS `room_owners`;
CREATE TABLE `room_owners` (
  `room_id` int(11) NOT NULL,
  `presenter_id` int(11) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `rooms`
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
