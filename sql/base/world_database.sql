/*
 Navicat Premium Data Transfer

 Source Server         : Legion 192.168.248.142
 Source Server Type    : MySQL
 Source Server Version : 101111 (10.11.11-MariaDB-0+deb12u1)
 Source Host           : localhost:3306
 Source Schema         : world

 Target Server Type    : MySQL
 Target Server Version : 101111 (10.11.11-MariaDB-0+deb12u1)
 File Encoding         : 65001

 Date: 14/04/2025 22:50:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_requirement
-- ----------------------------
DROP TABLE IF EXISTS `access_requirement`;
CREATE TABLE `access_requirement`  (
  `mapId` mediumint NOT NULL,
  `difficulty` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `dungeonId` smallint NOT NULL DEFAULT 0,
  `level_min` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `level_max` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `item_level` smallint UNSIGNED NOT NULL DEFAULT 0,
  `item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `item2` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest_done_A` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest_done_H` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `completed_achievement` int UNSIGNED NOT NULL DEFAULT 0,
  `completed_achievement_A` int UNSIGNED NOT NULL DEFAULT 0,
  `quest_failed_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`mapId`, `difficulty`, `dungeonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Access Requirements' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_requirement
-- ----------------------------
INSERT INTO `access_requirement` VALUES (-1, 1, 788, 90, 255, 510, 0, 0, 0, 0, 0, 0, NULL, 'Random Dungeon Warlords of Draenor');

-- ----------------------------
-- Table structure for achievement_criteria_data
-- ----------------------------
DROP TABLE IF EXISTS `achievement_criteria_data`;
CREATE TABLE `achievement_criteria_data`  (
  `criteria_id` mediumint NOT NULL,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `value1` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `value2` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`criteria_id`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Achievment system' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievement_criteria_data
-- ----------------------------
INSERT INTO `achievement_criteria_data` VALUES (123, 0, 0, 0, '');

-- ----------------------------
-- Table structure for achievement_reward
-- ----------------------------
DROP TABLE IF EXISTS `achievement_reward`;
CREATE TABLE `achievement_reward`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `title_A` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `title_H` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `genderTitle` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `learnSpell` int UNSIGNED NOT NULL DEFAULT 0,
  `castSpell` int UNSIGNED NOT NULL DEFAULT 0,
  `item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `sender` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ScriptName` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievement_reward
-- ----------------------------
INSERT INTO `achievement_reward` VALUES (13, 0, 0, 0, 0, 0, 41426, 16128, 'Level 80', 'Congratulations on your conviction to reach the 80th season of adventure. You are undoubtedly dedicated to the cause of ridding Azeroth of the evils which have plagued us.$B$BAnd while the journey thus far has been no minor feat, the true battle lies ahead.$B$BFight on!$B$BRhonin', '');

-- ----------------------------
-- Table structure for archaeology_digsites
-- ----------------------------
DROP TABLE IF EXISTS `archaeology_digsites`;
CREATE TABLE `archaeology_digsites`  (
  `idx` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `map` int NULL DEFAULT NULL,
  `x` float NULL DEFAULT NULL,
  `y` float NULL DEFAULT NULL,
  `map_x` float NULL DEFAULT NULL,
  `map_y` float NULL DEFAULT NULL,
  `zone` int NULL DEFAULT NULL,
  `branch_id` int NULL DEFAULT NULL,
  `entry` int NULL DEFAULT 0,
  PRIMARY KEY (`idx`) USING BTREE,
  UNIQUE INDEX `uniq`(`map_x` ASC, `map_y` ASC, `zone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7095 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of archaeology_digsites
-- ----------------------------
INSERT INTO `archaeology_digsites` VALUES (1, 1, 4157.85, 1065.67, 11, 13.4, 331, 4, 0);

-- ----------------------------
-- Table structure for archaeology_zones
-- ----------------------------
DROP TABLE IF EXISTS `archaeology_zones`;
CREATE TABLE `archaeology_zones`  (
  `site_id` mediumint NOT NULL,
  `zone_id` mediumint NOT NULL,
  `branch_id` mediumint NOT NULL,
  PRIMARY KEY (`site_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of archaeology_zones
-- ----------------------------
INSERT INTO `archaeology_zones` VALUES (9, 38, 1);

-- ----------------------------
-- Table structure for area_queststart
-- ----------------------------
DROP TABLE IF EXISTS `area_queststart`;
CREATE TABLE `area_queststart`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_queststart
-- ----------------------------
INSERT INTO `area_queststart` VALUES (19, 26553);

-- ----------------------------
-- Table structure for areatrigger_actions
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_actions`;
CREATE TABLE `areatrigger_actions`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `customEntry` int UNSIGNED NOT NULL DEFAULT 0,
  `id` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `moment` int UNSIGNED NOT NULL DEFAULT 1,
  `actionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `targetFlags` int NOT NULL DEFAULT 0,
  `spellId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `maxCharges` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `hasAura` int NOT NULL DEFAULT 0,
  `hasAura2` int NOT NULL DEFAULT 0,
  `hasAura3` int NOT NULL DEFAULT 0,
  `hasspell` int NOT NULL DEFAULT 0,
  `chargeRecoveryTime` int UNSIGNED NOT NULL DEFAULT 0,
  `scaleStep` float NOT NULL DEFAULT 0,
  `scaleMin` float UNSIGNED NOT NULL DEFAULT 0,
  `scaleMax` float UNSIGNED NOT NULL DEFAULT 0,
  `scaleVisualUpdate` tinyint(1) NOT NULL DEFAULT 1,
  `hitMaxCount` int NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 0,
  `onDespawn` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `auraCaster` int NOT NULL DEFAULT 0,
  `minDistance` float NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`entry`, `id`, `customEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_actions
-- ----------------------------
INSERT INTO `areatrigger_actions` VALUES (0, 11869, 0, 1, 0, 8, 215997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Odin\'s Gaze');

-- ----------------------------
-- Table structure for areatrigger_data
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_data`;
CREATE TABLE `areatrigger_data`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spellId` int NOT NULL DEFAULT 0,
  `customEntry` int UNSIGNED NOT NULL DEFAULT 0,
  `moveType` int UNSIGNED NOT NULL DEFAULT 0,
  `waitTime` int NOT NULL DEFAULT 0,
  `speed` float NOT NULL DEFAULT 0,
  `activationDelay` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `updateDelay` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `maxCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `hitType` int NOT NULL DEFAULT 0,
  `AngleToCaster` float NOT NULL DEFAULT 0,
  `AnglePointA` float NOT NULL DEFAULT 0,
  `AnglePointB` float NOT NULL DEFAULT 0,
  `maxActiveTargets` tinyint NOT NULL DEFAULT 0,
  `Param` float NOT NULL DEFAULT 0,
  `RandomRadiusOfSpawn` float UNSIGNED NOT NULL DEFAULT 0,
  `MoveEndDespawn` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `WithObjectSize` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AliveOnly` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `AllowBoxCheck` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `spellId`, `customEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_data
-- ----------------------------
INSERT INTO `areatrigger_data` VALUES (228, 147494, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);

-- ----------------------------
-- Table structure for areatrigger_force
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_force`;
CREATE TABLE `areatrigger_force`  (
  `CustomEntry` int UNSIGNED NOT NULL DEFAULT 0,
  `AuraID` int UNSIGNED NOT NULL DEFAULT 0,
  `MayBeAuraID` int UNSIGNED NOT NULL DEFAULT 0,
  `windType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `windSpeed` float NOT NULL DEFAULT 0,
  `windX` float NOT NULL DEFAULT 0,
  `windY` float NOT NULL DEFAULT 0,
  `windZ` float NOT NULL DEFAULT 0,
  `centerX` float NOT NULL DEFAULT 0,
  `centerY` float NOT NULL DEFAULT 0,
  `centerZ` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`CustomEntry`, `AuraID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_force
-- ----------------------------
INSERT INTO `areatrigger_force` VALUES (8183, 0, 80808, 1, 30, 0, 0, 0, -102.408, 6021.36, 0.497215);

-- ----------------------------
-- Table structure for areatrigger_polygon
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_polygon`;
CREATE TABLE `areatrigger_polygon`  (
  `entry` int NOT NULL DEFAULT 0,
  `spellId` int NOT NULL DEFAULT 0,
  `type` tinyint NOT NULL DEFAULT 1,
  `id` int NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `spellId`, `type`, `id`) USING BTREE,
  INDEX `entry`(`entry` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_polygon
-- ----------------------------
INSERT INTO `areatrigger_polygon` VALUES (0, 151034, 1, 0, -3.5, 0.4);

-- ----------------------------
-- Table structure for areatrigger_questender
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_questender`;
CREATE TABLE `areatrigger_questender`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Trigger System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_questender
-- ----------------------------
INSERT INTO `areatrigger_questender` VALUES (78, 155);

-- ----------------------------
-- Table structure for areatrigger_scripts
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_scripts`;
CREATE TABLE `areatrigger_scripts`  (
  `entry` mediumint NOT NULL,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_scripts
-- ----------------------------
INSERT INTO `areatrigger_scripts` VALUES (216, 'SmartTrigger');

-- ----------------------------
-- Table structure for areatrigger_tavern
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_tavern`;
CREATE TABLE `areatrigger_tavern`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Trigger System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_tavern
-- ----------------------------
INSERT INTO `areatrigger_tavern` VALUES (71, 'Westfall - Sentinel Hill Inn');

-- ----------------------------
-- Table structure for areatrigger_teleport
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_teleport`;
CREATE TABLE `areatrigger_teleport`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `target_map` smallint UNSIGNED NOT NULL DEFAULT 0,
  `target_position_x` float NOT NULL DEFAULT 0,
  `target_position_y` float NOT NULL DEFAULT 0,
  `target_position_z` float NOT NULL DEFAULT 0,
  `target_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `name`(`name`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Trigger System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_teleport
-- ----------------------------
INSERT INTO `areatrigger_teleport` VALUES (45, 'Scarlet Monastery - Graveyard (Entrance)', 1004, 1124.57, 511.299, 0.9892, 1.53889);

-- ----------------------------
-- Table structure for areatrigger_template
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_template`;
CREATE TABLE `areatrigger_template`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spellId` int NOT NULL DEFAULT 0,
  `customEntry` int NOT NULL DEFAULT 0,
  `VisualID` int NOT NULL DEFAULT 0,
  `DecalPropertiesId` int UNSIGNED NOT NULL DEFAULT 0,
  `Radius` float UNSIGNED NOT NULL DEFAULT 1,
  `RadiusTarget` float UNSIGNED NOT NULL DEFAULT 0,
  `Height` float NOT NULL DEFAULT 0,
  `HeightTarget` float NOT NULL DEFAULT 0,
  `Float4` float NOT NULL DEFAULT 0,
  `Float5` float NOT NULL DEFAULT 0,
  `isMoving` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Distance` float NOT NULL DEFAULT 0,
  `Speed` float NOT NULL DEFAULT 0,
  `RePatch` tinyint NOT NULL DEFAULT 0,
  `RePatchSpeed` float NOT NULL DEFAULT 0,
  `MoveCurveID` int NOT NULL DEFAULT 0,
  `ElapsedTime` int NOT NULL DEFAULT 0,
  `MorphCurveID` int NOT NULL DEFAULT 0,
  `FacingCurveID` int NOT NULL DEFAULT 0,
  `ScaleCurveID` int NOT NULL DEFAULT 0,
  `HasFollowsTerrain` int NOT NULL DEFAULT 0,
  `HasAttached` int NOT NULL DEFAULT 0,
  `HasAbsoluteOrientation` int NOT NULL DEFAULT 0,
  `HasDynamicShape` int NOT NULL DEFAULT 0,
  `HasFaceMovementDir` int NOT NULL DEFAULT 0,
  `hasAreaTriggerBox` int NOT NULL DEFAULT 0,
  `RollPitchYaw1X` float NOT NULL DEFAULT 0,
  `RollPitchYaw1Y` float NOT NULL DEFAULT 0,
  `RollPitchYaw1Z` float NOT NULL DEFAULT 0,
  `TargetRollPitchYawX` float NOT NULL DEFAULT 0,
  `TargetRollPitchYawY` float NOT NULL DEFAULT 0,
  `TargetRollPitchYawZ` float NOT NULL DEFAULT 0,
  `windX` float NOT NULL DEFAULT 0,
  `windY` float NOT NULL DEFAULT 0,
  `windZ` float NOT NULL DEFAULT 0,
  `windSpeed` float NOT NULL DEFAULT 0,
  `windType` int NOT NULL DEFAULT 0,
  `polygon` int NOT NULL DEFAULT 0,
  `comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`, `spellId`, `customEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_template
-- ----------------------------
INSERT INTO `areatrigger_template` VALUES (0, 0, 0, 230777, 0, 5, 5, 2, 2, 0.3, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for areatrigger_template_circle
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_template_circle`;
CREATE TABLE `areatrigger_template_circle`  (
  `entry` int NOT NULL,
  `spellId` int NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `Speed` float NOT NULL DEFAULT 0,
  `HasTarget` tinyint NOT NULL DEFAULT 0,
  `HasCenterPoint` tinyint NOT NULL DEFAULT 0,
  `IsReverse` tinyint NOT NULL DEFAULT 0,
  `IsActive` tinyint NOT NULL DEFAULT 0,
  `RandRevers` tinyint NOT NULL DEFAULT 0,
  `IsDinamicRadius` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_template_circle
-- ----------------------------
INSERT INTO `areatrigger_template_circle` VALUES (5016, 193465, 28.1819, 6.5, 1, 0, 0, 1, 1, 1);

-- ----------------------------
-- Table structure for areatrigger_template_sequence
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_template_sequence`;
CREATE TABLE `areatrigger_template_sequence`  (
  `entry` int UNSIGNED NOT NULL,
  `spellId` int UNSIGNED NOT NULL,
  `oncreated` tinyint(1) NOT NULL DEFAULT 0,
  `entered` tinyint(1) NOT NULL DEFAULT 0,
  `animationid` int UNSIGNED NOT NULL DEFAULT 0,
  `timer1` int UNSIGNED NOT NULL DEFAULT 0,
  `entered1` tinyint(1) NOT NULL DEFAULT 0,
  `animationid1` int UNSIGNED NOT NULL DEFAULT 0,
  `timer2` int UNSIGNED NOT NULL DEFAULT 0,
  `entered2` tinyint(1) NOT NULL DEFAULT 0,
  `animationid2` int UNSIGNED NOT NULL DEFAULT 0,
  `cycle` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_template_sequence
-- ----------------------------
INSERT INTO `areatrigger_template_sequence` VALUES (1613, 13813, 0, 0, 0, 0, 1, 153, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for autobroadcast
-- ----------------------------
DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of autobroadcast
-- ----------------------------

-- ----------------------------
-- Table structure for bad_word
-- ----------------------------
DROP TABLE IF EXISTS `bad_word`;
CREATE TABLE `bad_word`  (
  `bad_word` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `convert` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bad_word`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Bad word' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bad_word
-- ----------------------------

-- ----------------------------
-- Table structure for bad_word_mail
-- ----------------------------
DROP TABLE IF EXISTS `bad_word_mail`;
CREATE TABLE `bad_word_mail`  (
  `bad_word` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bad_word`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Bad word for mail' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bad_word_mail
-- ----------------------------

-- ----------------------------
-- Table structure for battleground_template
-- ----------------------------
DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE `battleground_template`  (
  `id` mediumint UNSIGNED NOT NULL,
  `AllianceStartLoc` mediumint UNSIGNED NOT NULL,
  `HordeStartLoc` mediumint UNSIGNED NOT NULL,
  `Weight` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `MinPlayersPerTeam` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Comment` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battleground_template
-- ----------------------------
INSERT INTO `battleground_template` VALUES (1, 611, 610, 1, '', 20, 'Alterac Valley');

-- ----------------------------
-- Table structure for battlemaster_entry
-- ----------------------------
DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE `battlemaster_entry`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Entry of a creature',
  `bg_template` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlemaster_entry
-- ----------------------------
INSERT INTO `battlemaster_entry` VALUES (347, 1);

-- ----------------------------
-- Table structure for battlepay_display_info
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_display_info`;
CREATE TABLE `battlepay_display_info`  (
  `DisplayInfoId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `CreatureDisplayInfoID` int UNSIGNED NOT NULL DEFAULT 0,
  `FileDataID` int UNSIGNED NULL DEFAULT NULL,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `Name1` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name2` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name3` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name4` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  UNIQUE INDEX `DisplayInfoId`(`DisplayInfoId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_display_info
-- ----------------------------
INSERT INTO `battlepay_display_info` VALUES (109, 614740, 614740, 0, 'Level 90 Character Boost', '', 'There comes a time in every hero’s quest when they need a little boost to help get them over the hump and back into the action. With a Level 90 Character Boost, you can grant one character a one-time boost to level 90. Bring your hero up to speed and join the fight on the front lines.', '');

-- ----------------------------
-- Table structure for battlepay_display_info_locales
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_display_info_locales`;
CREATE TABLE `battlepay_display_info_locales`  (
  `Id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Name1` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `Name2` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `Name3` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `Name4` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  PRIMARY KEY (`Id`, `Locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_display_info_locales
-- ----------------------------

-- ----------------------------
-- Table structure for battlepay_display_info_visuals
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_display_info_visuals`;
CREATE TABLE `battlepay_display_info_visuals`  (
  `DisplayInfoId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `DisplayId` int UNSIGNED NOT NULL DEFAULT 0,
  `VisualId` int UNSIGNED NOT NULL DEFAULT 0,
  `ProductName` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  UNIQUE INDEX `DisplayInfoId`(`DisplayInfoId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_display_info_visuals
-- ----------------------------

-- ----------------------------
-- Table structure for battlepay_product
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_product`;
CREATE TABLE `battlepay_product`  (
  `ProductID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `NormalPriceFixedPoint` bigint UNSIGNED NOT NULL,
  `CurrentPriceFixedPoint` bigint UNSIGNED NOT NULL,
  `Type` tinyint UNSIGNED NOT NULL,
  `ChoiceType` tinyint UNSIGNED NOT NULL,
  `Flags` int UNSIGNED NOT NULL,
  `DisplayInfoID` int UNSIGNED NOT NULL,
  `ScriptName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ClassMask` int UNSIGNED NOT NULL DEFAULT 0,
  `WebsiteType` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_product
-- ----------------------------
INSERT INTO `battlepay_product` VALUES (109, 100, 100, 0, 2, 0, 109, 'battlepay_service_level90', 0, 29);

-- ----------------------------
-- Table structure for battlepay_product_group
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_product_group`;
CREATE TABLE `battlepay_product_group`  (
  `GroupID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IconFileDataID` int UNSIGNED NOT NULL,
  `DisplayType` tinyint UNSIGNED NOT NULL,
  `Ordering` int UNSIGNED NOT NULL,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `TokenType` tinyint UNSIGNED NOT NULL,
  `IngameOnly` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `OwnsTokensOnly` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`GroupID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_product_group
-- ----------------------------
INSERT INTO `battlepay_product_group` VALUES (3, 'Services', 1126583, 0, 3, 0, 1, 1, 0);

-- ----------------------------
-- Table structure for battlepay_product_group_locales
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_product_group_locales`;
CREATE TABLE `battlepay_product_group_locales`  (
  `GroupID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`GroupID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_product_group_locales
-- ----------------------------

-- ----------------------------
-- Table structure for battlepay_product_item
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_product_item`;
CREATE TABLE `battlepay_product_item`  (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProductID` int UNSIGNED NOT NULL,
  `ItemID` int UNSIGNED NOT NULL,
  `Quantity` int UNSIGNED NOT NULL,
  `DisplayID` int NULL DEFAULT NULL,
  `PetResult` tinyint UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_product_item
-- ----------------------------

-- ----------------------------
-- Table structure for battlepay_shop_entry
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_shop_entry`;
CREATE TABLE `battlepay_shop_entry`  (
  `EntryID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `GroupID` int UNSIGNED NOT NULL,
  `ProductID` int UNSIGNED NOT NULL,
  `Ordering` int NOT NULL,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `BannerType` tinyint UNSIGNED NOT NULL,
  `DisplayInfoID` int UNSIGNED NOT NULL,
  PRIMARY KEY (`EntryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of battlepay_shop_entry
-- ----------------------------
INSERT INTO `battlepay_shop_entry` VALUES (109, 3, 109, 5, 0, 0, 0);

-- ----------------------------
-- Table structure for battlepay_tokens
-- ----------------------------
DROP TABLE IF EXISTS `battlepay_tokens`;
CREATE TABLE `battlepay_tokens`  (
  `tokenType` tinyint NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `loginMessage` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `listIfNone` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`tokenType`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlepay_tokens
-- ----------------------------
INSERT INTO `battlepay_tokens` VALUES (1, 'Battle Coins', NULL, 1);

-- ----------------------------
-- Table structure for battlepet_info
-- ----------------------------
DROP TABLE IF EXISTS `battlepet_info`;
CREATE TABLE `battlepet_info`  (
  `NpcID` int UNSIGNED NOT NULL,
  `Specie` int UNSIGNED NOT NULL DEFAULT 0,
  `maxlevel` int UNSIGNED NOT NULL DEFAULT 0,
  `minlevel` int UNSIGNED NOT NULL DEFAULT 0,
  `minquality` int UNSIGNED NOT NULL DEFAULT 0,
  `breadsMask` int UNSIGNED NOT NULL DEFAULT 0,
  `Ability1` int UNSIGNED NOT NULL DEFAULT 0,
  `Ability2` int UNSIGNED NOT NULL DEFAULT 0,
  `Ability3` int UNSIGNED NOT NULL DEFAULT 0,
  `Comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NpcID`, `Specie`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlepet_info
-- ----------------------------
INSERT INTO `battlepet_info` VALUES (444, 1352, 0, 0, 0, 8, 253, 123, 123, NULL);

-- ----------------------------
-- Table structure for battlepet_npc_team_member
-- ----------------------------
DROP TABLE IF EXISTS `battlepet_npc_team_member`;
CREATE TABLE `battlepet_npc_team_member`  (
  `NpcID` int UNSIGNED NOT NULL,
  `Specie` int UNSIGNED NOT NULL DEFAULT 0,
  `maxlevel` int UNSIGNED NOT NULL DEFAULT 0,
  `minlevel` int UNSIGNED NOT NULL DEFAULT 0,
  `minquality` int UNSIGNED NOT NULL DEFAULT 0,
  `breadsMask` int UNSIGNED NOT NULL DEFAULT 0,
  `Ability1` int UNSIGNED NOT NULL DEFAULT 0,
  `Ability2` int UNSIGNED NOT NULL DEFAULT 0,
  `Ability3` int UNSIGNED NOT NULL DEFAULT 0,
  `Comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NpcID`, `Specie`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlepet_npc_team_member
-- ----------------------------
INSERT INTO `battlepet_npc_team_member` VALUES (444, 126, 1, 1, 2, 1024, 493, 165, 252, NULL);

-- ----------------------------
-- Table structure for battlepet_spawn_relation
-- ----------------------------
DROP TABLE IF EXISTS `battlepet_spawn_relation`;
CREATE TABLE `battlepet_spawn_relation`  (
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CritterEntry` int NOT NULL,
  `BattlePetEntry` int NOT NULL,
  PRIMARY KEY (`CritterEntry`, `BattlePetEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlepet_spawn_relation
-- ----------------------------
INSERT INTO `battlepet_spawn_relation` VALUES ('Chicken', 620, 62664);

-- ----------------------------
-- Table structure for battlepet_wild_zone_pool
-- ----------------------------
DROP TABLE IF EXISTS `battlepet_wild_zone_pool`;
CREATE TABLE `battlepet_wild_zone_pool`  (
  `Zone` int UNSIGNED NOT NULL,
  `Species` int UNSIGNED NOT NULL,
  `BattlePetEntry` int UNSIGNED NOT NULL,
  `Max` int UNSIGNED NOT NULL,
  `RespawnTime` int UNSIGNED NOT NULL DEFAULT 60,
  `MinLevel` int UNSIGNED NOT NULL,
  `MaxLevel` int UNSIGNED NOT NULL,
  `CreatureEntry` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`Zone`, `Species`, `BattlePetEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlepet_wild_zone_pool
-- ----------------------------
INSERT INTO `battlepet_wild_zone_pool` VALUES (1, 72, 7560, 1, 60, 1, 2, 0);

-- ----------------------------
-- Table structure for blackmarket_template
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket_template`;
CREATE TABLE `blackmarket_template`  (
  `marketId` int NOT NULL DEFAULT 0,
  `sellerNpc` mediumint NOT NULL DEFAULT 0,
  `itemEntry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int NOT NULL DEFAULT 1,
  `minBid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `duration` int NOT NULL DEFAULT 0,
  `chance` float NOT NULL DEFAULT 0,
  `bonusListIDs` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`marketId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blackmarket_template
-- ----------------------------
INSERT INTO `blackmarket_template` VALUES (1, 32216, 13335, 1, 500000000, 172800, 40, '');

-- ----------------------------
-- Table structure for character_template
-- ----------------------------
DROP TABLE IF EXISTS `character_template`;
CREATE TABLE `character_template`  (
  `ID` int UNSIGNED NOT NULL,
  `Name` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `level` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `ilevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `fromID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_template
-- ----------------------------

-- ----------------------------
-- Table structure for character_template_class
-- ----------------------------
DROP TABLE IF EXISTS `character_template_class`;
CREATE TABLE `character_template_class`  (
  `TemplateID` int UNSIGNED NOT NULL,
  `FactionGroup` tinyint UNSIGNED NOT NULL,
  `Class` tinyint UNSIGNED NOT NULL,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT -880.264,
  `Y` float NOT NULL DEFAULT 4414.83,
  `Z` float NOT NULL DEFAULT 737.33,
  `O` float NOT NULL DEFAULT 4.31822,
  `MapID` mediumint NOT NULL DEFAULT 1220,
  `Money` int NOT NULL DEFAULT 10000,
  PRIMARY KEY (`TemplateID`, `FactionGroup`, `Class`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_template_class
-- ----------------------------

-- ----------------------------
-- Table structure for character_template_item
-- ----------------------------
DROP TABLE IF EXISTS `character_template_item`;
CREATE TABLE `character_template_item`  (
  `TemplateID` int NOT NULL DEFAULT 38,
  `ClassID` tinyint NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `Count` int NOT NULL DEFAULT 0,
  `FactionGroup` tinyint NOT NULL DEFAULT 0,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_template_item
-- ----------------------------

-- ----------------------------
-- Table structure for character_template_quest
-- ----------------------------
DROP TABLE IF EXISTS `character_template_quest`;
CREATE TABLE `character_template_quest`  (
  `TemplateID` int NOT NULL DEFAULT 38,
  `ClassID` tinyint NOT NULL DEFAULT 0,
  `QuestID` int NOT NULL DEFAULT 0,
  `FactionGroup` tinyint NOT NULL DEFAULT 0,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_template_quest
-- ----------------------------

-- ----------------------------
-- Table structure for character_template_spell
-- ----------------------------
DROP TABLE IF EXISTS `character_template_spell`;
CREATE TABLE `character_template_spell`  (
  `TemplateID` int NOT NULL DEFAULT 38,
  `ClassID` tinyint NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `FactionGroup` tinyint NOT NULL DEFAULT 0,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_template_spell
-- ----------------------------

-- ----------------------------
-- Table structure for character_template_title
-- ----------------------------
DROP TABLE IF EXISTS `character_template_title`;
CREATE TABLE `character_template_title`  (
  `TemplateID` int NOT NULL DEFAULT 38,
  `ClassID` tinyint NOT NULL DEFAULT 0,
  `TitleID` int NOT NULL DEFAULT 0,
  `FactionGroup` tinyint NOT NULL DEFAULT 0,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_template_title
-- ----------------------------

-- ----------------------------
-- Table structure for cheat_sanctions
-- ----------------------------
DROP TABLE IF EXISTS `cheat_sanctions`;
CREATE TABLE `cheat_sanctions`  (
  `cheatType` int NOT NULL,
  `tickCount` int NOT NULL DEFAULT 0,
  `tickAction` int NOT NULL DEFAULT 0,
  `totalCount` int NOT NULL DEFAULT 0,
  `totalAction` int NOT NULL DEFAULT 0,
  `comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cheat_sanctions
-- ----------------------------
INSERT INTO `cheat_sanctions` VALUES (0, 3, 3, 0, 0, 'CHEAT_TYPE_WALL_CLIMB - not implemented');

-- ----------------------------
-- Table structure for class_expansion_requirement
-- ----------------------------
DROP TABLE IF EXISTS `class_expansion_requirement`;
CREATE TABLE `class_expansion_requirement`  (
  `classID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `expansion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`classID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_expansion_requirement
-- ----------------------------
INSERT INTO `class_expansion_requirement` VALUES (1, 0);

-- ----------------------------
-- Table structure for command
-- ----------------------------
DROP TABLE IF EXISTS `command`;
CREATE TABLE `command`  (
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `security` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `help` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Chat System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of command
-- ----------------------------
INSERT INTO `command` VALUES ('account', 3, 'Syntax: .account\r\n\r\nDisplay the access level of your account.');

-- ----------------------------
-- Table structure for conditions
-- ----------------------------
DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions`  (
  `SourceTypeOrReferenceId` mediumint NOT NULL DEFAULT 0,
  `SourceGroup` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `SourceEntry` int NOT NULL DEFAULT 0,
  `SourceId` int NOT NULL DEFAULT 0,
  `ElseGroup` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ConditionTypeOrReference` mediumint NOT NULL DEFAULT 0,
  `ConditionTarget` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ConditionValue1` int NOT NULL DEFAULT 0,
  `ConditionValue2` int NOT NULL DEFAULT 0,
  `ConditionValue3` int NOT NULL DEFAULT 0,
  `NegativeCondition` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ErrorTextId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Condition System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conditions
-- ----------------------------
INSERT INTO `conditions` VALUES (1, 881, 1972, 0, 0, 6, 0, 469, 0, 0, 0, 0, '', NULL);

-- ----------------------------
-- Table structure for conversation
-- ----------------------------
DROP TABLE IF EXISTS `conversation`;
CREATE TABLE `conversation`  (
  `guid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Conversation Identifier',
  `map` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` int NOT NULL DEFAULT 0,
  `areaId` int NOT NULL DEFAULT 0,
  `spawnMask` bigint UNSIGNED NOT NULL DEFAULT 1,
  `phaseMask` int UNSIGNED NOT NULL DEFAULT 1,
  `PhaseId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Conversation System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of conversation
-- ----------------------------
INSERT INTO `conversation` VALUES (6, 735, 1481, 7705, 7740, 1, 1, '', 1058.4, 2576.31, -37.3565, 0);

-- ----------------------------
-- Table structure for conversation_actor
-- ----------------------------
DROP TABLE IF EXISTS `conversation_actor`;
CREATE TABLE `conversation_actor`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `id` int UNSIGNED NOT NULL DEFAULT 0,
  `actorId` int UNSIGNED NOT NULL DEFAULT 0,
  `creatureId` int UNSIGNED NOT NULL DEFAULT 0,
  `displayId` int UNSIGNED NOT NULL DEFAULT 0,
  `unk1` int UNSIGNED NOT NULL DEFAULT 0,
  `unk2` int UNSIGNED NOT NULL DEFAULT 0,
  `unk3` int UNSIGNED NOT NULL DEFAULT 0,
  `duration` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conversation_actor
-- ----------------------------
INSERT INTO `conversation_actor` VALUES (161, 0, 46449, 88091, 66380, 0, 1, 0, 1750);

-- ----------------------------
-- Table structure for conversation_creature
-- ----------------------------
DROP TABLE IF EXISTS `conversation_creature`;
CREATE TABLE `conversation_creature`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `id` int UNSIGNED NOT NULL DEFAULT 0,
  `creatureId` int UNSIGNED NOT NULL DEFAULT 0,
  `creatureGuid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `unk1` int UNSIGNED NOT NULL DEFAULT 0,
  `unk2` int UNSIGNED NOT NULL DEFAULT 0,
  `duration` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conversation_creature
-- ----------------------------
INSERT INTO `conversation_creature` VALUES (31, 0, 79674, 5607555, 0, 0, 0);

-- ----------------------------
-- Table structure for conversation_data
-- ----------------------------
DROP TABLE IF EXISTS `conversation_data`;
CREATE TABLE `conversation_data`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `id` int UNSIGNED NOT NULL DEFAULT 0,
  `idx` int NOT NULL DEFAULT 0,
  `textId` int UNSIGNED NOT NULL DEFAULT 0,
  `unk1` int UNSIGNED NOT NULL DEFAULT 0,
  `unk2` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conversation_data
-- ----------------------------
INSERT INTO `conversation_data` VALUES (31, 110, 0, 83541, 0, 1761607680);

-- ----------------------------
-- Table structure for creature
-- ----------------------------
DROP TABLE IF EXISTS `creature`;
CREATE TABLE `creature`  (
  `guid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier',
  `map` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` int NOT NULL DEFAULT 0,
  `areaId` int NOT NULL DEFAULT 0,
  `spawnMask` bigint UNSIGNED NOT NULL DEFAULT 1,
  `phaseMask` int UNSIGNED NOT NULL DEFAULT 1,
  `PhaseId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `modelid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `equipment_id` tinyint NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `spawntimesecs` int UNSIGNED NOT NULL DEFAULT 120,
  `spawndist` float NOT NULL DEFAULT 0,
  `currentwaypoint` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `curhealth` int UNSIGNED NOT NULL DEFAULT 0,
  `curmana` int UNSIGNED NOT NULL DEFAULT 0,
  `MovementType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `npcflag` int UNSIGNED NOT NULL DEFAULT 0,
  `npcflag2` int UNSIGNED NOT NULL DEFAULT 0,
  `unit_flags` int UNSIGNED NOT NULL DEFAULT 0,
  `dynamicflags` int UNSIGNED NOT NULL DEFAULT 0,
  `AiID` int UNSIGNED NOT NULL DEFAULT 0,
  `MovementID` int UNSIGNED NOT NULL DEFAULT 0,
  `MeleeID` int UNSIGNED NOT NULL DEFAULT 0,
  `isActive` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `skipClone` tinyint(1) NOT NULL DEFAULT 0,
  `personal_size` float NOT NULL DEFAULT 0,
  `isTeemingSpawn` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `unit_flags3` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_map`(`map` ASC) USING BTREE,
  INDEX `idx_id`(`id` ASC) USING BTREE,
  INDEX `guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 146894662 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of creature
-- ----------------------------
INSERT INTO `creature` VALUES (1, 44401, 1, 406, 4938, 1, 1, '', 0, 0, 1945.06, 1562.81, 82.3541, 1.18682, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for creature_action
-- ----------------------------
DROP TABLE IF EXISTS `creature_action`;
CREATE TABLE `creature_action`  (
  `entry` int NOT NULL DEFAULT 0,
  `target` int NOT NULL DEFAULT 0,
  `type` tinyint NOT NULL DEFAULT 0,
  `spellId` int NOT NULL DEFAULT 0,
  `action` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `target`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_action
-- ----------------------------
INSERT INTO `creature_action` VALUES (89, 91575, 0, 0, 0);

-- ----------------------------
-- Table structure for creature_addon
-- ----------------------------
DROP TABLE IF EXISTS `creature_addon`;
CREATE TABLE `creature_addon`  (
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `path_id` int UNSIGNED NOT NULL DEFAULT 0,
  `mount` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `bytes1` int UNSIGNED NOT NULL DEFAULT 0,
  `bytes2` int UNSIGNED NOT NULL DEFAULT 0,
  `emote` int UNSIGNED NOT NULL DEFAULT 0,
  `auras` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `guid`(`guid` ASC) USING BTREE,
  INDEX `path_id`(`path_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_addon
-- ----------------------------
INSERT INTO `creature_addon` VALUES (2154, 0, 0, 1, 1, 0, '');

-- ----------------------------
-- Table structure for creature_ai_instance
-- ----------------------------
DROP TABLE IF EXISTS `creature_ai_instance`;
CREATE TABLE `creature_ai_instance`  (
  `entry` int UNSIGNED NOT NULL,
  `bossid` int UNSIGNED NOT NULL DEFAULT 0,
  `bossidtoactivete` int UNSIGNED NOT NULL DEFAULT 0,
  `instanceId` int UNSIGNED NOT NULL DEFAULT 0,
  `comments` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_ai_instance
-- ----------------------------
INSERT INTO `creature_ai_instance` VALUES (17941, 1, 0, 547, 'Mennu the Traitor');

-- ----------------------------
-- Table structure for creature_classlevelstats
-- ----------------------------
DROP TABLE IF EXISTS `creature_classlevelstats`;
CREATE TABLE `creature_classlevelstats`  (
  `level` int NOT NULL,
  `class` tinyint NOT NULL,
  `basemana` mediumint UNSIGNED NOT NULL DEFAULT 1,
  `basearmor` mediumint UNSIGNED NOT NULL DEFAULT 1,
  `attackpower` smallint NOT NULL DEFAULT 0,
  `rangedattackpower` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`, `class`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_classlevelstats
-- ----------------------------
INSERT INTO `creature_classlevelstats` VALUES (0, 2, 1, 1, 1254, 154);

-- ----------------------------
-- Table structure for creature_difficulty_stat
-- ----------------------------
DROP TABLE IF EXISTS `creature_difficulty_stat`;
CREATE TABLE `creature_difficulty_stat`  (
  `entry` int UNSIGNED NOT NULL,
  `difficulty` int UNSIGNED NOT NULL DEFAULT 0,
  `dmg_multiplier` float UNSIGNED NOT NULL DEFAULT 1,
  `HealthModifier` float UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`entry`, `difficulty`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_difficulty_stat
-- ----------------------------
INSERT INTO `creature_difficulty_stat` VALUES (80237, 0, 1, 0.02);

-- ----------------------------
-- Table structure for creature_equip_template
-- ----------------------------
DROP TABLE IF EXISTS `creature_equip_template`;
CREATE TABLE `creature_equip_template`  (
  `CreatureID` int UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 1,
  `ItemID1` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemID2` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemID3` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemID4` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemID5` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemID6` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`CreatureID`, `ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System (Equipment)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_equip_template
-- ----------------------------
INSERT INTO `creature_equip_template` VALUES (1, 1, 1896, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for creature_formations
-- ----------------------------
DROP TABLE IF EXISTS `creature_formations`;
CREATE TABLE `creature_formations`  (
  `leaderGUID` bigint UNSIGNED NOT NULL DEFAULT 0,
  `memberGUID` bigint UNSIGNED NOT NULL DEFAULT 0,
  `dist` float UNSIGNED NOT NULL,
  `angle` float UNSIGNED NOT NULL,
  `groupAI` int UNSIGNED NOT NULL,
  PRIMARY KEY (`memberGUID`) USING BTREE,
  INDEX `leaderGUID`(`leaderGUID` ASC) USING BTREE,
  INDEX `memberGUID`(`memberGUID` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_formations
-- ----------------------------
INSERT INTO `creature_formations` VALUES (71386, 2540, 5, 330, 0);

-- ----------------------------
-- Table structure for creature_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `creature_loot_template`;
CREATE TABLE `creature_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Shared` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_loot_template
-- ----------------------------
INSERT INTO `creature_loot_template` VALUES (3, 804, 0, 0, 0.0172, 0, 0, 0, 1, 1, 0, NULL);

-- ----------------------------
-- Table structure for creature_model_info
-- ----------------------------
DROP TABLE IF EXISTS `creature_model_info`;
CREATE TABLE `creature_model_info`  (
  `DisplayID` int UNSIGNED NOT NULL DEFAULT 0,
  `BoundingRadius` float NOT NULL DEFAULT 0,
  `CombatReach` float NOT NULL DEFAULT 0,
  `DisplayID_Other_Gender` int UNSIGNED NOT NULL DEFAULT 0,
  `hostileId` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`DisplayID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System (Model related info)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_model_info
-- ----------------------------
INSERT INTO `creature_model_info` VALUES (4, 2, 3, 0, 0);

-- ----------------------------
-- Table structure for creature_movement_override
-- ----------------------------
DROP TABLE IF EXISTS `creature_movement_override`;
CREATE TABLE `creature_movement_override`  (
  `SpawnId` bigint UNSIGNED NOT NULL DEFAULT 0,
  `Ground` tinyint UNSIGNED NULL DEFAULT NULL,
  `Swim` tinyint UNSIGNED NULL DEFAULT NULL,
  `Flight` tinyint UNSIGNED NULL DEFAULT NULL,
  `Rooted` tinyint UNSIGNED NULL DEFAULT NULL,
  `Random` tinyint UNSIGNED NULL DEFAULT NULL,
  `InteractionPauseTimer` int UNSIGNED NULL DEFAULT NULL COMMENT 'Time (in milliseconds) during which creature will not move after interaction with player',
  PRIMARY KEY (`SpawnId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_movement_override
-- ----------------------------

-- ----------------------------
-- Table structure for creature_onkill_reputation
-- ----------------------------
DROP TABLE IF EXISTS `creature_onkill_reputation`;
CREATE TABLE `creature_onkill_reputation`  (
  `creature_id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier',
  `RewFaction` smallint NOT NULL DEFAULT 0,
  `RewValue` mediumint NOT NULL DEFAULT 0,
  `MaxStanding` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`creature_id`, `RewFaction`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature OnKill Reputation gain' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of creature_onkill_reputation
-- ----------------------------
INSERT INTO `creature_onkill_reputation` VALUES (268, 1090, 0, 0);

-- ----------------------------
-- Table structure for creature_questender
-- ----------------------------
DROP TABLE IF EXISTS `creature_questender`;
CREATE TABLE `creature_questender`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_questender
-- ----------------------------
INSERT INTO `creature_questender` VALUES (19, 5053);

-- ----------------------------
-- Table structure for creature_queststarter
-- ----------------------------
DROP TABLE IF EXISTS `creature_queststarter`;
CREATE TABLE `creature_queststarter`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_queststarter
-- ----------------------------
INSERT INTO `creature_queststarter` VALUES (197, 54);

-- ----------------------------
-- Table structure for creature_summon_groups
-- ----------------------------
DROP TABLE IF EXISTS `creature_summon_groups`;
CREATE TABLE `creature_summon_groups`  (
  `summonerId` int UNSIGNED NOT NULL DEFAULT 0,
  `id` int NOT NULL DEFAULT 0,
  `summonerType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `groupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `count` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `actionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `distance` float NOT NULL DEFAULT 0,
  `summonType` tinyint UNSIGNED NOT NULL DEFAULT 8,
  `summonTime` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`summonerId`, `id`, `summonerType`, `groupId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_summon_groups
-- ----------------------------
INSERT INTO `creature_summon_groups` VALUES (70878, 0, 0, 0, 70900, 7200.55, 5327.63, 62.302, 0, 0, 0, 0, 1, 120000);

-- ----------------------------
-- Table structure for creature_template
-- ----------------------------
DROP TABLE IF EXISTS `creature_template`;
CREATE TABLE `creature_template`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `gossip_menu_id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `minlevel` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `maxlevel` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `HealthScalingExpansion` mediumint NOT NULL DEFAULT 0,
  `SandboxScalingID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `exp` smallint NOT NULL DEFAULT 0,
  `faction` smallint UNSIGNED NOT NULL DEFAULT 35,
  `npcflag` int UNSIGNED NOT NULL DEFAULT 0,
  `npcflag2` int UNSIGNED NOT NULL DEFAULT 0,
  `speed_walk` float NOT NULL DEFAULT 1 COMMENT 'Result of 2.5/2.5, most common value',
  `speed_run` float NOT NULL DEFAULT 1.14286 COMMENT 'Result of 8.0/7.0, most common value',
  `speed_fly` float NOT NULL DEFAULT 1.14286 COMMENT 'Result of 8.0/7.0, most common value',
  `scale` float NOT NULL DEFAULT 1,
  `mindmg` float NOT NULL DEFAULT 0,
  `maxdmg` float NOT NULL DEFAULT 0,
  `dmgschool` tinyint NOT NULL DEFAULT 0,
  `attackpower` int UNSIGNED NOT NULL DEFAULT 0,
  `dmg_multiplier` float NOT NULL DEFAULT 1,
  `baseattacktime` int UNSIGNED NOT NULL DEFAULT 0,
  `rangeattacktime` int UNSIGNED NOT NULL DEFAULT 0,
  `unit_class` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `unit_flags` int UNSIGNED NOT NULL DEFAULT 0,
  `unit_flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `unit_flags3` int NOT NULL DEFAULT 0,
  `dynamicflags` int UNSIGNED NOT NULL DEFAULT 0,
  `trainer_type` tinyint NOT NULL DEFAULT 0,
  `trainer_spell` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `trainer_class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `trainer_race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `minrangedmg` float NOT NULL DEFAULT 0,
  `maxrangedmg` float NOT NULL DEFAULT 0,
  `rangedattackpower` int UNSIGNED NOT NULL DEFAULT 0,
  `lootid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `pickpocketloot` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `skinloot` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `resistance1` smallint NOT NULL DEFAULT 0,
  `resistance2` smallint NOT NULL DEFAULT 0,
  `resistance3` smallint NOT NULL DEFAULT 0,
  `resistance4` smallint NOT NULL DEFAULT 0,
  `resistance5` smallint NOT NULL DEFAULT 0,
  `resistance6` smallint NOT NULL DEFAULT 0,
  `spell1` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell2` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell3` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell4` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell5` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell6` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell7` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell8` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `PetSpellDataId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `mingold` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `maxgold` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `AIName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `MovementType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HoverHeight` float NOT NULL DEFAULT 1,
  `Mana_mod_extra` float NOT NULL DEFAULT 1,
  `Armor_mod` float NOT NULL DEFAULT 1,
  `RegenHealth` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `mechanic_immune_mask` int UNSIGNED NOT NULL DEFAULT 0,
  `flags_extra` int UNSIGNED NOT NULL DEFAULT 0,
  `ControllerID` int NOT NULL DEFAULT 0,
  `WorldEffects` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PassiveSpells` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StateWorldEffectID` int NOT NULL DEFAULT 0,
  `SpellStateVisualID` int NOT NULL DEFAULT 0,
  `SpellStateAnimID` int NOT NULL DEFAULT 0,
  `SpellStateAnimKitID` int NOT NULL DEFAULT 0,
  `IgnoreLos` tinyint(1) NOT NULL DEFAULT 0,
  `AffixState` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxVisible` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`) USING BTREE,
  INDEX `lootid`(`lootid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template
-- ----------------------------
INSERT INTO `creature_template` VALUES (1, 0, 1, 1, 0, 0, 0, 35, 0, 0, 0.91, 1.14286, 1.14286, 1, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 345, 509, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 130, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for creature_template_addon
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_addon`;
CREATE TABLE `creature_template_addon`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `path_id` int UNSIGNED NOT NULL DEFAULT 0,
  `mount` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `bytes1` int UNSIGNED NOT NULL DEFAULT 0,
  `bytes2` int UNSIGNED NOT NULL DEFAULT 0,
  `emote` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `auras` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_addon
-- ----------------------------
INSERT INTO `creature_template_addon` VALUES (3, 0, 0, 0, 1, 0, '');

-- ----------------------------
-- Table structure for creature_template_movement
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_movement`;
CREATE TABLE `creature_template_movement`  (
  `CreatureId` int UNSIGNED NOT NULL DEFAULT 0,
  `Ground` tinyint UNSIGNED NULL DEFAULT NULL,
  `Swim` tinyint UNSIGNED NULL DEFAULT NULL,
  `Flight` tinyint UNSIGNED NULL DEFAULT NULL,
  `Rooted` tinyint UNSIGNED NULL DEFAULT NULL,
  `Random` tinyint UNSIGNED NULL DEFAULT NULL,
  `InteractionPauseTimer` int UNSIGNED NULL DEFAULT NULL COMMENT 'Time (in milliseconds) during which creature will not move after interaction with player',
  PRIMARY KEY (`CreatureId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_movement
-- ----------------------------
INSERT INTO `creature_template_movement` VALUES (1, 0, 0, 1, NULL, 0, NULL);

-- ----------------------------
-- Table structure for creature_template_outfits
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_outfits`;
CREATE TABLE `creature_template_outfits`  (
  `entry` int UNSIGNED NOT NULL,
  `race` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `gender` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 for male, 1 for female',
  `skin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `face` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `haircolor` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `facialhair` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `feature1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `feature2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `feature3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `head` bigint NOT NULL DEFAULT 0,
  `shoulders` bigint NOT NULL DEFAULT 0,
  `body` bigint NOT NULL DEFAULT 0,
  `chest` bigint NOT NULL DEFAULT 0,
  `waist` bigint NOT NULL DEFAULT 0,
  `legs` bigint NOT NULL DEFAULT 0,
  `feet` bigint NOT NULL DEFAULT 0,
  `wrists` bigint NOT NULL DEFAULT 0,
  `hands` bigint NOT NULL DEFAULT 0,
  `back` bigint NOT NULL DEFAULT 0,
  `tabard` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Use positive values for item entries and negative to use item displayid for head, shoulders etc.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_outfits
-- ----------------------------

-- ----------------------------
-- Table structure for creature_template_scaling
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_scaling`;
CREATE TABLE `creature_template_scaling`  (
  `Entry` mediumint UNSIGNED NOT NULL,
  `LevelScalingMin` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LevelScalingMax` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LevelScalingDeltaMin` smallint NOT NULL DEFAULT 0,
  `LevelScalingDeltaMax` smallint NOT NULL DEFAULT 0,
  `LevelScalingDuration` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_scaling
-- ----------------------------
INSERT INTO `creature_template_scaling` VALUES (3, 20, 60, 0, 1, 0, 25996);

-- ----------------------------
-- Table structure for creature_template_spell
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_spell`;
CREATE TABLE `creature_template_spell`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `spell` int UNSIGNED NOT NULL DEFAULT 0,
  `difficultyMask` int UNSIGNED NOT NULL DEFAULT 0,
  `Difficulties` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  PRIMARY KEY (`entry`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_spell
-- ----------------------------
INSERT INTO `creature_template_spell` VALUES (30, 11918, 0, '', '@Poison');

-- ----------------------------
-- Table structure for creature_template_wdb
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_wdb`;
CREATE TABLE `creature_template_wdb`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Name1` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Name2` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Name3` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Name4` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `NameAlt1` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `NameAlt2` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `NameAlt3` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `NameAlt4` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Title` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `TitleAlt` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `CursorName` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `TypeFlags` int UNSIGNED NOT NULL DEFAULT 0,
  `TypeFlags2` int UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Family` mediumint NOT NULL DEFAULT 0,
  `Classification` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `KillCredit1` int UNSIGNED NOT NULL DEFAULT 0,
  `KillCredit2` int UNSIGNED NOT NULL DEFAULT 0,
  `VignetteID` int UNSIGNED NOT NULL DEFAULT 0,
  `Displayid1` int NOT NULL DEFAULT 0,
  `Displayid2` int NOT NULL DEFAULT 0,
  `Displayid3` int NOT NULL DEFAULT 0,
  `Displayid4` int NOT NULL DEFAULT 0,
  `HpMulti` float NOT NULL DEFAULT 1,
  `PowerMulti` float NOT NULL DEFAULT 1,
  `Leader` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem1` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem2` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem3` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem4` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem5` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem6` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem7` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem8` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem9` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestItem10` int UNSIGNED NOT NULL DEFAULT 0,
  `MovementInfoID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredExpansion` smallint NOT NULL DEFAULT 0,
  `FlagQuest` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT 1,
  PRIMARY KEY (`Entry`) USING BTREE,
  INDEX `idx_name`(`Name1` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_wdb
-- ----------------------------
INSERT INTO `creature_template_wdb` VALUES (1, 'Waypoint (Only GM can see it)', '', '', '', '', '', '', '', 'Visual', '', '', 0, 0, 8, 0, 0, 0, 0, 0, 10045, 0, 0, 0, 1.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for creature_template_wdb_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_wdb_locale`;
CREATE TABLE `creature_template_wdb_locale`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `TitleAlt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Name1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Name2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Name3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Name4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `NameAlt1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `NameAlt2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `NameAlt3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `NameAlt4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `VerifiedBuild` smallint NULL DEFAULT 1,
  PRIMARY KEY (`ID`, `Locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_wdb_locale
-- ----------------------------
INSERT INTO `creature_template_wdb_locale` VALUES (3, 'enUS', '', '', 'Flesh Eater', '', '', '', '', '', '', '', 26124);

-- ----------------------------
-- Table structure for creature_text
-- ----------------------------
DROP TABLE IF EXISTS `creature_text`;
CREATE TABLE `creature_text`  (
  `CreatureID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `GroupID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Language` tinyint UNSIGNED NULL DEFAULT 0,
  `Probability` float NOT NULL DEFAULT 0,
  `Emote` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Duration` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Sound` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `MinTimer` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxTimer` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  PRIMARY KEY (`CreatureID`, `GroupID`, `ID`, `Text`(250)) USING BTREE,
  INDEX `Text`(`Text`(250) ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_text
-- ----------------------------
INSERT INTO `creature_text` VALUES (0, 3, 0, '', 41, 0, 100, 0, 0, 0, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for currency_loot
-- ----------------------------
DROP TABLE IF EXISTS `currency_loot`;
CREATE TABLE `currency_loot`  (
  `entry` mediumint NOT NULL,
  `type` smallint NOT NULL,
  `currencyId` int NOT NULL,
  `currencyAmount` int NOT NULL,
  `currencyMaxAmount` int NOT NULL,
  `chance` float NOT NULL DEFAULT 100,
  `lootmode` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `type`, `currencyId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currency_loot
-- ----------------------------
INSERT INTO `currency_loot` VALUES (45724, 2, 241, 1, 1, 100, 31);

-- ----------------------------
-- Table structure for custom_texts
-- ----------------------------
DROP TABLE IF EXISTS `custom_texts`;
CREATE TABLE `custom_texts`  (
  `entry` mediumint NOT NULL,
  `content_default` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_loc1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc9` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `sound` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `language` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `emote` smallint UNSIGNED NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Custom Texts' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_texts
-- ----------------------------
INSERT INTO `custom_texts` VALUES (-2000373, '%s calls%s,%s,%s and%s drops of Shu\'ma blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s призывает %s, %s, %s и %s капли крови Шу\'мы!', NULL, NULL, 0, 3, 0, 0, 'Call Blood of Shu\'Ma emote heroic');

-- ----------------------------
-- Table structure for db_script_string
-- ----------------------------
DROP TABLE IF EXISTS `db_script_string`;
CREATE TABLE `db_script_string`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `content_default` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_loc1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc9` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_script_string
-- ----------------------------

-- ----------------------------
-- Table structure for disables
-- ----------------------------
DROP TABLE IF EXISTS `disables`;
CREATE TABLE `disables`  (
  `sourceType` int UNSIGNED NOT NULL,
  `entry` int UNSIGNED NOT NULL,
  `flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `params_0` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `params_1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`sourceType`, `entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disables
-- ----------------------------
INSERT INTO `disables` VALUES (0, 13809, 3, '', '', 'Hunt: Deprecated');

-- ----------------------------
-- Table structure for disenchant_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `disenchant_loot_template`;
CREATE TABLE `disenchant_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disenchant_loot_template
-- ----------------------------
INSERT INTO `disenchant_loot_template` VALUES (3, 10938, 0, 0, 80, 0, 1, 1, 1, 2, NULL);

-- ----------------------------
-- Table structure for event_scripts
-- ----------------------------
DROP TABLE IF EXISTS `event_scripts`;
CREATE TABLE `event_scripts`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  UNIQUE INDEX `id`(`id` ASC, `delay` ASC, `command` ASC, `datalong` ASC, `datalong2` ASC, `dataint` ASC, `x` ASC, `y` ASC, `z` ASC, `o` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event_scripts
-- ----------------------------
INSERT INTO `event_scripts` VALUES (259, 2, 10, 1770, 300000, 0, 881.63, 1230.37, 47.83, 3.1);

-- ----------------------------
-- Table structure for eventobject
-- ----------------------------
DROP TABLE IF EXISTS `eventobject`;
CREATE TABLE `eventobject`  (
  `guid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Eventobject Identifier',
  `map` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` int NOT NULL DEFAULT 0,
  `areaId` int NOT NULL DEFAULT 0,
  `spawnMask` bigint UNSIGNED NOT NULL DEFAULT 1,
  `phaseMask` int UNSIGNED NOT NULL DEFAULT 1,
  `PhaseId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 410393 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Eventobject System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of eventobject
-- ----------------------------
INSERT INTO `eventobject` VALUES (1, 1, 1220, 7679, 7679, 1, 1, '', -1464.25, 1124.2, 271.08, 0);

-- ----------------------------
-- Table structure for eventobject_template
-- ----------------------------
DROP TABLE IF EXISTS `eventobject_template`;
CREATE TABLE `eventobject_template`  (
  `entry` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `radius` float NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `WorldSafeLocID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `ScriptName` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eventobject_template
-- ----------------------------
INSERT INTO `eventobject_template` VALUES (1, 'DK oplot port up', 2.5, 185454, 0, 0, '');

-- ----------------------------
-- Table structure for exploration_basexp
-- ----------------------------
DROP TABLE IF EXISTS `exploration_basexp`;
CREATE TABLE `exploration_basexp`  (
  `level` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `basexp` mediumint NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Exploration System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exploration_basexp
-- ----------------------------
INSERT INTO `exploration_basexp` VALUES (0, 0);

-- ----------------------------
-- Table structure for fishing_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `fishing_loot_template`;
CREATE TABLE `fishing_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fishing_loot_template
-- ----------------------------
INSERT INTO `fishing_loot_template` VALUES (1, 117, 0, 0, 0.0037, 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for game_event
-- ----------------------------
DROP TABLE IF EXISTS `game_event`;
CREATE TABLE `game_event`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NULL DEFAULT '2000-01-01 12:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NULL DEFAULT '2000-01-01 12:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint UNSIGNED NOT NULL DEFAULT 5184000 COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint UNSIGNED NOT NULL DEFAULT 2592000 COMMENT 'Length in minutes of the event',
  `holiday` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Client side holiday id',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Description of the event displayed in console',
  `world_event` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 if normal event, 1 if world event',
  PRIMARY KEY (`eventEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event
-- ----------------------------
INSERT INTO `game_event` VALUES (1, '2019-06-21 13:00:00', '2030-07-05 03:10:00', 525600, 20160, 341, 'Midsummer Fire Festival', 0);

-- ----------------------------
-- Table structure for game_event_arena_seasons
-- ----------------------------
DROP TABLE IF EXISTS `game_event_arena_seasons`;
CREATE TABLE `game_event_arena_seasons`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `season` tinyint UNSIGNED NOT NULL COMMENT 'Arena season number',
  UNIQUE INDEX `season`(`season` ASC, `eventEntry` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_arena_seasons
-- ----------------------------
INSERT INTO `game_event_arena_seasons` VALUES (55, 3);

-- ----------------------------
-- Table structure for game_event_condition
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition`;
CREATE TABLE `game_event_condition`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `condition_id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `req_num` float NULL DEFAULT 0,
  `max_world_state_field` smallint UNSIGNED NOT NULL DEFAULT 0,
  `done_world_state_field` smallint UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`eventEntry`, `condition_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_condition
-- ----------------------------
INSERT INTO `game_event_condition` VALUES (33, 1, 100, 0, 3244, '');

-- ----------------------------
-- Table structure for game_event_creature
-- ----------------------------
DROP TABLE IF EXISTS `game_event_creature`;
CREATE TABLE `game_event_creature`  (
  `eventEntry` mediumint NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `eventEntry`) USING BTREE,
  INDEX `guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_creature
-- ----------------------------
INSERT INTO `game_event_creature` VALUES (7, 296);

-- ----------------------------
-- Table structure for game_event_creature_quest
-- ----------------------------
DROP TABLE IF EXISTS `game_event_creature_quest`;
CREATE TABLE `game_event_creature_quest`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event.',
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_creature_quest
-- ----------------------------
INSERT INTO `game_event_creature_quest` VALUES (2, 1365, 7062);

-- ----------------------------
-- Table structure for game_event_gameobject
-- ----------------------------
DROP TABLE IF EXISTS `game_event_gameobject`;
CREATE TABLE `game_event_gameobject`  (
  `eventEntry` mediumint NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `eventEntry`) USING BTREE,
  INDEX `guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_gameobject
-- ----------------------------
INSERT INTO `game_event_gameobject` VALUES (2, 101);

-- ----------------------------
-- Table structure for game_event_gameobject_quest
-- ----------------------------
DROP TABLE IF EXISTS `game_event_gameobject_quest`;
CREATE TABLE `game_event_gameobject_quest`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `quest`, `eventEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_gameobject_quest
-- ----------------------------
INSERT INTO `game_event_gameobject_quest` VALUES (52, 180743, 8744);

-- ----------------------------
-- Table structure for game_event_model_equip
-- ----------------------------
DROP TABLE IF EXISTS `game_event_model_equip`;
CREATE TABLE `game_event_model_equip`  (
  `eventEntry` mediumint NOT NULL COMMENT 'Entry of the game event.',
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `modelid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `equipment_id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_model_equip
-- ----------------------------

-- ----------------------------
-- Table structure for game_event_npc_vendor
-- ----------------------------
DROP TABLE IF EXISTS `game_event_npc_vendor`;
CREATE TABLE `game_event_npc_vendor`  (
  `eventEntry` mediumint NOT NULL COMMENT 'Entry of the game event.',
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `slot` smallint NOT NULL DEFAULT 0,
  `item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `maxcount` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `incrtime` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedCost` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`, `item`, `ExtendedCost`, `type`) USING BTREE,
  INDEX `slot`(`slot` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_npc_vendor
-- ----------------------------
INSERT INTO `game_event_npc_vendor` VALUES (42, 93964, 0, 34887, 0, 0, 2059, 1);

-- ----------------------------
-- Table structure for game_event_npcflag
-- ----------------------------
DROP TABLE IF EXISTS `game_event_npcflag`;
CREATE TABLE `game_event_npcflag`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `npcflag` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `eventEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_npcflag
-- ----------------------------
INSERT INTO `game_event_npcflag` VALUES (42, 93964, 4224);

-- ----------------------------
-- Table structure for game_event_pool
-- ----------------------------
DROP TABLE IF EXISTS `game_event_pool`;
CREATE TABLE `game_event_pool`  (
  `eventEntry` mediumint NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `pool_entry` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Id of the pool',
  PRIMARY KEY (`pool_entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_pool
-- ----------------------------
INSERT INTO `game_event_pool` VALUES (9, 5699);

-- ----------------------------
-- Table structure for game_event_prerequisite
-- ----------------------------
DROP TABLE IF EXISTS `game_event_prerequisite`;
CREATE TABLE `game_event_prerequisite`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `prerequisite_event` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`eventEntry`, `prerequisite_event`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_prerequisite
-- ----------------------------
INSERT INTO `game_event_prerequisite` VALUES (34, 35);

-- ----------------------------
-- Table structure for game_event_quest_condition
-- ----------------------------
DROP TABLE IF EXISTS `game_event_quest_condition`;
CREATE TABLE `game_event_quest_condition`  (
  `eventEntry` mediumint UNSIGNED NOT NULL COMMENT 'Entry of the game event.',
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `condition_id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `num` float NULL DEFAULT 0,
  PRIMARY KEY (`quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_quest_condition
-- ----------------------------
INSERT INTO `game_event_quest_condition` VALUES (33, 11496, 1, 100);

-- ----------------------------
-- Table structure for game_event_seasonal_questrelation
-- ----------------------------
DROP TABLE IF EXISTS `game_event_seasonal_questrelation`;
CREATE TABLE `game_event_seasonal_questrelation`  (
  `questId` int UNSIGNED NOT NULL COMMENT 'Quest Identifier',
  `eventEntry` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Entry of the game event',
  PRIMARY KEY (`questId`, `eventEntry`) USING BTREE,
  INDEX `idx_quest`(`questId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_seasonal_questrelation
-- ----------------------------
INSERT INTO `game_event_seasonal_questrelation` VALUES (1657, 12);

-- ----------------------------
-- Table structure for game_event_worldquest
-- ----------------------------
DROP TABLE IF EXISTS `game_event_worldquest`;
CREATE TABLE `game_event_worldquest`  (
  `eventEntry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest` int UNSIGNED NOT NULL DEFAULT 0,
  `VariableID` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventEntry`, `quest`, `VariableID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_worldquest
-- ----------------------------

-- ----------------------------
-- Table structure for game_event_worldstate
-- ----------------------------
DROP TABLE IF EXISTS `game_event_worldstate`;
CREATE TABLE `game_event_worldstate`  (
  `eventEntry` mediumint NOT NULL DEFAULT 0,
  `WorldStateID` mediumint NOT NULL DEFAULT 0,
  `Type` tinyint NULL DEFAULT 4,
  `TypeID` mediumint NULL DEFAULT 0,
  `Value` int NULL DEFAULT 0,
  PRIMARY KEY (`eventEntry`, `WorldStateID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event_worldstate
-- ----------------------------
INSERT INTO `game_event_worldstate` VALUES (1, 2286, 3, 0, 1);

-- ----------------------------
-- Table structure for game_graveyard_zone
-- ----------------------------
DROP TABLE IF EXISTS `game_graveyard_zone`;
CREATE TABLE `game_graveyard_zone`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ghost_zone` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `faction` smallint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `ghost_zone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Trigger System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_graveyard_zone
-- ----------------------------
INSERT INTO `game_graveyard_zone` VALUES (1, 717, 0);

-- ----------------------------
-- Table structure for game_tele
-- ----------------------------
DROP TABLE IF EXISTS `game_tele`;
CREATE TABLE `game_tele`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `map` smallint UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1820 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Tele Command' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_tele
-- ----------------------------
INSERT INTO `game_tele` VALUES (1, 1054.94, 1055.23, -48.2358, 0.313367, 529, 'AB');

-- ----------------------------
-- Table structure for game_weather
-- ----------------------------
DROP TABLE IF EXISTS `game_weather`;
CREATE TABLE `game_weather`  (
  `zone` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spring_rain_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `spring_snow_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `spring_storm_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `summer_rain_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `summer_snow_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `summer_storm_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `fall_rain_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `fall_snow_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `fall_storm_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `winter_rain_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `winter_snow_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `winter_storm_chance` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`zone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Weather System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_weather
-- ----------------------------
INSERT INTO `game_weather` VALUES (1, 0, 25, 0, 0, 15, 0, 0, 25, 0, 0, 25, 0, '');

-- ----------------------------
-- Table structure for gameobject
-- ----------------------------
DROP TABLE IF EXISTS `gameobject`;
CREATE TABLE `gameobject`  (
  `guid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  `map` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` int UNSIGNED NOT NULL DEFAULT 0,
  `areaId` int UNSIGNED NOT NULL DEFAULT 0,
  `spawnMask` bigint UNSIGNED NOT NULL DEFAULT 1,
  `phaseMask` int UNSIGNED NOT NULL DEFAULT 1,
  `PhaseId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `rotation0` float NOT NULL DEFAULT 0,
  `rotation1` float NOT NULL DEFAULT 0,
  `rotation2` float NOT NULL DEFAULT 0,
  `rotation3` float NOT NULL DEFAULT 0,
  `spawntimesecs` int NOT NULL DEFAULT 0,
  `animprogress` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AiID` int NOT NULL DEFAULT 0,
  `state` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `isActive` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `personal_size` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25678036 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Gameobject System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject
-- ----------------------------
INSERT INTO `gameobject` VALUES (1, 202474, 1, 5034, 5034, 1, 1, '', -9814.12, -2790.75, 10.3909, 0.0349062, 0, 0, 0, 1, 120, 255, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for gameobject_action
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_action`;
CREATE TABLE `gameobject_action`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `idx` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ActionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `WorldSafeLocID` int UNSIGNED NOT NULL DEFAULT 0,
  `Distance` int UNSIGNED NOT NULL DEFAULT 5,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `O` float NOT NULL DEFAULT 0,
  `MapID` int UNSIGNED NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`entry`, `idx`, `ActionType`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_action
-- ----------------------------

-- ----------------------------
-- Table structure for gameobject_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_loot_template`;
CREATE TABLE `gameobject_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_loot_template
-- ----------------------------
INSERT INTO `gameobject_loot_template` VALUES (32, 1309, 0, 0, 100, 1, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for gameobject_quest_visual
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_quest_visual`;
CREATE TABLE `gameobject_quest_visual`  (
  `goID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `questID` int UNSIGNED NOT NULL DEFAULT 0,
  `incomplete_state_spell_visual` int NOT NULL DEFAULT 0,
  `incomplete_state_world_effect` int NOT NULL DEFAULT 0,
  `complete_state_spell_visual` int NOT NULL DEFAULT 0,
  `complete_state_world_effect` int NOT NULL DEFAULT 0,
  `Comment` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`goID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244899 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_quest_visual
-- ----------------------------
INSERT INTO `gameobject_quest_visual` VALUES (229057, 34364, 37794, 2099, 40887, 0, '');

-- ----------------------------
-- Table structure for gameobject_questender
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_questender`;
CREATE TABLE `gameobject_questender`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_questender
-- ----------------------------
INSERT INTO `gameobject_questender` VALUES (31, 94);

-- ----------------------------
-- Table structure for gameobject_queststarter
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_queststarter`;
CREATE TABLE `gameobject_queststarter`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_queststarter
-- ----------------------------
INSERT INTO `gameobject_queststarter` VALUES (34, 26356);

-- ----------------------------
-- Table structure for gameobject_scripts
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_scripts`;
CREATE TABLE `gameobject_scripts`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_scripts
-- ----------------------------
INSERT INTO `gameobject_scripts` VALUES (35843, 2, 10, 11142, 900000, 0, 3496.26, -3295.4, 130.98, 5.34);

-- ----------------------------
-- Table structure for gameobject_template
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_template`;
CREATE TABLE `gameobject_template`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `displayId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `IconName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castBarCaption` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `unk1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `faction` smallint UNSIGNED NOT NULL DEFAULT 0,
  `flags` int UNSIGNED NOT NULL DEFAULT 0,
  `size` float NOT NULL DEFAULT 1,
  `questItem1` int UNSIGNED NOT NULL DEFAULT 0,
  `questItem2` int UNSIGNED NOT NULL DEFAULT 0,
  `questItem3` int UNSIGNED NOT NULL DEFAULT 0,
  `questItem4` int UNSIGNED NOT NULL DEFAULT 0,
  `questItem5` int UNSIGNED NOT NULL DEFAULT 0,
  `questItem6` int UNSIGNED NOT NULL DEFAULT 0,
  `Data0` int NOT NULL DEFAULT 0,
  `Data1` int NOT NULL DEFAULT 0,
  `Data2` int NOT NULL DEFAULT 0,
  `Data3` int NOT NULL DEFAULT 0,
  `Data4` int NOT NULL DEFAULT 0,
  `Data5` int NOT NULL DEFAULT 0,
  `Data6` int NOT NULL DEFAULT 0,
  `Data7` int NOT NULL DEFAULT 0,
  `Data8` int NOT NULL DEFAULT 0,
  `Data9` int NOT NULL DEFAULT 0,
  `Data10` int NOT NULL DEFAULT 0,
  `Data11` int NOT NULL DEFAULT 0,
  `Data12` int NOT NULL DEFAULT 0,
  `Data13` int NOT NULL DEFAULT 0,
  `Data14` int NOT NULL DEFAULT 0,
  `Data15` int NOT NULL DEFAULT 0,
  `Data16` int NOT NULL DEFAULT 0,
  `Data17` int NOT NULL DEFAULT 0,
  `Data18` int NOT NULL DEFAULT 0,
  `Data19` int NOT NULL DEFAULT 0,
  `Data20` int NOT NULL DEFAULT 0,
  `Data21` int NOT NULL DEFAULT 0,
  `Data22` int NOT NULL DEFAULT 0,
  `Data23` int NOT NULL DEFAULT 0,
  `Data24` int NOT NULL DEFAULT 0,
  `Data25` int NOT NULL DEFAULT 0,
  `Data26` int NOT NULL DEFAULT 0,
  `Data27` int NOT NULL DEFAULT 0,
  `Data28` int NOT NULL DEFAULT 0,
  `Data29` int NOT NULL DEFAULT 0,
  `Data30` int NOT NULL DEFAULT 0,
  `Data31` int NOT NULL DEFAULT 0,
  `Data32` int NOT NULL DEFAULT 0,
  `unkInt32` int NOT NULL DEFAULT 0,
  `AIName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ScriptName` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WorldEffectID` int UNSIGNED NOT NULL DEFAULT 0,
  `StateWorldEffectID` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellVisualID` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellStateVisualID` int NOT NULL DEFAULT 0,
  `SpellStateAnimID` int NOT NULL DEFAULT 0,
  `SpellStateAnimKitID` int NOT NULL DEFAULT 0,
  `MaxVisible` tinyint(1) NOT NULL DEFAULT 0,
  `IgnoreDynLos` tinyint(1) NOT NULL DEFAULT 0,
  `MinGold` int NOT NULL DEFAULT 0,
  `MaxGold` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT 1,
  PRIMARY KEY (`entry`) USING BTREE,
  INDEX `idx_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Gameobject System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_template
-- ----------------------------
INSERT INTO `gameobject_template` VALUES (4, 6, 0, 'Bonfire Damage', '', '', '', 14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 5, 7902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for garrison_building_creature
-- ----------------------------
DROP TABLE IF EXISTS `garrison_building_creature`;
CREATE TABLE `garrison_building_creature`  (
  `plotID` mediumint UNSIGNED NOT NULL,
  `BuildID` mediumint UNSIGNED NOT NULL,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier',
  `map` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `building` smallint UNSIGNED NOT NULL DEFAULT 0,
  `idx` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8855 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Garrison building spawn System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of garrison_building_creature
-- ----------------------------
INSERT INTO `garrison_building_creature` VALUES (23, 0, 78467, 1152, 5562.09, 4477.23, 139.323, 1.13777, 1, 8040);

-- ----------------------------
-- Table structure for garrison_building_gameobject
-- ----------------------------
DROP TABLE IF EXISTS `garrison_building_gameobject`;
CREATE TABLE `garrison_building_gameobject`  (
  `plotID` mediumint UNSIGNED NOT NULL,
  `BuildID` mediumint UNSIGNED NOT NULL,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  `map` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `rotation0` float NOT NULL DEFAULT 0,
  `rotation1` float NOT NULL DEFAULT 0,
  `rotation2` float NOT NULL DEFAULT 0,
  `rotation3` float NOT NULL DEFAULT 0,
  `building` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `idx` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9613 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Garrison building spawn System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garrison_building_gameobject
-- ----------------------------
INSERT INTO `garrison_building_gameobject` VALUES (23, 0, 230867, 1152, 5579.41, 4464.98, 132.137, 0.958846, 0, 0, 0, 1, 1, 8771);

-- ----------------------------
-- Table structure for garrison_follower_class_spec_abilities
-- ----------------------------
DROP TABLE IF EXISTS `garrison_follower_class_spec_abilities`;
CREATE TABLE `garrison_follower_class_spec_abilities`  (
  `classSpecId` int UNSIGNED NOT NULL DEFAULT 0,
  `abilityId` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`classSpecId`, `abilityId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garrison_follower_class_spec_abilities
-- ----------------------------
INSERT INTO `garrison_follower_class_spec_abilities` VALUES (2, 114);

-- ----------------------------
-- Table structure for garrison_mission_line
-- ----------------------------
DROP TABLE IF EXISTS `garrison_mission_line`;
CREATE TABLE `garrison_mission_line`  (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `NextMission` int UNSIGNED NOT NULL DEFAULT 0,
  `ReqGarrFollowerID` int UNSIGNED NOT NULL DEFAULT 0,
  `IsRandom` tinyint(1) NOT NULL DEFAULT 0,
  `Comment` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1396 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garrison_mission_line
-- ----------------------------
INSERT INTO `garrison_mission_line` VALUES (2, 3, 0, 0, 'Horde.');

-- ----------------------------
-- Table structure for garrison_plot_finalize_info
-- ----------------------------
DROP TABLE IF EXISTS `garrison_plot_finalize_info`;
CREATE TABLE `garrison_plot_finalize_info`  (
  `garrPlotInstanceId` int UNSIGNED NOT NULL,
  `hordeGameObjectId` int UNSIGNED NOT NULL DEFAULT 0,
  `hordeX` float NOT NULL DEFAULT 0,
  `hordeY` float NOT NULL DEFAULT 0,
  `hordeZ` float NOT NULL DEFAULT 0,
  `hordeO` float NOT NULL DEFAULT 0,
  `allianceGameObjectId` int UNSIGNED NOT NULL DEFAULT 0,
  `allianceX` float NOT NULL DEFAULT 0,
  `allianceY` float NOT NULL DEFAULT 0,
  `allianceZ` float NOT NULL DEFAULT 0,
  `allianceO` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`garrPlotInstanceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garrison_plot_finalize_info
-- ----------------------------
INSERT INTO `garrison_plot_finalize_info` VALUES (18, 233248, 5642.37, 4514.43, 119.27, 1.88088, 233251, 1821.49, 224.588, 72.2312, 4.98963);

-- ----------------------------
-- Table structure for garrison_shipment
-- ----------------------------
DROP TABLE IF EXISTS `garrison_shipment`;
CREATE TABLE `garrison_shipment`  (
  `SiteID` int NOT NULL DEFAULT 2 COMMENT '2 - Alliance, 71 - Horde, 0 - all',
  `ContainerID` int NOT NULL,
  `NpcEntry` int UNSIGNED NOT NULL,
  `questReq` int UNSIGNED NOT NULL DEFAULT 0,
  `classReq` int UNSIGNED NOT NULL DEFAULT 0,
  `ShipmentID` int UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NpcEntry`, `ContainerID`) USING BTREE,
  INDEX `ContainerID`(`ContainerID` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garrison_shipment
-- ----------------------------
INSERT INTO `garrison_shipment` VALUES (2, 56, 77730, 0, 0, 110, 'Alliance. Mine Shipment');

-- ----------------------------
-- Table structure for garrison_tradeskill
-- ----------------------------
DROP TABLE IF EXISTS `garrison_tradeskill`;
CREATE TABLE `garrison_tradeskill`  (
  `npcEntry` int UNSIGNED NOT NULL,
  `spellID` int UNSIGNED NOT NULL,
  `conditionID` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`npcEntry`, `spellID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garrison_tradeskill
-- ----------------------------
INSERT INTO `garrison_tradeskill` VALUES (77354, 158877, 31228);

-- ----------------------------
-- Table structure for gossip_menu
-- ----------------------------
DROP TABLE IF EXISTS `gossip_menu`;
CREATE TABLE `gossip_menu`  (
  `MenuID` int UNSIGNED NOT NULL,
  `TextID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuID`, `TextID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gossip_menu
-- ----------------------------
INSERT INTO `gossip_menu` VALUES (0, 16777215);

-- ----------------------------
-- Table structure for gossip_menu_option
-- ----------------------------
DROP TABLE IF EXISTS `gossip_menu_option`;
CREATE TABLE `gossip_menu_option`  (
  `MenuID` int UNSIGNED NOT NULL DEFAULT 0,
  `OptionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OptionNpc` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `OptionText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `OptionBroadcastTextID` int UNSIGNED NOT NULL DEFAULT 0,
  `ActionMenuID` int UNSIGNED NOT NULL DEFAULT 0,
  `ActionPoiID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BoxCoded` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BoxMoney` int UNSIGNED NOT NULL DEFAULT 0,
  `BoxText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `BoxBroadcastTextID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`MenuID`, `OptionID`) USING BTREE,
  INDEX `OptionText`(`OptionText`(250) ASC) USING BTREE,
  INDEX `BoxText`(`BoxText`(250) ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gossip_menu_option
-- ----------------------------
INSERT INTO `gossip_menu_option` VALUES (0, 1, 1, 'I want to browse your goods.', 3370, 0, 0, 0, 0, NULL, 0, 0);

-- ----------------------------
-- Table structure for gossip_menu_option_locale
-- ----------------------------
DROP TABLE IF EXISTS `gossip_menu_option_locale`;
CREATE TABLE `gossip_menu_option_locale`  (
  `MenuID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `OptionID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OptionText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `BoxText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`MenuID`, `OptionID`, `Locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gossip_menu_option_locale
-- ----------------------------
INSERT INTO `gossip_menu_option_locale` VALUES (20851, 0, 'enUS', 'Teleport me to the next tavern.', NULL);

-- ----------------------------
-- Table structure for guild_challenge_reward
-- ----------------------------
DROP TABLE IF EXISTS `guild_challenge_reward`;
CREATE TABLE `guild_challenge_reward`  (
  `Type` int UNSIGNED NULL DEFAULT NULL,
  `Gold` int UNSIGNED NULL DEFAULT NULL,
  `Gold2` int UNSIGNED NULL DEFAULT NULL,
  `Count` int UNSIGNED NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_challenge_reward
-- ----------------------------
INSERT INTO `guild_challenge_reward` VALUES (0, 0, 0, 0);

-- ----------------------------
-- Table structure for guild_rewards
-- ----------------------------
DROP TABLE IF EXISTS `guild_rewards`;
CREATE TABLE `guild_rewards`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `standing` tinyint UNSIGNED NULL DEFAULT 0,
  `racemask` bigint UNSIGNED NULL DEFAULT 0,
  `price` bigint UNSIGNED NULL DEFAULT 0,
  `achievement` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `achievement`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_rewards
-- ----------------------------
INSERT INTO `guild_rewards` VALUES (62286, 4, 0, 5000000, 0);

-- ----------------------------
-- Table structure for guild_xp_for_level
-- ----------------------------
DROP TABLE IF EXISTS `guild_xp_for_level`;
CREATE TABLE `guild_xp_for_level`  (
  `lvl` int UNSIGNED NOT NULL,
  `xp_for_next_level` bigint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`lvl`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_xp_for_level
-- ----------------------------
INSERT INTO `guild_xp_for_level` VALUES (1, 16580000);

-- ----------------------------
-- Table structure for instance_encounters
-- ----------------------------
DROP TABLE IF EXISTS `instance_encounters`;
CREATE TABLE `instance_encounters`  (
  `entry` int UNSIGNED NOT NULL COMMENT 'Unique entry from DungeonEncounter.dbc',
  `difficulty` smallint NOT NULL DEFAULT -1,
  `creditType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `creditEntry` int UNSIGNED NOT NULL DEFAULT 0,
  `lastEncounterDungeon` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'If not 0, LfgDungeon.dbc entry for the instance it is last encounter in',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`, `difficulty`, `creditEntry`) USING BTREE,
  INDEX `creditType`(`creditType` ASC) USING BTREE,
  INDEX `creditEntry`(`creditEntry` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance_encounters
-- ----------------------------
INSERT INTO `instance_encounters` VALUES (227, 1, 0, 9018, 30, 'High Interrogator Gerstahn');

-- ----------------------------
-- Table structure for instance_template
-- ----------------------------
DROP TABLE IF EXISTS `instance_template`;
CREATE TABLE `instance_template`  (
  `map` smallint UNSIGNED NOT NULL,
  `parent` smallint UNSIGNED NOT NULL DEFAULT 0,
  `script` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `allowMount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `bonusChance` int UNSIGNED NOT NULL,
  PRIMARY KEY (`map`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instance_template
-- ----------------------------
INSERT INTO `instance_template` VALUES (30, 0, '', 1, 20);

-- ----------------------------
-- Table structure for ip2nation
-- ----------------------------
DROP TABLE IF EXISTS `ip2nation`;
CREATE TABLE `ip2nation`  (
  `ip` int UNSIGNED NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  INDEX `ip`(`ip` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip2nation
-- ----------------------------

-- ----------------------------
-- Table structure for ip2nationcountries
-- ----------------------------
DROP TABLE IF EXISTS `ip2nationcountries`;
CREATE TABLE `ip2nationcountries`  (
  `code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `iso_code_2` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `iso_country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `lat` float NOT NULL DEFAULT 0,
  `lon` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`code`) USING BTREE,
  INDEX `code`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip2nationcountries
-- ----------------------------

-- ----------------------------
-- Table structure for item_enchantment_bonus
-- ----------------------------
DROP TABLE IF EXISTS `item_enchantment_bonus`;
CREATE TABLE `item_enchantment_bonus`  (
  `BonusID` int UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`BonusID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Item Bonus Enchantment System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_enchantment_bonus
-- ----------------------------
INSERT INTO `item_enchantment_bonus` VALUES (1676, 2.17391);

-- ----------------------------
-- Table structure for item_enchantment_template
-- ----------------------------
DROP TABLE IF EXISTS `item_enchantment_template`;
CREATE TABLE `item_enchantment_template`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL,
  `ench` int UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `type`, `ench`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Item Random Enchantment System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_enchantment_template
-- ----------------------------
INSERT INTO `item_enchantment_template` VALUES (61, 1, 6, 7.73);

-- ----------------------------
-- Table structure for item_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_template`;
CREATE TABLE `item_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_loot_template
-- ----------------------------
INSERT INTO `item_loot_template` VALUES (4632, 789, 0, 0, 0.9637, 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for item_script_names
-- ----------------------------
DROP TABLE IF EXISTS `item_script_names`;
CREATE TABLE `item_script_names`  (
  `Id` int UNSIGNED NOT NULL,
  `ScriptName` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item_script_names
-- ----------------------------
INSERT INTO `item_script_names` VALUES (24538, 'item_only_for_flight');

-- ----------------------------
-- Table structure for item_template
-- ----------------------------
DROP TABLE IF EXISTS `item_template`;
CREATE TABLE `item_template`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `subclass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundOverrideSubclass` tinyint NOT NULL DEFAULT -1,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `displayid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` bigint NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL,
  `Unk530_1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int UNSIGNED NOT NULL DEFAULT 0,
  `Unk430_1` float UNSIGNED NOT NULL DEFAULT 1,
  `Unk430_2` float NOT NULL DEFAULT 1,
  `BuyCount` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `BuyPrice` bigint NOT NULL DEFAULT 0,
  `SellPrice` int UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllowableClass` int NOT NULL DEFAULT -1,
  `AllowableRace` int NOT NULL DEFAULT -1,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `requiredspell` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `requiredhonorrank` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredCityRank` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredReputationFaction` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredReputationRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `maxcount` int NOT NULL DEFAULT 0,
  `stackable` int NULL DEFAULT 1,
  `ContainerSlots` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_type1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value1` smallint NOT NULL DEFAULT 0,
  `stat_unk1_1` int NOT NULL DEFAULT 0,
  `stat_unk2_1` int NOT NULL DEFAULT 0,
  `stat_type2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value2` smallint NOT NULL DEFAULT 0,
  `stat_unk1_2` int NOT NULL DEFAULT 0,
  `stat_unk2_2` int NOT NULL DEFAULT 0,
  `stat_type3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value3` smallint NOT NULL DEFAULT 0,
  `stat_unk1_3` int NOT NULL DEFAULT 0,
  `stat_unk2_3` int NOT NULL DEFAULT 0,
  `stat_type4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value4` smallint NOT NULL DEFAULT 0,
  `stat_unk1_4` int NOT NULL DEFAULT 0,
  `stat_unk2_4` int NOT NULL DEFAULT 0,
  `stat_type5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value5` smallint NOT NULL DEFAULT 0,
  `stat_unk1_5` int NOT NULL DEFAULT 0,
  `stat_unk2_5` int NOT NULL DEFAULT 0,
  `stat_type6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value6` smallint NOT NULL DEFAULT 0,
  `stat_unk1_6` int NOT NULL DEFAULT 0,
  `stat_unk2_6` int NOT NULL DEFAULT 0,
  `stat_type7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value7` smallint NOT NULL DEFAULT 0,
  `stat_unk1_7` int NOT NULL DEFAULT 0,
  `stat_unk2_7` int NOT NULL DEFAULT 0,
  `stat_type8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value8` smallint NOT NULL DEFAULT 0,
  `stat_unk1_8` int NOT NULL DEFAULT 0,
  `stat_unk2_8` int NOT NULL DEFAULT 0,
  `stat_type9` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value9` smallint NOT NULL DEFAULT 0,
  `stat_unk1_9` int NOT NULL DEFAULT 0,
  `stat_unk2_9` int NOT NULL DEFAULT 0,
  `stat_type10` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `stat_value10` smallint NOT NULL DEFAULT 0,
  `stat_unk1_10` int NOT NULL DEFAULT 0,
  `stat_unk2_10` int NOT NULL DEFAULT 0,
  `ScalingStatDistribution` smallint NOT NULL DEFAULT 0,
  `DamageType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `delay` smallint UNSIGNED NOT NULL DEFAULT 1000,
  `RangedModRange` float NOT NULL DEFAULT 0,
  `spellid_1` mediumint NOT NULL DEFAULT 0,
  `spelltrigger_1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `spellcharges_1` smallint NULL DEFAULT NULL,
  `spellcooldown_1` int NOT NULL DEFAULT -1,
  `spellcategory_1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `spellcategorycooldown_1` int NOT NULL DEFAULT -1,
  `spellid_2` mediumint NOT NULL DEFAULT 0,
  `spelltrigger_2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `spellcharges_2` smallint NULL DEFAULT NULL,
  `spellcooldown_2` int NOT NULL DEFAULT -1,
  `spellcategory_2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `spellcategorycooldown_2` int NOT NULL DEFAULT -1,
  `spellid_3` mediumint NOT NULL DEFAULT 0,
  `spelltrigger_3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `spellcharges_3` smallint NULL DEFAULT NULL,
  `spellcooldown_3` int NOT NULL DEFAULT -1,
  `spellcategory_3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `spellcategorycooldown_3` int NOT NULL DEFAULT -1,
  `spellid_4` mediumint NOT NULL DEFAULT 0,
  `spelltrigger_4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `spellcharges_4` smallint NULL DEFAULT NULL,
  `spellcooldown_4` int NOT NULL DEFAULT -1,
  `spellcategory_4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `spellcategorycooldown_4` int NOT NULL DEFAULT -1,
  `spellid_5` mediumint NOT NULL DEFAULT 0,
  `spelltrigger_5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `spellcharges_5` smallint NULL DEFAULT NULL,
  `spellcooldown_5` int NOT NULL DEFAULT -1,
  `spellcategory_5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `spellcategorycooldown_5` int NOT NULL DEFAULT -1,
  `bonding` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `PageText` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PageMaterial` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `startquest` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `lockid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Material` tinyint NOT NULL DEFAULT 0,
  `sheath` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RandomProperty` mediumint NOT NULL DEFAULT 0,
  `RandomSuffix` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `itemset` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `MaxDurability` smallint UNSIGNED NOT NULL DEFAULT 0,
  `area` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Map` smallint NOT NULL DEFAULT 0,
  `BagFamily` mediumint NOT NULL DEFAULT 0,
  `TotemCategory` mediumint NOT NULL DEFAULT 0,
  `socketColor_1` tinyint NOT NULL DEFAULT 0,
  `socketContent_1` mediumint NOT NULL DEFAULT 0,
  `socketColor_2` tinyint NOT NULL DEFAULT 0,
  `socketContent_2` mediumint NOT NULL DEFAULT 0,
  `socketColor_3` tinyint NOT NULL DEFAULT 0,
  `socketContent_3` mediumint NOT NULL DEFAULT 0,
  `socketBonus` mediumint NOT NULL DEFAULT 0,
  `GemProperties` mediumint NOT NULL DEFAULT 0,
  `ArmorDamageModifier` float NOT NULL DEFAULT 0,
  `duration` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemLimitCategory` smallint NOT NULL DEFAULT 0,
  `HolidayId` int UNSIGNED NOT NULL DEFAULT 0,
  `StatScalingFactor` float NOT NULL DEFAULT 0,
  `CurrencySubstitutionId` int UNSIGNED NOT NULL DEFAULT 0,
  `CurrencySubstitutionCount` int UNSIGNED NOT NULL DEFAULT 0,
  `flagsCustom` int UNSIGNED NOT NULL DEFAULT 0,
  `WDBVerified` smallint NULL DEFAULT 1,
  PRIMARY KEY (`entry`) USING BTREE,
  INDEX `idx_name`(`name` ASC) USING BTREE,
  INDEX `items_index`(`class` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Item System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_template
-- ----------------------------
INSERT INTO `item_template` VALUES (26, 4, 0, -1, 'Tabard of the record holder', 38283, 7, 16, 0, 0, 0, 1, 1, 1, 1, 1, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Великолепная накидка рекордсмена Uwow.biz. Всех переполняет восторг от одного взгляда на нее.', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13329);

-- ----------------------------
-- Table structure for item_template_addon
-- ----------------------------
DROP TABLE IF EXISTS `item_template_addon`;
CREATE TABLE `item_template_addon`  (
  `Id` int UNSIGNED NOT NULL,
  `FlagsCu` int UNSIGNED NOT NULL DEFAULT 0,
  `FoodType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinMoneyLoot` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxMoneyLoot` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellPPMChance` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item_template_addon
-- ----------------------------
INSERT INTO `item_template_addon` VALUES (117, 0, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for letter_analogs
-- ----------------------------
DROP TABLE IF EXISTS `letter_analogs`;
CREATE TABLE `letter_analogs`  (
  `letter` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `analogs` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  PRIMARY KEY (`letter`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci MAX_ROWS = 26 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of letter_analogs
-- ----------------------------
INSERT INTO `letter_analogs` VALUES ('a', 'а@āąåäàá');

-- ----------------------------
-- Table structure for lfg_dungeon_rewards
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_rewards`;
CREATE TABLE `lfg_dungeon_rewards`  (
  `dungeonId` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Dungeon entry from dbc',
  `maxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Max level at which this reward is rewarded',
  `firstQuestId` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for first dungeon this day',
  `otherQuestId` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for Nth dungeon this day',
  `bonusQuestId` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for bonus objectives',
  `EncounterMask` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`dungeonId`, `maxLevel`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeon_rewards
-- ----------------------------
INSERT INTO `lfg_dungeon_rewards` VALUES (258, 15, 24881, 24889, 0, 0);

-- ----------------------------
-- Table structure for lfg_entrances
-- ----------------------------
DROP TABLE IF EXISTS `lfg_entrances`;
CREATE TABLE `lfg_entrances`  (
  `dungeonId` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Unique id from LFGDungeons.dbc',
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`dungeonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_entrances
-- ----------------------------
INSERT INTO `lfg_entrances` VALUES (1, 'Wailing Caverns', -158.441, 131.601, -74.2552, 5.84685);

-- ----------------------------
-- Table structure for linked_respawn
-- ----------------------------
DROP TABLE IF EXISTS `linked_respawn`;
CREATE TABLE `linked_respawn`  (
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `linkedGuid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `linkType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `linkType`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature Respawn Link System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of linked_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for locales_achievement_reward
-- ----------------------------
DROP TABLE IF EXISTS `locales_achievement_reward`;
CREATE TABLE `locales_achievement_reward`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `subject_loc1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc6` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc7` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc8` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc9` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `subject_loc10` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `text_loc1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc9` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `text_loc10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_achievement_reward
-- ----------------------------

-- ----------------------------
-- Table structure for locales_gameobject
-- ----------------------------
DROP TABLE IF EXISTS `locales_gameobject`;
CREATE TABLE `locales_gameobject`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `name_loc1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc6` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc7` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc8` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc9` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name_loc10` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc6` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc7` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc8` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc9` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `castbarcaption_loc10` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `VerifiedBuild` int NULL DEFAULT 21021,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_gameobject
-- ----------------------------

-- ----------------------------
-- Table structure for locales_page_text
-- ----------------------------
DROP TABLE IF EXISTS `locales_page_text`;
CREATE TABLE `locales_page_text`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Text_loc1` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc3` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc4` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc5` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc6` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc7` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc8` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc9` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text_loc10` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_page_text
-- ----------------------------

-- ----------------------------
-- Table structure for locales_points_of_interest
-- ----------------------------
DROP TABLE IF EXISTS `locales_points_of_interest`;
CREATE TABLE `locales_points_of_interest`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `icon_name_loc1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc9` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `icon_name_loc10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_points_of_interest
-- ----------------------------

-- ----------------------------
-- Table structure for luck_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `luck_loot_template`;
CREATE TABLE `luck_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_loot_template
-- ----------------------------
INSERT INTO `luck_loot_template` VALUES (11502, 138018, 0, 0, 1, 0, 0, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for mail_level_reward
-- ----------------------------
DROP TABLE IF EXISTS `mail_level_reward`;
CREATE TABLE `mail_level_reward`  (
  `level` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `raceMask` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `mailTemplateId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `senderEntry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`, `raceMask`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Mail System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_level_reward
-- ----------------------------
INSERT INTO `mail_level_reward` VALUES (20, 1, 224, 4732);

-- ----------------------------
-- Table structure for mail_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `mail_loot_template`;
CREATE TABLE `mail_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_loot_template
-- ----------------------------
INSERT INTO `mail_loot_template` VALUES (84, 21746, 0, 0, 100, 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for milling_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `milling_loot_template`;
CREATE TABLE `milling_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of milling_loot_template
-- ----------------------------
INSERT INTO `milling_loot_template` VALUES (765, 39151, 0, 0, 99.7351, 0, 1, 0, 2, 3, NULL);

-- ----------------------------
-- Table structure for mission_quest_link
-- ----------------------------
DROP TABLE IF EXISTS `mission_quest_link`;
CREATE TABLE `mission_quest_link`  (
  `QuestID` int UNSIGNED NOT NULL,
  `MissionStartID` int UNSIGNED NOT NULL,
  PRIMARY KEY (`QuestID`, `MissionStartID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mission_quest_link
-- ----------------------------
INSERT INTO `mission_quest_link` VALUES (32442, 1162);

-- ----------------------------
-- Table structure for mission_reward
-- ----------------------------
DROP TABLE IF EXISTS `mission_reward`;
CREATE TABLE `mission_reward`  (
  `MissionID` int NOT NULL DEFAULT 0,
  `RewardXP` int NULL DEFAULT 0,
  `RewardItemID` int NULL DEFAULT 0,
  `ItemAmount` int NULL DEFAULT 0,
  `CurrencyID` int NULL DEFAULT 0,
  `CurrencyValue` int NULL DEFAULT 0,
  `BonusAbilityID` int NOT NULL DEFAULT 0,
  `KillCredit` int UNSIGNED NOT NULL DEFAULT 0,
  `Unknown` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`MissionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Export of mission_reward.db2' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mission_reward
-- ----------------------------
INSERT INTO `mission_reward` VALUES (2, 0, 112737, 1, 0, 0, 0, 0, 979575);

-- ----------------------------
-- Table structure for mount_definitions
-- ----------------------------
DROP TABLE IF EXISTS `mount_definitions`;
CREATE TABLE `mount_definitions`  (
  `spellId` int NOT NULL,
  `otherSpellId` int NOT NULL,
  PRIMARY KEY (`spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mount_definitions
-- ----------------------------
INSERT INTO `mount_definitions` VALUES (17229, 64658);

-- ----------------------------
-- Table structure for npc_spellclick_spells
-- ----------------------------
DROP TABLE IF EXISTS `npc_spellclick_spells`;
CREATE TABLE `npc_spellclick_spells`  (
  `npc_entry` int UNSIGNED NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int UNSIGNED NOT NULL COMMENT 'spell which should be casted ',
  `cast_flags` tinyint UNSIGNED NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `user_type` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click',
  `add_npc_flag` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`npc_entry`, `spell_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of npc_spellclick_spells
-- ----------------------------
INSERT INTO `npc_spellclick_spells` VALUES (357, 63151, 1, 0, 1);

-- ----------------------------
-- Table structure for npc_text
-- ----------------------------
DROP TABLE IF EXISTS `npc_text`;
CREATE TABLE `npc_text`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Probability0` float NOT NULL DEFAULT 0,
  `Probability1` float NOT NULL DEFAULT 0,
  `Probability2` float NOT NULL DEFAULT 0,
  `Probability3` float NOT NULL DEFAULT 0,
  `Probability4` float NOT NULL DEFAULT 0,
  `Probability5` float NOT NULL DEFAULT 0,
  `Probability6` float NOT NULL DEFAULT 0,
  `Probability7` float NOT NULL DEFAULT 0,
  `BroadcastTextID0` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID1` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID2` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID3` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID4` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID5` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID6` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BroadcastTextID7` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of npc_text
-- ----------------------------
INSERT INTO `npc_text` VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 50429, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for npc_trainer
-- ----------------------------
DROP TABLE IF EXISTS `npc_trainer`;
CREATE TABLE `npc_trainer`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `spell` mediumint NOT NULL DEFAULT 0,
  `spellcost` int UNSIGNED NOT NULL DEFAULT 0,
  `reqskill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `reqskillvalue` smallint UNSIGNED NOT NULL DEFAULT 0,
  `reqlevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of npc_trainer
-- ----------------------------
INSERT INTO `npc_trainer` VALUES (514, 2018, 10, 164, 0, 0);

-- ----------------------------
-- Table structure for npc_vendor
-- ----------------------------
DROP TABLE IF EXISTS `npc_vendor`;
CREATE TABLE `npc_vendor`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `slot` smallint NOT NULL DEFAULT 0,
  `item` mediumint NOT NULL DEFAULT 0,
  `maxcount` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `incrtime` int UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedCost` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `money` bigint UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `PlayerConditionID` int UNSIGNED NOT NULL DEFAULT 0,
  `IgnoreFiltering` int UNSIGNED NOT NULL DEFAULT 0,
  `RandomPropertiesSeed` int UNSIGNED NOT NULL DEFAULT 0,
  `RandomPropertiesID` int UNSIGNED NOT NULL DEFAULT 0,
  `BonusListID` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ItemModifiers` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Context` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` int UNSIGNED NOT NULL DEFAULT 21021,
  PRIMARY KEY (`entry`, `item`, `ExtendedCost`, `type`) USING BTREE,
  INDEX `slot`(`slot` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Npc System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of npc_vendor
-- ----------------------------
INSERT INTO `npc_vendor` VALUES (54, 0, 2488, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', '', 0, 21021);

-- ----------------------------
-- Table structure for outdoorpvp_template
-- ----------------------------
DROP TABLE IF EXISTS `outdoorpvp_template`;
CREATE TABLE `outdoorpvp_template`  (
  `TypeId` tinyint UNSIGNED NOT NULL,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ZoneList` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MapList` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`TypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'OutdoorPvP Templates' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outdoorpvp_template
-- ----------------------------
INSERT INTO `outdoorpvp_template` VALUES (1, 'outdoorpvp_hp', '3483 3563 3562 3713 3714 3836 ', '530 ', 'Hellfire Peninsula');

-- ----------------------------
-- Table structure for page_text
-- ----------------------------
DROP TABLE IF EXISTS `page_text`;
CREATE TABLE `page_text`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NextPageID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Item System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_text
-- ----------------------------
INSERT INTO `page_text` VALUES (1, 'Here is a jar of ashes. These are the ashes of my sanity, my passion, and my drive. All, utterly destroyed by themselves. May all those who look upon these desolated lands of Hellfire remember this fallen peon. He shed blood for the Alliance, and sacrificed for the Horde only to be driven utterly mad by the wicked and soulless ones who devoured what he held most dear. As they feast from his toils, may they suffer his wrath. Maybe not in this world, but in every world hereafter. It is my declaration, my solem oath, and my everlasting promise. I will avenge my suffering.', 0, 0, 0, 12340);

-- ----------------------------
-- Table structure for page_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `page_text_locale`;
CREATE TABLE `page_text_locale`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `Locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_text_locale
-- ----------------------------

-- ----------------------------
-- Table structure for personal_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `personal_loot_template`;
CREATE TABLE `personal_loot_template`  (
  `entry` int NOT NULL DEFAULT 0,
  `type` tinyint NOT NULL DEFAULT 0,
  `chance` tinyint NOT NULL DEFAULT 25,
  `lootspellId` int NOT NULL DEFAULT 0,
  `bonusspellId` int NOT NULL DEFAULT 0,
  `cooldownid` int NOT NULL DEFAULT 0,
  `cooldowntype` tinyint NOT NULL DEFAULT 0,
  `goEntry` int NOT NULL DEFAULT 0,
  `respawn` tinyint NOT NULL DEFAULT 1,
  `comment` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_loot_template
-- ----------------------------
INSERT INTO `personal_loot_template` VALUES (50883, 1, 100, 0, 0, 0, 0, 0, 1, 'Rare Draenor');

-- ----------------------------
-- Table structure for pet_name_generation
-- ----------------------------
DROP TABLE IF EXISTS `pet_name_generation`;
CREATE TABLE `pet_name_generation`  (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `half` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 314 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_name_generation
-- ----------------------------
INSERT INTO `pet_name_generation` VALUES (1, 'Aba', 416, 0);

-- ----------------------------
-- Table structure for pet_stats
-- ----------------------------
DROP TABLE IF EXISTS `pet_stats`;
CREATE TABLE `pet_stats`  (
  `entry` int NOT NULL,
  `hp` float NOT NULL DEFAULT 0.5,
  `ap` float NOT NULL DEFAULT 1,
  `ap_type` int NOT NULL DEFAULT 0,
  `spd` float NOT NULL DEFAULT 1,
  `school_mask` int NOT NULL DEFAULT 127,
  `maxspdorap` int NOT NULL DEFAULT 0,
  `state` int NOT NULL DEFAULT 0,
  `energy` int NOT NULL DEFAULT 0,
  `energy_type` int NOT NULL DEFAULT 0,
  `armor` float NOT NULL DEFAULT 1,
  `type` tinyint NOT NULL DEFAULT 0,
  `damage` float NOT NULL DEFAULT 0,
  `haste` int NOT NULL DEFAULT 1,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_stats
-- ----------------------------
INSERT INTO `pet_stats` VALUES (1, 0.7, 0.6, 2, -0.6, 0, 0, 0, 100, 2, 1.7, 0, 0, 1, 'All hunter pet');

-- ----------------------------
-- Table structure for phase_definitions
-- ----------------------------
DROP TABLE IF EXISTS `phase_definitions`;
CREATE TABLE `phase_definitions`  (
  `zoneId` mediumint UNSIGNED NOT NULL,
  `entry` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `phasemask` bigint UNSIGNED NOT NULL DEFAULT 0,
  `phaseId` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `PreloadMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VisibleMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiWorldMapAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `flags` tinyint UNSIGNED NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`, `zoneId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4537 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phase_definitions
-- ----------------------------
INSERT INTO `phase_definitions` VALUES (4, 1, 2, '', 1190, 992, 0, 0, 'DARK_PORTAL_WOD');

-- ----------------------------
-- Table structure for pickpocketing_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `pickpocketing_loot_template`;
CREATE TABLE `pickpocketing_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pickpocketing_loot_template
-- ----------------------------
INSERT INTO `pickpocketing_loot_template` VALUES (3, 929, 0, 0, 1.9488, 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for player_factionchange_achievement
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_achievement`;
CREATE TABLE `player_factionchange_achievement`  (
  `alliance_id` int UNSIGNED NOT NULL,
  `horde_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_achievement
-- ----------------------------
INSERT INTO `player_factionchange_achievement` VALUES (33, 1358);

-- ----------------------------
-- Table structure for player_factionchange_items
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE `player_factionchange_items`  (
  `race_A` int UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int UNSIGNED NOT NULL,
  `commentA` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `race_H` int UNSIGNED NOT NULL DEFAULT 0,
  `horde_id` int UNSIGNED NOT NULL,
  `commentH` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_items
-- ----------------------------
INSERT INTO `player_factionchange_items` VALUES (0, 1201, 'Dull Heater Shield', 0, 2376, '');

-- ----------------------------
-- Table structure for player_factionchange_reputations
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_reputations`;
CREATE TABLE `player_factionchange_reputations`  (
  `alliance_id` int UNSIGNED NOT NULL,
  `horde_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_reputations
-- ----------------------------
INSERT INTO `player_factionchange_reputations` VALUES (47, 530);

-- ----------------------------
-- Table structure for player_factionchange_spells
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE `player_factionchange_spells`  (
  `alliance_id` int UNSIGNED NOT NULL,
  `horde_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_spells
-- ----------------------------
INSERT INTO `player_factionchange_spells` VALUES (458, 6654);

-- ----------------------------
-- Table structure for player_factionchange_titles
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_titles`;
CREATE TABLE `player_factionchange_titles`  (
  `alliance_id` int NOT NULL,
  `horde_id` int NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_titles
-- ----------------------------
INSERT INTO `player_factionchange_titles` VALUES (1, 15);

-- ----------------------------
-- Table structure for player_levelstats
-- ----------------------------
DROP TABLE IF EXISTS `player_levelstats`;
CREATE TABLE `player_levelstats`  (
  `race` tinyint UNSIGNED NOT NULL,
  `class` tinyint UNSIGNED NOT NULL,
  `level` tinyint UNSIGNED NOT NULL,
  `str` smallint UNSIGNED NOT NULL COMMENT 'strength',
  `agi` smallint UNSIGNED NOT NULL COMMENT 'agility',
  `sta` smallint UNSIGNED NOT NULL COMMENT 'stamina',
  `inte` smallint UNSIGNED NOT NULL COMMENT 'intellect',
  `spi` smallint UNSIGNED NOT NULL COMMENT 'spirit',
  PRIMARY KEY (`race`, `class`, `level`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Stores levels stats.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_levelstats
-- ----------------------------
INSERT INTO `player_levelstats` VALUES (1, 1, 1, 17, 10, 11, 8, 8);

-- ----------------------------
-- Table structure for player_xp_for_level
-- ----------------------------
DROP TABLE IF EXISTS `player_xp_for_level`;
CREATE TABLE `player_xp_for_level`  (
  `Level` tinyint UNSIGNED NOT NULL,
  `Experience` float UNSIGNED NOT NULL,
  PRIMARY KEY (`Level`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_xp_for_level
-- ----------------------------

-- ----------------------------
-- Table structure for playerchoice
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice`;
CREATE TABLE `playerchoice`  (
  `ChoiceId` int NOT NULL,
  `UiTextureKitId` int NOT NULL DEFAULT 0,
  `Question` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `HideWarboardHeader` tinyint(1) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice
-- ----------------------------
INSERT INTO `playerchoice` VALUES (51, 0, 'What outpost structure should we construct?', 0, 0);

-- ----------------------------
-- Table structure for playerchoice_locale
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_locale`;
CREATE TABLE `playerchoice_locale`  (
  `ChoiceId` int NOT NULL,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Question` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_locale
-- ----------------------------

-- ----------------------------
-- Table structure for playerchoice_response
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_response`;
CREATE TABLE `playerchoice_response`  (
  `ChoiceId` int NOT NULL,
  `ResponseId` int NOT NULL,
  `Index` int UNSIGNED NOT NULL,
  `ChoiceArtFileId` int NOT NULL DEFAULT 0,
  `Header` varchar(511) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Answer` varchar(511) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(2047) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Confirmation` varchar(127) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `ResponseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_response
-- ----------------------------
INSERT INTO `playerchoice_response` VALUES (51, 119, 0, 986494, '', 'Wrynn Artillery Tower', 'The Wrynn Artillery Tower will provide higher quality weapons and armor for your troops.\n\nOnce fully operational, the Wrynn Artillery Tower grants the use of |cFFFF0000|Hspell:162075|h[Artillery Strike]|h|r within Talador.', '', 0);

-- ----------------------------
-- Table structure for playerchoice_response_locale
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_response_locale`;
CREATE TABLE `playerchoice_response_locale`  (
  `ChoiceId` int NOT NULL,
  `ResponseId` int NOT NULL,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Header` varchar(511) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Answer` varchar(511) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Description` varchar(2047) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Confirmation` varchar(127) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `ResponseId`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_response_locale
-- ----------------------------

-- ----------------------------
-- Table structure for playerchoice_response_reward
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_response_reward`;
CREATE TABLE `playerchoice_response_reward`  (
  `ChoiceId` int NOT NULL,
  `ResponseId` int NOT NULL,
  `TitleId` int NOT NULL DEFAULT 0,
  `PackageId` int NOT NULL DEFAULT 0,
  `SkillLineId` int UNSIGNED NOT NULL DEFAULT 0,
  `SkillPointCount` int UNSIGNED NOT NULL DEFAULT 0,
  `ArenaPointCount` int UNSIGNED NOT NULL DEFAULT 0,
  `HonorPointCount` int UNSIGNED NOT NULL DEFAULT 0,
  `Money` bigint UNSIGNED NOT NULL DEFAULT 0,
  `Xp` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `ResponseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_response_reward
-- ----------------------------
INSERT INTO `playerchoice_response_reward` VALUES (51, 119, 0, 0, 0, 0, 0, 0, 0, 0, 160027, 0);

-- ----------------------------
-- Table structure for playerchoice_response_reward_currency
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_response_reward_currency`;
CREATE TABLE `playerchoice_response_reward_currency`  (
  `ChoiceId` int NOT NULL,
  `ResponseId` int NOT NULL,
  `Index` int UNSIGNED NOT NULL,
  `CurrencyId` int UNSIGNED NOT NULL DEFAULT 0,
  `Quantity` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `ResponseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_response_reward_currency
-- ----------------------------
INSERT INTO `playerchoice_response_reward_currency` VALUES (63, 143, 0, 823, 800, 0);

-- ----------------------------
-- Table structure for playerchoice_response_reward_faction
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_response_reward_faction`;
CREATE TABLE `playerchoice_response_reward_faction`  (
  `ChoiceId` int NOT NULL,
  `ResponseId` int NOT NULL,
  `Index` int UNSIGNED NOT NULL,
  `FactionId` int UNSIGNED NOT NULL DEFAULT 0,
  `Quantity` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `ResponseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_response_reward_faction
-- ----------------------------

-- ----------------------------
-- Table structure for playerchoice_response_reward_item
-- ----------------------------
DROP TABLE IF EXISTS `playerchoice_response_reward_item`;
CREATE TABLE `playerchoice_response_reward_item`  (
  `ChoiceId` int NOT NULL,
  `ResponseId` int NOT NULL,
  `Index` int UNSIGNED NOT NULL,
  `ItemId` int UNSIGNED NOT NULL DEFAULT 0,
  `BonusListIDs` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Quantity` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ChoiceId`, `ResponseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playerchoice_response_reward_item
-- ----------------------------
INSERT INTO `playerchoice_response_reward_item` VALUES (235, 488, 0, 128823, NULL, 1, 0);

-- ----------------------------
-- Table structure for playercreateinfo
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE `playercreateinfo`  (
  `race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `map` smallint UNSIGNED NOT NULL DEFAULT 0,
  `zone` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`, `class`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playercreateinfo
-- ----------------------------
INSERT INTO `playercreateinfo` VALUES (1, 1, 0, 9, -8914.57, -133.909, 80.5378, 0);

-- ----------------------------
-- Table structure for playercreateinfo_action
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_action`;
CREATE TABLE `playercreateinfo_action`  (
  `race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `button` smallint UNSIGNED NOT NULL DEFAULT 0,
  `action` int UNSIGNED NOT NULL DEFAULT 0,
  `type` smallint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`race`, `class`, `button`) USING BTREE,
  INDEX `playercreateinfo_race_class_index`(`race` ASC, `class` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playercreateinfo_action
-- ----------------------------
INSERT INTO `playercreateinfo_action` VALUES (1, 1, 0, 6603, 0);

-- ----------------------------
-- Table structure for playercreateinfo_cast_spell
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_cast_spell`;
CREATE TABLE `playercreateinfo_cast_spell`  (
  `raceMask` bigint UNSIGNED NOT NULL,
  `classMask` int UNSIGNED NOT NULL DEFAULT 0,
  `createMode` tinyint NOT NULL DEFAULT 0,
  `spell` int UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`raceMask`, `classMask`, `createMode`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playercreateinfo_cast_spell
-- ----------------------------
INSERT INTO `playercreateinfo_cast_spell` VALUES (1, 4, 0, 79597, 'Human - Hunter - Young Wolf');

-- ----------------------------
-- Table structure for playercreateinfo_item
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_item`;
CREATE TABLE `playercreateinfo_item`  (
  `race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `itemid` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 1,
  `BonusListID` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`race`, `class`, `itemid`, `BonusListID`) USING BTREE,
  INDEX `playercreateinfo_race_class_index`(`race` ASC, `class` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playercreateinfo_item
-- ----------------------------
INSERT INTO `playercreateinfo_item` VALUES (0, 6, 40582, -1, '');

-- ----------------------------
-- Table structure for playercreateinfo_quest
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_quest`;
CREATE TABLE `playercreateinfo_quest`  (
  `race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `questid` int UNSIGNED NOT NULL DEFAULT 0,
  INDEX `playercreateinfo_race_class_index`(`race` ASC, `class` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playercreateinfo_quest
-- ----------------------------

-- ----------------------------
-- Table structure for playercreateinfo_spell_custom
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_spell_custom`;
CREATE TABLE `playercreateinfo_spell_custom`  (
  `race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Spell` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`race`, `class`, `Spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playercreateinfo_spell_custom
-- ----------------------------

-- ----------------------------
-- Table structure for points_of_interest
-- ----------------------------
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE `points_of_interest`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `icon` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `flags` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `icon_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of points_of_interest
-- ----------------------------
INSERT INTO `points_of_interest` VALUES (1, -9459, 42.0805, 7, 99, 0, 'Lion\'s Pride Inn');

-- ----------------------------
-- Table structure for pool_creature
-- ----------------------------
DROP TABLE IF EXISTS `pool_creature`;
CREATE TABLE `pool_creature`  (
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `pool_entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_creature
-- ----------------------------
INSERT INTO `pool_creature` VALUES (32892, 126, 0, 'NULL');

-- ----------------------------
-- Table structure for pool_gameobject
-- ----------------------------
DROP TABLE IF EXISTS `pool_gameobject`;
CREATE TABLE `pool_gameobject`  (
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `pool_entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_gameobject
-- ----------------------------
INSERT INTO `pool_gameobject` VALUES (13, 975, 0, 'Ragveil zone 3521, node 1');

-- ----------------------------
-- Table structure for pool_gameobjectrestruct1
-- ----------------------------
DROP TABLE IF EXISTS `pool_gameobjectrestruct1`;
CREATE TABLE `pool_gameobjectrestruct1`  (
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `pool_entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_guid`(`guid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_gameobjectrestruct1
-- ----------------------------

-- ----------------------------
-- Table structure for pool_pool
-- ----------------------------
DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE `pool_pool`  (
  `pool_id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `mother_pool` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `chance` float NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pool_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_pool
-- ----------------------------
INSERT INTO `pool_pool` VALUES (3000, 2000, 0, 'Spawn Point 1 - Alterac Mountains (Inner Section)');

-- ----------------------------
-- Table structure for pool_quest
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest`;
CREATE TABLE `pool_quest`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `pool_entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`entry`) USING BTREE,
  INDEX `idx_guid`(`entry` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_quest
-- ----------------------------
INSERT INTO `pool_quest` VALUES (11364, 357, 'Wanted: Shattered Hand Centurions');

-- ----------------------------
-- Table structure for pool_template
-- ----------------------------
DROP TABLE IF EXISTS `pool_template`;
CREATE TABLE `pool_template`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Pool entry',
  `max_limit` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Max number of objects (0) is no limit',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_template
-- ----------------------------
INSERT INTO `pool_template` VALUES (1, 1, '');

-- ----------------------------
-- Table structure for prospecting_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `prospecting_loot_template`;
CREATE TABLE `prospecting_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prospecting_loot_template
-- ----------------------------
INSERT INTO `prospecting_loot_template` VALUES (2770, 774, 0, 0, 49.7365, 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for pvp_reward
-- ----------------------------
DROP TABLE IF EXISTS `pvp_reward`;
CREATE TABLE `pvp_reward`  (
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BracketLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BaseLevel` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ElitLevel` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `BonusBaseLevel` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `ChanceBonusLevel` float UNSIGNED NOT NULL DEFAULT 0,
  `ChestA` int UNSIGNED NOT NULL DEFAULT 0,
  `ChestH` int UNSIGNED NOT NULL DEFAULT 0,
  `ChestChance` float UNSIGNED NOT NULL DEFAULT 0,
  `QuestAFirst` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestAWin` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestAlose` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestHFirst` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestHWin` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestHLose` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemCAFirst` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemCAWin` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemCALose` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemsChance` float UNSIGNED NOT NULL DEFAULT 0,
  `ItemsA` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemsH` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemsAElit` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemsHElit` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Relics` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `RelicsElit` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `RateLegendary` float NOT NULL DEFAULT 0.1,
  `Comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_reward
-- ----------------------------
INSERT INTO `pvp_reward` VALUES (0, 110, 890, 0, 5, 5, 151557, 151558, 25, 42462, 41716, 41718, 42463, 41717, 41719, 143713, 138864, 0, 5, '149756 149758 149760 149762 149764 149766 149768 149770 149772 149774 149776 149778 149844 149846 149848 149850 148852 149854 149856 149858 149898 149900 149902 149904 149906 149908 149910 149912 149970 149972 149974 149976 149978 149980 149982 149984 149796 149798 149800 149802 149804 149806 149808 149810 149812 149814 149816 149818 149820 149822 149824 149826 149860 149862 149864 149866 149868 149870 149872 149874 149920 149922 149924 149926 149928 149930 149932 149934 149828 149830 149832 149834 149836 149838 149840 149842 149936 149938 149940 149942 149944 149946 149948 149950 149780 149782 149784 149786 149788 149790 149792 149794 149882 149884 149886 149888 149890 149892 149894 149896 149986 149988 149990 149992 149994 149996 149998 150000 149914 149916 149918 149876 149878 149880 149952 149954 149956 149958 149960 149962 149964 149966 149968 ', '149757 149759 149761 149763 149765 149767 149769 149771 149773 149775 149777 149779 149845 149847 149849 149851 148853 149855 149857 149859 149899 149901 149903 149905 149907 149909 149911 149913 149971 149973 149975 149977 149979 149981 149983 149985 149797 149799 149801 149803 149805 149807 149809 149811 149813 149815 149817 149819 149821 149823 149825 149827 149861 149863 149865 149867 149869 149871 149873 149875 149921 149923 149925 149927 149929 149931 149933 149935 149829 149831 149833 149835 149837 149839 149841 149843 149937 149939 149941 149943 149945 149947 149949 149951 149781 149783 149785 149787 149789 149791 149793 149795 149883 149885 149887 149889 149891 149893 149895 149897 149987 149989 149991 149993 149995 149997 149999 150001 149915 149917 149919 149877 149879 149881 149953 149955 149957 149959 149961 149963 149965 149967 149969 ', '', '', '150316 150317 150318 150301 150302 150303 150313 150314 150315 150357 150358 150359 150319 150320 150321 150307 150308 150309 150310 150311 150312 150298 150299 150300 150304 150305 150306 150354 150355 150356 ', '', 0.1, 'Skirmish');

-- ----------------------------
-- Table structure for quest_details
-- ----------------------------
DROP TABLE IF EXISTS `quest_details`;
CREATE TABLE `quest_details`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Emote1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Emote2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Emote3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Emote4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay1` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay2` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay3` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay4` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_details
-- ----------------------------
INSERT INTO `quest_details` VALUES (6, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for quest_end_scripts
-- ----------------------------
DROP TABLE IF EXISTS `quest_end_scripts`;
CREATE TABLE `quest_end_scripts`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_end_scripts
-- ----------------------------
INSERT INTO `quest_end_scripts` VALUES (3364, 8, 1, 400, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for quest_objectives
-- ----------------------------
DROP TABLE IF EXISTS `quest_objectives`;
CREATE TABLE `quest_objectives`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StorageIndex` tinyint NOT NULL DEFAULT 0,
  `ObjectID` int NOT NULL DEFAULT 0,
  `Amount` int NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `TaskStep` float NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  `Bugged` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_objectives
-- ----------------------------
INSERT INTO `quest_objectives` VALUES (135100, 13510, 0, 0, 32964, 1, 0, 0, 0, 'Escort Sentinel Aynasha to the Dock.', 0, 0);

-- ----------------------------
-- Table structure for quest_objectives_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_objectives_locale`;
CREATE TABLE `quest_objectives_locale`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `QuestId` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `StorageIndex` tinyint NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_objectives_locale
-- ----------------------------
INSERT INTO `quest_objectives_locale` VALUES (65536, 'enUS', 40125, 0, '��ExorcismSlay Keeper Selentia.W', 21531);

-- ----------------------------
-- Table structure for quest_offer_reward
-- ----------------------------
DROP TABLE IF EXISTS `quest_offer_reward`;
CREATE TABLE `quest_offer_reward`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Emote1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Emote2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Emote3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Emote4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay1` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay2` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay3` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_offer_reward
-- ----------------------------
INSERT INTO `quest_offer_reward` VALUES (2, 0, 0, 0, 0, 0, 0, 0, 0, 'Most impressive, $N... the claw of Sharptalon could not have been easy to get! The Ashenvale Hunt goes well for you!$B$BSharptalon had long terrorized the peons from the lumber camps near its path as they tried to travel here to Splintertree Post. No doubt once the word gets out that it was you who put down the beast, many rousing songs of your bravery will be heard at campfires and lumber mills across Ashenvale!', 0);

-- ----------------------------
-- Table structure for quest_offer_reward_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_offer_reward_locale`;
CREATE TABLE `quest_offer_reward_locale`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OfferRewardText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `Locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_offer_reward_locale
-- ----------------------------
INSERT INTO `quest_offer_reward_locale` VALUES (2, 'enUS', 'You have slain the beast?$B$BI owe you a great debt, friend. That beast terrorized many over the years, but its death holds special meaning to me.$B$BYou see, recently my brother fell victim to these very claws... I shall sleep well now, knowing that he has been avenged.', 0);

-- ----------------------------
-- Table structure for quest_poi
-- ----------------------------
DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE `quest_poi`  (
  `QuestID` int NOT NULL DEFAULT 0,
  `BlobIndex` int NOT NULL DEFAULT 0,
  `Idx1` int NOT NULL DEFAULT 0,
  `ObjectiveIndex` int NOT NULL DEFAULT 0,
  `QuestObjectiveID` int NOT NULL DEFAULT 0,
  `QuestObjectID` int NOT NULL DEFAULT 0,
  `MapID` int NOT NULL DEFAULT 0,
  `WorldMapAreaId` int NOT NULL DEFAULT 0,
  `Floor` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `WorldEffectID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `WoDUnk1` int NOT NULL DEFAULT 0,
  `AlwaysAllowMergingBlobs` tinyint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`QuestID`, `BlobIndex`, `Idx1`) USING BTREE,
  INDEX `idx`(`QuestID` ASC, `BlobIndex` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_poi
-- ----------------------------
INSERT INTO `quest_poi` VALUES (1, 0, 0, -1, 0, 0, 0, 23, 0, 0, 1, 0, 0, 0, 0, 23877);

-- ----------------------------
-- Table structure for quest_poi_points
-- ----------------------------
DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE `quest_poi_points`  (
  `QuestID` int NOT NULL DEFAULT 0,
  `Idx1` int NOT NULL DEFAULT 0,
  `Idx2` int NOT NULL DEFAULT 0,
  `X` int NOT NULL DEFAULT 0,
  `Y` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`QuestID`, `Idx1`, `Idx2`) USING BTREE,
  INDEX `questId_id`(`QuestID` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_poi_points
-- ----------------------------
INSERT INTO `quest_poi_points` VALUES (1, 0, 0, 2148, -5252, 22908);

-- ----------------------------
-- Table structure for quest_request_items
-- ----------------------------
DROP TABLE IF EXISTS `quest_request_items`;
CREATE TABLE `quest_request_items`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteOnComplete` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteOnIncomplete` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteOnCompleteDelay` int UNSIGNED NOT NULL DEFAULT 0,
  `EmoteOnIncompleteDelay` int UNSIGNED NOT NULL DEFAULT 0,
  `CompletionText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_request_items
-- ----------------------------
INSERT INTO `quest_request_items` VALUES (2, 1, 0, 0, 0, 'Yes, mighty $C, I sensed your arrival. I trust you have more news to report to me about your hunt?', 0);

-- ----------------------------
-- Table structure for quest_request_items_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_request_items_locale`;
CREATE TABLE `quest_request_items_locale`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CompletionText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `Locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_request_items_locale
-- ----------------------------
INSERT INTO `quest_request_items_locale` VALUES (2, 'enUS', 'What have you there, $C? Could it be....?', 0);

-- ----------------------------
-- Table structure for quest_start_scripts
-- ----------------------------
DROP TABLE IF EXISTS `quest_start_scripts`;
CREATE TABLE `quest_start_scripts`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_start_scripts
-- ----------------------------
INSERT INTO `quest_start_scripts` VALUES (9686, 0, 9, 23106, 60, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for quest_template
-- ----------------------------
DROP TABLE IF EXISTS `quest_template`;
CREATE TABLE `quest_template`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `QuestType` tinyint UNSIGNED NOT NULL DEFAULT 2,
  `QuestLevel` int NOT NULL DEFAULT -1,
  `QuestMaxScalingLevel` int NOT NULL DEFAULT -1,
  `QuestPackageID` int UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` int NOT NULL DEFAULT 0,
  `QuestSortID` smallint NOT NULL DEFAULT 0,
  `QuestInfoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SuggestedGroupNum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RewardNextQuest` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardXPDifficulty` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RewardXPMultiplier` float NOT NULL DEFAULT 1,
  `RewardMoney` int NOT NULL DEFAULT 0,
  `RewardMoneyDifficulty` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardMoneyMultiplier` float NOT NULL DEFAULT 1,
  `RewardBonusMoney` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardDisplaySpell1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardDisplaySpell2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardDisplaySpell3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardSpell` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardHonor` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardKillHonor` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardArtifactXP` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardArtifactXPMultiplier` float NOT NULL DEFAULT 0,
  `RewardArtifactCategoryID` int NOT NULL DEFAULT 0,
  `StartItem` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `FlagsEx` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardItem1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardAmount1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardItem2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardAmount2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardItem3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardAmount3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardItem4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardAmount4` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDrop1` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDropQuantity1` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDrop2` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDropQuantity2` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDrop3` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDropQuantity3` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDrop4` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemDropQuantity4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemID1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemID2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemID3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemID4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemID5` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity5` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID5` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemID6` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemQuantity6` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardChoiceItemDisplayID6` int UNSIGNED NOT NULL DEFAULT 0,
  `POIContinent` int UNSIGNED NOT NULL DEFAULT 0,
  `POIx` float NOT NULL DEFAULT 0,
  `POIy` float NOT NULL DEFAULT 0,
  `POIPriority` int NOT NULL DEFAULT 0,
  `RewardTitle` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardArenaPoints` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardSkillLineID` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardNumSkillUps` int UNSIGNED NOT NULL DEFAULT 0,
  `PortraitGiver` int UNSIGNED NOT NULL DEFAULT 0,
  `PortraitTurnIn` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardFactionID1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardFactionValue1` int NOT NULL DEFAULT 0,
  `RewardFactionOverride1` int NOT NULL DEFAULT 0,
  `FactionCapIn1` int NOT NULL DEFAULT 0,
  `RewardFactionID2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardFactionValue2` int NOT NULL DEFAULT 0,
  `RewardFactionOverride2` int NOT NULL DEFAULT 0,
  `FactionCapIn2` int NOT NULL DEFAULT 0,
  `RewardFactionID3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardFactionValue3` int NOT NULL DEFAULT 0,
  `RewardFactionOverride3` int NOT NULL DEFAULT 0,
  `FactionCapIn3` int NOT NULL DEFAULT 0,
  `RewardFactionID4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardFactionValue4` int NOT NULL DEFAULT 0,
  `RewardFactionOverride4` int NOT NULL DEFAULT 0,
  `FactionCapIn4` int NOT NULL DEFAULT 0,
  `RewardFactionID5` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardFactionValue5` int NOT NULL DEFAULT 0,
  `RewardFactionOverride5` int NOT NULL DEFAULT 0,
  `FactionCapIn5` int NOT NULL DEFAULT 0,
  `RewardFactionFlags` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyID1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyQty1` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyID2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyQty2` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyID3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyQty3` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyID4` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardCurrencyQty4` int UNSIGNED NOT NULL DEFAULT 0,
  `AcceptedSoundKitID` int UNSIGNED NOT NULL DEFAULT 0,
  `CompleteSoundKitID` int UNSIGNED NOT NULL DEFAULT 0,
  `AreaGroupID` int UNSIGNED NOT NULL DEFAULT 0,
  `TimeAllowed` int UNSIGNED NOT NULL DEFAULT 0,
  `AllowableRaces` bigint UNSIGNED NULL DEFAULT 0,
  `QuestRewardID` int NOT NULL DEFAULT 0,
  `Expansion` int NOT NULL DEFAULT 0,
  `LogTitle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LogDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `QuestDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AreaDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `QuestCompletionLog` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PortraitGiverText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PortraitGiverName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PortraitTurnInText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PortraitTurnInName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `StartScript` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `CompleteScript` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `RewardSpell`(`RewardSpell` ASC) USING BTREE,
  INDEX `RewardHonor`(`RewardHonor` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Quest System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_template
-- ----------------------------
INSERT INTO `quest_template` VALUES (1, 2, 80, -1, 13608, 1, 151, 0, 0, 0, 7, 1, 296000, 8, 1, 450, 48778, 0, 0, 52382, 0, 0, 0, 0, 0, 0, 0, 0, 34661, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 529, 4, 10000, 0, 87, -5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 890, 878, 0, 0, 18446744073709551615, 0, 0, 'Kanrethad\'s Quest', 'Speak to Kanrethad to restore your talents, weapon and mount.', 'Welcome back from the world of death. $B$BIn an age long past you stood proud, a hero among your brethren. Now you stand fallen and broken - a relic of the past. Stand before me, as I awaken the legend that you once were. $B$B I shall restore the weapons and powers you have lost, making you whole once again. ', '', 'Return to Kanrethad.', '', '', '', '', 0, 0, 19865);

-- ----------------------------
-- Table structure for quest_template_addon
-- ----------------------------
DROP TABLE IF EXISTS `quest_template_addon`;
CREATE TABLE `quest_template_addon`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllowableClasses` int UNSIGNED NOT NULL DEFAULT 0,
  `SourceSpellID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID` mediumint NOT NULL DEFAULT 0,
  `NextQuestID` mediumint NOT NULL DEFAULT 0,
  `ExclusiveGroup` mediumint NOT NULL DEFAULT 0,
  `RewardMailTemplateID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `RewardMailDelay` int UNSIGNED NOT NULL DEFAULT 0,
  `RewardMailTitle` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `RequiredSkillID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillPoints` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredMinRepFaction` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredMaxRepFaction` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredMinRepValue` mediumint NOT NULL DEFAULT 0,
  `RequiredMaxRepValue` mediumint NOT NULL DEFAULT 0,
  `ProvidedItemCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpecialFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_template_addon
-- ----------------------------
INSERT INTO `quest_template_addon` VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for quest_template_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_template_locale`;
CREATE TABLE `quest_template_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LogTitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `LogDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `QuestDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `AreaDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PortraitGiverText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PortraitGiverName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PortraitTurnInText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `PortraitTurnInName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `QuestCompletionLog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `VerifiedBuild` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quest_template_locale
-- ----------------------------
INSERT INTO `quest_template_locale` VALUES (1, 'deDE', 'Kanrethads Quest', 'Sprecht mit Kanrethad, um Eure Talente, Waffen und Euer Reittier wiederherzustellen.', 'Willkommen zurück vom Reich der Toten.$B$BEin ganzes Zeitalter ist es her, seit Ihr ein stolzer Held unter Euresgleichen wart. Doch nun seid Ihr $gein geschlagener Mann:eine geschlagene Frau; -gebrochen, ein Relikt vergangener Tage. Höret nun und ich werde der Legende, die Ihr einst wart, neues Leben einhauchen.$B$BIch werde Waffen und Kräfte, die Ihr verloren habt, wiederherstellen und Euch wieder ins Leben rufen.', '', '', '', '', '', '', 0);

-- ----------------------------
-- Table structure for quest_visual_effect
-- ----------------------------
DROP TABLE IF EXISTS `quest_visual_effect`;
CREATE TABLE `quest_visual_effect`  (
  `ID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Index` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VisualEffect` mediumint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `Index`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_visual_effect
-- ----------------------------
INSERT INTO `quest_visual_effect` VALUES (251625, 0, 932, 23877);

-- ----------------------------
-- Table structure for race_unlock_requirement
-- ----------------------------
DROP TABLE IF EXISTS `race_unlock_requirement`;
CREATE TABLE `race_unlock_requirement`  (
  `raceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `expansion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `achievementId` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`raceID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of race_unlock_requirement
-- ----------------------------
INSERT INTO `race_unlock_requirement` VALUES (1, 0, 0);

-- ----------------------------
-- Table structure for reference_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `reference_loot_template`;
CREATE TABLE `reference_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reference_loot_template
-- ----------------------------
INSERT INTO `reference_loot_template` VALUES (790, 790, 0, 0, 0, 0, 1, 1, 1, 1, NULL);

-- ----------------------------
-- Table structure for reputation_reward_rate
-- ----------------------------
DROP TABLE IF EXISTS `reputation_reward_rate`;
CREATE TABLE `reputation_reward_rate`  (
  `faction` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest_rate` float NOT NULL DEFAULT 1,
  `creature_rate` float NOT NULL DEFAULT 1,
  `spell_rate` float NOT NULL DEFAULT 1,
  PRIMARY KEY (`faction`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reputation_reward_rate
-- ----------------------------
INSERT INTO `reputation_reward_rate` VALUES (529, 1, 1, 2);

-- ----------------------------
-- Table structure for reputation_spillover_template
-- ----------------------------
DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE `reputation_spillover_template`  (
  `faction` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction entry',
  `faction1` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL DEFAULT 0 COMMENT 'the given rep points * rate',
  `rank_1` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'max rank,above this will not give any spillover',
  `faction2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `rate_2` float NOT NULL DEFAULT 0,
  `rank_2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `faction3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `rate_3` float NOT NULL DEFAULT 0,
  `rank_3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `faction4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `rate_4` float NOT NULL DEFAULT 0,
  `rank_4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `faction5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `rate_5` float NOT NULL DEFAULT 0,
  `rank_5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`faction`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Reputation spillover reputation gain' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reputation_spillover_template
-- ----------------------------
INSERT INTO `reputation_spillover_template` VALUES (21, 369, 0.5, 7, 470, 0.5, 7, 577, 0.5, 7, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for scenario_data
-- ----------------------------
DROP TABLE IF EXISTS `scenario_data`;
CREATE TABLE `scenario_data`  (
  `ScenarioID` int UNSIGNED NOT NULL DEFAULT 0,
  `MapID` int UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` int NOT NULL DEFAULT 0,
  `Team` int NOT NULL DEFAULT 0,
  `Class` int NOT NULL DEFAULT 0,
  `LfgDungeonID` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`ScenarioID`, `MapID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_data
-- ----------------------------
INSERT INTO `scenario_data` VALUES (0, 1494, 0, 0, 12, 0);

-- ----------------------------
-- Table structure for scenario_poi
-- ----------------------------
DROP TABLE IF EXISTS `scenario_poi`;
CREATE TABLE `scenario_poi`  (
  `criteriaTreeId` int UNSIGNED NOT NULL DEFAULT 0,
  `BlobID` int UNSIGNED NOT NULL DEFAULT 0,
  `MapID` int UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` int UNSIGNED NOT NULL DEFAULT 0,
  `Floor` int UNSIGNED NOT NULL DEFAULT 0,
  `Priority` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `WorldEffectID` int UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`criteriaTreeId`, `BlobID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_poi
-- ----------------------------
INSERT INTO `scenario_poi` VALUES (20977, 0, 1024, 880, 0, 0, 0, 505, 0);

-- ----------------------------
-- Table structure for scenario_poi_points
-- ----------------------------
DROP TABLE IF EXISTS `scenario_poi_points`;
CREATE TABLE `scenario_poi_points`  (
  `criteriaTreeId` int UNSIGNED NOT NULL DEFAULT 0,
  `id` int UNSIGNED NOT NULL DEFAULT 0,
  `idx` int UNSIGNED NOT NULL DEFAULT 0,
  `x` int NOT NULL DEFAULT 0,
  `y` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`criteriaTreeId`, `id`, `idx`) USING BTREE,
  INDEX `criteriaTreeId_id`(`criteriaTreeId` ASC, `id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_poi_points
-- ----------------------------
INSERT INTO `scenario_poi_points` VALUES (20977, 0, 0, 2050, -1988);

-- ----------------------------
-- Table structure for scenario_step_spells
-- ----------------------------
DROP TABLE IF EXISTS `scenario_step_spells`;
CREATE TABLE `scenario_step_spells`  (
  `scenarioId` int UNSIGNED NOT NULL DEFAULT 0,
  `step` int UNSIGNED NOT NULL DEFAULT 0,
  `spell` int UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_step_spells
-- ----------------------------
INSERT INTO `scenario_step_spells` VALUES (1123, 2, 214645);

-- ----------------------------
-- Table structure for script_texts
-- ----------------------------
DROP TABLE IF EXISTS `script_texts`;
CREATE TABLE `script_texts`  (
  `npc_entry` mediumint NOT NULL DEFAULT 0 COMMENT 'creature_template entry',
  `entry` mediumint NOT NULL,
  `content_default` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_loc1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc9` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `sound` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `language` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `emote` smallint UNSIGNED NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`npc_entry`, `entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Script Texts' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of script_texts
-- ----------------------------
INSERT INTO `script_texts` VALUES (0, -1999954, 'Excellent work! You are win Argent champion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'win');

-- ----------------------------
-- Table structure for script_waypoint
-- ----------------------------
DROP TABLE IF EXISTS `script_waypoint`;
CREATE TABLE `script_waypoint`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'creature_template entry',
  `pointid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `location_x` float NOT NULL DEFAULT 0,
  `location_y` float NOT NULL DEFAULT 0,
  `location_z` float NOT NULL DEFAULT 0,
  `waittime` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'waittime in millisecs',
  `point_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`, `pointid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Script Creature waypoints' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of script_waypoint
-- ----------------------------
INSERT INTO `script_waypoint` VALUES (467, 0, -10508.4, 1068, 55.21, 0, '');

-- ----------------------------
-- Table structure for skill_discovery_template
-- ----------------------------
DROP TABLE IF EXISTS `skill_discovery_template`;
CREATE TABLE `skill_discovery_template`  (
  `spellId` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SpellId of the discoverable spell',
  `reqSpell` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'spell requirement',
  `reqSkillValue` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'skill points requirement',
  `chance` float NOT NULL DEFAULT 0 COMMENT 'chance to discover',
  PRIMARY KEY (`spellId`, `reqSpell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Skill Discovery System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_discovery_template
-- ----------------------------
INSERT INTO `skill_discovery_template` VALUES (28580, 0, 0, 0.1);

-- ----------------------------
-- Table structure for skill_extra_item_template
-- ----------------------------
DROP TABLE IF EXISTS `skill_extra_item_template`;
CREATE TABLE `skill_extra_item_template`  (
  `spellId` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SpellId of the item creation spell',
  `requiredSpecialization` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Specialization spell id',
  `additionalCreateChance` float NOT NULL DEFAULT 0 COMMENT 'chance to create add',
  `additionalMaxNum` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'max num of adds',
  PRIMARY KEY (`spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Skill Specialization System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_extra_item_template
-- ----------------------------
INSERT INTO `skill_extra_item_template` VALUES (2329, 28677, 14, 4);

-- ----------------------------
-- Table structure for skill_fishing_base_level
-- ----------------------------
DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE `skill_fishing_base_level`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Area identifier',
  `skill` smallint NOT NULL DEFAULT 0 COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Fishing system' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_fishing_base_level
-- ----------------------------
INSERT INTO `skill_fishing_base_level` VALUES (1, 1);

-- ----------------------------
-- Table structure for skill_tiers
-- ----------------------------
DROP TABLE IF EXISTS `skill_tiers`;
CREATE TABLE `skill_tiers`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `Value1` int UNSIGNED NOT NULL DEFAULT 0,
  `Value2` int UNSIGNED NOT NULL DEFAULT 0,
  `Value3` int UNSIGNED NOT NULL DEFAULT 0,
  `Value4` int UNSIGNED NOT NULL DEFAULT 0,
  `Value5` int UNSIGNED NOT NULL DEFAULT 0,
  `Value6` int UNSIGNED NOT NULL DEFAULT 0,
  `Value7` int UNSIGNED NOT NULL DEFAULT 0,
  `Value8` int UNSIGNED NOT NULL DEFAULT 0,
  `Value9` int UNSIGNED NOT NULL DEFAULT 0,
  `Value10` int UNSIGNED NOT NULL DEFAULT 0,
  `Value11` int UNSIGNED NOT NULL DEFAULT 0,
  `Value12` int UNSIGNED NOT NULL DEFAULT 0,
  `Value13` int UNSIGNED NOT NULL DEFAULT 0,
  `Value14` int UNSIGNED NOT NULL DEFAULT 0,
  `Value15` int UNSIGNED NOT NULL DEFAULT 0,
  `Value16` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_tiers
-- ----------------------------
INSERT INTO `skill_tiers` VALUES (2, 75, 150, 225, 300, 375, 450, 525, 600, 700, 800, 900, 1000, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for skinning_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `skinning_loot_template`;
CREATE TABLE `skinning_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skinning_loot_template
-- ----------------------------
INSERT INTO `skinning_loot_template` VALUES (92, 3858, 0, 0, 6.4938, 0, 1, 0, 1, 2, NULL);

-- ----------------------------
-- Table structure for smart_scripts
-- ----------------------------
DROP TABLE IF EXISTS `smart_scripts`;
CREATE TABLE `smart_scripts`  (
  `entryorguid` bigint NOT NULL DEFAULT 0,
  `source_type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint UNSIGNED NOT NULL DEFAULT 0,
  `link` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulties` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `event_type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `event_phase_mask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `event_chance` tinyint UNSIGNED NOT NULL DEFAULT 100,
  `event_flags` int UNSIGNED NOT NULL DEFAULT 0,
  `event_param1` int UNSIGNED NOT NULL DEFAULT 0,
  `event_param2` int UNSIGNED NOT NULL DEFAULT 0,
  `event_param3` int UNSIGNED NOT NULL DEFAULT 0,
  `event_param4` int UNSIGNED NOT NULL DEFAULT 0,
  `event_param5` int UNSIGNED NOT NULL DEFAULT 0,
  `action_type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `action_param1` int NOT NULL DEFAULT 0,
  `action_param2` int NOT NULL DEFAULT 0,
  `action_param3` int NOT NULL DEFAULT 0,
  `action_param4` int NOT NULL DEFAULT 0,
  `action_param5` int NOT NULL DEFAULT 0,
  `action_param6` int NOT NULL DEFAULT 0,
  `target_type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `target_param1` int UNSIGNED NOT NULL DEFAULT 0,
  `target_param2` int UNSIGNED NOT NULL DEFAULT 0,
  `target_param3` int UNSIGNED NOT NULL DEFAULT 0,
  `target_param4` int UNSIGNED NOT NULL DEFAULT 0,
  `target_x` float NOT NULL DEFAULT 0,
  `target_y` float NOT NULL DEFAULT 0,
  `target_z` float NOT NULL DEFAULT 0,
  `target_o` float NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`, `source_type`, `id`, `link`) USING BTREE,
  INDEX `target_type`(`target_type` ASC) USING BTREE,
  INDEX `target_param1`(`target_param1` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smart_scripts
-- ----------------------------
INSERT INTO `smart_scripts` VALUES (-146769131, 0, 0, 0, '', 20, 0, 100, 0, 24467, 0, 0, 0, 0, 41, 120000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for spell_area
-- ----------------------------
DROP TABLE IF EXISTS `spell_area`;
CREATE TABLE `spell_area`  (
  `spell` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `area` mediumint NOT NULL DEFAULT 0,
  `quest_start` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `quest_end` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `aura_spell` mediumint NOT NULL DEFAULT 0,
  `racemask` int UNSIGNED NOT NULL DEFAULT 0,
  `classmask` int NOT NULL DEFAULT 0,
  `active_event` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint UNSIGNED NOT NULL DEFAULT 2,
  `autocast` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `quest_start_status` int NOT NULL DEFAULT 64,
  `quest_end_status` int NOT NULL DEFAULT 11,
  PRIMARY KEY (`spell`, `area`, `quest_start`, `aura_spell`, `racemask`, `classmask`, `gender`, `active_event`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_area
-- ----------------------------
INSERT INTO `spell_area` VALUES (27769, 4071, 0, 0, 0, 0, 0, 0, 2, 1, 64, 11);

-- ----------------------------
-- Table structure for spell_aura_dummy
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_dummy`;
CREATE TABLE `spell_aura_dummy`  (
  `spellId` int NOT NULL,
  `spellDummyId` int NOT NULL,
  `type` tinyint NOT NULL DEFAULT 0,
  `option` int NOT NULL DEFAULT 0,
  `target` int NOT NULL DEFAULT 0,
  `caster` int NOT NULL DEFAULT 0,
  `targetaura` int NOT NULL DEFAULT 0,
  `aura` int NOT NULL DEFAULT 0,
  `removeAura` int NOT NULL DEFAULT 0,
  `effectDummy` int NOT NULL DEFAULT 0,
  `effectmask` int NOT NULL DEFAULT 7,
  `attr` int NOT NULL DEFAULT 0,
  `attrValue` int NOT NULL DEFAULT 0,
  `custombp` float NOT NULL DEFAULT 0,
  `hastype` tinyint NOT NULL DEFAULT 0,
  `hastalent` int NOT NULL DEFAULT 0,
  `hasparam` int NOT NULL DEFAULT 0,
  `hastype2` tinyint NOT NULL DEFAULT 0,
  `hastalent2` int NOT NULL DEFAULT 0,
  `hasparam2` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spellId`, `spellDummyId`, `effectDummy`, `effectmask`, `option`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_aura_dummy
-- ----------------------------
INSERT INTO `spell_aura_dummy` VALUES (133, -203278, 3, 13, 0, 0, 0, 203277, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Трут (Талант чести)');

-- ----------------------------
-- Table structure for spell_aura_trigger
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_trigger`;
CREATE TABLE `spell_aura_trigger`  (
  `spell_id` mediumint NOT NULL,
  `spell_trigger` mediumint NOT NULL,
  `option` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `option2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `target` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `caster` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `bp0` float NOT NULL DEFAULT 0,
  `bp1` float NOT NULL DEFAULT 0,
  `bp2` float NOT NULL DEFAULT 0,
  `effectmask` int NOT NULL DEFAULT 7,
  `hastype` tinyint NOT NULL DEFAULT 0,
  `hastalent` int NOT NULL DEFAULT 0,
  `hasparam` int NOT NULL DEFAULT 0,
  `hastype2` tinyint NOT NULL DEFAULT 0,
  `hastalent2` int NOT NULL DEFAULT 0,
  `hasparam2` int NOT NULL DEFAULT 0,
  `chance` mediumint NOT NULL DEFAULT 0,
  `slot` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spell_id`, `spell_trigger`, `option`, `hastalent`, `hastalent2`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_aura_trigger
-- ----------------------------
INSERT INTO `spell_aura_trigger` VALUES (603, 193318, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Рок');

-- ----------------------------
-- Table structure for spell_bonus_data
-- ----------------------------
DROP TABLE IF EXISTS `spell_bonus_data`;
CREATE TABLE `spell_bonus_data`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `direct_bonus` float NOT NULL DEFAULT 0,
  `dot_bonus` float NOT NULL DEFAULT 0,
  `ap_bonus` float NOT NULL DEFAULT 0,
  `ap_dot_bonus` float NOT NULL DEFAULT 0,
  `damage_bonus` float NOT NULL DEFAULT 0,
  `heal_bonus` float NOT NULL DEFAULT 0,
  `comments` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_bonus_data
-- ----------------------------
INSERT INTO `spell_bonus_data` VALUES (17, 5.5, 0, 0, 0, 0, 0, 'Слово Силы: Щит');

-- ----------------------------
-- Table structure for spell_check_cast
-- ----------------------------
DROP TABLE IF EXISTS `spell_check_cast`;
CREATE TABLE `spell_check_cast`  (
  `spellId` int NOT NULL DEFAULT 0,
  `type` int NOT NULL DEFAULT 0,
  `param1` int NOT NULL DEFAULT 0,
  `param2` int NOT NULL DEFAULT 0,
  `param3` int NOT NULL DEFAULT 0,
  `errorId` int NOT NULL DEFAULT 13,
  `customErrorId` int NOT NULL DEFAULT 0,
  `caster` int NOT NULL DEFAULT 0,
  `target` int NOT NULL DEFAULT 0,
  `checkType` int NOT NULL DEFAULT 0,
  `dataType` int NOT NULL DEFAULT 0,
  `checkType2` int NOT NULL DEFAULT 0,
  `dataType2` int NOT NULL DEFAULT 0,
  `comment` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spellId`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_check_cast
-- ----------------------------
INSERT INTO `spell_check_cast` VALUES (755, 1, -100, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 'Канал здоровья - проверка фулл ХП');

-- ----------------------------
-- Table structure for spell_concatenate_aura
-- ----------------------------
DROP TABLE IF EXISTS `spell_concatenate_aura`;
CREATE TABLE `spell_concatenate_aura`  (
  `spellid` int NOT NULL DEFAULT 0,
  `effectSpell` tinyint NOT NULL DEFAULT 0,
  `auraId` int NOT NULL DEFAULT 0,
  `effectAura` tinyint NOT NULL DEFAULT 0,
  `option` int NOT NULL DEFAULT 1,
  `caster` tinyint NOT NULL DEFAULT 0,
  `target` tinyint NOT NULL DEFAULT 0,
  `comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`spellid`, `effectSpell`, `auraId`, `effectAura`, `option`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_concatenate_aura
-- ----------------------------
INSERT INTO `spell_concatenate_aura` VALUES (-238069, 0, 60188, 0, 4, 0, 0, 'Нестабильность стихий');

-- ----------------------------
-- Table structure for spell_dummy_trigger
-- ----------------------------
DROP TABLE IF EXISTS `spell_dummy_trigger`;
CREATE TABLE `spell_dummy_trigger`  (
  `spell_id` mediumint NOT NULL,
  `spell_trigger` mediumint NOT NULL,
  `option` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `target` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `caster` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `targetaura` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `bp0` float NOT NULL DEFAULT 0,
  `bp1` float NOT NULL DEFAULT 0,
  `bp2` float NOT NULL DEFAULT 0,
  `effectmask` tinyint NOT NULL DEFAULT 7,
  `handlemask` int NOT NULL DEFAULT 8,
  `aura` mediumint NOT NULL DEFAULT 0,
  `group` tinyint NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spell_id`, `spell_trigger`, `option`, `aura`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_dummy_trigger
-- ----------------------------
INSERT INTO `spell_dummy_trigger` VALUES (1535, 8349, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 'Кольцо огня');

-- ----------------------------
-- Table structure for spell_enchant_proc_data
-- ----------------------------
DROP TABLE IF EXISTS `spell_enchant_proc_data`;
CREATE TABLE `spell_enchant_proc_data`  (
  `entry` int UNSIGNED NOT NULL,
  `customChance` int UNSIGNED NOT NULL DEFAULT 0,
  `PPMChance` float UNSIGNED NOT NULL DEFAULT 0,
  `procEx` int UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Spell enchant proc data' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of spell_enchant_proc_data
-- ----------------------------
INSERT INTO `spell_enchant_proc_data` VALUES (3869, 0, 1, 0);

-- ----------------------------
-- Table structure for spell_forbidden
-- ----------------------------
DROP TABLE IF EXISTS `spell_forbidden`;
CREATE TABLE `spell_forbidden`  (
  `spell_id` int UNSIGNED NOT NULL,
  `comment` blob NULL,
  PRIMARY KEY (`spell_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_forbidden
-- ----------------------------
INSERT INTO `spell_forbidden` VALUES (5, 0x546F7563686572206D6F7274656C);

-- ----------------------------
-- Table structure for spell_group
-- ----------------------------
DROP TABLE IF EXISTS `spell_group`;
CREATE TABLE `spell_group`  (
  `id` int UNSIGNED NOT NULL DEFAULT 0,
  `spell_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `spell_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Spell System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_group
-- ----------------------------
INSERT INTO `spell_group` VALUES (1, 2367);

-- ----------------------------
-- Table structure for spell_group_stack_rules
-- ----------------------------
DROP TABLE IF EXISTS `spell_group_stack_rules`;
CREATE TABLE `spell_group_stack_rules`  (
  `group_id` int UNSIGNED NOT NULL DEFAULT 0,
  `stack_rule` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_group_stack_rules
-- ----------------------------
INSERT INTO `spell_group_stack_rules` VALUES (1, 1);

-- ----------------------------
-- Table structure for spell_learn_spell
-- ----------------------------
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE `spell_learn_spell`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `ReqSpell` int NOT NULL DEFAULT 0,
  `Active` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`entry`, `SpellID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Item System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_learn_spell
-- ----------------------------
INSERT INTO `spell_learn_spell` VALUES (2259, 53042, 0, 1);

-- ----------------------------
-- Table structure for spell_linked_spell
-- ----------------------------
DROP TABLE IF EXISTS `spell_linked_spell`;
CREATE TABLE `spell_linked_spell`  (
  `spell_trigger` mediumint NOT NULL,
  `spell_effect` mediumint NOT NULL DEFAULT 0,
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `caster` tinyint NOT NULL DEFAULT 0,
  `target` tinyint NOT NULL DEFAULT 0,
  `hastype` tinyint NOT NULL DEFAULT 0,
  `hastalent` mediumint NOT NULL DEFAULT 0,
  `hasparam` int NOT NULL DEFAULT 0,
  `hastype2` tinyint NOT NULL DEFAULT 0,
  `hastalent2` mediumint NOT NULL DEFAULT 0,
  `hasparam2` int NOT NULL DEFAULT 0,
  `chance` mediumint NOT NULL DEFAULT 0,
  `cooldown` int NOT NULL DEFAULT 0,
  `duration` int NOT NULL DEFAULT 0,
  `hitmask` mediumint NOT NULL DEFAULT 0,
  `removeMask` mediumint NOT NULL DEFAULT 0,
  `effectMask` int NOT NULL DEFAULT 0,
  `targetCountType` tinyint NOT NULL DEFAULT 0,
  `targetCount` tinyint NOT NULL DEFAULT -1,
  `actiontype` tinyint NOT NULL DEFAULT 0,
  `group` tinyint NOT NULL DEFAULT 0,
  `param` float NOT NULL DEFAULT 0,
  `randList` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  UNIQUE INDEX `trigger_effect_type`(`spell_trigger` ASC, `spell_effect` ASC, `type` ASC, `hastalent` ASC, `actiontype` ASC, `effectMask` ASC, `caster` ASC, `target` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Spell System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_linked_spell
-- ----------------------------
INSERT INTO `spell_linked_spell` VALUES (-258633, 249938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', '');

-- ----------------------------
-- Table structure for spell_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `spell_loot_template`;
CREATE TABLE `spell_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_loot_template
-- ----------------------------
INSERT INTO `spell_loot_template` VALUES (0, 5478, 0, 0, 100, 0, 1, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for spell_pending_cast
-- ----------------------------
DROP TABLE IF EXISTS `spell_pending_cast`;
CREATE TABLE `spell_pending_cast`  (
  `spell_id` int NOT NULL,
  `pending_id` int NOT NULL,
  `option` tinyint NOT NULL DEFAULT 0,
  `check` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_pending_cast
-- ----------------------------
INSERT INTO `spell_pending_cast` VALUES (147343, 147687, 0, 65, 'Бремя вечности - латник');

-- ----------------------------
-- Table structure for spell_pet_auras
-- ----------------------------
DROP TABLE IF EXISTS `spell_pet_auras`;
CREATE TABLE `spell_pet_auras`  (
  `petEntry` mediumint NOT NULL,
  `spellId` mediumint NOT NULL,
  `option` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `target` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `targetaura` tinyint NOT NULL DEFAULT 0,
  `bp0` float NOT NULL DEFAULT 0,
  `bp1` float NOT NULL DEFAULT 0,
  `bp2` float NOT NULL DEFAULT 0,
  `aura` mediumint NOT NULL DEFAULT 0,
  `casteraura` mediumint NOT NULL DEFAULT 0,
  `createdspell` int NOT NULL DEFAULT 0,
  `fromspell` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`petEntry`, `spellId`, `option`, `aura`, `bp0`, `createdspell`, `target`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_pet_auras
-- ----------------------------
INSERT INTO `spell_pet_auras` VALUES (-1, 53397, 0, 0, 1, 0, 0, 0, 53253, 0, 0, 0, 'Окрыление');

-- ----------------------------
-- Table structure for spell_phase
-- ----------------------------
DROP TABLE IF EXISTS `spell_phase`;
CREATE TABLE `spell_phase`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `phasemask` bigint UNSIGNED NOT NULL DEFAULT 1,
  `terrainswapmap` smallint UNSIGNED NOT NULL DEFAULT 0,
  `phaseId` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_phase
-- ----------------------------
INSERT INTO `spell_phase` VALUES (44856, 2, 0, 0);

-- ----------------------------
-- Table structure for spell_proc
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc`;
CREATE TABLE `spell_proc`  (
  `spellId` mediumint NOT NULL DEFAULT 0,
  `schoolMask` tinyint NOT NULL DEFAULT 0,
  `spellFamilyName` smallint UNSIGNED NOT NULL DEFAULT 0,
  `spellFamilyMask0` int UNSIGNED NOT NULL DEFAULT 0,
  `spellFamilyMask1` int UNSIGNED NOT NULL DEFAULT 0,
  `spellFamilyMask2` int UNSIGNED NOT NULL DEFAULT 0,
  `spellFamilyMask3` int UNSIGNED NOT NULL DEFAULT 0,
  `typeMask` int UNSIGNED NOT NULL DEFAULT 0,
  `spellTypeMask` int UNSIGNED NOT NULL DEFAULT 0,
  `spellPhaseMask` int NOT NULL DEFAULT 0,
  `hitMask` int NOT NULL DEFAULT 0,
  `attributesMask` int UNSIGNED NOT NULL DEFAULT 0,
  `ratePerMinute` float NOT NULL DEFAULT 0,
  `chance` float NOT NULL DEFAULT 0,
  `cooldown` float UNSIGNED NOT NULL DEFAULT 0,
  `charges` int UNSIGNED NOT NULL DEFAULT 0,
  `modcharges` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_proc
-- ----------------------------
INSERT INTO `spell_proc` VALUES (164545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);

-- ----------------------------
-- Table structure for spell_proc_check
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc_check`;
CREATE TABLE `spell_proc_check`  (
  `entry` mediumint NOT NULL,
  `entry2` mediumint NOT NULL DEFAULT 0,
  `entry3` mediumint NOT NULL DEFAULT 0,
  `checkspell` mediumint NOT NULL DEFAULT 0,
  `hastalent` mediumint NOT NULL DEFAULT 0,
  `chance` mediumint NOT NULL DEFAULT 0,
  `target` mediumint NOT NULL DEFAULT 0,
  `effectmask` tinyint NOT NULL DEFAULT 7,
  `powertype` tinyint NOT NULL DEFAULT -1,
  `dmgclass` tinyint NOT NULL DEFAULT -1,
  `specId` mediumint NOT NULL DEFAULT 0,
  `spellAttr0` int NOT NULL DEFAULT 0,
  `targetTypeMask` mediumint NOT NULL DEFAULT 0,
  `mechanicMask` int UNSIGNED NOT NULL DEFAULT 0,
  `fromlevel` mediumint NOT NULL DEFAULT 0,
  `perchp` mediumint NOT NULL DEFAULT 0,
  `spelltypeMask` int NOT NULL DEFAULT 0,
  `combopoints` int NOT NULL DEFAULT 0,
  `deathstateMask` int NOT NULL DEFAULT 0,
  `hasDuration` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`entry`, `entry2`, `entry3`, `checkspell`, `hastalent`, `powertype`, `dmgclass`, `specId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_proc_check
-- ----------------------------
INSERT INTO `spell_proc_check` VALUES (71, 0, 0, -202166, 0, 0, 0, 15, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Оборонительная стойка');

-- ----------------------------
-- Table structure for spell_proc_event
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc_event`;
CREATE TABLE `spell_proc_event`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `SchoolMask` tinyint NOT NULL DEFAULT 0,
  `SpellFamilyName` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask0` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask1` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask2` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellFamilyMask3` int UNSIGNED NOT NULL DEFAULT 0,
  `procFlags` bigint UNSIGNED NOT NULL DEFAULT 0,
  `procEx` int UNSIGNED NOT NULL DEFAULT 0,
  `ppmRate` float NOT NULL DEFAULT 0,
  `CustomChance` float NOT NULL DEFAULT 0,
  `Cooldown` float UNSIGNED NOT NULL DEFAULT 0,
  `effectmask` int UNSIGNED NOT NULL DEFAULT 7,
  PRIMARY KEY (`entry`, `effectmask`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_proc_event
-- ----------------------------
INSERT INTO `spell_proc_event` VALUES (1680, 1, 4, 4194304, 4, 0, 0, 4, 0, 0, 100, 0, 7);

-- ----------------------------
-- Table structure for spell_radius
-- ----------------------------
DROP TABLE IF EXISTS `spell_radius`;
CREATE TABLE `spell_radius`  (
  `spell_id` int NOT NULL DEFAULT 0,
  `effectradius0` int UNSIGNED NOT NULL DEFAULT 0,
  `effectradius1` int UNSIGNED NOT NULL DEFAULT 0,
  `effectradius2` int UNSIGNED NOT NULL DEFAULT 0,
  `effectradius3` int UNSIGNED NOT NULL DEFAULT 0,
  `effectradius4` int UNSIGNED NOT NULL DEFAULT 0,
  `comments` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_radius
-- ----------------------------
INSERT INTO `spell_radius` VALUES (64711, 27, 0, 0, 0, 0, '50_YARDS');

-- ----------------------------
-- Table structure for spell_required
-- ----------------------------
DROP TABLE IF EXISTS `spell_required`;
CREATE TABLE `spell_required`  (
  `spell_id` mediumint NOT NULL DEFAULT 0,
  `req_spell` mediumint NOT NULL DEFAULT 0,
  PRIMARY KEY (`spell_id`, `req_spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Spell Additinal Data' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_required
-- ----------------------------
INSERT INTO `spell_required` VALUES (9788, 9785);

-- ----------------------------
-- Table structure for spell_scene
-- ----------------------------
DROP TABLE IF EXISTS `spell_scene`;
CREATE TABLE `spell_scene`  (
  `SceneScriptPackageID` int NOT NULL DEFAULT 0,
  `MiscValue` int NOT NULL DEFAULT 0,
  `PlaybackFlags` int NOT NULL DEFAULT 0,
  `CustomDuration` int UNSIGNED NOT NULL DEFAULT 0,
  `ScriptName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `comment` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`SceneScriptPackageID`, `MiscValue`) USING BTREE,
  UNIQUE INDEX `MiscValue_2`(`MiscValue` ASC) USING BTREE,
  INDEX `ScenePackageId`(`SceneScriptPackageID` ASC) USING BTREE,
  INDEX `MiscValue`(`MiscValue` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_scene
-- ----------------------------
INSERT INTO `spell_scene` VALUES (23, 27, 1, 0, NULL, '');

-- ----------------------------
-- Table structure for spell_scene_event
-- ----------------------------
DROP TABLE IF EXISTS `spell_scene_event`;
CREATE TABLE `spell_scene_event`  (
  `MiscValue` int UNSIGNED NOT NULL DEFAULT 0,
  `Event` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `trigerSpell` int UNSIGNED NOT NULL DEFAULT 0,
  `MonsterCredit` int UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`MiscValue`, `Event`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_scene_event
-- ----------------------------
INSERT INTO `spell_scene_event` VALUES (604, '', 82238, 0, 'Draenor. FrostFireRidge. q34364 spell 169422');

-- ----------------------------
-- Table structure for spell_script_names
-- ----------------------------
DROP TABLE IF EXISTS `spell_script_names`;
CREATE TABLE `spell_script_names`  (
  `spell_id` int NOT NULL,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  UNIQUE INDEX `spell_id`(`spell_id` ASC, `ScriptName` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_script_names
-- ----------------------------
INSERT INTO `spell_script_names` VALUES (-219045, 'spell_mothers_embrace');

-- ----------------------------
-- Table structure for spell_scripts
-- ----------------------------
DROP TABLE IF EXISTS `spell_scripts`;
CREATE TABLE `spell_scripts`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `effIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_scripts
-- ----------------------------
INSERT INTO `spell_scripts` VALUES (35727, 0, 0, 15, 35730, 2, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for spell_talent_linked_spell
-- ----------------------------
DROP TABLE IF EXISTS `spell_talent_linked_spell`;
CREATE TABLE `spell_talent_linked_spell`  (
  `spellid` int NOT NULL DEFAULT 0,
  `spelllink` int NOT NULL DEFAULT 0,
  `type` tinyint NOT NULL DEFAULT 0,
  `target` tinyint NOT NULL DEFAULT 0,
  `caster` tinyint NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spellid`, `spelllink`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_talent_linked_spell
-- ----------------------------
INSERT INTO `spell_talent_linked_spell` VALUES (-253593, -253594, 0, 0, 0, 'Непрерывный натиск');

-- ----------------------------
-- Table structure for spell_target_filter
-- ----------------------------
DROP TABLE IF EXISTS `spell_target_filter`;
CREATE TABLE `spell_target_filter`  (
  `spellId` int NOT NULL,
  `index` tinyint NOT NULL DEFAULT 0,
  `targetId` int NOT NULL DEFAULT 0,
  `option` int NOT NULL DEFAULT 0,
  `param1` float NOT NULL DEFAULT 0,
  `param2` float NOT NULL DEFAULT 0,
  `param3` float NOT NULL DEFAULT 0,
  `aura` int NOT NULL DEFAULT 0,
  `chance` int NOT NULL DEFAULT 0,
  `effectMask` int NOT NULL DEFAULT 7,
  `resizeType` int NOT NULL DEFAULT 0,
  `count` int NOT NULL DEFAULT 0,
  `maxcount` int NOT NULL DEFAULT 0,
  `addcount` int NOT NULL DEFAULT 0,
  `addcaster` int NOT NULL DEFAULT 0,
  `comments` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_target_filter
-- ----------------------------
INSERT INTO `spell_target_filter` VALUES (596, 0, 31, 18, 0, 0, 0, 0, 0, 2, 1, 5, 0, 0, 0, 'Молитва исцеления');

-- ----------------------------
-- Table structure for spell_target_position
-- ----------------------------
DROP TABLE IF EXISTS `spell_target_position`;
CREATE TABLE `spell_target_position`  (
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `target_map` smallint UNSIGNED NOT NULL DEFAULT 0,
  `target_position_x` float NOT NULL DEFAULT 0,
  `target_position_y` float NOT NULL DEFAULT 0,
  `target_position_z` float NOT NULL DEFAULT 0,
  `target_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Spell System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_target_position
-- ----------------------------
INSERT INTO `spell_target_position` VALUES (31, 0, -9464, 62, 56, 0);

-- ----------------------------
-- Table structure for spell_threat
-- ----------------------------
DROP TABLE IF EXISTS `spell_threat`;
CREATE TABLE `spell_threat`  (
  `entry` mediumint UNSIGNED NOT NULL,
  `flatMod` int NULL DEFAULT NULL,
  `pctMod` float NOT NULL DEFAULT 1 COMMENT 'threat multiplier for damage/healing',
  `apPctMod` float NOT NULL DEFAULT 0 COMMENT 'additional threat bonus from attack power',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_threat
-- ----------------------------

-- ----------------------------
-- Table structure for spell_trigger
-- ----------------------------
DROP TABLE IF EXISTS `spell_trigger`;
CREATE TABLE `spell_trigger`  (
  `spell_id` mediumint NOT NULL,
  `spell_trigger` mediumint NOT NULL,
  `spell_cooldown` mediumint NOT NULL DEFAULT 0,
  `option` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `target` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `caster` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `targetaura` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `targetaura2` tinyint NOT NULL DEFAULT 0,
  `bp0` float NOT NULL DEFAULT 0,
  `bp1` float NOT NULL DEFAULT 0,
  `bp2` float NOT NULL DEFAULT 0,
  `effectmask` tinyint NOT NULL DEFAULT 7,
  `aura` int NOT NULL DEFAULT 0,
  `aura2` int NOT NULL DEFAULT 0,
  `chance` mediumint NOT NULL DEFAULT 0,
  `group` tinyint NOT NULL DEFAULT 0,
  `procFlags` bigint NOT NULL DEFAULT 0,
  `procEx` int NOT NULL DEFAULT 0,
  `check_spell_id` int NOT NULL DEFAULT 0,
  `addptype` int NOT NULL DEFAULT -1,
  `schoolMask` int NOT NULL DEFAULT 0,
  `dummyId` int NOT NULL DEFAULT 0,
  `dummyEffect` int NOT NULL DEFAULT 0,
  `CreatureType` int NOT NULL DEFAULT 0,
  `slot` int NOT NULL DEFAULT 0,
  `randList` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spell_id`, `spell_trigger`, `option`, `aura`, `effectmask`, `check_spell_id`, `CreatureType`, `bp0`, `addptype`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_trigger
-- ----------------------------
INSERT INTO `spell_trigger` VALUES (11426, 205708, 0, 20, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '', 'Ледяная преграда');

-- ----------------------------
-- Table structure for spell_trigger_delay
-- ----------------------------
DROP TABLE IF EXISTS `spell_trigger_delay`;
CREATE TABLE `spell_trigger_delay`  (
  `spell_id` int UNSIGNED NOT NULL DEFAULT 0,
  `spell_trigger` int UNSIGNED NOT NULL DEFAULT 0,
  `target` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `caster` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `option` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `effectmask` int UNSIGNED NOT NULL DEFAULT 7,
  `targetaura` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `aura` int UNSIGNED NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`spell_id`, `spell_trigger`, `target`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_trigger_delay
-- ----------------------------
INSERT INTO `spell_trigger_delay` VALUES (6544, 52174, 0, 0, 0, 7, 0, 0, 'Героический прыжок');

-- ----------------------------
-- Table structure for spell_visual
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual`;
CREATE TABLE `spell_visual`  (
  `spellId` int NOT NULL,
  `SpellVisualID` int NOT NULL,
  `TravelSpeed` float NOT NULL DEFAULT 0,
  `MissReason` int NOT NULL DEFAULT 0,
  `ReflectStatus` int NOT NULL DEFAULT 0,
  `SpeedAsTime` int NOT NULL DEFAULT 0,
  `type` int NOT NULL DEFAULT 0,
  `temp` int NOT NULL DEFAULT 0,
  `HasPosition` tinyint(1) NOT NULL DEFAULT 1,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`spellId`, `SpellVisualID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual
-- ----------------------------
INSERT INTO `spell_visual` VALUES (100, 45080, 20, 0, 0, 0, 0, 0, 1, 'Рывок');

-- ----------------------------
-- Table structure for spell_visual_kit
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit`;
CREATE TABLE `spell_visual_kit`  (
  `spellId` int UNSIGNED NOT NULL,
  `KitType` int NOT NULL DEFAULT 0,
  `KitRecID` int NOT NULL DEFAULT 0,
  `Duration` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_kit
-- ----------------------------
INSERT INTO `spell_visual_kit` VALUES (166339, 0, 32140, 0, 'Свист');

-- ----------------------------
-- Table structure for spell_visual_play_orphan
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_play_orphan`;
CREATE TABLE `spell_visual_play_orphan`  (
  `spellId` int NOT NULL,
  `SpellVisualID` int NOT NULL,
  `TravelSpeed` float NOT NULL DEFAULT 0,
  `SpeedAsTime` int NOT NULL DEFAULT 0,
  `UnkFloat` float NOT NULL DEFAULT 0,
  `type` int NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `temp` int NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`spellId`, `SpellVisualID`, `temp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_play_orphan
-- ----------------------------
INSERT INTO `spell_visual_play_orphan` VALUES (156634, 41231, 15, 1, 0, 0, 0, 0, 0, 0, 'Четыре ветра');

-- ----------------------------
-- Table structure for transports
-- ----------------------------
DROP TABLE IF EXISTS `transports`;
CREATE TABLE `transports`  (
  `guid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ScriptName` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`) USING BTREE,
  UNIQUE INDEX `idx_entry`(`entry` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Transports' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transports
-- ----------------------------
INSERT INTO `transports` VALUES (1, 176495, 'Undercity, Tirisfal Glades and Grom\'gol Base Camp, Stranglethorn Vale (\"The Purple Princess\")', '');

-- ----------------------------
-- Table structure for trinity_string
-- ----------------------------
DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE `trinity_string`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `content_default` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_loc1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc7` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc8` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc9` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `content_loc10` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trinity_string
-- ----------------------------
INSERT INTO `trinity_string` VALUES (1, 'You should select a character or a creature.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for updates_include
-- ----------------------------
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE `updates_include`  (
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'List of directories where we want to include sql updates.' ROW_FORMAT = Dynamic;

INSERT INTO `updates_include` VALUES ('$/sql/old/world', 'ARCHIVED');
INSERT INTO `updates_include` VALUES ('$/sql/updates/world', 'RELEASED');

-- ----------------------------
-- Table structure for vehicle_attachment_offset
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_attachment_offset`;
CREATE TABLE `vehicle_attachment_offset`  (
  `entry` int UNSIGNED NOT NULL DEFAULT 0,
  `seat_id` tinyint NOT NULL DEFAULT 0,
  `offsetX` float NOT NULL DEFAULT 0,
  `offsetY` float NOT NULL DEFAULT 0,
  `offsetZ` float NOT NULL DEFAULT 0,
  `offsetO` float NOT NULL DEFAULT 0,
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`, `seat_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_attachment_offset
-- ----------------------------
INSERT INTO `vehicle_attachment_offset` VALUES (4421, 0, 0, 0, 2.85, 4.71364, '4421 - 4421');

-- ----------------------------
-- Table structure for vehicle_template_accessory
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_template_accessory`;
CREATE TABLE `vehicle_template_accessory`  (
  `EntryOrAura` mediumint NOT NULL DEFAULT 0,
  `accessory_entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `seat_id` tinyint NOT NULL DEFAULT 0,
  `offsetX` float NOT NULL DEFAULT 0,
  `offsetY` float NOT NULL DEFAULT 0,
  `offsetZ` float NOT NULL DEFAULT 0,
  `offsetO` float NOT NULL DEFAULT 0,
  `minion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `summontype` tinyint UNSIGNED NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType',
  `summontimer` int UNSIGNED NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`EntryOrAura`, `seat_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_template_accessory
-- ----------------------------
INSERT INTO `vehicle_template_accessory` VALUES (-105520, 56236, 0, 0, 0, 0, 0, 1, 'q29794', 8, 30000);

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version`  (
  `core_version` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `db_version` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Version of world DB.',
  `cache_id` int NULL DEFAULT 6,
  `hotfix_cache_id` int NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Version Notes' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('dcf885ef06df+ 2025-04-13 15:21:18 -0400 (master branch) (Unix, Release)', '', 'LegionCore World Database 2024-10-23', 6, 0);

-- ----------------------------
-- Table structure for warden_checks
-- ----------------------------
DROP TABLE IF EXISTS `warden_checks`;
CREATE TABLE `warden_checks`  (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `os` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `data` varchar(48) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `str` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `address` int UNSIGNED NOT NULL DEFAULT 0,
  `length` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `result` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `banreason` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `action` tinyint NOT NULL DEFAULT 0,
  `comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warden_checks
-- ----------------------------
INSERT INTO `warden_checks` VALUES (1, 'Win', 3, 'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98', '', 16507, 32, 'E9', 'WPE PRO', 2, '');

-- ----------------------------
-- Table structure for warden_overrides
-- ----------------------------
DROP TABLE IF EXISTS `warden_overrides`;
CREATE TABLE `warden_overrides`  (
  `checkId` smallint UNSIGNED NOT NULL,
  `action` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `banTime` int NOT NULL DEFAULT -1,
  `enabled` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`checkId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warden_overrides
-- ----------------------------
INSERT INTO `warden_overrides` VALUES (50, 2, 0, 1);

-- ----------------------------
-- Table structure for waypoint_data
-- ----------------------------
DROP TABLE IF EXISTS `waypoint_data`;
CREATE TABLE `waypoint_data`  (
  `id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature GUID',
  `point` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `delay_chance` smallint UNSIGNED NOT NULL DEFAULT 0,
  `move_type` int NOT NULL DEFAULT 0,
  `speed` float UNSIGNED NOT NULL DEFAULT 0,
  `action` int NOT NULL DEFAULT 0,
  `action_chance` smallint NOT NULL DEFAULT 100,
  `entry` int NOT NULL DEFAULT 0,
  `wpguid` bigint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `point`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waypoint_data
-- ----------------------------
INSERT INTO `waypoint_data` VALUES (2224, 1, -4289.67, 6295.04, 13.1167, 0, 0, 10, 0, 0, 0, 100, 54490, 0);

-- ----------------------------
-- Table structure for waypoint_data_script
-- ----------------------------
DROP TABLE IF EXISTS `waypoint_data_script`;
CREATE TABLE `waypoint_data_script`  (
  `id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature GUID',
  `point` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `move_type` int NOT NULL DEFAULT 0,
  `speed` float UNSIGNED NOT NULL DEFAULT 0,
  `action` int NOT NULL DEFAULT 0,
  `action_chance` smallint NOT NULL DEFAULT 100,
  `entry` int NOT NULL DEFAULT 0,
  `wpguid` bigint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `point`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waypoint_data_script
-- ----------------------------
INSERT INTO `waypoint_data_script` VALUES (23682, 1, 1107.77, 615.073, 10.5507, 0, 0, 0, 0, 0, 100, 0, 0);

-- ----------------------------
-- Table structure for waypoint_scripts
-- ----------------------------
DROP TABLE IF EXISTS `waypoint_scripts`;
CREATE TABLE `waypoint_scripts`  (
  `id` int UNSIGNED NOT NULL DEFAULT 0,
  `delay` int UNSIGNED NOT NULL DEFAULT 0,
  `command` int UNSIGNED NOT NULL DEFAULT 0,
  `datalong` int UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int UNSIGNED NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  `guid` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waypoint_scripts
-- ----------------------------
INSERT INTO `waypoint_scripts` VALUES (334, 0, 2, 83, 233, 0, 0, 0, 0, 0, 351);

-- ----------------------------
-- Table structure for waypoints
-- ----------------------------
DROP TABLE IF EXISTS `waypoints`;
CREATE TABLE `waypoints`  (
  `entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `pointid` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `point_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`entry`, `pointid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Creature waypoints' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waypoints
-- ----------------------------
INSERT INTO `waypoints` VALUES (225, 1, -10616.7, -1150.73, 28.0361, 'Gavin Gnarltree');

-- ----------------------------
-- Table structure for world_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `world_loot_template`;
CREATE TABLE `world_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_loot_template
-- ----------------------------
INSERT INTO `world_loot_template` VALUES (4, 87391, 0, 0, 1, 0, 0, 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for world_map_difficulty_stats
-- ----------------------------
DROP TABLE IF EXISTS `world_map_difficulty_stats`;
CREATE TABLE `world_map_difficulty_stats`  (
  `mapId` int NOT NULL DEFAULT -1,
  `difficultyId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `dmg_multiplier` float UNSIGNED NOT NULL DEFAULT 1,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`mapId`, `difficultyId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_difficulty_stats
-- ----------------------------
INSERT INTO `world_map_difficulty_stats` VALUES (1520, 0, 0.5, 'TheEmeraldNightmare');

-- ----------------------------
-- Table structure for world_quest_faction_analogs
-- ----------------------------
DROP TABLE IF EXISTS `world_quest_faction_analogs`;
CREATE TABLE `world_quest_faction_analogs`  (
  `alliance_quest` int NOT NULL,
  `horde_quest` int NOT NULL,
  PRIMARY KEY (`alliance_quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_quest_faction_analogs
-- ----------------------------
INSERT INTO `world_quest_faction_analogs` VALUES (45736, 45651);

-- ----------------------------
-- Table structure for world_quest_item
-- ----------------------------
DROP TABLE IF EXISTS `world_quest_item`;
CREATE TABLE `world_quest_item`  (
  `QuestID` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount` int UNSIGNED NOT NULL DEFAULT 0,
  `NotNeedSpell` int NOT NULL DEFAULT 0,
  `NeedSpell` int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`QuestID`, `ItemID`, `ItemCount`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_quest_item
-- ----------------------------
INSERT INTO `world_quest_item` VALUES (41633, 123931, 1, 191931, 182965);

-- ----------------------------
-- Table structure for world_quest_template
-- ----------------------------
DROP TABLE IF EXISTS `world_quest_template`;
CREATE TABLE `world_quest_template`  (
  `QuestInfoID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneID` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinItemLevel` mediumint NOT NULL DEFAULT 0,
  `BonusLevel` tinyint NOT NULL DEFAULT 5,
  `modTreeID` tinyint UNSIGNED NOT NULL DEFAULT 25,
  `Chance` float NOT NULL DEFAULT 0,
  `Min` tinyint NOT NULL DEFAULT 1,
  `Max` tinyint NOT NULL DEFAULT 4,
  `AllMax` tinyint NOT NULL DEFAULT 1,
  `CurrencyID` mediumint NOT NULL DEFAULT 0,
  `CurrencyID_A` mediumint NOT NULL DEFAULT 0,
  `CurrencyID_H` mediumint NOT NULL DEFAULT 0,
  `CurrencyMin` int NOT NULL DEFAULT 0,
  `CurrencyMax` int NOT NULL DEFAULT 0,
  `GoldMin` int NOT NULL DEFAULT 0,
  `GoldMax` int NOT NULL DEFAULT 0,
  `ItemCAList` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemResourceList` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ArmorList` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `HasArmor` tinyint NOT NULL DEFAULT 1,
  `Currency` mediumint NOT NULL DEFAULT 0,
  `CurrencyCount` int NOT NULL DEFAULT 0,
  `IsPvP` tinyint(1) NOT NULL DEFAULT 0,
  `Comment` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`QuestInfoID`, `ZoneID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_quest_template
-- ----------------------------
INSERT INTO `world_quest_template` VALUES (109, 400, 0, 0, 5, 25, 100, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 'Р›РѕРєР°Р»СЊРЅС‹Рµ Р—Р°РґР°РЅРёСЏ РІ РўС‹СЃСЏС‡Рё РРіР»');

-- ----------------------------
-- Table structure for world_quest_update
-- ----------------------------
DROP TABLE IF EXISTS `world_quest_update`;
CREATE TABLE `world_quest_update`  (
  `QuestID` int UNSIGNED NOT NULL DEFAULT 0,
  `Timer` int NOT NULL DEFAULT 0,
  `VariableID` int NOT NULL DEFAULT 0,
  `VariableID1` int NOT NULL DEFAULT 0,
  `Value` int NOT NULL DEFAULT 0,
  `Value1` int NOT NULL DEFAULT 0,
  `AreaID` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `EventID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`QuestID`, `VariableID`, `Timer`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_quest_update
-- ----------------------------
INSERT INTO `world_quest_update` VALUES (39424, 86400, 11131, 0, 1, 0, '', 0, 21570);

-- ----------------------------
-- Table structure for world_rate_info
-- ----------------------------
DROP TABLE IF EXISTS `world_rate_info`;
CREATE TABLE `world_rate_info`  (
  `type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `id` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `rate` float UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  PRIMARY KEY (`type`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_rate_info
-- ----------------------------

-- ----------------------------
-- Table structure for world_seamless_teleport
-- ----------------------------
DROP TABLE IF EXISTS `world_seamless_teleport`;
CREATE TABLE `world_seamless_teleport`  (
  `ZoneID` mediumint NOT NULL DEFAULT 0,
  `AreaID` mediumint NOT NULL DEFAULT 0,
  `FromMapID` mediumint NOT NULL DEFAULT 0,
  `ToMapID` mediumint NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`ZoneID`, `AreaID`, `FromMapID`, `ToMapID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_seamless_teleport
-- ----------------------------
INSERT INTO `world_seamless_teleport` VALUES (6723, 0, 1116, 1464, 'Tanaan jungle');

-- ----------------------------
-- Table structure for world_state_expression
-- ----------------------------
DROP TABLE IF EXISTS `world_state_expression`;
CREATE TABLE `world_state_expression`  (
  `WorldStateExpressionID` int UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateID` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`WorldStateExpressionID`, `WorldStateID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_state_expression
-- ----------------------------
INSERT INTO `world_state_expression` VALUES (44, 62);

-- ----------------------------
-- Table structure for world_visible_distance
-- ----------------------------
DROP TABLE IF EXISTS `world_visible_distance`;
CREATE TABLE `world_visible_distance`  (
  `type` tinyint NOT NULL DEFAULT 0,
  `id` int NOT NULL DEFAULT 0,
  `distance` float NOT NULL DEFAULT 0,
  `comment` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`type`, `id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_visible_distance
-- ----------------------------
INSERT INTO `world_visible_distance` VALUES (0, 609, 250, 'start DK');

-- ----------------------------
-- Table structure for worldstate_template
-- ----------------------------
DROP TABLE IF EXISTS `worldstate_template`;
CREATE TABLE `worldstate_template`  (
  `VariableID` int UNSIGNED NOT NULL COMMENT 'WorldState ID',
  `Type` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'WorldState Type',
  `ConditionID` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Default ConditionID (dependent from Type)',
  `Flags` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Default Flags of WorldState',
  `DefaultValue` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Default value of WorldState',
  `LinkedID` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID of linked WorldState',
  `Comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`VariableID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'WorldState templates storage' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worldstate_template
-- ----------------------------
INSERT INTO `worldstate_template` VALUES (841, 3, 0, 65536, 0, 0, 'Winter Veil');

-- ----------------------------
-- Table structure for zone_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `zone_loot_template`;
CREATE TABLE `zone_loot_template`  (
  `Entry` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Item` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Currency` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Reference` mediumint UNSIGNED NOT NULL DEFAULT 0,
  `Chance` float NOT NULL DEFAULT 100,
  `QuestRequired` tinyint(1) NOT NULL DEFAULT 0,
  `LootMode` smallint UNSIGNED NOT NULL DEFAULT 1,
  `GroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `MaxCount` smallint UNSIGNED NOT NULL DEFAULT 1,
  `ClassificationMask` tinyint NOT NULL DEFAULT 0,
  `Comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Item`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Loot System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_loot_template
-- ----------------------------
INSERT INTO `zone_loot_template` VALUES (1, 855, 0, 8551, 1, 0, 0, 0, 1, 1, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
