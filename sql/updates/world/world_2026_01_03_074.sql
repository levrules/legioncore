-- SQL запрос для вставки данных в creature_template_wdb_locale
-- Сгенерировано из Wowhead парсера (асинхронный режим)
-- Локаль: ruRU
-- Файл: 44/44
-- Записей в файле: 23

-- Удаляем существующие записи для всех ID из этого файла
DELETE FROM `creature_template_wdb_locale` WHERE `Locale` = 'ruRU' AND `ID` IN (
    21818,21824,21837,21850,21868,21893,21921,21938,21963,21966,21981,22004,22017,22045,22105,
    22117,22186,22247,22253,22310,22320,22355,22477
);

-- Вставляем новые записи
INSERT INTO `creature_template_wdb_locale` (`ID`, `Locale`, `Name1`, `NameAlt1`, `Title`, `TitleAlt`) VALUES
(22310, 'ruRU', 'Штормовой потрошитель', NULL, NULL, NULL),
(22477, 'ruRU', 'Анахорет Аншам', NULL, 'Учитель изготовления бинтов', NULL),
(22355, 'ruRU', 'Жертва пауков Пустоты', NULL, NULL, NULL),
(22253, 'ruRU', 'Воспитанник клана Драконьей Пасти', NULL, NULL, NULL),
(22117, 'ruRU', '[DND]Whisper Spying Credit Marker 2', NULL, NULL, NULL),
(21963, 'ruRU', 'Порабощенный страж ужаса', NULL, NULL, NULL),
(21818, 'ruRU', 'Дракончик из рода Бесконечности', NULL, NULL, NULL),
(21938, 'ruRU', 'Целитель земли Расщепленное копыто', NULL, 'Служители Земли', NULL),
(21981, 'ruRU', 'Надзиратель Нуаар', NULL, NULL, NULL),
(21921, 'ruRU', 'Chess - Sound Bunny', NULL, NULL, NULL),
(22320, 'ruRU', 'Цель Кил''джедена', NULL, NULL, NULL),
(22247, 'ruRU', 'Поставщик призов Cokeplay.com 01', NULL, 'Представитель "Кока-колы"', NULL),
(21966, 'ruRU', 'Хранитель глубин Шарккис', NULL, NULL, NULL),
(22004, 'ruRU', 'Леорокс', NULL, NULL, NULL),
(22186, 'ruRU', 'Гиганский василиск Запределья (желтый)', NULL, NULL, NULL),
(22105, 'ruRU', 'Дряхлый копытень', NULL, NULL, NULL),
(22017, 'ruRU', 'Чароплет лагеря Затмения', NULL, NULL, NULL),
(21824, 'ruRU', 'Дина Головокружилка', NULL, NULL, NULL),
(21850, 'ruRU', 'Красный скат Запределья', NULL, NULL, NULL),
(22045, 'ruRU', 'Мстительный мертвец', NULL, NULL, NULL),
(21893, 'ruRU', 'Метка диалога Алтруиса', NULL, NULL, NULL),
(21868, 'ruRU', 'Тестовый землерой', NULL, NULL, NULL),
(21837, 'ruRU', 'Призванная зловещая гончая', NULL, NULL, NULL);

-- Всего записей в файле: 23
