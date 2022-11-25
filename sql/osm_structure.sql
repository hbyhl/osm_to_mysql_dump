/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : osm

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 25/11/2022 19:24:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nodes
-- ----------------------------
DROP TABLE IF EXISTS `nodes`;
CREATE TABLE `nodes` (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                         `lat` double NOT NULL,
                         `lon` double NOT NULL,
                         `version` bigint(20) DEFAULT NULL,
                         `timestamp` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `timestamp2` datetime DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10188037928 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nodes_tags
-- ----------------------------
DROP TABLE IF EXISTS `nodes_tags`;
CREATE TABLE `nodes_tags` (
                              `node_id` bigint(20) NOT NULL,
                              `k` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `v` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              PRIMARY KEY (`id`),
                              KEY `id` (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1466901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for relation_member
-- ----------------------------
DROP TABLE IF EXISTS `relation_member`;
CREATE TABLE `relation_member` (
                                   `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                   `relation_id` bigint(20) NOT NULL,
                                   `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `ref` bigint(20) DEFAULT NULL,
                                   `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for relations
-- ----------------------------
DROP TABLE IF EXISTS `relations`;
CREATE TABLE `relations` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `version` bigint(20) DEFAULT NULL,
                             `timestamp2` datetime DEFAULT NULL,
                             `timestamp` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for relations_tags
-- ----------------------------
DROP TABLE IF EXISTS `relations_tags`;
CREATE TABLE `relations_tags` (
                                  `relation_id` bigint(20) NOT NULL,
                                  `k` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `v` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                  PRIMARY KEY (`id`),
                                  KEY `id` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ways
-- ----------------------------
DROP TABLE IF EXISTS `ways`;
CREATE TABLE `ways` (
                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                        `version` bigint(20) DEFAULT NULL,
                        `timestamp2` datetime DEFAULT NULL,
                        `timestamp` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ways_nodes
-- ----------------------------
DROP TABLE IF EXISTS `ways_nodes`;
CREATE TABLE `ways_nodes` (
                              `node_id` bigint(20) NOT NULL,
                              `way_id` bigint(20) NOT NULL,
                              `sequence` int(11) NOT NULL,
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              PRIMARY KEY (`id`),
                              KEY `nodeid` (`node_id`,`way_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ways_tags
-- ----------------------------
DROP TABLE IF EXISTS `ways_tags`;
CREATE TABLE `ways_tags` (
                             `way_id` bigint(20) NOT NULL,
                             `k` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                             `v` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             PRIMARY KEY (`id`),
                             KEY `id` (`way_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
