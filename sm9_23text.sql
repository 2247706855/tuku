/*
Navicat MySQL Data Transfer

Source Server         : my_sql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : ssm9_23text

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-10-10 14:01:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Permission_name` varchar(255) DEFAULT NULL,
  `p_status` int(255) DEFAULT '0',
  `p_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '信息管理', '0', '0', null);
INSERT INTO `permission` VALUES ('2', '用户管理', '0', '0', null);
INSERT INTO `permission` VALUES ('3', '资金管理', '0', '0', '');
INSERT INTO `permission` VALUES ('4', '管理员管理', '0', '0', null);
INSERT INTO `permission` VALUES ('5', '查看资金', '0', '3', null);
INSERT INTO `permission` VALUES ('6', '查询用户', '0', '2', null);
INSERT INTO `permission` VALUES ('7', '查询节点', '0', '4', '9999');
INSERT INTO `permission` VALUES ('8', '添加信息', '0', '1', '0000');
INSERT INTO `permission` VALUES ('9', '添加用户', '0', '2', null);
INSERT INTO `permission` VALUES ('10', '创建链接', '0', '4', '');
INSERT INTO `permission` VALUES ('11', '角色用户表', '0', '4', null);
INSERT INTO `permission` VALUES ('12', 'oooo', '0', '2', 'llad');
INSERT INTO `permission` VALUES ('13', '娃娃大无多', '0', '3', 'wwww');
INSERT INTO `permission` VALUES ('14', '你好', '0', '1', 'oooo');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员');
INSERT INTO `role` VALUES ('2', '管理员');
INSERT INTO `role` VALUES ('3', '经理');
INSERT INTO `role` VALUES ('4', '销售');

-- ----------------------------
-- Table structure for role_p
-- ----------------------------
DROP TABLE IF EXISTS `role_p`;
CREATE TABLE `role_p` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `p_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_p
-- ----------------------------
INSERT INTO `role_p` VALUES ('1', '1', '1');
INSERT INTO `role_p` VALUES ('2', '1', '2');
INSERT INTO `role_p` VALUES ('3', '1', '3');
INSERT INTO `role_p` VALUES ('4', '1', '4');
INSERT INTO `role_p` VALUES ('5', '2', '2');
INSERT INTO `role_p` VALUES ('6', '2', '3');
INSERT INTO `role_p` VALUES ('7', '2', '1');
INSERT INTO `role_p` VALUES ('8', '3', '2');
INSERT INTO `role_p` VALUES ('9', '5', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  `user_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '大圣', '123', '111', '0', '1', '2019-09-23 19:57:25');
INSERT INTO `user` VALUES ('2', '卢本伟', '1234', '333', '3', '2', '2019-09-24 20:35:05');
INSERT INTO `user` VALUES ('3', '嚣张', '120', '123123', '1', '2', '2019-09-25 20:21:24');
INSERT INTO `user` VALUES ('4', 'UZI', '125', '111', '0', '2', '2019-09-25 20:24:29');
INSERT INTO `user` VALUES ('5', '小飞机', '666', '888', '0', '3', '2019-09-27 16:05:25');
INSERT INTO `user` VALUES ('6', '小智``', '1200', '111', '0', '3', '2019-09-26 21:02:03');
INSERT INTO `user` VALUES ('7', '1231', '21321', '123', '0', '2', '2019-09-26 21:06:43');
INSERT INTO `user` VALUES ('8', '我打啊', '1990', '111', '0', '3', '2019-09-30 09:01:41');
