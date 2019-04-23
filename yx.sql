SET NAMES UTF8;
DROP DATABASE IF EXISTS yx;
CREATE DATABASE yx CHARSET=UTF8;
USE yx;
# 创建游戏用户列表
CREATE TABLE yx_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),		#用户名
	upwd VARCHAR(64),		#用户密码
	email VARCHAR(64),		#用户邮箱
	phone CHAR(11),			#用户手机
	user_name VARCHAR(32),		#真实姓名
	idnumber CHAR(18),		#身份证号码
	gender INT,			#性别 0-女 1-男
	avatar VARCHAR(128)		#头像图片路径
);
INSERT INTO yx_user VALUES
(NULL,"dingding",123456,"123@qq.com",13512345678,"志广",123456789123456779,"男","img/img1"),
(NULL,"dangdang",123456,"1333@qq.com",13512555678,"大山",123456789123456779,"男","img/img1"),
(NULL,"kgkg",123456,"888@qq.com",13519999678,"王五",123456789123456779,"男","img/img1"),
(NULL,"diada",123456,"999@qq.com",13577775678,"赵四",123456789123456779,"男","img/img1"),
(NULL,"donggd",123456,"000@qq.com",13512345333,"多多",123456789123456789,"女","img/img1"),
(NULL,"bbddd",123456,"1111@qq.com",13512345666,"奥特多夫",123456789123456779,"男","img/img1"),
(NULL,"daadsdasd",123456,"555@qq.com",13512345888,"汉三",123456789123456779,"男","img/img1"),
(NULL,"xiaohong",123456,"888888@qq.com",13512345999,"道海",123456789123456779,"男","img/img1"),
(NULL,"xiaodong",123456,"7878@qq.com",13512345000,"花花",123456789123456779,"女","img/img1"),
(NULL,"xiaohua",123456,"19999@qq.com",13512348008,"蕊蕊",123456789123456779,"女","img/img1");
