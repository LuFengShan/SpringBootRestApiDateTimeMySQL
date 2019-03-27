/*
 Navicat Premium Data Transfer

 Source Server         : gaugnxu
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : gkzdb

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 27/03/2019 16:01:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for datetimemodel
-- ----------------------------
DROP TABLE IF EXISTS `datetimemodel`;
CREATE TABLE `datetimemodel`  (
  `id` bigint(20) NOT NULL,
  `date` date NULL DEFAULT NULL,
  `datetime` datetime(0) NULL DEFAULT NULL,
  `datetimewithzone` datetime(0) NULL DEFAULT NULL,
  `defaultformatdatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datetimemodel
-- ----------------------------
INSERT INTO `datetimemodel` VALUES (1, '2019-03-27', '2019-03-27 11:23:16', '2019-03-27 11:23:19', '2019-03-27 11:23:21');
INSERT INTO `datetimemodel` VALUES (2, '2019-11-27', '2019-11-27 11:23:16', '2019-11-27 11:23:19', '2019-11-27 11:23:21');
INSERT INTO `datetimemodel` VALUES (3, '2019-04-27', '2019-04-27 11:23:16', '2019-04-27 11:23:19', '2019-04-27 11:23:21');
INSERT INTO `datetimemodel` VALUES (4, '2019-05-27', '2019-05-27 11:23:16', '2019-05-27 11:23:19', '2019-05-27 11:23:21');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (5);

SET FOREIGN_KEY_CHECKS = 1;
