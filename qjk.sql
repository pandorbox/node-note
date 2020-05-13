#设置客户端连接服务器使用utf8
SET NAMES UTF8;

#删除（丢弃）数据库note,如果存在的话 
DROP DATABASE IF EXISTS note;

#创建数据库名称叫note CHARSET=UTF8,编码中文支持
CREATE DATABASE note CHARSET=UTF8;
USE note;

#创建数据表admins
DROP TABLE IF EXISTS admins;
CREATE TABLE admins (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
adminname VARCHAR(10),
adminpwd VARCHAR(20)
);
INSERT INTO admins(adminname,adminpwd) VALUES('admin','123');

#创建数据表user
DROP TABLE IF EXISTS user;
CREATE TABLE user (
userId INT(10) PRIMARY KEY AUTO_INCREMENT,
userName VARCHAR(10),
userPwd VARCHAR(20),
userPhoto VARCHAR(50),
userNickName VARCHAR(10),
userDescribe VARCHAR(50),
userIntegral VARCHAR(10),
userFans VARCHAR(10)
);

#创建数据表banner
DROP TABLE IF EXISTS banner;
CREATE TABLE banner (
bannerId INT(10) PRIMARY KEY AUTO_INCREMENT,
bannerSrc VARCHAR(50)
);

#创建数据表notic
DROP TABLE IF EXISTS notic;
CREATE TABLE notic (
noticId INT(10) PRIMARY KEY AUTO_INCREMENT,
content VARCHAR(50)
);

#创建数据表noteType
DROP TABLE IF EXISTS noteType;
CREATE TABLE noteType (
typeId INT(10) PRIMARY KEY AUTO_INCREMENT,
typeName VARCHAR(50)
);
INSERT INTO noteType(typeName) VALUES("Vue");
INSERT INTO noteType(typeName) VALUES("CSS");
INSERT INTO noteType(typeName) VALUES("Html");
INSERT INTO noteType(typeName) VALUES("Javascript");
INSERT INTO noteType(typeName) VALUES("Java");
INSERT INTO noteType(typeName) VALUES("PHP");



#创建数据表noteList
DROP TABLE IF EXISTS noteList;
CREATE TABLE noteList (
noteId INT(10) PRIMARY KEY AUTO_INCREMENT,
userId VARCHAR(10),
userPhoto VARCHAR(50),
userNickName VARCHAR(10),
noteType VARCHAR(20),
title VARCHAR(20),
creatTime VARCHAR(20), 
describes VARCHAR(20),
content VARCHAR(50),
readNum VARCHAR(10),
noteState INT(5),
noteRemarks VARCHAR(10)
);
