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
-- Table structure for table `app_info`
--

DROP TABLE IF EXISTS `app_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwareName` varchar(50) DEFAULT NULL,
  `APKName` varchar(50) DEFAULT NULL,
  `supportROM` varchar(50) DEFAULT NULL,
  `interfaceLanguage` varchar(50) DEFAULT NULL,
  `softwareSize` decimal(20,2) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `devId` bigint(30) DEFAULT NULL,
  `appInfo` varchar(5000) DEFAULT NULL,
  `status` bigint(30) DEFAULT NULL,
  `onSaleDate` datetime DEFAULT NULL,
  `offSaleDate` datetime DEFAULT NULL,
  `flatformId` bigint(30) DEFAULT NULL,
  `categoryLevel3` bigint(30) DEFAULT NULL,
  `downloads` bigint(30) DEFAULT NULL,
  `createdBy` bigint(30) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `modifyBy` bigint(30) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `categoryLevel1` bigint(30) DEFAULT NULL,
  `categoryLevel2` bigint(30) DEFAULT NULL,
  `logoPicPath` varchar(500) DEFAULT NULL,
  `logoLocPath` varchar(500) DEFAULT NULL,
  `versionId` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_info`
--

LOCK TABLES `app_info` WRITE;
/*!40000 ALTER TABLE `app_info` DISABLE KEYS */;
INSERT INTO `app_info` VALUES (1,'劲乐团','com.momocorp.o2jamu','2.3及更高版本','英文软件',56.00,NULL,1,'一款音乐节拍游戏',1,NULL,NULL,3,38,500,1,NULL,1,NULL,2,19,NULL,NULL,NULL),(2,'LBE安全大师','com.lbe.security','2.3及更高版本','简体中文',9.00,NULL,1,'一款安全软件',1,NULL,NULL,1,32,600,1,NULL,1,NULL,1,3,NULL,NULL,NULL),(3,'应用锁','com.sp.protector.free','2.3及更高版本','简体中文',3.00,NULL,1,'一款应用锁定程序',1,NULL,NULL,1,32,700,1,NULL,1,NULL,1,3,NULL,NULL,NULL),(4,'谷歌拼音输入法','com.google.android.inputmethod.pinyin','4.2及更高版本','简体中文',16.00,NULL,1,'Google 的拼音输入法',1,NULL,NULL,3,29,1500,1,NULL,1,NULL,1,3,NULL,NULL,1),(5,'RE管理器','com.speedsoftware.rootexplorer','2.3及更高版本','简体中文',3.00,NULL,1,'RootExplorer 需要 root 权限',1,NULL,NULL,1,30,2500,1,NULL,1,NULL,1,3,NULL,NULL,1),(6,'关屏锁定','com.katecca.screenofflockdonate','2.3及更高版本','简体中文',1.00,NULL,1,'关屏锁定软件',1,NULL,NULL,1,37,3500,1,NULL,1,NULL,1,4,NULL,NULL,NULL),(7,'重力锁屏','com.plexnor.gravityscreenoffpro','2.3及更高版本','英文软件',1.00,NULL,1,'重力锁屏软件',1,NULL,NULL,1,37,40,1,NULL,1,NULL,1,4,NULL,NULL,NULL),(8,'机械迷城','air.net.machinarium.Machinarium.GP','2.3及更高版本','英文软件',11.00,NULL,1,'一款解密冒险游戏',3,NULL,NULL,1,43,6500,1,NULL,1,NULL,2,20,NULL,NULL,1),(9,'饥荒','com.kleientertainment.doNotStarvePocket','4.0.3及更高版本','英文软件',4.00,NULL,1,'沙盒游戏',5,NULL,NULL,2,41,7500,1,NULL,1,NULL,2,19,NULL,NULL,2),(10,'机械世界','com.bithack.apparatus','1.6及更高版本','英文软件',11.00,NULL,1,'机械的沙盒游戏',3,NULL,NULL,1,44,8500,1,NULL,1,NULL,2,20,NULL,NULL,2),(11,'沙盘玩具','com.doodleapps.powdertoy','2.2及更高版本','英文软件',1.00,NULL,1,'模拟类游戏',4,NULL,NULL,3,44,9500,1,NULL,1,NULL,2,20,NULL,NULL,3);
/*!40000 ALTER TABLE `app_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 20:38:38
