/*
 Navicat Premium Data Transfer

 Source Server         : Legion 192.168.248.142
 Source Server Type    : MySQL
 Source Server Version : 101111 (10.11.11-MariaDB-0+deb12u1)
 Source Host           : localhost:3306
 Source Schema         : auth

 Target Server Type    : MySQL
 Target Server Version : 101111 (10.11.11-MariaDB-0+deb12u1)
 File Encoding         : 65001

 Date: 14/04/2025 23:44:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sessionkey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `v` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `s` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT current_timestamp,
  `first_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '127.0.0.1',
  `last_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '127.0.0.1',
  `access_ip` int UNSIGNED NOT NULL DEFAULT 0,
  `failed_logins` int UNSIGNED NOT NULL DEFAULT 0,
  `email_blocked` int UNSIGNED NOT NULL DEFAULT 0,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `lock_country` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '00',
  `last_login` timestamp NULL DEFAULT NULL,
  `last_email` timestamp NULL DEFAULT NULL,
  `online` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `expansion` tinyint UNSIGNED NOT NULL DEFAULT 6,
  `mutetime` bigint NOT NULL DEFAULT 0,
  `locale` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `os` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `recruiter` int UNSIGNED NOT NULL DEFAULT 0,
  `invite` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `lang` enum('tw','cn','en','ua','ru') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'en',
  `unsubscribe` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `dt_vote` timestamp NULL DEFAULT NULL,
  `mutereason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `muteby` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `AtAuthFlag` smallint UNSIGNED NOT NULL DEFAULT 0,
  `coins` int NOT NULL DEFAULT 0,
  `hwid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `balans` int NOT NULL DEFAULT 0,
  `karma` int UNSIGNED NOT NULL DEFAULT 0,
  `activate` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `verify` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `tested` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `donate` int UNSIGNED NOT NULL DEFAULT 0,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `phone_hash` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `telegram_lock` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `telegram_id` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  INDEX `recruiter`(`recruiter` ASC) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `username_idx`(`username` ASC) USING BTREE,
  INDEX `hwid`(`hwid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Account System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for account_access
-- ----------------------------
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE `account_access`  (
  `id` int UNSIGNED NOT NULL,
  `gmlevel` tinyint UNSIGNED NOT NULL,
  `RealmID` int NOT NULL DEFAULT -1,
  `comments` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`, `RealmID`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `RealmID`(`RealmID` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for account_banned
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned`  (
  `id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account id',
  `bandate` int UNSIGNED NOT NULL DEFAULT 0,
  `unbandate` int UNSIGNED NOT NULL DEFAULT 0,
  `bannedby` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `banreason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`, `bandate`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `bandate`(`bandate` ASC) USING BTREE,
  INDEX `unbandate`(`unbandate` ASC) USING BTREE,
  INDEX `active`(`active` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Ban List' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_banned
-- ----------------------------

-- ----------------------------
-- Table structure for account_character_template
-- ----------------------------
DROP TABLE IF EXISTS `account_character_template`;
CREATE TABLE `account_character_template`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` int NOT NULL DEFAULT 0,
  `bnet_account` int NOT NULL DEFAULT 0,
  `level` tinyint UNSIGNED NOT NULL DEFAULT 100,
  `iLevel` mediumint NOT NULL DEFAULT 810,
  `money` int UNSIGNED NOT NULL DEFAULT 100,
  `artifact` tinyint(1) NOT NULL DEFAULT 0,
  `charGuid` int NOT NULL DEFAULT 0,
  `realm` int NOT NULL DEFAULT 0,
  `templateId` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `account`(`account` ASC) USING BTREE,
  INDEX `bnet_account`(`bnet_account` ASC) USING BTREE,
  INDEX `charGuid`(`charGuid` ASC) USING BTREE,
  INDEX `realm`(`realm` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_character_template
-- ----------------------------

-- ----------------------------
-- Table structure for account_flagged
-- ----------------------------
DROP TABLE IF EXISTS `account_flagged`;
CREATE TABLE `account_flagged`  (
  `id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Id',
  `banduration` int UNSIGNED NOT NULL DEFAULT 0,
  `bannedby` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `banreason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_flagged
-- ----------------------------

-- ----------------------------
-- Table structure for account_ip_access
-- ----------------------------
DROP TABLE IF EXISTS `account_ip_access`;
CREATE TABLE `account_ip_access`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int UNSIGNED NULL DEFAULT NULL,
  `ip` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `min` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `max` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `enable` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pid_ip`(`pid` ASC, `ip` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_ip_access
-- ----------------------------

-- ----------------------------
-- Table structure for account_last_played_character
-- ----------------------------
DROP TABLE IF EXISTS `account_last_played_character`;
CREATE TABLE `account_last_played_character`  (
  `accountId` int UNSIGNED NOT NULL,
  `region` tinyint UNSIGNED NOT NULL,
  `battlegroup` tinyint UNSIGNED NOT NULL,
  `realmId` int UNSIGNED NULL DEFAULT NULL,
  `characterName` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `characterGUID` bigint UNSIGNED NULL DEFAULT NULL,
  `lastPlayedTime` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`accountId`, `region`, `battlegroup`) USING BTREE,
  INDEX `accountId`(`accountId` ASC) USING BTREE,
  INDEX `region`(`region` ASC) USING BTREE,
  INDEX `battlegroup`(`battlegroup` ASC) USING BTREE,
  INDEX `realmId`(`realmId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for account_mute
-- ----------------------------
DROP TABLE IF EXISTS `account_mute`;
CREATE TABLE `account_mute`  (
  `guid` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `mutedate` int UNSIGNED NOT NULL DEFAULT 0,
  `mutetime` int UNSIGNED NOT NULL DEFAULT 0,
  `mutedby` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mutereason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`guid`, `mutedate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'mute List' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_mute
-- ----------------------------

-- ----------------------------
-- Table structure for account_muted
-- ----------------------------
DROP TABLE IF EXISTS `account_muted`;
CREATE TABLE `account_muted`  (
  `id` int NOT NULL DEFAULT 0 COMMENT 'Account id',
  `bandate` bigint NOT NULL DEFAULT 0,
  `unbandate` bigint NOT NULL DEFAULT 0,
  `bannedby` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `banreason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`, `bandate`) USING BTREE,
  INDEX `bandate`(`bandate` ASC) USING BTREE,
  INDEX `unbandate`(`unbandate` ASC) USING BTREE,
  INDEX `active`(`active` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Ban List' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_muted
-- ----------------------------

-- ----------------------------
-- Table structure for account_rates
-- ----------------------------
DROP TABLE IF EXISTS `account_rates`;
CREATE TABLE `account_rates`  (
  `account` int NOT NULL DEFAULT 0,
  `realm` int UNSIGNED NOT NULL DEFAULT 0,
  `rate` int UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `unique`(`account` ASC, `realm` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of account_rates
-- ----------------------------

-- ----------------------------
-- Table structure for account_tokens
-- ----------------------------
DROP TABLE IF EXISTS `account_tokens`;
CREATE TABLE `account_tokens`  (
  `account_id` int UNSIGNED NOT NULL,
  `tokenType` tinyint UNSIGNED NOT NULL,
  `amount` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`, `tokenType`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for build_info
-- ----------------------------
DROP TABLE IF EXISTS `build_info`;
CREATE TABLE `build_info`  (
  `build` int NOT NULL,
  `majorVersion` int NULL DEFAULT NULL,
  `minorVersion` int NULL DEFAULT NULL,
  `bugfixVersion` int NULL DEFAULT NULL,
  `hotfixVersion` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `winAuthSeed` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `win64AuthSeed` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mac64AuthSeed` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `winChecksumSeed` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `macChecksumSeed` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`build`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of build_info
-- ----------------------------
INSERT INTO `build_info` VALUES (5875, 1, 12, 1, NULL, NULL, NULL, NULL, '95EDB27C7823B363CBDDAB56A392E7CB73FCCA20', '8D173CC381961EEBABF336F5E6675B101BB513E5');
INSERT INTO `build_info` VALUES (6005, 1, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (6141, 1, 12, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (8606, 2, 4, 3, NULL, NULL, NULL, NULL, '319AFAA3F2559682F9FF658BE01456255F456FB1', 'D8B0ECFE534BC1131E19BAD1D4C0E813EEE4994F');
INSERT INTO `build_info` VALUES (9947, 3, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (10505, 3, 2, 2, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (11159, 3, 3, 0, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (11403, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (11723, 3, 3, 3, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (12340, 3, 3, 5, 'a', NULL, NULL, NULL, 'CDCBBD5188315E6B4D19449D492DBCFAF156A347', 'B706D13FF2F4018839729461E3F8A0E2B5FDC034');
INSERT INTO `build_info` VALUES (13623, 4, 0, 6, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (13930, 3, 3, 5, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (14545, 4, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (15595, 4, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19116, 6, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19243, 6, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19342, 6, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19702, 6, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19802, 6, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19831, 6, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (19865, 6, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20182, 6, 2, 0, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20201, 6, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20216, 6, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20253, 6, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20338, 6, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20444, 6, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20490, 6, 2, 2, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20574, 6, 2, 2, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20726, 6, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20779, 6, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (20886, 6, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (21355, 6, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (21463, 6, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (21742, 6, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22248, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22293, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22345, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22410, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22423, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22498, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22522, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22566, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22594, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22624, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22747, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22810, 7, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22900, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22908, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22950, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22995, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (22996, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (23171, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (23222, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (23360, 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (23420, 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (23911, 7, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (23937, 7, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24015, 7, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24330, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24367, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24415, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24430, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24461, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (24742, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `build_info` VALUES (25549, 7, 3, 2, NULL, 'FE594FC35E7F9AFF86D99D8A364AB297', '1252624ED8CBD6FAC7D33F5D67A535F3', '66FC5E09B8706126795F140308C8C1D8', NULL, NULL);
INSERT INTO `build_info` VALUES (25996, 7, 3, 5, NULL, '23C59C5963CBEF5B728D13A50878DFCB', 'C7FF932D6A2174A3D538CA7212136D2B', '210B970149D6F56CAC9BADF2AAC91E8E', NULL, NULL);
INSERT INTO `build_info` VALUES (26124, 7, 3, 5, NULL, 'F8C05AE372DECA1D6C81DA7A8D1C5C39', '46DF06D0147BA67BA49AF553435E093F', 'C9CA997AB8EDE1C65465CB2920869C4E', NULL, NULL);
INSERT INTO `build_info` VALUES (26365, 7, 3, 5, NULL, '2AAC82C80E829E2CA902D70CFA1A833A', '59A53F307288454B419B13E694DF503C', 'DBE7F860276D6B400AAA86B35D51A417', NULL, NULL);
INSERT INTO `build_info` VALUES (26654, 7, 3, 5, NULL, 'FAC2D693E702B9EC9F750F17245696D8', 'A752640E8B99FE5B57C1320BC492895A', '9234C1BD5E9687ADBD19F764F2E0E811', NULL, NULL);
INSERT INTO `build_info` VALUES (26822, 7, 3, 5, NULL, '283E8D77ECF7060BE6347BE4EB99C7C7', '2B05F6D746C0C6CC7EF79450B309E595', '91003668C245D14ECD8DF094E065E06B', NULL, NULL);
INSERT INTO `build_info` VALUES (26899, 7, 3, 5, NULL, 'F462CD2FE4EA3EADF875308FDBB18C99', '3551EF0028B51E92170559BD25644B03', '8368EFC2021329110A16339D298200D4', NULL, NULL);
INSERT INTO `build_info` VALUES (26972, 7, 3, 5, NULL, '797ECC19662DCBD5090A4481173F1D26', '6E212DEF6A0124A3D9AD07F5E322F7AE', '341CFEFE3D72ACA9A4407DC535DED66A', NULL, NULL);

-- ----------------------------
-- Table structure for hwid_penalties
-- ----------------------------
DROP TABLE IF EXISTS `hwid_penalties`;
CREATE TABLE `hwid_penalties`  (
  `hwid` bigint UNSIGNED NOT NULL,
  `penalties` int NOT NULL DEFAULT 0,
  `last_reason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`hwid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of hwid_penalties
-- ----------------------------

-- ----------------------------
-- Table structure for ip_banned
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned`  (
  `ip` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '127.0.0.1',
  `bandate` bigint NOT NULL,
  `unbandate` bigint NOT NULL,
  `bannedby` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`, `bandate`) USING BTREE,
  INDEX `ip`(`ip` ASC) USING BTREE,
  INDEX `bandate`(`bandate` ASC) USING BTREE,
  INDEX `unbandate`(`unbandate` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Banned IPs' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ip_banned
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `time` int NOT NULL,
  `realm` int NOT NULL,
  `type` int NOT NULL,
  `level` int NOT NULL DEFAULT 0,
  `string` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  INDEX `time`(`time` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for online
-- ----------------------------
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online`  (
  `realmID` int UNSIGNED NOT NULL DEFAULT 0,
  `online` int UNSIGNED NOT NULL DEFAULT 0,
  `diff` int UNSIGNED NOT NULL DEFAULT 0,
  `uptime` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`realmID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for realmcharacters
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters`  (
  `realmid` int UNSIGNED NOT NULL DEFAULT 0,
  `acctid` int UNSIGNED NOT NULL,
  `numchars` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`realmid`, `acctid`) USING BTREE,
  INDEX `acctid`(`acctid` ASC) USING BTREE,
  INDEX `realmid`(`realmid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Realm Character Tracker' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for realmlist
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '127.0.0.1',
  `port` smallint UNSIGNED NOT NULL DEFAULT 8085,
  `gamePort` int NOT NULL DEFAULT 8086,
  `portCount` mediumint UNSIGNED NOT NULL DEFAULT 1,
  `icon` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `flag` tinyint UNSIGNED NOT NULL DEFAULT 2,
  `timezone` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `allowedSecurityLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `population` float UNSIGNED NOT NULL DEFAULT 0,
  `gamebuild` int UNSIGNED NOT NULL DEFAULT 26972,
  `Region` tinyint UNSIGNED NOT NULL DEFAULT 2,
  `Battlegroup` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `localAddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '127.0.0.1',
  `localSubnetMask` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '255.255.255.0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_name`(`name` ASC) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Realm System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of realmlist
-- ----------------------------
INSERT INTO `realmlist` VALUES (1,'LegionCore','127.0.0.1',8085,8086,1,0,2,1,0,0,26972,2,1,'127.0.0.1','255.255.255.0');

-- ----------------------------
-- Table structure for updates
-- ----------------------------
DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates`  (
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp COMMENT 'timestamp when the query was applied.',
  `speed` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'List of all applied updates in this database.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of updates
-- ----------------------------

-- ----------------------------
-- Table structure for updates_include
-- ----------------------------
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE `updates_include`  (
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'List of directories where we want to include sql updates.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of updates_include
-- ----------------------------
INSERT INTO `updates_include` VALUES ('$/sql/old/auth', 'ARCHIVED');
INSERT INTO `updates_include` VALUES ('$/sql/updates/auth', 'RELEASED');

-- ----------------------------
-- Table structure for uptime
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime`  (
  `realmid` int UNSIGNED NOT NULL,
  `starttime` bigint UNSIGNED NOT NULL DEFAULT 0,
  `startstring` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `uptime` bigint UNSIGNED NOT NULL DEFAULT 0,
  `maxplayers` smallint UNSIGNED NOT NULL DEFAULT 0,
  `revision` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'LegionCore',
  PRIMARY KEY (`realmid`, `starttime`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Uptime system' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version`  (
  `core_version` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `db_version` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Version of auth DB.'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Version Notes' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('604fe9edcd05+ 2025-04-14 13:34:31 -0400 (master branch) (Unix, Release)', '', 'LegionCore Auth Database 2024-10-23');

SET FOREIGN_KEY_CHECKS = 1;
