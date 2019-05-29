-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Время создания: Мар 07 2008 г., 17:17
-- Версия сервера: 5.0.18
-- Версия PHP: 5.2.5
-- 
-- БД: `test`
-- 

-- --------------------------------------------------------

-- 
-- Структура таблицы `bays`
-- 

CREATE TABLE `bays` (
  `position` int(11) NOT NULL,
  `count` float(6,3) NOT NULL,
  `check` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='bays';

-- 
-- Дамп данных таблицы `bays`
-- 

INSERT INTO `bays` VALUES (5, 3.016, 1);
INSERT INTO `bays` VALUES (6, 1.220, 1);
INSERT INTO `bays` VALUES (7, 1.000, 1);
INSERT INTO `bays` VALUES (8, 1.520, 1);
INSERT INTO `bays` VALUES (9, 1.000, 1);
INSERT INTO `bays` VALUES (10, 1.000, 1);
INSERT INTO `bays` VALUES (11, 1.000, 1);
INSERT INTO `bays` VALUES (12, 1.000, 1);
INSERT INTO `bays` VALUES (13, 2.000, 1);
INSERT INTO `bays` VALUES (14, 1.000, 1);
INSERT INTO `bays` VALUES (15, 1.000, 1);
INSERT INTO `bays` VALUES (1, 1.208, 3);
INSERT INTO `bays` VALUES (2, 1.000, 3);
INSERT INTO `bays` VALUES (3, 1.000, 3);
INSERT INTO `bays` VALUES (4, 1.000, 3);
INSERT INTO `bays` VALUES (5, 2.514, 2);
INSERT INTO `bays` VALUES (16, 1.000, 2);
INSERT INTO `bays` VALUES (24, 1.000, 2);
INSERT INTO `bays` VALUES (17, 1.000, 2);
INSERT INTO `bays` VALUES (18, 1.000, 2);
INSERT INTO `bays` VALUES (19, 1.000, 2);
INSERT INTO `bays` VALUES (20, 1.000, 2);
INSERT INTO `bays` VALUES (12, 1.000, 2);
INSERT INTO `bays` VALUES (21, 2.000, 2);
INSERT INTO `bays` VALUES (22, 1.000, 2);
INSERT INTO `bays` VALUES (23, 1.000, 2);

-- --------------------------------------------------------

-- 
-- Структура таблицы `checks`
-- 

CREATE TABLE `checks` (
  `id` int(11) NOT NULL default '0',
  `number` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `kassa` int(11) NOT NULL,
  `kassir` int(11) NOT NULL,
  `summa` float(6,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='checks';

-- 
-- Дамп данных таблицы `checks`
-- 

INSERT INTO `checks` VALUES (1, 3583, 1, 2, 2, 383.43);
INSERT INTO `checks` VALUES (2, 9213, 1, 3, 3, 307.43);
INSERT INTO `checks` VALUES (3, 454, 1, 1, 1, 78.69);

-- --------------------------------------------------------
-- 
-- Структура таблицы `kasses`
-- 

CREATE TABLE `kasses` (
  `id` int(11) NOT NULL auto_increment,
  `number` char(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Number of kasses' AUTO_INCREMENT=4 ;

-- 
-- Дамп данных таблицы `kasses`
-- 

INSERT INTO `kasses` VALUES (1, '№ 6');
INSERT INTO `kasses` VALUES (2, '№ 5');
INSERT INTO `kasses` VALUES (3, '№ 4');

-- --------------------------------------------------------

-- 
-- Структура таблицы `kassirs`
-- 

CREATE TABLE `kassirs` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Kassirs' AUTO_INCREMENT=4 ;

-- 
-- Дамп данных таблицы `kassirs`
-- 

INSERT INTO `kassirs` VALUES (1, 'Куприна Ольга Г.');
INSERT INTO `kassirs` VALUES (2, 'Теплякова Гали');
INSERT INTO `kassirs` VALUES (3, 'Числова Алена');

-- --------------------------------------------------------

-- 
-- Структура таблицы `positions`
-- 

CREATE TABLE `positions` (
  `id` int(11) NOT NULL auto_increment,
  `ur3_id` int(11) NOT NULL,
  `code` int(11) NOT NULL default '0',
  `name` char(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Position names' AUTO_INCREMENT=25 ;

-- 
-- Дамп данных таблицы `positions`
-- 

INSERT INTO `positions` VALUES (1, 0, 2817, 'Овощи Морковь мытая нов урожай');
INSERT INTO `positions` VALUES (2, 0, 11890, 'Хлеб Настюша 600г Кориа');
INSERT INTO `positions` VALUES (3, 0, 109212, 'Майонез Слобода 500мл');
INSERT INTO `positions` VALUES (4, 0, 140195, 'Пакет полиэтиленовый Пя');
INSERT INTO `positions` VALUES (5, 0, 8131, 'Овощи Картофель');
INSERT INTO `positions` VALUES (6, 0, 4758, 'Овощи Морковь фасованная');
INSERT INTO `positions` VALUES (7, 0, 47, 'Кефир Домик в деревне 3,2%');
INSERT INTO `positions` VALUES (8, 0, 11564, 'Цыплята Бройлеры охл (св/у)');
INSERT INTO `positions` VALUES (9, 0, 15857, 'Зам овощи Хортекс 400г');
INSERT INTO `positions` VALUES (10, 0, 13559, 'Зам овощи Хортекс 400г');
INSERT INTO `positions` VALUES (11, 0, 14235, 'Зам овощи Хортекс 400г');
INSERT INTO `positions` VALUES (12, 0, 15619, 'Хлеб Звездный 650г Дарни');
INSERT INTO `positions` VALUES (13, 0, 145341, 'Сыр плав Воронеж МК 10');
INSERT INTO `positions` VALUES (14, 0, 9070, 'Масло слив Крестьянское');
INSERT INTO `positions` VALUES (15, 0, 131252, 'Пакет полиэтиленовый Пя');
INSERT INTO `positions` VALUES (16, 0, 584, 'Кетчуп Балтимор 0,9л в ас');
INSERT INTO `positions` VALUES (17, 0, 11523, 'Яйцо столовое 1 категор');
INSERT INTO `positions` VALUES (18, 0, 110652, 'Вода мин Гроза 6л б/га');
INSERT INTO `positions` VALUES (19, 0, 15863, 'Печенье Тирлим 400г сах');
INSERT INTO `positions` VALUES (20, 0, 10585, 'Крупа Зерница рис длинн');
INSERT INTO `positions` VALUES (21, 0, 9506, 'Макароны Ладные 450/500г');
INSERT INTO `positions` VALUES (22, 0, 10586, 'Крупа Зерница гречневая');
INSERT INTO `positions` VALUES (23, 0, 206600, 'Мармелад БИ-БА-БО 250г');
INSERT INTO `positions` VALUES (24, 0, 8799, 'Майонез Балтимор 580г 67');

-- --------------------------------------------------------

-- 
-- Структура таблицы `prices`
-- 

CREATE TABLE `prices` (
  `id` int(11) NOT NULL auto_increment,
  `code_id` int(11) default NULL,
  `price` float(6,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Position prices' AUTO_INCREMENT=25 ;

-- 
-- Дамп данных таблицы `prices`
-- 

INSERT INTO `prices` VALUES (1, 1, 25.90);
INSERT INTO `prices` VALUES (2, 2, 15.40);
INSERT INTO `prices` VALUES (3, 3, 30.50);
INSERT INTO `prices` VALUES (4, 4, 1.50);
INSERT INTO `prices` VALUES (5, 5, 16.40);
INSERT INTO `prices` VALUES (6, 6, 17.40);
INSERT INTO `prices` VALUES (7, 7, 32.90);
INSERT INTO `prices` VALUES (8, 8, 72.00);
INSERT INTO `prices` VALUES (9, 9, 49.90);
INSERT INTO `prices` VALUES (10, 10, 27.60);
INSERT INTO `prices` VALUES (11, 11, 29.90);
INSERT INTO `prices` VALUES (12, 12, 9.00);
INSERT INTO `prices` VALUES (13, 13, 13.00);
INSERT INTO `prices` VALUES (14, 14, 25.00);
INSERT INTO `prices` VALUES (15, 15, 3.00);
INSERT INTO `prices` VALUES (16, 16, 29.40);
INSERT INTO `prices` VALUES (17, 17, 33.90);
INSERT INTO `prices` VALUES (18, 18, 30.50);
INSERT INTO `prices` VALUES (19, 19, 23.90);
INSERT INTO `prices` VALUES (20, 20, 25.00);
INSERT INTO `prices` VALUES (21, 21, 16.40);
INSERT INTO `prices` VALUES (22, 22, 24.50);
INSERT INTO `prices` VALUES (23, 23, 19.30);
INSERT INTO `prices` VALUES (24, 24, 37.90);

-- --------------------------------------------------------

-- 
-- Структура таблицы `shops`
-- 

CREATE TABLE `shops` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Shops names' AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `shops`
-- 

INSERT INTO `shops` VALUES (1, 'Сеть магазинов "Пятерочка"');

-- --------------------------------------------------------

-- 
-- Структура таблицы `uroven1`
-- 

CREATE TABLE `uroven1` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=20 ;

-- 
-- Дамп данных таблицы `uroven1`
-- 

INSERT INTO `uroven1` VALUES (1, 'Сыры');
INSERT INTO `uroven1` VALUES (2, 'Выпечка, хлеб');
INSERT INTO `uroven1` VALUES (3, 'Мясная гастрономия');
INSERT INTO `uroven1` VALUES (4, 'Соки, воды');
INSERT INTO `uroven1` VALUES (5, 'Торты, пирожные');
INSERT INTO `uroven1` VALUES (6, 'Кофе, чай');
INSERT INTO `uroven1` VALUES (7, 'Мёд');
INSERT INTO `uroven1` VALUES (8, 'Фрукты, овощи');
INSERT INTO `uroven1` VALUES (9, 'Здоровое питание');
INSERT INTO `uroven1` VALUES (10, 'Молоко и молочные продукты');
INSERT INTO `uroven1` VALUES (11, 'Для самых маленьких');
INSERT INTO `uroven1` VALUES (12, 'Замороженные продукты');
INSERT INTO `uroven1` VALUES (13, 'Восточная кухня');
INSERT INTO `uroven1` VALUES (14, 'Бакалея');
INSERT INTO `uroven1` VALUES (15, 'Рыба');
INSERT INTO `uroven1` VALUES (16, 'Пиво');
INSERT INTO `uroven1` VALUES (17, 'Подарки и товары для дома');
INSERT INTO `uroven1` VALUES (18, 'Кондитерские изделия');
INSERT INTO `uroven1` VALUES (19, 'Алкоголь');

-- --------------------------------------------------------

-- 
-- Структура таблицы `uroven2`
-- 

CREATE TABLE `uroven2` (
  `id` int(11) NOT NULL auto_increment,
  `ur1_id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=67 ;

-- 
-- Дамп данных таблицы `uroven2`
-- 

INSERT INTO `uroven2` VALUES (1, 1, 'Сырные тарелки');
INSERT INTO `uroven2` VALUES (2, 1, 'Свежие сыры');
INSERT INTO `uroven2` VALUES (3, 1, 'Сыры с белой плесенью');
INSERT INTO `uroven2` VALUES (4, 1, 'Твердые сыры');
INSERT INTO `uroven2` VALUES (5, 1, 'Сыры с мытой корочкой');
INSERT INTO `uroven2` VALUES (6, 1, 'Голубые сыры');
INSERT INTO `uroven2` VALUES (7, 2, 'Французская выпечка');
INSERT INTO `uroven2` VALUES (8, 2, 'Свежая выпечка');
INSERT INTO `uroven2` VALUES (9, 3, 'Мясные деликатесы');
INSERT INTO `uroven2` VALUES (10, 3, 'Паштеты');
INSERT INTO `uroven2` VALUES (11, 4, 'Свежевыжатые соки');
INSERT INTO `uroven2` VALUES (12, 4, 'Соки, нектары');
INSERT INTO `uroven2` VALUES (13, 4, 'Лимонады');
INSERT INTO `uroven2` VALUES (14, 4, 'Вода минеральная, столовая');
INSERT INTO `uroven2` VALUES (15, 5, 'Пирожные');
INSERT INTO `uroven2` VALUES (16, 5, 'Бисквиты');
INSERT INTO `uroven2` VALUES (17, 5, 'Торты');
INSERT INTO `uroven2` VALUES (18, 6, 'Свежеобжаренный кофе');
INSERT INTO `uroven2` VALUES (19, 6, 'Молотый кофе');
INSERT INTO `uroven2` VALUES (20, 6, 'Коллекционный чай');
INSERT INTO `uroven2` VALUES (21, 7, 'Лучшие сорта мёда');
INSERT INTO `uroven2` VALUES (22, 8, 'Экзотика');
INSERT INTO `uroven2` VALUES (23, 8, 'Фрукты');
INSERT INTO `uroven2` VALUES (24, 8, 'Прянная зелень');
INSERT INTO `uroven2` VALUES (25, 8, 'Овощи');
INSERT INTO `uroven2` VALUES (26, 9, 'Экологические продукты');
INSERT INTO `uroven2` VALUES (27, 9, 'Актуально, полезно, вкусно');
INSERT INTO `uroven2` VALUES (28, 10, 'Молоко, сливки');
INSERT INTO `uroven2` VALUES (29, 10, 'Кисломолочные продукты');
INSERT INTO `uroven2` VALUES (30, 10, 'Йогурты, десерты');
INSERT INTO `uroven2` VALUES (31, 11, 'Игрушки, игры');
INSERT INTO `uroven2` VALUES (32, 11, 'Средства по уходу');
INSERT INTO `uroven2` VALUES (33, 11, 'Детское питание');
INSERT INTO `uroven2` VALUES (34, 12, 'Продукты быстрого приготовления');
INSERT INTO `uroven2` VALUES (35, 12, 'Дары моря');
INSERT INTO `uroven2` VALUES (36, 12, 'Овощи, фрукты');
INSERT INTO `uroven2` VALUES (37, 12, 'Десерты, торты');
INSERT INTO `uroven2` VALUES (38, 12, 'Мороженое');
INSERT INTO `uroven2` VALUES (39, 13, 'Лапша');
INSERT INTO `uroven2` VALUES (40, 13, 'Специи');
INSERT INTO `uroven2` VALUES (41, 13, 'Суши');
INSERT INTO `uroven2` VALUES (42, 13, 'Соусы');
INSERT INTO `uroven2` VALUES (43, 14, 'Растительные масла');
INSERT INTO `uroven2` VALUES (44, 14, 'Уксусы');
INSERT INTO `uroven2` VALUES (45, 14, 'Бакалейные изделия');
INSERT INTO `uroven2` VALUES (46, 14, 'Макаронные изделия');
INSERT INTO `uroven2` VALUES (47, 14, 'Соусы');
INSERT INTO `uroven2` VALUES (48, 15, 'Соленая рыба');
INSERT INTO `uroven2` VALUES (49, 15, 'Охлажденная рыба');
INSERT INTO `uroven2` VALUES (50, 15, 'Копченная рыба');
INSERT INTO `uroven2` VALUES (51, 15, 'Рыбная консервация');
INSERT INTO `uroven2` VALUES (52, 15, 'Икра');
INSERT INTO `uroven2` VALUES (53, 16, 'Итальянское пиво');
INSERT INTO `uroven2` VALUES (54, 16, 'Немецкое пиво');
INSERT INTO `uroven2` VALUES (55, 16, 'Пиво стран Бенилюкс');
INSERT INTO `uroven2` VALUES (56, 16, 'Экзотическое пиво');
INSERT INTO `uroven2` VALUES (57, 16, 'Пиво Великобритании');
INSERT INTO `uroven2` VALUES (58, 18, 'Шоколад и мармелад ручной работы');
INSERT INTO `uroven2` VALUES (59, 18, 'Традиционные сладости');
INSERT INTO `uroven2` VALUES (60, 18, 'Конфеты');
INSERT INTO `uroven2` VALUES (61, 18, 'Печенье, вафли');
INSERT INTO `uroven2` VALUES (62, 18, 'Плиточный шоколад');
INSERT INTO `uroven2` VALUES (63, 19, 'Коньяки, бренди');
INSERT INTO `uroven2` VALUES (64, 19, 'Виски');
INSERT INTO `uroven2` VALUES (65, 19, 'Вино');
INSERT INTO `uroven2` VALUES (66, 19, 'Игристые вина');

-- --------------------------------------------------------

-- 
-- Структура таблицы `uroven3`
-- 

CREATE TABLE `uroven3` (
  `id` int(11) NOT NULL auto_increment,
  `ur2_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 AUTO_INCREMENT=9 ;

-- 
-- Дамп данных таблицы `uroven3`
-- 

INSERT INTO `uroven3` VALUES (1, 1, 'Сырная симфония');
INSERT INTO `uroven3` VALUES (2, 1, 'Французская сырная тарелка');
INSERT INTO `uroven3` VALUES (3, 1, 'Итальянская сырная тарелка');
INSERT INTO `uroven3` VALUES (4, 1, 'Австралийская сырная тарелка');
INSERT INTO `uroven3` VALUES (5, 1, 'Швейцарская сырная тарелка');
INSERT INTO `uroven3` VALUES (6, 43, 'Оливковое масло "Ардоино Фрактус" от "Ardonino"');
INSERT INTO `uroven3` VALUES (7, 43, 'Оливковое масло "Ardonino"');
INSERT INTO `uroven3` VALUES (8, 43, 'Оливковое масло "Gaea"');
