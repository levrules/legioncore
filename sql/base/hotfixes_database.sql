/*
 Navicat Premium Data Transfer

 Source Server         : Legion 192.168.248.142
 Source Server Type    : MySQL
 Source Server Version : 101111 (10.11.11-MariaDB-0+deb12u1)
 Source Host           : localhost:3306
 Source Schema         : hotfixes

 Target Server Type    : MySQL
 Target Server Version : 101111 (10.11.11-MariaDB-0+deb12u1)
 File Encoding         : 65001

 Date: 14/04/2025 22:41:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement`  (
  `Title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Reward` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` int NOT NULL DEFAULT 0,
  `InstanceID` smallint NOT NULL DEFAULT 0,
  `Supercedes` smallint NOT NULL DEFAULT 0,
  `Category` smallint NOT NULL DEFAULT 0,
  `UiOrder` smallint NOT NULL DEFAULT 0,
  `SharesCriteria` smallint NOT NULL DEFAULT 0,
  `Faction` tinyint NOT NULL DEFAULT 0,
  `Points` tinyint NOT NULL DEFAULT 0,
  `MinimumCriteria` tinyint NOT NULL DEFAULT 0,
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `IconFileID` int NOT NULL DEFAULT 0,
  `CriteriaTree` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES ('Lose Your Illusion', 'Defeat Thorim in Ulduar while Sif is present.', NULL, 2097152, 603, 2978, 14922, 109, 0, -1, 10, 0, 12352, 298676, 64278, -1);

-- ----------------------------
-- Table structure for achievement__category
-- ----------------------------
DROP TABLE IF EXISTS `achievement__category`;
CREATE TABLE `achievement__category`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Parent` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievement__category
-- ----------------------------

-- ----------------------------
-- Table structure for achievement__category_locale
-- ----------------------------
DROP TABLE IF EXISTS `achievement__category_locale`;
CREATE TABLE `achievement__category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievement__category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for achievement_locale
-- ----------------------------
DROP TABLE IF EXISTS `achievement_locale`;
CREATE TABLE `achievement_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Title_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Reward_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievement_locale
-- ----------------------------

-- ----------------------------
-- Table structure for adventure_journal
-- ----------------------------
DROP TABLE IF EXISTS `adventure_journal`;
CREATE TABLE `adventure_journal`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ButtonText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RewardDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ContinueDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TextureFileDataID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `LfgDungeonID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BattleMasterListID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BonusPlayerConditionID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BonusPlayerConditionID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ButtonActionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PriorityMin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PriorityMax` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BonusValue1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BonusValue2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyQuantity` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `ItemQuantity` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adventure_journal
-- ----------------------------

-- ----------------------------
-- Table structure for adventure_journal_locale
-- ----------------------------
DROP TABLE IF EXISTS `adventure_journal_locale`;
CREATE TABLE `adventure_journal_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ButtonText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RewardDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ContinueDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adventure_journal_locale
-- ----------------------------

-- ----------------------------
-- Table structure for adventure_map_p_o_i
-- ----------------------------
DROP TABLE IF EXISTS `adventure_map_p_o_i`;
CREATE TABLE `adventure_map_p_o_i`  (
  `ID` int NOT NULL DEFAULT 0,
  `Title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `WorldPosition1` float NOT NULL DEFAULT 0,
  `WorldPosition2` float NOT NULL DEFAULT 0,
  `RewardItemID` int NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `QuestID` int NOT NULL DEFAULT 0,
  `LfgDungeonID` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int NOT NULL DEFAULT 0,
  `UiTextureKitID` int NOT NULL DEFAULT 0,
  `WorldMapAreaID` int NOT NULL DEFAULT 0,
  `DungeonMapID` int NOT NULL DEFAULT 0,
  `AreaTableID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adventure_map_p_o_i
-- ----------------------------

-- ----------------------------
-- Table structure for adventure_map_p_o_i_locale
-- ----------------------------
DROP TABLE IF EXISTS `adventure_map_p_o_i_locale`;
CREATE TABLE `adventure_map_p_o_i_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Title_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adventure_map_p_o_i_locale
-- ----------------------------

-- ----------------------------
-- Table structure for allied_race
-- ----------------------------
DROP TABLE IF EXISTS `allied_race`;
CREATE TABLE `allied_race`  (
  `BannerColor` int NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `RaceID` int NOT NULL DEFAULT 0,
  `CrestTextureID` int NOT NULL DEFAULT 0,
  `ModelBackgroundTextureID` int NOT NULL DEFAULT 0,
  `MaleCreatureDisplayID` int NOT NULL DEFAULT 0,
  `FemaleCreatureDisplayID` int NOT NULL DEFAULT 0,
  `UiUnlockAchievementID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allied_race
-- ----------------------------

-- ----------------------------
-- Table structure for allied_race_racial_ability
-- ----------------------------
DROP TABLE IF EXISTS `allied_race_racial_ability`;
CREATE TABLE `allied_race_racial_ability`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allied_race_racial_ability
-- ----------------------------

-- ----------------------------
-- Table structure for allied_race_racial_ability_locale
-- ----------------------------
DROP TABLE IF EXISTS `allied_race_racial_ability_locale`;
CREATE TABLE `allied_race_racial_ability_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of allied_race_racial_ability_locale
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit`;
CREATE TABLE `anim_kit`  (
  `ID` int NOT NULL DEFAULT 0,
  `OneShotDuration` int NOT NULL DEFAULT 0,
  `OneShotStopAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LowDefAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_bone_set
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_bone_set`;
CREATE TABLE `anim_kit_bone_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BoneDataID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParentAnimKitBoneSetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExtraBoneCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AltAnimKitBoneSetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_bone_set
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_bone_set_alias
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_bone_set_alias`;
CREATE TABLE `anim_kit_bone_set_alias`  (
  `ID` int NOT NULL DEFAULT 0,
  `BoneDataID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitBoneSetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_bone_set_alias
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_bone_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_bone_set_locale`;
CREATE TABLE `anim_kit_bone_set_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_bone_set_locale
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_config
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_config`;
CREATE TABLE `anim_kit_config`  (
  `ID` int NOT NULL DEFAULT 0,
  `ConfigFlags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_config
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_config_bone_set
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_config_bone_set`;
CREATE TABLE `anim_kit_config_bone_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `AnimKitPriorityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitBoneSetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_config_bone_set
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_priority
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_priority`;
CREATE TABLE `anim_kit_priority`  (
  `ID` int NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_priority
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_replacement
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_replacement`;
CREATE TABLE `anim_kit_replacement`  (
  `SrcAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DstAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_replacement
-- ----------------------------

-- ----------------------------
-- Table structure for anim_kit_segment
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_segment`;
CREATE TABLE `anim_kit_segment`  (
  `ID` int NOT NULL DEFAULT 0,
  `AnimStartTime` int NOT NULL DEFAULT 0,
  `EndConditionParam` int NOT NULL DEFAULT 0,
  `EndConditionDelay` int NOT NULL DEFAULT 0,
  `Speed` float NOT NULL DEFAULT 0,
  `OverrideConfigFlags` int UNSIGNED NOT NULL DEFAULT 0,
  `ParentAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitConfigID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SegmentFlags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BlendInTimeMs` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BlendOutTimeMs` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartCondition` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartConditionParam` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EndCondition` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ForcedVariation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LoopToSegmentIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartConditionDelay` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_kit_segment
-- ----------------------------

-- ----------------------------
-- Table structure for anim_replacement
-- ----------------------------
DROP TABLE IF EXISTS `anim_replacement`;
CREATE TABLE `anim_replacement`  (
  `SrcAnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DstAnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_replacement
-- ----------------------------

-- ----------------------------
-- Table structure for anim_replacement_set
-- ----------------------------
DROP TABLE IF EXISTS `anim_replacement_set`;
CREATE TABLE `anim_replacement_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `ExecOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anim_replacement_set
-- ----------------------------

-- ----------------------------
-- Table structure for animation_data
-- ----------------------------
DROP TABLE IF EXISTS `animation_data`;
CREATE TABLE `animation_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `Fallback` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BehaviorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BehaviorTier` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animation_data
-- ----------------------------

-- ----------------------------
-- Table structure for area_far_clip_override
-- ----------------------------
DROP TABLE IF EXISTS `area_far_clip_override`;
CREATE TABLE `area_far_clip_override`  (
  `AreaID` int NOT NULL DEFAULT 0,
  `MinFarClip` float NOT NULL DEFAULT 0,
  `MinHorizonStart` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_far_clip_override
-- ----------------------------

-- ----------------------------
-- Table structure for area_group_member
-- ----------------------------
DROP TABLE IF EXISTS `area_group_member`;
CREATE TABLE `area_group_member`  (
  `ID` int NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_group_member
-- ----------------------------
INSERT INTO `area_group_member` VALUES (5816, 44, 2674, 23911);

-- ----------------------------
-- Table structure for area_p_o_i
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i`;
CREATE TABLE `area_p_o_i`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` int NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `PoiDataType` int NOT NULL DEFAULT 0,
  `PoiData` int NOT NULL DEFAULT 0,
  `ContinentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Importance` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Icon` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `PortLocID` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int NOT NULL DEFAULT 0,
  `MapFloor` int NOT NULL DEFAULT 0,
  `WmoGroupID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_p_o_i
-- ----------------------------

-- ----------------------------
-- Table structure for area_p_o_i_locale
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i_locale`;
CREATE TABLE `area_p_o_i_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_p_o_i_locale
-- ----------------------------

-- ----------------------------
-- Table structure for area_p_o_i_state
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i_state`;
CREATE TABLE `area_p_o_i_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `WorldStateValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `IconEnumValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_p_o_i_state
-- ----------------------------

-- ----------------------------
-- Table structure for area_p_o_i_state_locale
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i_state_locale`;
CREATE TABLE `area_p_o_i_state_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_p_o_i_state_locale
-- ----------------------------

-- ----------------------------
-- Table structure for area_table
-- ----------------------------
DROP TABLE IF EXISTS `area_table`;
CREATE TABLE `area_table`  (
  `ID` int NOT NULL DEFAULT 0,
  `ZoneName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AreaName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `AmbientMultiplier` float NOT NULL DEFAULT 0,
  `ContinentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaBit` smallint NOT NULL DEFAULT 0,
  `AmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusic` smallint UNSIGNED NOT NULL DEFAULT 0,
  `IntroSound` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UwZoneMusic` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UwAmbience` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PvpCombatWorldStateID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPref` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPrefUnderwater` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExplorationLevel` tinyint NOT NULL DEFAULT 0,
  `FactionGroupMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MountFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WildBattlePetLevelMin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WildBattlePetLevelMax` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WindSettingsID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UwIntroSound` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_table
-- ----------------------------
INSERT INTO `area_table` VALUES (12002, 'Разлом: Крепость Стромгард', 'Разлом: Крепость Стромгард', 0, 0, 0, 1178, 12003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for area_table_locale
-- ----------------------------
DROP TABLE IF EXISTS `area_table_locale`;
CREATE TABLE `area_table_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ZoneName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AreaName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_table_locale
-- ----------------------------

-- ----------------------------
-- Table structure for area_trigger
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger`;
CREATE TABLE `area_trigger`  (
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `BoxLength` float NOT NULL DEFAULT 0,
  `BoxWidth` float NOT NULL DEFAULT 0,
  `BoxHeight` float NOT NULL DEFAULT 0,
  `BoxYaw` float NOT NULL DEFAULT 0,
  `ContinentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ShapeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaTriggerActionSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ShapeType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_trigger
-- ----------------------------
INSERT INTO `area_trigger` VALUES (1539.89, 1481.36, 352.65, 5, 0, 0, 0, 0, 489, 0, 0, 0, 485, 0, 0, 0, 3646, 0);

-- ----------------------------
-- Table structure for area_trigger_action_set
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_action_set`;
CREATE TABLE `area_trigger_action_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_trigger_action_set
-- ----------------------------

-- ----------------------------
-- Table structure for area_trigger_box
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_box`;
CREATE TABLE `area_trigger_box`  (
  `ID` int NOT NULL DEFAULT 0,
  `Extents1` float NOT NULL DEFAULT 0,
  `Extents2` float NOT NULL DEFAULT 0,
  `Extents3` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_trigger_box
-- ----------------------------

-- ----------------------------
-- Table structure for area_trigger_cylinder
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_cylinder`;
CREATE TABLE `area_trigger_cylinder`  (
  `ID` int NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `Height` float NOT NULL DEFAULT 0,
  `ZOffset` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_trigger_cylinder
-- ----------------------------

-- ----------------------------
-- Table structure for area_trigger_sphere
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_sphere`;
CREATE TABLE `area_trigger_sphere`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaxRadius` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_trigger_sphere
-- ----------------------------

-- ----------------------------
-- Table structure for armor_location
-- ----------------------------
DROP TABLE IF EXISTS `armor_location`;
CREATE TABLE `armor_location`  (
  `ID` int NOT NULL DEFAULT 0,
  `Clothmodifier` float NOT NULL DEFAULT 0,
  `Leathermodifier` float NOT NULL DEFAULT 0,
  `Chainmodifier` float NOT NULL DEFAULT 0,
  `Platemodifier` float NOT NULL DEFAULT 0,
  `Modifier` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of armor_location
-- ----------------------------

-- ----------------------------
-- Table structure for artifact
-- ----------------------------
DROP TABLE IF EXISTS `artifact`;
CREATE TABLE `artifact`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `UiBarOverlayColor` int UNSIGNED NOT NULL DEFAULT 0,
  `UiBarBackgroundColor` int UNSIGNED NOT NULL DEFAULT 0,
  `UiNameColor` int UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactCategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiModelSceneID` int NOT NULL DEFAULT 0,
  `SpellVisualKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_appearance
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance`;
CREATE TABLE `artifact_appearance`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `UiSwatchColor` int UNSIGNED NOT NULL DEFAULT 0,
  `UiModelSaturation` float NOT NULL DEFAULT 0,
  `UiModelOpacity` float NOT NULL DEFAULT 0,
  `OverrideShapeshiftDisplayID` int NOT NULL DEFAULT 0,
  `ArtifactAppearanceSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemAppearanceModifierID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OverrideShapeshiftFormID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `UnlockPlayerConditionID` int NOT NULL DEFAULT 0,
  `UiItemAppearanceID` int NOT NULL DEFAULT 0,
  `UiAltItemAppearanceID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_appearance
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_appearance_locale
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance_locale`;
CREATE TABLE `artifact_appearance_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_appearance_locale
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_appearance_set
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance_set`;
CREATE TABLE `artifact_appearance_set`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AltHandUICameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ForgeAttachmentOverride` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `ArtifactID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_appearance_set
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_appearance_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance_set_locale`;
CREATE TABLE `artifact_appearance_set_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_appearance_set_locale
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_category
-- ----------------------------
DROP TABLE IF EXISTS `artifact_category`;
CREATE TABLE `artifact_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `XpMultCurrencyID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `XpMultCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_category
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_locale
-- ----------------------------
DROP TABLE IF EXISTS `artifact_locale`;
CREATE TABLE `artifact_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_locale
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_power
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power`;
CREATE TABLE `artifact_power`  (
  `DisplayPos1` float NOT NULL DEFAULT 0,
  `DisplayPos2` float NOT NULL DEFAULT 0,
  `ArtifactID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPurchasableRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Tier` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Label` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_power
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_power_link
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power_link`;
CREATE TABLE `artifact_power_link`  (
  `ID` int NOT NULL DEFAULT 0,
  `PowerA` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PowerB` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_power_link
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_power_picker
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power_picker`;
CREATE TABLE `artifact_power_picker`  (
  `ID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_power_picker
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_power_rank
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power_rank`;
CREATE TABLE `artifact_power_rank`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `AuraPointsOverride` float NOT NULL DEFAULT 0,
  `ItemBonusListID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RankIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactPowerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_power_rank
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_quest_xp
-- ----------------------------
DROP TABLE IF EXISTS `artifact_quest_xp`;
CREATE TABLE `artifact_quest_xp`  (
  `ID` int NOT NULL DEFAULT 0,
  `Difficulty1` int NOT NULL DEFAULT 0,
  `Difficulty2` int NOT NULL DEFAULT 0,
  `Difficulty3` int NOT NULL DEFAULT 0,
  `Difficulty4` int NOT NULL DEFAULT 0,
  `Difficulty5` int NOT NULL DEFAULT 0,
  `Difficulty6` int NOT NULL DEFAULT 0,
  `Difficulty7` int NOT NULL DEFAULT 0,
  `Difficulty8` int NOT NULL DEFAULT 0,
  `Difficulty9` int NOT NULL DEFAULT 0,
  `Difficulty10` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_quest_xp
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_tier
-- ----------------------------
DROP TABLE IF EXISTS `artifact_tier`;
CREATE TABLE `artifact_tier`  (
  `ID` int NOT NULL DEFAULT 0,
  `ArtifactTier` int NOT NULL DEFAULT 0,
  `MaxNumTraits` int NOT NULL DEFAULT 0,
  `MaxArtifactKnowledge` int NOT NULL DEFAULT 0,
  `KnowledgePlayerCondition` int NOT NULL DEFAULT 0,
  `MinimumEmpowerKnowledge` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_tier
-- ----------------------------

-- ----------------------------
-- Table structure for artifact_unlock
-- ----------------------------
DROP TABLE IF EXISTS `artifact_unlock`;
CREATE TABLE `artifact_unlock`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemBonusListID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PowerRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PowerID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `ArtifactID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artifact_unlock
-- ----------------------------

-- ----------------------------
-- Table structure for auction_house
-- ----------------------------
DROP TABLE IF EXISTS `auction_house`;
CREATE TABLE `auction_house`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `FactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DepositRate` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ConsignmentRate` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_house
-- ----------------------------

-- ----------------------------
-- Table structure for auction_house_locale
-- ----------------------------
DROP TABLE IF EXISTS `auction_house_locale`;
CREATE TABLE `auction_house_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_house_locale
-- ----------------------------

-- ----------------------------
-- Table structure for bank_bag_slot_prices
-- ----------------------------
DROP TABLE IF EXISTS `bank_bag_slot_prices`;
CREATE TABLE `bank_bag_slot_prices`  (
  `ID` int NOT NULL DEFAULT 0,
  `Cost` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank_bag_slot_prices
-- ----------------------------

-- ----------------------------
-- Table structure for banned_addons
-- ----------------------------
DROP TABLE IF EXISTS `banned_addons`;
CREATE TABLE `banned_addons`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Version` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banned_addons
-- ----------------------------

-- ----------------------------
-- Table structure for banned_addons_locale
-- ----------------------------
DROP TABLE IF EXISTS `banned_addons_locale`;
CREATE TABLE `banned_addons_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Version_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banned_addons_locale
-- ----------------------------

-- ----------------------------
-- Table structure for barber_shop_style
-- ----------------------------
DROP TABLE IF EXISTS `barber_shop_style`;
CREATE TABLE `barber_shop_style`  (
  `DisplayName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CostModifier` float NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Race` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Sex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Data` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barber_shop_style
-- ----------------------------

-- ----------------------------
-- Table structure for barber_shop_style_locale
-- ----------------------------
DROP TABLE IF EXISTS `barber_shop_style_locale`;
CREATE TABLE `barber_shop_style_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barber_shop_style_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_ability
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability`;
CREATE TABLE `battle_pet_ability`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `BattlePetVisualID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PetTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Cooldown` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_ability
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_ability_effect
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_effect`;
CREATE TABLE `battle_pet_ability_effect`  (
  `BattlePetAbilityTurnID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetVisualID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AuraBattlePetAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetEffectPropertiesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Param1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Param2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Param3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Param4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Param5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Param6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_ability_effect
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_ability_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_locale`;
CREATE TABLE `battle_pet_ability_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_ability_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_ability_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_state`;
CREATE TABLE `battle_pet_ability_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `Value` int UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetStateID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_ability_state
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_ability_turn
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_turn`;
CREATE TABLE `battle_pet_ability_turn`  (
  `BattlePetAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetVisualID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TurnTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EventTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_ability_turn
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_breed_quality
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_breed_quality`;
CREATE TABLE `battle_pet_breed_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `StateMultiplier` float NOT NULL DEFAULT 0,
  `QualityEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_breed_quality
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_breed_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_breed_state`;
CREATE TABLE `battle_pet_breed_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `Value` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetStateID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BreedID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_breed_state
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_display_override
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_display_override`;
CREATE TABLE `battle_pet_display_override`  (
  `ID` int NOT NULL DEFAULT 0,
  `BattlePetSpeciesID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `CreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `PriorityCategory` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_display_override
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_effect_properties
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_effect_properties`;
CREATE TABLE `battle_pet_effect_properties`  (
  `ID` int NOT NULL DEFAULT 0,
  `ParamLabel1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BattlePetVisualID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_effect_properties
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_effect_properties_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_effect_properties_locale`;
CREATE TABLE `battle_pet_effect_properties_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ParamLabel1_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel2_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel3_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel4_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel5_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParamLabel6_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_effect_properties_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_n_p_c_team_member
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_n_p_c_team_member`;
CREATE TABLE `battle_pet_n_p_c_team_member`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_n_p_c_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_n_p_c_team_member_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_n_p_c_team_member_locale`;
CREATE TABLE `battle_pet_n_p_c_team_member_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_n_p_c_team_member_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_species
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species`;
CREATE TABLE `battle_pet_species`  (
  `SourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CreatureID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `SummonSpellID` int NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PetTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `CardUIModelSceneID` int NOT NULL DEFAULT 0,
  `LoadoutUIModelSceneID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_species
-- ----------------------------
INSERT INTO `battle_pet_species` VALUES ('|cFFFFD200Vendor: |rLhara|n|cFFFFD200Zone: |rDarkmoon Island|n|cFFFFD200Cost: |r90|TINTERFACE\\ICONS\\inv_misc_ticket_darkmoon_01:0|t', 'Most of Violet\'s numerous forest strider hatchlings are turned into Faire fare by Stamp Thunderhorn, though a few are raised as mounts or purchased by adventurers looking for a petite purple pet', 67319, 132198, 132762, 2, 4, 2, 1061, 35, 7, 0);

-- ----------------------------
-- Table structure for battle_pet_species_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species_locale`;
CREATE TABLE `battle_pet_species_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_species_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_species_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species_state`;
CREATE TABLE `battle_pet_species_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `Value` int UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetStateID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpeciesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_species_state
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_species_x_ability
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species_x_ability`;
CREATE TABLE `battle_pet_species_x_ability`  (
  `ID` int NOT NULL DEFAULT 0,
  `BattlePetAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SlotEnum` tinyint NOT NULL DEFAULT 0,
  `BattlePetSpeciesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_species_x_ability
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_state`;
CREATE TABLE `battle_pet_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `LuaName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BattlePetVisualID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_state
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_state_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_state_locale`;
CREATE TABLE `battle_pet_state_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LuaName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_state_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_visual
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_visual`;
CREATE TABLE `battle_pet_visual`  (
  `ID` int NOT NULL DEFAULT 0,
  `SceneScriptFunction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SpellVisualID` int NOT NULL DEFAULT 0,
  `CastMilliSeconds` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ImpactMilliSeconds` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SceneScriptPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RangeTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_visual
-- ----------------------------

-- ----------------------------
-- Table structure for battle_pet_visual_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_visual_locale`;
CREATE TABLE `battle_pet_visual_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SceneScriptFunction_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battle_pet_visual_locale
-- ----------------------------

-- ----------------------------
-- Table structure for battlemaster_list
-- ----------------------------
DROP TABLE IF EXISTS `battlemaster_list`;
CREATE TABLE `battlemaster_list`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GameType` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ShortDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LongDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `MapID1` smallint NOT NULL DEFAULT 0,
  `MapID2` smallint NOT NULL DEFAULT 0,
  `MapID3` smallint NOT NULL DEFAULT 0,
  `MapID4` smallint NOT NULL DEFAULT 0,
  `MapID5` smallint NOT NULL DEFAULT 0,
  `MapID6` smallint NOT NULL DEFAULT 0,
  `MapID7` smallint NOT NULL DEFAULT 0,
  `MapID8` smallint NOT NULL DEFAULT 0,
  `MapID9` smallint NOT NULL DEFAULT 0,
  `MapID10` smallint NOT NULL DEFAULT 0,
  `MapID11` smallint NOT NULL DEFAULT 0,
  `MapID12` smallint NOT NULL DEFAULT 0,
  `MapID13` smallint NOT NULL DEFAULT 0,
  `MapID14` smallint NOT NULL DEFAULT 0,
  `MapID15` smallint NOT NULL DEFAULT 0,
  `MapID16` smallint NOT NULL DEFAULT 0,
  `HolidayWorldState` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredPlayer_Condition_ID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `InstanceType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GroupsAllowed` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxGroupSize` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RatedPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlemaster_list
-- ----------------------------
INSERT INTO `battlemaster_list` VALUES (876, 'DeathMatch', NULL, NULL, NULL, 136324, 1101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 3, 0, 1, 110, 110, 25, 10, 25, 24, 23911);

-- ----------------------------
-- Table structure for battlemaster_list_locale
-- ----------------------------
DROP TABLE IF EXISTS `battlemaster_list_locale`;
CREATE TABLE `battlemaster_list_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GameType_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ShortDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LongDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battlemaster_list_locale
-- ----------------------------

-- ----------------------------
-- Table structure for beam_effect
-- ----------------------------
DROP TABLE IF EXISTS `beam_effect`;
CREATE TABLE `beam_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `BeamID` int NOT NULL DEFAULT 0,
  `SourceMinDistance` float NOT NULL DEFAULT 0,
  `FixedLength` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `SourceOffset` int NOT NULL DEFAULT 0,
  `DestOffset` int NOT NULL DEFAULT 0,
  `SourceAttachID` int NOT NULL DEFAULT 0,
  `DestAttachID` int NOT NULL DEFAULT 0,
  `SourcePositionerID` int NOT NULL DEFAULT 0,
  `DestPositionerID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of beam_effect
-- ----------------------------

-- ----------------------------
-- Table structure for bone_wind_modifier_model
-- ----------------------------
DROP TABLE IF EXISTS `bone_wind_modifier_model`;
CREATE TABLE `bone_wind_modifier_model`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `BoneWindModifierID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bone_wind_modifier_model
-- ----------------------------

-- ----------------------------
-- Table structure for bone_wind_modifiers
-- ----------------------------
DROP TABLE IF EXISTS `bone_wind_modifiers`;
CREATE TABLE `bone_wind_modifiers`  (
  `ID` int NOT NULL DEFAULT 0,
  `Multiplier1` float NOT NULL DEFAULT 0,
  `Multiplier2` float NOT NULL DEFAULT 0,
  `Multiplier3` float NOT NULL DEFAULT 0,
  `PhaseMultiplier` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bone_wind_modifiers
-- ----------------------------

-- ----------------------------
-- Table structure for bounty
-- ----------------------------
DROP TABLE IF EXISTS `bounty`;
CREATE TABLE `bounty`  (
  `ID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `QuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TurninPlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bounty
-- ----------------------------

-- ----------------------------
-- Table structure for bounty_set
-- ----------------------------
DROP TABLE IF EXISTS `bounty_set`;
CREATE TABLE `bounty_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `LockedQuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VisiblePlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bounty_set
-- ----------------------------

-- ----------------------------
-- Table structure for broadcast_text
-- ----------------------------
DROP TABLE IF EXISTS `broadcast_text`;
CREATE TABLE `broadcast_text`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `EmoteID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmotesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` int NOT NULL DEFAULT 0,
  `SoundEntriesID1` int NOT NULL DEFAULT 0,
  `SoundEntriesID2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `Text`(`Text`(333) ASC) USING BTREE,
  INDEX `Text1`(`Text1`(333) ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of broadcast_text
-- ----------------------------
INSERT INTO `broadcast_text` VALUES (1, 'Help help!  I\'m being repressed!', '', 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 26124);

-- ----------------------------
-- Table structure for broadcast_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `broadcast_text_locale`;
CREATE TABLE `broadcast_text_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Text1_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE,
  INDEX `Text_lang`(`Text_lang`(333) ASC) USING BTREE,
  INDEX `Text1_lang`(`Text1_lang`(333) ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of broadcast_text_locale
-- ----------------------------
INSERT INTO `broadcast_text_locale` VALUES (1, 'enUS', 'Help help!  I\'m being repressed!', '', 26124);

-- ----------------------------
-- Table structure for camera_effect
-- ----------------------------
DROP TABLE IF EXISTS `camera_effect`;
CREATE TABLE `camera_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of camera_effect
-- ----------------------------

-- ----------------------------
-- Table structure for camera_effect_entry
-- ----------------------------
DROP TABLE IF EXISTS `camera_effect_entry`;
CREATE TABLE `camera_effect_entry`  (
  `ID` int NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Delay` float NOT NULL DEFAULT 0,
  `Phase` float NOT NULL DEFAULT 0,
  `Amplitude` float NOT NULL DEFAULT 0,
  `AmplitudeB` float NOT NULL DEFAULT 0,
  `Frequency` float NOT NULL DEFAULT 0,
  `RadiusMin` float NOT NULL DEFAULT 0,
  `RadiusMax` float NOT NULL DEFAULT 0,
  `AmplitudeCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EffectType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DirectionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MovementType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AttenuationType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of camera_effect_entry
-- ----------------------------

-- ----------------------------
-- Table structure for camera_mode
-- ----------------------------
DROP TABLE IF EXISTS `camera_mode`;
CREATE TABLE `camera_mode`  (
  `ID` int NOT NULL DEFAULT 0,
  `PositionOffset1` float NOT NULL DEFAULT 0,
  `PositionOffset2` float NOT NULL DEFAULT 0,
  `PositionOffset3` float NOT NULL DEFAULT 0,
  `TargetOffset1` float NOT NULL DEFAULT 0,
  `TargetOffset2` float NOT NULL DEFAULT 0,
  `TargetOffset3` float NOT NULL DEFAULT 0,
  `PositionSmoothing` float NOT NULL DEFAULT 0,
  `RotationSmoothing` float NOT NULL DEFAULT 0,
  `FieldOfView` float NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LockedPositionOffsetBase` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LockedPositionOffsetDirection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LockedTargetOffsetBase` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LockedTargetOffsetDirection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of camera_mode
-- ----------------------------

-- ----------------------------
-- Table structure for castable_raid_buffs
-- ----------------------------
DROP TABLE IF EXISTS `castable_raid_buffs`;
CREATE TABLE `castable_raid_buffs`  (
  `ID` int NOT NULL DEFAULT 0,
  `CastingSpellID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of castable_raid_buffs
-- ----------------------------

-- ----------------------------
-- Table structure for celestial_body
-- ----------------------------
DROP TABLE IF EXISTS `celestial_body`;
CREATE TABLE `celestial_body`  (
  `BaseFileDataID` int NOT NULL DEFAULT 0,
  `LightMaskFileDataID` int NOT NULL DEFAULT 0,
  `GlowMaskFileDataID1` int NOT NULL DEFAULT 0,
  `GlowMaskFileDataID2` int NOT NULL DEFAULT 0,
  `AtmosphericMaskFileDataID` int NOT NULL DEFAULT 0,
  `AtmosphericModifiedFileDataID` int NOT NULL DEFAULT 0,
  `GlowModifiedFileDataID1` int NOT NULL DEFAULT 0,
  `GlowModifiedFileDataID2` int NOT NULL DEFAULT 0,
  `ScrollURate1` float NOT NULL DEFAULT 0,
  `ScrollURate2` float NOT NULL DEFAULT 0,
  `ScrollVRate1` float NOT NULL DEFAULT 0,
  `ScrollVRate2` float NOT NULL DEFAULT 0,
  `RotateRate` float NOT NULL DEFAULT 0,
  `GlowMaskScale1` float NOT NULL DEFAULT 0,
  `GlowMaskScale2` float NOT NULL DEFAULT 0,
  `AtmosphericMaskScale` float NOT NULL DEFAULT 0,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `BodyBaseScale` float NOT NULL DEFAULT 0,
  `SkyArrayBand` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of celestial_body
-- ----------------------------

-- ----------------------------
-- Table structure for cfg__categories
-- ----------------------------
DROP TABLE IF EXISTS `cfg__categories`;
CREATE TABLE `cfg__categories`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LocaleMask` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CreateCharsetMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExistingCharsetMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg__categories
-- ----------------------------

-- ----------------------------
-- Table structure for cfg__categories_locale
-- ----------------------------
DROP TABLE IF EXISTS `cfg__categories_locale`;
CREATE TABLE `cfg__categories_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg__categories_locale
-- ----------------------------

-- ----------------------------
-- Table structure for cfg__configs
-- ----------------------------
DROP TABLE IF EXISTS `cfg__configs`;
CREATE TABLE `cfg__configs`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaxDamageReductionPctPhysical` float NOT NULL DEFAULT 0,
  `PlayerAttackSpeedBase` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerKillingAllowed` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Roleplaying` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg__configs
-- ----------------------------

-- ----------------------------
-- Table structure for cfg__regions
-- ----------------------------
DROP TABLE IF EXISTS `cfg__regions`;
CREATE TABLE `cfg__regions`  (
  `ID` int NOT NULL DEFAULT 0,
  `Tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Raidorigin` int NOT NULL DEFAULT 0,
  `ChallengeOrigin` int NOT NULL DEFAULT 0,
  `RegionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RegionGroup_mask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg__regions
-- ----------------------------

-- ----------------------------
-- Table structure for cfg__regions_locale
-- ----------------------------
DROP TABLE IF EXISTS `cfg__regions_locale`;
CREATE TABLE `cfg__regions_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Tag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg__regions_locale
-- ----------------------------

-- ----------------------------
-- Table structure for char_base_info
-- ----------------------------
DROP TABLE IF EXISTS `char_base_info`;
CREATE TABLE `char_base_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_base_info
-- ----------------------------

-- ----------------------------
-- Table structure for char_base_section
-- ----------------------------
DROP TABLE IF EXISTS `char_base_section`;
CREATE TABLE `char_base_section`  (
  `ID` int NOT NULL DEFAULT 0,
  `VariationEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ResolutionVariationEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LayoutResType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_base_section
-- ----------------------------

-- ----------------------------
-- Table structure for char_component_texture_layouts
-- ----------------------------
DROP TABLE IF EXISTS `char_component_texture_layouts`;
CREATE TABLE `char_component_texture_layouts`  (
  `ID` int NOT NULL DEFAULT 0,
  `Width` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Height` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_component_texture_layouts
-- ----------------------------

-- ----------------------------
-- Table structure for char_component_texture_sections
-- ----------------------------
DROP TABLE IF EXISTS `char_component_texture_sections`;
CREATE TABLE `char_component_texture_sections`  (
  `ID` int NOT NULL DEFAULT 0,
  `OverlapSectionMask` int NOT NULL DEFAULT 0,
  `X` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Y` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Width` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Height` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CharComponentTextureLayoutID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SectionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_component_texture_sections
-- ----------------------------

-- ----------------------------
-- Table structure for char_hair_geosets
-- ----------------------------
DROP TABLE IF EXISTS `char_hair_geosets`;
CREATE TABLE `char_hair_geosets`  (
  `ID` int NOT NULL DEFAULT 0,
  `HdCustomGeoFileDataID` int NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VariationID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VariationType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GeosetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GeosetType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Showscalp` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ColorIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CustomGeoFileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_hair_geosets
-- ----------------------------

-- ----------------------------
-- Table structure for char_sections
-- ----------------------------
DROP TABLE IF EXISTS `char_sections`;
CREATE TABLE `char_sections`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaterialResourcesID1` int NOT NULL DEFAULT 0,
  `MaterialResourcesID2` int NOT NULL DEFAULT 0,
  `MaterialResourcesID3` int NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BaseSection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VariationIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ColorIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_sections
-- ----------------------------

-- ----------------------------
-- Table structure for char_shipment
-- ----------------------------
DROP TABLE IF EXISTS `char_shipment`;
CREATE TABLE `char_shipment`  (
  `ID` int NOT NULL DEFAULT 0,
  `TreasureID` int NOT NULL DEFAULT 0,
  `Duration` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `DummyItemID` int NOT NULL DEFAULT 0,
  `OnCompleteSpellID` int NOT NULL DEFAULT 0,
  `ContainerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxShipments` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_shipment
-- ----------------------------

-- ----------------------------
-- Table structure for char_shipment_container
-- ----------------------------
DROP TABLE IF EXISTS `char_shipment_container`;
CREATE TABLE `char_shipment_container`  (
  `ID` int NOT NULL DEFAULT 0,
  `PendingText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `WorkingSpellVisualID` int NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorkingDisplayInfoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SmallDisplayInfoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MediumDisplayInfoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LargeDisplayInfoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CrossFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BaseCapacity` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrBuildingType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MediumThreshold` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LargeThreshold` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Faction` tinyint NOT NULL DEFAULT 0,
  `CompleteSpellVisualID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_shipment_container
-- ----------------------------

-- ----------------------------
-- Table structure for char_shipment_container_locale
-- ----------------------------
DROP TABLE IF EXISTS `char_shipment_container_locale`;
CREATE TABLE `char_shipment_container_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PendingText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_shipment_container_locale
-- ----------------------------

-- ----------------------------
-- Table structure for char_start_outfit
-- ----------------------------
DROP TABLE IF EXISTS `char_start_outfit`;
CREATE TABLE `char_start_outfit`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID1` int NOT NULL DEFAULT 0,
  `ItemID2` int NOT NULL DEFAULT 0,
  `ItemID3` int NOT NULL DEFAULT 0,
  `ItemID4` int NOT NULL DEFAULT 0,
  `ItemID5` int NOT NULL DEFAULT 0,
  `ItemID6` int NOT NULL DEFAULT 0,
  `ItemID7` int NOT NULL DEFAULT 0,
  `ItemID8` int NOT NULL DEFAULT 0,
  `ItemID9` int NOT NULL DEFAULT 0,
  `ItemID10` int NOT NULL DEFAULT 0,
  `ItemID11` int NOT NULL DEFAULT 0,
  `ItemID12` int NOT NULL DEFAULT 0,
  `ItemID13` int NOT NULL DEFAULT 0,
  `ItemID14` int NOT NULL DEFAULT 0,
  `ItemID15` int NOT NULL DEFAULT 0,
  `ItemID16` int NOT NULL DEFAULT 0,
  `ItemID17` int NOT NULL DEFAULT 0,
  `ItemID18` int NOT NULL DEFAULT 0,
  `ItemID19` int NOT NULL DEFAULT 0,
  `ItemID20` int NOT NULL DEFAULT 0,
  `ItemID21` int NOT NULL DEFAULT 0,
  `ItemID22` int NOT NULL DEFAULT 0,
  `ItemID23` int NOT NULL DEFAULT 0,
  `ItemID24` int NOT NULL DEFAULT 0,
  `PetDisplayID` int NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OutfitID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PetFamilyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_start_outfit
-- ----------------------------

-- ----------------------------
-- Table structure for char_titles
-- ----------------------------
DROP TABLE IF EXISTS `char_titles`;
CREATE TABLE `char_titles`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MaskID` smallint NOT NULL DEFAULT 0,
  `Flags` tinyint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_titles
-- ----------------------------
INSERT INTO `char_titles` VALUES (523, 'ВрЕдНаЯ ПеЧеНьКа %s ', 'ВрЕдНаЯ ПеЧеНьКа %s', 374, 0, 0);

-- ----------------------------
-- Table structure for char_titles_locale
-- ----------------------------
DROP TABLE IF EXISTS `char_titles_locale`;
CREATE TABLE `char_titles_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name1_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char_titles_locale
-- ----------------------------

-- ----------------------------
-- Table structure for character_face_bone_set
-- ----------------------------
DROP TABLE IF EXISTS `character_face_bone_set`;
CREATE TABLE `character_face_bone_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `BoneSetFileDataID` int NOT NULL DEFAULT 0,
  `SexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FaceVariationIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Resolution` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_face_bone_set
-- ----------------------------

-- ----------------------------
-- Table structure for character_facial_hair_styles
-- ----------------------------
DROP TABLE IF EXISTS `character_facial_hair_styles`;
CREATE TABLE `character_facial_hair_styles`  (
  `ID` int NOT NULL DEFAULT 0,
  `Geoset1` int UNSIGNED NOT NULL DEFAULT 0,
  `Geoset2` int UNSIGNED NOT NULL DEFAULT 0,
  `Geoset3` int UNSIGNED NOT NULL DEFAULT 0,
  `Geoset4` int UNSIGNED NOT NULL DEFAULT 0,
  `Geoset5` int UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VariationID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_facial_hair_styles
-- ----------------------------

-- ----------------------------
-- Table structure for character_loadout
-- ----------------------------
DROP TABLE IF EXISTS `character_loadout`;
CREATE TABLE `character_loadout`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceMask` bigint NOT NULL DEFAULT 0,
  `ChrClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Purpose` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_loadout
-- ----------------------------

-- ----------------------------
-- Table structure for character_loadout_item
-- ----------------------------
DROP TABLE IF EXISTS `character_loadout_item`;
CREATE TABLE `character_loadout_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `CharacterLoadoutID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_loadout_item
-- ----------------------------

-- ----------------------------
-- Table structure for character_service_info
-- ----------------------------
DROP TABLE IF EXISTS `character_service_info`;
CREATE TABLE `character_service_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `FlowTitle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PopupTitle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PopupDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BoostType` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `ProfessionLevel` int NOT NULL DEFAULT 0,
  `BoostLevel` int NOT NULL DEFAULT 0,
  `Expansion` int NOT NULL DEFAULT 0,
  `PopupUITextureKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_service_info
-- ----------------------------

-- ----------------------------
-- Table structure for character_service_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `character_service_info_locale`;
CREATE TABLE `character_service_info_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FlowTitle_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PopupTitle_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PopupDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_service_info_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chat_channels
-- ----------------------------
DROP TABLE IF EXISTS `chat_channels`;
CREATE TABLE `chat_channels`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Shortcut` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` int NOT NULL DEFAULT 0,
  `FactionGroup` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_channels
-- ----------------------------

-- ----------------------------
-- Table structure for chat_channels_locale
-- ----------------------------
DROP TABLE IF EXISTS `chat_channels_locale`;
CREATE TABLE `chat_channels_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Shortcut_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_channels_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chat_profanity
-- ----------------------------
DROP TABLE IF EXISTS `chat_profanity`;
CREATE TABLE `chat_profanity`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Language` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_profanity
-- ----------------------------

-- ----------------------------
-- Table structure for chat_profanity_locale
-- ----------------------------
DROP TABLE IF EXISTS `chat_profanity_locale`;
CREATE TABLE `chat_profanity_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_profanity_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_class_race_sex
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_race_sex`;
CREATE TABLE `chr_class_race_sex`  (
  `ID` int NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Sex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `VoiceSoundFilterID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_class_race_sex
-- ----------------------------

-- ----------------------------
-- Table structure for chr_class_title
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_title`;
CREATE TABLE `chr_class_title`  (
  `ID` int NOT NULL DEFAULT 0,
  `NameMale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ChrClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_class_title
-- ----------------------------

-- ----------------------------
-- Table structure for chr_class_title_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_title_locale`;
CREATE TABLE `chr_class_title_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NameMale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_class_title_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_class_u_i_display
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_u_i_display`;
CREATE TABLE `chr_class_u_i_display`  (
  `ID` int NOT NULL DEFAULT 0,
  `ChrClassesID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AdvGuidePlayerConditionID` int NOT NULL DEFAULT 0,
  `SplashPlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_class_u_i_display
-- ----------------------------

-- ----------------------------
-- Table structure for chr_class_villain
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_villain`;
CREATE TABLE `chr_class_villain`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ChrClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_class_villain
-- ----------------------------

-- ----------------------------
-- Table structure for chr_class_villain_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_villain_locale`;
CREATE TABLE `chr_class_villain_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_class_villain_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_classes
-- ----------------------------
DROP TABLE IF EXISTS `chr_classes`;
CREATE TABLE `chr_classes`  (
  `PetNameToken` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameMale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Filename` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CreateScreenFileDataID` int NOT NULL DEFAULT 0,
  `SelectScreenFileDataID` int NOT NULL DEFAULT 0,
  `LowResScreenFileDataID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `StartingLevel` int NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CinematicSequenceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultSpec` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayPower` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AttackPowerPerStrength` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AttackPowerPerAgility` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RangedAttackPowerPerAgility` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryStatPriority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_classes
-- ----------------------------

-- ----------------------------
-- Table structure for chr_classes_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_classes_locale`;
CREATE TABLE `chr_classes_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PetNameToken_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameMale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Filename_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_classes_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_classes_x_power_types
-- ----------------------------
DROP TABLE IF EXISTS `chr_classes_x_power_types`;
CREATE TABLE `chr_classes_x_power_types`  (
  `ID` int NOT NULL DEFAULT 0,
  `PowerType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_classes_x_power_types
-- ----------------------------

-- ----------------------------
-- Table structure for chr_customization
-- ----------------------------
DROP TABLE IF EXISTS `chr_customization`;
CREATE TABLE `chr_customization`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Sex` int NOT NULL DEFAULT 0,
  `BaseSection` int NOT NULL DEFAULT 0,
  `UiCustomizationType` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `ComponentSection1` int NOT NULL DEFAULT 0,
  `ComponentSection2` int NOT NULL DEFAULT 0,
  `ComponentSection3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_customization
-- ----------------------------

-- ----------------------------
-- Table structure for chr_customization_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_customization_locale`;
CREATE TABLE `chr_customization_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_customization_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_races
-- ----------------------------
DROP TABLE IF EXISTS `chr_races`;
CREATE TABLE `chr_races`  (
  `ClientPrefix` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ClientFileString` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameLowercase` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale_lowercase` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` int NOT NULL DEFAULT 0,
  `MaleDisplayID` int NOT NULL DEFAULT 0,
  `FemaleDisplayID` int NOT NULL DEFAULT 0,
  `CreateScreenFileDataID` int NOT NULL DEFAULT 0,
  `SelectScreenFileDataID` int NOT NULL DEFAULT 0,
  `MaleCustomizeOffset1` float NOT NULL DEFAULT 0,
  `MaleCustomizeOffset2` float NOT NULL DEFAULT 0,
  `MaleCustomizeOffset3` float NOT NULL DEFAULT 0,
  `FemaleCustomizeOffset1` float NOT NULL DEFAULT 0,
  `FemaleCustomizeOffset2` float NOT NULL DEFAULT 0,
  `FemaleCustomizeOffset3` float NOT NULL DEFAULT 0,
  `LowResScreenFileDataID` int NOT NULL DEFAULT 0,
  `StartingLevel` int NOT NULL DEFAULT 0,
  `UiDisplayOrder` int NOT NULL DEFAULT 0,
  `FactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ResSicknessSpellID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SplashSoundID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CinematicSequenceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BaseLanguage` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CreatureType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Alliance` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RaceRelated` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UnalteredVisualRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CharComponentTextureLayoutID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NeutralRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CharComponentTexLayoutHiResID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `HighResMaleDisplayID` int NOT NULL DEFAULT 0,
  `HighResFemaleDisplayID` int NOT NULL DEFAULT 0,
  `HeritageArmorAchievementID` int NOT NULL DEFAULT 0,
  `MaleSkeletonFileDataID` int NOT NULL DEFAULT 0,
  `FemaleSkeletonFileDataID` int NOT NULL DEFAULT 0,
  `AlteredFormStartVisualKitID1` int NOT NULL DEFAULT 0,
  `AlteredFormStartVisualKitID2` int NOT NULL DEFAULT 0,
  `AlteredFormStartVisualKitID3` int NOT NULL DEFAULT 0,
  `AlteredFormFinishVisualKitID1` int NOT NULL DEFAULT 0,
  `AlteredFormFinishVisualKitID2` int NOT NULL DEFAULT 0,
  `AlteredFormFinishVisualKitID3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_races
-- ----------------------------

-- ----------------------------
-- Table structure for chr_races_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_races_locale`;
CREATE TABLE `chr_races_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ClientPrefix_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ClientFileString_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameLowercase_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameFemale_lowercase_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_races_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_specialization
-- ----------------------------
DROP TABLE IF EXISTS `chr_specialization`;
CREATE TABLE `chr_specialization`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `FemaleName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MasterySpellID1` int NOT NULL DEFAULT 0,
  `MasterySpellID2` int NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PetTalentType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Role` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryStatPriority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `SpellIconFileID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `AnimReplacements` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_specialization
-- ----------------------------

-- ----------------------------
-- Table structure for chr_specialization_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_specialization_locale`;
CREATE TABLE `chr_specialization_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `FemaleName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_specialization_locale
-- ----------------------------

-- ----------------------------
-- Table structure for chr_upgrade_bucket
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_bucket`;
CREATE TABLE `chr_upgrade_bucket`  (
  `ChrSpecializationID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_upgrade_bucket
-- ----------------------------

-- ----------------------------
-- Table structure for chr_upgrade_bucket_spell
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_bucket_spell`;
CREATE TABLE `chr_upgrade_bucket_spell`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_upgrade_bucket_spell
-- ----------------------------

-- ----------------------------
-- Table structure for chr_upgrade_tier
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_tier`;
CREATE TABLE `chr_upgrade_tier`  (
  `DisplayName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NumTalents` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_upgrade_tier
-- ----------------------------

-- ----------------------------
-- Table structure for chr_upgrade_tier_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_tier_locale`;
CREATE TABLE `chr_upgrade_tier_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chr_upgrade_tier_locale
-- ----------------------------

-- ----------------------------
-- Table structure for cinematic_camera
-- ----------------------------
DROP TABLE IF EXISTS `cinematic_camera`;
CREATE TABLE `cinematic_camera`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `Origin1` float NOT NULL DEFAULT 0,
  `Origin2` float NOT NULL DEFAULT 0,
  `Origin3` float NOT NULL DEFAULT 0,
  `OriginFacing` float NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinematic_camera
-- ----------------------------

-- ----------------------------
-- Table structure for cinematic_sequences
-- ----------------------------
DROP TABLE IF EXISTS `cinematic_sequences`;
CREATE TABLE `cinematic_sequences`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `Camera1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Camera8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinematic_sequences
-- ----------------------------

-- ----------------------------
-- Table structure for cloak_dampening
-- ----------------------------
DROP TABLE IF EXISTS `cloak_dampening`;
CREATE TABLE `cloak_dampening`  (
  `ID` int NOT NULL DEFAULT 0,
  `Angle1` float NOT NULL DEFAULT 0,
  `Angle2` float NOT NULL DEFAULT 0,
  `Angle3` float NOT NULL DEFAULT 0,
  `Angle4` float NOT NULL DEFAULT 0,
  `Angle5` float NOT NULL DEFAULT 0,
  `Dampening1` float NOT NULL DEFAULT 0,
  `Dampening2` float NOT NULL DEFAULT 0,
  `Dampening3` float NOT NULL DEFAULT 0,
  `Dampening4` float NOT NULL DEFAULT 0,
  `Dampening5` float NOT NULL DEFAULT 0,
  `TailAngle1` float NOT NULL DEFAULT 0,
  `TailAngle2` float NOT NULL DEFAULT 0,
  `TailDampening1` float NOT NULL DEFAULT 0,
  `TailDampening2` float NOT NULL DEFAULT 0,
  `TabardAngle` float NOT NULL DEFAULT 0,
  `TabardDampening` float NOT NULL DEFAULT 0,
  `ExpectedWeaponSize` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cloak_dampening
-- ----------------------------

-- ----------------------------
-- Table structure for combat_condition
-- ----------------------------
DROP TABLE IF EXISTS `combat_condition`;
CREATE TABLE `combat_condition`  (
  `ID` int NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SelfConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TargetConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionOp1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionOp2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionCount1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionCount2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionLogic` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionOp1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionOp2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionCount1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionCount2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionLogic` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of combat_condition
-- ----------------------------

-- ----------------------------
-- Table structure for commentator_start_location
-- ----------------------------
DROP TABLE IF EXISTS `commentator_start_location`;
CREATE TABLE `commentator_start_location`  (
  `ID` int NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `MapID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commentator_start_location
-- ----------------------------

-- ----------------------------
-- Table structure for commentator_tracked_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `commentator_tracked_cooldown`;
CREATE TABLE `commentator_tracked_cooldown`  (
  `ID` int NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commentator_tracked_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for component_model_file_data
-- ----------------------------
DROP TABLE IF EXISTS `component_model_file_data`;
CREATE TABLE `component_model_file_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `GenderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PositionIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of component_model_file_data
-- ----------------------------

-- ----------------------------
-- Table structure for component_texture_file_data
-- ----------------------------
DROP TABLE IF EXISTS `component_texture_file_data`;
CREATE TABLE `component_texture_file_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `GenderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of component_texture_file_data
-- ----------------------------

-- ----------------------------
-- Table structure for configuration_warning
-- ----------------------------
DROP TABLE IF EXISTS `configuration_warning`;
CREATE TABLE `configuration_warning`  (
  `ID` int NOT NULL DEFAULT 0,
  `Warning` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Type` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configuration_warning
-- ----------------------------

-- ----------------------------
-- Table structure for configuration_warning_locale
-- ----------------------------
DROP TABLE IF EXISTS `configuration_warning_locale`;
CREATE TABLE `configuration_warning_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Warning_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configuration_warning_locale
-- ----------------------------

-- ----------------------------
-- Table structure for contribution
-- ----------------------------
DROP TABLE IF EXISTS `contribution`;
CREATE TABLE `contribution`  (
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `ManagedWorldStateInputID` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID1` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID2` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID3` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID4` int NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contribution
-- ----------------------------

-- ----------------------------
-- Table structure for contribution_locale
-- ----------------------------
DROP TABLE IF EXISTS `contribution_locale`;
CREATE TABLE `contribution_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contribution_locale
-- ----------------------------

-- ----------------------------
-- Table structure for conversation_line
-- ----------------------------
DROP TABLE IF EXISTS `conversation_line`;
CREATE TABLE `conversation_line`  (
  `ID` int NOT NULL DEFAULT 0,
  `BroadcastTextID` int NOT NULL DEFAULT 0,
  `SpellVisualKitID` int NOT NULL DEFAULT 0,
  `AdditionalDuration` int UNSIGNED NOT NULL DEFAULT 0,
  `NextConversationLineID` smallint NOT NULL DEFAULT 0,
  `AnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpeechType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartAnimation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EndAnimation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conversation_line
-- ----------------------------

-- ----------------------------
-- Table structure for creature
-- ----------------------------
DROP TABLE IF EXISTS `creature`;
CREATE TABLE `creature`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameAlt` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TitleAlt` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AlwaysItem1` int NOT NULL DEFAULT 0,
  `AlwaysItem2` int NOT NULL DEFAULT 0,
  `AlwaysItem3` int NOT NULL DEFAULT 0,
  `MountCreatureID` int NOT NULL DEFAULT 0,
  `DisplayID1` int NOT NULL DEFAULT 0,
  `DisplayID2` int NOT NULL DEFAULT 0,
  `DisplayID3` int NOT NULL DEFAULT 0,
  `DisplayID4` int NOT NULL DEFAULT 0,
  `DisplayProbability1` float NOT NULL DEFAULT 0,
  `DisplayProbability2` float NOT NULL DEFAULT 0,
  `DisplayProbability3` float NOT NULL DEFAULT 0,
  `DisplayProbability4` float NOT NULL DEFAULT 0,
  `CreatureType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CreatureFamily` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Classification` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartAnimState` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature
-- ----------------------------

-- ----------------------------
-- Table structure for creature_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `creature_difficulty`;
CREATE TABLE `creature_difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags4` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags5` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags6` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags7` int UNSIGNED NOT NULL DEFAULT 0,
  `FactionID` smallint NOT NULL DEFAULT 0,
  `ExpansionID` tinyint NOT NULL DEFAULT 0,
  `MinLevel` tinyint NOT NULL DEFAULT 0,
  `MaxLevel` tinyint NOT NULL DEFAULT 0,
  `CreatureID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_difficulty
-- ----------------------------

-- ----------------------------
-- Table structure for creature_disp_x_ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `creature_disp_x_ui_camera`;
CREATE TABLE `creature_disp_x_ui_camera`  (
  `ID` int NOT NULL DEFAULT 0,
  `CreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_disp_x_ui_camera
-- ----------------------------

-- ----------------------------
-- Table structure for creature_display_info
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info`;
CREATE TABLE `creature_display_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `CreatureModelScale` float NOT NULL DEFAULT 0,
  `ModelID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NPCSoundID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SizeClass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint NOT NULL DEFAULT 0,
  `ExtendedDisplayInfoID` int NOT NULL DEFAULT 0,
  `PortraitTextureFileDataID` int NOT NULL DEFAULT 0,
  `CreatureModelAlpha` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerOverrideScale` float NOT NULL DEFAULT 0,
  `PortraitCreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `BloodID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParticleColorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DissolveEffectID` int UNSIGNED NOT NULL DEFAULT 0,
  `ObjectEffectPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimReplacementSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UnarmedWeaponType` tinyint NOT NULL DEFAULT 0,
  `StateSpellVisualKitID` int NOT NULL DEFAULT 0,
  `PetInstanceScale` float NOT NULL DEFAULT 0,
  `MountPoofSpellVisualKitID` int NOT NULL DEFAULT 0,
  `TextureVariationFileDataID1` int NOT NULL DEFAULT 0,
  `TextureVariationFileDataID2` int NOT NULL DEFAULT 0,
  `TextureVariationFileDataID3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_display_info
-- ----------------------------
INSERT INTO `creature_display_info` VALUES (83281, 1, 3797, 0, 1, 0, 2, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, -1, 88879, 1, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for creature_display_info_cond
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_cond`;
CREATE TABLE `creature_display_info_cond`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0,
  `CustomOption0Mask1` int UNSIGNED NOT NULL DEFAULT 0,
  `CustomOption0Mask2` int UNSIGNED NOT NULL DEFAULT 0,
  `CustomOption1Mask1` int NOT NULL DEFAULT 0,
  `CustomOption1Mask2` int NOT NULL DEFAULT 0,
  `CustomOption2Mask1` int NOT NULL DEFAULT 0,
  `CustomOption2Mask2` int NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `SkinColorMask` int NOT NULL DEFAULT 0,
  `HairColorMask` int NOT NULL DEFAULT 0,
  `HairStyleMask` int NOT NULL DEFAULT 0,
  `FaceStyleMask` int NOT NULL DEFAULT 0,
  `FacialHairStyleMask` int NOT NULL DEFAULT 0,
  `CreatureModelDataID` int NOT NULL DEFAULT 0,
  `TextureVariationFileDataID1` int NOT NULL DEFAULT 0,
  `TextureVariationFileDataID2` int NOT NULL DEFAULT 0,
  `TextureVariationFileDataID3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_display_info_cond
-- ----------------------------

-- ----------------------------
-- Table structure for creature_display_info_evt
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_evt`;
CREATE TABLE `creature_display_info_evt`  (
  `ID` int NOT NULL DEFAULT 0,
  `Fourcc` int NOT NULL DEFAULT 0,
  `SpellVisualKitID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_display_info_evt
-- ----------------------------

-- ----------------------------
-- Table structure for creature_display_info_extra
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_extra`;
CREATE TABLE `creature_display_info_extra`  (
  `ID` int NOT NULL DEFAULT 0,
  `BakeMaterialResourcesID` int NOT NULL DEFAULT 0,
  `HDBakeMaterialResourcesID` int NOT NULL DEFAULT 0,
  `DisplayRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplaySexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SkinID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HairStyleID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HairColorID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FacialHairID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CustomDisplayOption1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CustomDisplayOption2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CustomDisplayOption3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_display_info_extra
-- ----------------------------

-- ----------------------------
-- Table structure for creature_display_info_trn
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_trn`;
CREATE TABLE `creature_display_info_trn`  (
  `ID` int NOT NULL DEFAULT 0,
  `DstCreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `MaxTime` float NOT NULL DEFAULT 0,
  `DissolveEffectID` int NOT NULL DEFAULT 0,
  `StartVisualKitID` int NOT NULL DEFAULT 0,
  `FinishVisualKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_display_info_trn
-- ----------------------------

-- ----------------------------
-- Table structure for creature_family
-- ----------------------------
DROP TABLE IF EXISTS `creature_family`;
CREATE TABLE `creature_family`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MinScale` float NOT NULL DEFAULT 0,
  `MaxScale` float NOT NULL DEFAULT 0,
  `IconFileID` int NOT NULL DEFAULT 0,
  `SkillLine1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SkillLine2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PetFoodMask` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinScaleLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxScaleLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PetTalentType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_family
-- ----------------------------

-- ----------------------------
-- Table structure for creature_family_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_family_locale`;
CREATE TABLE `creature_family_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_family_locale
-- ----------------------------

-- ----------------------------
-- Table structure for creature_immunities
-- ----------------------------
DROP TABLE IF EXISTS `creature_immunities`;
CREATE TABLE `creature_immunities`  (
  `ID` int NOT NULL DEFAULT 0,
  `Mechanic1` int NOT NULL DEFAULT 0,
  `Mechanic2` int NOT NULL DEFAULT 0,
  `School` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MechanicsAllowed` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EffectsAllowed` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StatesAllowed` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DispelType` int NOT NULL DEFAULT 0,
  `Effect1` int NOT NULL DEFAULT 0,
  `Effect2` int NOT NULL DEFAULT 0,
  `Effect3` int NOT NULL DEFAULT 0,
  `Effect4` int NOT NULL DEFAULT 0,
  `Effect5` int NOT NULL DEFAULT 0,
  `Effect6` int NOT NULL DEFAULT 0,
  `Effect7` int NOT NULL DEFAULT 0,
  `Effect8` int NOT NULL DEFAULT 0,
  `Effect9` int NOT NULL DEFAULT 0,
  `State1` int NOT NULL DEFAULT 0,
  `State2` int NOT NULL DEFAULT 0,
  `State3` int NOT NULL DEFAULT 0,
  `State4` int NOT NULL DEFAULT 0,
  `State5` int NOT NULL DEFAULT 0,
  `State6` int NOT NULL DEFAULT 0,
  `State7` int NOT NULL DEFAULT 0,
  `State8` int NOT NULL DEFAULT 0,
  `State9` int NOT NULL DEFAULT 0,
  `State10` int NOT NULL DEFAULT 0,
  `State11` int NOT NULL DEFAULT 0,
  `State12` int NOT NULL DEFAULT 0,
  `State13` int NOT NULL DEFAULT 0,
  `State14` int NOT NULL DEFAULT 0,
  `State15` int NOT NULL DEFAULT 0,
  `State16` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_immunities
-- ----------------------------

-- ----------------------------
-- Table structure for creature_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_locale`;
CREATE TABLE `creature_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameAlt_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Title_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TitleAlt_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_locale
-- ----------------------------

-- ----------------------------
-- Table structure for creature_model_data
-- ----------------------------
DROP TABLE IF EXISTS `creature_model_data`;
CREATE TABLE `creature_model_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `ModelScale` float NOT NULL DEFAULT 0,
  `FootprintTextureLength` float NOT NULL DEFAULT 0,
  `FootprintTextureWidth` float NOT NULL DEFAULT 0,
  `FootprintParticleScale` float NOT NULL DEFAULT 0,
  `CollisionWidth` float NOT NULL DEFAULT 0,
  `CollisionHeight` float NOT NULL DEFAULT 0,
  `MountHeight` float NOT NULL DEFAULT 0,
  `GeoBox1` float NOT NULL DEFAULT 0,
  `GeoBox2` float NOT NULL DEFAULT 0,
  `GeoBox3` float NOT NULL DEFAULT 0,
  `GeoBox4` float NOT NULL DEFAULT 0,
  `GeoBox5` float NOT NULL DEFAULT 0,
  `GeoBox6` float NOT NULL DEFAULT 0,
  `WorldEffectScale` float NOT NULL DEFAULT 0,
  `AttachedEffectScale` float NOT NULL DEFAULT 0,
  `MissileCollisionRadius` float NOT NULL DEFAULT 0,
  `MissileCollisionPush` float NOT NULL DEFAULT 0,
  `MissileCollisionRaise` float NOT NULL DEFAULT 0,
  `OverrideLootEffectScale` float NOT NULL DEFAULT 0,
  `OverrideNameScale` float NOT NULL DEFAULT 0,
  `OverrideSelectionRadius` float NOT NULL DEFAULT 0,
  `TamedPetBaseScale` float NOT NULL DEFAULT 0,
  `HoverHeight` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `SizeClass` int NOT NULL DEFAULT 0,
  `BloodID` int NOT NULL DEFAULT 0,
  `FootprintTextureID` int NOT NULL DEFAULT 0,
  `FoleyMaterialID` int NOT NULL DEFAULT 0,
  `FootstepCameraEffectID` int NOT NULL DEFAULT 0,
  `DeathThudCameraEffectID` int NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `CreatureGeosetDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_model_data
-- ----------------------------

-- ----------------------------
-- Table structure for creature_movement_info
-- ----------------------------
DROP TABLE IF EXISTS `creature_movement_info`;
CREATE TABLE `creature_movement_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `SmoothFacingChaseRate` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_movement_info
-- ----------------------------

-- ----------------------------
-- Table structure for creature_sound_data
-- ----------------------------
DROP TABLE IF EXISTS `creature_sound_data`;
CREATE TABLE `creature_sound_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `FidgetDelaySecondsMin` float NOT NULL DEFAULT 0,
  `FidgetDelaySecondsMax` float NOT NULL DEFAULT 0,
  `CreatureImpactType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundExertionID` int NOT NULL DEFAULT 0,
  `SoundExertionCriticalID` int NOT NULL DEFAULT 0,
  `SoundInjuryID` int NOT NULL DEFAULT 0,
  `SoundInjuryCriticalID` int NOT NULL DEFAULT 0,
  `SoundInjuryCrushingBlowID` int NOT NULL DEFAULT 0,
  `SoundDeathID` int NOT NULL DEFAULT 0,
  `SoundStunID` int NOT NULL DEFAULT 0,
  `SoundStandID` int NOT NULL DEFAULT 0,
  `SoundFootstepID` int NOT NULL DEFAULT 0,
  `SoundAggroID` int NOT NULL DEFAULT 0,
  `SoundWingFlapID` int NOT NULL DEFAULT 0,
  `SoundWingGlideID` int NOT NULL DEFAULT 0,
  `SoundAlertID` int NOT NULL DEFAULT 0,
  `NPCSoundID` int NOT NULL DEFAULT 0,
  `LoopSoundID` int NOT NULL DEFAULT 0,
  `SoundJumpStartID` int NOT NULL DEFAULT 0,
  `SoundJumpEndID` int NOT NULL DEFAULT 0,
  `SoundPetAttackID` int NOT NULL DEFAULT 0,
  `SoundPetOrderID` int NOT NULL DEFAULT 0,
  `SoundPetDismissID` int NOT NULL DEFAULT 0,
  `BirthSoundID` int NOT NULL DEFAULT 0,
  `SpellCastDirectedSoundID` int NOT NULL DEFAULT 0,
  `SubmergeSoundID` int NOT NULL DEFAULT 0,
  `SubmergedSoundID` int NOT NULL DEFAULT 0,
  `CreatureSoundDataIDPet` int NOT NULL DEFAULT 0,
  `WindupSoundID` int NOT NULL DEFAULT 0,
  `WindupCriticalSoundID` int NOT NULL DEFAULT 0,
  `ChargeSoundID` int NOT NULL DEFAULT 0,
  `ChargeCriticalSoundID` int NOT NULL DEFAULT 0,
  `BattleShoutSoundID` int NOT NULL DEFAULT 0,
  `BattleShoutCriticalSoundID` int NOT NULL DEFAULT 0,
  `TauntSoundID` int NOT NULL DEFAULT 0,
  `SoundFidget1` int NOT NULL DEFAULT 0,
  `SoundFidget2` int NOT NULL DEFAULT 0,
  `SoundFidget3` int NOT NULL DEFAULT 0,
  `SoundFidget4` int NOT NULL DEFAULT 0,
  `SoundFidget5` int NOT NULL DEFAULT 0,
  `CustomAttack1` int NOT NULL DEFAULT 0,
  `CustomAttack2` int NOT NULL DEFAULT 0,
  `CustomAttack3` int NOT NULL DEFAULT 0,
  `CustomAttack4` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_sound_data
-- ----------------------------

-- ----------------------------
-- Table structure for creature_type
-- ----------------------------
DROP TABLE IF EXISTS `creature_type`;
CREATE TABLE `creature_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_type
-- ----------------------------

-- ----------------------------
-- Table structure for creature_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_type_locale`;
CREATE TABLE `creature_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for creature_x_contribution
-- ----------------------------
DROP TABLE IF EXISTS `creature_x_contribution`;
CREATE TABLE `creature_x_contribution`  (
  `ID` int NOT NULL DEFAULT 0,
  `ContributionID` int NOT NULL DEFAULT 0,
  `CreatureId` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_x_contribution
-- ----------------------------

-- ----------------------------
-- Table structure for criteria
-- ----------------------------
DROP TABLE IF EXISTS `criteria`;
CREATE TABLE `criteria`  (
  `ID` int NOT NULL DEFAULT 0,
  `Asset` int NOT NULL DEFAULT 0,
  `StartAsset` int NOT NULL DEFAULT 0,
  `FailAsset` int UNSIGNED NOT NULL DEFAULT 0,
  `ModifierTreeId` int NOT NULL DEFAULT 0,
  `StartTimer` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EligibilityWorldStateId` smallint NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartEvent` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FailEvent` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EligibilityWorldStateValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of criteria
-- ----------------------------
INSERT INTO `criteria` VALUES (6626, 34753, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for criteria_tree
-- ----------------------------
DROP TABLE IF EXISTS `criteria_tree`;
CREATE TABLE `criteria_tree`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Amount` int NOT NULL DEFAULT 0,
  `Flags` smallint NOT NULL DEFAULT 0,
  `Operator` tinyint NOT NULL DEFAULT 0,
  `CriteriaID` int NOT NULL DEFAULT 0,
  `Parent` int NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of criteria_tree
-- ----------------------------
INSERT INTO `criteria_tree` VALUES (1, '', 350, 0, 4, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for criteria_tree_locale
-- ----------------------------
DROP TABLE IF EXISTS `criteria_tree_locale`;
CREATE TABLE `criteria_tree_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of criteria_tree_locale
-- ----------------------------

-- ----------------------------
-- Table structure for criteria_tree_x_effect
-- ----------------------------
DROP TABLE IF EXISTS `criteria_tree_x_effect`;
CREATE TABLE `criteria_tree_x_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `WorldEffectID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of criteria_tree_x_effect
-- ----------------------------

-- ----------------------------
-- Table structure for currency_category
-- ----------------------------
DROP TABLE IF EXISTS `currency_category`;
CREATE TABLE `currency_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currency_category
-- ----------------------------

-- ----------------------------
-- Table structure for currency_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `currency_category_locale`;
CREATE TABLE `currency_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currency_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for currency_types
-- ----------------------------
DROP TABLE IF EXISTS `currency_types`;
CREATE TABLE `currency_types`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MaxQty` int NOT NULL DEFAULT 0,
  `MaxEarnablePerWeek` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `CategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellCategory` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InventoryIconFileID` int NOT NULL DEFAULT 0,
  `SpellWeight` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currency_types
-- ----------------------------
INSERT INTO `currency_types` VALUES (1160, 'Gold coin of valor', 'You can get it for ingame challenges. And can exchange this coins for some special server rewards in Dalaran.', 0, 0, 0, 141, 0, 5, 1416740, 0, 0);

-- ----------------------------
-- Table structure for currency_types_locale
-- ----------------------------
DROP TABLE IF EXISTS `currency_types_locale`;
CREATE TABLE `currency_types_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currency_types_locale
-- ----------------------------

-- ----------------------------
-- Table structure for curve
-- ----------------------------
DROP TABLE IF EXISTS `curve`;
CREATE TABLE `curve`  (
  `ID` int NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curve
-- ----------------------------

-- ----------------------------
-- Table structure for curve_point
-- ----------------------------
DROP TABLE IF EXISTS `curve_point`;
CREATE TABLE `curve_point`  (
  `ID` int NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `CurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curve_point
-- ----------------------------

-- ----------------------------
-- Table structure for death_thud_lookups
-- ----------------------------
DROP TABLE IF EXISTS `death_thud_lookups`;
CREATE TABLE `death_thud_lookups`  (
  `ID` int NOT NULL DEFAULT 0,
  `SizeClass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TerrainTypeSoundID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundEntryID` int NOT NULL DEFAULT 0,
  `SoundEntryIDWater` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of death_thud_lookups
-- ----------------------------

-- ----------------------------
-- Table structure for decal_properties
-- ----------------------------
DROP TABLE IF EXISTS `decal_properties`;
CREATE TABLE `decal_properties`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `InnerRadius` float NOT NULL DEFAULT 0,
  `OuterRadius` float NOT NULL DEFAULT 0,
  `Rim` float NOT NULL DEFAULT 0,
  `Gain` float NOT NULL DEFAULT 0,
  `ModX` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `FadeIn` float NOT NULL DEFAULT 0,
  `FadeOut` float NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BlendMode` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TopTextureBlendSetID` int NOT NULL DEFAULT 0,
  `BotTextureBlendSetID` int NOT NULL DEFAULT 0,
  `GameFlags` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `CasterDecalPropertiesID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of decal_properties
-- ----------------------------

-- ----------------------------
-- Table structure for declined_word
-- ----------------------------
DROP TABLE IF EXISTS `declined_word`;
CREATE TABLE `declined_word`  (
  `Word` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of declined_word
-- ----------------------------

-- ----------------------------
-- Table structure for declined_word_cases
-- ----------------------------
DROP TABLE IF EXISTS `declined_word_cases`;
CREATE TABLE `declined_word_cases`  (
  `ID` int NOT NULL DEFAULT 0,
  `DeclinedWord` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CaseIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of declined_word_cases
-- ----------------------------

-- ----------------------------
-- Table structure for declined_word_cases_locale
-- ----------------------------
DROP TABLE IF EXISTS `declined_word_cases_locale`;
CREATE TABLE `declined_word_cases_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DeclinedWord_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of declined_word_cases_locale
-- ----------------------------

-- ----------------------------
-- Table structure for declined_word_locale
-- ----------------------------
DROP TABLE IF EXISTS `declined_word_locale`;
CREATE TABLE `declined_word_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Word_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of declined_word_locale
-- ----------------------------

-- ----------------------------
-- Table structure for destructible_model_data
-- ----------------------------
DROP TABLE IF EXISTS `destructible_model_data`;
CREATE TABLE `destructible_model_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `State0Wmo` smallint UNSIGNED NOT NULL DEFAULT 0,
  `State1Wmo` smallint UNSIGNED NOT NULL DEFAULT 0,
  `State2Wmo` smallint UNSIGNED NOT NULL DEFAULT 0,
  `State3Wmo` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HealEffectSpeed` smallint UNSIGNED NOT NULL DEFAULT 0,
  `State0ImpactEffectDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State0AmbientDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State0NameSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State1DestructionDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State1ImpactEffectDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State1AmbientDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State1NameSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State2DestructionDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State2ImpactEffectDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State2AmbientDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State2NameSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State3InitDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State3AmbientDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `State3NameSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EjectDirection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DoNotHighlight` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HealEffect` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destructible_model_data
-- ----------------------------

-- ----------------------------
-- Table structure for device_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `device_blacklist`;
CREATE TABLE `device_blacklist`  (
  `ID` int NOT NULL DEFAULT 0,
  `VendorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DeviceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for device_default_settings
-- ----------------------------
DROP TABLE IF EXISTS `device_default_settings`;
CREATE TABLE `device_default_settings`  (
  `ID` int NOT NULL DEFAULT 0,
  `VendorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DeviceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultSetting` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_default_settings
-- ----------------------------

-- ----------------------------
-- Table structure for difficulty
-- ----------------------------
DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GroupSizeHealthCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GroupSizeDmgCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GroupSizeSpellPointsCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FallbackDifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InstanceType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OldEnumValue` tinyint NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ToggleDifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemContext` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of difficulty
-- ----------------------------

-- ----------------------------
-- Table structure for difficulty_locale
-- ----------------------------
DROP TABLE IF EXISTS `difficulty_locale`;
CREATE TABLE `difficulty_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of difficulty_locale
-- ----------------------------

-- ----------------------------
-- Table structure for dissolve_effect
-- ----------------------------
DROP TABLE IF EXISTS `dissolve_effect`;
CREATE TABLE `dissolve_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Ramp` float NOT NULL DEFAULT 0,
  `StartValue` float NOT NULL DEFAULT 0,
  `EndValue` float NOT NULL DEFAULT 0,
  `FadeInTime` float NOT NULL DEFAULT 0,
  `FadeOutTime` float NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `FresnelIntensity` float NOT NULL DEFAULT 0,
  `AttachID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ProjectionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TextureBlendSetID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `CurveID` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dissolve_effect
-- ----------------------------

-- ----------------------------
-- Table structure for driver_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `driver_blacklist`;
CREATE TABLE `driver_blacklist`  (
  `ID` int NOT NULL DEFAULT 0,
  `DriverVersionHi` int NOT NULL DEFAULT 0,
  `DriverVersionLow` int NOT NULL DEFAULT 0,
  `VendorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DeviceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OsVersion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OsBits` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of driver_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for dungeon_encounter
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_encounter`;
CREATE TABLE `dungeon_encounter`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CreatureDisplayID` int NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Bit` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `SpellIconFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dungeon_encounter
-- ----------------------------

-- ----------------------------
-- Table structure for dungeon_encounter_locale
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_encounter_locale`;
CREATE TABLE `dungeon_encounter_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dungeon_encounter_locale
-- ----------------------------

-- ----------------------------
-- Table structure for dungeon_map
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_map`;
CREATE TABLE `dungeon_map`  (
  `Min1` float NOT NULL DEFAULT 0,
  `Min2` float NOT NULL DEFAULT 0,
  `Max1` float NOT NULL DEFAULT 0,
  `Max2` float NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentWorldMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FloorIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RelativeHeightIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dungeon_map
-- ----------------------------

-- ----------------------------
-- Table structure for dungeon_map_chunk
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_map_chunk`;
CREATE TABLE `dungeon_map_chunk`  (
  `ID` int NOT NULL DEFAULT 0,
  `MinZ` float NOT NULL DEFAULT 0,
  `DoodadPlacementID` int NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WmoGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DungeonMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dungeon_map_chunk
-- ----------------------------

-- ----------------------------
-- Table structure for durability_costs
-- ----------------------------
DROP TABLE IF EXISTS `durability_costs`;
CREATE TABLE `durability_costs`  (
  `ID` int NOT NULL DEFAULT 0,
  `WeaponSubClassCost1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost9` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost10` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost11` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost12` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost13` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost14` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost15` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost16` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost17` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost18` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost19` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost20` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost21` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of durability_costs
-- ----------------------------

-- ----------------------------
-- Table structure for durability_quality
-- ----------------------------
DROP TABLE IF EXISTS `durability_quality`;
CREATE TABLE `durability_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of durability_quality
-- ----------------------------

-- ----------------------------
-- Table structure for edge_glow_effect
-- ----------------------------
DROP TABLE IF EXISTS `edge_glow_effect`;
CREATE TABLE `edge_glow_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `FadeIn` float NOT NULL DEFAULT 0,
  `FadeOut` float NOT NULL DEFAULT 0,
  `FresnelCoefficient` float NOT NULL DEFAULT 0,
  `GlowRed` float NOT NULL DEFAULT 0,
  `GlowGreen` float NOT NULL DEFAULT 0,
  `GlowBlue` float NOT NULL DEFAULT 0,
  `GlowAlpha` float NOT NULL DEFAULT 0,
  `GlowMultiplier` float NOT NULL DEFAULT 0,
  `InitialDelay` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CurveID` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edge_glow_effect
-- ----------------------------

-- ----------------------------
-- Table structure for emotes
-- ----------------------------
DROP TABLE IF EXISTS `emotes`;
CREATE TABLE `emotes`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceMask` bigint NOT NULL DEFAULT 0,
  `EmoteSlashCommand` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `EmoteFlags` int NOT NULL DEFAULT 0,
  `SpellVisualKitID` int NOT NULL DEFAULT 0,
  `AnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmoteSpecProc` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `EmoteSpecProcParam` int NOT NULL DEFAULT 0,
  `EventSoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes
-- ----------------------------

-- ----------------------------
-- Table structure for emotes_locale
-- ----------------------------
DROP TABLE IF EXISTS `emotes_locale`;
CREATE TABLE `emotes_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `EmoteSlashCommand_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes_locale
-- ----------------------------

-- ----------------------------
-- Table structure for emotes_text
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text`;
CREATE TABLE `emotes_text`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `EmoteID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes_text
-- ----------------------------

-- ----------------------------
-- Table structure for emotes_text_data
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_data`;
CREATE TABLE `emotes_text_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RelationshipFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes_text_data
-- ----------------------------

-- ----------------------------
-- Table structure for emotes_text_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_data_locale`;
CREATE TABLE `emotes_text_data_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes_text_data_locale
-- ----------------------------

-- ----------------------------
-- Table structure for emotes_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_locale`;
CREATE TABLE `emotes_text_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes_text_locale
-- ----------------------------

-- ----------------------------
-- Table structure for emotes_text_sound
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_sound`;
CREATE TABLE `emotes_text_sound`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emotes_text_sound
-- ----------------------------

-- ----------------------------
-- Table structure for environmental_damage
-- ----------------------------
DROP TABLE IF EXISTS `environmental_damage`;
CREATE TABLE `environmental_damage`  (
  `ID` int NOT NULL DEFAULT 0,
  `VisualKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EnumID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of environmental_damage
-- ----------------------------

-- ----------------------------
-- Table structure for exhaustion
-- ----------------------------
DROP TABLE IF EXISTS `exhaustion`;
CREATE TABLE `exhaustion`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CombatLogText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Xp` int UNSIGNED NOT NULL DEFAULT 0,
  `Factor` float NOT NULL DEFAULT 0,
  `OutdoorHours` float NOT NULL DEFAULT 0,
  `InnHours` float NOT NULL DEFAULT 0,
  `Threshold` float NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exhaustion
-- ----------------------------

-- ----------------------------
-- Table structure for exhaustion_locale
-- ----------------------------
DROP TABLE IF EXISTS `exhaustion_locale`;
CREATE TABLE `exhaustion_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CombatLogText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exhaustion_locale
-- ----------------------------

-- ----------------------------
-- Table structure for faction
-- ----------------------------
DROP TABLE IF EXISTS `faction`;
CREATE TABLE `faction`  (
  `ReputationRaceMask1` bigint NOT NULL DEFAULT 0,
  `ReputationRaceMask2` bigint NOT NULL DEFAULT 0,
  `ReputationRaceMask3` bigint NOT NULL DEFAULT 0,
  `ReputationRaceMask4` bigint NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `ReputationBase1` int NOT NULL DEFAULT 0,
  `ReputationBase2` int NOT NULL DEFAULT 0,
  `ReputationBase3` int NOT NULL DEFAULT 0,
  `ReputationBase4` int NOT NULL DEFAULT 0,
  `ParentFactionMod1` float NOT NULL DEFAULT 0,
  `ParentFactionMod2` float NOT NULL DEFAULT 0,
  `ReputationMax1` int UNSIGNED NOT NULL DEFAULT 0,
  `ReputationMax2` int UNSIGNED NOT NULL DEFAULT 0,
  `ReputationMax3` int UNSIGNED NOT NULL DEFAULT 0,
  `ReputationMax4` int UNSIGNED NOT NULL DEFAULT 0,
  `ReputationIndex` smallint NOT NULL DEFAULT 0,
  `ReputationClassMask1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationClassMask2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationClassMask3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationClassMask4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParagonFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentFactionCap1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParentFactionCap2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Expansion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FriendshipRepID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction
-- ----------------------------
INSERT INTO `faction` VALUES (0, 0, 0, 0, 'Крылья Пустоты', 'Необычный вид черных драконов, произошедший от потомков Смертокрыла, яйца которых были подвержены влиянию энергии Пустоты. Сейчас они ищут себя, пытаясь избавиться от мрачного наследия своего отца.', 1015, -42000, 0, 0, 0, 0, 0, 42000, 0, 0, 0, 71, 0, 0, 0, 0, 2, 0, 0, 0, 980, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for faction_group
-- ----------------------------
DROP TABLE IF EXISTS `faction_group`;
CREATE TABLE `faction_group`  (
  `InternalName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `MaskID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HonorCurrencyTextureFileID` int NOT NULL DEFAULT 0,
  `ConquestCurrencyTextureFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_group
-- ----------------------------

-- ----------------------------
-- Table structure for faction_group_locale
-- ----------------------------
DROP TABLE IF EXISTS `faction_group_locale`;
CREATE TABLE `faction_group_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `InternalName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_group_locale
-- ----------------------------

-- ----------------------------
-- Table structure for faction_locale
-- ----------------------------
DROP TABLE IF EXISTS `faction_locale`;
CREATE TABLE `faction_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_locale
-- ----------------------------

-- ----------------------------
-- Table structure for faction_template
-- ----------------------------
DROP TABLE IF EXISTS `faction_template`;
CREATE TABLE `faction_template`  (
  `ID` int NOT NULL DEFAULT 0,
  `Faction` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enemies1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enemies2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enemies3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enemies4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Friend1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Friend2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Friend3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Friend4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FactionGroup` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FriendGroup` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnemyGroup` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faction_template
-- ----------------------------

-- ----------------------------
-- Table structure for footprint_textures
-- ----------------------------
DROP TABLE IF EXISTS `footprint_textures`;
CREATE TABLE `footprint_textures`  (
  `ID` int NOT NULL DEFAULT 0,
  `TextureBlendsetID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footprint_textures
-- ----------------------------

-- ----------------------------
-- Table structure for footstep_terrain_lookup
-- ----------------------------
DROP TABLE IF EXISTS `footstep_terrain_lookup`;
CREATE TABLE `footstep_terrain_lookup`  (
  `ID` int NOT NULL DEFAULT 0,
  `CreatureFootstepID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TerrainSoundID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `SoundIDSplash` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footstep_terrain_lookup
-- ----------------------------

-- ----------------------------
-- Table structure for friendship_rep_reaction
-- ----------------------------
DROP TABLE IF EXISTS `friendship_rep_reaction`;
CREATE TABLE `friendship_rep_reaction`  (
  `ID` int NOT NULL DEFAULT 0,
  `Reaction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ReactionThreshold` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FriendshipRepID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendship_rep_reaction
-- ----------------------------

-- ----------------------------
-- Table structure for friendship_rep_reaction_locale
-- ----------------------------
DROP TABLE IF EXISTS `friendship_rep_reaction_locale`;
CREATE TABLE `friendship_rep_reaction_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Reaction_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendship_rep_reaction_locale
-- ----------------------------

-- ----------------------------
-- Table structure for friendship_reputation
-- ----------------------------
DROP TABLE IF EXISTS `friendship_reputation`;
CREATE TABLE `friendship_reputation`  (
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TextureFileID` int NOT NULL DEFAULT 0,
  `FactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendship_reputation
-- ----------------------------

-- ----------------------------
-- Table structure for friendship_reputation_locale
-- ----------------------------
DROP TABLE IF EXISTS `friendship_reputation_locale`;
CREATE TABLE `friendship_reputation_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendship_reputation_locale
-- ----------------------------

-- ----------------------------
-- Table structure for full_screen_effect
-- ----------------------------
DROP TABLE IF EXISTS `full_screen_effect`;
CREATE TABLE `full_screen_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Saturation` float NOT NULL DEFAULT 0,
  `GammaRed` float NOT NULL DEFAULT 0,
  `GammaGreen` float NOT NULL DEFAULT 0,
  `GammaBlue` float NOT NULL DEFAULT 0,
  `MaskOffsetY` float NOT NULL DEFAULT 0,
  `MaskSizeMultiplier` float NOT NULL DEFAULT 0,
  `MaskPower` float NOT NULL DEFAULT 0,
  `ColorMultiplyRed` float NOT NULL DEFAULT 0,
  `ColorMultiplyGreen` float NOT NULL DEFAULT 0,
  `ColorMultiplyBlue` float NOT NULL DEFAULT 0,
  `ColorMultiplyOffsetY` float NOT NULL DEFAULT 0,
  `ColorMultiplyMultiplier` float NOT NULL DEFAULT 0,
  `ColorMultiplyPower` float NOT NULL DEFAULT 0,
  `ColorAdditionRed` float NOT NULL DEFAULT 0,
  `ColorAdditionGreen` float NOT NULL DEFAULT 0,
  `ColorAdditionBlue` float NOT NULL DEFAULT 0,
  `ColorAdditionOffsetY` float NOT NULL DEFAULT 0,
  `ColorAdditionMultiplier` float NOT NULL DEFAULT 0,
  `ColorAdditionPower` float NOT NULL DEFAULT 0,
  `BlurIntensity` float NOT NULL DEFAULT 0,
  `BlurOffsetY` float NOT NULL DEFAULT 0,
  `BlurMultiplier` float NOT NULL DEFAULT 0,
  `BlurPower` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `TextureBlendSetID` int NOT NULL DEFAULT 0,
  `EffectFadeInMs` int NOT NULL DEFAULT 0,
  `EffectFadeOutMs` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of full_screen_effect
-- ----------------------------

-- ----------------------------
-- Table structure for g_m_survey_answers
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_answers`;
CREATE TABLE `g_m_survey_answers`  (
  `ID` int NOT NULL DEFAULT 0,
  `Answer` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SortIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_m_survey_answers
-- ----------------------------

-- ----------------------------
-- Table structure for g_m_survey_answers_locale
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_answers_locale`;
CREATE TABLE `g_m_survey_answers_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Answer_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_m_survey_answers_locale
-- ----------------------------

-- ----------------------------
-- Table structure for g_m_survey_current_survey
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_current_survey`;
CREATE TABLE `g_m_survey_current_survey`  (
  `ID` int NOT NULL DEFAULT 0,
  `GmsurveyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_m_survey_current_survey
-- ----------------------------

-- ----------------------------
-- Table structure for g_m_survey_questions
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_questions`;
CREATE TABLE `g_m_survey_questions`  (
  `ID` int NOT NULL DEFAULT 0,
  `Question` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_m_survey_questions
-- ----------------------------

-- ----------------------------
-- Table structure for g_m_survey_questions_locale
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_questions_locale`;
CREATE TABLE `g_m_survey_questions_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Question_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_m_survey_questions_locale
-- ----------------------------

-- ----------------------------
-- Table structure for g_m_survey_surveys
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_surveys`;
CREATE TABLE `g_m_survey_surveys`  (
  `ID` int NOT NULL DEFAULT 0,
  `Q1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q9` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q10` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q11` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q12` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q13` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q14` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Q15` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of g_m_survey_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for game_tips
-- ----------------------------
DROP TABLE IF EXISTS `game_tips`;
CREATE TABLE `game_tips`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MinLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SortIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_tips
-- ----------------------------

-- ----------------------------
-- Table structure for game_tips_locale
-- ----------------------------
DROP TABLE IF EXISTS `game_tips_locale`;
CREATE TABLE `game_tips_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_tips_locale
-- ----------------------------

-- ----------------------------
-- Table structure for gameobject_art_kit
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_art_kit`;
CREATE TABLE `gameobject_art_kit`  (
  `ID` int NOT NULL DEFAULT 0,
  `AttachModelFileID` int NOT NULL DEFAULT 0,
  `TextureVariationFileID1` int NOT NULL DEFAULT 0,
  `TextureVariationFileID2` int NOT NULL DEFAULT 0,
  `TextureVariationFileID3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_art_kit
-- ----------------------------

-- ----------------------------
-- Table structure for gameobject_diff_anim_map
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_diff_anim_map`;
CREATE TABLE `gameobject_diff_anim_map`  (
  `ID` int NOT NULL DEFAULT 0,
  `AttachmentDisplayID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Animation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_diff_anim_map
-- ----------------------------

-- ----------------------------
-- Table structure for gameobject_display_info
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_display_info`;
CREATE TABLE `gameobject_display_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `GeoBoxMinX` float NOT NULL DEFAULT 0,
  `GeoBoxMinY` float NOT NULL DEFAULT 0,
  `GeoBoxMinZ` float NOT NULL DEFAULT 0,
  `GeoBoxMaxX` float NOT NULL DEFAULT 0,
  `GeoBoxMaxY` float NOT NULL DEFAULT 0,
  `GeoBoxMaxZ` float NOT NULL DEFAULT 0,
  `OverrideLootEffectScale` float NOT NULL DEFAULT 0,
  `OverrideNameScale` float NOT NULL DEFAULT 0,
  `ObjectEffectPackageID` smallint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_display_info
-- ----------------------------

-- ----------------------------
-- Table structure for gameobject_display_info_x_sound_kit
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_display_info_x_sound_kit`;
CREATE TABLE `gameobject_display_info_x_sound_kit`  (
  `ID` int NOT NULL DEFAULT 0,
  `EventIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_display_info_x_sound_kit
-- ----------------------------

-- ----------------------------
-- Table structure for gameobjects
-- ----------------------------
DROP TABLE IF EXISTS `gameobjects`;
CREATE TABLE `gameobjects`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `RotationX` float NOT NULL DEFAULT 0,
  `RotationY` float NOT NULL DEFAULT 0,
  `RotationZ` float NOT NULL DEFAULT 0,
  `RotationO` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `PropValue1` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue2` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue3` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue4` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue5` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue6` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue7` int UNSIGNED NOT NULL DEFAULT 0,
  `PropValue8` int UNSIGNED NOT NULL DEFAULT 0,
  `OwnerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobjects
-- ----------------------------

-- ----------------------------
-- Table structure for gameobjects_locale
-- ----------------------------
DROP TABLE IF EXISTS `gameobjects_locale`;
CREATE TABLE `gameobjects_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobjects_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ability
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability`;
CREATE TABLE `garr_ability`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FactionChangeGarrAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrAbilityCategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ability
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ability_category
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_category`;
CREATE TABLE `garr_ability_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ability_category
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ability_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_category_locale`;
CREATE TABLE `garr_ability_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ability_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ability_effect
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_effect`;
CREATE TABLE `garr_ability_effect`  (
  `CombatWeightBase` float NOT NULL DEFAULT 0,
  `CombatWeightMax` float NOT NULL DEFAULT 0,
  `ActionValueFlat` float NOT NULL DEFAULT 0,
  `ActionRecordID` int NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AbilityAction` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AbilityTargetType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrMechanicTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ActionRace` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ActionHours` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ability_effect
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ability_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_locale`;
CREATE TABLE `garr_ability_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ability_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_building
-- ----------------------------
DROP TABLE IF EXISTS `garr_building`;
CREATE TABLE `garr_building`  (
  `ID` int NOT NULL DEFAULT 0,
  `AllianceName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `HordeName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Tooltip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `HordeGameObjectID` int NOT NULL DEFAULT 0,
  `AllianceGameObjectID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `CurrencyTypeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HordeUiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceUiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceSceneScriptPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HordeSceneScriptPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BonusGarrAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GoldCost` smallint NOT NULL DEFAULT 0,
  `GarrSiteID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BuildingType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ShipmentCapacity` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BuildSeconds` int NOT NULL DEFAULT 0,
  `CurrencyQty` int NOT NULL DEFAULT 0,
  `MaxAssignments` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_building
-- ----------------------------

-- ----------------------------
-- Table structure for garr_building_doodad_set
-- ----------------------------
DROP TABLE IF EXISTS `garr_building_doodad_set`;
CREATE TABLE `garr_building_doodad_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `GarrBuildingID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HordeDoodadSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpecializationID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_building_doodad_set
-- ----------------------------

-- ----------------------------
-- Table structure for garr_building_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_building_locale`;
CREATE TABLE `garr_building_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AllianceName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `HordeName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Tooltip_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_building_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_building_plot_inst
-- ----------------------------
DROP TABLE IF EXISTS `garr_building_plot_inst`;
CREATE TABLE `garr_building_plot_inst`  (
  `MapOffsetX` float NOT NULL DEFAULT 0,
  `MapOffsetY` float NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrSiteLevelPlotInstID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrBuildingID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_building_plot_inst
-- ----------------------------

-- ----------------------------
-- Table structure for garr_class_spec
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec`;
CREATE TABLE `garr_class_spec`  (
  `ClassSpec` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ClassSpecMale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ClassSpecFemale` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `UiTextureAtlasMemberID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollItemSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FollowerClassLimit` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_class_spec
-- ----------------------------

-- ----------------------------
-- Table structure for garr_class_spec_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec_locale`;
CREATE TABLE `garr_class_spec_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ClassSpec_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ClassSpecMale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ClassSpecFemale_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_class_spec_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_class_spec_player_cond
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec_player_cond`;
CREATE TABLE `garr_class_spec_player_cond`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrClassSpecID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `FlavorGarrStringID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_class_spec_player_cond
-- ----------------------------

-- ----------------------------
-- Table structure for garr_class_spec_player_cond_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec_player_cond_locale`;
CREATE TABLE `garr_class_spec_player_cond_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_class_spec_player_cond_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_encounter
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter`;
CREATE TABLE `garr_encounter`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CreatureID` int NOT NULL DEFAULT 0,
  `UiAnimScale` float NOT NULL DEFAULT 0,
  `UiAnimHeight` float NOT NULL DEFAULT 0,
  `PortraitFileDataID` int NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `UiTextureKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_encounter
-- ----------------------------

-- ----------------------------
-- Table structure for garr_encounter_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter_locale`;
CREATE TABLE `garr_encounter_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_encounter_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_encounter_set_x_encounter
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter_set_x_encounter`;
CREATE TABLE `garr_encounter_set_x_encounter`  (
  `ID` int NOT NULL DEFAULT 0,
  `xEncounter` int UNSIGNED NOT NULL DEFAULT 0,
  `Encounter` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_encounter_set_x_encounter
-- ----------------------------

-- ----------------------------
-- Table structure for garr_encounter_x_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter_x_mechanic`;
CREATE TABLE `garr_encounter_x_mechanic`  (
  `ID` int NOT NULL DEFAULT 0,
  `GarrMechanicID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrMechanicSetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrEncounterID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_encounter_x_mechanic
-- ----------------------------

-- ----------------------------
-- Table structure for garr_foll_item_set_member
-- ----------------------------
DROP TABLE IF EXISTS `garr_foll_item_set_member`;
CREATE TABLE `garr_foll_item_set_member`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `MinItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemSlot` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollItemSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_foll_item_set_member
-- ----------------------------

-- ----------------------------
-- Table structure for garr_foll_support_spell
-- ----------------------------
DROP TABLE IF EXISTS `garr_foll_support_spell`;
CREATE TABLE `garr_foll_support_spell`  (
  `ID` int NOT NULL DEFAULT 0,
  `AllianceSpellID` int NOT NULL DEFAULT 0,
  `HordeSpellID` int NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_foll_support_spell
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower`;
CREATE TABLE `garr_follower`  (
  `HordeSourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AllianceSourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TitleName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `HordeCreatureID` int NOT NULL DEFAULT 0,
  `AllianceCreatureID` int NOT NULL DEFAULT 0,
  `HordeIconFileDataID` int NOT NULL DEFAULT 0,
  `AllianceIconFileDataID` int NOT NULL DEFAULT 0,
  `HordeSlottingBroadcastTextID` int NOT NULL DEFAULT 0,
  `AllySlottingBroadcastTextID` int NOT NULL DEFAULT 0,
  `HordeGarrFollItemSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceGarrFollItemSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelWeapon` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelArmor` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HordeUITextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceUITextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HordeGarrFollRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceGarrFollRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HordeGarrClassSpecID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceGarrClassSpecID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FollowerLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HordeSourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceSourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Vitality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ChrClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HordeFlavorGarrStringID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllianceFlavorGarrStringID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_level_x_p
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_level_x_p`;
CREATE TABLE `garr_follower_level_x_p`  (
  `ID` int NOT NULL DEFAULT 0,
  `XpToNextLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ShipmentXP` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FollowerLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_level_x_p
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_locale`;
CREATE TABLE `garr_follower_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `HordeSourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AllianceSourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TitleName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_quality
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_quality`;
CREATE TABLE `garr_follower_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `XpToNextQuality` int NOT NULL DEFAULT 0,
  `ShipmentXP` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AbilityCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TraitCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassSpecID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_quality
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_set_x_follower
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_set_x_follower`;
CREATE TABLE `garr_follower_set_x_follower`  (
  `ID` int NOT NULL DEFAULT 0,
  `GarrFollowerID` int NOT NULL DEFAULT 0,
  `GarrFollowerSetID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_set_x_follower
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_type`;
CREATE TABLE `garr_follower_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaxItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxFollowers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxFollowerBuildingType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LevelRangeBias` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelRangeBias` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_type
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_u_i_creature
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_u_i_creature`;
CREATE TABLE `garr_follower_u_i_creature`  (
  `ID` int NOT NULL DEFAULT 0,
  `CreatureID` int NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `FactionIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_u_i_creature
-- ----------------------------

-- ----------------------------
-- Table structure for garr_follower_x_ability
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_x_ability`;
CREATE TABLE `garr_follower_x_ability`  (
  `ID` int NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FactionIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_follower_x_ability
-- ----------------------------

-- ----------------------------
-- Table structure for garr_item_level_upgrade_data
-- ----------------------------
DROP TABLE IF EXISTS `garr_item_level_upgrade_data`;
CREATE TABLE `garr_item_level_upgrade_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `Operation` int NOT NULL DEFAULT 0,
  `MinItemLevel` int NOT NULL DEFAULT 0,
  `MaxItemLevel` int NOT NULL DEFAULT 0,
  `FollowerTypeID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_item_level_upgrade_data
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic`;
CREATE TABLE `garr_mechanic`  (
  `ID` int NOT NULL DEFAULT 0,
  `Factor` float NOT NULL DEFAULT 0,
  `GarrMechanicTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrAbilityID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mechanic
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mechanic_set_x_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic_set_x_mechanic`;
CREATE TABLE `garr_mechanic_set_x_mechanic`  (
  `GarrMechanicID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `GarrMechanicSetId` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mechanic_set_x_mechanic
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mechanic_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic_type`;
CREATE TABLE `garr_mechanic_type`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `Category` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mechanic_type
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mechanic_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic_type_locale`;
CREATE TABLE `garr_mechanic_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mechanic_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission`;
CREATE TABLE `garr_mission`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Location` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MissionDuration` int NOT NULL DEFAULT 0,
  `OfferDuration` int NOT NULL DEFAULT 0,
  `MapPos_1` float NOT NULL DEFAULT 0,
  `MapPos_2` float NOT NULL DEFAULT 0,
  `WorldPos1` float NOT NULL DEFAULT 0,
  `WorldPos2` float NOT NULL DEFAULT 0,
  `TargetItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MissionCostCurrencyTypesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnvGarrMechanicTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxFollowers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OfferedGarrMissionTextureID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrMissionTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BaseCompletionChance` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FollowerDeathChance` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `TravelDuration` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `MissionCost` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `BaseFollowerXP` int NOT NULL DEFAULT 0,
  `AreaID` int NOT NULL DEFAULT 0,
  `OvermaxRewardPackID` int NOT NULL DEFAULT 0,
  `EnvGarrMechanicID` int NOT NULL DEFAULT 0,
  `RelationshipData` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_locale`;
CREATE TABLE `garr_mission_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Location_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission_texture
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_texture`;
CREATE TABLE `garr_mission_texture`  (
  `ID` int NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission_texture
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_type`;
CREATE TABLE `garr_mission_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `UiTextureAtlasMemberID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission_type
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_type_locale`;
CREATE TABLE `garr_mission_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission_x_encounter
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_x_encounter`;
CREATE TABLE `garr_mission_x_encounter`  (
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `GarrMissionID` int UNSIGNED NOT NULL DEFAULT 0,
  `GarrEncounterID` int NOT NULL DEFAULT 0,
  `GarrEncounterSetID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission_x_encounter
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mission_x_follower
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_x_follower`;
CREATE TABLE `garr_mission_x_follower`  (
  `ID` int NOT NULL DEFAULT 0,
  `GarrFollowerID` int NOT NULL DEFAULT 0,
  `GarrFollowerSetID` int NOT NULL DEFAULT 0,
  `GarrMissionID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mission_x_follower
-- ----------------------------

-- ----------------------------
-- Table structure for garr_mssn_bonus_ability
-- ----------------------------
DROP TABLE IF EXISTS `garr_mssn_bonus_ability`;
CREATE TABLE `garr_mssn_bonus_ability`  (
  `ID` int NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `DurationSecs` int NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrMissionTextureID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_mssn_bonus_ability
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot`;
CREATE TABLE `garr_plot`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AllianceConstructObjID` int NOT NULL DEFAULT 0,
  `HordeConstructObjID` int NOT NULL DEFAULT 0,
  `UiCategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlotType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeRequirement1` int NOT NULL DEFAULT 0,
  `UpgradeRequirement2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot_building
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_building`;
CREATE TABLE `garr_plot_building`  (
  `ID` int NOT NULL DEFAULT 0,
  `GarrPlotID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrBuildingID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot_building
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot_instance
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_instance`;
CREATE TABLE `garr_plot_instance`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GarrPlotID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot_instance
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot_instance_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_instance_locale`;
CREATE TABLE `garr_plot_instance_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot_instance_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_locale`;
CREATE TABLE `garr_plot_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot_u_i_category
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_u_i_category`;
CREATE TABLE `garr_plot_u_i_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `CategoryName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PlotType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot_u_i_category
-- ----------------------------

-- ----------------------------
-- Table structure for garr_plot_u_i_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_u_i_category_locale`;
CREATE TABLE `garr_plot_u_i_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CategoryName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_plot_u_i_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_site_level
-- ----------------------------
DROP TABLE IF EXISTS `garr_site_level`;
CREATE TABLE `garr_site_level`  (
  `ID` int NOT NULL DEFAULT 0,
  `TownHallUiPos1` float NOT NULL DEFAULT 0,
  `TownHallUiPos2` float NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeMovieID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeCost` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeGoldCost` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GarrSiteID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxBuildingLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_site_level
-- ----------------------------

-- ----------------------------
-- Table structure for garr_site_level_plot_inst
-- ----------------------------
DROP TABLE IF EXISTS `garr_site_level_plot_inst`;
CREATE TABLE `garr_site_level_plot_inst`  (
  `ID` int NOT NULL DEFAULT 0,
  `UiMarkerPos1` float NOT NULL DEFAULT 0,
  `UiMarkerPos2` float NOT NULL DEFAULT 0,
  `GarrSiteLevelID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GarrPlotInstanceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiMarkerSize` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_site_level_plot_inst
-- ----------------------------

-- ----------------------------
-- Table structure for garr_specialization
-- ----------------------------
DROP TABLE IF EXISTS `garr_specialization`;
CREATE TABLE `garr_specialization`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Tooltip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `Param1` float NOT NULL DEFAULT 0,
  `Param2` float NOT NULL DEFAULT 0,
  `BuildingType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpecType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredUpgradeLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_specialization
-- ----------------------------

-- ----------------------------
-- Table structure for garr_specialization_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_specialization_locale`;
CREATE TABLE `garr_specialization_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Tooltip_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_specialization_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_string
-- ----------------------------
DROP TABLE IF EXISTS `garr_string`;
CREATE TABLE `garr_string`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_string
-- ----------------------------

-- ----------------------------
-- Table structure for garr_string_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_string_locale`;
CREATE TABLE `garr_string_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_string_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_talent
-- ----------------------------
DROP TABLE IF EXISTS `garr_talent`;
CREATE TABLE `garr_talent`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `ResearchDurationSecs` int NOT NULL DEFAULT 0,
  `Tier` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `GarrTalentTreeID` int NOT NULL DEFAULT 0,
  `GarrAbilityID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `ResearchCost` int NOT NULL DEFAULT 0,
  `ResearchCostCurrencyTypesID` int NOT NULL DEFAULT 0,
  `ResearchGoldCost` int NOT NULL DEFAULT 0,
  `PerkSpellID` int NOT NULL DEFAULT 0,
  `PerkPlayerConditionID` int NOT NULL DEFAULT 0,
  `RespecCost` int NOT NULL DEFAULT 0,
  `RespecCostCurrencyTypesID` int NOT NULL DEFAULT 0,
  `RespecDurationSecs` int NOT NULL DEFAULT 0,
  `RespecGoldCost` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_talent
-- ----------------------------

-- ----------------------------
-- Table structure for garr_talent_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_talent_locale`;
CREATE TABLE `garr_talent_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_talent_locale
-- ----------------------------

-- ----------------------------
-- Table structure for garr_talent_tree
-- ----------------------------
DROP TABLE IF EXISTS `garr_talent_tree`;
CREATE TABLE `garr_talent_tree`  (
  `ID` int NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxTiers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` int NOT NULL DEFAULT 0,
  `GarrTypeID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_talent_tree
-- ----------------------------

-- ----------------------------
-- Table structure for garr_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_type`;
CREATE TABLE `garr_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `PrimaryCurrencyTypeID` int NOT NULL DEFAULT 0,
  `SecondaryCurrencyTypeID` int NOT NULL DEFAULT 0,
  `ExpansionID` int NOT NULL DEFAULT 0,
  `MapIDs1` int NOT NULL DEFAULT 0,
  `MapIDs2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_type
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ui_anim_class_info
-- ----------------------------
DROP TABLE IF EXISTS `garr_ui_anim_class_info`;
CREATE TABLE `garr_ui_anim_class_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `ImpactDelaySecs` float NOT NULL DEFAULT 0,
  `GarrClassSpecID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MovementType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CastKit` int NOT NULL DEFAULT 0,
  `ImpactKit` int NOT NULL DEFAULT 0,
  `TargetImpactKit` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ui_anim_class_info
-- ----------------------------

-- ----------------------------
-- Table structure for garr_ui_anim_race_info
-- ----------------------------
DROP TABLE IF EXISTS `garr_ui_anim_race_info`;
CREATE TABLE `garr_ui_anim_race_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaleScale` float NOT NULL DEFAULT 0,
  `MaleHeight` float NOT NULL DEFAULT 0,
  `MaleSingleModelScale` float NOT NULL DEFAULT 0,
  `MaleSingleModelHeight` float NOT NULL DEFAULT 0,
  `MaleFollowerPageScale` float NOT NULL DEFAULT 0,
  `MaleFollowerPageHeight` float NOT NULL DEFAULT 0,
  `FemaleScale` float NOT NULL DEFAULT 0,
  `FemaleHeight` float NOT NULL DEFAULT 0,
  `FemaleSingleModelScale` float NOT NULL DEFAULT 0,
  `FemaleSingleModelHeight` float NOT NULL DEFAULT 0,
  `FemaleFollowerPageScale` float NOT NULL DEFAULT 0,
  `FemaleFollowerPageHeight` float NOT NULL DEFAULT 0,
  `GarrFollRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garr_ui_anim_race_info
-- ----------------------------

-- ----------------------------
-- Table structure for gem_properties
-- ----------------------------
DROP TABLE IF EXISTS `gem_properties`;
CREATE TABLE `gem_properties`  (
  `ID` int NOT NULL DEFAULT 0,
  `Type` int NOT NULL DEFAULT 0,
  `EnchantID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gem_properties
-- ----------------------------

-- ----------------------------
-- Table structure for global_strings
-- ----------------------------
DROP TABLE IF EXISTS `global_strings`;
CREATE TABLE `global_strings`  (
  `ID` int NOT NULL DEFAULT 0,
  `BaseTag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TagText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of global_strings
-- ----------------------------

-- ----------------------------
-- Table structure for global_strings_locale
-- ----------------------------
DROP TABLE IF EXISTS `global_strings_locale`;
CREATE TABLE `global_strings_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `BaseTag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TagText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of global_strings_locale
-- ----------------------------

-- ----------------------------
-- Table structure for glyph_bindable_spell
-- ----------------------------
DROP TABLE IF EXISTS `glyph_bindable_spell`;
CREATE TABLE `glyph_bindable_spell`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `GlyphPropertiesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glyph_bindable_spell
-- ----------------------------

-- ----------------------------
-- Table structure for glyph_exclusive_category
-- ----------------------------
DROP TABLE IF EXISTS `glyph_exclusive_category`;
CREATE TABLE `glyph_exclusive_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glyph_exclusive_category
-- ----------------------------

-- ----------------------------
-- Table structure for glyph_exclusive_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `glyph_exclusive_category_locale`;
CREATE TABLE `glyph_exclusive_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glyph_exclusive_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for glyph_properties
-- ----------------------------
DROP TABLE IF EXISTS `glyph_properties`;
CREATE TABLE `glyph_properties`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `SpellIconID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GlyphType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GlyphExclusiveCategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glyph_properties
-- ----------------------------

-- ----------------------------
-- Table structure for glyph_required_spec
-- ----------------------------
DROP TABLE IF EXISTS `glyph_required_spec`;
CREATE TABLE `glyph_required_spec`  (
  `ID` int NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GlyphPropertiesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glyph_required_spec
-- ----------------------------

-- ----------------------------
-- Table structure for ground_effect_doodad
-- ----------------------------
DROP TABLE IF EXISTS `ground_effect_doodad`;
CREATE TABLE `ground_effect_doodad`  (
  `ID` int NOT NULL DEFAULT 0,
  `Animscale` float NOT NULL DEFAULT 0,
  `PushScale` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ModelFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ground_effect_doodad
-- ----------------------------

-- ----------------------------
-- Table structure for ground_effect_texture
-- ----------------------------
DROP TABLE IF EXISTS `ground_effect_texture`;
CREATE TABLE `ground_effect_texture`  (
  `ID` int NOT NULL DEFAULT 0,
  `DoodadID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Sound` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Density` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ground_effect_texture
-- ----------------------------

-- ----------------------------
-- Table structure for group_finder_activity
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity`;
CREATE TABLE `group_finder_activity`  (
  `ID` int NOT NULL DEFAULT 0,
  `FullName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ShortName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MinGearLevelSuggestion` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GroupFinderCategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GroupFinderActivityGrpID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevelSuggestion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_finder_activity
-- ----------------------------

-- ----------------------------
-- Table structure for group_finder_activity_grp
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity_grp`;
CREATE TABLE `group_finder_activity_grp`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_finder_activity_grp
-- ----------------------------

-- ----------------------------
-- Table structure for group_finder_activity_grp_locale
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity_grp_locale`;
CREATE TABLE `group_finder_activity_grp_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_finder_activity_grp_locale
-- ----------------------------

-- ----------------------------
-- Table structure for group_finder_activity_locale
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity_locale`;
CREATE TABLE `group_finder_activity_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FullName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ShortName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_finder_activity_locale
-- ----------------------------

-- ----------------------------
-- Table structure for group_finder_category
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_category`;
CREATE TABLE `group_finder_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_finder_category
-- ----------------------------

-- ----------------------------
-- Table structure for group_finder_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_category_locale`;
CREATE TABLE `group_finder_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_finder_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for guild_color_background
-- ----------------------------
DROP TABLE IF EXISTS `guild_color_background`;
CREATE TABLE `guild_color_background`  (
  `ID` int NOT NULL DEFAULT 0,
  `Red` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_color_background
-- ----------------------------

-- ----------------------------
-- Table structure for guild_color_border
-- ----------------------------
DROP TABLE IF EXISTS `guild_color_border`;
CREATE TABLE `guild_color_border`  (
  `ID` int NOT NULL DEFAULT 0,
  `Red` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_color_border
-- ----------------------------

-- ----------------------------
-- Table structure for guild_color_emblem
-- ----------------------------
DROP TABLE IF EXISTS `guild_color_emblem`;
CREATE TABLE `guild_color_emblem`  (
  `ID` int NOT NULL DEFAULT 0,
  `Red` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_color_emblem
-- ----------------------------

-- ----------------------------
-- Table structure for guild_perk_spells
-- ----------------------------
DROP TABLE IF EXISTS `guild_perk_spells`;
CREATE TABLE `guild_perk_spells`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_perk_spells
-- ----------------------------

-- ----------------------------
-- Table structure for heirloom
-- ----------------------------
DROP TABLE IF EXISTS `heirloom`;
CREATE TABLE `heirloom`  (
  `SourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ItemID` int NOT NULL DEFAULT 0,
  `LegacyItemID` int NOT NULL DEFAULT 0,
  `LegacyUpgradedItemID` int NOT NULL DEFAULT 0,
  `StaticUpgradedItemID` int NOT NULL DEFAULT 0,
  `UpgradeItemID1` int NOT NULL DEFAULT 0,
  `UpgradeItemID2` int NOT NULL DEFAULT 0,
  `UpgradeItemID3` int NOT NULL DEFAULT 0,
  `UpgradeItemBonusListID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeItemBonusListID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeItemBonusListID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of heirloom
-- ----------------------------

-- ----------------------------
-- Table structure for heirloom_locale
-- ----------------------------
DROP TABLE IF EXISTS `heirloom_locale`;
CREATE TABLE `heirloom_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of heirloom_locale
-- ----------------------------

-- ----------------------------
-- Table structure for helmet_anim_scaling
-- ----------------------------
DROP TABLE IF EXISTS `helmet_anim_scaling`;
CREATE TABLE `helmet_anim_scaling`  (
  `ID` int NOT NULL DEFAULT 0,
  `Amount` float NOT NULL DEFAULT 0,
  `RaceID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of helmet_anim_scaling
-- ----------------------------

-- ----------------------------
-- Table structure for helmet_geoset_vis_data
-- ----------------------------
DROP TABLE IF EXISTS `helmet_geoset_vis_data`;
CREATE TABLE `helmet_geoset_vis_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `HideGeoset1` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset2` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset3` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset4` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset5` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset6` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset7` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset8` int UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset9` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of helmet_geoset_vis_data
-- ----------------------------

-- ----------------------------
-- Table structure for highlight_color
-- ----------------------------
DROP TABLE IF EXISTS `highlight_color`;
CREATE TABLE `highlight_color`  (
  `ID` int NOT NULL DEFAULT 0,
  `StartColor` int UNSIGNED NOT NULL DEFAULT 0,
  `MidColor` int UNSIGNED NOT NULL DEFAULT 0,
  `EndColor` int UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of highlight_color
-- ----------------------------

-- ----------------------------
-- Table structure for holiday_descriptions
-- ----------------------------
DROP TABLE IF EXISTS `holiday_descriptions`;
CREATE TABLE `holiday_descriptions`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holiday_descriptions
-- ----------------------------

-- ----------------------------
-- Table structure for holiday_descriptions_locale
-- ----------------------------
DROP TABLE IF EXISTS `holiday_descriptions_locale`;
CREATE TABLE `holiday_descriptions_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holiday_descriptions_locale
-- ----------------------------

-- ----------------------------
-- Table structure for holiday_names
-- ----------------------------
DROP TABLE IF EXISTS `holiday_names`;
CREATE TABLE `holiday_names`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holiday_names
-- ----------------------------

-- ----------------------------
-- Table structure for holiday_names_locale
-- ----------------------------
DROP TABLE IF EXISTS `holiday_names_locale`;
CREATE TABLE `holiday_names_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holiday_names_locale
-- ----------------------------

-- ----------------------------
-- Table structure for holidays
-- ----------------------------
DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays`  (
  `ID` int NOT NULL DEFAULT 0,
  `Date1` int NOT NULL DEFAULT 0,
  `Date2` int NOT NULL DEFAULT 0,
  `Date3` int NOT NULL DEFAULT 0,
  `Date4` int NOT NULL DEFAULT 0,
  `Date5` int NOT NULL DEFAULT 0,
  `Date6` int NOT NULL DEFAULT 0,
  `Date7` int NOT NULL DEFAULT 0,
  `Date8` int NOT NULL DEFAULT 0,
  `Date9` int NOT NULL DEFAULT 0,
  `Date10` int NOT NULL DEFAULT 0,
  `Date11` int NOT NULL DEFAULT 0,
  `Date12` int NOT NULL DEFAULT 0,
  `Date13` int NOT NULL DEFAULT 0,
  `Date14` int NOT NULL DEFAULT 0,
  `Date15` int NOT NULL DEFAULT 0,
  `Date16` int NOT NULL DEFAULT 0,
  `Duration1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration9` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Duration10` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Region` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Looping` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags9` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags10` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFilterType` tinyint NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HolidayNameID` int NOT NULL DEFAULT 0,
  `HolidayDescriptionID` int NOT NULL DEFAULT 0,
  `TextureFileDataID1` int NOT NULL DEFAULT 0,
  `TextureFileDataID2` int NOT NULL DEFAULT 0,
  `TextureFileDataID3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holidays
-- ----------------------------

-- ----------------------------
-- Table structure for hotfix
-- ----------------------------
DROP TABLE IF EXISTS `hotfix`;
CREATE TABLE `hotfix`  (
  `ID` int NOT NULL DEFAULT 0,
  `Tablename` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ObjectID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotfix
-- ----------------------------

-- ----------------------------
-- Table structure for hotfix_data
-- ----------------------------
DROP TABLE IF EXISTS `hotfix_data`;
CREATE TABLE `hotfix_data`  (
  `Id` int UNSIGNED NOT NULL DEFAULT 0,
  `TableHash` int UNSIGNED NOT NULL DEFAULT 0,
  `RecordID` int NOT NULL,
  `Timestamp` int UNSIGNED NOT NULL DEFAULT 0,
  `Deleted` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`, `TableHash`, `RecordID`, `Timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotfix_data
-- ----------------------------
INSERT INTO `hotfix_data` VALUES (1, 1073915313, 35197, 0, 0);

-- ----------------------------
-- Table structure for hotfix_locale
-- ----------------------------
DROP TABLE IF EXISTS `hotfix_locale`;
CREATE TABLE `hotfix_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Tablename_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotfix_locale
-- ----------------------------

-- ----------------------------
-- Table structure for import_price_armor
-- ----------------------------
DROP TABLE IF EXISTS `import_price_armor`;
CREATE TABLE `import_price_armor`  (
  `ID` int NOT NULL DEFAULT 0,
  `ClothModifier` float NOT NULL DEFAULT 0,
  `LeatherModifier` float NOT NULL DEFAULT 0,
  `ChainModifier` float NOT NULL DEFAULT 0,
  `PlateModifier` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of import_price_armor
-- ----------------------------

-- ----------------------------
-- Table structure for import_price_quality
-- ----------------------------
DROP TABLE IF EXISTS `import_price_quality`;
CREATE TABLE `import_price_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of import_price_quality
-- ----------------------------

-- ----------------------------
-- Table structure for import_price_shield
-- ----------------------------
DROP TABLE IF EXISTS `import_price_shield`;
CREATE TABLE `import_price_shield`  (
  `ID` int NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of import_price_shield
-- ----------------------------

-- ----------------------------
-- Table structure for import_price_weapon
-- ----------------------------
DROP TABLE IF EXISTS `import_price_weapon`;
CREATE TABLE `import_price_weapon`  (
  `ID` int NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of import_price_weapon
-- ----------------------------

-- ----------------------------
-- Table structure for invasion_client_data
-- ----------------------------
DROP TABLE IF EXISTS `invasion_client_data`;
CREATE TABLE `invasion_client_data`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconLocation1` float NOT NULL DEFAULT 0,
  `IconLocation2` float NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `WorldStateID` int NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int NOT NULL DEFAULT 0,
  `ScenarioID` int NOT NULL DEFAULT 0,
  `WorldQuestID` int NOT NULL DEFAULT 0,
  `WorldStateValue` int NOT NULL DEFAULT 0,
  `InvasionEnabledWorldStateID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invasion_client_data
-- ----------------------------

-- ----------------------------
-- Table structure for invasion_client_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `invasion_client_data_locale`;
CREATE TABLE `invasion_client_data_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invasion_client_data_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `ID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SubclassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundOverrideSubclass` tinyint NOT NULL DEFAULT 0,
  `Material` tinyint NOT NULL DEFAULT 0,
  `InventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SheatheType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemGroupSoundsID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (95998, 774569, 4, 2, -1, 8, 1, 0, 7, 23911);

-- ----------------------------
-- Table structure for item_appearance
-- ----------------------------
DROP TABLE IF EXISTS `item_appearance`;
CREATE TABLE `item_appearance`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemDisplayInfoID` int NOT NULL DEFAULT 0,
  `DefaultIconFileDataID` int NOT NULL DEFAULT 0,
  `UiOrder` int NOT NULL DEFAULT 0,
  `DisplayType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_appearance
-- ----------------------------
INSERT INTO `item_appearance` VALUES (29602, 133785, 0, 2526900, 11, 0);

-- ----------------------------
-- Table structure for item_appearance_x_ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `item_appearance_x_ui_camera`;
CREATE TABLE `item_appearance_x_ui_camera`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemAppearanceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_appearance_x_ui_camera
-- ----------------------------

-- ----------------------------
-- Table structure for item_armor_quality
-- ----------------------------
DROP TABLE IF EXISTS `item_armor_quality`;
CREATE TABLE `item_armor_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `Qualitymod1` float NOT NULL DEFAULT 0,
  `Qualitymod2` float NOT NULL DEFAULT 0,
  `Qualitymod3` float NOT NULL DEFAULT 0,
  `Qualitymod4` float NOT NULL DEFAULT 0,
  `Qualitymod5` float NOT NULL DEFAULT 0,
  `Qualitymod6` float NOT NULL DEFAULT 0,
  `Qualitymod7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_armor_quality
-- ----------------------------

-- ----------------------------
-- Table structure for item_armor_shield
-- ----------------------------
DROP TABLE IF EXISTS `item_armor_shield`;
CREATE TABLE `item_armor_shield`  (
  `ID` int NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_armor_shield
-- ----------------------------

-- ----------------------------
-- Table structure for item_armor_total
-- ----------------------------
DROP TABLE IF EXISTS `item_armor_total`;
CREATE TABLE `item_armor_total`  (
  `ID` int NOT NULL DEFAULT 0,
  `Cloth` float NOT NULL DEFAULT 0,
  `Leather` float NOT NULL DEFAULT 0,
  `Mail` float NOT NULL DEFAULT 0,
  `Plate` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_armor_total
-- ----------------------------

-- ----------------------------
-- Table structure for item_bag_family
-- ----------------------------
DROP TABLE IF EXISTS `item_bag_family`;
CREATE TABLE `item_bag_family`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_bag_family
-- ----------------------------

-- ----------------------------
-- Table structure for item_bag_family_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_bag_family_locale`;
CREATE TABLE `item_bag_family_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_bag_family_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_bonus
-- ----------------------------
DROP TABLE IF EXISTS `item_bonus`;
CREATE TABLE `item_bonus`  (
  `ID` int NOT NULL DEFAULT 0,
  `Value1` int NOT NULL DEFAULT 0,
  `Value2` int NOT NULL DEFAULT 0,
  `Value3` int NOT NULL DEFAULT 0,
  `ParentItemBonusListID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for item_bonus_list_level_delta
-- ----------------------------
DROP TABLE IF EXISTS `item_bonus_list_level_delta`;
CREATE TABLE `item_bonus_list_level_delta`  (
  `ItemLevelDelta` smallint NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_bonus_list_level_delta
-- ----------------------------

-- ----------------------------
-- Table structure for item_bonus_tree_node
-- ----------------------------
DROP TABLE IF EXISTS `item_bonus_tree_node`;
CREATE TABLE `item_bonus_tree_node`  (
  `ID` int NOT NULL DEFAULT 0,
  `ChildItemBonusTreeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChildItemBonusListID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChildItemLevelSelectorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemContext` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BonusTreeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_bonus_tree_node
-- ----------------------------
INSERT INTO `item_bonus_tree_node` VALUES (1834, 0, 3408, 0, 13, 524, 26124);

-- ----------------------------
-- Table structure for item_child_equipment
-- ----------------------------
DROP TABLE IF EXISTS `item_child_equipment`;
CREATE TABLE `item_child_equipment`  (
  `ID` int NOT NULL DEFAULT 0,
  `ChildItemID` int NOT NULL DEFAULT 0,
  `ChildItemEquipSlot` tinyint NOT NULL DEFAULT 0,
  `ItemID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_child_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for item_class
-- ----------------------------
DROP TABLE IF EXISTS `item_class`;
CREATE TABLE `item_class`  (
  `ID` int NOT NULL DEFAULT 0,
  `ClassName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PriceModifier` float NOT NULL DEFAULT 0,
  `OldEnumValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Class` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_class
-- ----------------------------

-- ----------------------------
-- Table structure for item_class_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_class_locale`;
CREATE TABLE `item_class_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ClassName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_class_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_currency_cost
-- ----------------------------
DROP TABLE IF EXISTS `item_currency_cost`;
CREATE TABLE `item_currency_cost`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_currency_cost
-- ----------------------------

-- ----------------------------
-- Table structure for item_damage_ammo
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_ammo`;
CREATE TABLE `item_damage_ammo`  (
  `ID` int NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_damage_ammo
-- ----------------------------

-- ----------------------------
-- Table structure for item_damage_one_hand
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_one_hand`;
CREATE TABLE `item_damage_one_hand`  (
  `ID` int NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_damage_one_hand
-- ----------------------------

-- ----------------------------
-- Table structure for item_damage_one_hand_caster
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_one_hand_caster`;
CREATE TABLE `item_damage_one_hand_caster`  (
  `ID` int NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_damage_one_hand_caster
-- ----------------------------

-- ----------------------------
-- Table structure for item_damage_two_hand
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_two_hand`;
CREATE TABLE `item_damage_two_hand`  (
  `ID` int NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_damage_two_hand
-- ----------------------------

-- ----------------------------
-- Table structure for item_damage_two_hand_caster
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_two_hand_caster`;
CREATE TABLE `item_damage_two_hand_caster`  (
  `ID` int NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_damage_two_hand_caster
-- ----------------------------

-- ----------------------------
-- Table structure for item_disenchant_loot
-- ----------------------------
DROP TABLE IF EXISTS `item_disenchant_loot`;
CREATE TABLE `item_disenchant_loot`  (
  `ID` int NOT NULL DEFAULT 0,
  `MinLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SkillRequired` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Subclass` tinyint NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint NOT NULL DEFAULT 0,
  `ItemClass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_disenchant_loot
-- ----------------------------

-- ----------------------------
-- Table structure for item_display_info
-- ----------------------------
DROP TABLE IF EXISTS `item_display_info`;
CREATE TABLE `item_display_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `ItemRangedDisplayInfoID` int NOT NULL DEFAULT 0,
  `ItemVisual` int NOT NULL DEFAULT 0,
  `ParticleColorID` int NOT NULL DEFAULT 0,
  `OverrideSwooshSoundKitID` int NOT NULL DEFAULT 0,
  `SheatheTransformMatrixID` int NOT NULL DEFAULT 0,
  `ModelType1` int NOT NULL DEFAULT 0,
  `StateSpellVisualKitID` int NOT NULL DEFAULT 0,
  `SheathedSpellVisualKitID` int NOT NULL DEFAULT 0,
  `UnsheathedSpellVisualKitID` int NOT NULL DEFAULT 0,
  `ModelResourcesID1` int NOT NULL DEFAULT 0,
  `ModelResourcesID2` int NOT NULL DEFAULT 0,
  `ModelMaterialResourcesID1` int NOT NULL DEFAULT 0,
  `ModelMaterialResourcesID2` int NOT NULL DEFAULT 0,
  `GeosetGroup1` int NOT NULL DEFAULT 0,
  `GeosetGroup2` int NOT NULL DEFAULT 0,
  `GeosetGroup3` int NOT NULL DEFAULT 0,
  `GeosetGroup4` int NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup1` int NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup2` int NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup3` int NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup4` int NOT NULL DEFAULT 0,
  `HelmetGeosetVis1` int NOT NULL DEFAULT 0,
  `HelmetGeosetVis2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_display_info
-- ----------------------------

-- ----------------------------
-- Table structure for item_display_info_material_res
-- ----------------------------
DROP TABLE IF EXISTS `item_display_info_material_res`;
CREATE TABLE `item_display_info_material_res`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaterialResourcesID` int NOT NULL DEFAULT 0,
  `ComponentSection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_display_info_material_res
-- ----------------------------

-- ----------------------------
-- Table structure for item_display_x_ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `item_display_x_ui_camera`;
CREATE TABLE `item_display_x_ui_camera`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemDisplayInfoID` int NOT NULL DEFAULT 0,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_display_x_ui_camera
-- ----------------------------

-- ----------------------------
-- Table structure for item_effect
-- ----------------------------
DROP TABLE IF EXISTS `item_effect`;
CREATE TABLE `item_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `CoolDownMSec` int NOT NULL DEFAULT 0,
  `CategoryCoolDownMSec` int NOT NULL DEFAULT 0,
  `Charges` smallint NOT NULL DEFAULT 0,
  `SpellCategoryID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LegacySlotIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TriggerType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_effect
-- ----------------------------
INSERT INTO `item_effect` VALUES (116, 434, 0, 1000, -1, 59, 0, 0, 0, 228700, 0);

-- ----------------------------
-- Table structure for item_extended_cost
-- ----------------------------
DROP TABLE IF EXISTS `item_extended_cost`;
CREATE TABLE `item_extended_cost`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID1` int NOT NULL DEFAULT 0,
  `ItemID2` int NOT NULL DEFAULT 0,
  `ItemID3` int NOT NULL DEFAULT 0,
  `ItemID4` int NOT NULL DEFAULT 0,
  `ItemID5` int NOT NULL DEFAULT 0,
  `CurrencyCount1` int NOT NULL DEFAULT 0,
  `CurrencyCount2` int NOT NULL DEFAULT 0,
  `CurrencyCount3` int NOT NULL DEFAULT 0,
  `CurrencyCount4` int NOT NULL DEFAULT 0,
  `CurrencyCount5` int NOT NULL DEFAULT 0,
  `ItemCount1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredArenaRating` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArenaBracket` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAchievement` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_extended_cost
-- ----------------------------
INSERT INTO `item_extended_cost` VALUES (15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for item_group_sounds
-- ----------------------------
DROP TABLE IF EXISTS `item_group_sounds`;
CREATE TABLE `item_group_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `Sound1` int NOT NULL DEFAULT 0,
  `Sound2` int NOT NULL DEFAULT 0,
  `Sound3` int NOT NULL DEFAULT 0,
  `Sound4` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_group_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for item_level_selector
-- ----------------------------
DROP TABLE IF EXISTS `item_level_selector`;
CREATE TABLE `item_level_selector`  (
  `ID` int NOT NULL DEFAULT 0,
  `MinItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelSelectorQualitySetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_level_selector
-- ----------------------------

-- ----------------------------
-- Table structure for item_level_selector_quality
-- ----------------------------
DROP TABLE IF EXISTS `item_level_selector_quality`;
CREATE TABLE `item_level_selector_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `QualityItemBonusListID` int NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelSelectorQualitySetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_level_selector_quality
-- ----------------------------

-- ----------------------------
-- Table structure for item_level_selector_quality_set
-- ----------------------------
DROP TABLE IF EXISTS `item_level_selector_quality_set`;
CREATE TABLE `item_level_selector_quality_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `IlvlRare` smallint UNSIGNED NOT NULL DEFAULT 0,
  `IlvlEpic` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_level_selector_quality_set
-- ----------------------------

-- ----------------------------
-- Table structure for item_limit_category
-- ----------------------------
DROP TABLE IF EXISTS `item_limit_category`;
CREATE TABLE `item_limit_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Quantity` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_limit_category
-- ----------------------------
INSERT INTO `item_limit_category` VALUES (365, 'special item', 1, 1, 0);

-- ----------------------------
-- Table structure for item_limit_category_condition
-- ----------------------------
DROP TABLE IF EXISTS `item_limit_category_condition`;
CREATE TABLE `item_limit_category_condition`  (
  `ID` int NOT NULL DEFAULT 0,
  `AddQuantity` tinyint NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `ParentItemLimitCategoryID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_limit_category_condition
-- ----------------------------

-- ----------------------------
-- Table structure for item_limit_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_limit_category_locale`;
CREATE TABLE `item_limit_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_limit_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_modified_appearance
-- ----------------------------
DROP TABLE IF EXISTS `item_modified_appearance`;
CREATE TABLE `item_modified_appearance`  (
  `ItemID` int NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `ItemAppearanceModifierID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemAppearanceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TransmogSourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_modified_appearance
-- ----------------------------
INSERT INTO `item_modified_appearance` VALUES (95998, 50474, 0, 20082, 0, 0, 23911);

-- ----------------------------
-- Table structure for item_modified_appearance_extra
-- ----------------------------
DROP TABLE IF EXISTS `item_modified_appearance_extra`;
CREATE TABLE `item_modified_appearance_extra`  (
  `ID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `UnequippedIconFileDataID` int NOT NULL DEFAULT 0,
  `SheatheType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayWeaponSubclassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayInventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_modified_appearance_extra
-- ----------------------------

-- ----------------------------
-- Table structure for item_name_description
-- ----------------------------
DROP TABLE IF EXISTS `item_name_description`;
CREATE TABLE `item_name_description`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Color` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_name_description
-- ----------------------------

-- ----------------------------
-- Table structure for item_name_description_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_name_description_locale`;
CREATE TABLE `item_name_description_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_name_description_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_pet_food
-- ----------------------------
DROP TABLE IF EXISTS `item_pet_food`;
CREATE TABLE `item_pet_food`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_pet_food
-- ----------------------------

-- ----------------------------
-- Table structure for item_pet_food_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_pet_food_locale`;
CREATE TABLE `item_pet_food_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_pet_food_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_price_base
-- ----------------------------
DROP TABLE IF EXISTS `item_price_base`;
CREATE TABLE `item_price_base`  (
  `ID` int NOT NULL DEFAULT 0,
  `Armor` float NOT NULL DEFAULT 0,
  `Weapon` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_price_base
-- ----------------------------

-- ----------------------------
-- Table structure for item_random_properties
-- ----------------------------
DROP TABLE IF EXISTS `item_random_properties`;
CREATE TABLE `item_random_properties`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Enchantment1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_random_properties
-- ----------------------------

-- ----------------------------
-- Table structure for item_random_properties_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_random_properties_locale`;
CREATE TABLE `item_random_properties_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_random_properties_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_random_suffix
-- ----------------------------
DROP TABLE IF EXISTS `item_random_suffix`;
CREATE TABLE `item_random_suffix`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Enchantment1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_random_suffix
-- ----------------------------

-- ----------------------------
-- Table structure for item_random_suffix_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_random_suffix_locale`;
CREATE TABLE `item_random_suffix_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_random_suffix_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_ranged_display_info
-- ----------------------------
DROP TABLE IF EXISTS `item_ranged_display_info`;
CREATE TABLE `item_ranged_display_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `MissileSpellVisualEffectNameID` int NOT NULL DEFAULT 0,
  `QuiverFileDataID` int NOT NULL DEFAULT 0,
  `CastSpellVisualID` int NOT NULL DEFAULT 0,
  `AutoAttackSpellVisualID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_ranged_display_info
-- ----------------------------

-- ----------------------------
-- Table structure for item_search_name
-- ----------------------------
DROP TABLE IF EXISTS `item_search_name`;
CREATE TABLE `item_search_name`  (
  `AllowableRace` bigint UNSIGNED NOT NULL DEFAULT 0,
  `Display` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `Flags1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OverallQualityID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AllowableClass` int NOT NULL DEFAULT 0,
  `RequiredSkill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAbility` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_search_name
-- ----------------------------

-- ----------------------------
-- Table structure for item_search_name_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_search_name_locale`;
CREATE TABLE `item_search_name_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Display_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_search_name_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_set
-- ----------------------------
DROP TABLE IF EXISTS `item_set`;
CREATE TABLE `item_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ItemID1` int NOT NULL DEFAULT 0,
  `ItemID2` int NOT NULL DEFAULT 0,
  `ItemID3` int NOT NULL DEFAULT 0,
  `ItemID4` int NOT NULL DEFAULT 0,
  `ItemID5` int NOT NULL DEFAULT 0,
  `ItemID6` int NOT NULL DEFAULT 0,
  `ItemID7` int NOT NULL DEFAULT 0,
  `ItemID8` int NOT NULL DEFAULT 0,
  `ItemID9` int NOT NULL DEFAULT 0,
  `ItemID10` int NOT NULL DEFAULT 0,
  `ItemID11` int NOT NULL DEFAULT 0,
  `ItemID12` int NOT NULL DEFAULT 0,
  `ItemID13` int NOT NULL DEFAULT 0,
  `ItemID14` int NOT NULL DEFAULT 0,
  `ItemID15` int NOT NULL DEFAULT 0,
  `ItemID16` int NOT NULL DEFAULT 0,
  `ItemID17` int NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` int NOT NULL DEFAULT 0,
  `SetFlags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_set
-- ----------------------------

-- ----------------------------
-- Table structure for item_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_set_locale`;
CREATE TABLE `item_set_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_set_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_set_spell
-- ----------------------------
DROP TABLE IF EXISTS `item_set_spell`;
CREATE TABLE `item_set_spell`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `ChrSpecID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Threshold` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_set_spell
-- ----------------------------

-- ----------------------------
-- Table structure for item_sparse
-- ----------------------------
DROP TABLE IF EXISTS `item_sparse`;
CREATE TABLE `item_sparse`  (
  `ID` int NOT NULL DEFAULT 0,
  `AllowableRace` bigint NOT NULL DEFAULT 0,
  `Display` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Display1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Display2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Display3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags4` int UNSIGNED NOT NULL DEFAULT 0,
  `PriceRandomValue` float NOT NULL DEFAULT 0,
  `PriceVariance` float NOT NULL DEFAULT 0,
  `VendorStackCount` int NOT NULL DEFAULT 0,
  `BuyPrice` int NOT NULL DEFAULT 0,
  `SellPrice` int NOT NULL DEFAULT 0,
  `RequiredAbility` int NOT NULL DEFAULT 0,
  `MaxCount` int NOT NULL DEFAULT 0,
  `Stackable` int NOT NULL DEFAULT 0,
  `StatPercentEditor1` int NOT NULL DEFAULT 0,
  `StatPercentEditor2` int NOT NULL DEFAULT 0,
  `StatPercentEditor3` int NOT NULL DEFAULT 0,
  `StatPercentEditor4` int NOT NULL DEFAULT 0,
  `StatPercentEditor5` int NOT NULL DEFAULT 0,
  `StatPercentEditor6` int NOT NULL DEFAULT 0,
  `StatPercentEditor7` int NOT NULL DEFAULT 0,
  `StatPercentEditor8` int NOT NULL DEFAULT 0,
  `StatPercentEditor9` int NOT NULL DEFAULT 0,
  `StatPercentEditor10` int NOT NULL DEFAULT 0,
  `StatPercentageOfSocket1` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket2` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket3` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket4` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket5` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket6` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket7` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket8` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket9` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket10` float NOT NULL DEFAULT 0,
  `ItemRange` float NOT NULL DEFAULT 0,
  `BagFamily` int NOT NULL DEFAULT 0,
  `QualityModifier` float NOT NULL DEFAULT 0,
  `DurationInInventory` int NOT NULL DEFAULT 0,
  `DmgVariance` float NOT NULL DEFAULT 0,
  `AllowableClass` smallint NOT NULL DEFAULT -1,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemStatValue1` smallint NOT NULL DEFAULT 0,
  `ItemStatValue2` smallint NOT NULL DEFAULT 0,
  `ItemStatValue3` smallint NOT NULL DEFAULT 0,
  `ItemStatValue4` smallint NOT NULL DEFAULT 0,
  `ItemStatValue5` smallint NOT NULL DEFAULT 0,
  `ItemStatValue6` smallint NOT NULL DEFAULT 0,
  `ItemStatValue7` smallint NOT NULL DEFAULT 0,
  `ItemStatValue8` smallint NOT NULL DEFAULT 0,
  `ItemStatValue9` smallint NOT NULL DEFAULT 0,
  `ItemStatValue10` smallint NOT NULL DEFAULT 0,
  `ScalingStatDistributionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemDelay` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `StartQuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LockID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RandomSelect` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemRandomSuffixGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemSet` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneBound` smallint UNSIGNED NOT NULL DEFAULT 0,
  `InstanceBound` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TotemCategoryID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SocketMatch_enchantment_id` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GemProperties` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LimitCategory` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredHoliday` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredTransmogHoliday` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemNameDescriptionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OverallQualityID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint NOT NULL DEFAULT 0,
  `RequiredPVPRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredPVPMedal` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ContainerSlots` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StatModifierBonusStat1` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat2` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat3` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat4` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat5` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat6` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat7` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat8` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat9` smallint NOT NULL DEFAULT 0,
  `StatModifierBonusStat10` smallint NOT NULL DEFAULT 0,
  `DamageDamageType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Bonding` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PageMaterialID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Material` tinyint NOT NULL DEFAULT 0,
  `SheatheType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SocketType1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SocketType2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SocketType3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellWeightCategory` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellWeight` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sparse
-- ----------------------------
INSERT INTO `item_sparse` VALUES (8164, -1, 'Test Stationery', '', '', '', '', 16, 0, 8388608, 0, 0, 0, 0, 10, 2, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21737);

-- ----------------------------
-- Table structure for item_sparse_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_sparse_locale`;
CREATE TABLE `item_sparse_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Display_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Display1_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Display2_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Display3_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sparse_locale
-- ----------------------------
INSERT INTO `item_sparse_locale` VALUES (133755, 'enUS', 'Underlight Angler', '', '', '', '', 24015);

-- ----------------------------
-- Table structure for item_spec
-- ----------------------------
DROP TABLE IF EXISTS `item_spec`;
CREATE TABLE `item_spec`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpecializationID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryStat` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SecondaryStat` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_spec
-- ----------------------------

-- ----------------------------
-- Table structure for item_spec_override
-- ----------------------------
DROP TABLE IF EXISTS `item_spec_override`;
CREATE TABLE `item_spec_override`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpecID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_spec_override
-- ----------------------------

-- ----------------------------
-- Table structure for item_sub_class
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class`;
CREATE TABLE `item_sub_class`  (
  `ID` int NOT NULL DEFAULT 0,
  `DisplayName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerboseName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SubClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PrerequisiteProficiency` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PostrequisiteProficiency` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSwingSize` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AuctionHouseSortOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sub_class
-- ----------------------------

-- ----------------------------
-- Table structure for item_sub_class_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class_locale`;
CREATE TABLE `item_sub_class_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerboseName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sub_class_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_sub_class_mask
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class_mask`;
CREATE TABLE `item_sub_class_mask`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Mask` int NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sub_class_mask
-- ----------------------------

-- ----------------------------
-- Table structure for item_sub_class_mask_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class_mask_locale`;
CREATE TABLE `item_sub_class_mask_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sub_class_mask_locale
-- ----------------------------

-- ----------------------------
-- Table structure for item_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `item_upgrade`;
CREATE TABLE `item_upgrade`  (
  `ID` int NOT NULL DEFAULT 0,
  `CurrencyAmount` int NOT NULL DEFAULT 0,
  `PrerequisiteID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemUpgradePathID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelIncrement` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_upgrade
-- ----------------------------

-- ----------------------------
-- Table structure for item_visuals
-- ----------------------------
DROP TABLE IF EXISTS `item_visuals`;
CREATE TABLE `item_visuals`  (
  `ID` int NOT NULL DEFAULT 0,
  `ModelFileID1` int NOT NULL DEFAULT 0,
  `ModelFileID2` int NOT NULL DEFAULT 0,
  `ModelFileID3` int NOT NULL DEFAULT 0,
  `ModelFileID4` int NOT NULL DEFAULT 0,
  `ModelFileID5` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_visuals
-- ----------------------------

-- ----------------------------
-- Table structure for item_x_bonus_tree
-- ----------------------------
DROP TABLE IF EXISTS `item_x_bonus_tree`;
CREATE TABLE `item_x_bonus_tree`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemBonusTreeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_x_bonus_tree
-- ----------------------------

-- ----------------------------
-- Table structure for itemsparse
-- ----------------------------
DROP TABLE IF EXISTS `itemsparse`;
CREATE TABLE `itemsparse`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `AllowableRace` bigint NOT NULL DEFAULT 0,
  `Name1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Name4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags4` int UNSIGNED NOT NULL DEFAULT 0,
  `PriceRandomValue` float NOT NULL DEFAULT 0,
  `PriceVariance` float NOT NULL DEFAULT 0,
  `VendorStackCount` int UNSIGNED NOT NULL DEFAULT 0,
  `BuyPrice` int UNSIGNED NOT NULL DEFAULT 0,
  `SellPrice` int UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSpell` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxCount` int NOT NULL DEFAULT 0,
  `Stackable` int NOT NULL DEFAULT 0,
  `StatPercentEditor1` int NOT NULL DEFAULT 0,
  `StatPercentEditor2` int NOT NULL DEFAULT 0,
  `StatPercentEditor3` int NOT NULL DEFAULT 0,
  `StatPercentEditor4` int NOT NULL DEFAULT 0,
  `StatPercentEditor5` int NOT NULL DEFAULT 0,
  `StatPercentEditor6` int NOT NULL DEFAULT 0,
  `StatPercentEditor7` int NOT NULL DEFAULT 0,
  `StatPercentEditor8` int NOT NULL DEFAULT 0,
  `StatPercentEditor9` int NOT NULL DEFAULT 0,
  `StatPercentEditor10` int NOT NULL DEFAULT 0,
  `StatPercentageOfSocket1` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket2` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket3` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket4` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket5` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket6` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket7` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket8` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket9` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket10` float NOT NULL DEFAULT 0,
  `ItemRange` float NOT NULL DEFAULT 0,
  `BagFamily` int UNSIGNED NOT NULL DEFAULT 0,
  `QualityModifier` float NOT NULL DEFAULT 0,
  `DurationInInventory` int UNSIGNED NOT NULL DEFAULT 0,
  `DmgVariance` float NOT NULL DEFAULT 0,
  `AllowableClass` smallint NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredReputationFaction` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemStatValue1` smallint NOT NULL DEFAULT 0,
  `ItemStatValue2` smallint NOT NULL DEFAULT 0,
  `ItemStatValue3` smallint NOT NULL DEFAULT 0,
  `ItemStatValue4` smallint NOT NULL DEFAULT 0,
  `ItemStatValue5` smallint NOT NULL DEFAULT 0,
  `ItemStatValue6` smallint NOT NULL DEFAULT 0,
  `ItemStatValue7` smallint NOT NULL DEFAULT 0,
  `ItemStatValue8` smallint NOT NULL DEFAULT 0,
  `ItemStatValue9` smallint NOT NULL DEFAULT 0,
  `ItemStatValue10` smallint NOT NULL DEFAULT 0,
  `ScalingStatDistribution` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Delay` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PageText` smallint UNSIGNED NOT NULL DEFAULT 0,
  `StartQuest` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LockID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RandomProperty` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RandomSuffix` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemSet` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Area` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Map` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TotemCategory` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SocketBonus` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GemProperties` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLimitCategory` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HolidayID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredTransmogHolidayID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemNameDescriptionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint NOT NULL DEFAULT 0,
  `RequiredHonorRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredCityRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredReputationRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ContainerSlots` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemStatType1` tinyint NOT NULL DEFAULT 0,
  `ItemStatType2` tinyint NOT NULL DEFAULT 0,
  `ItemStatType3` tinyint NOT NULL DEFAULT 0,
  `ItemStatType4` tinyint NOT NULL DEFAULT 0,
  `ItemStatType5` tinyint NOT NULL DEFAULT 0,
  `ItemStatType6` tinyint NOT NULL DEFAULT 0,
  `ItemStatType7` tinyint NOT NULL DEFAULT 0,
  `ItemStatType8` tinyint NOT NULL DEFAULT 0,
  `ItemStatType9` tinyint NOT NULL DEFAULT 0,
  `ItemStatType10` tinyint NOT NULL DEFAULT 0,
  `DamageType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Bonding` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PageMaterial` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Material` tinyint NOT NULL DEFAULT 0,
  `Sheath` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SocketColor1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SocketColor2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SocketColor3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencySubstitutionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencySubstitutionCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredExpansion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of itemsparse
-- ----------------------------
INSERT INTO `itemsparse` VALUES (8164, -1, 'Test Stationery', '', '', '', '', 16, 0, 8388608, 0, 0, 0, 0, 10, 2, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21737);

-- ----------------------------
-- Table structure for journal_encounter
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter`;
CREATE TABLE `journal_encounter`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Map1` float NOT NULL DEFAULT 0,
  `Map2` float NOT NULL DEFAULT 0,
  `DungeonMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FirstSectionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `JournalInstanceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `MapDisplayConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_creature
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_creature`;
CREATE TABLE `journal_encounter_creature`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `UiModelSceneID` int NOT NULL DEFAULT 0,
  `JournalEncounterID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_creature
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_creature_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_creature_locale`;
CREATE TABLE `journal_encounter_creature_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_creature_locale
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_item
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_item`;
CREATE TABLE `journal_encounter_item`  (
  `ItemID` int NOT NULL DEFAULT 0,
  `JournalEncounterID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FactionMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_item
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_locale`;
CREATE TABLE `journal_encounter_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_locale
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_section
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_section`;
CREATE TABLE `journal_encounter_section`  (
  `ID` int NOT NULL DEFAULT 0,
  `Title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BodyText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `IconCreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `IconFileDataID` int NOT NULL DEFAULT 0,
  `JournalEncounterID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NextSiblingSectionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FirstChildSectionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentSectionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `IconFlags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiModelSceneID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_section
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_section_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_section_locale`;
CREATE TABLE `journal_encounter_section_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Title_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BodyText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_section_locale
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_x_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_x_difficulty`;
CREATE TABLE `journal_encounter_x_difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_x_difficulty
-- ----------------------------

-- ----------------------------
-- Table structure for journal_encounter_x_map_loc
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_x_map_loc`;
CREATE TABLE `journal_encounter_x_map_loc`  (
  `ID` int NOT NULL DEFAULT 0,
  `Map1` float NOT NULL DEFAULT 0,
  `Map2` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `JournalEncounterID` int NOT NULL DEFAULT 0,
  `DungeonMapID` int NOT NULL DEFAULT 0,
  `MapDisplayConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_encounter_x_map_loc
-- ----------------------------

-- ----------------------------
-- Table structure for journal_instance
-- ----------------------------
DROP TABLE IF EXISTS `journal_instance`;
CREATE TABLE `journal_instance`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ButtonFileDataID` int NOT NULL DEFAULT 0,
  `ButtonSmallFileDataID` int NOT NULL DEFAULT 0,
  `BackgroundFileDataID` int NOT NULL DEFAULT 0,
  `LoreFileDataID` int NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_instance
-- ----------------------------

-- ----------------------------
-- Table structure for journal_instance_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_instance_locale`;
CREATE TABLE `journal_instance_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_instance_locale
-- ----------------------------

-- ----------------------------
-- Table structure for journal_item_x_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `journal_item_x_difficulty`;
CREATE TABLE `journal_item_x_difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_item_x_difficulty
-- ----------------------------

-- ----------------------------
-- Table structure for journal_section_x_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `journal_section_x_difficulty`;
CREATE TABLE `journal_section_x_difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_section_x_difficulty
-- ----------------------------

-- ----------------------------
-- Table structure for journal_tier
-- ----------------------------
DROP TABLE IF EXISTS `journal_tier`;
CREATE TABLE `journal_tier`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_tier
-- ----------------------------

-- ----------------------------
-- Table structure for journal_tier_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_tier_locale`;
CREATE TABLE `journal_tier_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_tier_locale
-- ----------------------------

-- ----------------------------
-- Table structure for journal_tier_x_instance
-- ----------------------------
DROP TABLE IF EXISTS `journal_tier_x_instance`;
CREATE TABLE `journal_tier_x_instance`  (
  `ID` int NOT NULL DEFAULT 0,
  `JournalTierID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `JournalInstanceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journal_tier_x_instance
-- ----------------------------

-- ----------------------------
-- Table structure for keychain
-- ----------------------------
DROP TABLE IF EXISTS `keychain`;
CREATE TABLE `keychain`  (
  `ID` int NOT NULL DEFAULT 0,
  `Key1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key9` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key10` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key11` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key12` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key13` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key14` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key15` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key16` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key17` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key18` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key19` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key20` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key21` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key22` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key23` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key24` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key25` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key26` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key27` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key28` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key29` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key30` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key31` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key32` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keychain
-- ----------------------------

-- ----------------------------
-- Table structure for keystone_affix
-- ----------------------------
DROP TABLE IF EXISTS `keystone_affix`;
CREATE TABLE `keystone_affix`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Filedataid` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keystone_affix
-- ----------------------------

-- ----------------------------
-- Table structure for keystone_affix_locale
-- ----------------------------
DROP TABLE IF EXISTS `keystone_affix_locale`;
CREATE TABLE `keystone_affix_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keystone_affix_locale
-- ----------------------------

-- ----------------------------
-- Table structure for language_words
-- ----------------------------
DROP TABLE IF EXISTS `language_words`;
CREATE TABLE `language_words`  (
  `ID` int NOT NULL DEFAULT 0,
  `Word` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LanguageID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of language_words
-- ----------------------------

-- ----------------------------
-- Table structure for language_words_locale
-- ----------------------------
DROP TABLE IF EXISTS `language_words_locale`;
CREATE TABLE `language_words_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Word_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of language_words_locale
-- ----------------------------

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of languages
-- ----------------------------

-- ----------------------------
-- Table structure for languages_locale
-- ----------------------------
DROP TABLE IF EXISTS `languages_locale`;
CREATE TABLE `languages_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of languages_locale
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_dungeon_expansion
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_expansion`;
CREATE TABLE `lfg_dungeon_expansion`  (
  `ID` int NOT NULL DEFAULT 0,
  `RandomID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HardLevelMin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `HardLevelMax` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevelMin` int NOT NULL DEFAULT 0,
  `TargetLevelMax` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeon_expansion
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_dungeon_group
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_group`;
CREATE TABLE `lfg_dungeon_group`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `OrderIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentGroupId` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Typeid` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeon_group
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_dungeon_group_locale
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_group_locale`;
CREATE TABLE `lfg_dungeon_group_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeon_group_locale
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_dungeons
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeons`;
CREATE TABLE `lfg_dungeons`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `MinGear` float NOT NULL DEFAULT 0,
  `MaxLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevelMax` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint NOT NULL DEFAULT 0,
  `RandomID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ScenarioID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FinalEncounterID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BonusReputationAmount` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MentorItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredPlayerConditionId` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevelMin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Faction` tinyint NOT NULL DEFAULT 0,
  `ExpansionLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `GroupID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CountTank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CountHealer` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CountDamage` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCountTank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCountHealer` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinCountDamage` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Substruct` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MentorCharLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `IconTextureFileID` int NOT NULL DEFAULT 0,
  `RewardsBgTextureFileID` int NOT NULL DEFAULT 0,
  `PopupBgTextureFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeons
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_dungeons_grouping_map
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeons_grouping_map`;
CREATE TABLE `lfg_dungeons_grouping_map`  (
  `ID` int NOT NULL DEFAULT 0,
  `RandomLfgDungeonsID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GroupID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeons_grouping_map
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_dungeons_locale
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeons_locale`;
CREATE TABLE `lfg_dungeons_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_dungeons_locale
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_role_requirement
-- ----------------------------
DROP TABLE IF EXISTS `lfg_role_requirement`;
CREATE TABLE `lfg_role_requirement`  (
  `ID` int NOT NULL DEFAULT 0,
  `RoleType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `LfgDungeonsId` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lfg_role_requirement
-- ----------------------------

-- ----------------------------
-- Table structure for light
-- ----------------------------
DROP TABLE IF EXISTS `light`;
CREATE TABLE `light`  (
  `ID` int NOT NULL DEFAULT 0,
  `GameCoordsX` float NOT NULL DEFAULT 0,
  `GameCoordsY` float NOT NULL DEFAULT 0,
  `GameCoordsZ` float NOT NULL DEFAULT 0,
  `GameFalloffStart` float NOT NULL DEFAULT 0,
  `GameFalloffEnd` float NOT NULL DEFAULT 0,
  `ContinentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of light
-- ----------------------------

-- ----------------------------
-- Table structure for light_data
-- ----------------------------
DROP TABLE IF EXISTS `light_data`;
CREATE TABLE `light_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `DirectColor` int NOT NULL DEFAULT 0,
  `AmbientColor` int NOT NULL DEFAULT 0,
  `SkyTopColor` int UNSIGNED NOT NULL DEFAULT 0,
  `SkyMiddleColor` int NOT NULL DEFAULT 0,
  `SkyBand1Color` int NOT NULL DEFAULT 0,
  `SkyBand2Color` int UNSIGNED NOT NULL DEFAULT 0,
  `SkySmogColor` int NOT NULL DEFAULT 0,
  `SkyFogColor` int NOT NULL DEFAULT 0,
  `SunColor` int NOT NULL DEFAULT 0,
  `CloudSunColor` int NOT NULL DEFAULT 0,
  `CloudEmissiveColor` int NOT NULL DEFAULT 0,
  `CloudLayer1AmbientColor` int NOT NULL DEFAULT 0,
  `CloudLayer2AmbientColor` int NOT NULL DEFAULT 0,
  `OceanCloseColor` int NOT NULL DEFAULT 0,
  `OceanFarColor` int NOT NULL DEFAULT 0,
  `RiverCloseColor` int NOT NULL DEFAULT 0,
  `RiverFarColor` int NOT NULL DEFAULT 0,
  `ShadowOpacity` int UNSIGNED NOT NULL DEFAULT 0,
  `FogEnd` float NOT NULL DEFAULT 0,
  `FogScaler` float NOT NULL DEFAULT 0,
  `CloudDensity` float NOT NULL DEFAULT 0,
  `FogDensity` float NOT NULL DEFAULT 0,
  `FogHeight` float NOT NULL DEFAULT 0,
  `FogHeightScaler` float NOT NULL DEFAULT 0,
  `FogHeightDensity` float NOT NULL DEFAULT 0,
  `SunFogAngle` float NOT NULL DEFAULT 0,
  `EndFogColorDistance` float NOT NULL DEFAULT 0,
  `SunFogColor` int NOT NULL DEFAULT 0,
  `EndFogColor` int NOT NULL DEFAULT 0,
  `FogHeightColor` int NOT NULL DEFAULT 0,
  `ColorGradingFileDataID` int NOT NULL DEFAULT 0,
  `HorizonAmbientColor` int NOT NULL DEFAULT 0,
  `GroundAmbientColor` int NOT NULL DEFAULT 0,
  `LightParamID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Time` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of light_data
-- ----------------------------

-- ----------------------------
-- Table structure for light_params
-- ----------------------------
DROP TABLE IF EXISTS `light_params`;
CREATE TABLE `light_params`  (
  `Glow` float NOT NULL DEFAULT 0,
  `WaterShallowAlpha` float NOT NULL DEFAULT 0,
  `WaterDeepAlpha` float NOT NULL DEFAULT 0,
  `OceanShallowAlpha` float NOT NULL DEFAULT 0,
  `OceanDeepAlpha` float NOT NULL DEFAULT 0,
  `OverrideCelestialSphere1` float NOT NULL DEFAULT 0,
  `OverrideCelestialSphere2` float NOT NULL DEFAULT 0,
  `OverrideCelestialSphere3` float NOT NULL DEFAULT 0,
  `LightSkyboxID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HighlightSky` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CloudTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of light_params
-- ----------------------------

-- ----------------------------
-- Table structure for light_skybox
-- ----------------------------
DROP TABLE IF EXISTS `light_skybox`;
CREATE TABLE `light_skybox`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CelestialSkyboxFileDataID` int NOT NULL DEFAULT 0,
  `SkyboxFileDataID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of light_skybox
-- ----------------------------

-- ----------------------------
-- Table structure for light_skybox_locale
-- ----------------------------
DROP TABLE IF EXISTS `light_skybox_locale`;
CREATE TABLE `light_skybox_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of light_skybox_locale
-- ----------------------------

-- ----------------------------
-- Table structure for liquid_material
-- ----------------------------
DROP TABLE IF EXISTS `liquid_material`;
CREATE TABLE `liquid_material`  (
  `ID` int NOT NULL DEFAULT 0,
  `LVF` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liquid_material
-- ----------------------------

-- ----------------------------
-- Table structure for liquid_object
-- ----------------------------
DROP TABLE IF EXISTS `liquid_object`;
CREATE TABLE `liquid_object`  (
  `ID` int NOT NULL DEFAULT 0,
  `FlowDirection` float NOT NULL DEFAULT 0,
  `FlowSpeed` float NOT NULL DEFAULT 0,
  `LiquidTypeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Fishable` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Reflection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liquid_object
-- ----------------------------

-- ----------------------------
-- Table structure for liquid_type
-- ----------------------------
DROP TABLE IF EXISTS `liquid_type`;
CREATE TABLE `liquid_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Texture1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Texture2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Texture3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Texture4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Texture5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Texture6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxDarkenDepth` float NOT NULL DEFAULT 0,
  `FogDarkenIntensity` float NOT NULL DEFAULT 0,
  `AmbDarkenIntensity` float NOT NULL DEFAULT 0,
  `DirDarkenIntensity` float NOT NULL DEFAULT 0,
  `ParticleScale` float NOT NULL DEFAULT 0,
  `Color1` int UNSIGNED NOT NULL DEFAULT 0,
  `Color2` int UNSIGNED NOT NULL DEFAULT 0,
  `Float1` float NOT NULL DEFAULT 0,
  `Float2` float NOT NULL DEFAULT 0,
  `Float3` float NOT NULL DEFAULT 0,
  `Float4` float NOT NULL DEFAULT 0,
  `Float5` float NOT NULL DEFAULT 0,
  `Float6` float NOT NULL DEFAULT 0,
  `Float7` float NOT NULL DEFAULT 0,
  `Float8` float NOT NULL DEFAULT 0,
  `Float9` float NOT NULL DEFAULT 0,
  `Float10` float NOT NULL DEFAULT 0,
  `Float11` float NOT NULL DEFAULT 0,
  `Float12` float NOT NULL DEFAULT 0,
  `Float13` float NOT NULL DEFAULT 0,
  `Float14` float NOT NULL DEFAULT 0,
  `Float15` float NOT NULL DEFAULT 0,
  `Float16` float NOT NULL DEFAULT 0,
  `Float17` float NOT NULL DEFAULT 0,
  `Float18` float NOT NULL DEFAULT 0,
  `Int1` int UNSIGNED NOT NULL DEFAULT 0,
  `Int2` int UNSIGNED NOT NULL DEFAULT 0,
  `Int3` int UNSIGNED NOT NULL DEFAULT 0,
  `Int4` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundBank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParticleMovement` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParticleTexSlots` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaterialID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liquid_type
-- ----------------------------

-- ----------------------------
-- Table structure for liquid_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `liquid_type_locale`;
CREATE TABLE `liquid_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liquid_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for loading_screen_taxi_splines
-- ----------------------------
DROP TABLE IF EXISTS `loading_screen_taxi_splines`;
CREATE TABLE `loading_screen_taxi_splines`  (
  `ID` int NOT NULL DEFAULT 0,
  `LocX1` float NOT NULL DEFAULT 0,
  `LocX2` float NOT NULL DEFAULT 0,
  `LocX3` float NOT NULL DEFAULT 0,
  `LocX4` float NOT NULL DEFAULT 0,
  `LocX5` float NOT NULL DEFAULT 0,
  `LocX6` float NOT NULL DEFAULT 0,
  `LocX7` float NOT NULL DEFAULT 0,
  `LocX8` float NOT NULL DEFAULT 0,
  `LocX9` float NOT NULL DEFAULT 0,
  `LocX10` float NOT NULL DEFAULT 0,
  `LocY1` float NOT NULL DEFAULT 0,
  `LocY2` float NOT NULL DEFAULT 0,
  `LocY3` float NOT NULL DEFAULT 0,
  `LocY4` float NOT NULL DEFAULT 0,
  `LocY5` float NOT NULL DEFAULT 0,
  `LocY6` float NOT NULL DEFAULT 0,
  `LocY7` float NOT NULL DEFAULT 0,
  `LocY8` float NOT NULL DEFAULT 0,
  `LocY9` float NOT NULL DEFAULT 0,
  `LocY10` float NOT NULL DEFAULT 0,
  `PathID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LoadingScreenID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LegIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loading_screen_taxi_splines
-- ----------------------------

-- ----------------------------
-- Table structure for loading_screens
-- ----------------------------
DROP TABLE IF EXISTS `loading_screens`;
CREATE TABLE `loading_screens`  (
  `ID` int NOT NULL DEFAULT 0,
  `NarrowScreenFileDataID` int NOT NULL DEFAULT 0,
  `WideScreenFileDataID` int NOT NULL DEFAULT 0,
  `WideScreen169FileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loading_screens
-- ----------------------------

-- ----------------------------
-- Table structure for locale
-- ----------------------------
DROP TABLE IF EXISTS `locale`;
CREATE TABLE `locale`  (
  `ID` int NOT NULL DEFAULT 0,
  `FontFileDataID` int NOT NULL DEFAULT 0,
  `WowLocale` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Secondary` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClientDisplayExpansion` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locale
-- ----------------------------

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `ID` int NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `Rot1` float NOT NULL DEFAULT 0,
  `Rot2` float NOT NULL DEFAULT 0,
  `Rot3` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------

-- ----------------------------
-- Table structure for lock
-- ----------------------------
DROP TABLE IF EXISTS `lock`;
CREATE TABLE `lock`  (
  `ID` int NOT NULL DEFAULT 0,
  `Index1` int NOT NULL DEFAULT 0,
  `Index2` int NOT NULL DEFAULT 0,
  `Index3` int NOT NULL DEFAULT 0,
  `Index4` int NOT NULL DEFAULT 0,
  `Index5` int NOT NULL DEFAULT 0,
  `Index6` int NOT NULL DEFAULT 0,
  `Index7` int NOT NULL DEFAULT 0,
  `Index8` int NOT NULL DEFAULT 0,
  `Skill1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Skill8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Action8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lock
-- ----------------------------
INSERT INTO `lock` VALUES (2900, 166508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for lock_type
-- ----------------------------
DROP TABLE IF EXISTS `lock_type`;
CREATE TABLE `lock_type`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ResourceName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Verb` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CursorName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lock_type
-- ----------------------------

-- ----------------------------
-- Table structure for lock_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `lock_type_locale`;
CREATE TABLE `lock_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ResourceName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Verb_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CursorName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lock_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for look_at_controller
-- ----------------------------
DROP TABLE IF EXISTS `look_at_controller`;
CREATE TABLE `look_at_controller`  (
  `ID` int NOT NULL DEFAULT 0,
  `ReactionEnableDistance` float NOT NULL DEFAULT 0,
  `ReactionGiveupDistance` float NOT NULL DEFAULT 0,
  `TorsoSpeedFactor` float NOT NULL DEFAULT 0,
  `HeadSpeedFactor` float NOT NULL DEFAULT 0,
  `ReactionEnableFOVDeg` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReactionGiveupTimeMS` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReactionIgnoreTimeMinMS` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReactionIgnoreTimeMaxMS` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxTorsoYaw` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxTorsoYawWhileMoving` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxHeadYaw` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxHeadPitch` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ReactionWarmUpTimeMSMin` int NOT NULL DEFAULT 0,
  `ReactionWarmUpTimeMSMax` int NOT NULL DEFAULT 0,
  `ReactionGiveupFOVDeg` int NOT NULL DEFAULT 0,
  `MaxTorsoPitchUp` int NOT NULL DEFAULT 0,
  `MaxTorsoPitchDown` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of look_at_controller
-- ----------------------------

-- ----------------------------
-- Table structure for mail_template
-- ----------------------------
DROP TABLE IF EXISTS `mail_template`;
CREATE TABLE `mail_template`  (
  `ID` int NOT NULL DEFAULT 0,
  `Body` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_template
-- ----------------------------
INSERT INTO `mail_template` VALUES (426, '$n!\r\n\r\nЯ заметил, что тебе удалось доставить потерянную посылку. Приношу свою благодарность!\r\n\r\nУ нас не хватает рук, и услуги хорошего курьера нам не помешают.\r\n\r\nЕсли тебя заинтересовало мое предложение, жду тебя в офисе за Торговой палатой волшебников.\r\n\r\n– Почтальон', 26124);

-- ----------------------------
-- Table structure for mail_template_locale
-- ----------------------------
DROP TABLE IF EXISTS `mail_template_locale`;
CREATE TABLE `mail_template_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Body_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_template_locale
-- ----------------------------
INSERT INTO `mail_template_locale` VALUES (426, 'enUS', '$n!\r\n\r\nI noticed that you managed to deliver the lost parcel. I offer my thanks!\r\n\r\nWe do not have enough hands, and the services of a good courier will not prevent us.\r\n\r\nIf you are interested in my proposal, I\'m waiting for you at the office behind the Chamber of Wizards.\r\n\r\n- Postman', 26124);

-- ----------------------------
-- Table structure for managed_world_state
-- ----------------------------
DROP TABLE IF EXISTS `managed_world_state`;
CREATE TABLE `managed_world_state`  (
  `CurrentStageWorldStateID` int NOT NULL DEFAULT 0,
  `ProgressWorldStateID` int NOT NULL DEFAULT 0,
  `UpTimeSecs` int NOT NULL DEFAULT 0,
  `DownTimeSecs` int NOT NULL DEFAULT 0,
  `OccurrencesWorldStateID` int NOT NULL DEFAULT 0,
  `AccumulationStateTargetValue` int NOT NULL DEFAULT 0,
  `DepletionStateTargetValue` int NOT NULL DEFAULT 0,
  `AccumulationAmountPerMinute` int NOT NULL DEFAULT 0,
  `DepletionAmountPerMinute` int NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managed_world_state
-- ----------------------------

-- ----------------------------
-- Table structure for managed_world_state_buff
-- ----------------------------
DROP TABLE IF EXISTS `managed_world_state_buff`;
CREATE TABLE `managed_world_state_buff`  (
  `ID` int NOT NULL DEFAULT 0,
  `OccurrenceValue` int UNSIGNED NOT NULL DEFAULT 0,
  `BuffSpellID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `ManagedWorldStateID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managed_world_state_buff
-- ----------------------------

-- ----------------------------
-- Table structure for managed_world_state_input
-- ----------------------------
DROP TABLE IF EXISTS `managed_world_state_input`;
CREATE TABLE `managed_world_state_input`  (
  `ID` int NOT NULL DEFAULT 0,
  `ManagedWorldStateID` int NOT NULL DEFAULT 0,
  `QuestID` int NOT NULL DEFAULT 0,
  `ValidInputConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managed_world_state_input
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_interface_action_icon
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_action_icon`;
CREATE TABLE `manifest_interface_action_icon`  (
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_interface_action_icon
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_interface_data
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_data`;
CREATE TABLE `manifest_interface_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `FilePath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `FileName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_interface_data
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_interface_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_data_locale`;
CREATE TABLE `manifest_interface_data_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FilePath_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `FileName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_interface_data_locale
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_interface_item_icon
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_item_icon`;
CREATE TABLE `manifest_interface_item_icon`  (
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_interface_item_icon
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_interface_t_o_c_data
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_t_o_c_data`;
CREATE TABLE `manifest_interface_t_o_c_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `FilePath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_interface_t_o_c_data
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_interface_t_o_c_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_t_o_c_data_locale`;
CREATE TABLE `manifest_interface_t_o_c_data_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FilePath_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_interface_t_o_c_data_locale
-- ----------------------------

-- ----------------------------
-- Table structure for manifest_m_p3
-- ----------------------------
DROP TABLE IF EXISTS `manifest_m_p3`;
CREATE TABLE `manifest_m_p3`  (
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manifest_m_p3
-- ----------------------------

-- ----------------------------
-- Table structure for map
-- ----------------------------
DROP TABLE IF EXISTS `map`;
CREATE TABLE `map`  (
  `ID` int NOT NULL DEFAULT 0,
  `Directory` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapDescription0` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapDescription1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PvpShortDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PvpLongDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags1` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int UNSIGNED NOT NULL DEFAULT 0,
  `MinimapIconScale` float NOT NULL DEFAULT 0,
  `CorpsePosX` float NOT NULL DEFAULT 0,
  `CorpsePosY` float NOT NULL DEFAULT 0,
  `AreaTableID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LoadingScreenID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CorpseMapID` smallint NOT NULL DEFAULT 0,
  `TimeOfDayOverride` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentMapID` smallint NOT NULL DEFAULT 0,
  `CosmeticParentMapID` smallint NOT NULL DEFAULT 0,
  `WindSettingsID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `InstanceType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MapType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TimeOffset` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map
-- ----------------------------
INSERT INTO `map` VALUES (1101, 'DeathMatch', 'DeathMatch', 'DeathMatch: Kill everyone', 'DeathMatch: Kill everyone', 'DeathMatch: Kill everyone', 'DeathMatch: Kill everyone', 8396381, 8, 1, 0, 0, 0, 251, -1, 65535, -1, -1, 0, 3, 1, 4, 0, 0, 23911);

-- ----------------------------
-- Table structure for map_celestial_body
-- ----------------------------
DROP TABLE IF EXISTS `map_celestial_body`;
CREATE TABLE `map_celestial_body`  (
  `ID` int NOT NULL DEFAULT 0,
  `CelestialBodyID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_celestial_body
-- ----------------------------

-- ----------------------------
-- Table structure for map_challenge_mode
-- ----------------------------
DROP TABLE IF EXISTS `map_challenge_mode`;
CREATE TABLE `map_challenge_mode`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CriteriaCount1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CriteriaCount2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CriteriaCount3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_challenge_mode
-- ----------------------------

-- ----------------------------
-- Table structure for map_challenge_mode_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_challenge_mode_locale`;
CREATE TABLE `map_challenge_mode_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_challenge_mode_locale
-- ----------------------------

-- ----------------------------
-- Table structure for map_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty`;
CREATE TABLE `map_difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `Message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ResetInterval` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LockID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemContext` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemContextPickerID` int NOT NULL DEFAULT 0,
  `MapID` smallint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_difficulty
-- ----------------------------
INSERT INTO `map_difficulty` VALUES (2675, '', 12, 0, 1, 0, 0, 0, 0, 1112, 0);

-- ----------------------------
-- Table structure for map_difficulty_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty_locale`;
CREATE TABLE `map_difficulty_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Message_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_difficulty_locale
-- ----------------------------

-- ----------------------------
-- Table structure for map_difficulty_x_condition
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty_x_condition`;
CREATE TABLE `map_difficulty_x_condition`  (
  `ID` int NOT NULL DEFAULT 0,
  `FailureDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PlayerConditionID` int UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `MapDifficultyId` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_difficulty_x_condition
-- ----------------------------
INSERT INTO `map_difficulty_x_condition` VALUES (1133, NULL, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for map_difficulty_x_condition_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty_x_condition_locale`;
CREATE TABLE `map_difficulty_x_condition_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FailureDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_difficulty_x_condition_locale
-- ----------------------------

-- ----------------------------
-- Table structure for map_loading_screen
-- ----------------------------
DROP TABLE IF EXISTS `map_loading_screen`;
CREATE TABLE `map_loading_screen`  (
  `ID` int NOT NULL DEFAULT 0,
  `Min1` float NOT NULL DEFAULT 0,
  `Min2` float NOT NULL DEFAULT 0,
  `Max1` float NOT NULL DEFAULT 0,
  `Max2` float NOT NULL DEFAULT 0,
  `LoadingScreenID` int NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_loading_screen
-- ----------------------------

-- ----------------------------
-- Table structure for map_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_locale`;
CREATE TABLE `map_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Directory_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapDescription0_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapDescription1_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PvpShortDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PvpLongDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_locale
-- ----------------------------

-- ----------------------------
-- Table structure for marketing_promotions_x_locale
-- ----------------------------
DROP TABLE IF EXISTS `marketing_promotions_x_locale`;
CREATE TABLE `marketing_promotions_x_locale`  (
  `ID` int NOT NULL DEFAULT 0,
  `AcceptURL` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AdTexture` int NOT NULL DEFAULT 0,
  `LogoTexture` int NOT NULL DEFAULT 0,
  `AcceptButtonTexture` int NOT NULL DEFAULT 0,
  `DeclineButtonTexture` int NOT NULL DEFAULT 0,
  `PromotionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LocaleID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marketing_promotions_x_locale
-- ----------------------------

-- ----------------------------
-- Table structure for marketing_promotions_x_locale_locale
-- ----------------------------
DROP TABLE IF EXISTS `marketing_promotions_x_locale_locale`;
CREATE TABLE `marketing_promotions_x_locale_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AcceptURL_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marketing_promotions_x_locale_locale
-- ----------------------------

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FoleySoundID` int NOT NULL DEFAULT 0,
  `SheatheSoundID` int NOT NULL DEFAULT 0,
  `UnsheatheSoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for missile_targeting
-- ----------------------------
DROP TABLE IF EXISTS `missile_targeting`;
CREATE TABLE `missile_targeting`  (
  `ID` int NOT NULL DEFAULT 0,
  `TurnLingering` float NOT NULL DEFAULT 0,
  `PitchLingering` float NOT NULL DEFAULT 0,
  `MouseLingering` float NOT NULL DEFAULT 0,
  `EndOpacity` float NOT NULL DEFAULT 0,
  `ArcSpeed` float NOT NULL DEFAULT 0,
  `ArcRepeat` float NOT NULL DEFAULT 0,
  `ArcWidth` float NOT NULL DEFAULT 0,
  `ImpactRadius1` float NOT NULL DEFAULT 0,
  `ImpactRadius2` float NOT NULL DEFAULT 0,
  `ImpactTexRadius` float NOT NULL DEFAULT 0,
  `ArcTextureFileID` int NOT NULL DEFAULT 0,
  `ImpactTextureFileID` int NOT NULL DEFAULT 0,
  `ImpactModelFileID1` int NOT NULL DEFAULT 0,
  `ImpactModelFileID2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of missile_targeting
-- ----------------------------

-- ----------------------------
-- Table structure for model_anim_cloak_dampening
-- ----------------------------
DROP TABLE IF EXISTS `model_anim_cloak_dampening`;
CREATE TABLE `model_anim_cloak_dampening`  (
  `ID` int NOT NULL DEFAULT 0,
  `AnimationDataID` int NOT NULL DEFAULT 0,
  `CloakDampeningID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_anim_cloak_dampening
-- ----------------------------

-- ----------------------------
-- Table structure for model_file_data
-- ----------------------------
DROP TABLE IF EXISTS `model_file_data`;
CREATE TABLE `model_file_data`  (
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LodCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `ModelResourcesID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_file_data
-- ----------------------------

-- ----------------------------
-- Table structure for model_ribbon_quality
-- ----------------------------
DROP TABLE IF EXISTS `model_ribbon_quality`;
CREATE TABLE `model_ribbon_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `RibbonQualityID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_ribbon_quality
-- ----------------------------

-- ----------------------------
-- Table structure for modifier_tree
-- ----------------------------
DROP TABLE IF EXISTS `modifier_tree`;
CREATE TABLE `modifier_tree`  (
  `ID` int NOT NULL DEFAULT 0,
  `Asset` int UNSIGNED NOT NULL DEFAULT 0,
  `SecondaryAsset` int NOT NULL DEFAULT 0,
  `Parent` int NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TertiaryAsset` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Operator` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Amount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modifier_tree
-- ----------------------------
INSERT INTO `modifier_tree` VALUES (245, 1519, 0, 244, 17, 0, 2, 1, 23911);

-- ----------------------------
-- Table structure for mount
-- ----------------------------
DROP TABLE IF EXISTS `mount`;
CREATE TABLE `mount`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SourceSpellID` int NOT NULL DEFAULT 0,
  `MountFlyRideHeight` float NOT NULL DEFAULT 0,
  `MountTypeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `UiModelSceneID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mount
-- ----------------------------
INSERT INTO `mount` VALUES ('Magmatic hound', 'Previously these dogs used for tracking and killing. But later they became also riding animals.', 'Reward for  New Year Event.', 305002, 0, 230, 0, 2, 5000, 0, 45, 1);

-- ----------------------------
-- Table structure for mount_capability
-- ----------------------------
DROP TABLE IF EXISTS `mount_capability`;
CREATE TABLE `mount_capability`  (
  `ReqSpellKnownID` int NOT NULL DEFAULT 0,
  `ModSpellAuraID` int NOT NULL DEFAULT 0,
  `ReqRidingSkill` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReqAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReqMapID` smallint NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `ReqSpellAuraID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mount_capability
-- ----------------------------
INSERT INTO `mount_capability` VALUES (0, 0, 75, 0, 0, 0, 5000, 0, 1);

-- ----------------------------
-- Table structure for mount_locale
-- ----------------------------
DROP TABLE IF EXISTS `mount_locale`;
CREATE TABLE `mount_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mount_locale
-- ----------------------------

-- ----------------------------
-- Table structure for mount_type_x_capability
-- ----------------------------
DROP TABLE IF EXISTS `mount_type_x_capability`;
CREATE TABLE `mount_type_x_capability`  (
  `ID` int NOT NULL DEFAULT 0,
  `MountTypeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MountCapabilityID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mount_type_x_capability
-- ----------------------------

-- ----------------------------
-- Table structure for mount_x_display
-- ----------------------------
DROP TABLE IF EXISTS `mount_x_display`;
CREATE TABLE `mount_x_display`  (
  `ID` int NOT NULL DEFAULT 0,
  `CreatureDisplayInfoID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `MountID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mount_x_display
-- ----------------------------
INSERT INTO `mount_x_display` VALUES (3000, 53450, 0, 5000, 1);

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `ID` int NOT NULL DEFAULT 0,
  `AudioFileDataID` int NOT NULL DEFAULT 0,
  `SubtitleFileDataID` int NOT NULL DEFAULT 0,
  `Volume` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `KeyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------

-- ----------------------------
-- Table structure for movie_file_data
-- ----------------------------
DROP TABLE IF EXISTS `movie_file_data`;
CREATE TABLE `movie_file_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `Resolution` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_file_data
-- ----------------------------

-- ----------------------------
-- Table structure for movie_variation
-- ----------------------------
DROP TABLE IF EXISTS `movie_variation`;
CREATE TABLE `movie_variation`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `OverlayFileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_variation
-- ----------------------------

-- ----------------------------
-- Table structure for n_p_c_model_item_slot_display_info
-- ----------------------------
DROP TABLE IF EXISTS `n_p_c_model_item_slot_display_info`;
CREATE TABLE `n_p_c_model_item_slot_display_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemDisplayInfoID` int NOT NULL DEFAULT 0,
  `ItemSlot` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of n_p_c_model_item_slot_display_info
-- ----------------------------

-- ----------------------------
-- Table structure for n_p_c_sounds
-- ----------------------------
DROP TABLE IF EXISTS `n_p_c_sounds`;
CREATE TABLE `n_p_c_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundID1` int NOT NULL DEFAULT 0,
  `SoundID2` int NOT NULL DEFAULT 0,
  `SoundID3` int NOT NULL DEFAULT 0,
  `SoundID4` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of n_p_c_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for name_gen
-- ----------------------------
DROP TABLE IF EXISTS `name_gen`;
CREATE TABLE `name_gen`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Sex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of name_gen
-- ----------------------------

-- ----------------------------
-- Table structure for names_profanity
-- ----------------------------
DROP TABLE IF EXISTS `names_profanity`;
CREATE TABLE `names_profanity`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Language` tinyint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of names_profanity
-- ----------------------------

-- ----------------------------
-- Table structure for names_reserved
-- ----------------------------
DROP TABLE IF EXISTS `names_reserved`;
CREATE TABLE `names_reserved`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of names_reserved
-- ----------------------------

-- ----------------------------
-- Table structure for names_reserved_locale
-- ----------------------------
DROP TABLE IF EXISTS `names_reserved_locale`;
CREATE TABLE `names_reserved_locale`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LocaleMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of names_reserved_locale
-- ----------------------------

-- ----------------------------
-- Table structure for object_effect
-- ----------------------------
DROP TABLE IF EXISTS `object_effect`;
CREATE TABLE `object_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Offset1` float NOT NULL DEFAULT 0,
  `Offset2` float NOT NULL DEFAULT 0,
  `Offset3` float NOT NULL DEFAULT 0,
  `ObjectEffectGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TriggerType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EventType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EffectRecType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Attachment` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EffectRecID` int NOT NULL DEFAULT 0,
  `ObjectEffectModifierID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of object_effect
-- ----------------------------

-- ----------------------------
-- Table structure for object_effect_modifier
-- ----------------------------
DROP TABLE IF EXISTS `object_effect_modifier`;
CREATE TABLE `object_effect_modifier`  (
  `ID` int NOT NULL DEFAULT 0,
  `Param1` float NOT NULL DEFAULT 0,
  `Param2` float NOT NULL DEFAULT 0,
  `Param3` float NOT NULL DEFAULT 0,
  `Param4` float NOT NULL DEFAULT 0,
  `InputType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MapType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OutputType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of object_effect_modifier
-- ----------------------------

-- ----------------------------
-- Table structure for object_effect_package_elem
-- ----------------------------
DROP TABLE IF EXISTS `object_effect_package_elem`;
CREATE TABLE `object_effect_package_elem`  (
  `ID` int NOT NULL DEFAULT 0,
  `ObjectEffectPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ObjectEffectGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `StateType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of object_effect_package_elem
-- ----------------------------

-- ----------------------------
-- Table structure for outline_effect
-- ----------------------------
DROP TABLE IF EXISTS `outline_effect`;
CREATE TABLE `outline_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Range` float NOT NULL DEFAULT 0,
  `UnitConditionID` int NOT NULL DEFAULT 0,
  `PassiveHighlightColorID` int NOT NULL DEFAULT 0,
  `HighlightColorID` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outline_effect
-- ----------------------------

-- ----------------------------
-- Table structure for override_spell_data
-- ----------------------------
DROP TABLE IF EXISTS `override_spell_data`;
CREATE TABLE `override_spell_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `Spells1` int NOT NULL DEFAULT 0,
  `Spells2` int NOT NULL DEFAULT 0,
  `Spells3` int NOT NULL DEFAULT 0,
  `Spells4` int NOT NULL DEFAULT 0,
  `Spells5` int NOT NULL DEFAULT 0,
  `Spells6` int NOT NULL DEFAULT 0,
  `Spells7` int NOT NULL DEFAULT 0,
  `Spells8` int NOT NULL DEFAULT 0,
  `Spells9` int NOT NULL DEFAULT 0,
  `Spells10` int NOT NULL DEFAULT 0,
  `PlayerActionBarFileDataID` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of override_spell_data
-- ----------------------------

-- ----------------------------
-- Table structure for page_text_material
-- ----------------------------
DROP TABLE IF EXISTS `page_text_material`;
CREATE TABLE `page_text_material`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_text_material
-- ----------------------------

-- ----------------------------
-- Table structure for page_text_material_locale
-- ----------------------------
DROP TABLE IF EXISTS `page_text_material_locale`;
CREATE TABLE `page_text_material_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_text_material_locale
-- ----------------------------

-- ----------------------------
-- Table structure for paper_doll_item_frame
-- ----------------------------
DROP TABLE IF EXISTS `paper_doll_item_frame`;
CREATE TABLE `paper_doll_item_frame`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemButtonName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SlotNumber` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SlotIconFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper_doll_item_frame
-- ----------------------------

-- ----------------------------
-- Table structure for paper_doll_item_frame_locale
-- ----------------------------
DROP TABLE IF EXISTS `paper_doll_item_frame_locale`;
CREATE TABLE `paper_doll_item_frame_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ItemButtonName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper_doll_item_frame_locale
-- ----------------------------

-- ----------------------------
-- Table structure for paragon_reputation
-- ----------------------------
DROP TABLE IF EXISTS `paragon_reputation`;
CREATE TABLE `paragon_reputation`  (
  `ID` int NOT NULL DEFAULT 0,
  `LevelThreshold` int NOT NULL DEFAULT 0,
  `QuestID` int NOT NULL DEFAULT 0,
  `FactionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paragon_reputation
-- ----------------------------

-- ----------------------------
-- Table structure for particle_color
-- ----------------------------
DROP TABLE IF EXISTS `particle_color`;
CREATE TABLE `particle_color`  (
  `ID` int NOT NULL DEFAULT 0,
  `Start1` int UNSIGNED NOT NULL DEFAULT 0,
  `Start2` int UNSIGNED NOT NULL DEFAULT 0,
  `Start3` int UNSIGNED NOT NULL DEFAULT 0,
  `Mid1` int UNSIGNED NOT NULL DEFAULT 0,
  `Mid2` int UNSIGNED NOT NULL DEFAULT 0,
  `Mid3` int UNSIGNED NOT NULL DEFAULT 0,
  `End1` int UNSIGNED NOT NULL DEFAULT 0,
  `End2` int UNSIGNED NOT NULL DEFAULT 0,
  `End3` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of particle_color
-- ----------------------------

-- ----------------------------
-- Table structure for path
-- ----------------------------
DROP TABLE IF EXISTS `path`;
CREATE TABLE `path`  (
  `ID` int NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SplineType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Red` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Alpha` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of path
-- ----------------------------

-- ----------------------------
-- Table structure for path_node
-- ----------------------------
DROP TABLE IF EXISTS `path_node`;
CREATE TABLE `path_node`  (
  `ID` int NOT NULL DEFAULT 0,
  `LocationID` int NOT NULL DEFAULT 0,
  `PathID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Sequence` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of path_node
-- ----------------------------

-- ----------------------------
-- Table structure for path_node_property
-- ----------------------------
DROP TABLE IF EXISTS `path_node_property`;
CREATE TABLE `path_node_property`  (
  `PathID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Sequence` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PropertyIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Value` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of path_node_property
-- ----------------------------

-- ----------------------------
-- Table structure for path_property
-- ----------------------------
DROP TABLE IF EXISTS `path_property`;
CREATE TABLE `path_property`  (
  `Value` int NOT NULL DEFAULT 0,
  `PathID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PropertyIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of path_property
-- ----------------------------

-- ----------------------------
-- Table structure for phase
-- ----------------------------
DROP TABLE IF EXISTS `phase`;
CREATE TABLE `phase`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phase
-- ----------------------------

-- ----------------------------
-- Table structure for phase_shift_zone_sounds
-- ----------------------------
DROP TABLE IF EXISTS `phase_shift_zone_sounds`;
CREATE TABLE `phase_shift_zone_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UwSoundAmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WmoAreaID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPreferencesID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UwSoundProviderPreferencesID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneIntroMusicID` int NOT NULL DEFAULT 0,
  `ZoneMusicID` int NOT NULL DEFAULT 0,
  `UwZoneIntroMusicID` int NOT NULL DEFAULT 0,
  `UwZoneMusicID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phase_shift_zone_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for phase_x_phase_group
-- ----------------------------
DROP TABLE IF EXISTS `phase_x_phase_group`;
CREATE TABLE `phase_x_phase_group`  (
  `ID` int NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phase_x_phase_group
-- ----------------------------

-- ----------------------------
-- Table structure for player_condition
-- ----------------------------
DROP TABLE IF EXISTS `player_condition`;
CREATE TABLE `player_condition`  (
  `RaceMask` bigint NOT NULL DEFAULT 0,
  `FailureDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `Gender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NativeGender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SkillLogic` int NOT NULL DEFAULT 0,
  `LanguageID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLanguage` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLanguage` int NOT NULL DEFAULT 0,
  `MaxFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxReputation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ReputationLogic` int NOT NULL DEFAULT 0,
  `CurrentPvpFaction` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinPVPRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPVPRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PvpMedal` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestLogic` int NOT NULL DEFAULT 0,
  `CurrQuestLogic` int NOT NULL DEFAULT 0,
  `CurrentCompletedQuestLogic` int NOT NULL DEFAULT 0,
  `SpellLogic` int NOT NULL DEFAULT 0,
  `ItemLogic` int NOT NULL DEFAULT 0,
  `ItemFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AuraSpellLogic` int NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WeatherID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PartyStatus` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LifetimeMaxPVPRank` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AchievementLogic` int NOT NULL DEFAULT 0,
  `LfgLogic` int NOT NULL DEFAULT 0,
  `AreaLogic` int NOT NULL DEFAULT 0,
  `CurrencyLogic` int NOT NULL DEFAULT 0,
  `QuestKillID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `QuestKillLogic` int NOT NULL DEFAULT 0,
  `MinExpansionLevel` tinyint NOT NULL DEFAULT 0,
  `MaxExpansionLevel` tinyint NOT NULL DEFAULT 0,
  `MinExpansionTier` tinyint NOT NULL DEFAULT 0,
  `MaxExpansionTier` tinyint NOT NULL DEFAULT 0,
  `MinGuildLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxGuildLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` int NOT NULL DEFAULT 0,
  `MinAvgItemLevel` int NOT NULL DEFAULT 0,
  `MaxAvgItemLevel` int NOT NULL DEFAULT 0,
  `MinAvgEquippedItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxAvgEquippedItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationRole` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PowerType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PowerTypeComp` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PowerTypeValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ModifierTreeID` int NOT NULL DEFAULT 0,
  `WeaponSubclassMask` int NOT NULL DEFAULT 0,
  `SkillID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SkillID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SkillID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SkillID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID1` int NOT NULL DEFAULT 0,
  `MinFactionID2` int NOT NULL DEFAULT 0,
  `MinFactionID3` int NOT NULL DEFAULT 0,
  `MinReputation1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID1` int NOT NULL DEFAULT 0,
  `SpellID2` int NOT NULL DEFAULT 0,
  `SpellID3` int NOT NULL DEFAULT 0,
  `SpellID4` int NOT NULL DEFAULT 0,
  `ItemID1` int NOT NULL DEFAULT 0,
  `ItemID2` int NOT NULL DEFAULT 0,
  `ItemID3` int NOT NULL DEFAULT 0,
  `ItemID4` int NOT NULL DEFAULT 0,
  `ItemCount1` int NOT NULL DEFAULT 0,
  `ItemCount2` int NOT NULL DEFAULT 0,
  `ItemCount3` int NOT NULL DEFAULT 0,
  `ItemCount4` int NOT NULL DEFAULT 0,
  `Explored1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Explored2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Time1` int NOT NULL DEFAULT 0,
  `Time2` int NOT NULL DEFAULT 0,
  `AuraSpellID1` int NOT NULL DEFAULT 0,
  `AuraSpellID2` int NOT NULL DEFAULT 0,
  `AuraSpellID3` int NOT NULL DEFAULT 0,
  `AuraSpellID4` int NOT NULL DEFAULT 0,
  `AuraStacks1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AuraStacks2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AuraStacks3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AuraStacks4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Achievement1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Achievement2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Achievement3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Achievement4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LfgValue1` int NOT NULL DEFAULT 0,
  `LfgValue2` int NOT NULL DEFAULT 0,
  `LfgValue3` int NOT NULL DEFAULT 0,
  `LfgValue4` int NOT NULL DEFAULT 0,
  `AreaID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID1` int NOT NULL DEFAULT 0,
  `CurrencyID2` int NOT NULL DEFAULT 0,
  `CurrencyID3` int NOT NULL DEFAULT 0,
  `CurrencyID4` int NOT NULL DEFAULT 0,
  `CurrencyCount1` int NOT NULL DEFAULT 0,
  `CurrencyCount2` int NOT NULL DEFAULT 0,
  `CurrencyCount3` int NOT NULL DEFAULT 0,
  `CurrencyCount4` int NOT NULL DEFAULT 0,
  `QuestKillMonster1` int NOT NULL DEFAULT 0,
  `QuestKillMonster2` int NOT NULL DEFAULT 0,
  `QuestKillMonster3` int NOT NULL DEFAULT 0,
  `QuestKillMonster4` int NOT NULL DEFAULT 0,
  `QuestKillMonster5` int NOT NULL DEFAULT 0,
  `QuestKillMonster6` int NOT NULL DEFAULT 0,
  `MovementFlags1` int NOT NULL DEFAULT 0,
  `MovementFlags2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_condition
-- ----------------------------

-- ----------------------------
-- Table structure for player_condition_locale
-- ----------------------------
DROP TABLE IF EXISTS `player_condition_locale`;
CREATE TABLE `player_condition_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FailureDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_condition_locale
-- ----------------------------

-- ----------------------------
-- Table structure for positioner
-- ----------------------------
DROP TABLE IF EXISTS `positioner`;
CREATE TABLE `positioner`  (
  `ID` int NOT NULL DEFAULT 0,
  `StartLife` float NOT NULL DEFAULT 0,
  `FirstStateID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StartLifePercent` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of positioner
-- ----------------------------

-- ----------------------------
-- Table structure for positioner_state
-- ----------------------------
DROP TABLE IF EXISTS `positioner_state`;
CREATE TABLE `positioner_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `EndLife` float NOT NULL DEFAULT 0,
  `EndLifePercent` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NextStateID` int NOT NULL DEFAULT 0,
  `TransformMatrixID` int NOT NULL DEFAULT 0,
  `PosEntryID` int NOT NULL DEFAULT 0,
  `RotEntryID` int NOT NULL DEFAULT 0,
  `ScaleEntryID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of positioner_state
-- ----------------------------

-- ----------------------------
-- Table structure for positioner_state_entry
-- ----------------------------
DROP TABLE IF EXISTS `positioner_state_entry`;
CREATE TABLE `positioner_state_entry`  (
  `ID` int NOT NULL DEFAULT 0,
  `ParamA` float NOT NULL DEFAULT 0,
  `ParamB` float NOT NULL DEFAULT 0,
  `SrcValType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SrcVal` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DstValType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DstVal` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EntryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Style` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SrcType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DstType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CurveID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of positioner_state_entry
-- ----------------------------

-- ----------------------------
-- Table structure for power_display
-- ----------------------------
DROP TABLE IF EXISTS `power_display`;
CREATE TABLE `power_display`  (
  `ID` int NOT NULL DEFAULT 0,
  `GlobalStringBaseTag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ActualType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Red` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_display
-- ----------------------------

-- ----------------------------
-- Table structure for power_display_locale
-- ----------------------------
DROP TABLE IF EXISTS `power_display_locale`;
CREATE TABLE `power_display_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GlobalStringBaseTag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_display_locale
-- ----------------------------

-- ----------------------------
-- Table structure for power_type
-- ----------------------------
DROP TABLE IF EXISTS `power_type`;
CREATE TABLE `power_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `NameGlobalStringTag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CostGlobalStringTag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RegenPeace` float NOT NULL DEFAULT 0,
  `RegenCombat` float NOT NULL DEFAULT 0,
  `MaxBasePower` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RegenInterruptTimeMS` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PowerTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinPower` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CenterPower` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPower` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayModifier` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_type
-- ----------------------------

-- ----------------------------
-- Table structure for power_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `power_type_locale`;
CREATE TABLE `power_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NameGlobalStringTag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `CostGlobalStringTag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for prestige_level_info
-- ----------------------------
DROP TABLE IF EXISTS `prestige_level_info`;
CREATE TABLE `prestige_level_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BadgeTextureFileDataID` int NOT NULL DEFAULT 0,
  `PrestigeLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prestige_level_info
-- ----------------------------

-- ----------------------------
-- Table structure for prestige_level_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `prestige_level_info_locale`;
CREATE TABLE `prestige_level_info_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prestige_level_info_locale
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_bracket_types
-- ----------------------------
DROP TABLE IF EXISTS `pvp_bracket_types`;
CREATE TABLE `pvp_bracket_types`  (
  `ID` int NOT NULL DEFAULT 0,
  `BracketID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WeeklyQuestID1` int NOT NULL DEFAULT 0,
  `WeeklyQuestID2` int NOT NULL DEFAULT 0,
  `WeeklyQuestID3` int NOT NULL DEFAULT 0,
  `WeeklyQuestID4` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_bracket_types
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `pvp_difficulty`;
CREATE TABLE `pvp_difficulty`  (
  `ID` int NOT NULL DEFAULT 0,
  `RangeIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_difficulty
-- ----------------------------
INSERT INTO `pvp_difficulty` VALUES (1113, 0, 110, 110, 1101, 23911);

-- ----------------------------
-- Table structure for pvp_item
-- ----------------------------
DROP TABLE IF EXISTS `pvp_item`;
CREATE TABLE `pvp_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `ItemLevelDelta` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_item
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_reward
-- ----------------------------
DROP TABLE IF EXISTS `pvp_reward`;
CREATE TABLE `pvp_reward`  (
  `ID` int NOT NULL DEFAULT 0,
  `HonorLevel` int NOT NULL DEFAULT 0,
  `PrestigeLevel` int NOT NULL DEFAULT 0,
  `RewardPackID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_reward
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_scaling_effect
-- ----------------------------
DROP TABLE IF EXISTS `pvp_scaling_effect`;
CREATE TABLE `pvp_scaling_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Value` float NOT NULL DEFAULT 0,
  `PvpScalingEffectTypeID` int NOT NULL DEFAULT 0,
  `SpecializationID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_scaling_effect
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_scaling_effect_type
-- ----------------------------
DROP TABLE IF EXISTS `pvp_scaling_effect_type`;
CREATE TABLE `pvp_scaling_effect_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_scaling_effect_type
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_scaling_effect_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `pvp_scaling_effect_type_locale`;
CREATE TABLE `pvp_scaling_effect_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_scaling_effect_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_talent
-- ----------------------------
DROP TABLE IF EXISTS `pvp_talent`;
CREATE TABLE `pvp_talent`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `OverrideSpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `ExtraSpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `TierID` int UNSIGNED NOT NULL DEFAULT 0,
  `ColumnIndex` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` int UNSIGNED NOT NULL DEFAULT 0,
  `SpecID` int UNSIGNED NOT NULL DEFAULT 0,
  `Role` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_talent
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_talent_locale
-- ----------------------------
DROP TABLE IF EXISTS `pvp_talent_locale`;
CREATE TABLE `pvp_talent_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_talent_locale
-- ----------------------------

-- ----------------------------
-- Table structure for pvp_talent_unlock
-- ----------------------------
DROP TABLE IF EXISTS `pvp_talent_unlock`;
CREATE TABLE `pvp_talent_unlock`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `TierID` int UNSIGNED NOT NULL DEFAULT 0,
  `ColumnIndex` int UNSIGNED NOT NULL DEFAULT 0,
  `HonorLevel` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pvp_talent_unlock
-- ----------------------------

-- ----------------------------
-- Table structure for quest_faction_reward
-- ----------------------------
DROP TABLE IF EXISTS `quest_faction_reward`;
CREATE TABLE `quest_faction_reward`  (
  `ID` int NOT NULL DEFAULT 0,
  `Difficulty1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty9` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty10` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_faction_reward
-- ----------------------------

-- ----------------------------
-- Table structure for quest_feedback_effect
-- ----------------------------
DROP TABLE IF EXISTS `quest_feedback_effect`;
CREATE TABLE `quest_feedback_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `MinimapAtlasMemberID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AttachPoint` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PassiveHighlightColorType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_feedback_effect
-- ----------------------------

-- ----------------------------
-- Table structure for quest_info
-- ----------------------------
DROP TABLE IF EXISTS `quest_info`;
CREATE TABLE `quest_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `InfoName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Profession` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Modifiers` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_info
-- ----------------------------
INSERT INTO `quest_info` VALUES (149, 'Invasion Point World Quest', 0, 2, 10, 26124);

-- ----------------------------
-- Table structure for quest_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_info_locale`;
CREATE TABLE `quest_info_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `InfoName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_info_locale
-- ----------------------------

-- ----------------------------
-- Table structure for quest_line
-- ----------------------------
DROP TABLE IF EXISTS `quest_line`;
CREATE TABLE `quest_line`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_line
-- ----------------------------

-- ----------------------------
-- Table structure for quest_line_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_line_locale`;
CREATE TABLE `quest_line_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_line_locale
-- ----------------------------

-- ----------------------------
-- Table structure for quest_line_x_quest
-- ----------------------------
DROP TABLE IF EXISTS `quest_line_x_quest`;
CREATE TABLE `quest_line_x_quest`  (
  `ID` int NOT NULL DEFAULT 0,
  `QuestLineID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_line_x_quest
-- ----------------------------

-- ----------------------------
-- Table structure for quest_money_reward
-- ----------------------------
DROP TABLE IF EXISTS `quest_money_reward`;
CREATE TABLE `quest_money_reward`  (
  `ID` int NOT NULL DEFAULT 0,
  `Difficulty1` int NOT NULL DEFAULT 0,
  `Difficulty2` int NOT NULL DEFAULT 0,
  `Difficulty3` int NOT NULL DEFAULT 0,
  `Difficulty4` int NOT NULL DEFAULT 0,
  `Difficulty5` int NOT NULL DEFAULT 0,
  `Difficulty6` int NOT NULL DEFAULT 0,
  `Difficulty7` int NOT NULL DEFAULT 0,
  `Difficulty8` int NOT NULL DEFAULT 0,
  `Difficulty9` int NOT NULL DEFAULT 0,
  `Difficulty10` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_money_reward
-- ----------------------------

-- ----------------------------
-- Table structure for quest_objective
-- ----------------------------
DROP TABLE IF EXISTS `quest_objective`;
CREATE TABLE `quest_objective`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Amount` int NOT NULL DEFAULT 0,
  `ObjectID` int NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `StorageIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_objective
-- ----------------------------

-- ----------------------------
-- Table structure for quest_objective_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_objective_locale`;
CREATE TABLE `quest_objective_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_objective_locale
-- ----------------------------

-- ----------------------------
-- Table structure for quest_p_o_i_blob
-- ----------------------------
DROP TABLE IF EXISTS `quest_p_o_i_blob`;
CREATE TABLE `quest_p_o_i_blob`  (
  `ID` int NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NumPoints` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Floor` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `QuestID` int NOT NULL DEFAULT 0,
  `ObjectiveIndex` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_p_o_i_blob
-- ----------------------------

-- ----------------------------
-- Table structure for quest_p_o_i_point
-- ----------------------------
DROP TABLE IF EXISTS `quest_p_o_i_point`;
CREATE TABLE `quest_p_o_i_point`  (
  `QuestPOIBlobID` int UNSIGNED NOT NULL DEFAULT 0,
  `X` smallint NOT NULL DEFAULT 0,
  `Y` smallint NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_p_o_i_point
-- ----------------------------

-- ----------------------------
-- Table structure for quest_package_item
-- ----------------------------
DROP TABLE IF EXISTS `quest_package_item`;
CREATE TABLE `quest_package_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `PackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemQuantity` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_package_item
-- ----------------------------

-- ----------------------------
-- Table structure for quest_sort
-- ----------------------------
DROP TABLE IF EXISTS `quest_sort`;
CREATE TABLE `quest_sort`  (
  `ID` int NOT NULL DEFAULT 0,
  `SortName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `UiOrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_sort
-- ----------------------------

-- ----------------------------
-- Table structure for quest_sort_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_sort_locale`;
CREATE TABLE `quest_sort_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SortName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_sort_locale
-- ----------------------------

-- ----------------------------
-- Table structure for quest_v2
-- ----------------------------
DROP TABLE IF EXISTS `quest_v2`;
CREATE TABLE `quest_v2`  (
  `ID` int NOT NULL DEFAULT 0,
  `UniqueBitFlag` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_v2
-- ----------------------------

-- ----------------------------
-- Table structure for quest_v2_cli_task
-- ----------------------------
DROP TABLE IF EXISTS `quest_v2_cli_task`;
CREATE TABLE `quest_v2_cli_task`  (
  `FiltRaces` bigint NOT NULL DEFAULT 0,
  `QuestTitle` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BulletText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `StartItem` int NOT NULL DEFAULT 0,
  `UniqueBitFlag` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FiltClasses` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuest1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuest2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuest3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FiltMinSkillID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FiltActiveQuest` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuestLogic` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltMaxFactionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltMaxFactionValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltMaxLevel` tinyint NOT NULL DEFAULT 0,
  `FiltMinFactionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltMinFactionValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltMinLevel` tinyint NOT NULL DEFAULT 0,
  `FiltMinSkillValue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FiltNonActiveQuest` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `BreadCrumbID` int NOT NULL DEFAULT 0,
  `QuestInfoID` int NOT NULL DEFAULT 0,
  `SandboxScalingID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_v2_cli_task
-- ----------------------------

-- ----------------------------
-- Table structure for quest_v2_cli_task_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_v2_cli_task_locale`;
CREATE TABLE `quest_v2_cli_task_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `QuestTitle_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `BulletText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_v2_cli_task_locale
-- ----------------------------

-- ----------------------------
-- Table structure for quest_x_group_activity
-- ----------------------------
DROP TABLE IF EXISTS `quest_x_group_activity`;
CREATE TABLE `quest_x_group_activity`  (
  `ID` int NOT NULL DEFAULT 0,
  `QuestID` int NOT NULL DEFAULT 0,
  `GroupFinderActivityID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_x_group_activity
-- ----------------------------

-- ----------------------------
-- Table structure for quest_xp
-- ----------------------------
DROP TABLE IF EXISTS `quest_xp`;
CREATE TABLE `quest_xp`  (
  `ID` int NOT NULL DEFAULT 0,
  `Difficulty1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty9` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty10` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_xp
-- ----------------------------

-- ----------------------------
-- Table structure for rand_prop_points
-- ----------------------------
DROP TABLE IF EXISTS `rand_prop_points`;
CREATE TABLE `rand_prop_points`  (
  `ID` int NOT NULL DEFAULT 0,
  `Epic1` int NOT NULL DEFAULT 0,
  `Epic2` int NOT NULL DEFAULT 0,
  `Epic3` int NOT NULL DEFAULT 0,
  `Epic4` int NOT NULL DEFAULT 0,
  `Epic5` int NOT NULL DEFAULT 0,
  `Superior1` int NOT NULL DEFAULT 0,
  `Superior2` int NOT NULL DEFAULT 0,
  `Superior3` int NOT NULL DEFAULT 0,
  `Superior4` int NOT NULL DEFAULT 0,
  `Superior5` int NOT NULL DEFAULT 0,
  `Good1` int NOT NULL DEFAULT 0,
  `Good2` int NOT NULL DEFAULT 0,
  `Good3` int NOT NULL DEFAULT 0,
  `Good4` int NOT NULL DEFAULT 0,
  `Good5` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rand_prop_points
-- ----------------------------

-- ----------------------------
-- Table structure for relic_slot_tier_requirement
-- ----------------------------
DROP TABLE IF EXISTS `relic_slot_tier_requirement`;
CREATE TABLE `relic_slot_tier_requirement`  (
  `ID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `RelicIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RelicTier` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relic_slot_tier_requirement
-- ----------------------------

-- ----------------------------
-- Table structure for relic_talent
-- ----------------------------
DROP TABLE IF EXISTS `relic_talent`;
CREATE TABLE `relic_talent`  (
  `ID` int NOT NULL DEFAULT 0,
  `ArtifactPowerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactPowerLabel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` int NOT NULL DEFAULT 0,
  `PVal` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relic_talent
-- ----------------------------

-- ----------------------------
-- Table structure for research_branch
-- ----------------------------
DROP TABLE IF EXISTS `research_branch`;
CREATE TABLE `research_branch`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ItemID` int NOT NULL DEFAULT 0,
  `CurrencyID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ResearchFieldID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TextureFileID` int NOT NULL DEFAULT 0,
  `BigTextureFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_branch
-- ----------------------------

-- ----------------------------
-- Table structure for research_branch_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_branch_locale`;
CREATE TABLE `research_branch_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_branch_locale
-- ----------------------------

-- ----------------------------
-- Table structure for research_field
-- ----------------------------
DROP TABLE IF EXISTS `research_field`;
CREATE TABLE `research_field`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Slot` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_field
-- ----------------------------

-- ----------------------------
-- Table structure for research_field_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_field_locale`;
CREATE TABLE `research_field_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_field_locale
-- ----------------------------

-- ----------------------------
-- Table structure for research_project
-- ----------------------------
DROP TABLE IF EXISTS `research_project`;
CREATE TABLE `research_project`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SpellID` int NOT NULL DEFAULT 0,
  `ResearchBranchID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Rarity` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NumSockets` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `TextureFileID` int NOT NULL DEFAULT 0,
  `RequiredWeight` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_project
-- ----------------------------

-- ----------------------------
-- Table structure for research_project_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_project_locale`;
CREATE TABLE `research_project_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_project_locale
-- ----------------------------

-- ----------------------------
-- Table structure for research_site
-- ----------------------------
DROP TABLE IF EXISTS `research_site`;
CREATE TABLE `research_site`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `QuestPoiBlobID` int NOT NULL DEFAULT 0,
  `MapID` smallint NOT NULL DEFAULT 0,
  `AreaPOIIconEnum` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_site
-- ----------------------------

-- ----------------------------
-- Table structure for research_site_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_site_locale`;
CREATE TABLE `research_site_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research_site_locale
-- ----------------------------

-- ----------------------------
-- Table structure for resistances
-- ----------------------------
DROP TABLE IF EXISTS `resistances`;
CREATE TABLE `resistances`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FizzleSoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resistances
-- ----------------------------

-- ----------------------------
-- Table structure for resistances_locale
-- ----------------------------
DROP TABLE IF EXISTS `resistances_locale`;
CREATE TABLE `resistances_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resistances_locale
-- ----------------------------

-- ----------------------------
-- Table structure for reward_pack
-- ----------------------------
DROP TABLE IF EXISTS `reward_pack`;
CREATE TABLE `reward_pack`  (
  `ID` int NOT NULL DEFAULT 0,
  `Money` int NOT NULL DEFAULT 0,
  `ArtifactXPMultiplier` float NOT NULL DEFAULT 0,
  `ArtifactXPDifficulty` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactXPCategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CharTitleID` int NOT NULL DEFAULT 0,
  `TreasurePickerID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward_pack
-- ----------------------------

-- ----------------------------
-- Table structure for reward_pack_x_currency_type
-- ----------------------------
DROP TABLE IF EXISTS `reward_pack_x_currency_type`;
CREATE TABLE `reward_pack_x_currency_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `CurrencyTypeID` int NOT NULL DEFAULT 0,
  `Quantity` int NOT NULL DEFAULT 0,
  `RewardPackID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward_pack_x_currency_type
-- ----------------------------

-- ----------------------------
-- Table structure for reward_pack_x_item
-- ----------------------------
DROP TABLE IF EXISTS `reward_pack_x_item`;
CREATE TABLE `reward_pack_x_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `ItemQuantity` int NOT NULL DEFAULT 0,
  `RewardPackID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward_pack_x_item
-- ----------------------------

-- ----------------------------
-- Table structure for ribbon_quality
-- ----------------------------
DROP TABLE IF EXISTS `ribbon_quality`;
CREATE TABLE `ribbon_quality`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaxSampleTimeDelta` float NOT NULL DEFAULT 0,
  `AngleThreshold` float NOT NULL DEFAULT 0,
  `MinDistancePerSlice` float NOT NULL DEFAULT 0,
  `NumStrips` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ribbon_quality
-- ----------------------------

-- ----------------------------
-- Table structure for ruleset_item_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `ruleset_item_upgrade`;
CREATE TABLE `ruleset_item_upgrade`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `ItemUpgradeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruleset_item_upgrade
-- ----------------------------

-- ----------------------------
-- Table structure for s_d_replacement_model
-- ----------------------------
DROP TABLE IF EXISTS `s_d_replacement_model`;
CREATE TABLE `s_d_replacement_model`  (
  `ID` int NOT NULL DEFAULT 0,
  `SdFileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_d_replacement_model
-- ----------------------------

-- ----------------------------
-- Table structure for sandbox_scaling
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_scaling`;
CREATE TABLE `sandbox_scaling`  (
  `ID` int NOT NULL DEFAULT 0,
  `MinLevel` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` int UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sandbox_scaling
-- ----------------------------

-- ----------------------------
-- Table structure for scaling_stat_distribution
-- ----------------------------
DROP TABLE IF EXISTS `scaling_stat_distribution`;
CREATE TABLE `scaling_stat_distribution`  (
  `ID` int NOT NULL DEFAULT 0,
  `PlayerLevelToItemLevelCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` int UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scaling_stat_distribution
-- ----------------------------

-- ----------------------------
-- Table structure for scenario
-- ----------------------------
DROP TABLE IF EXISTS `scenario`;
CREATE TABLE `scenario`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AreaTableID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario
-- ----------------------------
INSERT INTO `scenario` VALUES (1, 'Вторжение: Даларан', 7581, 0, 4, 1);

-- ----------------------------
-- Table structure for scenario_locale
-- ----------------------------
DROP TABLE IF EXISTS `scenario_locale`;
CREATE TABLE `scenario_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_locale
-- ----------------------------

-- ----------------------------
-- Table structure for scenario_step
-- ----------------------------
DROP TABLE IF EXISTS `scenario_step`;
CREATE TABLE `scenario_step`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ScenarioID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Supersedes` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RewardQuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Criteriatreeid` int NOT NULL DEFAULT 0,
  `RelatedStep` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_step
-- ----------------------------
INSERT INTO `scenario_step` VALUES (1, 'Eliminate the threat of the legion in dalaran', 'Dalaran Defense', 1, 0, 43293, 0, 0, 1, 0, 1);

-- ----------------------------
-- Table structure for scenario_step_locale
-- ----------------------------
DROP TABLE IF EXISTS `scenario_step_locale`;
CREATE TABLE `scenario_step_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Title_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenario_step_locale
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script
-- ----------------------------
DROP TABLE IF EXISTS `scene_script`;
CREATE TABLE `scene_script`  (
  `ID` int NOT NULL DEFAULT 0,
  `FirstSceneScriptID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NextSceneScriptID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_global_text
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_global_text`;
CREATE TABLE `scene_script_global_text`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Script` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_global_text
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_global_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_global_text_locale`;
CREATE TABLE `scene_script_global_text_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Script_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_global_text_locale
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_package
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_package`;
CREATE TABLE `scene_script_package`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_package
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_package_locale
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_package_locale`;
CREATE TABLE `scene_script_package_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_package_locale
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_package_member
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_package_member`;
CREATE TABLE `scene_script_package_member`  (
  `ID` int NOT NULL DEFAULT 0,
  `SceneScriptPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SceneScriptID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChildSceneScriptPackageID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_package_member
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_text
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_text`;
CREATE TABLE `scene_script_text`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Script` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_text
-- ----------------------------

-- ----------------------------
-- Table structure for scene_script_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_text_locale`;
CREATE TABLE `scene_script_text_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Script_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_script_text_locale
-- ----------------------------

-- ----------------------------
-- Table structure for scheduled_interval
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_interval`;
CREATE TABLE `scheduled_interval`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `RepeatType` int NOT NULL DEFAULT 0,
  `DurationSecs` int NOT NULL DEFAULT 0,
  `OffsetSecs` int NOT NULL DEFAULT 0,
  `DateAlignmentType` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scheduled_interval
-- ----------------------------

-- ----------------------------
-- Table structure for scheduled_world_state
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_world_state`;
CREATE TABLE `scheduled_world_state`  (
  `ID` int NOT NULL DEFAULT 0,
  `ScheduledWorldStateGroupID` int NOT NULL DEFAULT 0,
  `WorldStateID` int NOT NULL DEFAULT 0,
  `Value` int NOT NULL DEFAULT 0,
  `DurationSecs` int NOT NULL DEFAULT 0,
  `Weight` int NOT NULL DEFAULT 0,
  `UniqueCategory` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `OrderIndex` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scheduled_world_state
-- ----------------------------

-- ----------------------------
-- Table structure for scheduled_world_state_group
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_world_state_group`;
CREATE TABLE `scheduled_world_state_group`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `ScheduledIntervalID` int NOT NULL DEFAULT 0,
  `SelectionType` int NOT NULL DEFAULT 0,
  `SelectionCount` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scheduled_world_state_group
-- ----------------------------

-- ----------------------------
-- Table structure for scheduled_world_state_x_uniq_cat
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_world_state_x_uniq_cat`;
CREATE TABLE `scheduled_world_state_x_uniq_cat`  (
  `ID` int NOT NULL DEFAULT 0,
  `ScheduledUniqueCategoryID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scheduled_world_state_x_uniq_cat
-- ----------------------------

-- ----------------------------
-- Table structure for screen_effect
-- ----------------------------
DROP TABLE IF EXISTS `screen_effect`;
CREATE TABLE `screen_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Param1` int UNSIGNED NOT NULL DEFAULT 0,
  `Param2` int UNSIGNED NOT NULL DEFAULT 0,
  `Param3` int UNSIGNED NOT NULL DEFAULT 0,
  `Param4` int UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsFadeIn` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsFadeOut` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TimeOfDayOverride` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Effect` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LightFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EffectMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `FullScreenEffectID` int NOT NULL DEFAULT 0,
  `SoundAmbienceID` int NOT NULL DEFAULT 0,
  `ZoneMusicID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of screen_effect
-- ----------------------------

-- ----------------------------
-- Table structure for screen_effect_locale
-- ----------------------------
DROP TABLE IF EXISTS `screen_effect_locale`;
CREATE TABLE `screen_effect_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of screen_effect_locale
-- ----------------------------

-- ----------------------------
-- Table structure for screen_location
-- ----------------------------
DROP TABLE IF EXISTS `screen_location`;
CREATE TABLE `screen_location`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of screen_location
-- ----------------------------

-- ----------------------------
-- Table structure for screen_location_locale
-- ----------------------------
DROP TABLE IF EXISTS `screen_location_locale`;
CREATE TABLE `screen_location_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of screen_location_locale
-- ----------------------------

-- ----------------------------
-- Table structure for seamless_site
-- ----------------------------
DROP TABLE IF EXISTS `seamless_site`;
CREATE TABLE `seamless_site`  (
  `ID` int NOT NULL DEFAULT 0,
  `MapID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seamless_site
-- ----------------------------

-- ----------------------------
-- Table structure for server_messages
-- ----------------------------
DROP TABLE IF EXISTS `server_messages`;
CREATE TABLE `server_messages`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server_messages
-- ----------------------------

-- ----------------------------
-- Table structure for server_messages_locale
-- ----------------------------
DROP TABLE IF EXISTS `server_messages_locale`;
CREATE TABLE `server_messages_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server_messages_locale
-- ----------------------------

-- ----------------------------
-- Table structure for shadowy_effect
-- ----------------------------
DROP TABLE IF EXISTS `shadowy_effect`;
CREATE TABLE `shadowy_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `PrimaryColor` int UNSIGNED NOT NULL DEFAULT 0,
  `SecondaryColor` int UNSIGNED NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Value` float NOT NULL DEFAULT 0,
  `FadeInTime` float NOT NULL DEFAULT 0,
  `FadeOutTime` float NOT NULL DEFAULT 0,
  `InnerStrength` float NOT NULL DEFAULT 0,
  `OuterStrength` float NOT NULL DEFAULT 0,
  `InitialDelay` float NOT NULL DEFAULT 0,
  `AttachPos` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CurveID` int NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shadowy_effect
-- ----------------------------

-- ----------------------------
-- Table structure for skill_line
-- ----------------------------
DROP TABLE IF EXISTS `skill_line`;
CREATE TABLE `skill_line`  (
  `ID` int NOT NULL DEFAULT 0,
  `DisplayName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AlternateVerb` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CategoryID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CanLink` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellIconFileID` int NOT NULL DEFAULT 0,
  `ParentSkillLineID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_line
-- ----------------------------

-- ----------------------------
-- Table structure for skill_line_ability
-- ----------------------------
DROP TABLE IF EXISTS `skill_line_ability`;
CREATE TABLE `skill_line_ability`  (
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Spell` int UNSIGNED NOT NULL DEFAULT 0,
  `SupercedesSpell` int UNSIGNED NOT NULL DEFAULT 0,
  `SkillLine` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TrivialSkillLineRankHigh` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TrivialSkillLineRankLow` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UniqueBit` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TradeSkillCategoryID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NumSkillUps` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `MinSkillLineRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AcquireMethod` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_line_ability
-- ----------------------------

-- ----------------------------
-- Table structure for skill_line_locale
-- ----------------------------
DROP TABLE IF EXISTS `skill_line_locale`;
CREATE TABLE `skill_line_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AlternateVerb_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_line_locale
-- ----------------------------

-- ----------------------------
-- Table structure for skill_race_class_info
-- ----------------------------
DROP TABLE IF EXISTS `skill_race_class_info`;
CREATE TABLE `skill_race_class_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceMask` bigint NOT NULL DEFAULT 0,
  `SkillID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SkillTierID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Availability` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill_race_class_info
-- ----------------------------

-- ----------------------------
-- Table structure for sound_ambience
-- ----------------------------
DROP TABLE IF EXISTS `sound_ambience`;
CREATE TABLE `sound_ambience`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundFilterID` int NOT NULL DEFAULT 0,
  `FlavorSoundFilterID` int NOT NULL DEFAULT 0,
  `AmbienceID1` int NOT NULL DEFAULT 0,
  `AmbienceID2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_ambience
-- ----------------------------

-- ----------------------------
-- Table structure for sound_ambience_flavor
-- ----------------------------
DROP TABLE IF EXISTS `sound_ambience_flavor`;
CREATE TABLE `sound_ambience_flavor`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundEntriesIDDay` int NOT NULL DEFAULT 0,
  `SoundEntriesIDNight` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_ambience_flavor
-- ----------------------------

-- ----------------------------
-- Table structure for sound_bus
-- ----------------------------
DROP TABLE IF EXISTS `sound_bus`;
CREATE TABLE `sound_bus`  (
  `DefaultVolume` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPlaybackLimit` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPriority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPriorityPenalty` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BusEnumID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_bus
-- ----------------------------

-- ----------------------------
-- Table structure for sound_bus_override
-- ----------------------------
DROP TABLE IF EXISTS `sound_bus_override`;
CREATE TABLE `sound_bus_override`  (
  `ID` int NOT NULL DEFAULT 0,
  `Volume` float NOT NULL DEFAULT 0,
  `PlaybackLimit` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PriorityPenalty` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundBusID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_bus_override
-- ----------------------------

-- ----------------------------
-- Table structure for sound_emitter_pill_points
-- ----------------------------
DROP TABLE IF EXISTS `sound_emitter_pill_points`;
CREATE TABLE `sound_emitter_pill_points`  (
  `ID` int NOT NULL DEFAULT 0,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `SoundEmittersID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_emitter_pill_points
-- ----------------------------

-- ----------------------------
-- Table structure for sound_emitters
-- ----------------------------
DROP TABLE IF EXISTS `sound_emitters`;
CREATE TABLE `sound_emitters`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `Direction1` float NOT NULL DEFAULT 0,
  `Direction2` float NOT NULL DEFAULT 0,
  `Direction3` float NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EmitterType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `SoundEntriesID` int NOT NULL DEFAULT 0,
  `PhaseGroupID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_emitters
-- ----------------------------

-- ----------------------------
-- Table structure for sound_emitters_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_emitters_locale`;
CREATE TABLE `sound_emitters_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_emitters_locale
-- ----------------------------

-- ----------------------------
-- Table structure for sound_envelope
-- ----------------------------
DROP TABLE IF EXISTS `sound_envelope`;
CREATE TABLE `sound_envelope`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `CurveID` int NOT NULL DEFAULT 0,
  `DecayIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SustainIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReleaseIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EnvelopeType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_envelope
-- ----------------------------

-- ----------------------------
-- Table structure for sound_filter
-- ----------------------------
DROP TABLE IF EXISTS `sound_filter`;
CREATE TABLE `sound_filter`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_filter
-- ----------------------------

-- ----------------------------
-- Table structure for sound_filter_elem
-- ----------------------------
DROP TABLE IF EXISTS `sound_filter_elem`;
CREATE TABLE `sound_filter_elem`  (
  `ID` int NOT NULL DEFAULT 0,
  `Params1` float NOT NULL DEFAULT 0,
  `Params2` float NOT NULL DEFAULT 0,
  `Params3` float NOT NULL DEFAULT 0,
  `Params4` float NOT NULL DEFAULT 0,
  `Params5` float NOT NULL DEFAULT 0,
  `Params6` float NOT NULL DEFAULT 0,
  `Params7` float NOT NULL DEFAULT 0,
  `Params8` float NOT NULL DEFAULT 0,
  `Params9` float NOT NULL DEFAULT 0,
  `FilterType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_filter_elem
-- ----------------------------

-- ----------------------------
-- Table structure for sound_filter_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_filter_locale`;
CREATE TABLE `sound_filter_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_filter_locale
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit`;
CREATE TABLE `sound_kit`  (
  `ID` int NOT NULL DEFAULT 0,
  `VolumeFloat` float NOT NULL DEFAULT 0,
  `MinDistance` float NOT NULL DEFAULT 0,
  `DistanceCutoff` float NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundEntriesAdvancedID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DialogType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EAXDef` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VolumeVariationPlus` float NOT NULL DEFAULT 0,
  `VolumeVariationMinus` float NOT NULL DEFAULT 0,
  `PitchVariationPlus` float NOT NULL DEFAULT 0,
  `PitchVariationMinus` float NOT NULL DEFAULT 0,
  `PitchAdjust` float NOT NULL DEFAULT 0,
  `BusOverwriteID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxInstances` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit_advanced
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_advanced`;
CREATE TABLE `sound_kit_advanced`  (
  `ID` int NOT NULL DEFAULT 0,
  `InnerRadius2D` float NOT NULL DEFAULT 0,
  `DuckToSFX` float NOT NULL DEFAULT 0,
  `DuckToMusic` float NOT NULL DEFAULT 0,
  `InnerRadiusOfInfluence` float NOT NULL DEFAULT 0,
  `OuterRadiusOfInfluence` float NOT NULL DEFAULT 0,
  `TimeToDuck` int NOT NULL DEFAULT 0,
  `TimeToUnduck` int NOT NULL DEFAULT 0,
  `OuterRadius2D` float NOT NULL DEFAULT 0,
  `Usage` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `TimeA` int NOT NULL DEFAULT 0,
  `TimeB` int NOT NULL DEFAULT 0,
  `TimeC` int NOT NULL DEFAULT 0,
  `TimeD` int NOT NULL DEFAULT 0,
  `RandomOffsetRange` int NOT NULL DEFAULT 0,
  `TimeIntervalMin` int NOT NULL DEFAULT 0,
  `TimeIntervalMax` int NOT NULL DEFAULT 0,
  `DelayMin` int NOT NULL DEFAULT 0,
  `DelayMax` int NOT NULL DEFAULT 0,
  `VolumeSliderCategory` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DuckToAmbience` float NOT NULL DEFAULT 0,
  `InsideAngle` float NOT NULL DEFAULT 0,
  `OutsideAngle` float NOT NULL DEFAULT 0,
  `OutsideVolume` float NOT NULL DEFAULT 0,
  `MinRandomPosOffset` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxRandomPosOffset` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DuckToDialog` float NOT NULL DEFAULT 0,
  `DuckToSuppressors` float NOT NULL DEFAULT 0,
  `MsOffset` int NOT NULL DEFAULT 0,
  `TimeCooldownMin` int NOT NULL DEFAULT 0,
  `TimeCooldownMax` int NOT NULL DEFAULT 0,
  `MaxInstancesBehavior` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VolumeControlType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VolumeFadeInTimeMin` int NOT NULL DEFAULT 0,
  `VolumeFadeInTimeMax` int NOT NULL DEFAULT 0,
  `VolumeFadeInCurveID` int NOT NULL DEFAULT 0,
  `VolumeFadeOutTimeMin` int NOT NULL DEFAULT 0,
  `VolumeFadeOutTimeMax` int NOT NULL DEFAULT 0,
  `VolumeFadeOutCurveID` int NOT NULL DEFAULT 0,
  `ChanceToPlay` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit_advanced
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit_child
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_child`;
CREATE TABLE `sound_kit_child`  (
  `ID` int NOT NULL DEFAULT 0,
  `ParentSoundKitID` int NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit_child
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit_entry
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_entry`;
CREATE TABLE `sound_kit_entry`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `Frequency` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Volume` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit_entry
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit_fallback
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_fallback`;
CREATE TABLE `sound_kit_fallback`  (
  `ID` int NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `FallbackSoundKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit_fallback
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit_name
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_name`;
CREATE TABLE `sound_kit_name`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit_name
-- ----------------------------

-- ----------------------------
-- Table structure for sound_kit_name_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_name_locale`;
CREATE TABLE `sound_kit_name_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_kit_name_locale
-- ----------------------------

-- ----------------------------
-- Table structure for sound_override
-- ----------------------------
DROP TABLE IF EXISTS `sound_override`;
CREATE TABLE `sound_override`  (
  `ID` int NOT NULL DEFAULT 0,
  `ZoneIntroMusicID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusicID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPreferencesID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_override
-- ----------------------------

-- ----------------------------
-- Table structure for sound_provider_preferences
-- ----------------------------
DROP TABLE IF EXISTS `sound_provider_preferences`;
CREATE TABLE `sound_provider_preferences`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `EAXDecayTime` float NOT NULL DEFAULT 0,
  `EAX2EnvironmentSize` float NOT NULL DEFAULT 0,
  `EAX2EnvironmentDiffusion` float NOT NULL DEFAULT 0,
  `EAX2DecayHFRatio` float NOT NULL DEFAULT 0,
  `EAX2ReflectionsDelay` float NOT NULL DEFAULT 0,
  `EAX2ReverbDelay` float NOT NULL DEFAULT 0,
  `EAX2RoomRolloff` float NOT NULL DEFAULT 0,
  `EAX2AirAbsorption` float NOT NULL DEFAULT 0,
  `EAX3DecayLFRatio` float NOT NULL DEFAULT 0,
  `EAX3EchoTime` float NOT NULL DEFAULT 0,
  `EAX3EchoDepth` float NOT NULL DEFAULT 0,
  `EAX3ModulationTime` float NOT NULL DEFAULT 0,
  `EAX3ModulationDepth` float NOT NULL DEFAULT 0,
  `EAX3HFReference` float NOT NULL DEFAULT 0,
  `EAX3LFReference` float NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EAX2Room` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EAX2RoomHF` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EAX2Reflections` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EAX2Reverb` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EAXEnvironmentSelection` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EAX3RoomLF` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_provider_preferences
-- ----------------------------

-- ----------------------------
-- Table structure for sound_provider_preferences_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_provider_preferences_locale`;
CREATE TABLE `sound_provider_preferences_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sound_provider_preferences_locale
-- ----------------------------

-- ----------------------------
-- Table structure for source_info
-- ----------------------------
DROP TABLE IF EXISTS `source_info`;
CREATE TABLE `source_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `SourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PvpFaction` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of source_info
-- ----------------------------

-- ----------------------------
-- Table structure for source_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `source_info_locale`;
CREATE TABLE `source_info_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of source_info_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spam_messages
-- ----------------------------
DROP TABLE IF EXISTS `spam_messages`;
CREATE TABLE `spam_messages`  (
  `ID` int NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spam_messages
-- ----------------------------

-- ----------------------------
-- Table structure for spam_messages_locale
-- ----------------------------
DROP TABLE IF EXISTS `spam_messages_locale`;
CREATE TABLE `spam_messages_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spam_messages_locale
-- ----------------------------

-- ----------------------------
-- Table structure for specialization_spells
-- ----------------------------
DROP TABLE IF EXISTS `specialization_spells`;
CREATE TABLE `specialization_spells`  (
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SpellID` int NOT NULL DEFAULT 0,
  `OverridesSpellID` int NOT NULL DEFAULT 0,
  `SpecID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specialization_spells
-- ----------------------------

-- ----------------------------
-- Table structure for specialization_spells_locale
-- ----------------------------
DROP TABLE IF EXISTS `specialization_spells_locale`;
CREATE TABLE `specialization_spells_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specialization_spells_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell
-- ----------------------------
DROP TABLE IF EXISTS `spell`;
CREATE TABLE `spell`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameSubtext` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AuraDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell
-- ----------------------------
INSERT INTO `spell` VALUES (17940, 'Agony Soul Shard Driver', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for spell_action_bar_pref
-- ----------------------------
DROP TABLE IF EXISTS `spell_action_bar_pref`;
CREATE TABLE `spell_action_bar_pref`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `PreferredActionBarMask` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_action_bar_pref
-- ----------------------------

-- ----------------------------
-- Table structure for spell_activation_overlay
-- ----------------------------
DROP TABLE IF EXISTS `spell_activation_overlay`;
CREATE TABLE `spell_activation_overlay`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `OverlayFileDataID` int NOT NULL DEFAULT 0,
  `Color` int UNSIGNED NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask1` int UNSIGNED NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask2` int UNSIGNED NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask3` int UNSIGNED NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask4` int UNSIGNED NOT NULL DEFAULT 0,
  `ScreenLocationID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TriggerType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundEntriesID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_activation_overlay
-- ----------------------------

-- ----------------------------
-- Table structure for spell_aura_options
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_options`;
CREATE TABLE `spell_aura_options`  (
  `ID` int NOT NULL DEFAULT 0,
  `ProcCharges` int UNSIGNED NOT NULL DEFAULT 0,
  `ProcTypeMask` int UNSIGNED NOT NULL DEFAULT 0,
  `ProcCategoryRecovery` int NOT NULL DEFAULT 0,
  `CumulativeAura` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellProcsPerMinuteID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ProcChance` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_aura_options
-- ----------------------------
INSERT INTO `spell_aura_options` VALUES (12458, 1, 16384, 0, 2, 0, 0, 100, 114255, 1);

-- ----------------------------
-- Table structure for spell_aura_restrictions
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_restrictions`;
CREATE TABLE `spell_aura_restrictions`  (
  `ID` int NOT NULL DEFAULT 0,
  `CasterAuraSpell` int NOT NULL DEFAULT 0,
  `TargetAuraSpell` int NOT NULL DEFAULT 0,
  `ExcludeCasterAuraSpell` int NOT NULL DEFAULT 0,
  `ExcludeTargetAuraSpell` int NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CasterAuraState` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TargetAuraState` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExcludeCasterAuraState` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ExcludeTargetAuraState` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_aura_restrictions
-- ----------------------------

-- ----------------------------
-- Table structure for spell_aura_vis_x_chr_spec
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_vis_x_chr_spec`;
CREATE TABLE `spell_aura_vis_x_chr_spec`  (
  `ID` int NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_aura_vis_x_chr_spec
-- ----------------------------

-- ----------------------------
-- Table structure for spell_aura_visibility
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_visibility`;
CREATE TABLE `spell_aura_visibility`  (
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_aura_visibility
-- ----------------------------

-- ----------------------------
-- Table structure for spell_cast_times
-- ----------------------------
DROP TABLE IF EXISTS `spell_cast_times`;
CREATE TABLE `spell_cast_times`  (
  `ID` int NOT NULL DEFAULT 0,
  `Base` int NOT NULL DEFAULT 0,
  `Minimum` int NOT NULL DEFAULT 0,
  `PerLevel` smallint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_cast_times
-- ----------------------------

-- ----------------------------
-- Table structure for spell_casting_requirements
-- ----------------------------
DROP TABLE IF EXISTS `spell_casting_requirements`;
CREATE TABLE `spell_casting_requirements`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `MinFactionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAreasID` smallint NOT NULL DEFAULT 0,
  `RequiresSpellFocus` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FacingCasterFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAuraVision` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_casting_requirements
-- ----------------------------
INSERT INTO `spell_casting_requirements` VALUES (3117, 54964, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for spell_categories
-- ----------------------------
DROP TABLE IF EXISTS `spell_categories`;
CREATE TABLE `spell_categories`  (
  `ID` int NOT NULL DEFAULT 0,
  `Category` smallint UNSIGNED NOT NULL DEFAULT 0,
  `StartRecoveryCategory` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChargeCategory` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DefenseType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DispelType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Mechanic` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PreventionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_categories
-- ----------------------------
INSERT INTO `spell_categories` VALUES (4551, 0, 0, 0, 0, 0, 0, 0, 0, 26272, 0);

-- ----------------------------
-- Table structure for spell_category
-- ----------------------------
DROP TABLE IF EXISTS `spell_category`;
CREATE TABLE `spell_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ChargeRecoveryTime` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UsesPerWeek` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxCharges` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TypeMask` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_category
-- ----------------------------

-- ----------------------------
-- Table structure for spell_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_category_locale`;
CREATE TABLE `spell_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_chain_effects
-- ----------------------------
DROP TABLE IF EXISTS `spell_chain_effects`;
CREATE TABLE `spell_chain_effects`  (
  `ID` int NOT NULL DEFAULT 0,
  `AvgSegLen` float NOT NULL DEFAULT 0,
  `NoiseScale` float NOT NULL DEFAULT 0,
  `TexCoordScale` float NOT NULL DEFAULT 0,
  `SegDuration` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `JointOffsetRadius` float NOT NULL DEFAULT 0,
  `MinorJointScale` float NOT NULL DEFAULT 0,
  `MajorJointScale` float NOT NULL DEFAULT 0,
  `JointMoveSpeed` float NOT NULL DEFAULT 0,
  `JointSmoothness` float NOT NULL DEFAULT 0,
  `MinDurationBetweenJointJumps` float NOT NULL DEFAULT 0,
  `MaxDurationBetweenJointJumps` float NOT NULL DEFAULT 0,
  `WaveHeight` float NOT NULL DEFAULT 0,
  `WaveFreq` float NOT NULL DEFAULT 0,
  `WaveSpeed` float NOT NULL DEFAULT 0,
  `MinWaveAngle` float NOT NULL DEFAULT 0,
  `MaxWaveAngle` float NOT NULL DEFAULT 0,
  `MinWaveSpin` float NOT NULL DEFAULT 0,
  `MaxWaveSpin` float NOT NULL DEFAULT 0,
  `ArcHeight` float NOT NULL DEFAULT 0,
  `MinArcAngle` float NOT NULL DEFAULT 0,
  `MaxArcAngle` float NOT NULL DEFAULT 0,
  `MinArcSpin` float NOT NULL DEFAULT 0,
  `MaxArcSpin` float NOT NULL DEFAULT 0,
  `DelayBetweenEffects` float NOT NULL DEFAULT 0,
  `MinFlickerOnDuration` float NOT NULL DEFAULT 0,
  `MaxFlickerOnDuration` float NOT NULL DEFAULT 0,
  `MinFlickerOffDuration` float NOT NULL DEFAULT 0,
  `MaxFlickerOffDuration` float NOT NULL DEFAULT 0,
  `PulseSpeed` float NOT NULL DEFAULT 0,
  `PulseOnLength` float NOT NULL DEFAULT 0,
  `PulseFadeLength` float NOT NULL DEFAULT 0,
  `WavePhase` float NOT NULL DEFAULT 0,
  `TimePerFlipFrame` float NOT NULL DEFAULT 0,
  `VariancePerFlipFrame` float NOT NULL DEFAULT 0,
  `TextureCoordScaleU1` float NOT NULL DEFAULT 0,
  `TextureCoordScaleU2` float NOT NULL DEFAULT 0,
  `TextureCoordScaleU3` float NOT NULL DEFAULT 0,
  `TextureCoordScaleV1` float NOT NULL DEFAULT 0,
  `TextureCoordScaleV2` float NOT NULL DEFAULT 0,
  `TextureCoordScaleV3` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthU1` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthU2` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthU3` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthV1` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthV2` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthV3` float NOT NULL DEFAULT 0,
  `TextureParticleFileDataID` int NOT NULL DEFAULT 0,
  `StartWidth` float NOT NULL DEFAULT 0,
  `EndWidth` float NOT NULL DEFAULT 0,
  `ParticleScaleMultiplier` float NOT NULL DEFAULT 0,
  `ParticleEmissionRateMultiplier` float NOT NULL DEFAULT 0,
  `SegDelay` smallint UNSIGNED NOT NULL DEFAULT 0,
  `JointCount` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID9` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID10` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID11` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WidthScaleCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `JointsPerMinorJoint` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinorJointsPerMajorJoint` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Alpha` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Red` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BlendMode` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RenderLayer` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NumFlipFramesU` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NumFlipFramesV` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundKitID` int NOT NULL DEFAULT 0,
  `TextureFileDataID1` int NOT NULL DEFAULT 0,
  `TextureFileDataID2` int NOT NULL DEFAULT 0,
  `TextureFileDataID3` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_chain_effects
-- ----------------------------

-- ----------------------------
-- Table structure for spell_class_options
-- ----------------------------
DROP TABLE IF EXISTS `spell_class_options`;
CREATE TABLE `spell_class_options`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `SpellClassMask1` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassMask2` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassMask3` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassMask4` int UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassSet` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ModalNextSpell` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_class_options
-- ----------------------------

-- ----------------------------
-- Table structure for spell_cooldowns
-- ----------------------------
DROP TABLE IF EXISTS `spell_cooldowns`;
CREATE TABLE `spell_cooldowns`  (
  `ID` int NOT NULL DEFAULT 0,
  `CategoryRecoveryTime` int NOT NULL DEFAULT 0,
  `RecoveryTime` int NOT NULL DEFAULT 0,
  `StartRecoveryTime` int NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_cooldowns
-- ----------------------------
INSERT INTO `spell_cooldowns` VALUES (22915, 0, 0, 0, 0, 199360, 0);

-- ----------------------------
-- Table structure for spell_description_variables
-- ----------------------------
DROP TABLE IF EXISTS `spell_description_variables`;
CREATE TABLE `spell_description_variables`  (
  `ID` int NOT NULL DEFAULT 0,
  `Variables` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_description_variables
-- ----------------------------

-- ----------------------------
-- Table structure for spell_description_variables_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_description_variables_locale`;
CREATE TABLE `spell_description_variables_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Variables_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_description_variables_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_dispel_type
-- ----------------------------
DROP TABLE IF EXISTS `spell_dispel_type`;
CREATE TABLE `spell_dispel_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `InternalName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Mask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ImmunityPossible` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_dispel_type
-- ----------------------------

-- ----------------------------
-- Table structure for spell_dispel_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_dispel_type_locale`;
CREATE TABLE `spell_dispel_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `InternalName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_dispel_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_duration
-- ----------------------------
DROP TABLE IF EXISTS `spell_duration`;
CREATE TABLE `spell_duration`  (
  `ID` int NOT NULL DEFAULT 0,
  `Duration` int NOT NULL DEFAULT 0,
  `MaxDuration` int NOT NULL DEFAULT 0,
  `DurationPerLevel` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_duration
-- ----------------------------
INSERT INTO `spell_duration` VALUES (1300, 2100000, 2100000, 0, 0);

-- ----------------------------
-- Table structure for spell_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_effect`;
CREATE TABLE `spell_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Effect` int NOT NULL DEFAULT 0,
  `EffectBasePoints` int NOT NULL DEFAULT 0,
  `EffectIndex` int NOT NULL DEFAULT 0,
  `EffectAura` int NOT NULL DEFAULT 0,
  `DifficultyID` int NOT NULL DEFAULT 0,
  `EffectAmplitude` float NOT NULL DEFAULT 0,
  `EffectAuraPeriod` int NOT NULL DEFAULT 0,
  `EffectBonusCoefficient` float NOT NULL DEFAULT 0,
  `EffectChainAmplitude` float NOT NULL DEFAULT 0,
  `EffectChainTargets` int NOT NULL DEFAULT 0,
  `EffectDieSides` int NOT NULL DEFAULT 0,
  `EffectItemType` int NOT NULL DEFAULT 0,
  `EffectMechanic` int NOT NULL DEFAULT 0,
  `EffectPointsPerResource` float NOT NULL DEFAULT 0,
  `EffectRealPointsPerLevel` float NOT NULL DEFAULT 0,
  `EffectTriggerSpell` int NOT NULL DEFAULT 0,
  `EffectPosFacing` float NOT NULL DEFAULT 0,
  `EffectAttributes` int NOT NULL DEFAULT 0,
  `BonusCoefficientFromAP` float NOT NULL DEFAULT 0,
  `PvpMultiplier` float NOT NULL DEFAULT 0,
  `Coefficient` float NOT NULL DEFAULT 0,
  `Variance` float NOT NULL DEFAULT 0,
  `ResourceCoefficient` float NOT NULL DEFAULT 0,
  `GroupSizeBasePointsCoefficient` float NOT NULL DEFAULT 0,
  `EffectSpellClassMask1` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectSpellClassMask2` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectSpellClassMask3` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectSpellClassMask4` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectMiscValue1` int NOT NULL DEFAULT 0,
  `EffectMiscValue2` int NOT NULL DEFAULT 0,
  `EffectRadiusIndex1` int NOT NULL DEFAULT 0,
  `EffectRadiusIndex2` int NOT NULL DEFAULT 0,
  `ImplicitTarget1` int NOT NULL DEFAULT 0,
  `ImplicitTarget2` int NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_effect
-- ----------------------------
INSERT INTO `spell_effect` VALUES (6, 6, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 17940, 0);

-- ----------------------------
-- Table structure for spell_effect_emission
-- ----------------------------
DROP TABLE IF EXISTS `spell_effect_emission`;
CREATE TABLE `spell_effect_emission`  (
  `ID` int NOT NULL DEFAULT 0,
  `EmissionRate` float NOT NULL DEFAULT 0,
  `ModelScale` float NOT NULL DEFAULT 0,
  `AreaModelID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_effect_emission
-- ----------------------------

-- ----------------------------
-- Table structure for spell_equipped_items
-- ----------------------------
DROP TABLE IF EXISTS `spell_equipped_items`;
CREATE TABLE `spell_equipped_items`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `EquippedItemInvTypes` int NOT NULL DEFAULT 0,
  `EquippedItemSubclass` int NOT NULL DEFAULT 0,
  `EquippedItemClass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_equipped_items
-- ----------------------------

-- ----------------------------
-- Table structure for spell_flyout
-- ----------------------------
DROP TABLE IF EXISTS `spell_flyout`;
CREATE TABLE `spell_flyout`  (
  `ID` int NOT NULL DEFAULT 0,
  `RaceMask` bigint UNSIGNED NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `SpellIconFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_flyout
-- ----------------------------

-- ----------------------------
-- Table structure for spell_flyout_item
-- ----------------------------
DROP TABLE IF EXISTS `spell_flyout_item`;
CREATE TABLE `spell_flyout_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `Slot` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_flyout_item
-- ----------------------------

-- ----------------------------
-- Table structure for spell_flyout_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_flyout_locale`;
CREATE TABLE `spell_flyout_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_flyout_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_focus_object
-- ----------------------------
DROP TABLE IF EXISTS `spell_focus_object`;
CREATE TABLE `spell_focus_object`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_focus_object
-- ----------------------------

-- ----------------------------
-- Table structure for spell_focus_object_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_focus_object_locale`;
CREATE TABLE `spell_focus_object_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_focus_object_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_interrupts
-- ----------------------------
DROP TABLE IF EXISTS `spell_interrupts`;
CREATE TABLE `spell_interrupts`  (
  `ID` int NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InterruptFlags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AuraInterruptFlags1` int NOT NULL DEFAULT 0,
  `AuraInterruptFlags2` int NOT NULL DEFAULT 0,
  `ChannelInterruptFlags1` int NOT NULL DEFAULT 0,
  `ChannelInterruptFlags2` int NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_interrupts
-- ----------------------------
INSERT INTO `spell_interrupts` VALUES (41859, 0, 0, 1342181403, 0, 0, 0, 156136, 1);

-- ----------------------------
-- Table structure for spell_item_enchantment
-- ----------------------------
DROP TABLE IF EXISTS `spell_item_enchantment`;
CREATE TABLE `spell_item_enchantment`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `EffectArg1` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectArg2` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectArg3` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectScalingPoints1` float NOT NULL DEFAULT 0,
  `EffectScalingPoints2` float NOT NULL DEFAULT 0,
  `EffectScalingPoints3` float NOT NULL DEFAULT 0,
  `TransmogCost` int UNSIGNED NOT NULL DEFAULT 0,
  `TextureFileDataID` int UNSIGNED NOT NULL DEFAULT 0,
  `EffectPointsMin1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EffectPointsMin2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EffectPointsMin3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemVisual` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Charges` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Effect1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Effect2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Effect3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ScalingClass` tinyint NOT NULL DEFAULT 0,
  `ScalingClassRestricted` tinyint NOT NULL DEFAULT 0,
  `TransmogPlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_item_enchantment
-- ----------------------------

-- ----------------------------
-- Table structure for spell_item_enchantment_condition
-- ----------------------------
DROP TABLE IF EXISTS `spell_item_enchantment_condition`;
CREATE TABLE `spell_item_enchantment_condition`  (
  `ID` int NOT NULL DEFAULT 0,
  `LtOperand1` int NOT NULL DEFAULT 0,
  `LtOperand2` int NOT NULL DEFAULT 0,
  `LtOperand3` int NOT NULL DEFAULT 0,
  `LtOperand4` int NOT NULL DEFAULT 0,
  `LtOperand5` int NOT NULL DEFAULT 0,
  `LtOperandType1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Operator1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Operator2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Operator3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Operator4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Operator5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Logic1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Logic2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Logic3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Logic4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Logic5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_item_enchantment_condition
-- ----------------------------

-- ----------------------------
-- Table structure for spell_item_enchantment_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_item_enchantment_locale`;
CREATE TABLE `spell_item_enchantment_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_item_enchantment_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_keybound_override
-- ----------------------------
DROP TABLE IF EXISTS `spell_keybound_override`;
CREATE TABLE `spell_keybound_override`  (
  `ID` int NOT NULL DEFAULT 0,
  `Function` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Data` int NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_keybound_override
-- ----------------------------

-- ----------------------------
-- Table structure for spell_keybound_override_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_keybound_override_locale`;
CREATE TABLE `spell_keybound_override_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Function_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_keybound_override_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_label
-- ----------------------------
DROP TABLE IF EXISTS `spell_label`;
CREATE TABLE `spell_label`  (
  `ID` int NOT NULL DEFAULT 0,
  `LabelID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_label
-- ----------------------------

-- ----------------------------
-- Table structure for spell_learn_spell
-- ----------------------------
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE `spell_learn_spell`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `LearnSpellID` int NOT NULL DEFAULT 0,
  `OverridesSpellID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_learn_spell
-- ----------------------------

-- ----------------------------
-- Table structure for spell_levels
-- ----------------------------
DROP TABLE IF EXISTS `spell_levels`;
CREATE TABLE `spell_levels`  (
  `ID` int NOT NULL DEFAULT 0,
  `BaseLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxPassiveAuraLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_levels
-- ----------------------------

-- ----------------------------
-- Table structure for spell_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_locale`;
CREATE TABLE `spell_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `NameSubtext_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `AuraDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `spell_mechanic`;
CREATE TABLE `spell_mechanic`  (
  `ID` int NOT NULL DEFAULT 0,
  `StateName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_mechanic
-- ----------------------------

-- ----------------------------
-- Table structure for spell_mechanic_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_mechanic_locale`;
CREATE TABLE `spell_mechanic_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StateName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_mechanic_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_misc
-- ----------------------------
DROP TABLE IF EXISTS `spell_misc`;
CREATE TABLE `spell_misc`  (
  `ID` int NOT NULL DEFAULT 0,
  `CastingTimeIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DurationIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RangeIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SchoolMask` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellIconFileDataID` int NOT NULL DEFAULT 0,
  `Speed` float NOT NULL DEFAULT 0,
  `ActiveIconFileDataID` int NOT NULL DEFAULT 0,
  `LaunchDelay` float NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Attributes1` int NOT NULL DEFAULT 0,
  `Attributes2` int NOT NULL DEFAULT 0,
  `Attributes3` int NOT NULL DEFAULT 0,
  `Attributes4` int NOT NULL DEFAULT 0,
  `Attributes5` int NOT NULL DEFAULT 0,
  `Attributes6` int NOT NULL DEFAULT 0,
  `Attributes7` int NOT NULL DEFAULT 0,
  `Attributes8` int NOT NULL DEFAULT 0,
  `Attributes9` int NOT NULL DEFAULT 0,
  `Attributes10` int NOT NULL DEFAULT 0,
  `Attributes11` int NOT NULL DEFAULT 0,
  `Attributes12` int NOT NULL DEFAULT 0,
  `Attributes13` int NOT NULL DEFAULT 0,
  `Attributes14` int NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_misc
-- ----------------------------
INSERT INTO `spell_misc` VALUES (22620, 1, 0, 5, 64, 132218, 0, 132218, 0, 0, 16781824, 0, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38807, 0);

-- ----------------------------
-- Table structure for spell_missile
-- ----------------------------
DROP TABLE IF EXISTS `spell_missile`;
CREATE TABLE `spell_missile`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `DefaultPitchMin` float NOT NULL DEFAULT 0,
  `DefaultPitchMax` float NOT NULL DEFAULT 0,
  `DefaultSpeedMin` float NOT NULL DEFAULT 0,
  `DefaultSpeedMax` float NOT NULL DEFAULT 0,
  `RandomizeFacingMin` float NOT NULL DEFAULT 0,
  `RandomizeFacingMax` float NOT NULL DEFAULT 0,
  `RandomizePitchMin` float NOT NULL DEFAULT 0,
  `RandomizePitchMax` float NOT NULL DEFAULT 0,
  `RandomizeSpeedMin` float NOT NULL DEFAULT 0,
  `RandomizeSpeedMax` float NOT NULL DEFAULT 0,
  `Gravity` float NOT NULL DEFAULT 0,
  `MaxDuration` float NOT NULL DEFAULT 0,
  `CollisionRadius` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_missile
-- ----------------------------

-- ----------------------------
-- Table structure for spell_missile_motion
-- ----------------------------
DROP TABLE IF EXISTS `spell_missile_motion`;
CREATE TABLE `spell_missile_motion`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ScriptBody` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MissileCount` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_missile_motion
-- ----------------------------

-- ----------------------------
-- Table structure for spell_missile_motion_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_missile_motion_locale`;
CREATE TABLE `spell_missile_motion_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ScriptBody_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_missile_motion_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_power
-- ----------------------------
DROP TABLE IF EXISTS `spell_power`;
CREATE TABLE `spell_power`  (
  `ManaCost` int NOT NULL DEFAULT 0,
  `PowerCostPct` float NOT NULL DEFAULT 0,
  `PowerPctPerSecond` float NOT NULL DEFAULT 0,
  `RequiredAuraSpellID` int NOT NULL DEFAULT 0,
  `PowerCostMaxPct` float NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PowerType` tinyint NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `ManaCostPerLevel` int UNSIGNED NOT NULL DEFAULT 0,
  `ManaPerSecond` int NOT NULL DEFAULT 0,
  `OptionalCost` int NOT NULL DEFAULT 0,
  `PowerDisplayID` int NOT NULL DEFAULT 0,
  `AltPowerBarID` int NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_power
-- ----------------------------

-- ----------------------------
-- Table structure for spell_power_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `spell_power_difficulty`;
CREATE TABLE `spell_power_difficulty`  (
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_power_difficulty
-- ----------------------------

-- ----------------------------
-- Table structure for spell_procedural_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_procedural_effect`;
CREATE TABLE `spell_procedural_effect`  (
  `Value1` float NOT NULL DEFAULT 0,
  `Value2` float NOT NULL DEFAULT 0,
  `Value3` float NOT NULL DEFAULT 0,
  `Value4` float NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_procedural_effect
-- ----------------------------

-- ----------------------------
-- Table structure for spell_procs_per_minute
-- ----------------------------
DROP TABLE IF EXISTS `spell_procs_per_minute`;
CREATE TABLE `spell_procs_per_minute`  (
  `ID` int NOT NULL DEFAULT 0,
  `BaseProcRate` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_procs_per_minute
-- ----------------------------

-- ----------------------------
-- Table structure for spell_procs_per_minute_mod
-- ----------------------------
DROP TABLE IF EXISTS `spell_procs_per_minute_mod`;
CREATE TABLE `spell_procs_per_minute_mod`  (
  `ID` int NOT NULL DEFAULT 0,
  `Coeff` float NOT NULL DEFAULT 0,
  `Param` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellProcsPerMinuteID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_procs_per_minute_mod
-- ----------------------------

-- ----------------------------
-- Table structure for spell_radius
-- ----------------------------
DROP TABLE IF EXISTS `spell_radius`;
CREATE TABLE `spell_radius`  (
  `ID` int NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `RadiusPerLevel` float NOT NULL DEFAULT 0,
  `RadiusMin` float NOT NULL DEFAULT 0,
  `RadiusMax` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_radius
-- ----------------------------

-- ----------------------------
-- Table structure for spell_range
-- ----------------------------
DROP TABLE IF EXISTS `spell_range`;
CREATE TABLE `spell_range`  (
  `ID` int NOT NULL DEFAULT 0,
  `DisplayName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `DisplayNameShort` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RangeMin1` float NOT NULL DEFAULT 0,
  `RangeMin2` float NOT NULL DEFAULT 0,
  `RangeMax1` float NOT NULL DEFAULT 0,
  `RangeMax2` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_range
-- ----------------------------

-- ----------------------------
-- Table structure for spell_range_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_range_locale`;
CREATE TABLE `spell_range_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `DisplayNameShort_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_range_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_reagents
-- ----------------------------
DROP TABLE IF EXISTS `spell_reagents`;
CREATE TABLE `spell_reagents`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `Reagent1` int NOT NULL DEFAULT 0,
  `Reagent2` int NOT NULL DEFAULT 0,
  `Reagent3` int NOT NULL DEFAULT 0,
  `Reagent4` int NOT NULL DEFAULT 0,
  `Reagent5` int NOT NULL DEFAULT 0,
  `Reagent6` int NOT NULL DEFAULT 0,
  `Reagent7` int NOT NULL DEFAULT 0,
  `Reagent8` int NOT NULL DEFAULT 0,
  `ReagentCount1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_reagents
-- ----------------------------

-- ----------------------------
-- Table structure for spell_reagents_currency
-- ----------------------------
DROP TABLE IF EXISTS `spell_reagents_currency`;
CREATE TABLE `spell_reagents_currency`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `CurrencyTypesID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyCount` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_reagents_currency
-- ----------------------------

-- ----------------------------
-- Table structure for spell_scaling
-- ----------------------------
DROP TABLE IF EXISTS `spell_scaling`;
CREATE TABLE `spell_scaling`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `ScalesFromItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Class` int NOT NULL DEFAULT 0,
  `MinScalingLevel` int NOT NULL DEFAULT 0,
  `MaxScalingLevel` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_scaling
-- ----------------------------

-- ----------------------------
-- Table structure for spell_shapeshift
-- ----------------------------
DROP TABLE IF EXISTS `spell_shapeshift`;
CREATE TABLE `spell_shapeshift`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `ShapeshiftExclude1` int UNSIGNED NOT NULL DEFAULT 0,
  `ShapeshiftExclude2` int UNSIGNED NOT NULL DEFAULT 0,
  `ShapeshiftMask1` int UNSIGNED NOT NULL DEFAULT 0,
  `ShapeshiftMask2` int UNSIGNED NOT NULL DEFAULT 0,
  `StanceBarOrder` tinyint NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_shapeshift
-- ----------------------------
INSERT INTO `spell_shapeshift` VALUES (45, 2006, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for spell_shapeshift_form
-- ----------------------------
DROP TABLE IF EXISTS `spell_shapeshift_form`;
CREATE TABLE `spell_shapeshift_form`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `DamageVariance` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `CombatRoundTime` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MountTypeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CreatureType` tinyint NOT NULL DEFAULT 0,
  `BonusActionBar` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AttackIconFileID` int NOT NULL DEFAULT 0,
  `CreatureDisplayID1` int NOT NULL DEFAULT 0,
  `CreatureDisplayID2` int NOT NULL DEFAULT 0,
  `CreatureDisplayID3` int NOT NULL DEFAULT 0,
  `CreatureDisplayID4` int NOT NULL DEFAULT 0,
  `PresetSpellID1` int NOT NULL DEFAULT 0,
  `PresetSpellID2` int NOT NULL DEFAULT 0,
  `PresetSpellID3` int NOT NULL DEFAULT 0,
  `PresetSpellID4` int NOT NULL DEFAULT 0,
  `PresetSpellID5` int NOT NULL DEFAULT 0,
  `PresetSpellID6` int NOT NULL DEFAULT 0,
  `PresetSpellID7` int NOT NULL DEFAULT 0,
  `PresetSpellID8` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_shapeshift_form
-- ----------------------------

-- ----------------------------
-- Table structure for spell_shapeshift_form_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_shapeshift_form_locale`;
CREATE TABLE `spell_shapeshift_form_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_shapeshift_form_locale
-- ----------------------------

-- ----------------------------
-- Table structure for spell_special_unit_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_special_unit_effect`;
CREATE TABLE `spell_special_unit_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellVisualEffectNameID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_special_unit_effect
-- ----------------------------

-- ----------------------------
-- Table structure for spell_target_restrictions
-- ----------------------------
DROP TABLE IF EXISTS `spell_target_restrictions`;
CREATE TABLE `spell_target_restrictions`  (
  `ID` int NOT NULL DEFAULT 0,
  `ConeDegrees` float NOT NULL DEFAULT 0,
  `Width` float NOT NULL DEFAULT 0,
  `Targets` int NOT NULL DEFAULT 0,
  `TargetCreatureType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxTargets` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxTargetLevel` int NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_target_restrictions
-- ----------------------------
INSERT INTO `spell_target_restrictions` VALUES (70123, 0, 0, 0, 0, 0, 3, 0, 305162, 0);

-- ----------------------------
-- Table structure for spell_totems
-- ----------------------------
DROP TABLE IF EXISTS `spell_totems`;
CREATE TABLE `spell_totems`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `Totem1` int NOT NULL DEFAULT 0,
  `Totem2` int NOT NULL DEFAULT 0,
  `RequiredTotemCategoryID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredTotemCategoryID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_totems
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual`;
CREATE TABLE `spell_visual`  (
  `ID` int NOT NULL DEFAULT 0,
  `MissileCastOffset1` float NOT NULL DEFAULT 0,
  `MissileCastOffset2` float NOT NULL DEFAULT 0,
  `MissileCastOffset3` float NOT NULL DEFAULT 0,
  `MissileImpactOffset1` float NOT NULL DEFAULT 0,
  `MissileImpactOffset2` float NOT NULL DEFAULT 0,
  `MissileImpactOffset3` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `SpellVisualMissileSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MissileDestinationAttachment` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MissileAttachment` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MissileCastPositionerID` int NOT NULL DEFAULT 0,
  `MissileImpactPositionerID` int NOT NULL DEFAULT 0,
  `MissileTargetingKit` int NOT NULL DEFAULT 0,
  `AnimEventSoundID` int NOT NULL DEFAULT 0,
  `DamageNumberDelay` smallint UNSIGNED NOT NULL DEFAULT 0,
  `HostileSpellVisualID` int NOT NULL DEFAULT 0,
  `CasterSpellVisualID` int NOT NULL DEFAULT 0,
  `LowViolenceSpellVisualID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_anim
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_anim`;
CREATE TABLE `spell_visual_anim`  (
  `ID` int NOT NULL DEFAULT 0,
  `InitialAnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LoopAnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_anim
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_color_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_color_effect`;
CREATE TABLE `spell_visual_color_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Color` int UNSIGNED NOT NULL DEFAULT 0,
  `ColorMultiplier` float NOT NULL DEFAULT 0,
  `RedCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GreenCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BlueCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AlphaCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OpacityCurveID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_color_effect
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_effect_name
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_effect_name`;
CREATE TABLE `spell_visual_effect_name`  (
  `ID` int NOT NULL DEFAULT 0,
  `ModelFileDataID` int NOT NULL DEFAULT 0,
  `EffectRadius` float NOT NULL DEFAULT 0,
  `BaseMissileSpeed` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `MinAllowedScale` float NOT NULL DEFAULT 0,
  `MaxAllowedScale` float NOT NULL DEFAULT 0,
  `Alpha` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `Type` int NOT NULL DEFAULT 0,
  `GenericID` int NOT NULL DEFAULT 0,
  `TextureFileDataID` int NOT NULL DEFAULT 0,
  `RibbonQualityID` int NOT NULL DEFAULT 0,
  `DissolveEffectID` int NOT NULL DEFAULT 0,
  `Unknown13` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_effect_name
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_event
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_event`;
CREATE TABLE `spell_visual_event`  (
  `ID` int NOT NULL DEFAULT 0,
  `StartEvent` int NOT NULL DEFAULT 0,
  `StartMinOffsetMs` int NOT NULL DEFAULT 0,
  `StartMaxOffsetMs` int NOT NULL DEFAULT 0,
  `EndEvent` int NOT NULL DEFAULT 0,
  `EndMinOffsetMs` int NOT NULL DEFAULT 0,
  `EndMaxOffsetMs` int NOT NULL DEFAULT 0,
  `TargetType` int NOT NULL DEFAULT 0,
  `SpellVisualKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_event
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_kit
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit`;
CREATE TABLE `spell_visual_kit`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `FallbackPriority` float NOT NULL DEFAULT 0,
  `FallbackSpellVisualKitID` int NOT NULL DEFAULT 0,
  `DelayMin` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DelayMax` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_kit
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_kit_area_model
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit_area_model`;
CREATE TABLE `spell_visual_kit_area_model`  (
  `ID` int NOT NULL DEFAULT 0,
  `ModelFileDataID` int NOT NULL DEFAULT 0,
  `EmissionRate` float NOT NULL DEFAULT 0,
  `Spacing` float NOT NULL DEFAULT 0,
  `ModelScale` float NOT NULL DEFAULT 0,
  `LifeTime` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_kit_area_model
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_kit_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit_effect`;
CREATE TABLE `spell_visual_kit_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `EffectType` int NOT NULL DEFAULT 0,
  `Effect` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_kit_effect
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_kit_model_attach
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit_model_attach`;
CREATE TABLE `spell_visual_kit_model_attach`  (
  `Offset1` float NOT NULL DEFAULT 0,
  `Offset2` float NOT NULL DEFAULT 0,
  `Offset3` float NOT NULL DEFAULT 0,
  `OffsetVariation1` float NOT NULL DEFAULT 0,
  `OffsetVariation2` float NOT NULL DEFAULT 0,
  `OffsetVariation3` float NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `SpellVisualEffectNameID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AttachmentID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `YawVariation` float NOT NULL DEFAULT 0,
  `PitchVariation` float NOT NULL DEFAULT 0,
  `RollVariation` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `ScaleVariation` float NOT NULL DEFAULT 0,
  `StartAnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EndAnimID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LowDefModelAttachID` int NOT NULL DEFAULT 0,
  `StartDelay` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_kit_model_attach
-- ----------------------------

-- ----------------------------
-- Table structure for spell_visual_missile
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_missile`;
CREATE TABLE `spell_visual_missile`  (
  `FollowGroundHeight` int UNSIGNED NOT NULL DEFAULT 0,
  `FollowGroundDropSpeed` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `CastOffset1` float NOT NULL DEFAULT 0,
  `CastOffset2` float NOT NULL DEFAULT 0,
  `CastOffset3` float NOT NULL DEFAULT 0,
  `ImpactOffset1` float NOT NULL DEFAULT 0,
  `ImpactOffset2` float NOT NULL DEFAULT 0,
  `ImpactOffset3` float NOT NULL DEFAULT 0,
  `SpellVisualEffectNameID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CastPositionerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ImpactPositionerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FollowGroundApproach` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellMissileMotionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Attachment` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DestinationAttachment` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `SoundEntriesID` int NOT NULL DEFAULT 0,
  `AnimKitID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_visual_missile
-- ----------------------------

-- ----------------------------
-- Table structure for spell_x_description_variables
-- ----------------------------
DROP TABLE IF EXISTS `spell_x_description_variables`;
CREATE TABLE `spell_x_description_variables`  (
  `ID` int NOT NULL DEFAULT 0,
  `SpellID` int NOT NULL DEFAULT 0,
  `SpellDescriptionVariablesID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_x_description_variables
-- ----------------------------

-- ----------------------------
-- Table structure for spell_x_spell_visual
-- ----------------------------
DROP TABLE IF EXISTS `spell_x_spell_visual`;
CREATE TABLE `spell_x_spell_visual`  (
  `SpellVisualID` int NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Probability` float NOT NULL DEFAULT 0,
  `CasterPlayerConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CasterUnitConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ViewerPlayerConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ViewerUnitConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SpellIconFileID` int NOT NULL DEFAULT 0,
  `ActiveIconFileID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_x_spell_visual
-- ----------------------------
INSERT INTO `spell_x_spell_visual` VALUES (2576, 80235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 305105, 0);

-- ----------------------------
-- Table structure for startup__strings
-- ----------------------------
DROP TABLE IF EXISTS `startup__strings`;
CREATE TABLE `startup__strings`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of startup__strings
-- ----------------------------

-- ----------------------------
-- Table structure for startup__strings_locale
-- ----------------------------
DROP TABLE IF EXISTS `startup__strings_locale`;
CREATE TABLE `startup__strings_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Message_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of startup__strings_locale
-- ----------------------------

-- ----------------------------
-- Table structure for startup_files
-- ----------------------------
DROP TABLE IF EXISTS `startup_files`;
CREATE TABLE `startup_files`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `Locale` int NOT NULL DEFAULT 0,
  `BytesRequired` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of startup_files
-- ----------------------------

-- ----------------------------
-- Table structure for stationery
-- ----------------------------
DROP TABLE IF EXISTS `stationery`;
CREATE TABLE `stationery`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int NOT NULL DEFAULT 0,
  `TextureFileDataID1` int NOT NULL DEFAULT 0,
  `TextureFileDataID2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stationery
-- ----------------------------

-- ----------------------------
-- Table structure for summon_properties
-- ----------------------------
DROP TABLE IF EXISTS `summon_properties`;
CREATE TABLE `summon_properties`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `Control` int NOT NULL DEFAULT 0,
  `Faction` int NOT NULL DEFAULT 0,
  `Title` int NOT NULL DEFAULT 0,
  `Slot` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of summon_properties
-- ----------------------------
INSERT INTO `summon_properties` VALUES (2915, 2056, 1, 0, 2, 0, 0);

-- ----------------------------
-- Table structure for tact_key
-- ----------------------------
DROP TABLE IF EXISTS `tact_key`;
CREATE TABLE `tact_key`  (
  `ID` int NOT NULL DEFAULT 0,
  `Key1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key9` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key10` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key11` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key12` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key13` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key14` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key15` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Key16` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tact_key
-- ----------------------------
INSERT INTO `tact_key` VALUES (15, 189, 197, 24, 98, 171, 237, 121, 178, 222, 72, 200, 231, 230, 108, 98, 0, 26124);

-- ----------------------------
-- Table structure for tact_key_lookup
-- ----------------------------
DROP TABLE IF EXISTS `tact_key_lookup`;
CREATE TABLE `tact_key_lookup`  (
  `ID` int NOT NULL DEFAULT 0,
  `TACTID1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TACTID8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tact_key_lookup
-- ----------------------------

-- ----------------------------
-- Table structure for talent
-- ----------------------------
DROP TABLE IF EXISTS `talent`;
CREATE TABLE `talent`  (
  `ID` int NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SpellID` int NOT NULL DEFAULT 0,
  `OverridesSpellID` int NOT NULL DEFAULT 0,
  `SpecID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TierID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ColumnIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CategoryMask1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CategoryMask2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of talent
-- ----------------------------

-- ----------------------------
-- Table structure for talent_locale
-- ----------------------------
DROP TABLE IF EXISTS `talent_locale`;
CREATE TABLE `talent_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of talent_locale
-- ----------------------------

-- ----------------------------
-- Table structure for taxi_nodes
-- ----------------------------
DROP TABLE IF EXISTS `taxi_nodes`;
CREATE TABLE `taxi_nodes`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `MountCreatureID1` int NOT NULL DEFAULT 0,
  `MountCreatureID2` int NOT NULL DEFAULT 0,
  `MapOffset1` float NOT NULL DEFAULT 0,
  `MapOffset2` float NOT NULL DEFAULT 0,
  `Facing` float NOT NULL DEFAULT 0,
  `FlightMapOffset1` float NOT NULL DEFAULT 0,
  `FlightMapOffset2` float NOT NULL DEFAULT 0,
  `ContinentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CharacterBitNumber` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` int NOT NULL DEFAULT 0,
  `SpecialIconConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxi_nodes
-- ----------------------------
INSERT INTO `taxi_nodes` VALUES (45, 'Nethergarde Keep, Blasted Lands', -11112.3, -3435.74, 79.09, 0, 541, 0, 0.015, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for taxi_nodes_locale
-- ----------------------------
DROP TABLE IF EXISTS `taxi_nodes_locale`;
CREATE TABLE `taxi_nodes_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxi_nodes_locale
-- ----------------------------

-- ----------------------------
-- Table structure for taxi_path
-- ----------------------------
DROP TABLE IF EXISTS `taxi_path`;
CREATE TABLE `taxi_path`  (
  `FromTaxiNode` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ToTaxiNode` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Cost` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxi_path
-- ----------------------------
INSERT INTO `taxi_path` VALUES (1733, 1732, 5286, 0, 0);

-- ----------------------------
-- Table structure for taxi_path_node
-- ----------------------------
DROP TABLE IF EXISTS `taxi_path_node`;
CREATE TABLE `taxi_path_node`  (
  `LocX` float NOT NULL DEFAULT 0,
  `LocY` float NOT NULL DEFAULT 0,
  `LocZ` float NOT NULL DEFAULT 0,
  `PathID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ContinentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NodeIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Delay` int NOT NULL DEFAULT 0,
  `ArrivalEventID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DepartureEventID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxi_path_node
-- ----------------------------

-- ----------------------------
-- Table structure for terrain_material
-- ----------------------------
DROP TABLE IF EXISTS `terrain_material`;
CREATE TABLE `terrain_material`  (
  `ID` int NOT NULL DEFAULT 0,
  `Shader` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnvMapDiffuseFileID` int NOT NULL DEFAULT 0,
  `EnvMapSpecularFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terrain_material
-- ----------------------------

-- ----------------------------
-- Table structure for terrain_type
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type`;
CREATE TABLE `terrain_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `TerrainDesc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `FootstepSprayRun` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FootstepSprayWalk` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terrain_type
-- ----------------------------

-- ----------------------------
-- Table structure for terrain_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type_locale`;
CREATE TABLE `terrain_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TerrainDesc_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terrain_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for terrain_type_sounds
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type_sounds`;
CREATE TABLE `terrain_type_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terrain_type_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for terrain_type_sounds_locale
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type_sounds_locale`;
CREATE TABLE `terrain_type_sounds_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terrain_type_sounds_locale
-- ----------------------------

-- ----------------------------
-- Table structure for texture_blend_set
-- ----------------------------
DROP TABLE IF EXISTS `texture_blend_set`;
CREATE TABLE `texture_blend_set`  (
  `ID` int NOT NULL DEFAULT 0,
  `TextureFileDataID1` int NOT NULL DEFAULT 0,
  `TextureFileDataID2` int NOT NULL DEFAULT 0,
  `TextureFileDataID3` int NOT NULL DEFAULT 0,
  `TextureScrollRateU1` float NOT NULL DEFAULT 0,
  `TextureScrollRateU2` float NOT NULL DEFAULT 0,
  `TextureScrollRateU3` float NOT NULL DEFAULT 0,
  `TextureScrollRateV1` float NOT NULL DEFAULT 0,
  `TextureScrollRateV2` float NOT NULL DEFAULT 0,
  `TextureScrollRateV3` float NOT NULL DEFAULT 0,
  `TextureScaleU1` float NOT NULL DEFAULT 0,
  `TextureScaleU2` float NOT NULL DEFAULT 0,
  `TextureScaleU3` float NOT NULL DEFAULT 0,
  `TextureScaleV1` float NOT NULL DEFAULT 0,
  `TextureScaleV2` float NOT NULL DEFAULT 0,
  `TextureScaleV3` float NOT NULL DEFAULT 0,
  `ModX1` float NOT NULL DEFAULT 0,
  `ModX2` float NOT NULL DEFAULT 0,
  `ModX3` float NOT NULL DEFAULT 0,
  `ModX4` float NOT NULL DEFAULT 0,
  `SwizzleRed` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SwizzleGreen` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SwizzleBlue` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SwizzleAlpha` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of texture_blend_set
-- ----------------------------

-- ----------------------------
-- Table structure for texture_file_data
-- ----------------------------
DROP TABLE IF EXISTS `texture_file_data`;
CREATE TABLE `texture_file_data`  (
  `ID` int NOT NULL DEFAULT 0,
  `MaterialResourcesID` int NOT NULL DEFAULT 0,
  `UsageType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of texture_file_data
-- ----------------------------

-- ----------------------------
-- Table structure for totem_category
-- ----------------------------
DROP TABLE IF EXISTS `totem_category`;
CREATE TABLE `totem_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TotemCategoryMask` int UNSIGNED NOT NULL DEFAULT 0,
  `TotemCategoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of totem_category
-- ----------------------------

-- ----------------------------
-- Table structure for totem_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `totem_category_locale`;
CREATE TABLE `totem_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of totem_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for toy
-- ----------------------------
DROP TABLE IF EXISTS `toy`;
CREATE TABLE `toy`  (
  `SourceText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ItemID` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toy
-- ----------------------------

-- ----------------------------
-- Table structure for toy_locale
-- ----------------------------
DROP TABLE IF EXISTS `toy_locale`;
CREATE TABLE `toy_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toy_locale
-- ----------------------------

-- ----------------------------
-- Table structure for trade_skill_category
-- ----------------------------
DROP TABLE IF EXISTS `trade_skill_category`;
CREATE TABLE `trade_skill_category`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `HordeName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SkillLineID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ParentTradeSkillCategoryID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_skill_category
-- ----------------------------

-- ----------------------------
-- Table structure for trade_skill_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `trade_skill_category_locale`;
CREATE TABLE `trade_skill_category_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `HordeName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_skill_category_locale
-- ----------------------------

-- ----------------------------
-- Table structure for trade_skill_item
-- ----------------------------
DROP TABLE IF EXISTS `trade_skill_item`;
CREATE TABLE `trade_skill_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `ItemLevel` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_skill_item
-- ----------------------------

-- ----------------------------
-- Table structure for transform_matrix
-- ----------------------------
DROP TABLE IF EXISTS `transform_matrix`;
CREATE TABLE `transform_matrix`  (
  `ID` int NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transform_matrix
-- ----------------------------

-- ----------------------------
-- Table structure for transmog_holiday
-- ----------------------------
DROP TABLE IF EXISTS `transmog_holiday`;
CREATE TABLE `transmog_holiday`  (
  `ID` int NOT NULL DEFAULT 0,
  `RequiredTransmogHoliday` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transmog_holiday
-- ----------------------------

-- ----------------------------
-- Table structure for transmog_set
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set`;
CREATE TABLE `transmog_set`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParentTransmogSetID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `TrackingQuestID` int NOT NULL DEFAULT 0,
  `ClassMask` int NOT NULL DEFAULT 0,
  `ItemNameDescriptionID` int NOT NULL DEFAULT 0,
  `TransmogSetGroupID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transmog_set
-- ----------------------------

-- ----------------------------
-- Table structure for transmog_set_group
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_group`;
CREATE TABLE `transmog_set_group`  (
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transmog_set_group
-- ----------------------------

-- ----------------------------
-- Table structure for transmog_set_group_locale
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_group_locale`;
CREATE TABLE `transmog_set_group_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transmog_set_group_locale
-- ----------------------------

-- ----------------------------
-- Table structure for transmog_set_item
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_item`;
CREATE TABLE `transmog_set_item`  (
  `ID` int NOT NULL DEFAULT 0,
  `TransmogSetID` int NOT NULL DEFAULT 0,
  `ItemModifiedAppearanceID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transmog_set_item
-- ----------------------------

-- ----------------------------
-- Table structure for transmog_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_locale`;
CREATE TABLE `transmog_set_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transmog_set_locale
-- ----------------------------

-- ----------------------------
-- Table structure for transport_animation
-- ----------------------------
DROP TABLE IF EXISTS `transport_animation`;
CREATE TABLE `transport_animation`  (
  `ID` int NOT NULL DEFAULT 0,
  `TimeIndex` int NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `SequenceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TransportID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transport_animation
-- ----------------------------

-- ----------------------------
-- Table structure for transport_physics
-- ----------------------------
DROP TABLE IF EXISTS `transport_physics`;
CREATE TABLE `transport_physics`  (
  `ID` int NOT NULL DEFAULT 0,
  `WaveAmp` float NOT NULL DEFAULT 0,
  `WaveTimeScale` float NOT NULL DEFAULT 0,
  `RollAmp` float NOT NULL DEFAULT 0,
  `RollTimeScale` float NOT NULL DEFAULT 0,
  `PitchAmp` float NOT NULL DEFAULT 0,
  `PitchTimeScale` float NOT NULL DEFAULT 0,
  `MaxBank` float NOT NULL DEFAULT 0,
  `MaxBankTurnSpeed` float NOT NULL DEFAULT 0,
  `SpeedDampThresh` float NOT NULL DEFAULT 0,
  `SpeedDamp` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transport_physics
-- ----------------------------

-- ----------------------------
-- Table structure for transport_rotation
-- ----------------------------
DROP TABLE IF EXISTS `transport_rotation`;
CREATE TABLE `transport_rotation`  (
  `ID` int NOT NULL DEFAULT 0,
  `TimeIndex` int NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `W` float NOT NULL DEFAULT 0,
  `TransportID` int UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transport_rotation
-- ----------------------------

-- ----------------------------
-- Table structure for trophy
-- ----------------------------
DROP TABLE IF EXISTS `trophy`;
CREATE TABLE `trophy`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GameObjectDisplayInfoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TrophyTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trophy
-- ----------------------------

-- ----------------------------
-- Table structure for trophy_locale
-- ----------------------------
DROP TABLE IF EXISTS `trophy_locale`;
CREATE TABLE `trophy_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trophy_locale
-- ----------------------------

-- ----------------------------
-- Table structure for u_i_expansion_display_info
-- ----------------------------
DROP TABLE IF EXISTS `u_i_expansion_display_info`;
CREATE TABLE `u_i_expansion_display_info`  (
  `ID` int NOT NULL DEFAULT 0,
  `ExpansionLogo` int NOT NULL DEFAULT 0,
  `ExpansionBanner` int NOT NULL DEFAULT 0,
  `ExpansionLevel` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_i_expansion_display_info
-- ----------------------------

-- ----------------------------
-- Table structure for u_i_expansion_display_info_icon
-- ----------------------------
DROP TABLE IF EXISTS `u_i_expansion_display_info_icon`;
CREATE TABLE `u_i_expansion_display_info_icon`  (
  `ID` int NOT NULL DEFAULT 0,
  `FeatureDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ParentID` int NOT NULL DEFAULT 0,
  `FeatureIcon` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_i_expansion_display_info_icon
-- ----------------------------

-- ----------------------------
-- Table structure for u_i_expansion_display_info_icon_locale
-- ----------------------------
DROP TABLE IF EXISTS `u_i_expansion_display_info_icon_locale`;
CREATE TABLE `u_i_expansion_display_info_icon_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FeatureDescription_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_i_expansion_display_info_icon_locale
-- ----------------------------

-- ----------------------------
-- Table structure for ui_cam_fback_transmog_chr_race
-- ----------------------------
DROP TABLE IF EXISTS `ui_cam_fback_transmog_chr_race`;
CREATE TABLE `ui_cam_fback_transmog_chr_race`  (
  `ID` int NOT NULL DEFAULT 0,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChrRaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_cam_fback_transmog_chr_race
-- ----------------------------

-- ----------------------------
-- Table structure for ui_cam_fback_transmog_weapon
-- ----------------------------
DROP TABLE IF EXISTS `ui_cam_fback_transmog_weapon`;
CREATE TABLE `ui_cam_fback_transmog_weapon`  (
  `ID` int NOT NULL DEFAULT 0,
  `UiCameraID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ItemClass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ItemSubclass` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_cam_fback_transmog_weapon
-- ----------------------------

-- ----------------------------
-- Table structure for ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera`;
CREATE TABLE `ui_camera`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `LookAt1` float NOT NULL DEFAULT 0,
  `LookAt2` float NOT NULL DEFAULT 0,
  `LookAt3` float NOT NULL DEFAULT 0,
  `Up1` float NOT NULL DEFAULT 0,
  `Up2` float NOT NULL DEFAULT 0,
  `Up3` float NOT NULL DEFAULT 0,
  `AnimFrame` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UiCameraTypeID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AnimVariation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AnimID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_camera
-- ----------------------------

-- ----------------------------
-- Table structure for ui_camera_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera_locale`;
CREATE TABLE `ui_camera_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_camera_locale
-- ----------------------------

-- ----------------------------
-- Table structure for ui_camera_type
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera_type`;
CREATE TABLE `ui_camera_type`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Width` int NOT NULL DEFAULT 0,
  `Height` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_camera_type
-- ----------------------------

-- ----------------------------
-- Table structure for ui_camera_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera_type_locale`;
CREATE TABLE `ui_camera_type_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_camera_type_locale
-- ----------------------------

-- ----------------------------
-- Table structure for ui_map_p_o_i
-- ----------------------------
DROP TABLE IF EXISTS `ui_map_p_o_i`;
CREATE TABLE `ui_map_p_o_i`  (
  `ContinentID` int NOT NULL DEFAULT 0,
  `WorldLoc1` float NOT NULL DEFAULT 0,
  `WorldLoc2` float NOT NULL DEFAULT 0,
  `WorldLoc3` float NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `PoiDataType` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PoiData` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_map_p_o_i
-- ----------------------------

-- ----------------------------
-- Table structure for ui_model_scene
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene`;
CREATE TABLE `ui_model_scene`  (
  `ID` int NOT NULL DEFAULT 0,
  `UiSystemType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_model_scene
-- ----------------------------

-- ----------------------------
-- Table structure for ui_model_scene_actor
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_actor`;
CREATE TABLE `ui_model_scene_actor`  (
  `ScriptTag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `OrientationYaw` float NOT NULL DEFAULT 0,
  `OrientationPitch` float NOT NULL DEFAULT 0,
  `OrientationRoll` float NOT NULL DEFAULT 0,
  `NormalizedScale` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `UiModelSceneActorDisplayID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_model_scene_actor
-- ----------------------------

-- ----------------------------
-- Table structure for ui_model_scene_actor_display
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_actor_display`;
CREATE TABLE `ui_model_scene_actor_display`  (
  `ID` int NOT NULL DEFAULT 0,
  `AnimSpeed` float NOT NULL DEFAULT 0,
  `Alpha` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `AnimationID` int NOT NULL DEFAULT 0,
  `SequenceVariation` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_model_scene_actor_display
-- ----------------------------

-- ----------------------------
-- Table structure for ui_model_scene_actor_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_actor_locale`;
CREATE TABLE `ui_model_scene_actor_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ScriptTag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_model_scene_actor_locale
-- ----------------------------

-- ----------------------------
-- Table structure for ui_model_scene_camera
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_camera`;
CREATE TABLE `ui_model_scene_camera`  (
  `ScriptTag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Target1` float NOT NULL DEFAULT 0,
  `Target2` float NOT NULL DEFAULT 0,
  `Target3` float NOT NULL DEFAULT 0,
  `ZoomedTargetOffset1` float NOT NULL DEFAULT 0,
  `ZoomedTargetOffset2` float NOT NULL DEFAULT 0,
  `ZoomedTargetOffset3` float NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `ZoomedYawOffset` float NOT NULL DEFAULT 0,
  `ZoomedPitchOffset` float NOT NULL DEFAULT 0,
  `ZoomedRollOffset` float NOT NULL DEFAULT 0,
  `ZoomDistance` float NOT NULL DEFAULT 0,
  `MinZoomDistance` float NOT NULL DEFAULT 0,
  `MaxZoomDistance` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `CameraType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_model_scene_camera
-- ----------------------------

-- ----------------------------
-- Table structure for ui_model_scene_camera_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_camera_locale`;
CREATE TABLE `ui_model_scene_camera_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ScriptTag_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_model_scene_camera_locale
-- ----------------------------

-- ----------------------------
-- Table structure for ui_texture_atlas
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_atlas`;
CREATE TABLE `ui_texture_atlas`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `AtlasHeight` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AtlasWidth` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_texture_atlas
-- ----------------------------

-- ----------------------------
-- Table structure for ui_texture_atlas_member
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_atlas_member`;
CREATE TABLE `ui_texture_atlas_member`  (
  `CommittedName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `UiTextureAtlasID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CommittedLeft` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CommittedRight` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CommittedTop` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CommittedBottom` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CommittedFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_texture_atlas_member
-- ----------------------------

-- ----------------------------
-- Table structure for ui_texture_atlas_member_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_atlas_member_locale`;
CREATE TABLE `ui_texture_atlas_member_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CommittedName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_texture_atlas_member_locale
-- ----------------------------

-- ----------------------------
-- Table structure for ui_texture_kit
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_kit`;
CREATE TABLE `ui_texture_kit`  (
  `ID` int NOT NULL DEFAULT 0,
  `KitPrefix` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_texture_kit
-- ----------------------------

-- ----------------------------
-- Table structure for ui_texture_kit_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_kit_locale`;
CREATE TABLE `ui_texture_kit_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `KitPrefix_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ui_texture_kit_locale
-- ----------------------------

-- ----------------------------
-- Table structure for unit_blood
-- ----------------------------
DROP TABLE IF EXISTS `unit_blood`;
CREATE TABLE `unit_blood`  (
  `ID` int NOT NULL DEFAULT 0,
  `PlayerCritBloodSpurtID` int NOT NULL DEFAULT 0,
  `PlayerHitBloodSpurtID` int NOT NULL DEFAULT 0,
  `DefaultBloodSpurtID` int NOT NULL DEFAULT 0,
  `PlayerOmniCritBloodSpurtID` int NOT NULL DEFAULT 0,
  `PlayerOmniHitBloodSpurtID` int NOT NULL DEFAULT 0,
  `DefaultOmniBloodSpurtID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_blood
-- ----------------------------

-- ----------------------------
-- Table structure for unit_blood_levels
-- ----------------------------
DROP TABLE IF EXISTS `unit_blood_levels`;
CREATE TABLE `unit_blood_levels`  (
  `ID` int NOT NULL DEFAULT 0,
  `Violencelevel1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Violencelevel2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Violencelevel3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_blood_levels
-- ----------------------------

-- ----------------------------
-- Table structure for unit_condition
-- ----------------------------
DROP TABLE IF EXISTS `unit_condition`;
CREATE TABLE `unit_condition`  (
  `ID` int NOT NULL DEFAULT 0,
  `Value1` int NOT NULL DEFAULT 0,
  `Value2` int NOT NULL DEFAULT 0,
  `Value3` int NOT NULL DEFAULT 0,
  `Value4` int NOT NULL DEFAULT 0,
  `Value5` int NOT NULL DEFAULT 0,
  `Value6` int NOT NULL DEFAULT 0,
  `Value7` int NOT NULL DEFAULT 0,
  `Value8` int NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Variable8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op1` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op2` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op3` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op4` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op5` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op6` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op7` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Op8` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_condition
-- ----------------------------

-- ----------------------------
-- Table structure for unit_power_bar
-- ----------------------------
DROP TABLE IF EXISTS `unit_power_bar`;
CREATE TABLE `unit_power_bar`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Cost` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `OutOfError` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ToolTip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `RegenerationPeace` float NOT NULL DEFAULT 0,
  `RegenerationCombat` float NOT NULL DEFAULT 0,
  `FileDataID1` int NOT NULL DEFAULT 0,
  `FileDataID2` int NOT NULL DEFAULT 0,
  `FileDataID3` int NOT NULL DEFAULT 0,
  `FileDataID4` int NOT NULL DEFAULT 0,
  `FileDataID5` int NOT NULL DEFAULT 0,
  `FileDataID6` int NOT NULL DEFAULT 0,
  `Color1` int UNSIGNED NOT NULL DEFAULT 0,
  `Color2` int UNSIGNED NOT NULL DEFAULT 0,
  `Color3` int UNSIGNED NOT NULL DEFAULT 0,
  `Color4` int UNSIGNED NOT NULL DEFAULT 0,
  `Color5` int UNSIGNED NOT NULL DEFAULT 0,
  `Color6` int UNSIGNED NOT NULL DEFAULT 0,
  `StartInset` float NOT NULL DEFAULT 0,
  `EndInset` float NOT NULL DEFAULT 0,
  `StartPower` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CenterPower` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BarType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MinPower` int NOT NULL DEFAULT 0,
  `MaxPower` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_power_bar
-- ----------------------------

-- ----------------------------
-- Table structure for unit_power_bar_locale
-- ----------------------------
DROP TABLE IF EXISTS `unit_power_bar_locale`;
CREATE TABLE `unit_power_bar_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Cost_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `OutOfError_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ToolTip_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_power_bar_locale
-- ----------------------------

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
INSERT INTO `updates` VALUES ('0001_fix_garrison_mission_db_structure.sql', 'AFB68BEBD7D183F086436AFEFB0F197F161B8F4A', 'ARCHIVED', '2024-09-22 09:47:52', 68);

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
INSERT INTO `updates_include` VALUES ('$/sql/old/hotfixes', 'ARCHIVED');
INSERT INTO `updates_include` VALUES ('$/sql/updates/hotfixes', 'RELEASED');

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `TurnSpeed` float NOT NULL DEFAULT 0,
  `PitchSpeed` float NOT NULL DEFAULT 0,
  `PitchMin` float NOT NULL DEFAULT 0,
  `PitchMax` float NOT NULL DEFAULT 0,
  `MouseLookOffsetPitch` float NOT NULL DEFAULT 0,
  `CameraFadeDistScalarMin` float NOT NULL DEFAULT 0,
  `CameraFadeDistScalarMax` float NOT NULL DEFAULT 0,
  `CameraPitchOffset` float NOT NULL DEFAULT 0,
  `FacingLimitRight` float NOT NULL DEFAULT 0,
  `FacingLimitLeft` float NOT NULL DEFAULT 0,
  `CameraYawOffset` float NOT NULL DEFAULT 0,
  `SeatID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID4` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID5` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID6` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID7` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SeatID8` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleUIIndicatorID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PowerDisplayID1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PowerDisplayID2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PowerDisplayID3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `FlagsB` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `UiLocomotionType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MissileTargetingID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_seat
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_seat`;
CREATE TABLE `vehicle_seat`  (
  `ID` int NOT NULL DEFAULT 0,
  `Flags` int UNSIGNED NOT NULL DEFAULT 0,
  `FlagsB` int UNSIGNED NOT NULL DEFAULT 0,
  `FlagsC` int UNSIGNED NOT NULL DEFAULT 0,
  `AttachmentOffsetX` float NOT NULL DEFAULT 0,
  `AttachmentOffsetY` float NOT NULL DEFAULT 0,
  `AttachmentOffsetZ` float NOT NULL DEFAULT 0,
  `EnterPreDelay` float NOT NULL DEFAULT 0,
  `EnterSpeed` float NOT NULL DEFAULT 0,
  `EnterGravity` float NOT NULL DEFAULT 0,
  `EnterMinDuration` float NOT NULL DEFAULT 0,
  `EnterMaxDuration` float NOT NULL DEFAULT 0,
  `EnterMinArcHeight` float NOT NULL DEFAULT 0,
  `EnterMaxArcHeight` float NOT NULL DEFAULT 0,
  `ExitPreDelay` float NOT NULL DEFAULT 0,
  `ExitSpeed` float NOT NULL DEFAULT 0,
  `ExitGravity` float NOT NULL DEFAULT 0,
  `ExitMinDuration` float NOT NULL DEFAULT 0,
  `ExitMaxDuration` float NOT NULL DEFAULT 0,
  `ExitMinArcHeight` float NOT NULL DEFAULT 0,
  `ExitMaxArcHeight` float NOT NULL DEFAULT 0,
  `PassengerYaw` float NOT NULL DEFAULT 0,
  `PassengerPitch` float NOT NULL DEFAULT 0,
  `PassengerRoll` float NOT NULL DEFAULT 0,
  `VehicleEnterAnimDelay` float NOT NULL DEFAULT 0,
  `VehicleExitAnimDelay` float NOT NULL DEFAULT 0,
  `CameraEnteringDelay` float NOT NULL DEFAULT 0,
  `CameraEnteringDuration` float NOT NULL DEFAULT 0,
  `CameraExitingDelay` float NOT NULL DEFAULT 0,
  `CameraExitingDuration` float NOT NULL DEFAULT 0,
  `CameraOffsetX` float NOT NULL DEFAULT 0,
  `CameraOffsetY` float NOT NULL DEFAULT 0,
  `CameraOffsetZ` float NOT NULL DEFAULT 0,
  `CameraPosChaseRate` float NOT NULL DEFAULT 0,
  `CameraFacingChaseRate` float NOT NULL DEFAULT 0,
  `CameraEnteringZoom` float NOT NULL DEFAULT 0,
  `CameraSeatZoomMin` float NOT NULL DEFAULT 0,
  `CameraSeatZoomMax` float NOT NULL DEFAULT 0,
  `UiSkinFileDataID` int NOT NULL DEFAULT 0,
  `EnterAnimStart` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EnterAnimLoop` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RideAnimStart` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RideAnimLoop` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RideUpperAnimStart` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RideUpperAnimLoop` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimStart` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimLoop` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimEnd` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleEnterAnim` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleExitAnim` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleRideAnimLoop` smallint UNSIGNED NOT NULL DEFAULT 0,
  `EnterAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RideAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleEnterAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleRideAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleExitAnimKitID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `CameraModeID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AttachmentID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PassengerAttachmentID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleEnterAnimBone` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleExitAnimBone` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleRideAnimLoopBone` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VehicleAbilityDisplay` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EnterUISoundID` int NOT NULL DEFAULT 0,
  `ExitUISoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_seat
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_u_i_ind_seat
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_u_i_ind_seat`;
CREATE TABLE `vehicle_u_i_ind_seat`  (
  `ID` int NOT NULL DEFAULT 0,
  `XPos` float NOT NULL DEFAULT 0,
  `YPos` float NOT NULL DEFAULT 0,
  `VirtualSeatIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_u_i_ind_seat
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_u_i_indicator
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_u_i_indicator`;
CREATE TABLE `vehicle_u_i_indicator`  (
  `ID` int NOT NULL DEFAULT 0,
  `BackgroundTextureFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_u_i_indicator
-- ----------------------------

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version`  (
  `core_version` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `db_version` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Version of hotfixes DB.'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'Version Notes' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('LegionCore', '', 'LegionCore Hotfixes Database 2024-10-23');

-- ----------------------------
-- Table structure for vignette
-- ----------------------------
DROP TABLE IF EXISTS `vignette`;
CREATE TABLE `vignette`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MaxHeight` float NOT NULL DEFAULT 0,
  `MinHeight` float NOT NULL DEFAULT 0,
  `QuestFeedbackEffectID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `VisibleTrackingQuestID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vignette
-- ----------------------------
INSERT INTO `vignette` VALUES (6, 'Debug Masta: resolve some problems', 30, -30, 90, 67, 0, 0, 0);

-- ----------------------------
-- Table structure for vignette_locale
-- ----------------------------
DROP TABLE IF EXISTS `vignette_locale`;
CREATE TABLE `vignette_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vignette_locale
-- ----------------------------

-- ----------------------------
-- Table structure for virtual_attachment
-- ----------------------------
DROP TABLE IF EXISTS `virtual_attachment`;
CREATE TABLE `virtual_attachment`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `PositionerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virtual_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for virtual_attachment_customization
-- ----------------------------
DROP TABLE IF EXISTS `virtual_attachment_customization`;
CREATE TABLE `virtual_attachment_customization`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `VirtualAttachmentID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virtual_attachment_customization
-- ----------------------------

-- ----------------------------
-- Table structure for virtual_attachment_locale
-- ----------------------------
DROP TABLE IF EXISTS `virtual_attachment_locale`;
CREATE TABLE `virtual_attachment_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virtual_attachment_locale
-- ----------------------------

-- ----------------------------
-- Table structure for vocal_u_i_sounds
-- ----------------------------
DROP TABLE IF EXISTS `vocal_u_i_sounds`;
CREATE TABLE `vocal_u_i_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `VocalUIEnum` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `NormalSoundID1` int NOT NULL DEFAULT 0,
  `NormalSoundID2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vocal_u_i_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for wb_access_control_list
-- ----------------------------
DROP TABLE IF EXISTS `wb_access_control_list`;
CREATE TABLE `wb_access_control_list`  (
  `ID` int NOT NULL DEFAULT 0,
  `URL` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GrantFlags` smallint UNSIGNED NOT NULL DEFAULT 0,
  `RevokeFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WowEditInternal` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RegionID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_access_control_list
-- ----------------------------

-- ----------------------------
-- Table structure for wb_access_control_list_locale
-- ----------------------------
DROP TABLE IF EXISTS `wb_access_control_list_locale`;
CREATE TABLE `wb_access_control_list_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `URL_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_access_control_list_locale
-- ----------------------------

-- ----------------------------
-- Table structure for wb_cert_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `wb_cert_whitelist`;
CREATE TABLE `wb_cert_whitelist`  (
  `ID` int NOT NULL DEFAULT 0,
  `Domain` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `GrantAccess` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RevokeAccess` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WowEditInternal` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_cert_whitelist
-- ----------------------------

-- ----------------------------
-- Table structure for wb_cert_whitelist_locale
-- ----------------------------
DROP TABLE IF EXISTS `wb_cert_whitelist_locale`;
CREATE TABLE `wb_cert_whitelist_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Domain_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wb_cert_whitelist_locale
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_impact_sounds
-- ----------------------------
DROP TABLE IF EXISTS `weapon_impact_sounds`;
CREATE TABLE `weapon_impact_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `WeaponSubClassID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ParrySoundType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ImpactSource` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ImpactSoundID1` int NOT NULL DEFAULT 0,
  `ImpactSoundID2` int NOT NULL DEFAULT 0,
  `ImpactSoundID3` int NOT NULL DEFAULT 0,
  `ImpactSoundID4` int NOT NULL DEFAULT 0,
  `ImpactSoundID5` int NOT NULL DEFAULT 0,
  `ImpactSoundID6` int NOT NULL DEFAULT 0,
  `ImpactSoundID7` int NOT NULL DEFAULT 0,
  `ImpactSoundID8` int NOT NULL DEFAULT 0,
  `ImpactSoundID9` int NOT NULL DEFAULT 0,
  `ImpactSoundID10` int NOT NULL DEFAULT 0,
  `ImpactSoundID11` int NOT NULL DEFAULT 0,
  `CritImpactSoundID1` int NOT NULL DEFAULT 0,
  `CritImpactSoundID2` int NOT NULL DEFAULT 0,
  `CritImpactSoundID3` int NOT NULL DEFAULT 0,
  `CritImpactSoundID4` int NOT NULL DEFAULT 0,
  `CritImpactSoundID5` int NOT NULL DEFAULT 0,
  `CritImpactSoundID6` int NOT NULL DEFAULT 0,
  `CritImpactSoundID7` int NOT NULL DEFAULT 0,
  `CritImpactSoundID8` int NOT NULL DEFAULT 0,
  `CritImpactSoundID9` int NOT NULL DEFAULT 0,
  `CritImpactSoundID10` int NOT NULL DEFAULT 0,
  `CritImpactSoundID11` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID1` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID2` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID3` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID4` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID5` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID6` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID7` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID8` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID9` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID10` int NOT NULL DEFAULT 0,
  `PierceImpactSoundID11` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID1` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID2` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID3` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID4` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID5` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID6` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID7` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID8` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID9` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID10` int NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID11` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weapon_impact_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_swing_sounds2
-- ----------------------------
DROP TABLE IF EXISTS `weapon_swing_sounds2`;
CREATE TABLE `weapon_swing_sounds2`  (
  `ID` int NOT NULL DEFAULT 0,
  `SwingType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Crit` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weapon_swing_sounds2
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_trail
-- ----------------------------
DROP TABLE IF EXISTS `weapon_trail`;
CREATE TABLE `weapon_trail`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `TextureFileDataID1` int NOT NULL DEFAULT 0,
  `TextureFileDataID2` int NOT NULL DEFAULT 0,
  `TextureFileDataID3` int NOT NULL DEFAULT 0,
  `TextureScrollRateU1` float NOT NULL DEFAULT 0,
  `TextureScrollRateU2` float NOT NULL DEFAULT 0,
  `TextureScrollRateU3` float NOT NULL DEFAULT 0,
  `TextureScrollRateV1` float NOT NULL DEFAULT 0,
  `TextureScrollRateV2` float NOT NULL DEFAULT 0,
  `TextureScrollRateV3` float NOT NULL DEFAULT 0,
  `TextureScaleU1` float NOT NULL DEFAULT 0,
  `TextureScaleU2` float NOT NULL DEFAULT 0,
  `TextureScaleU3` float NOT NULL DEFAULT 0,
  `TextureScaleV1` float NOT NULL DEFAULT 0,
  `TextureScaleV2` float NOT NULL DEFAULT 0,
  `TextureScaleV3` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weapon_trail
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_trail_model_def
-- ----------------------------
DROP TABLE IF EXISTS `weapon_trail_model_def`;
CREATE TABLE `weapon_trail_model_def`  (
  `ID` int NOT NULL DEFAULT 0,
  `LowDefFileDataID` int NOT NULL DEFAULT 0,
  `WeaponTrailID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weapon_trail_model_def
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_trail_param
-- ----------------------------
DROP TABLE IF EXISTS `weapon_trail_param`;
CREATE TABLE `weapon_trail_param`  (
  `ID` int NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `FadeOutTime` float NOT NULL DEFAULT 0,
  `EdgeLifeSpan` float NOT NULL DEFAULT 0,
  `InitialDelay` float NOT NULL DEFAULT 0,
  `SmoothSampleAngle` float NOT NULL DEFAULT 0,
  `Hand` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OverrideAttachTop` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `OverrideAttachBot` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weapon_trail_param
-- ----------------------------

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather`  (
  `ID` int NOT NULL DEFAULT 0,
  `Intensity1` float NOT NULL DEFAULT 0,
  `Intensity2` float NOT NULL DEFAULT 0,
  `TransitionSkyBox` float NOT NULL DEFAULT 0,
  `EffectColor1` float NOT NULL DEFAULT 0,
  `EffectColor2` float NOT NULL DEFAULT 0,
  `EffectColor3` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `Volatility` float NOT NULL DEFAULT 0,
  `TwinkleIntensity` float NOT NULL DEFAULT 0,
  `FallModifier` float NOT NULL DEFAULT 0,
  `RotationalSpeed` float NOT NULL DEFAULT 0,
  `ParticulateFileDataID` int NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `EffectType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WindSettingsID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `AmbienceID` int NOT NULL DEFAULT 0,
  `EffectTextureFileDataID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weather
-- ----------------------------

-- ----------------------------
-- Table structure for wind_settings
-- ----------------------------
DROP TABLE IF EXISTS `wind_settings`;
CREATE TABLE `wind_settings`  (
  `ID` int NOT NULL DEFAULT 0,
  `BaseMag` float NOT NULL DEFAULT 0,
  `BaseDir1` float NOT NULL DEFAULT 0,
  `BaseDir2` float NOT NULL DEFAULT 0,
  `BaseDir3` float NOT NULL DEFAULT 0,
  `VarianceMagOver` float NOT NULL DEFAULT 0,
  `VarianceMagUnder` float NOT NULL DEFAULT 0,
  `VarianceDir1` float NOT NULL DEFAULT 0,
  `VarianceDir2` float NOT NULL DEFAULT 0,
  `VarianceDir3` float NOT NULL DEFAULT 0,
  `MaxStepMag` float NOT NULL DEFAULT 0,
  `MaxStepDir1` float NOT NULL DEFAULT 0,
  `MaxStepDir2` float NOT NULL DEFAULT 0,
  `MaxStepDir3` float NOT NULL DEFAULT 0,
  `Frequency` float NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wind_settings
-- ----------------------------

-- ----------------------------
-- Table structure for wmo_area_table
-- ----------------------------
DROP TABLE IF EXISTS `wmo_area_table`;
CREATE TABLE `wmo_area_table`  (
  `AreaName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `WmoGroupID` int NOT NULL DEFAULT 0,
  `AmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusic` smallint UNSIGNED NOT NULL DEFAULT 0,
  `IntroSound` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaTableID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UwIntroSound` smallint UNSIGNED NOT NULL DEFAULT 0,
  `UwAmbience` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NameSetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPref` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPrefUnderwater` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `UwZoneMusic` int NOT NULL DEFAULT 0,
  `WmoID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wmo_area_table
-- ----------------------------

-- ----------------------------
-- Table structure for wmo_area_table_locale
-- ----------------------------
DROP TABLE IF EXISTS `wmo_area_table_locale`;
CREATE TABLE `wmo_area_table_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AreaName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wmo_area_table_locale
-- ----------------------------

-- ----------------------------
-- Table structure for wmo_minimap_texture
-- ----------------------------
DROP TABLE IF EXISTS `wmo_minimap_texture`;
CREATE TABLE `wmo_minimap_texture`  (
  `ID` int NOT NULL DEFAULT 0,
  `FileDataID` int NOT NULL DEFAULT 0,
  `GroupNum` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BlockX` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BlockY` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wmo_minimap_texture
-- ----------------------------

-- ----------------------------
-- Table structure for world__pvp__area
-- ----------------------------
DROP TABLE IF EXISTS `world__pvp__area`;
CREATE TABLE `world__pvp__area`  (
  `ID` int NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NextTimeWorldstate` smallint UNSIGNED NOT NULL DEFAULT 0,
  `GameTimeWorldstate` smallint UNSIGNED NOT NULL DEFAULT 0,
  `BattlePopulate_time` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world__pvp__area
-- ----------------------------

-- ----------------------------
-- Table structure for world_boss_lockout
-- ----------------------------
DROP TABLE IF EXISTS `world_boss_lockout`;
CREATE TABLE `world_boss_lockout`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `TrackingQuestID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_boss_lockout
-- ----------------------------

-- ----------------------------
-- Table structure for world_boss_lockout_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_boss_lockout_locale`;
CREATE TABLE `world_boss_lockout_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_boss_lockout_locale
-- ----------------------------

-- ----------------------------
-- Table structure for world_chunk_sounds
-- ----------------------------
DROP TABLE IF EXISTS `world_chunk_sounds`;
CREATE TABLE `world_chunk_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ChunkX` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ChunkY` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SubChunkX` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SubChunkY` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundOverrideID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_chunk_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for world_effect
-- ----------------------------
DROP TABLE IF EXISTS `world_effect`;
CREATE TABLE `world_effect`  (
  `ID` int NOT NULL DEFAULT 0,
  `TargetAsset` int UNSIGNED NOT NULL DEFAULT 0,
  `CombatConditionID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TargetType` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `WhenToDisplay` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `QuestFeedbackEffectID` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_effect
-- ----------------------------

-- ----------------------------
-- Table structure for world_elapsed_timer
-- ----------------------------
DROP TABLE IF EXISTS `world_elapsed_timer`;
CREATE TABLE `world_elapsed_timer`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_elapsed_timer
-- ----------------------------

-- ----------------------------
-- Table structure for world_elapsed_timer_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_elapsed_timer_locale`;
CREATE TABLE `world_elapsed_timer_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_elapsed_timer_locale
-- ----------------------------

-- ----------------------------
-- Table structure for world_map_area
-- ----------------------------
DROP TABLE IF EXISTS `world_map_area`;
CREATE TABLE `world_map_area`  (
  `AreaName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LocLeft` float NOT NULL DEFAULT 0,
  `LocRight` float NOT NULL DEFAULT 0,
  `LocTop` float NOT NULL DEFAULT 0,
  `LocBottom` float NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `MapID` smallint NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DisplayMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `DefaultDungeonFloor` smallint NOT NULL DEFAULT 0,
  `ParentWorldMapID` smallint NOT NULL DEFAULT 0,
  `LevelRangeMin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `LevelRangeMax` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BountySetID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BountyDisplayLocation` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `VisibilityPlayerConditionID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_area
-- ----------------------------

-- ----------------------------
-- Table structure for world_map_area_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_map_area_locale`;
CREATE TABLE `world_map_area_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AreaName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_area_locale
-- ----------------------------

-- ----------------------------
-- Table structure for world_map_continent
-- ----------------------------
DROP TABLE IF EXISTS `world_map_continent`;
CREATE TABLE `world_map_continent`  (
  `ID` int NOT NULL DEFAULT 0,
  `ContinentOffset1` float NOT NULL DEFAULT 0,
  `ContinentOffset2` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `TaxiMin1` float NOT NULL DEFAULT 0,
  `TaxiMin2` float NOT NULL DEFAULT 0,
  `TaxiMax1` float NOT NULL DEFAULT 0,
  `TaxiMax2` float NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LeftBoundary` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `RightBoundary` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `TopBoundary` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `BottomBoundary` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_continent
-- ----------------------------

-- ----------------------------
-- Table structure for world_map_overlay
-- ----------------------------
DROP TABLE IF EXISTS `world_map_overlay`;
CREATE TABLE `world_map_overlay`  (
  `TextureName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ID` int NOT NULL DEFAULT 0,
  `TextureWidth` smallint UNSIGNED NOT NULL DEFAULT 0,
  `TextureHeight` smallint UNSIGNED NOT NULL DEFAULT 0,
  `MapAreaID` int NOT NULL DEFAULT 0,
  `OffsetX` int NOT NULL DEFAULT 0,
  `OffsetY` int NOT NULL DEFAULT 0,
  `HitRectTop` int NOT NULL DEFAULT 0,
  `HitRectLeft` int NOT NULL DEFAULT 0,
  `HitRectBottom` int NOT NULL DEFAULT 0,
  `HitRectRight` int NOT NULL DEFAULT 0,
  `PlayerConditionID` int NOT NULL DEFAULT 0,
  `Flags` int NOT NULL DEFAULT 0,
  `AreaID1` int NOT NULL DEFAULT 0,
  `AreaID2` int NOT NULL DEFAULT 0,
  `AreaID3` int NOT NULL DEFAULT 0,
  `AreaID4` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_overlay
-- ----------------------------

-- ----------------------------
-- Table structure for world_map_overlay_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_map_overlay_locale`;
CREATE TABLE `world_map_overlay_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TextureName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_overlay_locale
-- ----------------------------

-- ----------------------------
-- Table structure for world_map_transforms
-- ----------------------------
DROP TABLE IF EXISTS `world_map_transforms`;
CREATE TABLE `world_map_transforms`  (
  `ID` int NOT NULL DEFAULT 0,
  `RegionMinX` float NOT NULL DEFAULT 0,
  `RegionMinY` float NOT NULL DEFAULT 0,
  `RegionMinZ` float NOT NULL DEFAULT 0,
  `RegionMaxX` float NOT NULL DEFAULT 0,
  `RegionMaxY` float NOT NULL DEFAULT 0,
  `RegionMaxZ` float NOT NULL DEFAULT 0,
  `RegionOffsetX` float NOT NULL DEFAULT 0,
  `RegionOffsetY` float NOT NULL DEFAULT 0,
  `RegionScale` float NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NewMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NewDungeonMapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `NewAreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Priority` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_map_transforms
-- ----------------------------

-- ----------------------------
-- Table structure for world_safe_locs
-- ----------------------------
DROP TABLE IF EXISTS `world_safe_locs`;
CREATE TABLE `world_safe_locs`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `LocX` float NOT NULL DEFAULT 0,
  `LocY` float NOT NULL DEFAULT 0,
  `LocZ` float NOT NULL DEFAULT 0,
  `LocO` float NOT NULL DEFAULT 0,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_safe_locs
-- ----------------------------
INSERT INTO `world_safe_locs` VALUES (191, 'Rift: Stromgard', -1496.97, -1805.58, 68.07, 3.11, 1178, 0);

-- ----------------------------
-- Table structure for world_safe_locs_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_safe_locs_locale`;
CREATE TABLE `world_safe_locs_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_safe_locs_locale
-- ----------------------------

-- ----------------------------
-- Table structure for world_state_expression
-- ----------------------------
DROP TABLE IF EXISTS `world_state_expression`;
CREATE TABLE `world_state_expression`  (
  `ID` int NOT NULL DEFAULT 0,
  `Expression` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_state_expression
-- ----------------------------

-- ----------------------------
-- Table structure for world_state_u_i
-- ----------------------------
DROP TABLE IF EXISTS `world_state_u_i`;
CREATE TABLE `world_state_u_i`  (
  `Icon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ExtendedUI` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `DynamicTooltip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `String` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Tooltip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `StateVariable` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedUIStateVariable1` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedUIStateVariable2` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedUIStateVariable3` smallint UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `ID` int NOT NULL DEFAULT 0,
  `DynamicIconFileID` int NOT NULL DEFAULT 0,
  `DynamicFlashIconFileID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_state_u_i
-- ----------------------------
INSERT INTO `world_state_u_i` VALUES ('interface\\targetingframe\\ui-pvp-alliance', NULL, NULL, 'Cобрано азерита: %13844w/%13846w', 'Альянс: собрано азерита', 1803, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 742, 0, 0, 0);

-- ----------------------------
-- Table structure for world_state_u_i_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_state_u_i_locale`;
CREATE TABLE `world_state_u_i_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Icon_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ExtendedUI_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `DynamicTooltip_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `String_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `Tooltip_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_state_u_i_locale
-- ----------------------------
INSERT INTO `world_state_u_i_locale` VALUES (742, 'enUs', 'interface\\targetingframe\\ui-pvp-alliance', NULL, NULL, 'azerite collected: %13844w/%13846w', 'alliance azerite collected', 1);

-- ----------------------------
-- Table structure for world_state_zone_sounds
-- ----------------------------
DROP TABLE IF EXISTS `world_state_zone_sounds`;
CREATE TABLE `world_state_zone_sounds`  (
  `ID` int NOT NULL DEFAULT 0,
  `WmoAreaID` int NOT NULL DEFAULT 0,
  `WorldStateID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateValue` smallint UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneIntroMusicID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusicID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPreferencesID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of world_state_zone_sounds
-- ----------------------------

-- ----------------------------
-- Table structure for zone_intro_music_table
-- ----------------------------
DROP TABLE IF EXISTS `zone_intro_music_table`;
CREATE TABLE `zone_intro_music_table`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MinDelayMinutes` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_intro_music_table
-- ----------------------------

-- ----------------------------
-- Table structure for zone_intro_music_table_locale
-- ----------------------------
DROP TABLE IF EXISTS `zone_intro_music_table_locale`;
CREATE TABLE `zone_intro_music_table_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_intro_music_table_locale
-- ----------------------------

-- ----------------------------
-- Table structure for zone_light
-- ----------------------------
DROP TABLE IF EXISTS `zone_light`;
CREATE TABLE `zone_light`  (
  `ID` int NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `MapID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `LightID` smallint UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_light
-- ----------------------------

-- ----------------------------
-- Table structure for zone_light_locale
-- ----------------------------
DROP TABLE IF EXISTS `zone_light_locale`;
CREATE TABLE `zone_light_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_light_locale
-- ----------------------------

-- ----------------------------
-- Table structure for zone_light_point
-- ----------------------------
DROP TABLE IF EXISTS `zone_light_point`;
CREATE TABLE `zone_light_point`  (
  `ID` int NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `PointOrder` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_light_point
-- ----------------------------

-- ----------------------------
-- Table structure for zone_music
-- ----------------------------
DROP TABLE IF EXISTS `zone_music`;
CREATE TABLE `zone_music`  (
  `ID` int NOT NULL DEFAULT 0,
  `SetName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `SilenceIntervalMin1` int NOT NULL DEFAULT 0,
  `SilenceIntervalMin2` int NOT NULL DEFAULT 0,
  `SilenceIntervalMax1` int NOT NULL DEFAULT 0,
  `SilenceIntervalMax2` int NOT NULL DEFAULT 0,
  `Sounds1` int NOT NULL DEFAULT 0,
  `Sounds2` int NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_music
-- ----------------------------

-- ----------------------------
-- Table structure for zone_music_locale
-- ----------------------------
DROP TABLE IF EXISTS `zone_music_locale`;
CREATE TABLE `zone_music_locale`  (
  `ID` int UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SetName_lang` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_music_locale
-- ----------------------------

-- ----------------------------
-- Table structure for zone_story
-- ----------------------------
DROP TABLE IF EXISTS `zone_story`;
CREATE TABLE `zone_story`  (
  `ID` int NOT NULL DEFAULT 0,
  `DisplayAchievementID` int NOT NULL DEFAULT 0,
  `DisplayWorldMapAreaID` int NOT NULL DEFAULT 0,
  `PlayerFactionGroupID` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_story
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
