-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: kbms
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `node_uid` int(11) DEFAULT NULL,
  `node_name` varchar(45) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `node_type` varchar(10) DEFAULT NULL,
  `node_pre` int(11) DEFAULT '-1',
  `node_next` int(11) DEFAULT '-1',
  `node_info` longtext,
  `time_modify` bigint(64) DEFAULT '0',
  `time_build` bigint(64) DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (418,51,'根目录',-1,'root',-1,-1,NULL,1492064167357,1492064167357),(419,51,'我最喜欢的',-1,'folder',418,-1,NULL,1492064167365,1492064167365),(420,51,'算法',-1,'folder',418,-1,NULL,1492064295102,1492064295102),(421,51,'实习报告',-1,'folder',418,-1,NULL,1492064317590,1492064317590),(422,51,'2013级毕业实习报告__李振.docx',343,'docx',421,-1,NULL,1492064333619,1492064333619),(423,51,'2013级毕业实习报告__宫晨.docx',342,'docx',421,-1,NULL,1492064333620,1492064333620),(424,51,'2013级毕业实习报告__刘畅.docx',341,'docx',421,-1,NULL,1492064333624,1492064333624),(425,51,'2013级毕业实习报告__韩书楷.docx',344,'docx',421,-1,NULL,1492064333625,1492064333625),(426,51,'2013级毕业实习报告模版.docx',345,'docx',421,-1,NULL,1492064393886,1492064393886),(427,51,'Hadoop学习路线',-1,'folder',418,-1,NULL,1492064528358,1492064528358),(428,51,'Hadoop_dev_04.pdf',346,'pdf',427,-1,NULL,1492064554043,1492064554043),(429,51,'Hadoop_dev_02.pdf',347,'pdf',427,-1,NULL,1492064554249,1492064554249),(430,51,'Hadoop_dev_01.pdf',348,'pdf',427,-1,NULL,1492064554249,1492064554249),(431,51,'Hadoop_dev_03.pdf',349,'pdf',427,-1,NULL,1492064554249,1492064554249),(432,51,'wlw.doc',350,'doc',420,-1,NULL,1492065055722,1492065055722),(433,51,'wlw.pdf',351,'pdf',420,-1,NULL,1492065056262,1492065056262),(434,51,'apache_solr_ref_guide_5.4.pdf',352,'pdf',419,-1,NULL,1492065791412,1492065791412),(435,51,'solr',-1,'folder',418,-1,NULL,1492066050336,1492066050335),(436,51,'Solr_cloud_5.0_部署.docx',353,'docx',435,-1,NULL,1492066056879,1492066056879),(437,51,'solr相关连接.txt',354,'txt',435,-1,NULL,1492066068517,1492066068517);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-13 14:55:37
