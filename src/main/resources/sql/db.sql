create database questionnaire default character set utf8mb4 collate utf8mb4_unicode_ci;
use questionnaire;

-- 用户
CREATE TABLE  `user` (
    `id` VARCHAR( 64 ) NOT NULL ,
    `username` VARCHAR( 64 ) NOT NULL ,
    `password` VARCHAR( 64 ) NOT NULL ,
    `email` VARCHAR( 64 ) NOT NULL ,
    `create_time` DATETIME NOT NULL ,
    `last_login_time` DATETIME NULL ,
    `status` INT NOT NULL DEFAULT  '0',
    `random_code` VARCHAR( 64 ) NOT NULL ,
    PRIMARY KEY (  `id` ) ,
    UNIQUE (`random_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 问卷
CREATE TABLE  `paper` (
    `id` VARCHAR( 64 ) NOT NULL ,
    `user_id` VARCHAR( 64 ) NOT NULL ,
    `title` VARCHAR( 64 ) NOT NULL ,
    `create_time` DATETIME NOT NULL ,
    `status` INT NOT NULL DEFAULT  '0',
    `start_time` DATETIME NULL ,
    `end_time` DATETIME NULL ,
    PRIMARY KEY (  `id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


-- 问题
CREATE TABLE  `question` (
    `id` VARCHAR( 64 ) NOT NULL ,
    `paper_id` VARCHAR( 64 ) NOT NULL ,
    `create_time` DATETIME NOT NULL ,
    `question_type` INT NOT NULL ,
    `question_title` VARCHAR( 128 ) NOT NULL ,
    `question_option` VARCHAR( 512 ) NOT NULL ,
    PRIMARY KEY (  `id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


-- 答题
CREATE TABLE  `answer` (
    `id` VARCHAR( 64 ) NOT NULL ,
    `paper_id` VARCHAR( 64 ) NOT NULL ,
    `question_id` VARCHAR( 64 ) NOT NULL ,
    `question_type` INT NOT NULL ,
    `create_time` DATETIME NOT NULL ,
    `answer_content` VARCHAR( 512 ) NOT NULL ,
    PRIMARY KEY (  `id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
