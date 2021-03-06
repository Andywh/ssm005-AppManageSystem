-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ssm
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryCode` varchar(50) DEFAULT NULL,
  `categoryName` varchar(50) DEFAULT NULL,
  `parentId` bigint(30) DEFAULT NULL,
  `createdBy` bigint(30) DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `modifyBy` bigint(30) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (1,'ALL_APP','全部应用',NULL,1,'2019-06-04 08:04:13',NULL,NULL),(2,'ALL_GAME','全部游戏',NULL,1,'2019-06-04 08:04:10',NULL,NULL),(3,'APP_001','系统工具',1,1,'2019-06-04 08:04:10',NULL,NULL),(4,'APP_002','桌面插件',1,1,'2019-05-01 08:04:10',NULL,NULL),(5,'APP_003','主题美化',1,1,'2019-05-02 08:04:10',NULL,NULL),(6,'APP_004','社交聊天',1,1,'2019-05-03 08:04:10',NULL,NULL),(7,'APP_005','资讯阅读',1,1,'2019-05-04 08:04:10',NULL,NULL),(8,'APP_006','通讯网络',1,1,'2019-05-05 08:04:10',NULL,NULL),(9,'APP_007','影音娱乐',1,1,'2019-05-06 08:04:10',NULL,NULL),(10,'APP_008','摄影图片',1,1,'2019-05-07 08:04:10',NULL,NULL),(11,'APP_009','生活服务',1,1,'2019-05-08 08:04:10',NULL,NULL),(12,'APP_010','实用工具',1,1,'2019-05-09 08:04:10',NULL,NULL),(13,'APP_011','文档商务',1,1,'2019-05-10 08:04:10',NULL,NULL),(14,'APP_012','金融财经',1,1,'2019-05-11 08:04:10',NULL,NULL),(15,'APP_013','运动健康',1,1,'2019-05-12 08:04:10',NULL,NULL),(16,'APP_014','学习教育',1,1,'2019-05-13 08:04:10',NULL,NULL),(17,'APP_015','旅行交通',1,1,'2019-05-14 08:04:10',NULL,NULL),(18,'APP_016','购物',1,1,'2019-05-15 08:04:10',NULL,NULL),(19,'GAME_001','休闲游戏',2,2,'2019-05-16 08:04:10',NULL,NULL),(20,'GAME_002','益智游戏',2,2,'2019-05-17 08:04:10',NULL,NULL),(21,'GAME_003','棋牌游戏',2,2,'2019-05-18 08:04:10',NULL,NULL),(22,'GAME_004','体育赛车',2,2,'2019-05-19 08:04:10',NULL,NULL),(23,'GAME_005','动作射击',2,2,'2019-05-20 08:04:10',NULL,NULL),(24,'GAME_006','掌上网游',2,2,'2019-06-05 10:04:06',NULL,NULL),(25,'GAME_007','策略塔防',2,2,'2019-06-05 10:04:27',NULL,NULL),(26,'GAME_008','角色扮演',2,2,'2019-06-05 10:05:59',NULL,NULL),(27,'GAME_009','模拟经营',2,2,'2019-06-05 10:06:02',NULL,NULL),(28,'GAME_010','音乐游戏',2,2,'2019-06-05 10:06:01',NULL,NULL),(29,'GAME_011','输入法',3,2,'2019-06-04 09:10:09',NULL,NULL),(30,'GAME_012','文件管理',3,2,'2019-06-04 09:18:34',NULL,NULL),(31,'GAME_013','备份还原',3,2,'2019-06-05 12:44:08',NULL,NULL),(32,'GAME_014','安全防护',3,2,'2019-06-04 09:18:58',NULL,NULL),(35,'GAME_017','桌面',4,2,'2019-06-05 13:08:44',NULL,NULL),(36,'GAME_018','插件',4,2,'2019-06-05 13:08:46',NULL,NULL),(37,'GAME_019','锁屏',4,2,'2019-06-04 09:19:52',NULL,NULL),(38,'GAME_020','跳舞',19,2,'2019-06-04 09:21:59',NULL,NULL),(39,'GAME_021','涂鸦',19,2,'2019-06-04 09:21:59',NULL,NULL),(40,'GAME_022','虐心',19,2,'2019-06-05 13:10:27',NULL,NULL),(41,'GAME_023','冒险',19,2,'2019-06-04 09:20:42',NULL,NULL),(42,'GAME_025','消除',20,2,'2019-06-04 09:22:26',NULL,NULL),(43,'GAME_025','解谜',20,2,'2019-06-04 09:22:26',NULL,NULL),(44,'GAME_026','物理',20,2,'2019-05-04 09:20:59',NULL,NULL),(45,'GAME_027','麻将',21,2,'2019-06-05 13:24:54',NULL,NULL),(46,'GAME_028','扑克',21,2,'2019-06-05 13:24:56',NULL,NULL),(47,'GAME_029','赛车',22,2,'2019-06-05 13:24:56',NULL,NULL),(48,'GAME_030','足球',22,2,'2019-06-05 13:24:56',NULL,NULL),(49,'GAME_031','篮球',22,2,'2019-06-05 13:24:56',NULL,NULL),(50,'GAME_032','摩托',22,2,'2019-06-05 13:24:56',NULL,NULL);
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 20:39:10
