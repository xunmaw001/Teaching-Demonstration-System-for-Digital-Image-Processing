-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm7632x
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm7632x`
--

/*!40000 DROP DATABASE IF EXISTS `ssm7632x`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm7632x` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm7632x`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-10 05:25:46','关于教学','ABOUT US','<p>教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学教学</p>','upload/1676007087765.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007116808 DEFAULT CHARSET=utf8 COMMENT='在线答疑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2023-02-10 05:25:46',1,1,'提问1','回复1',1),(82,'2023-02-10 05:25:46',2,2,'提问2','回复2',2),(83,'2023-02-10 05:25:46',3,3,'提问3','回复3',3),(84,'2023-02-10 05:25:46',4,4,'提问4','回复4',4),(85,'2023-02-10 05:25:46',5,5,'提问5','回复5',5),(86,'2023-02-10 05:25:46',6,6,'提问6','回复6',6),(87,'2023-02-10 05:25:46',7,7,'提问7','回复7',7),(88,'2023-02-10 05:25:46',8,8,'提问8','回复8',8),(1676006979476,'2023-02-10 05:29:38',1676006942262,NULL,'1111',NULL,0),(1676007116807,'2023-02-10 05:31:56',1676006942262,1,NULL,'3333',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007338682 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2023-02-10 05:25:46','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(92,'2023-02-10 05:25:46','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(93,'2023-02-10 05:25:46','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(94,'2023-02-10 05:25:46','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(95,'2023-02-10 05:25:46','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(96,'2023-02-10 05:25:46','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(97,'2023-02-10 05:25:46','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(98,'2023-02-10 05:25:46','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放'),(1676007298239,'2023-02-10 05:34:57','1111','<p>111111111</p>',0,1676006942262,'11',NULL,'开放'),(1676007338681,'2023-02-10 05:35:38',NULL,'3333',1676007298239,1676007329184,'22','upload/1676007328573.jpeg',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676006962140 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2023-02-10 05:25:46','教师工号1','123456','教师姓名1','男','高级讲师','773890001@qq.com','13823888881','upload/jiaoshi_touxiang1.jpg'),(22,'2023-02-10 05:25:46','教师工号2','123456','教师姓名2','男','高级讲师','773890002@qq.com','13823888882','upload/jiaoshi_touxiang2.jpg'),(23,'2023-02-10 05:25:46','教师工号3','123456','教师姓名3','男','高级讲师','773890003@qq.com','13823888883','upload/jiaoshi_touxiang3.jpg'),(24,'2023-02-10 05:25:46','教师工号4','123456','教师姓名4','男','高级讲师','773890004@qq.com','13823888884','upload/jiaoshi_touxiang4.jpg'),(25,'2023-02-10 05:25:46','教师工号5','123456','教师姓名5','男','高级讲师','773890005@qq.com','13823888885','upload/jiaoshi_touxiang5.jpg'),(26,'2023-02-10 05:25:46','教师工号6','123456','教师姓名6','男','高级讲师','773890006@qq.com','13823888886','upload/jiaoshi_touxiang6.jpg'),(27,'2023-02-10 05:25:46','教师工号7','123456','教师姓名7','男','高级讲师','773890007@qq.com','13823888887','upload/jiaoshi_touxiang7.jpg'),(28,'2023-02-10 05:25:46','教师工号8','123456','教师姓名8','男','高级讲师','773890008@qq.com','13823888888','upload/jiaoshi_touxiang8.jpg'),(1676006962139,'2023-02-10 05:29:22','22','22','22','男','教师','222@qq.com','13012312322','upload/1676006961401.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxueshipin`
--

