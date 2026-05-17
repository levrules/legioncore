ALTER TABLE `account_last_played_character`
    ADD COLUMN `race` tinyint UNSIGNED NOT NULL DEFAULT 0 AFTER `lastPlayedTime`,
    ADD COLUMN `class` tinyint UNSIGNED NOT NULL DEFAULT 0 AFTER `race`,
    ADD COLUMN `gender` tinyint UNSIGNED NOT NULL DEFAULT 0 AFTER `class`,
    ADD COLUMN `level` tinyint UNSIGNED NOT NULL DEFAULT 0 AFTER `gender`;
