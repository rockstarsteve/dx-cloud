/*
 Navicat Premium Data Transfer

 Source Server         : localmysql
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : dx_cloud

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 10/12/2018 01:17:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  `authentication_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `authentication` int(11) DEFAULT NULL,
  `refresh_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals`  (
  `userid` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `clientid` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `expiresat` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `lastmodifiedat` timestamp(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resource_ids` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `client_secret` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `authorized_grant_types` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `authorities` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `autoapprove` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('test_client', NULL, '$2a$10$2szDKjvKHJCWE6YQNznogOeQF3USZHmCYj1fG7YbfK.vnTgNKLzri', 'read', 'password,refresh_token', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  `authentication_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code`  (
  `code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `authentication` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  `authentication` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES (101, 'user_manager:btn_add', 'button', '新增', '/users', 'POST', '新增用户功能', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `resources` VALUES (102, 'user_manager:btn_edit', 'button', '编辑', '/users', 'PUT', '编辑用户功能', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `resources` VALUES (103, 'user_manager:btn_del', 'button', '删除', '/users/{id}', 'DELETE', '删除用户功能', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `resources` VALUES (104, 'user_manager:view', 'url', '查看', '/users/{id}', 'GET', '查询用户功能', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `resources` VALUES (105, 'user_manager:view', 'url', '查看', '/hello', 'GET', '查询用户功能', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (101, 'ADMIN', '超级管理员', '公司IT总负责人', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles` VALUES (102, 'FIN', '财务', '财务', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles` VALUES (103, 'IT', 'IT', 'IT角色', '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');

-- ----------------------------
-- Table structure for roles_resources_relation
-- ----------------------------
DROP TABLE IF EXISTS `roles_resources_relation`;
CREATE TABLE `roles_resources_relation`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_resources_relation
-- ----------------------------
INSERT INTO `roles_resources_relation` VALUES (101, 101, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (102, 102, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (103, 103, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (104, 104, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (105, 104, 102, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (106, 101, 103, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (107, 102, 103, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (108, 103, 103, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (109, 104, 103, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `roles_resources_relation` VALUES (110, 105, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `account_non_expired` tinyint(1) DEFAULT NULL,
  `credentials_non_expired` tinyint(1) DEFAULT NULL,
  `account_non_locked` tinyint(1) DEFAULT NULL,
  `created_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `ux_users_username`(`username`) USING BTREE,
  UNIQUE INDEX `ux_users_mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (101, 'admin', '$2a$10$vYA9wKn/hVGOtwQw2eHiceeIGNBdfLYpDmbzHgBSVmOfHXPH4iYdS', '超级管理员', '', 1, 1, 1, 1, '2018-12-08 14:07:04', '2018-12-08 14:07:04', 'system', 'system');
INSERT INTO `users` VALUES (102, 'zhoutaoo', '$2a$10$vYA9wKn/hVGOtwQw2eHiceeIGNBdfLYpDmbzHgBSVmOfHXPH4iYdS', '周涛', '15619841000', 1, 1, 1, 1, '2018-12-08 14:07:04', '2018-12-08 14:07:04', 'system', 'system');

-- ----------------------------
-- Table structure for users_roles_relation
-- ----------------------------
DROP TABLE IF EXISTS `users_roles_relation`;
CREATE TABLE `users_roles_relation`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_roles_relation
-- ----------------------------
INSERT INTO `users_roles_relation` VALUES (101, 101, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `users_roles_relation` VALUES (102, 102, 101, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');
INSERT INTO `users_roles_relation` VALUES (103, 102, 103, '2018-12-08 14:07:36', '2018-12-08 14:07:36', 'system', 'system');

SET FOREIGN_KEY_CHECKS = 1;
