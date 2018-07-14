/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : hmgj

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 14/07/2018 16:13:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apiurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `comment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `apiurl`(`apiurl`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES (1, '/jmlist/getjmlist', '获取前台提交的加盟信息');
INSERT INTO `api` VALUES (2, '/jmlist/createjmlist', '插入前台页面提交的加盟信息');
INSERT INTO `api` VALUES (3, '/jmuser/getjmuser', '后台新增的用户加盟信息');
INSERT INTO `api` VALUES (4, '/jmuser/createjmuser', '后台新增加盟用户账号密码');
INSERT INTO `api` VALUES (5, '/jmuser/deletejmuserbyid', '删除加盟用户信息');
INSERT INTO `api` VALUES (6, '/role/getrole', '获得角色');
INSERT INTO `api` VALUES (7, '/role/createrole', '新增角色');
INSERT INTO `api` VALUES (8, '/role/deleterolebyid', '删除角色');
INSERT INTO `api` VALUES (9, '/api/getapi', '获得api路由');
INSERT INTO `api` VALUES (10, '/api/createapi', '创建api路由');
INSERT INTO `api` VALUES (11, '/api/deleteapibyid', '删除api路由');
INSERT INTO `api` VALUES (12, '/permission/getpermissionbyid', '获得用户权限');
INSERT INTO `api` VALUES (13, '/news/getnews', '获得新闻');
INSERT INTO `api` VALUES (14, '/news/createnews', '新增新闻');
INSERT INTO `api` VALUES (15, '/news/deletenewsbyid', '删除新闻');
INSERT INTO `api` VALUES (16, '/news/updatenews', '更新新闻');
INSERT INTO `api` VALUES (17, '/file/getallfile', '获得所有文件信息');
INSERT INTO `api` VALUES (18, '/file/createfile', '上传文件');
INSERT INTO `api` VALUES (19, '/file/deletefilebyid', '删除文件');
INSERT INTO `api` VALUES (20, '/file/updatefile', '修改文件信息');
INSERT INTO `api` VALUES (21, '/static/picture', '存放文件路径');
INSERT INTO `api` VALUES (22, '/permissionlist/getapibyroleid', '返回角色可操作(已拥有)的一组权限');
INSERT INTO `api` VALUES (23, '/permissionlist/createapitorole', '增加角色权限');
INSERT INTO `api` VALUES (24, '/permissionlist/deleteapitorole', '删除角色权限');
INSERT INTO `api` VALUES (25, '/permissionlist/updateapitorole', '修改角色权限');
INSERT INTO `api` VALUES (26, '/permission/createusertorole', '添加用户角色');
INSERT INTO `api` VALUES (27, '/permission/deleteusertorole', '删除用户角色');
INSERT INTO `api` VALUES (28, '/permission/updateusertorole', '修改用户角色');
INSERT INTO `api` VALUES (29, '/file/getfilepath', '获得上传的文件/图片路径');
INSERT INTO `api` VALUES (30, '/news/getnewsbypage', '新闻,分页');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `describe` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (3, '/static/picture/20180711162437.jpg', '测试');

-- ----------------------------
-- Table structure for jmlist
-- ----------------------------
DROP TABLE IF EXISTS `jmlist`;
CREATE TABLE `jmlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jm_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jmlist
-- ----------------------------
INSERT INTO `jmlist` VALUES (1, '加盟店1', '123@qq.com', '15869190407', '你好，我想加盟');
INSERT INTO `jmlist` VALUES (2, '加盟店2', '666@qq.com', '15869190407', '你好，我不想加盟');
INSERT INTO `jmlist` VALUES (4, '加盟店4', '', '', '');

-- ----------------------------
-- Table structure for jmuser
-- ----------------------------
DROP TABLE IF EXISTS `jmuser`;
CREATE TABLE `jmuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jm_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jmuser
-- ----------------------------
INSERT INTO `jmuser` VALUES (1, 'admin', '7c6fa7db2f', '', '');
INSERT INTO `jmuser` VALUES (2, 'user', '6878afc0', '', '');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `publish_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `perview_picture` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdelete` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '标题1', '', '', NULL, '', '', 0);
INSERT INTO `news` VALUES (2, '标题1', '', '', NULL, '', '', 0);
INSERT INTO `news` VALUES (3, '标题1', '', '', NULL, '', '', 0);
INSERT INTO `news` VALUES (4, '标题1', '', '', NULL, '', '', 0);
INSERT INTO `news` VALUES (5, '标题1', '1', 'admin', '测试', '1', '1', 1);
INSERT INTO `news` VALUES (6, '标题1', '', '', NULL, '', '', 0);
INSERT INTO `news` VALUES (7, '标题1', '', '', NULL, '', '', 0);
INSERT INTO `news` VALUES (8, '', '', '', '', '', '', 0);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmuser_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 1, 1);
INSERT INTO `permission` VALUES (2, 2, 3);

-- ----------------------------
-- Table structure for permissionlist
-- ----------------------------
DROP TABLE IF EXISTS `permissionlist`;
CREATE TABLE `permissionlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `api_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissionlist
-- ----------------------------
INSERT INTO `permissionlist` VALUES (1, 1, 1);
INSERT INTO `permissionlist` VALUES (2, 1, 2);
INSERT INTO `permissionlist` VALUES (3, 1, 3);
INSERT INTO `permissionlist` VALUES (4, 1, 4);
INSERT INTO `permissionlist` VALUES (5, 1, 5);
INSERT INTO `permissionlist` VALUES (6, 1, 6);
INSERT INTO `permissionlist` VALUES (7, 1, 7);
INSERT INTO `permissionlist` VALUES (8, 1, 8);
INSERT INTO `permissionlist` VALUES (9, 1, 9);
INSERT INTO `permissionlist` VALUES (10, 1, 10);
INSERT INTO `permissionlist` VALUES (11, 1, 11);
INSERT INTO `permissionlist` VALUES (12, 1, 12);
INSERT INTO `permissionlist` VALUES (13, 1, 13);
INSERT INTO `permissionlist` VALUES (14, 1, 14);
INSERT INTO `permissionlist` VALUES (15, 1, 15);
INSERT INTO `permissionlist` VALUES (16, 1, 16);
INSERT INTO `permissionlist` VALUES (17, 1, 17);
INSERT INTO `permissionlist` VALUES (18, 1, 18);
INSERT INTO `permissionlist` VALUES (19, 1, 19);
INSERT INTO `permissionlist` VALUES (20, 1, 20);
INSERT INTO `permissionlist` VALUES (21, 1, 21);
INSERT INTO `permissionlist` VALUES (22, 1, 22);
INSERT INTO `permissionlist` VALUES (23, 1, 23);
INSERT INTO `permissionlist` VALUES (24, 1, 24);
INSERT INTO `permissionlist` VALUES (25, 1, 25);
INSERT INTO `permissionlist` VALUES (26, 1, 26);
INSERT INTO `permissionlist` VALUES (27, 1, 27);
INSERT INTO `permissionlist` VALUES (28, 1, 28);
INSERT INTO `permissionlist` VALUES (29, 1, 29);
INSERT INTO `permissionlist` VALUES (30, 1, 30);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员');
INSERT INTO `role` VALUES (2, '普通管理员');
INSERT INTO `role` VALUES (3, '普通用户');

SET FOREIGN_KEY_CHECKS = 1;
