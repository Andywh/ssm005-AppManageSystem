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
-- Table structure for table `app_version`
--

DROP TABLE IF EXISTS `app_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` bigint(30) DEFAULT NULL,
  `versionNo` varchar(50) DEFAULT NULL,
  `versionInfo` varchar(2000) DEFAULT NULL,
  `publishStatus` bigint(30) DEFAULT NULL,
  `downloadLink` varchar(500) DEFAULT NULL,
  `versionSize` decimal(20,2) DEFAULT NULL,
  `createBy` bigint(30) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `modifyBy` bigint(30) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `apkLocPath` varchar(500) DEFAULT NULL,
  `apkFileName` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_version`
--

LOCK TABLES `app_version` WRITE;
/*!40000 ALTER TABLE `app_version` DISABLE KEYS */;
INSERT INTO `app_version` VALUES (1,NULL,'v1.1.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'v1.1.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'v1.1.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `app_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 20:39:25
