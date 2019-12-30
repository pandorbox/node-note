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
id INT(10) PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(10),
userpwd VARCHAR(20)
);

#创建数据表usermsg
DROP TABLE IF EXISTS usermsg;
CREATE TABLE usermsg (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
userimg VARCHAR(50),
username VARCHAR(10),
usernc VARCHAR(20),
userjj VARCHAR(30),
userjf VARCHAR(30)
);

#创建数据表userbj
DROP TABLE IF EXISTS userbj;
CREATE TABLE userbj (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(10),
bjtit VARCHAR(20),
bjmsg VARCHAR(100),
bjtime VARCHAR(20)
);

#创建数据表usergz
DROP TABLE IF EXISTS usergz;
CREATE TABLE usergz (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(10),
 noteid INT(3)
);

#创建数据表userdy
DROP TABLE IF EXISTS userdy;
CREATE TABLE userdy (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(10),
 noteid INT(3)
);

#创建数据表 notepj
DROP TABLE IF EXISTS  notepj;
CREATE TABLE  notepj (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
 noteid INT(3),
pjtime VARCHAR(20),
 notepjmsg VARCHAR(100),
userimg VARCHAR(50),
username VARCHAR(10)
);

#创建数据表 notelist
DROP TABLE IF EXISTS  notelist;
CREATE TABLE  notelist (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
 noteimg VARCHAR(50),
 notename VARCHAR(10),
 noteclass VARCHAR(20),
 noteauthor VARCHAR(10),
 notejj VARCHAR(200),
 notejf INT(3),
pass VARCHAR(10),
remarks VARCHAR(20)
);

#创建数据表notic
DROP TABLE IF EXISTS notic;
CREATE TABLE notic (
id INT(10) PRIMARY KEY AUTO_INCREMENT,
notictit VARCHAR(20),
noticmsg VARCHAR(200)
);