/*
 Navicat MySQL Data Transfer

 Source Server         : 宏美
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : hmgj

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 07/08/2018 15:28:18
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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `api` VALUES (41, '/file/getfinancebypage', '获得财务文件');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `file_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `describe` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述或文件名称',
  `isfinance` int(11) NULL DEFAULT NULL COMMENT '财务,默认1为财务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, '/static/picture/20180806160135.png', '', '', NULL);
INSERT INTO `file` VALUES (2, '/static/picture/20180807115816.png', '', '', NULL);
INSERT INTO `file` VALUES (5, '/static/picture/20180724161656.jpg', '', '', NULL);
INSERT INTO `file` VALUES (6, '/static/picture/20180724163918.jpg', '', '', NULL);
INSERT INTO `file` VALUES (7, '/static/picture/20180724173703.jpg', '', '', NULL);
INSERT INTO `file` VALUES (8, '/static/picture/20180724174429.jpg', '', '', NULL);
INSERT INTO `file` VALUES (9, '/static/picture/20180724174441.jpg', '', '', NULL);
INSERT INTO `file` VALUES (10, '/static/picture/20180724190612.jpg', '', '', NULL);
INSERT INTO `file` VALUES (11, '/static/picture/20180724190849.jpg', '', '', NULL);
INSERT INTO `file` VALUES (12, '/static/picture/20180724190904.jpg', '', '', NULL);
INSERT INTO `file` VALUES (13, '/static/picture/20180724192621.jpg', '', '', NULL);
INSERT INTO `file` VALUES (14, '/static/picture/20180724192837.jpg', '', '', NULL);
INSERT INTO `file` VALUES (15, '/static/picture/20180724192933.jpg', '', '', NULL);
INSERT INTO `file` VALUES (16, '/static/picture/20180724193305.jpg', '', '', NULL);
INSERT INTO `file` VALUES (17, '/static/picture/20180724193356.jpg', '', '', NULL);
INSERT INTO `file` VALUES (18, '/static/picture/20180724193418.jpg', '', '', NULL);
INSERT INTO `file` VALUES (19, '/static/picture/20180724194206.jpg', '', '', NULL);
INSERT INTO `file` VALUES (20, '/static/picture/20180724194216.jpg', '', '', NULL);
INSERT INTO `file` VALUES (21, '/static/picture/20180724195937.jpg', '', '', NULL);
INSERT INTO `file` VALUES (22, '/static/picture/20180724202001.mp4', '', '', NULL);
INSERT INTO `file` VALUES (23, '/static/picture/20180724202031.mp4', '', '', NULL);
INSERT INTO `file` VALUES (24, '/static/picture/20180724203758.mp4', '', '', NULL);
INSERT INTO `file` VALUES (25, 'asdfas', '', '', NULL);
INSERT INTO `file` VALUES (26, '/static/picture/20180724203912.mp4', '', '', NULL);
INSERT INTO `file` VALUES (27, '/static/picture/20180724204116.jpg', '', '', NULL);
INSERT INTO `file` VALUES (28, '/static/picture/20180724204152.jpg', '', '', NULL);
INSERT INTO `file` VALUES (29, '/static/picture/20180724204243.jpg', '', '', NULL);
INSERT INTO `file` VALUES (30, '/static/picture/20180724204348.jpg', '', '', NULL);
INSERT INTO `file` VALUES (31, '/static/picture/20180724204832.jpg', '', '', NULL);
INSERT INTO `file` VALUES (32, '/static/picture/20180724204851.jpg', '', '', NULL);
INSERT INTO `file` VALUES (33, '/static/picture/20180724205029.jpg', '', '', NULL);
INSERT INTO `file` VALUES (34, '/static/picture/20180724205057.jpg', '', '', NULL);
INSERT INTO `file` VALUES (35, '/static/picture/20180724205531.jpg', '', '', NULL);
INSERT INTO `file` VALUES (36, '/static/picture/20180724205548.jpg', '', '', NULL);
INSERT INTO `file` VALUES (37, '/static/picture/20180724205655.jpg', '', '', NULL);
INSERT INTO `file` VALUES (38, '/static/picture/20180724210149.jpg', '', '', NULL);
INSERT INTO `file` VALUES (39, '/static/picture/20180724210255.jpg', '', '', NULL);
INSERT INTO `file` VALUES (40, '/static/picture/20180724210332.jpg', '', '', NULL);
INSERT INTO `file` VALUES (41, '/static/picture/20180724210507.jpg', '', '', NULL);
INSERT INTO `file` VALUES (42, '/static/picture/20180724210653.jpg', '', '', NULL);
INSERT INTO `file` VALUES (43, '/static/picture/20180724210727.jpg', '', '', NULL);
INSERT INTO `file` VALUES (44, '/static/picture/20180724210807.jpg', '', '', NULL);
INSERT INTO `file` VALUES (45, '/static/picture/20180724211420.jpg', '', '', NULL);
INSERT INTO `file` VALUES (46, '/static/picture/20180724211512.jpg', '', '', NULL);
INSERT INTO `file` VALUES (47, '/static/picture/20180724211604.jpg', '', '', NULL);
INSERT INTO `file` VALUES (48, '/static/picture/20180724211947.jpg', '', '', NULL);
INSERT INTO `file` VALUES (49, '/static/picture/20180724212046.jpg', '', '', NULL);
INSERT INTO `file` VALUES (50, '/static/picture/20180724212134.jpg', '', '', NULL);
INSERT INTO `file` VALUES (51, '/static/picture/20180724212331.jpg', '', '', NULL);
INSERT INTO `file` VALUES (52, '/static/picture/20180724212453.jpg', '', '', NULL);
INSERT INTO `file` VALUES (53, '/static/picture/20180724213605.jpg', '', '', NULL);
INSERT INTO `file` VALUES (54, '/static/picture/20180724213644.jpg', '', '', NULL);
INSERT INTO `file` VALUES (55, '/static/picture/20180724213705.jpg', '', '', NULL);
INSERT INTO `file` VALUES (56, '/static/picture/20180724214204.jpg', '', '', NULL);
INSERT INTO `file` VALUES (57, '/static/picture/20180724214245.jpg', '', '', NULL);
INSERT INTO `file` VALUES (58, '/static/picture/20180724214323.jpg', '', '', NULL);
INSERT INTO `file` VALUES (59, '/static/picture/20180724214336.jpg', '', '', NULL);
INSERT INTO `file` VALUES (60, '/static/picture/20180724215458.jpg', '', '', NULL);
INSERT INTO `file` VALUES (61, '/static/picture/20180724215607.jpg', '', '', NULL);
INSERT INTO `file` VALUES (62, '/static/picture/20180724215709.jpg', '', '', NULL);
INSERT INTO `file` VALUES (63, '/static/picture/20180724215914.jpg', '', '', NULL);
INSERT INTO `file` VALUES (64, '/static/picture/20180724220007.jpg', '', '', NULL);
INSERT INTO `file` VALUES (65, '/static/picture/20180724220301.jpg', '', '', NULL);
INSERT INTO `file` VALUES (66, '/static/picture/20180725094933.png', '', '', NULL);
INSERT INTO `file` VALUES (67, '/static/picture/20180725095142.gz', '', '', NULL);
INSERT INTO `file` VALUES (68, '/static/picture/20180725095221.png', '', '', NULL);
INSERT INTO `file` VALUES (69, '/static/picture/20180725095300.png', '', '', NULL);
INSERT INTO `file` VALUES (70, '/static/picture/20180725100057.png', '', '', NULL);
INSERT INTO `file` VALUES (71, '/static/picture/20180725100314.png', '', '', NULL);
INSERT INTO `file` VALUES (72, '/static/picture/20180725100520.png', '', '', NULL);
INSERT INTO `file` VALUES (73, '/static/picture/20180725100654.png', '', '', NULL);
INSERT INTO `file` VALUES (74, '/static/picture/20180725102307.jpg', '', '', NULL);
INSERT INTO `file` VALUES (75, '/static/picture/20180725102437.jpg', '', '', NULL);
INSERT INTO `file` VALUES (76, '/static/picture/20180731102511.jpg', '', '', NULL);
INSERT INTO `file` VALUES (77, '/static/picture/20180731102715.jpg', '', '', NULL);
INSERT INTO `file` VALUES (78, '/static/picture/20180731103033.jpg', '', '', NULL);
INSERT INTO `file` VALUES (79, '/static/picture/20180731103048.jpg', '', '', NULL);
INSERT INTO `file` VALUES (80, '/static/picture/20180731103101.jpg', '', '', NULL);
INSERT INTO `file` VALUES (81, '/static/picture/20180731103112.jpg', '', '', NULL);
INSERT INTO `file` VALUES (82, '/static/picture/20180731103223.jpg', '', '', NULL);
INSERT INTO `file` VALUES (83, '/static/picture/20180731103232.jpg', '', '', NULL);
INSERT INTO `file` VALUES (84, '/static/picture/20180731103439.jpg', '', '', NULL);
INSERT INTO `file` VALUES (85, '/static/picture/20180731103708.jpg', '', '', NULL);
INSERT INTO `file` VALUES (86, '/static/picture/20180731103845.jpg', '', '', NULL);
INSERT INTO `file` VALUES (87, '/static/picture/20180731103953.jpg', '', '', NULL);
INSERT INTO `file` VALUES (88, '/static/picture/20180731104101.jpg', '', '', NULL);
INSERT INTO `file` VALUES (89, '/static/picture/20180731104419.jpg', '', '', NULL);
INSERT INTO `file` VALUES (90, '/static/picture/20180731104913.jpg', '', '', NULL);
INSERT INTO `file` VALUES (91, '/static/picture/20180731104955.jpg', '', '', NULL);
INSERT INTO `file` VALUES (92, '/static/picture/20180731105036.jpg', '', '', NULL);
INSERT INTO `file` VALUES (93, '/static/picture/20180731105120.jpg', '', '', NULL);
INSERT INTO `file` VALUES (94, '/static/picture/20180731105216.jpg', '', '', NULL);
INSERT INTO `file` VALUES (95, '/static/picture/20180731110715.jpg', '', '', NULL);
INSERT INTO `file` VALUES (96, '/static/picture/20180731173457.jpg', '', '', NULL);
INSERT INTO `file` VALUES (97, '/static/picture/20180731193006.jpg', '', '', NULL);
INSERT INTO `file` VALUES (98, '/static/picture/20180801091411.jpg', '', '', NULL);
INSERT INTO `file` VALUES (99, '/static/picture/20180801091628.jpg', '', '', NULL);
INSERT INTO `file` VALUES (100, '/static/picture/20180801091839.png', '', '', NULL);
INSERT INTO `file` VALUES (101, '/static/picture/20180801091850.png', '', '', NULL);
INSERT INTO `file` VALUES (102, '/static/picture/20180801091859.png', '', '', NULL);
INSERT INTO `file` VALUES (103, '/static/picture/20180801091909.png', '', '', NULL);
INSERT INTO `file` VALUES (104, '/static/picture/20180801091918.png', '', '', NULL);
INSERT INTO `file` VALUES (105, '/static/picture/20180801091929.png', '', '', NULL);
INSERT INTO `file` VALUES (106, '/static/picture/20180801091937.png', '', '', NULL);
INSERT INTO `file` VALUES (107, '/static/picture/20180801091945.png', '', '', NULL);
INSERT INTO `file` VALUES (108, '/static/picture/20180801091954.png', '', '', NULL);
INSERT INTO `file` VALUES (109, '/static/picture/20180801092002.png', '', '', NULL);
INSERT INTO `file` VALUES (110, '/static/picture/20180801092011.png', '', '', NULL);
INSERT INTO `file` VALUES (111, '/static/picture/20180801092808.jpg', '', '', NULL);
INSERT INTO `file` VALUES (112, '/static/picture/20180801092827.jpg', '', '', NULL);
INSERT INTO `file` VALUES (113, '/static/picture/20180801092902.jpg', '', '', NULL);
INSERT INTO `file` VALUES (114, '/static/picture/20180801092911.jpg', '', '', NULL);
INSERT INTO `file` VALUES (115, '/static/picture/20180801092920.jpg', '', '', NULL);
INSERT INTO `file` VALUES (116, '/static/picture/20180801092929.jpg', '', '', NULL);
INSERT INTO `file` VALUES (117, '/static/picture/20180801092938.jpg', '', '', NULL);
INSERT INTO `file` VALUES (118, '/static/picture/20180801092947.jpg', '', '', NULL);
INSERT INTO `file` VALUES (119, '/static/picture/20180801093005.jpg', '', '', NULL);
INSERT INTO `file` VALUES (120, '/static/picture/20180801093015.jpg', '', '', NULL);
INSERT INTO `file` VALUES (121, '/static/picture/20180801093024.jpg', '', '', NULL);
INSERT INTO `file` VALUES (122, '/static/picture/20180801093035.jpg', '', '', NULL);
INSERT INTO `file` VALUES (123, '/static/picture/20180801093042.jpg', '', '', NULL);
INSERT INTO `file` VALUES (124, '/static/picture/20180801093100.jpg', '', '', NULL);
INSERT INTO `file` VALUES (125, '/static/picture/20180801093123.jpg', '', '', NULL);
INSERT INTO `file` VALUES (126, '/static/picture/20180801093137.jpg', '', '', NULL);
INSERT INTO `file` VALUES (127, '/static/picture/20180801093146.jpg', '', '', NULL);
INSERT INTO `file` VALUES (128, '/static/picture/20180803210810.jpg', '', '', NULL);
INSERT INTO `file` VALUES (129, '/static/picture/20180803210931.JPG', '', '', NULL);
INSERT INTO `file` VALUES (130, '/static/picture/20180803211006.png', '', '', NULL);
INSERT INTO `file` VALUES (131, '/static/picture/20180803211603.png', '', '', NULL);
INSERT INTO `file` VALUES (132, '/static/picture/20180803211604.jpg', '', '', NULL);
INSERT INTO `file` VALUES (133, '/static/picture/20180803211645.png', '', '', NULL);
INSERT INTO `file` VALUES (134, '/static/picture/20180803211707.png', '', '', NULL);
INSERT INTO `file` VALUES (135, '/static/picture/20180803211727.png', '', '', NULL);
INSERT INTO `file` VALUES (136, '/static/picture/20180803211738.png', '', '', NULL);
INSERT INTO `file` VALUES (137, '/static/picture/20180803211801.png', '', '', NULL);
INSERT INTO `file` VALUES (138, '/static/picture/20180803211850.png', '', '', NULL);
INSERT INTO `file` VALUES (139, '/static/picture/20180803211915.png', '', '', NULL);
INSERT INTO `file` VALUES (140, '/static/picture/20180803212013.png', '', '', NULL);
INSERT INTO `file` VALUES (141, '/static/picture/20180803212026.png', '', '', NULL);
INSERT INTO `file` VALUES (142, '/static/picture/20180803212841.JPG', '', '', NULL);
INSERT INTO `file` VALUES (143, '/static/picture/20180803212905.JPG', '', '', NULL);
INSERT INTO `file` VALUES (156, '/static/picture/20180806214151.HTML', '2018-08-06', '1.HTML', 1);
INSERT INTO `file` VALUES (157, '/static/picture/20180806214210.xlsx', '2018-08-06', '单位信息.xlsx', 1);
INSERT INTO `file` VALUES (158, '/static/picture/20180807091809.png', '', '', NULL);
INSERT INTO `file` VALUES (159, '/static/picture/20180807091833.png', '', '', NULL);
INSERT INTO `file` VALUES (160, '/static/picture/20180807091925.png', '', '', NULL);
INSERT INTO `file` VALUES (161, '/static/picture/20180807092009.png', '', '', NULL);
INSERT INTO `file` VALUES (162, '/static/picture/20180807092030.png', '', '', NULL);
INSERT INTO `file` VALUES (163, '/static/picture/20180807092059.png', '', '', NULL);
INSERT INTO `file` VALUES (164, '/static/picture/20180807092107.png', '', '', NULL);
INSERT INTO `file` VALUES (165, '/static/picture/20180807092122.png', '', '', NULL);
INSERT INTO `file` VALUES (166, '/static/picture/20180807092126.png', '', '', NULL);
INSERT INTO `file` VALUES (167, '/static/picture/20180807092137.JPG', '', '', NULL);
INSERT INTO `file` VALUES (168, '/static/picture/20180807092210.png', '', '', NULL);
INSERT INTO `file` VALUES (169, '/static/picture/20180807092249.png', '', '', NULL);
INSERT INTO `file` VALUES (170, '/static/picture/20180807092312.JPG', '', '', NULL);
INSERT INTO `file` VALUES (171, '/static/picture/20180807092527.png', '', '', NULL);
INSERT INTO `file` VALUES (172, '/static/picture/20180807092552.png', '', '', NULL);
INSERT INTO `file` VALUES (173, '/static/picture/20180807092553.png', '', '', NULL);
INSERT INTO `file` VALUES (174, '/static/picture/20180807092558.png', '', '', NULL);
INSERT INTO `file` VALUES (175, '/static/picture/20180807092601.png', '', '', NULL);
INSERT INTO `file` VALUES (176, '/static/picture/20180807092752.JPG', '', '', NULL);
INSERT INTO `file` VALUES (177, '/static/picture/20180807092804.JPG', '', '', NULL);
INSERT INTO `file` VALUES (178, '/static/picture/20180807093403.JPG', '', '', NULL);
INSERT INTO `file` VALUES (179, '/static/picture/20180807093415.JPG', '', '', NULL);
INSERT INTO `file` VALUES (180, '/static/picture/20180807093425.png', '', '', NULL);
INSERT INTO `file` VALUES (181, '/static/picture/20180807093600.png', '', '', NULL);
INSERT INTO `file` VALUES (182, '/static/picture/20180807093744.jpg', '', '', NULL);
INSERT INTO `file` VALUES (183, '/static/picture/20180807093751.jpg', '', '', NULL);
INSERT INTO `file` VALUES (184, '/static/picture/20180807093758.jpg', '', '', NULL);
INSERT INTO `file` VALUES (185, '/static/picture/20180807093809.jpg', '', '', NULL);
INSERT INTO `file` VALUES (186, '/static/picture/20180807093820.jpg', '', '', NULL);
INSERT INTO `file` VALUES (187, '/static/picture/20180807093833.jpg', '', '', NULL);
INSERT INTO `file` VALUES (188, '/static/picture/20180807101003.png', '', '', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jmlist
-- ----------------------------
INSERT INTO `jmlist` VALUES (68, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (69, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (70, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (71, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (72, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (73, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (74, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (75, '', '', '', '', '');
INSERT INTO `jmlist` VALUES (76, '111', '', '111', '', '');
INSERT INTO `jmlist` VALUES (77, '测试', '', '13588461456', '', '');
INSERT INTO `jmlist` VALUES (78, '测试', '', '13588461455', '', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jmuser
-- ----------------------------
INSERT INTO `jmuser` VALUES (1, 'admin', '7c6fa7db2f2e5bc8', 'admin@admin.com', '13111111111');
INSERT INTO `jmuser` VALUES (11, '宏美时代东城', '2f3ffb8b782e58', '13@163.com', '13111111111');
INSERT INTO `jmuser` VALUES (12, '胡振辉', '753af282792f5d', '921704585@qq.com', '15869143992');
INSERT INTO `jmuser` VALUES (13, ' 宏美国际天城店', '2a3ffb8a742d50', '132@qq.com', '13111111111');
INSERT INTO `jmuser` VALUES (14, '财务', '2c39f9867429', '1231@qq.com', '13111111111');

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
INSERT INTO `news` VALUES (7, '标题7', '顾客反馈', '', NULL, '', '', 1);
INSERT INTO `news` VALUES (8, '标题8', '顾客反馈', '', '', '', '', 1);
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
INSERT INTO `news` VALUES (101, 'qweqweqw', '顾客反馈', 'user11', '<p>1231231</p>', '2018-07-24 11:34:31', '', 1);
INSERT INTO `news` VALUES (102, 'qweqweqw', '顾客反馈', 'user11', '<p>1231231</p>', '2018-07-24 11:34:32', '', 1);
INSERT INTO `news` VALUES (103, 'qweqweqw', '顾客反馈', 'user11', '<p>1231231</p>', '2018-07-24 11:34:33', '', 1);
INSERT INTO `news` VALUES (104, 'qweqweqw', '顾客反馈', 'user11', '<p>1231231</p>', '2018-07-24 11:34:33', '', 1);
INSERT INTO `news` VALUES (105, 'qweqweqw', '顾客反馈', 'user11', '<p>1231231</p>', '2018-07-24 11:34:34', '', 1);
INSERT INTO `news` VALUES (106, '1', '顾客反馈', '2', '<p>3</p>', '2018-07-24 09:42:08', '/static/picture/20180724214204.jpg', 1);
INSERT INTO `news` VALUES (107, 'qweqweqw', '顾客反馈', 'user11', '<p></p><div class=\"media-wrap video-wrap\"><video controls=\"\" loop=\"\" src=\"/static/picture/20180724200433.mp4\"></video></div><p></p><div class=\"media-wrap video-wrap\"><video controls=\"\" loop=\"\" src=\"/static/picture/20180724200445.mp4\"></video></div><p>1231231</p>', '2018-07-24 08:05:05', '/static/picture/20180724200502.mp4', 1);
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
INSERT INTO `news` VALUES (123, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-08-07 09:40:17', '', 0);
INSERT INTO `news` VALUES (124, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '行业资讯', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:12', '', 0);
INSERT INTO `news` VALUES (125, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p></p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-31 11:45:31', '', 0);
INSERT INTO `news` VALUES (126, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:19', '', 0);
INSERT INTO `news` VALUES (127, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-31 12:07:33', '', 0);
INSERT INTO `news` VALUES (128, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:21', '', 0);
INSERT INTO `news` VALUES (129, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-31 01:43:29', '', 0);
INSERT INTO `news` VALUES (130, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:24', '', 0);
INSERT INTO `news` VALUES (131, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:25', '', 0);
INSERT INTO `news` VALUES (132, '用力过猛的彩妆败笔比素颜还可怕 你中枪了么？', '顾客反馈', '宏美国际', '<p style=\"text-align:start;\">　　过分追求无瑕美肌底妆过厚</p><p style=\"text-align:start;\">　　很多女生都喜欢韩系美女那样的无瑕美肌，然而真正的“无暇”除了基础的护肤保养，还有外在的粉底修饰。然而对于底妆的误区也有很多，过分的追求遮瑕度会使底妆看起来过于厚重，而不自然，形成我们所说的“面粉脸”。这样的假面似的底妆会给人距离感，并且非常的容易脱妆。想要遮瑕可以用专门的遮瑕膏来进行点图，而不是大面积的叠加粉底。</p><p style=\"text-align:start;\">　　高光腮红的用量一定要谨慎</p><p style=\"text-align:start;\">　　同样是面部的彩妆，高光和腮红都是给我们带来好气色和好轮廓的彩妆技术。而这两种方式都是需要用“少量多次”的方式才打造。过多的高光会让人显得满面油光，即使你不是油性肌肤也会产生不好的错觉。而腮红过重出现的“高原红”更是很多女生所害怕的，用腮红刷蘸取腮红粉后，最好在手臂上抖一下，把握好腮红的用量才是关键。</p>', '2018-07-25 10:25:27', '', 0);
INSERT INTO `news` VALUES (133, '顾客反馈', '顾客反馈', '宏美国际', '<p>张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。<span style=\"color:#000000\"><span style=\"font-size:16px\"><span style=\"background-color:#ffffff\">张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。张女士脸上有很多痘痘，用了我们的产品之后痘痘不见了。</span></span></span></p><p></p><div class=\"media-wrap image-wrap align-center\" style=\"text-align:center\"><img controls=\"\" loop=\"\" src=\"/static/picture/20180807101003.png\"/></div><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '2018-08-07 02:10:26', '/static/picture/20180731193006.jpg', 0);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmuser_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 1, 1);
INSERT INTO `permission` VALUES (2, 2, 2);
INSERT INTO `permission` VALUES (3, 5, 2);
INSERT INTO `permission` VALUES (4, 6, 3);
INSERT INTO `permission` VALUES (5, 7, 3);
INSERT INTO `permission` VALUES (6, 8, 3);
INSERT INTO `permission` VALUES (7, 9, 3);
INSERT INTO `permission` VALUES (8, 10, 2);
INSERT INTO `permission` VALUES (9, 11, 3);
INSERT INTO `permission` VALUES (10, 12, 2);
INSERT INTO `permission` VALUES (11, 13, 3);
INSERT INTO `permission` VALUES (12, 14, 4);

-- ----------------------------
-- Table structure for permissionlist
-- ----------------------------
DROP TABLE IF EXISTS `permissionlist`;
CREATE TABLE `permissionlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `api_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `permissionlist` VALUES (69, 4, 18);
INSERT INTO `permissionlist` VALUES (70, 4, 19);
INSERT INTO `permissionlist` VALUES (71, 4, 21);
INSERT INTO `permissionlist` VALUES (72, 4, 41);
INSERT INTO `permissionlist` VALUES (73, 4, 38);
INSERT INTO `permissionlist` VALUES (74, 4, 39);
INSERT INTO `permissionlist` VALUES (75, 4, 40);

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
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (59, '爆款产品', '99-FF', '干粉', '50克/瓶', '多肽修护因子是万能因子，让肌肤恢复健康年轻状态', 126, 'BABY干粉', '');
INSERT INTO `product` VALUES (60, '爆款产品', 'ET400', '美瞳', '10L', '闪亮眼睛', 125, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (71, '组合套餐', 'DT-004', '多肽修护补水原液第三代', '15ml*100', '角质受损,防衰老', 124, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (72, '组合套餐', 'DT-001', '多肽修护补水原液第二代', '15ml*100', '角质受损,防衰老', 121, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (73, '组合套餐', 'DT-002', '多肽修护补水原液第一代', '15ml*100', '角质受损,防衰老', 187, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (76, '爆款产品', 'SS-0011-11', '爽肤水', '1瓶/一次', '温和质地和丰畜细腻的泡沫，不会刺激皮肤。', 186, 'www.taobao.com/', '');
INSERT INTO `product` VALUES (77, '组合套餐', '22-WW-44', '美丽联合开心', '10ml', '特别适合油性或暗疮性皮肤使用，以及有化妆习惯或容易毛孔堵塞的粉刺型肌肤。', 120, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (78, '爆款产品', '22-SS-EE', '结石面霜', '5ml*100', '蚕丝圣肽仿生膜被誉为“人的第二张皮肤”的天然蚕丝面膜，以丰富的蚕丝蛋白宠护肌肤，给予肌肤尊贵、舒心享受。', 185, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (79, '明星定制', 'ET-001', '蚕丝圣肽仿生膜', '500克/瓶', '蚕丝圣肽仿生膜被誉为“人的第二张皮肤”的天然蚕丝面膜，以丰富的蚕丝蛋白宠护肌肤，给予肌肤尊贵、舒心享受。', 118, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (80, '明星定制', 'AA-11', '玫瑰花精凝润-7步强效补水', '500克/瓶', '玫瑰花精凝润-7步强效补水', 117, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (81, '明星定制', 'DT-004', '皇家药浴SPA，排毒驱湿嫩肤', '5ml*100', '皇家药浴Spa十大养生美颜功效： 一、出汗、排毒——汗腺分泌加快，毒素从皮肤排泄； 二、促进产妇恢复，预防妇科病——修复产道，消炎杀菌； 三、增强内分泌系统功能和免疫力——药浴可有效地预防感冒和气管炎等疾病，增强抵抗力； 四、改善心脏的输出量——药浴后心脏跳动加快且有力，平均心跳加快10次/分左右，改善了心脏功能； 五、润肤止痒，防治皮肤病——浴后皮肤变得细腻光泽，干燥瘙痒消失，皮肤红润(尤其是女性)秀丽动人；', 116, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (82, '明星定制', '型号', '测试产品', '规格', '简介', 115, 'www.taobao.com', '');
INSERT INTO `product` VALUES (83, '植物功能原液', '22-77DD', '润肤止痒，防治皮肤病', '50克/瓶', '易睡安眠——药浴使皮肤主动出汗，不会有桑拿那样因物理热效应带来的干渴烦燥感觉。浴后易入眠，且眠而深，起床后倍感轻松。', 114, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (84, '植物功能原液', '33-DD', '促进肠胃蠕动，健脾助消化', '5ml*1100', '促进肠胃蠕动，健脾助消化——平时很少排气(俗称放屁)者会在浴中排气不断，肠鸣音加快变强，第二天排便畅通；', 184, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (85, '植物功能原液', 'EE44-WE', '改善心脏的输出量', '10盒*5', '增强神经调节能力——药浴可调节人脑中枢，使之反应更加灵敏，促进神经兴奋，达到精神爽快，头脑清晰', 183, 'https://www.taobao.com/', '');
INSERT INTO `product` VALUES (86, '植物功能原液', '11-1', '法国CY-D钻美白精华', '5ml*100', '法国CY-D钻美白精华', 182, 'https://www.taobao.com/', '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员');
INSERT INTO `role` VALUES (2, '网站运营者');
INSERT INTO `role` VALUES (3, '门店');
INSERT INTO `role` VALUES (4, '财务');

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of summary
-- ----------------------------
INSERT INTO `summary` VALUES (25, '2018-08-06-收入统计表', 14, '[{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"日期\",\"2\":\"姓名\",\"3\":\"项目\",\"4\":null,\"5\":\"收款方式/金额\",\"6\":null,\"7\":null,\"8\":null,\"9\":\"笔数\",\"10\":\"手续费\",\"11\":\"备注\"},{\"1\":null,\"2\":null,\"3\":\"成交\",\"4\":\"拓客\",\"5\":\"支付宝\",\"6\":\"拉卡拉\",\"7\":\"微信\",\"8\":\"现金\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"},{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\",\"10\":\"\",\"11\":\"\"}]', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
