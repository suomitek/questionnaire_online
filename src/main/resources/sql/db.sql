use questionnaire;

-- create user 'questionnaire'@'127.0.0.1' identified by 'questionnaire123';
-- create database questionnaire default character set utf8mb4 collate utf8mb4_unicode_ci;
-- grant all privileges on questionnaire.* to 'questionnaire'@'127.0.0.1';
-- flush privileges;

-- 用户
CREATE TABLE  `user` (
    `id`VARCHAR( 64 ) NOT NULL default '',
    `username` VARCHAR( 64 ) NOT NULL default '',
    `password` VARCHAR( 64 ) NOT NULL default '',
    `email` VARCHAR( 64 ) NOT NULL  default '',
    `create_time` DATETIME NOT NULL default CURRENT_TIMESTAMP,
    `last_login_time` DATETIME not null default CURRENT_TIMESTAMP,
    `status` INT NOT NULL DEFAULT  '0',
    `random_code` VARCHAR( 64 ) NOT NULL default '',
    PRIMARY KEY (`id`) ,
    UNIQUE (`random_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 问卷
CREATE TABLE  `paper` (
    `id`VARCHAR( 64 ) NOT NULL default '',
    `user_id` VARCHAR( 64 ) NOT NULL default '',
    `title` VARCHAR( 64 ) NOT NULL default '',
    `create_time` DATETIME NOT NULL default CURRENT_TIMESTAMP,
    `status` INT NOT NULL DEFAULT  '0',
    `start_time` DATETIME not NULL default CURRENT_TIMESTAMP,
    `end_time` DATETIME not NULL default CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


-- 问题
CREATE TABLE  `question` (
    `id`VARCHAR( 64 ) NOT NULL default '',
    `paper_id` VARCHAR( 64 ) NOT NULL default '',
    `create_time` DATETIME NOT NULL default CURRENT_TIMESTAMP,
    `question_type` INT NOT NULL default '0',
    `question_title` VARCHAR( 128 ) NOT NULL default '',
    `question_option` VARCHAR( 512 ) NOT NULL default '',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


-- 答题
CREATE TABLE  `answer` (
    `id`VARCHAR( 64 ) NOT NULL default '',
    `paper_id` VARCHAR( 64 ) NOT NULL default '',
    `question_id` VARCHAR( 64 ) NOT NULL default '',
    `question_type` INT NOT NULL default '0',
    `create_time` DATETIME NOT NULL default CURRENT_TIMESTAMP,
    `answer_content` VARCHAR( 512 ) NOT NULL default '',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
