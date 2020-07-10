/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.12(Home)
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 192.168.1.12:3306
 Source Schema         : seata_storage

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 10/07/2020 21:44:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_storage
-- ----------------------------
DROP TABLE IF EXISTS `t_storage`;
CREATE TABLE `t_storage` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(11) DEFAULT NULL COMMENT '产品id',
  `total` int(11) DEFAULT NULL COMMENT '总库存',
  `used` int(11) DEFAULT NULL COMMENT '已用库存',
  `residue` int(11) DEFAULT NULL COMMENT '剩余库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_storage
-- ----------------------------
BEGIN;
INSERT INTO `t_storage` VALUES (1, 1, 100, 20, 80);
COMMIT;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