DROP TABLE IF EXISTS `jiaoxueshipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxueshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `jiaoxueshipin` longtext COMMENT '教学视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jibenjieshao` longtext COMMENT '基本介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007185247 DEFAULT CHARSET=utf8 COMMENT='教学视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxueshipin`
--

LOCK TABLES `jiaoxueshipin` WRITE;
/*!40000 ALTER TABLE `jiaoxueshipin` DISABLE KEYS */;
INSERT INTO `jiaoxueshipin` VALUES (61,'2023-02-10 05:25:46','教师工号1','教师姓名1','标题1','upload/jiaoxueshipin_fengmian1.jpg,upload/jiaoxueshipin_fengmian2.jpg,upload/jiaoxueshipin_fengmian3.jpg','','2023-02-10 13:25:46','基本介绍1'),(62,'2023-02-10 05:25:46','教师工号2','教师姓名2','标题2','upload/jiaoxueshipin_fengmian2.jpg,upload/jiaoxueshipin_fengmian3.jpg,upload/jiaoxueshipin_fengmian4.jpg','','2023-02-10 13:25:46','基本介绍2'),(63,'2023-02-10 05:25:46','教师工号3','教师姓名3','标题3','upload/jiaoxueshipin_fengmian3.jpg,upload/jiaoxueshipin_fengmian4.jpg,upload/jiaoxueshipin_fengmian5.jpg','','2023-02-10 13:25:46','基本介绍3'),(64,'2023-02-10 05:25:46','教师工号4','教师姓名4','标题4','upload/jiaoxueshipin_fengmian4.jpg,upload/jiaoxueshipin_fengmian5.jpg,upload/jiaoxueshipin_fengmian6.jpg','','2023-02-10 13:25:46','基本介绍4'),(65,'2023-02-10 05:25:46','教师工号5','教师姓名5','标题5','upload/jiaoxueshipin_fengmian5.jpg,upload/jiaoxueshipin_fengmian6.jpg,upload/jiaoxueshipin_fengmian7.jpg','','2023-02-10 13:25:46','基本介绍5'),(66,'2023-02-10 05:25:46','教师工号6','教师姓名6','标题6','upload/jiaoxueshipin_fengmian6.jpg,upload/jiaoxueshipin_fengmian7.jpg,upload/jiaoxueshipin_fengmian8.jpg','','2023-02-10 13:25:46','基本介绍6'),(67,'2023-02-10 05:25:46','教师工号7','教师姓名7','标题7','upload/jiaoxueshipin_fengmian7.jpg,upload/jiaoxueshipin_fengmian8.jpg,upload/jiaoxueshipin_fengmian9.jpg','','2023-02-10 13:25:46','基本介绍7'),(68,'2023-02-10 05:25:46','教师工号8','教师姓名8','标题8','upload/jiaoxueshipin_fengmian8.jpg,upload/jiaoxueshipin_fengmian9.jpg,upload/jiaoxueshipin_fengmian10.jpg','','2023-02-10 13:25:46','基本介绍8'),(1676007185246,'2023-02-10 05:33:05','22','22','教学11','upload/1676007174551.jpg','upload/1676007180906.mp4','2023-02-10 13:33:01','<p>1111111111111</p>');
/*!40000 ALTER TABLE `jiaoxueshipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengleixing` (`kechengleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007006481 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (31,'2023-02-10 05:25:46','课程22'),(32,'2023-02-10 05:25:46','课程类型2'),(33,'2023-02-10 05:25:46','课程类型3'),(34,'2023-02-10 05:25:46','课程类型4'),(35,'2023-02-10 05:25:46','课程类型5'),(36,'2023-02-10 05:25:46','课程类型6'),(37,'2023-02-10 05:25:46','课程类型7'),(38,'2023-02-10 05:25:46','课程类型8'),(1676007006480,'2023-02-10 05:30:06','课程11');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengtupian` longtext COMMENT '课程图片',
  `kechengkeshi` varchar(200) DEFAULT NULL COMMENT '课程课时',
  `kechengwenjian` longtext COMMENT '课程文件',
  `kechengjianjie` longtext COMMENT '课程简介',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007225977 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (71,'2023-02-10 05:25:46','课程名称1','课程类型1','upload/kechengxinxi_kechengtupian1.jpg,upload/kechengxinxi_kechengtupian2.jpg,upload/kechengxinxi_kechengtupian3.jpg','课程课时1','','课程简介1','2023-02-10 13:25:46'),(72,'2023-02-10 05:25:46','课程名称2','课程类型2','upload/kechengxinxi_kechengtupian2.jpg,upload/kechengxinxi_kechengtupian3.jpg,upload/kechengxinxi_kechengtupian4.jpg','课程课时2','','课程简介2','2023-02-10 13:25:46'),(73,'2023-02-10 05:25:46','课程名称3','课程类型3','upload/kechengxinxi_kechengtupian3.jpg,upload/kechengxinxi_kechengtupian4.jpg,upload/kechengxinxi_kechengtupian5.jpg','课程课时3','','课程简介3','2023-02-10 13:25:46'),(74,'2023-02-10 05:25:46','课程名称4','课程类型4','upload/kechengxinxi_kechengtupian4.jpg,upload/kechengxinxi_kechengtupian5.jpg,upload/kechengxinxi_kechengtupian6.jpg','课程课时4','','课程简介4','2023-02-10 13:25:46'),(75,'2023-02-10 05:25:46','课程名称5','课程类型5','upload/kechengxinxi_kechengtupian5.jpg,upload/kechengxinxi_kechengtupian6.jpg,upload/kechengxinxi_kechengtupian7.jpg','课程课时5','','课程简介5','2023-02-10 13:25:46'),(76,'2023-02-10 05:25:46','课程名称6','课程类型6','upload/kechengxinxi_kechengtupian6.jpg,upload/kechengxinxi_kechengtupian7.jpg,upload/kechengxinxi_kechengtupian8.jpg','课程课时6','','课程简介6','2023-02-10 13:25:46'),(77,'2023-02-10 05:25:46','课程名称7','课程类型7','upload/kechengxinxi_kechengtupian7.jpg,upload/kechengxinxi_kechengtupian8.jpg,upload/kechengxinxi_kechengtupian9.jpg','课程课时7','','课程简介7','2023-02-10 13:25:46'),(78,'2023-02-10 05:25:46','课程名称8','课程类型8','upload/kechengxinxi_kechengtupian8.jpg,upload/kechengxinxi_kechengtupian9.jpg,upload/kechengxinxi_kechengtupian10.jpg','课程课时8','','课程简介8','2023-02-10 13:25:46'),(1676007044595,'2023-02-10 05:30:44','课程11','课程11','upload/1676007034181.jpg','40分钟','upload/1676007041456.docx','<p>11111111111</p>','2023-02-10 13:30:17'),(1676007225976,'2023-02-10 05:33:45','课程22','课程22','upload/1676007210329.png','40分钟','upload/1676007218414.docx','<p>11111111111111</p>','2023-02-10 13:33:07');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007103912 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-02-10 05:25:46','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(112,'2023-02-10 05:25:46','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(113,'2023-02-10 05:25:46','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2023-02-10 05:25:46','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2023-02-10 05:25:46','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2023-02-10 05:25:46','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(117,'2023-02-10 05:25:46','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(118,'2023-02-10 05:25:46','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(1676007103911,'2023-02-10 05:31:43','公告11','11111','upload/1676007100185.jpg','<p>111111111</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007292678 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1676007252355,'2023-02-10 05:34:12',1676006942262,1676007141920,'xuexigonggao','学习公告11','upload/1676007135004.jpg','1',NULL,NULL),(1676007267616,'2023-02-10 05:34:27',1676006942262,1676007164684,'zuoyegonggao','作业公告','upload/1676007163088.png','1',NULL,NULL),(1676007278554,'2023-02-10 05:34:38',1676006942262,1676007185246,'jiaoxueshipin','教学11','upload/1676007174551.jpg','1',NULL,NULL),(1676007288608,'2023-02-10 05:34:47',1676006942262,1676007044595,'kechengxinxi','课程11','upload/1676007034181.jpg','1',NULL,NULL),(1676007292677,'2023-02-10 05:34:52',1676006942262,1676007225976,'kechengxinxi','课程22','upload/1676007210329.png','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1676006942262,'11','xuesheng','学生','xayoqnhpr0a2df3z8vkcg813pcxu5gl6','2023-02-10 05:29:27','2023-02-10 06:35:45'),(2,1,'admin','users','管理员','4gz9cc9r63g2fdlz0ct9kbbu6xtyvqio','2023-02-10 05:29:51','2023-02-10 06:29:51'),(3,1676006962139,'22','jiaoshi','教师','untfwct7st5uswo7emat14lhw6idrcqj','2023-02-10 05:32:05','2023-02-10 06:32:05'),(4,1676007329184,'22','xuesheng','学生','u5luoxn7ph7hz3gza8zvgm5ddhgkt4az','2023-02-10 05:35:32','2023-02-10 06:35:33');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-10 05:25:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengxuehao` varchar(200) NOT NULL COMMENT '学生学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengxuehao` (`xueshengxuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007329185 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-02-10 05:25:46','学生学号1','123456','学生姓名1','男','专业1','773890001@qq.com','13823888881','upload/xuesheng_touxiang1.jpg'),(12,'2023-02-10 05:25:46','学生学号2','123456','学生姓名2','男','专业2','773890002@qq.com','13823888882','upload/xuesheng_touxiang2.jpg'),(13,'2023-02-10 05:25:46','学生学号3','123456','学生姓名3','男','专业3','773890003@qq.com','13823888883','upload/xuesheng_touxiang3.jpg'),(14,'2023-02-10 05:25:46','学生学号4','123456','学生姓名4','男','专业4','773890004@qq.com','13823888884','upload/xuesheng_touxiang4.jpg'),(15,'2023-02-10 05:25:46','学生学号5','123456','学生姓名5','男','专业5','773890005@qq.com','13823888885','upload/xuesheng_touxiang5.jpg'),(16,'2023-02-10 05:25:46','学生学号6','123456','学生姓名6','男','专业6','773890006@qq.com','13823888886','upload/xuesheng_touxiang6.jpg'),(17,'2023-02-10 05:25:46','学生学号7','123456','学生姓名7','男','专业7','773890007@qq.com','13823888887','upload/xuesheng_touxiang7.jpg'),(18,'2023-02-10 05:25:46','学生学号8','123456','学生姓名8','男','专业8','773890008@qq.com','13823888888','upload/xuesheng_touxiang8.jpg'),(1676006942262,'2023-02-10 05:29:02','11','11','11','女','计算机','111@qq.com','13012312311','upload/1676006938822.jpeg'),(1676007329184,'2023-02-10 05:35:29','22','22','22','女','计算机','22@qq.com','13012312322','upload/1676007328573.jpeg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexigonggao`
--

DROP TABLE IF EXISTS `xuexigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuexibiaoti` varchar(200) DEFAULT NULL COMMENT '学习标题',
  `fengmian` longtext COMMENT '封面',
  `xuexiwenjian` longtext COMMENT '学习文件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xuexixiangqing` longtext COMMENT '学习详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007141921 DEFAULT CHARSET=utf8 COMMENT='学习公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexigonggao`
--

LOCK TABLES `xuexigonggao` WRITE;
/*!40000 ALTER TABLE `xuexigonggao` DISABLE KEYS */;
INSERT INTO `xuexigonggao` VALUES (41,'2023-02-10 05:25:46','教师工号1','教师姓名1','学习标题1','upload/xuexigonggao_fengmian1.jpg,upload/xuexigonggao_fengmian2.jpg,upload/xuexigonggao_fengmian3.jpg','','2023-02-10 13:25:46','学习详情1'),(42,'2023-02-10 05:25:46','教师工号2','教师姓名2','学习标题2','upload/xuexigonggao_fengmian2.jpg,upload/xuexigonggao_fengmian3.jpg,upload/xuexigonggao_fengmian4.jpg','','2023-02-10 13:25:46','学习详情2'),(43,'2023-02-10 05:25:46','教师工号3','教师姓名3','学习标题3','upload/xuexigonggao_fengmian3.jpg,upload/xuexigonggao_fengmian4.jpg,upload/xuexigonggao_fengmian5.jpg','','2023-02-10 13:25:46','学习详情3'),(44,'2023-02-10 05:25:46','教师工号4','教师姓名4','学习标题4','upload/xuexigonggao_fengmian4.jpg,upload/xuexigonggao_fengmian5.jpg,upload/xuexigonggao_fengmian6.jpg','','2023-02-10 13:25:46','学习详情4'),(45,'2023-02-10 05:25:46','教师工号5','教师姓名5','学习标题5','upload/xuexigonggao_fengmian5.jpg,upload/xuexigonggao_fengmian6.jpg,upload/xuexigonggao_fengmian7.jpg','','2023-02-10 13:25:46','学习详情5'),(46,'2023-02-10 05:25:46','教师工号6','教师姓名6','学习标题6','upload/xuexigonggao_fengmian6.jpg,upload/xuexigonggao_fengmian7.jpg,upload/xuexigonggao_fengmian8.jpg','','2023-02-10 13:25:46','学习详情6'),(47,'2023-02-10 05:25:46','教师工号7','教师姓名7','学习标题7','upload/xuexigonggao_fengmian7.jpg,upload/xuexigonggao_fengmian8.jpg,upload/xuexigonggao_fengmian9.jpg','','2023-02-10 13:25:46','学习详情7'),(48,'2023-02-10 05:25:46','教师工号8','教师姓名8','学习标题8','upload/xuexigonggao_fengmian8.jpg,upload/xuexigonggao_fengmian9.jpg,upload/xuexigonggao_fengmian10.jpg','','2023-02-10 13:25:46','学习详情8'),(1676007141920,'2023-02-10 05:32:21','22','22','学习公告11','upload/1676007135004.jpg','upload/1676007138639.docx','2023-02-10 13:32:06','<p>11111111111</p>');
/*!40000 ALTER TABLE `xuexigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyegonggao`
--

DROP TABLE IF EXISTS `zuoyegonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyegonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `zuoyefengmian` longtext COMMENT '作业封面',
  `zuoyewenjian` longtext COMMENT '作业文件',
  `zuoyexiangqing` longtext COMMENT '作业详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676007164685 DEFAULT CHARSET=utf8 COMMENT='作业公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyegonggao`
--

LOCK TABLES `zuoyegonggao` WRITE;
/*!40000 ALTER TABLE `zuoyegonggao` DISABLE KEYS */;
INSERT INTO `zuoyegonggao` VALUES (51,'2023-02-10 05:25:46','教师工号1','教师姓名1','作业标题1','upload/zuoyegonggao_zuoyefengmian1.jpg,upload/zuoyegonggao_zuoyefengmian2.jpg,upload/zuoyegonggao_zuoyefengmian3.jpg','','作业详情1'),(52,'2023-02-10 05:25:46','教师工号2','教师姓名2','作业标题2','upload/zuoyegonggao_zuoyefengmian2.jpg,upload/zuoyegonggao_zuoyefengmian3.jpg,upload/zuoyegonggao_zuoyefengmian4.jpg','','作业详情2'),(53,'2023-02-10 05:25:46','教师工号3','教师姓名3','作业标题3','upload/zuoyegonggao_zuoyefengmian3.jpg,upload/zuoyegonggao_zuoyefengmian4.jpg,upload/zuoyegonggao_zuoyefengmian5.jpg','','作业详情3'),(54,'2023-02-10 05:25:46','教师工号4','教师姓名4','作业标题4','upload/zuoyegonggao_zuoyefengmian4.jpg,upload/zuoyegonggao_zuoyefengmian5.jpg,upload/zuoyegonggao_zuoyefengmian6.jpg','','作业详情4'),(55,'2023-02-10 05:25:46','教师工号5','教师姓名5','作业标题5','upload/zuoyegonggao_zuoyefengmian5.jpg,upload/zuoyegonggao_zuoyefengmian6.jpg,upload/zuoyegonggao_zuoyefengmian7.jpg','','作业详情5'),(56,'2023-02-10 05:25:46','教师工号6','教师姓名6','作业标题6','upload/zuoyegonggao_zuoyefengmian6.jpg,upload/zuoyegonggao_zuoyefengmian7.jpg,upload/zuoyegonggao_zuoyefengmian8.jpg','','作业详情6'),(57,'2023-02-10 05:25:46','教师工号7','教师姓名7','作业标题7','upload/zuoyegonggao_zuoyefengmian7.jpg,upload/zuoyegonggao_zuoyefengmian8.jpg,upload/zuoyegonggao_zuoyefengmian9.jpg','','作业详情7'),(58,'2023-02-10 05:25:46','教师工号8','教师姓名8','作业标题8','upload/zuoyegonggao_zuoyefengmian8.jpg,upload/zuoyegonggao_zuoyefengmian9.jpg,upload/zuoyegonggao_zuoyefengmian10.jpg','','作业详情8'),(1676007164684,'2023-02-10 05:32:44','22','22','作业公告','upload/1676007163088.png','upload/1676007154181.docx','<p>111111111111111</p>');
/*!40000 ALTER TABLE `zuoyegonggao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-13 16:28:01
