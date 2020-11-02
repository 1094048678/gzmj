-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: gzmj
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gzmj_details`
--
DROP DATABASE  IF EXISTS `gzmj`;

CREATE DATABASE IF  NOT EXISTS  `gzmj` DEFAULT  CHARACTER SET 'utf8';

USE `gzmj`;



DROP TABLE IF EXISTS `gzmj_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gzmj_details` (
  `id` int(11) NOT NULL,
  `lj` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `detail` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `lj2` varchar(30) NOT NULL,
  `detail2` varchar(300) NOT NULL,
  `jd` varchar(20) NOT NULL,
  `wd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gzmj_details`
--

LOCK TABLES `gzmj_details` WRITE;
/*!40000 ALTER TABLE `gzmj_details` DISABLE KEYS */;
INSERT INTO `gzmj_details` VALUES (1,'1.png','巴适成都','一园、两堂、三桥',159,'江苏省苏州市同里古镇','11.png','古城民居的特色是\"三坊一照壁\"、\"四合五天井、走马转角楼\"。它们多以院子为中心，内向的庭院 组合，厦子（外廊）是纳西民居的重要组成部分，融北京的四合院和当地土木结构特色于一体：正房堂屋，两旁侧室，走廊宽敞，天井宏亮，门窗多精雕细刻花鸟图案，门楼修得富丽堂皇','120.730109','31.160914'),(2,'2.png','文艺厦门','无数能工巧匠的智慧和心血',180,'山东省济南市','12.png','条条街道见流水，户户门前有清溪。清澈的溪流为居民用水提供了极大的方便，同时，也增加了空气的湿度，调节了古城的气候，还有利于防止古城的火灾。建于明清时代的300多座大小石拱桥，石板桥跨于清溪之上，显得古朴而恬静','117.030621','36.675686'),(3,'3.png','古都西安','眼观六路耳听八方，居高临下安全第一',250,'甘肃省丹巴县','13.png','丹巴民居属于典型的的四川藏区的建筑。丹巴民居与碉楼在建筑风格上一脉相承。墙体也都是用石头砌成，楼高三至四层，一般底层圈养牲畜，二层为客堂、厨房和锅庄，三层为居室，顶层设经堂。二层住人和三层晒粮食的平台是通过独木梯（一根大木头刻了脚踏的凹槽）来行走的，独木梯用石块垫高，防止雨季有水积压在地腐蚀木梯。','101.872892','30.925302'),(4,'4.png','摩登上海','藤骨泥墙冲不倒，茅草屋顶料好找',220,'山西省恒曲县','14.png','窑洞是黄土高原的产物，是独特的民居形式，具有浓厚的民俗风情和乡土气息。西峰黄土同整个黄土高原一样，是在地质年代的第四纪早更新世晚期形成的风成土状堆积物，距今已120万年。黄土层厚度一般为50至100米，最厚处可达200米。因黄土层深厚，土质密实，极适宜于挖洞建窑，数百年至千年不易倒塌。千百年来，窑洞一直是西峰人民的重要居所','101.872892','30.925302'),(5,'5.png','埔里日记民宿','房间配有庭院、空调、平板电视以及带淋浴设施和吹风机的私人浴室',88,'福建省厦门市集美区英村何山埔里','15.png','清澈的溪流为居民用水提供了极大的方便，同时，也增加了空气的湿度，调节了古城的气候，还有利于防止古城的火灾。建于明清时代的300多座大小石拱桥，石板桥跨于清溪之上，显得古朴而恬静','118.108209','24.632436'),(6,'6.png','清境缤纷农场','常年气候宜人,四季如春,绿草如因,清新的空氣加上辽阔的视野',199,'中国台湾仁爱乡','16.png','清澈的溪流为居民用水提供了极大的方便，同时，也增加了空气的湿度，调节了古城的气候，还有利于防止古城的火灾。建于明清时代的300多座大小石拱桥，石板桥跨于清溪之上，显得古朴而恬静','118.108209','24.632436');
/*!40000 ALTER TABLE `gzmj_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gzmj_list`
--

DROP TABLE IF EXISTS `gzmj_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gzmj_list` (
  `id` int(11) NOT NULL,
  `lj` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `details` varchar(50) NOT NULL,
  `sale` int(11) NOT NULL,
  `good` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `lid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gzmj_list`
--

LOCK TABLES `gzmj_list` WRITE;
/*!40000 ALTER TABLE `gzmj_list` DISABLE KEYS */;
INSERT INTO `gzmj_list` VALUES (1,'1.png','巴适成都','来这儿体验慢生活，暂别奔忙',1500,95,159,1),(2,'2.png','文艺厦门','碧海白鹭，老街古厝，温柔好时光。',999,98,180,2),(3,'3.png','古都西安','闲庭信步古城墙，一夜看尽长安花',780,90,250,3),(4,'4.png','摩登上海','体味老弄堂与摩天楼的双面风情',1286,88,220,4),(5,'5.png','埔里日记民宿','房间配有庭院、空调、平板电视以及带淋浴设施和吹风机的私人浴室',1846,91,88,5),(6,'6.png','清境缤纷农场','常年气候宜人,四季如春,绿草如因,清新的空氣加上辽阔的视野',539,99,199,6);
/*!40000 ALTER TABLE `gzmj_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gzmj_list2`
--

DROP TABLE IF EXISTS `gzmj_list2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gzmj_list2` (
  `id` int(11) NOT NULL,
  `lj` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `details` varchar(50) NOT NULL,
  `sale` int(11) NOT NULL,
  `good` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gzmj_list2`
--

LOCK TABLES `gzmj_list2` WRITE;
/*!40000 ALTER TABLE `gzmj_list2` DISABLE KEYS */;
INSERT INTO `gzmj_list2` VALUES (7,'7.png','杭州西溪湿地','定性风貌和艺术文化特色',1063,91,119,218),(8,'8.png','济南亭街','无数能工巧匠的智慧和心血',378,91,92,199),(9,'9.png','丹巴民居','眼观六路耳听八方，居高临下安全第一',500,98,326,500),(10,'10.png','窑洞式住宅','藤骨泥墙冲不倒，茅草屋顶料好找',736,91,180,299);
/*!40000 ALTER TABLE `gzmj_list2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gzmj_map`
--

DROP TABLE IF EXISTS `gzmj_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gzmj_map` (
  `id` int(11) NOT NULL,
  `map` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gzmj_map`
--

LOCK TABLES `gzmj_map` WRITE;
/*!40000 ALTER TABLE `gzmj_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `gzmj_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gzmj_users`
--

DROP TABLE IF EXISTS `gzmj_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gzmj_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `touxiang` varchar(30) NOT NULL DEFAULT '0.png',
  `nicheng` varchar(30) NOT NULL DEFAULT 'aaa',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gzmj_users`
--

LOCK TABLES `gzmj_users` WRITE;
/*!40000 ALTER TABLE `gzmj_users` DISABLE KEYS */;
INSERT INTO `gzmj_users` VALUES (1,'xuchuanguo','guoxi666','1.png','aaa'),(2,'wuyao666','wuyao666','2.png','ccc'),(3,'fengshao','fengshao888','3.png','sss'),(4,'12345678','123456789','0.png','aaa'),(5,'1234567890','e807f1fcf82d132f9bb018ca6738a19f','0.png','aaa');
/*!40000 ALTER TABLE `gzmj_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-24 11:58:55
