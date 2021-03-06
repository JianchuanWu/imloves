/*
Navicat MySQL Data Transfer

Source Server         : MINE
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : imloves

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-31 22:11:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ROLE_USER');
INSERT INTO `sys_role` VALUES ('2', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户数据编号',
  `open_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '微信openId',
  `username` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '用户手机号',
  `sex` int(3) DEFAULT '0' COMMENT '性别（0：未填写，1：男，2：女）',
  `state` int(3) DEFAULT '1' COMMENT '状态（0：冻结，1：可用）',
  `city` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '用户所在城市',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '中间表数据编号',
  `USER_ID` int(11) NOT NULL COMMENT '用户数据编号',
  `ROLE_ID` int(11) NOT NULL COMMENT '角色数据编号',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('2', '1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '1', '2');
INSERT INTO `sys_user_role` VALUES ('4', '2', '1');
INSERT INTO `sys_user_role` VALUES ('5', '3', '1');
INSERT INTO `sys_user_role` VALUES ('6', '4', '1');
INSERT INTO `sys_user_role` VALUES ('7', '5', '1');
INSERT INTO `sys_user_role` VALUES ('8', '6', '1');
INSERT INTO `sys_user_role` VALUES ('9', '7', '1');
INSERT INTO `sys_user_role` VALUES ('10', '8', '1');
