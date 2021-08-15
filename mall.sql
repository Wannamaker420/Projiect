/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2020-04-04 15:15:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '123456');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `goodsId` bigint(20) NOT NULL,
  `goodsDetailId` bigint(20) NOT NULL,
  `orderId` bigint(20) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `typeId` bigint(20) NOT NULL,
  `img` varchar(500) DEFAULT NULL,
  `desc` text,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', '德国爱他美奶粉', '4', 'http://www.6dmall.com/images/thumb_img/6_thumb_G_1430816698434.jpg', '德国高端婴幼儿奶粉品牌，独有专利Pronutra+配方；GOS/FOS益生元以母乳为标准的膳食纤维组合；LCP-Milupan长链多元不饱和脂肪酸类似DHA但更稳定安全；乳糖预防身体发育缓慢;每天补充600毫克钙，助力宝贝牙齿骨骼发育；呵护宝贝聪明健康成长。', '2020-03-03 13:43:30', '2020-03-03 13:43:30');
INSERT INTO `goods` VALUES ('4', '阿根廷牛栏奶粉', '4', 'http://www.6dmall.com/images/thumb_img/71_thumb_G_1531727194.jpg', '荷兰婴幼儿奶粉领先品牌,正品奶粉呈天然乳黄色,粉粒细腻均匀,松散无结块；开罐有淡淡乳香味,入口甜味较淡,入水需搅拌方能溶解,闻之有淡淡奶腥味。7大关键营养优势：DHA/AA；低聚半乳糖,益生元组合；核苷酸；OMEGA-3；维生素A、B2；A-亚麻酸', '2020-03-03 13:47:46', '2020-03-03 13:47:46');
INSERT INTO `goods` VALUES ('5', '金恩贝施 婴儿DHA藻油凝胶糖果30粒', '5', 'http://www.6dmall.com/images/thumb_img/2289_thumb_G_1449734344.jpg', '', '2020-03-03 15:22:06', '2020-03-03 15:22:06');
INSERT INTO `goods` VALUES ('6', '荷兰牛栏 Bambix 精细谷物营养米粉', '6', 'http://www.6dmall.com/images/thumb_img/1497_thumb_G_1518043734.jpg', '', '2020-03-03 15:24:18', '2020-03-03 15:24:18');
INSERT INTO `goods` VALUES ('7', '美国BABYTREND提篮式汽车婴儿安全座椅', '7', 'http://www.6dmall.com/images/thumb_img/14022_thumb_G_1515747882.jpg', '', '2020-03-03 15:27:14', '2020-03-03 15:27:14');
INSERT INTO `goods` VALUES ('8', '月光之恋多功能孕妇护腰侧卧抱枕天鹅绒升级款', '9', 'http://www.6dmall.com/images/thumb_img/9606_thumb_G_1432508170.jpg', '', '2020-03-03 15:29:04', '2020-03-03 15:29:04');
INSERT INTO `goods` VALUES ('9', '美国 CaliforniaBaby/加州宝宝', '8', 'http://www.6dmall.com/images/thumb_img/4834_thumb_G_1501849471.jpg', '', '2020-03-03 15:30:24', '2020-03-03 15:30:24');

-- ----------------------------
-- Table structure for goodsdetails
-- ----------------------------
DROP TABLE IF EXISTS `goodsdetails`;
CREATE TABLE `goodsdetails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goodsId` bigint(20) NOT NULL,
  `specName` varchar(500) NOT NULL,
  `stockNum` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL,
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsdetails
-- ----------------------------
INSERT INTO `goodsdetails` VALUES ('4', '3', '800g/罐', '99', '316', '2020-03-03 13:43:30', '2020-03-03 13:43:30');
INSERT INTO `goodsdetails` VALUES ('5', '4', '800g/罐', '100', '269', '2020-03-03 13:47:46', '2020-03-03 13:47:46');
INSERT INTO `goodsdetails` VALUES ('6', '5', '30粒/盒', '88', '88', '2020-03-03 15:22:06', '2020-03-03 15:22:06');
INSERT INTO `goodsdetails` VALUES ('7', '6', '250g*4', '50', '168', '2020-03-03 15:24:18', '2020-03-03 15:24:18');
INSERT INTO `goodsdetails` VALUES ('8', '7', '默认', '10', '1580', '2020-03-03 15:27:14', '2020-03-03 15:27:14');
INSERT INTO `goodsdetails` VALUES ('9', '8', '默认', '10', '158', '2020-03-03 15:29:04', '2020-03-03 15:29:04');
INSERT INTO `goodsdetails` VALUES ('10', '9', '默认', '18', '198', '2020-03-03 15:30:24', '2020-03-03 15:30:24');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `goodsId` bigint(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '1', '8', '这件商品是什么材质的？', '1', '2020-03-04 10:55:12');
INSERT INTO `messages` VALUES ('2', '4', '8', '睡着舒服吗？', '0', '2020-03-24 08:35:53');
INSERT INTO `messages` VALUES ('3', '4', '9', '这个适合几个月的宝宝使用？\n', '1', '2020-03-24 08:36:18');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `goodsDetailId` bigint(20) NOT NULL,
  `goodsNum` int(11) NOT NULL,
  `amount` float NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '5', '4', '1', '316', '1', '2020-03-24 05:02:40', '2020-03-24 05:02:40');
