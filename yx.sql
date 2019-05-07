SET NAMES UTF8;
DROP DATABASE IF EXISTS yx;
CREATE DATABASE yx CHARSET=UTF8;
USE yx;
CREATE TABLE yx_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(64),
    email VARCHAR(64),
    phone INT,
    artar VARCHAR(128)      # 用户头像路径
);
INSERT INTO yx_user VALUES
(NULL,"daquan","123","123@163.com","18878945612","img/img1"),
(NULL,"lili","223","12223@163.com","13578945612","img/img4"),
(NULL,"king","113","14423@163.com","13978945612","img/img5"),
(NULL,"toney","333","33123@163.com","13878945612","img/img3"),
(NULL,"meimei","3333773","17723@163.com","17778945612","img/img6"),
(NULL,"zhiguang","12773","155523@163.com","18378945612","img/img9");