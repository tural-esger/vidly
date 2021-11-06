/*
 Navicat Premium Data Transfer

 Source Server         : mysql-3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : vidly

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 06/11/2021 15:49:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_gold` tinyint(0) UNSIGNED NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'Johny', 0, '111111');
INSERT INTO `customer` VALUES (2, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (4, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (5, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (6, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (9, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (10, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (11, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (12, 'Elvin', 1, '994515460480');
INSERT INTO `customer` VALUES (13, 'Elvin', 1, '994515460480');

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of genre
-- ----------------------------
INSERT INTO `genre` VALUES (2, 'Horror');
INSERT INTO `genre` VALUES (3, 'Action');
INSERT INTO `genre` VALUES (5, 'Tural');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `genre_id` int(0) NULL DEFAULT NULL,
  `number_in_stock` int(0) UNSIGNED NULL DEFAULT NULL,
  `daily_rental_rate` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (4, 'Arşın mal alan', 1, 5, 20);
INSERT INTO `movie` VALUES (3, 'O olmasın, bu olsun', 2, 2, 10);
INSERT INTO `movie` VALUES (7, 'O olmasın, bu olsun', 2, 2, 10);
INSERT INTO `movie` VALUES (8, 'Arşın mal alan', 1, 5, 20);
INSERT INTO `movie` VALUES (9, 'Arşın mal alan', 1, 5, 20);

SET FOREIGN_KEY_CHECKS = 1;
