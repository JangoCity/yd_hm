/*
 Navicat MySQL Data Transfer

 Source Server         : lu
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : hmgj

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 01/08/2018 20:32:24
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
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES (2, '/jmlist/createjmlist', '插入前台页面提交的加盟信息');
INSERT INTO `api` VALUES (3, '/jmuser/getjmuser', '后台新增的用户加盟信息');
INSERT INTO `api` VALUES (4, '/jmuser/createjmuser', '后台新增加盟用户账号密码');
INSERT INTO `api` VALUES (5, '/jmuser/deletejmuserbyid', '删除加盟用户信息');
INSERT INTO `api` VALUES (12, '/permission/getpermissionbyid', '获得用户权限');
INSERT INTO `api` VALUES (14, '/news/createnews', '新增新闻');
INSERT INTO `api` VALUES (15, '/news/deletenewsbyid', '删除新闻');
INSERT INTO `api` VALUES (16, '/news/updatenews', '更新新闻');
INSERT INTO `api` VALUES (18, '/file/createfile', '上传文件');
INSERT INTO `api` VALUES (19, '/file/deletefilebyid', '删除文件');
INSERT INTO `api` VALUES (20, '/file/updatefile', '修改文件信息');
INSERT INTO `api` VALUES (21, '/static/picture', '存放文件路径');
INSERT INTO `api` VALUES (22, '/permissionlist/getapibyroleid', '返回角色可操作(已拥有)的一组权限');
INSERT INTO `api` VALUES (28, '/permission/updateusertorole', '修改用户角色');
INSERT INTO `api` VALUES (33, '/product/createproduct', '新增产品');
INSERT INTO `api` VALUES (34, '/product/updateproduct', '更新产品');
INSERT INTO `api` VALUES (35, '/product/deleteproductbyid', '删除产品');
INSERT INTO `api` VALUES (36, '/product/searchproduct', '产品搜索(搜索功能)');
INSERT INTO `api` VALUES (37, '/jmuser/updatejmuserbyid', '更新加盟用户账号密码');
INSERT INTO `api` VALUES (38, '/summary/createsummary', '创建账单数据');
INSERT INTO `api` VALUES (39, '/summary/updatesummary', '修改账单数据');
INSERT INTO `api` VALUES (40, '/summary/deletesummarybyid', '删除账单');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `describe` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, '/static/picture/20180725101847.png', '');
INSERT INTO `file` VALUES (2, '/static/picture/20180725101826.png', '');
INSERT INTO `file` VALUES (5, '/static/picture/20180724161656.jpg', '');
INSERT INTO `file` VALUES (6, '/static/picture/20180724163918.jpg', '');
INSERT INTO `file` VALUES (7, '/static/picture/20180724173703.jpg', '');
INSERT INTO `file` VALUES (8, '/static/picture/20180724174429.jpg', '');
INSERT INTO `file` VALUES (9, '/static/picture/20180724174441.jpg', '');
INSERT INTO `file` VALUES (10, '/static/picture/20180724190612.jpg', '');
INSERT INTO `file` VALUES (11, '/static/picture/20180724190849.jpg', '');
INSERT INTO `file` VALUES (12, '/static/picture/20180724190904.jpg', '');
INSERT INTO `file` VALUES (13, '/static/picture/20180724192621.jpg', '');
INSERT INTO `file` VALUES (14, '/static/picture/20180724192837.jpg', '');
INSERT INTO `file` VALUES (15, '/static/picture/20180724192933.jpg', '');
INSERT INTO `file` VALUES (16, '/static/picture/20180724193305.jpg', '');
INSERT INTO `file` VALUES (17, '/static/picture/20180724193356.jpg', '');
INSERT INTO `file` VALUES (18, '/static/picture/20180724193418.jpg', '');
INSERT INTO `file` VALUES (19, '/static/picture/20180724194206.jpg', '');
INSERT INTO `file` VALUES (20, '/static/picture/20180724194216.jpg', '');
INSERT INTO `file` VALUES (21, '/static/picture/20180724195937.jpg', '');
INSERT INTO `file` VALUES (22, '/static/picture/20180724202001.mp4', '');
INSERT INTO `file` VALUES (23, '/static/picture/20180724202031.mp4', '');
INSERT INTO `file` VALUES (24, '/static/picture/20180724203758.mp4', '');
INSERT INTO `file` VALUES (25, 'asdfas', '');
INSERT INTO `file` VALUES (26, '/static/picture/20180724203912.mp4', '');
INSERT INTO `file` VALUES (27, '/static/picture/20180724204116.jpg', '');
INSERT INTO `file` VALUES (28, '/static/picture/20180724204152.jpg', '');
INSERT INTO `file` VALUES (29, '/static/picture/20180724204243.jpg', '');
INSERT INTO `file` VALUES (30, '/static/picture/20180724204348.jpg', '');
INSERT INTO `file` VALUES (31, '/static/picture/20180724204832.jpg', '');
INSERT INTO `file` VALUES (32, '/static/picture/20180724204851.jpg', '');
INSERT INTO `file` VALUES (33, '/static/picture/20180724205029.jpg', '');
INSERT INTO `file` VALUES (34, '/static/picture/20180724205057.jpg', '');
INSERT INTO `file` VALUES (35, '/static/picture/20180724205531.jpg', '');
INSERT INTO `file` VALUES (36, '/static/picture/20180724205548.jpg', '');
INSERT INTO `file` VALUES (37, '/static/picture/20180724205655.jpg', '');
INSERT INTO `file` VALUES (38, '/static/picture/20180724210149.jpg', '');
INSERT INTO `file` VALUES (39, '/static/picture/20180724210255.jpg', '');
INSERT INTO `file` VALUES (40, '/static/picture/20180724210332.jpg', '');
INSERT INTO `file` VALUES (41, '/static/picture/20180724210507.jpg', '');
INSERT INTO `file` VALUES (42, '/static/picture/20180724210653.jpg', '');
INSERT INTO `file` VALUES (43, '/static/picture/20180724210727.jpg', '');
INSERT INTO `file` VALUES (44, '/static/picture/20180724210807.jpg', '');
INSERT INTO `file` VALUES (45, '/static/picture/20180724211420.jpg', '');
INSERT INTO `file` VALUES (46, '/static/picture/20180724211512.jpg', '');
INSERT INTO `file` VALUES (47, '/static/picture/20180724211604.jpg', '');
INSERT INTO `file` VALUES (48, '/static/picture/20180724211947.jpg', '');
INSERT INTO `file` VALUES (49, '/static/picture/20180724212046.jpg', '');
INSERT INTO `file` VALUES (50, '/static/picture/20180724212134.jpg', '');
INSERT INTO `file` VALUES (51, '/static/picture/20180724212331.jpg', '');
INSERT INTO `file` VALUES (52, '/static/picture/20180724212453.jpg', '');
INSERT INTO `file` VALUES (53, '/static/picture/20180724213605.jpg', '');
INSERT INTO `file` VALUES (54, '/static/picture/20180724213644.jpg', '');
INSERT INTO `file` VALUES (55, '/static/picture/20180724213705.jpg', '');
INSERT INTO `file` VALUES (56, '/static/picture/20180724214204.jpg', '');
INSERT INTO `file` VALUES (57, '/static/picture/20180724214245.jpg', '');
INSERT INTO `file` VALUES (58, '/static/picture/20180724214323.jpg', '');
INSERT INTO `file` VALUES (59, '/static/picture/20180724214336.jpg', '');
INSERT INTO `file` VALUES (60, '/static/picture/20180724215458.jpg', '');
INSERT INTO `file` VALUES (61, '/static/picture/20180724215607.jpg', '');
INSERT INTO `file` VALUES (62, '/static/picture/20180724215709.jpg', '');
INSERT INTO `file` VALUES (63, '/static/picture/20180724215914.jpg', '');
INSERT INTO `file` VALUES (64, '/static/picture/20180724220007.jpg', '');
INSERT INTO `file` VALUES (65, '/static/picture/20180724220301.jpg', '');
INSERT INTO `file` VALUES (66, '/static/picture/20180725094933.png', '');
INSERT INTO `file` VALUES (67, '/static/picture/20180725095142.gz', '');
INSERT INTO `file` VALUES (68, '/static/picture/20180725095221.png', '');
INSERT INTO `file` VALUES (69, '/static/picture/20180725095300.png', '');
INSERT INTO `file` VALUES (70, '/static/picture/20180725100057.png', '');
INSERT INTO `file` VALUES (71, '/static/picture/20180725100314.png', '');
INSERT INTO `file` VALUES (72, '/static/picture/20180725100520.png', '');
INSERT INTO `file` VALUES (73, '/static/picture/20180725100654.png', '');
INSERT INTO `file` VALUES (74, '/static/picture/20180725102307.jpg', '');
INSERT INTO `file` VALUES (75, '/static/picture/20180725102437.jpg', '');
INSERT INTO `file` VALUES (76, '/static/picture/20180731171219.jpg', '');
INSERT INTO `file` VALUES (77, '/static/picture/20180731172821.jpg', '');
INSERT INTO `file` VALUES (78, '/static/picture/20180731172903.jpg', '');
INSERT INTO `file` VALUES (79, '/static/picture/20180731172946.jpg', '');

-- ----------------------------
-- Table structure for jmlist
-- ----------------------------
DROP TABLE IF EXISTS `jmlist`;
CREATE TABLE `jmlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jm_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_place` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jm_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jmlist
-- ----------------------------
INSERT INTO `jmlist` VALUES (1, '加盟店1', '123@qq.com', '15869190407', '', '你好，我想加盟');
INSERT INTO `jmlist` VALUES (2, '加盟店2', '666@qq.com', '15869190407', '', '你好，我不想加盟');
INSERT INTO `jmlist` VALUES (4, '加盟店4', '', '', '', '');
INSERT INTO `jmlist` VALUES (5, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (6, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (7, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (8, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (9, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (10, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (11, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (12, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (13, '13123', '12312', '123123', '12312', '123123');
INSERT INTO `jmlist` VALUES (14, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (15, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (16, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (17, '12312', '12312', '12312', '123123', '123123');
INSERT INTO `jmlist` VALUES (18, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (19, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (20, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (21, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (22, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (23, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (24, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (25, '12312', '123', '12312', '123', '123');
INSERT INTO `jmlist` VALUES (26, '12312', '123', '12312', '123', '123');
INSERT INTO `jmlist` VALUES (27, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (28, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (29, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (30, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (31, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (32, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (33, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (34, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (35, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (36, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (37, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (38, '', '', '', '', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jmuser
-- ----------------------------
INSERT INTO `jmuser` VALUES (1, 'admin', '7c6fa7db2f2e5bc8', 'admin@admin.com', '13111111111');
INSERT INTO `jmuser` VALUES (2, 'hmgj', '7566add8702d5a', '1231@qq.com', '13111111111');
INSERT INTO `jmuser` VALUES (17, '13888888888', '2c38f28a792751c3635064', 'fsadadfsds@qq.com', '13111111111');
INSERT INTO `jmuser` VALUES (18, 'AAA', '2c39f983732c58c968596f', 'fsadadfsds@qq.com', '15869190407');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '分类',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `publish_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `perview_picture` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdelete` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '标题1', '公司新闻', '', NULL, '', '', 1);
INSERT INTO `news` VALUES (2, '标题2', '公司新闻', '', NULL, '', '', 1);
INSERT INTO `news` VALUES (3, '标题3', '公司新闻', '', NULL, '', '', 1);
INSERT INTO `news` VALUES (4, '', '', '', '<p></p>', '2018-07-24 11:02:19', '', 1);
INSERT INTO `news` VALUES (5, '标题5', '行业新闻', 'admin', '测试', '1', '1', 1);
INSERT INTO `news` VALUES (6, '省级重点动画与数字技术实验教学示范中心', '公司新闻', '12312', '<p>1231231</p>', '2018-07-24 11:07:36', '', 1);
INSERT INTO `news` VALUES (7, '标题7', '美容知识', '', NULL, '', '', 1);
INSERT INTO `news` VALUES (8, '标题8', '美容知识', '', '', '', '', 1);
INSERT INTO `news` VALUES (9, '省级重点动画与数字技术实验教学示范中心', '2', 'user', '<p>123123</p>', '2018-07-24 11:13:55', '', 1);
INSERT INTO `news` VALUES (10, '1231', '3', 'nmc', '<p>asdasd</p>', '2018-07-24 11:14:22', '', 1);
INSERT INTO `news` VALUES (11, '=============', '2', '12312', '<p>asdasd</p>', '2018-07-24 11:14:45', '', 1);
INSERT INTO `news` VALUES (12, '12dasd', '2', 'asdasd', '<p>asdasd</p>', '2018-07-24 11:15:03', '', 1);
INSERT INTO `news` VALUES (13, 'ASdasd', '2', 'asdasd', '<p>asd</p>', '2018-07-24 11:15:13', '', 1);
INSERT INTO `news` VALUES (14, 'asdasd', '3', 'asdasd', '<p>asdasd</p>', '2018-07-24 11:15:23', 'asdasd', 1);
INSERT INTO `news` VALUES (15, 'ASAasd', '2', 'asdasd', '<p>asdasd</p>', '2018-07-24 11:15:36', 'asdasd', 1);
INSERT INTO `news` VALUES (16, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:16', '', 1);
INSERT INTO `news` VALUES (17, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:17', '', 1);
INSERT INTO `news` VALUES (18, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:18', '', 1);
INSERT INTO `news` VALUES (19, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:18', '', 1);
INSERT INTO `news` VALUES (20, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:18', '', 1);
INSERT INTO `news` VALUES (21, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:18', '', 1);
INSERT INTO `news` VALUES (22, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:18', '', 1);
INSERT INTO `news` VALUES (23, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:18', '', 1);
INSERT INTO `news` VALUES (24, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:19', '', 1);
INSERT INTO `news` VALUES (25, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:19', '', 1);
INSERT INTO `news` VALUES (26, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:20', '', 1);
INSERT INTO `news` VALUES (27, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:20', '', 1);
INSERT INTO `news` VALUES (28, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:20', '', 1);
INSERT INTO `news` VALUES (29, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:20', '', 1);
INSERT INTO `news` VALUES (30, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:20', '', 1);
INSERT INTO `news` VALUES (31, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:21', '', 1);
INSERT INTO `news` VALUES (32, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:21', '', 1);
INSERT INTO `news` VALUES (33, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:21', '', 1);
INSERT INTO `news` VALUES (34, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:21', '', 1);
INSERT INTO `news` VALUES (35, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:22', '', 1);
INSERT INTO `news` VALUES (36, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:22', '', 1);
INSERT INTO `news` VALUES (37, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:22', '', 1);
INSERT INTO `news` VALUES (38, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:22', '', 1);
INSERT INTO `news` VALUES (39, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:22', '', 1);
INSERT INTO `news` VALUES (40, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:22', '', 1);
INSERT INTO `news` VALUES (41, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:23', '', 1);
INSERT INTO `news` VALUES (42, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:23', '', 1);
INSERT INTO `news` VALUES (43, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:23', '', 1);
INSERT INTO `news` VALUES (44, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:23', '', 1);
INSERT INTO `news` VALUES (45, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:24', '', 1);
INSERT INTO `news` VALUES (46, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:24', '', 1);
INSERT INTO `news` VALUES (47, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:24', '', 1);
INSERT INTO `news` VALUES (48, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:25', '', 1);
INSERT INTO `news` VALUES (49, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:25', '', 1);
INSERT INTO `news` VALUES (50, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:25', '', 1);
INSERT INTO `news` VALUES (51, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:25', '', 1);
INSERT INTO `news` VALUES (52, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:25', '', 1);
INSERT INTO `news` VALUES (53, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:26', '', 1);
INSERT INTO `news` VALUES (54, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:26', '', 1);
INSERT INTO `news` VALUES (55, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:26', '', 1);
INSERT INTO `news` VALUES (56, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:26', '', 1);
INSERT INTO `news` VALUES (57, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:26', '', 1);
INSERT INTO `news` VALUES (58, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:27', '', 1);
INSERT INTO `news` VALUES (59, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:27', '', 1);
INSERT INTO `news` VALUES (60, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:27', '', 1);
INSERT INTO `news` VALUES (61, '1231', '1', '12312', '<p>waweqwe</p>', '2018-07-24 11:16:27', '', 1);
INSERT INTO `news` VALUES (62, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:45', '', 1);
INSERT INTO `news` VALUES (63, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:49', '', 1);
INSERT INTO `news` VALUES (64, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:50', '', 1);
INSERT INTO `news` VALUES (65, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:51', '', 1);
INSERT INTO `news` VALUES (66, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:52', '', 1);
INSERT INTO `news` VALUES (67, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:53', '', 1);
INSERT INTO `news` VALUES (68, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:54', '', 1);
INSERT INTO `news` VALUES (69, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:55', '', 1);
INSERT INTO `news` VALUES (70, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:56', '', 1);
INSERT INTO `news` VALUES (71, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:16:58', '', 1);
INSERT INTO `news` VALUES (72, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:17:00', '', 1);
INSERT INTO `news` VALUES (73, '1231', '1', '123', '<p>adasd</p>', '2018-07-24 11:17:01', '', 1);
INSERT INTO `news` VALUES (74, '1231', '公司新闻', '12312', '<p></p>', '2018-07-24 11:19:47', '', 1);
INSERT INTO `news` VALUES (75, '省级重点动画与数字技术实验教学示范中心', '行业资讯', 'user', '<p>123123</p>', '2018-07-24 11:33:51', '', 1);
INSERT INTO `news` VALUES (76, '省级重点动画与数字技术实验教学示范中心1', '行业资讯', 'user1', '<p>1231231</p>', '2018-07-24 11:34:01', '', 1);
INSERT INTO `news` VALUES (77, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:07', '', 1);
INSERT INTO `news` VALUES (78, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:08', '', 1);
INSERT INTO `news` VALUES (79, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:08', '', 1);
INSERT INTO `news` VALUES (80, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:08', '', 1);
INSERT INTO `news` VALUES (81, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:08', '', 1);
INSERT INTO `news` VALUES (82, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:08', '', 1);
INSERT INTO `news` VALUES (83, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:08', '', 1);
INSERT INTO `news` VALUES (84, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:09', '', 1);
INSERT INTO `news` VALUES (85, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:09', '', 1);
INSERT INTO `news` VALUES (86, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:09', '', 1);
INSERT INTO `news` VALUES (87, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:09', '', 1);
INSERT INTO `news` VALUES (88, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:09', '', 1);
INSERT INTO `news` VALUES (89, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:10', '', 1);
INSERT INTO `news` VALUES (90, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11', '<p>1231231</p>', '2018-07-24 11:34:10', '', 1);
INSERT INTO `news` VALUES (91, '省级重点动画与数字技术实验教学示范中心11', '行业资讯', 'user11333', '<p>1231231</p>', '2018-07-24 11:35:18', '', 1);
INSERT INTO `news` VALUES (92, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:21', '', 1);
INSERT INTO `news` VALUES (93, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:21', '', 1);
INSERT INTO `news` VALUES (94, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:21', '', 1);
INSERT INTO `news` VALUES (95, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:21', '', 1);
INSERT INTO `news` VALUES (96, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:21', '', 1);
INSERT INTO `news` VALUES (97, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:21', '', 1);
INSERT INTO `news` VALUES (98, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:23', '', 1);
INSERT INTO `news` VALUES (99, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:24', '', 1);
INSERT INTO `news` VALUES (100, 'qweqweqwe', '公司新闻', 'user11', '<p>1231231</p>', '2018-07-24 11:34:24', '', 1);
INSERT INTO `news` VALUES (101, 'qweqweqw', '美容知识', 'user11', '<p>1231231</p>', '2018-07-24 11:34:31', '', 1);
INSERT INTO `news` VALUES (102, 'qweqweqw', '美容知识', 'user11', '<p>1231231</p>', '2018-07-24 11:34:32', '', 1);
INSERT INTO `news` VALUES (103, 'qweqweqw', '美容知识', 'user11', '<p>1231231</p>', '2018-07-24 11:34:33', '', 1);
INSERT INTO `news` VALUES (104, 'qweqweqw', '美容知识', 'user11', '<p>1231231</p>', '2018-07-24 11:34:33', '', 1);
INSERT INTO `news` VALUES (105, 'qweqweqw', '美容知识', 'user11', '<p>1231231</p>', '2018-07-24 11:34:34', '', 1);
INSERT INTO `news` VALUES (106, '1', '美容知识', '2', '<p>3</p>', '2018-07-24 09:42:08', '/static/picture/20180724214204.jpg', 1);
INSERT INTO `news` VALUES (107, 'qweqweqw', '美容知识', 'user11', '<p></p><div class=\"media-wrap video-wrap\"><video controls=\"\" loop=\"\" src=\"/static/picture/20180724200433.mp4\"></video></div><p></p><div class=\"media-wrap video-wrap\"><video controls=\"\" loop=\"\" src=\"/static/picture/20180724200445.mp4\"></video></div><p>1231231</p>', '2018-07-24 08:05:05', '/static/picture/20180724200502.mp4', 1);
INSERT INTO `news` VALUES (108, 'A', '公司新闻', 'A', '<p>A</p>', '2018-07-24 10:03:05', '/static/picture/20180724220301.jpg', 1);
INSERT INTO `news` VALUES (109, '日常实用的护发方法有哪些？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　做人做事要灵活应变，养发护发也一样，需要针对不同的问题使出不同的护发“杀手锏”。护发方法有哪些?沁妞护发专家讲到，想要打理一头健康又飘逸的秀发，需要从洗、梳、吹、烫等多个方面入手，这样才能达到全面的护发效果。日常护发方法汇总，让你护发有门道，养发更全面。</p><p style=\"text-align:start;\">　　护发方法有哪些?洗发水的使用要正确。洗发水的使用又包括两个方面：选择与实用。沁妞护发专家讲到，洗发水的选择，是指根据自己的发质以及头发存在问题，有针对性地选择适合自己的洗发水。如烫染过后的头发，选择具有修复、养护作用的洗发水更好;存在头发干燥、头屑多等问题的头发，选择具有去屑效果的洗发水更具针对性。此外，油性发质不宜选择过于油腻的洗发水，干性发质则偏向于油腻洗发水会更好。两者中和之后，才能避免头发过于油腻或者过于干燥。</p><p style=\"text-align:start;\">　　洗发水的使用同样包括两个方面，即是用量与使用方法。沁妞护发专家提醒说，洗发水的用量不宜过多也不宜过少，过多不仅造成浪费，还会难以彻底清洗干净;过少则会导致泡沫太少，无法深入发根，带走粘附在头皮上的污垢。在使用方法上，不宜将洗发水直接挤在头发上，而是置于手心，加入清水，轻揉出泡后再将泡沫涂抹在头发上即可。</p><p style=\"text-align:start;\">　　护发方法有哪些?护发素的使用，很多人会直接忽略这个环节，沁妞护发专家讲到，但是想要达到更完美的护发效果，就要遵循“洗护不分家”的规律。头发清洁干净之后，挤出适量的护发素涂抹在头发中段至末梢，按摩几分钟后要将护发素彻底地冲洗干净。其中，不能用免洗护发素代替营养护发素，这将直接导致头发得到修复、养护效果。</p><p style=\"text-align:start;\">　　日常怎样护理头发?沁妞护发专家提醒说，控制好洗头的次数。不管是干性还是油性头发，都不宜每天清洗。对于干性发型而言，每天清洗会导致头皮本身产生的油脂流失，让头发得不到自身的养护;对于油性发质而言，每天的清洗虽然能暂时减缓油腻恶果，但是清洗次数过于频繁会导致头皮本身的保护层受到破坏，让头发越洗越油腻。</p>', '2018-07-25 10:23:13', '', 0);
INSERT INTO `news` VALUES (110, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:44', '', 0);
INSERT INTO `news` VALUES (111, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:48', '', 0);
INSERT INTO `news` VALUES (112, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:50', '', 0);
INSERT INTO `news` VALUES (113, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:51', '', 0);
INSERT INTO `news` VALUES (114, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:52', '', 0);
INSERT INTO `news` VALUES (115, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:53', '', 0);
INSERT INTO `news` VALUES (116, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '公司新闻', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:24:55', '', 0);
INSERT INTO `news` VALUES (117, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:02', '', 0);
INSERT INTO `news` VALUES (118, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:04', '', 0);
INSERT INTO `news` VALUES (119, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:05', '', 0);
INSERT INTO `news` VALUES (120, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:06', '', 0);
INSERT INTO `news` VALUES (121, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:08', '', 0);
INSERT INTO `news` VALUES (122, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:09', '', 0);
INSERT INTO `news` VALUES (123, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:10', '', 0);
INSERT INTO `news` VALUES (124, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:12', '', 0);
INSERT INTO `news` VALUES (125, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:18', '', 0);
INSERT INTO `news` VALUES (126, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:19', '', 0);
INSERT INTO `news` VALUES (127, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:20', '', 0);
INSERT INTO `news` VALUES (128, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:21', '', 0);
INSERT INTO `news` VALUES (129, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:23', '', 0);
INSERT INTO `news` VALUES (130, '为何小窍门没效？破密坊间去黑头偏方', '美容知识', '宏美国际', '<p style=\"text-align:start;\">一、鸡蛋清真的有用吗?——分情况</p><p style=\"text-align:start;\">　　鸡蛋清这么天然的食材对我们的皮肤肯定是有益无害的，但是是否有效却因人而异。鸡蛋清敷在鼻子上，待干透后撕下的方法，其实就是自制的去黑头鼻贴，对于轻度黑头的人还是有一定效果的，但是如果敷鸡蛋清之前毛孔没有打开，可就没有用咯。而且顽固的黑头表示这样的方法完全没有用呢。</p><p style=\"text-align:start;\">　　二、小苏打损伤皮肤了吗——太刺激</p><p style=\"text-align:start;\">　　网上对于小苏打去黑头的解释中，有一条是“黑头本身呈酸性。小苏打是碱性的，酸碱之中和以后，黑头溶解，于是一搓就出来了，而且对皮肤没有任何不好的影响。”但是亲自试用过的姐妹们一定会警告你：“当心烧伤皮肤啊!”其实小苏打溶液作为一种弱碱溶液，不能通过酸碱中和或皂化反应来溶解黑头，而且其碱性对于皮肤有刺激作用。对于用在自己脸上的东西，姐妹们还是要慎重啊。</p><p style=\"text-align:start;\">　　三、你还敢用粉刺针挤吗——消毒是关键</p><p style=\"text-align:start;\">　　在洗完脸或敷完清</p>', '2018-07-31 05:29:47', '/static/picture/20180731172946.jpg', 0);
INSERT INTO `news` VALUES (131, '不同肤质怎么去角质 对症下药更有效', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　1、敏感型肌肤</p><p style=\"text-align:start;\">　　敏感型肌肤的MM们就适合用面膜去角质了。含有去角质成分的面膜或敷面霜不仅去角质的功夫毫不逊色，而且能将营养送入肌肤深层，温和的方式能够保护敏感肌肤不受过度刺激，去角质就像吃冰淇淋一样享受。</p><p style=\"text-align:start;\">　　2、衰老型肌肤</p><p style=\"text-align:start;\">　　如果你属于衰老型肌肤，要选择适合自己的，可以选精华素和面霜去角质了。精华乳液一般会含有溶解死皮和污垢成分，不仅可以去除角质还可以让精华素和面霜中的有效营养成分更好地渗透，可以有效缓解肌肤的粗糙、黯哑和细纹等问题。</p><p style=\"text-align:start;\">　　3、粗糙型肌肤</p><p style=\"text-align:start;\">　　洁肤棉去角质就最适合粗糙型肌肤的MM了，洁肤棉易于贴合肌肤表面，可将其中的有效成分迅速渗入毛孔，温和去除残留的污垢和漏网角质，尤其适合T形区或耳边等不易角质去除的部位，同时还兼备保湿作用。</p><p style=\"text-align:start;\">　　4、油性型肌肤</p><p style=\"text-align:start;\">　　油性肌肤油脂分泌旺盛，如果忘记了经常清理角质，会导致老化角质堵塞毛孔、肤色暗淡。如果在每天清洁皮肤的同时完成去角质，肌肤则会健康得多。含有去角质成分的洁面产品能通过每天的清洁促进角质代谢，而调理角质的化妆水在使用时一定要用化妆棉去擦，这样才能带走表皮上的老旧细胞。</p>', '2018-07-31 05:29:04', '/static/picture/20180731172903.jpg', 0);
INSERT INTO `news` VALUES (132, '抗氧化食物有哪些 四种食物越吃越年轻', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　抗氧化的食物都有哪些?抗衰老其实本质上就是在抗氧化，所想要延缓衰老，就得要做到抗氧化。那么抗氧化的食物都有哪些呢?下面小编就来给大家推荐几种抗氧化的食物，四种食物越吃越年轻哦!</p><p style=\"text-align:start;\">　　4种抗氧化食物越吃越年轻</p><p style=\"text-align:start;\">　　1、西红柿</p><p style=\"text-align:start;\">　　西红柿是一种很常见的抗氧化食物，这对于肌肤抗衰老很有帮助。这是因为西红柿中含有丰富的茄红素，茄红素的抗氧化能力是维他命C的20倍，抗氧化的战斗能力很是强大哦!</p><p style=\"text-align:start;\">　　另外，西红柿中到底应该怎样食用效果比较好呢?那就是直接熟吃。虽然经烹调或者加工之后，其所含的丰富维生素遭到破坏，但是茄红素的含量可增加数倍，抗氧化功能也逐步增强哦!建议人们大量摄取。西红柿中的抗氧化成分茄红素，已经被人们证实能减少动脉阻塞，有效的降低患心血管疾病的机会，经过食物加热熬煮成西红柿酱，大大的提升其西红柿的抗氧化功效。</p><p style=\"text-align:start;\">　　Tips：由于西红柿的类别有好几种，到底如何选择比较好呢?其实最好的选择就是小西红柿比较好，其中所含的维生素含量十分高，这能够加深其抗氧化功能哦!</p><p style=\"text-align:start;\">　　2、葡萄</p><p style=\"text-align:start;\">　　葡萄是这个夏季很强大的抗氧化功效，这是因为在葡萄中的花青配糖体，达到很强大的抗氧化功效，其抗氧化能力是维他命C的20倍、维他命E的50倍。作为水果直接榨汁饮用，效果也很不错哦!火力也相应小了许多。</p><p style=\"text-align:start;\">　　不少人都喜欢喝饮用葡萄酒，这是因为葡萄酒中的单宁酸(Tannic)有很好的美容功效，直接把其葡萄酿成的红酒，在发酵的过程中，抗氧化功能得到很高的提升。红葡萄酒比白葡萄酒更加富含单宁酸，医学证明单宁酸和红色素等酚类物质有抗氧化、抗衰老的功效哦!</p><p style=\"text-align:start;\">　　抗氧化是护肤的重要步骤，为了能够让细胞免受损伤，选择能够抗氧化的食物很关键，在市面上很多用红酒制作面膜，如：红酒面膜等，中医是推崇食疗的，可以吃的可以喝的，保证肚子里面万无一失哦!</p><p style=\"text-align:start;\">　　3、绿茶</p><p style=\"text-align:start;\">　　绿茶中所含的未发酵茶，主要是富含多种生物类异黄酮，而且在绿茶中所含的抗氧化物质很是强大，这能够阻止坏的胆固醇氧化。而且在绿茶中含有大量的维他命C，能够很好的淡化肌肤中的黑色素，让其脸部肌肤更加柔滑无比，减少因紫外线及污染而产生的游离基。</p><p style=\"text-align:start;\">　　还有，抗氧化的功效也不容小觑哦!绿茶同时还具有去油解腻、清新口气的功能，长期坚持饮用，这能够很好的抗老化，又有利于减肥哦!</p><p style=\"text-align:start;\">　　4.蓝莓</p><p style=\"text-align:start;\">　　蓝莓是一种富含多种营养的水果，其中抗氧化功效很是强大。蓝莓水外形小巧，所含有的钾及水溶性纤维十分高。这能够很好的帮助降低血胆固醇浓度及减少患高血压的几率呢!另外，花色素证明其防止胶原蛋白被分解融化，这能够很好的保持肌肤的弹性，让肌肤更加滋润好哦!</p><p style=\"text-align:start;\">　　花色素是一种强大的营养成分，如果不能吃到新鲜的蓝莓，那么也可以尝试罐头或是冷冻的蓝莓。</p>', '2018-07-31 05:28:23', '/static/picture/20180731172821.jpg', 0);
INSERT INTO `news` VALUES (133, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '美容知识', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-31 05:12:21', '/static/picture/20180731171219.jpg', 0);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmuser_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 1, 1);
INSERT INTO `permission` VALUES (2, 2, 2);
INSERT INTO `permission` VALUES (3, 3, 2);
INSERT INTO `permission` VALUES (4, 9, 3);
INSERT INTO `permission` VALUES (6, 5, 3);
INSERT INTO `permission` VALUES (7, 6, 2);
INSERT INTO `permission` VALUES (9, 17, 3);
INSERT INTO `permission` VALUES (10, 18, 3);

-- ----------------------------
-- Table structure for permissionlist
-- ----------------------------
DROP TABLE IF EXISTS `permissionlist`;
CREATE TABLE `permissionlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `api_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `permissionlist` VALUES (31, 1, 31);
INSERT INTO `permissionlist` VALUES (32, 1, 32);
INSERT INTO `permissionlist` VALUES (33, 1, 33);
INSERT INTO `permissionlist` VALUES (34, 1, 34);
INSERT INTO `permissionlist` VALUES (35, 1, 35);
INSERT INTO `permissionlist` VALUES (36, 1, 36);
INSERT INTO `permissionlist` VALUES (37, 1, 37);
INSERT INTO `permissionlist` VALUES (38, 1, 38);
INSERT INTO `permissionlist` VALUES (39, 2, 1);
INSERT INTO `permissionlist` VALUES (40, 2, 2);
INSERT INTO `permissionlist` VALUES (41, 2, 13);
INSERT INTO `permissionlist` VALUES (42, 2, 14);
INSERT INTO `permissionlist` VALUES (43, 2, 15);
INSERT INTO `permissionlist` VALUES (44, 2, 16);
INSERT INTO `permissionlist` VALUES (45, 2, 17);
INSERT INTO `permissionlist` VALUES (46, 2, 18);
INSERT INTO `permissionlist` VALUES (47, 2, 19);
INSERT INTO `permissionlist` VALUES (48, 2, 20);
INSERT INTO `permissionlist` VALUES (49, 2, 21);
INSERT INTO `permissionlist` VALUES (50, 2, 29);
INSERT INTO `permissionlist` VALUES (51, 2, 30);
INSERT INTO `permissionlist` VALUES (52, 2, 31);
INSERT INTO `permissionlist` VALUES (53, 2, 32);
INSERT INTO `permissionlist` VALUES (54, 2, 33);
INSERT INTO `permissionlist` VALUES (55, 2, 34);
INSERT INTO `permissionlist` VALUES (56, 2, 35);
INSERT INTO `permissionlist` VALUES (57, 2, 36);
INSERT INTO `permissionlist` VALUES (58, 2, 38);
INSERT INTO `permissionlist` VALUES (59, 1, 39);
INSERT INTO `permissionlist` VALUES (60, 2, 39);
INSERT INTO `permissionlist` VALUES (61, 1, 40);
INSERT INTO `permissionlist` VALUES (62, 2, 40);
INSERT INTO `permissionlist` VALUES (63, 1, 41);
INSERT INTO `permissionlist` VALUES (64, 2, 41);
INSERT INTO `permissionlist` VALUES (65, 3, 37);
INSERT INTO `permissionlist` VALUES (66, 3, 38);
INSERT INTO `permissionlist` VALUES (67, 3, 39);
INSERT INTO `permissionlist` VALUES (68, 3, 40);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '类型',
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '型号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '名称',
  `specal` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '规格',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '产品介绍',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '预览图,图片文件id',
  `link1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '链接1',
  `link2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '链接2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (59, '爆款产品', 'DT-001', '多肽修护冻干粉', '5ml*10', '多肽修护因子是万能因子，让肌肤恢复健康年轻状态', 57, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (60, '爆款产品', 'DT-004', '多肽修护补水原液', '5ml*100', '角质受损,肌肤缺水', 57, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (61, '爆款产品', 'DT-003', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (62, '爆款产品', 'DT-001', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (63, '明星定制', 'DT-001', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (64, '明星定制', 'DT-002', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (65, '明星定制', 'DT-003', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (66, '明星定制', 'DT-004', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (67, '植物功能原液', 'DT-001', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (68, '植物功能原液', 'DT-002', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (69, '植物功能原液', 'DT-003', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (70, '植物功能原液', 'DT-004', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 60, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (71, '组合套餐', 'DT-004', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 70, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (72, '组合套餐', 'DT-001', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 70, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (73, '组合套餐', 'DT-002', '多肽修护补水原液', '15ml*100', '角质受损,防衰老', 70, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (74, '组合套餐', 'DT-001', '新闻资讯', '5ml*10', '角质受损,肌肤缺水', 72, 'https://www.taobao.com/', '');

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
INSERT INTO `role` VALUES (2, '网站运营者');
INSERT INTO `role` VALUES (3, '加盟商');

-- ----------------------------
-- Table structure for summary
-- ----------------------------
DROP TABLE IF EXISTS `summary`;
CREATE TABLE `summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jmuser_id` int(11) NULL DEFAULT NULL,
  `income` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '收入',
  `outcome` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '支出',
  `flow` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '流水',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of summary
-- ----------------------------
INSERT INTO `summary` VALUES (12, '2018-07-26-收入统计表11123123123', 1, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"2018/4/3\",\"2\":\"111\",\"3\":\"12312\",\"4\":\"123\",\"5\":\"123\",\"6\":\"123\",\"7\":\"123\",\"8\":\"1231\",\"9\":\"12\",\"10\":\"123\",\"11\":\"123\"},{\"1\":\"2018/4/3\",\"2\":\"111\",\"3\":\"12312\",\"4\":\"123\",\"5\":\"123\",\"6\":\"123\",\"7\":\"123\",\"8\":\"1231\",\"9\":\"12\",\"10\":\"123\",\"11\":\"123\"},{\"1\":\"大哥哥\",\"2\":null,\"3\":null,\"4\":null,\"5\":null,\"6\":null,\"7\":null,\"8\":null,\"9\":null,\"10\":null,\"11\":null},{\"1\":null,\"2\":null,\"3\":null,\"4\":null,\"5\":null,\"6\":null,\"7\":null,\"8\":null,\"9\":null,\"10\":null,\"11\":null},{\"1\":\"132312\",\"2\":null,\"3\":null,\"4\":null,\"5\":null,\"6\":null,\"7\":null,\"8\":null,\"9\":null,\"10\":null,\"11\":null}]', NULL, NULL);
INSERT INTO `summary` VALUES (13, '2018-07-26-支出统计表222244', 1, NULL, '[{\"1\":\"宏美时代连锁机构费用支出详细\",\"2\":null,\"3\":null,\"4\":null,\"5\":\"\",\"6\":\"\",\"7\":\"\"},{\"1\":\"日期\",\"2\":\"摘要\",\"3\":\"收入\",\"4\":\"支出\",\"5\":\"余额\",\"6\":\"备注\",\"7\":\"支出方式\"},{\"1\":\"2018/4/3\",\"2\":\"111\",\"3\":\"12312\",\"4\":\"123\",\"5\":\"123\",\"6\":\"123\",\"7\":\"123\"},{\"1\":\"2018/4/3\",\"2\":\"111\",\"3\":\"12312\",\"4\":\"123\",\"5\":\"123\",\"6\":\"123\",\"7\":\"123\"}]', NULL);
INSERT INTO `summary` VALUES (14, '2018-07-26-接待消费流水统计表111', 1, NULL, NULL, '[{\"1\":\"接待消费流水\",\"2\":null,\"3\":null,\"4\":null,\"5\":null,\"6\":null,\"7\":null,\"8\":null,\"9\":null,\"10\":\"\",\"11\":\"\",\"12\":\"\",\"13\":\"\",\"14\":\"\",\"15\":\"\",\"16\":\"\",\"17\":\"\",\"18\":\"\",\"19\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\",\"23\":\"\",\"24\":\"\",\"25\":\"\",\"26\":\"\",\"27\":\"\",\"28\":\"\",\"29\":\"\",\"30\":\"\",\"31\":\"\",\"32\":\"\",\"33\":\"\",\"34\":\"\"},{\"1\":\"日期\",\"2\":\"拓客项目体验\",\"3\":\"金额\",\"4\":\"奖励\",\"5\":\"收款方式\",\"6\":\"卡项(年卡/季卡等)\",\"7\":\"奖励\",\"8\":\"类型备注\",\"9\":\"收款方式\",\"10\":\"微调/微整\",\"11\":\"金额\",\"12\":\"奖励\",\"13\":\"收款方式\",\"14\":\"美团\",\"15\":\"口啤\",\"16\":\"光电项目\",\"17\":\"金额\",\"18\":\"奖励\",\"19\":\"收款方式\",\"20\":\"泡澡\",\"21\":\"收款方式\",\"22\":\"美甲\",\"23\":\"收款方式\",\"24\":\"纹绣\",\"25\":\"收款方式\",\"26\":\"美睫\",\"27\":\"收款方式\",\"28\":\"拔罐\",\"29\":\"收款方式\",\"30\":\"零散项目\",\"31\":\"奖励\",\"32\":\"收款方式具体项目\",\"33\":\"合计\"},{\"1\":null,\"2\":\"1231\",\"3\":null,\"4\":null,\"5\":\"12312\",\"6\":null,\"7\":null,\"8\":null,\"9\":null,\"10\":null,\"11\":null,\"12\":null,\"13\":null,\"14\":null,\"15\":null,\"16\":null,\"17\":null,\"18\":null,\"19\":null,\"20\":null,\"21\":null,\"22\":null,\"23\":null,\"24\":null,\"25\":null,\"26\":null,\"27\":null,\"28\":null,\"29\":null,\"30\":null,\"31\":null,\"32\":null,\"33\":null,\"34\":null},{\"1\":\"123123\",\"2\":null,\"3\":null,\"4\":null,\"5\":null,\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":null,\"10\":null,\"11\":null,\"12\":null,\"13\":null,\"14\":null,\"15\":null,\"16\":null,\"17\":null,\"18\":null,\"19\":null,\"20\":null,\"21\":null,\"22\":null,\"23\":null,\"24\":null,\"25\":null,\"26\":null,\"27\":null,\"28\":null,\"29\":null,\"30\":null,\"31\":null,\"32\":null,\"33\":null,\"34\":null}]');
INSERT INTO `summary` VALUES (15, '2018-07-29-收入统计表', NULL, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"2018/4/3\",\"2\":\"111\",\"3\":\"12312\",\"4\":\"123\",\"5\":\"123\",\"6\":\"123\",\"7\":\"123\",\"8\":\"1231\",\"9\":\"12\",\"10\":\"123\",\"11\":\"123\"},{\"1\":\"2018/4/3\",\"2\":\"111\",\"3\":\"12312\",\"4\":\"123\",\"5\":\"123\",\"6\":\"123\",\"7\":\"123\",\"8\":\"1231\",\"9\":\"12\",\"10\":\"123\",\"11\":\"123\"}]', NULL, NULL);
INSERT INTO `summary` VALUES (16, '2018-07-29-接待消费流水统计表', NULL, NULL, NULL, '[{\"1\":\"接待消费流水\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\",\"12\":\"\",\"13\":\"\",\"14\":\"\",\"15\":\"\",\"16\":\"\",\"17\":\"\",\"18\":\"\",\"19\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\",\"23\":\"\",\"24\":\"\",\"25\":\"\",\"26\":\"\",\"27\":\"\",\"28\":\"\",\"29\":\"\",\"30\":\"\",\"31\":\"\",\"32\":\"\",\"33\":\"\",\"34\":\"\"},{\"1\":\"日期\",\"2\":\"拓客项目体验\",\"3\":\"金额\",\"4\":\"奖励\",\"5\":\"收款方式\",\"6\":\"卡项(年卡/季卡等)\",\"7\":\"奖励\",\"8\":\"类型备注\",\"9\":\"收款方式\",\"10\":\"微调/微整\",\"11\":\"金额\",\"12\":\"奖励\",\"13\":\"收款方式\",\"14\":\"美团\",\"15\":\"口啤\",\"16\":\"光电项目\",\"17\":\"金额\",\"18\":\"奖励\",\"19\":\"收款方式\",\"20\":\"泡澡\",\"21\":\"收款方式\",\"22\":\"美甲\",\"23\":\"收款方式\",\"24\":\"纹绣\",\"25\":\"收款方式\",\"26\":\"美睫\",\"27\":\"收款方式\",\"28\":\"拔罐\",\"29\":\"收款方式\",\"30\":\"零散项目\",\"31\":\"奖励\",\"32\":\"收款方式具体项目\",\"33\":\"合计\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\",\"12\":\"\",\"13\":\"\",\"14\":\"\",\"15\":\"\",\"16\":\"\",\"17\":\"\",\"18\":\"\",\"19\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\",\"23\":\"\",\"24\":\"\",\"25\":\"\",\"26\":\"\",\"27\":\"\",\"28\":\"\",\"29\":\"\",\"30\":\"\",\"31\":\"\",\"32\":\"\",\"33\":\"\",\"34\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\",\"12\":\"\",\"13\":\"\",\"14\":\"\",\"15\":\"\",\"16\":\"\",\"17\":\"\",\"18\":\"\",\"19\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\",\"23\":\"\",\"24\":\"\",\"25\":\"\",\"26\":\"\",\"27\":\"\",\"28\":\"\",\"29\":\"\",\"30\":\"\",\"31\":\"\",\"32\":\"\",\"33\":\"\",\"34\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\",\"12\":\"\",\"13\":\"\",\"14\":\"\",\"15\":\"\",\"16\":\"\",\"17\":\"\",\"18\":\"\",\"19\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\",\"23\":\"\",\"24\":\"\",\"25\":\"\",\"26\":\"\",\"27\":\"\",\"28\":\"\",\"29\":\"\",\"30\":\"\",\"31\":\"\",\"32\":\"\",\"33\":\"\",\"34\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\",\"12\":\"\",\"13\":\"\",\"14\":\"\",\"15\":\"\",\"16\":\"\",\"17\":\"\",\"18\":\"\",\"19\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\",\"23\":\"\",\"24\":\"\",\"25\":\"\",\"26\":\"\",\"27\":\"\",\"28\":\"\",\"29\":\"\",\"30\":\"\",\"31\":\"\",\"32\":\"\",\"33\":\"\",\"34\":\"\"}]');
INSERT INTO `summary` VALUES (17, '2018-07-29-收入统计表', NULL, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"}]', NULL, NULL);
INSERT INTO `summary` VALUES (18, '2018-07-29-收入统计表', NULL, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"}]', NULL, NULL);
INSERT INTO `summary` VALUES (19, '2018-07-29-收入统计表', NULL, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"}]', NULL, NULL);
INSERT INTO `summary` VALUES (20, '2018-07-29-收入统计表', 2, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"}]', NULL, NULL);
INSERT INTO `summary` VALUES (21, '13888888888-2018-07-29-收入统计表', 17, '[{\"1\":\"宏美时代连锁机构收入登记\",\"2\":null,\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"林总支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"}]', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