INSERT INTO `orders` VALUES ('2', '5', '4', '1', '316', '2', '2020-03-24 05:02:43', '2020-03-24 05:02:43');
INSERT INTO `orders` VALUES ('3', '4', '10', '1', '198', '1', '2020-03-25 09:31:14', '2020-03-25 09:31:14');
INSERT INTO `orders` VALUES ('4', '4', '10', '1', '198', '2', '2020-03-25 09:31:17', '2020-03-25 09:31:17');
INSERT INTO `orders` VALUES ('5', '4', '10', '1', '198', '1', '2020-03-25 09:32:35', '2020-03-25 09:32:35');

-- ----------------------------
-- Table structure for replies
-- ----------------------------
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `messageId` bigint(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of replies
-- ----------------------------
INSERT INTO `replies` VALUES ('1', '1', '您好，是天鹅绒材质。', '2020-03-04 10:59:32');
INSERT INTO `replies` VALUES ('2', '3', '', '2020-03-26 13:31:09');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('4', '进口奶粉');
INSERT INTO `types` VALUES ('5', '母婴营养');
INSERT INTO `types` VALUES ('6', '宝宝辅食');
INSERT INTO `types` VALUES ('7', '宝宝用品');
INSERT INTO `types` VALUES ('8', '宝宝护洗');
INSERT INTO `types` VALUES ('9', '孕妈用品');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `nickname` varchar(64) NOT NULL,
  `sex` int(11) NOT NULL DEFAULT '0',
  `recipient` varchar(64) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `headimg` varchar(500) NOT NULL DEFAULT 'http://tvax4.sinaimg.cn/crop.0.0.480.480.180/768c39d5ly8fjje1d0teej20dc0dcq35.jpg',
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '704945176@qq.com', '$2a$10$fxYYKfD2Q6Ks7f0jgrRHJOhh56TzmitwY6/ta4wy8ZTjIe658WfVq', 'zjf', '0', '邹景峰', '重庆', '12345678911', 'http://tvax4.sinaimg.cn/crop.0.0.480.480.180/768c39d5ly8fjje1d0teej20dc0dcq35.jpg', '2020-03-01 15:56:12', '2020-03-01 15:56:12');
INSERT INTO `users` VALUES ('3', '526088078@qq.com', '$2a$10$v/jEEcUESM0LWBzJ9z8apOuMdSxHJ2RmJu/HpPIPXNAMjDFlTRThO', 'wsy', '0', '吴诗悦', '重庆科技学院', '12345678911', 'http://tvax4.sinaimg.cn/crop.0.0.480.480.180/768c39d5ly8fjje1d0teej20dc0dcq35.jpg', '2020-03-03 12:00:40', '2020-03-03 12:00:40');
INSERT INTO `users` VALUES ('4', '1234567@qq.com', '$2a$10$sicSS3q9HrVMLF5sjiWiUOK9f5KWr5TDb4ME655rN2LJxOrfC9/uy', '付露', '0', '付露', '重庆市解放碑', '18888888888', 'http://tvax4.sinaimg.cn/crop.0.0.480.480.180/768c39d5ly8fjje1d0teej20dc0dcq35.jpg', '2020-03-24 06:49:59', '2020-03-24 06:49:59');
INSERT INTO `users` VALUES ('5', '88888@qq.com', '$2a$10$XDLYzehG1Xdy1aV71WneM.X6xm9yRk/zEwbTqsfudK9i2y98G1dpe', '重庆科技学院', '0', '重科', '重庆科技学院', '18888888888', 'http://tvax4.sinaimg.cn/crop.0.0.480.480.180/768c39d5ly8fjje1d0teej20dc0dcq35.jpg', '2020-03-26 09:06:11', '2020-03-26 09:06:11');
