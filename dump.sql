-- Created: 2018-03-07 17:17:00
-- MySQL: 5.0.18

CREATE TABLE `bays` (
  `position` int(11) NOT NULL,
  `count` float(6,3) NOT NULL,
  `check` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='bays';

CREATE TABLE `checks` (
  `id` int(11) NOT NULL default '0',
  `number` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `kassa` int(11) NOT NULL,
  `kassir` int(11) NOT NULL,
  `summa` float(6,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='checks';

CREATE TABLE `kasses` (
  `id` int(11) NOT NULL auto_increment,
  `number` char(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='Number of kasses' ;

CREATE TABLE `kassirs` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='Kassirs' ;

CREATE TABLE `positions` (
  `id` int(11) NOT NULL auto_increment,
  `ur3_id` int(11) NOT NULL,
  `code` int(11) NOT NULL default '0',
  `name` char(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='Position names' ;

CREATE TABLE `prices` (
  `id` int(11) NOT NULL auto_increment,
  `code_id` int(11) default NULL,
  `price` float(6,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='Position prices' ;

CREATE TABLE `shops` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 COMMENT='Shops names' ;

CREATE TABLE `uroven1` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 ;

CREATE TABLE `uroven2` (
  `id` int(11) NOT NULL auto_increment,
  `ur1_id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8 ;

CREATE TABLE `uroven3` (
  `id` int(11) NOT NULL auto_increment,
  `ur2_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF-8;
