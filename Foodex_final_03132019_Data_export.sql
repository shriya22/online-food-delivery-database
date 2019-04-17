-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: FOODEX
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Address` (
  `address_id` varchar(255) NOT NULL,
  `cust_id (FK)` int(11) NOT NULL,
  `address_label` char(20) DEFAULT NULL,
  `address_line1` varchar(255) NOT NULL,
  `city` char(20) NOT NULL,
  `state` char(20) NOT NULL,
  `pincode` int(10) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `has` (`cust_id (FK)`),
  CONSTRAINT `has` FOREIGN KEY (`cust_id (FK)`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('A1',1,'Home','900, River view','santa clara','CA',95123),('A10',10,NULL,'37 church drive','Atherton','CA',94225),('A11',11,NULL,'78 Domicillio','Mountain View','CA',95418),('A12',12,NULL,'89 Park View','Woodhurst','CA',95500),('A13',13,NULL,'1 Saratoga Avenue','Los Gatos','CA',94169),('A14',14,NULL,'3800 Joy drive','Los Altos','CA',93745),('A15',15,NULL,'100 Domicillio','San jose','CA',94758),('A16',1,'Work','500 moorkpark way','Palo Alto','CA',93924),('A17',2,NULL,'1456 Shasta drive','san jose','CA',95041),('A18',3,NULL,'345 River view apt','Menlo park','CA',93133),('A19',4,'Friend','6789 Naglee ave','Burlingame','CA',94784),('A2',2,NULL,'35 church street','san jose','CA',94014),('A20',5,NULL,'5678 bryant street','San Carlos','CA',95732),('A21',6,NULL,'678 Montgomery','San jose','CA',93816),('A22',7,NULL,'89 Mission Street Apt-7','Newark','CA',93102),('A23',16,'Work','500 moorkpark way','Palo Alto','CA',93924),('A24',17,'Home','900, River view','santa clara','CA',95123),('A25',18,NULL,'35 church street','san jose','CA',94014),('A26',19,NULL,'1456 Shasta drive','san jose','CA',95041),('A27',20,'Home','45 Benton Street','Mountain view','CA',93456),('A28',21,NULL,'345 River view apt','Menlo park','CA',93133),('A29',22,NULL,'78 Court view','Milpitas','CA',95009),('A3',3,'Home','45 Benton Street','Mountain view','CA',93456),('A30',23,'Friend','6789 Naglee ave','Burlingame','CA',93924),('A31',24,NULL,'1923 Bel Air Ave','Milpitas','CA',95123),('A32',25,NULL,'5678 bryant street','San Carlos','CA',94014),('A33',26,NULL,'3700 Joy lane','santa clara','CA',95041),('A34',27,NULL,'678 Montgomery','San jose','CA',93456),('A35',28,'Home','35192 Kilmorgin','Fremont','CA',93133),('A36',29,NULL,'89 Mission Street Apt-7','Newark','CA',95009),('A37',30,NULL,'500 keily court','Newark','CA',94784),('A38',31,'School','3280 Woohdhurst lane','santa clara','CA',95256),('A39',32,NULL,'37 church drive','Atherton','CA',93816),('A4',4,NULL,'78 Court view','Milpitas','CA',95009),('A40',33,NULL,'78 Domicillio','Mountain View','CA',94942),('A41',34,NULL,'89 Park View','Woodhurst','CA',93102),('A42',35,NULL,'1 Saratoga Avenue','Los Gatos','CA',94755),('A43',36,NULL,'3800 Joy drive','Los Altos','CA',95586),('A44',37,NULL,'100 Domicillio','San jose','CA',94225),('A45',38,'Work','500 moorkpark way','Palo Alto','CA',95418),('A46',39,'Home','900, River view','santa clara','CA',95500),('A47',40,NULL,'35 church street','san jose','CA',93924),('A48',41,NULL,'1456 Shasta drive','san jose','CA',95123),('A49',42,'Home','45 Benton Street','Mountain view','CA',94014),('A5',5,NULL,'1923 Bel Air Ave','Milpitas','CA',95256),('A50',43,NULL,'345 River view apt','Menlo park','CA',95041),('A51',44,NULL,'78 Court view','Milpitas','CA',93456),('A52',45,'Friend','6789 Naglee ave','Burlingame','CA',93133),('A53',46,NULL,'1923 Bel Air Ave','Milpitas','CA',95009),('A54',47,NULL,'5678 bryant street','San Carlos','CA',94784),('A55',48,NULL,'3700 Joy lane','santa clara','CA',95256),('A56',49,NULL,'678 Montgomery','San jose','CA',93816),('A57',50,'Home','35192 Kilmorgin','Fremont','CA',94942),('A58',51,NULL,'89 Mission Street Apt-7','Newark','CA',93102),('A59',52,NULL,'500 keily court','Newark','CA',94755),('A6',6,NULL,'3700 Joy lane','santa clara','CA',93163),('A60',53,'School','3280 Woohdhurst lane','santa clara','CA',95586),('A61',54,NULL,'37 church drive','Atherton','CA',94225),('A62',55,NULL,'78 Domicillio','Mountain View','CA',95418),('A63',56,NULL,'89 Park View','Woodhurst','CA',95500),('A64',57,NULL,'1 Saratoga Avenue','Los Gatos','CA',93924),('A65',58,NULL,'3800 Joy drive','Los Altos','CA',95123),('A66',59,NULL,'100 Domicillio','San jose','CA',94014),('A67',60,NULL,'3800 Joy drive','San jose','CA',95041),('A7',7,'Home','35192 Kilmorgin','Fremont','CA',94942),('A8',8,NULL,'500 keily court','Newark','CA',94755),('A9',9,'School','3280 Woohdhurst lane','santa clara','CA',95586);
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cust_activity`
--

DROP TABLE IF EXISTS `cust_activity`;
/*!50001 DROP VIEW IF EXISTS `cust_activity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `cust_activity` AS SELECT 
 1 AS `cust_id`,
 1 AS `Latest_order_time`,
 1 AS `reg_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` char(20) NOT NULL,
  `cust_phone` decimal(22,0) NOT NULL,
  `cust_birthdate` date DEFAULT NULL,
  `cust_email` varchar(255) DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `cust_type` tinyint(1) DEFAULT NULL,
  `cust_user` tinyint(1) NOT NULL,
  `cust_anniversary` date DEFAULT NULL,
  `cust_overall_rating` float(10,2) DEFAULT NULL,
  `fdp_id (FK)` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'John',4081234561,'1989-10-08','abc1@gmail.com','2018-10-22 00:00:00',1,1,'2015-11-22',5.00,'fdp1'),(2,'Rachel',4089033322,'1992-12-12','abc2@gmail.com','2018-09-23 00:00:00',1,1,NULL,5.00,NULL),(3,'Bren',4096832083,'1996-02-12','abc3@gmail.com','2018-10-22 00:00:00',1,1,NULL,5.00,NULL),(4,'Brett',4104630844,'1999-04-12','abc4@gmail.com','2019-01-11 00:00:00',1,1,NULL,5.00,NULL),(5,'Dan',4112429605,'2002-06-12','abc5@gmail.com','2019-01-17 00:00:00',1,1,NULL,5.00,'fdp2'),(6,'Natasha',4120228366,'1993-03-02','abc6@gmail.com','2019-01-23 00:00:00',1,1,NULL,5.00,NULL),(7,'Brian',4128027127,'1980-04-25','abc7@gmail.com','2019-01-29 00:00:00',1,1,NULL,5.00,NULL),(8,'Ricardo',4135825888,'1994-05-22','abc8@gmail.com','2019-02-04 00:00:00',1,1,NULL,4.00,NULL),(9,'Mike',4143624649,'1987-06-06','abc9@gmail.com','2019-02-10 00:00:00',1,1,'2013-04-18',5.00,NULL),(10,'Mark',4151423410,'1994-04-17','abc10@gmail.com','2018-12-08 00:00:00',0,1,NULL,5.00,NULL),(11,'Ricardo',4159222171,'1996-04-08','abc11@gmail.com','2018-12-09 00:00:00',1,0,NULL,NULL,NULL),(12,'Jenny',4167020932,'1980-04-09','abc12@gmail.com','2018-12-10 00:00:00',1,1,NULL,5.00,NULL),(13,'Margie',4174819693,'1991-05-10','abc13@gmail.com','2018-12-11 00:00:00',1,1,'2016-06-20',5.00,'fdp3'),(14,'Dave',4182618454,'1995-09-11','abc14@gmail.com','2018-12-12 00:00:00',1,1,NULL,5.00,NULL),(15,'Mira',4190417215,'2002-07-12','abc15@gmail.com','2018-12-13 00:00:00',0,0,NULL,NULL,NULL),(16,'Liam',5081235561,'1989-10-08','abc16@gmail.com','2018-10-22 00:00:00',1,0,'2015-11-22',1.00,''),(17,'Noah',5089033322,'1992-12-12','abc17@gmail.com','2018-09-23 00:00:00',1,0,NULL,2.00,''),(18,'William',5096832083,'1996-02-12','abc18@gmail.com','2018-10-22 00:00:00',1,0,NULL,3.00,'fdp4'),(19,'James',5105630855,'1999-04-12','abc19@gmail.com','2019-01-11 00:00:00',1,0,NULL,4.00,''),(20,'Logan',5112529605,'2002-06-12','abc20@gmail.com','2019-01-17 00:00:00',1,0,NULL,5.00,''),(21,'Benjamin',5120228366,'1993-03-02','abc21@gmail.com','2019-01-23 00:00:00',0,0,NULL,1.00,''),(22,'Mason',5128027127,'1980-04-25','abc22@gmail.com','2019-01-29 00:00:00',1,0,NULL,2.00,'fdp5'),(23,'Elijah',5135825888,'1994-05-22','abc23@gmail.com','2019-02-04 00:00:00',1,0,NULL,3.00,NULL),(24,'Oliver',5153625659,'1987-06-06','abc24@gmail.com','2019-02-10 00:00:00',1,0,'2013-04-18',4.00,NULL),(25,'Jacob',5151523510,'1994-04-17','abc25@gmail.com','2018-12-08 00:00:00',1,0,NULL,5.00,NULL),(26,'Lucas',5159222171,'1996-04-08','abc26@gmail.com','2018-12-09 00:00:00',1,0,NULL,1.00,NULL),(27,'Michael',5167020932,'1980-04-09','abc27@gmail.com','2018-12-10 00:00:00',1,0,NULL,2.00,'fdp6'),(28,'Alexander',5175819693,'1991-05-10','abc28@gmail.com','2018-12-11 00:00:00',1,0,'2016-06-20',3.00,NULL),(29,'Ethan',5182618555,'1995-09-11','abc29@gmail.com','2018-12-12 00:00:00',0,0,NULL,4.00,NULL),(30,'Daniel',5190517215,'2002-07-12','abc30@gmail.com','2018-12-13 00:00:00',1,0,NULL,5.00,NULL),(31,'Ella',6081236661,'1989-10-08','abc31@gmail.com','2018-10-22 00:00:00',1,0,NULL,1.00,NULL),(32,'Aiden',6089033322,'1992-12-12','abc32@gmail.com','2018-09-23 00:00:00',1,1,'2015-11-22',2.00,'fdp7'),(33,'Henry',6096832083,'1996-02-12','abc33@gmail.com','2018-10-22 00:00:00',1,1,NULL,3.00,NULL),(34,'Joseph',6106630866,'1999-04-12','abc34@gmail.com','2019-01-11 00:00:00',1,1,NULL,4.00,NULL),(35,'Jackson',6112629606,'2002-06-12','abc35@gmail.com','2019-01-17 00:00:00',0,1,NULL,5.00,NULL),(36,'Samuel',6120228366,'1993-03-02','abc36@gmail.com','2019-01-23 00:00:00',1,1,NULL,1.00,NULL),(37,'Sebastian',6128027127,'1980-04-25','abc37@gmail.com','2019-01-29 00:00:00',1,1,NULL,2.00,'fdp8'),(38,'David',6136826888,'1994-05-22','abc38@gmail.com','2018-02-04 00:00:00',1,1,NULL,3.00,NULL),(39,'Carter',6163626669,'1987-06-06','abc39@gmail.com','2019-02-10 00:00:00',1,1,NULL,4.00,NULL),(40,'Wyatt',6161623610,'1994-04-17','abc40@gmail.com','2018-12-08 00:00:00',1,1,'2013-04-18',5.00,NULL),(41,'Jayden',6169222171,'1996-04-08','abc41@gmail.com','2018-12-09 00:00:00',1,1,NULL,1.00,NULL),(42,'John',6167020932,'1980-04-09','abc42@gmail.com','2018-12-10 00:00:00',1,0,NULL,2.00,'fdp9'),(43,'Owen',6176819693,'1991-05-10','abc43@gmail.com','2018-12-11 00:00:00',1,1,NULL,3.00,NULL),(44,'Dylan',6182618666,'1995-09-11','abc44@gmail.com','2018-12-12 00:00:00',1,1,'2016-06-20',4.00,NULL),(45,'Luke',6190617216,'2002-07-12','abc45@gmail.com','2018-12-13 00:00:00',1,1,NULL,5.00,NULL),(46,'Gabriel',7081237771,'1989-10-08','abc46@gmail.com','2018-10-22 00:00:00',1,1,NULL,1.00,NULL),(47,'Anthony',7089033322,'1992-12-12','abc47@gmail.com','2018-09-23 00:00:00',1,1,NULL,2.00,'fdp10'),(48,'Isaac',7097832083,'1996-02-12','abc48@gmail.com','2018-10-22 00:00:00',1,1,'2015-11-22',3.00,NULL),(49,'Grayson',7107730877,'1999-04-12','abc49@gmail.com','2019-01-11 00:00:00',1,1,NULL,4.00,'fdp11'),(50,'Jack',7112729707,'2002-06-12','abc50@gmail.com','2018-05-17 00:00:00',1,1,NULL,5.00,'fdp12'),(51,'Julian',7120228377,'1993-03-02','abc51@gmail.com','2018-04-23 00:00:00',1,1,NULL,1.00,'fdp13'),(52,'Levi',7128027127,'1980-04-25','abc52@gmail.com','2018-07-29 00:00:00',1,1,NULL,2.00,'fdp14'),(53,'Christopher',7137827888,'1994-05-22','abc53@gmail.com','2018-02-04 00:00:00',1,1,NULL,3.00,'fdp15'),(54,'Joshua',7173727779,'1987-06-06','abc54@gmail.com','2019-02-10 00:00:00',1,1,NULL,4.00,'fdp16'),(55,'Andrew',7171723710,'1994-04-17','abc55@gmail.com','2018-12-08 00:00:00',1,1,NULL,5.00,'fdp17'),(56,'Lincoln',7179222171,'1996-04-08','abc56@gmail.com','2018-12-09 00:00:00',1,0,'2013-04-18',1.00,'fdp18'),(57,'Mateo',7177020932,'1980-04-09','abc57@gmail.com','2018-12-10 00:00:00',1,1,NULL,2.00,'fdp19'),(58,'Ryan',7177819793,'1991-05-10','abc58@gmail.com','2018-12-11 00:00:00',1,1,NULL,3.00,'fdp20'),(59,'Jaxon',7182718777,'1995-09-11','abc59@gmail.com','2018-12-12 00:00:00',1,1,NULL,4.00,'fdp21'),(60,'Nathan',7190717217,'2002-07-12','abc60@gmail.com','2018-12-13 00:00:00',1,1,NULL,5.00,NULL),(99999999,'COD',9999999999,NULL,NULL,'1900-01-01 00:00:00',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;
--
-- WARNING: old server version. The following dump may be incomplete.
--
DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `update_cust_trig` AFTER UPDATE ON `Customer` FOR EACH ROW begin
insert into Customer_updated values (old.cust_id,old.cust_name,old.cust_phone,old.cust_birthdate,old.cust_email,
old.registration_date,old.cust_type,old.cust_user,old.cust_anniversary,old.cust_overall_rating,old.`fdp_id (FK)`);
end */;;
DELIMITER ;

--
-- Table structure for table `Customer_updated`
--

DROP TABLE IF EXISTS `Customer_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customer_updated` (
  `Inactive_cust_id` int(11) NOT NULL,
  `inactive_cust_name` char(20) DEFAULT NULL,
  `inactive_cust_phone` decimal(22,0) DEFAULT NULL,
  `inactive_cust_birthdate` date DEFAULT NULL,
  `inactive_cust_email` varchar(255) DEFAULT NULL,
  `inactive_registration_date` datetime DEFAULT NULL,
  `inactive_cust_type` tinyint(1) DEFAULT NULL,
  `inactive_cust_user` tinyint(1) DEFAULT NULL,
  `inactive_cust_anniversary` date DEFAULT NULL,
  `inactive_cust_overall_rating` float(10,2) DEFAULT NULL,
  `inactive_fdp_id (FK)` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_updated`
--

LOCK TABLES `Customer_updated` WRITE;
/*!40000 ALTER TABLE `Customer_updated` DISABLE KEYS */;
INSERT INTO `Customer_updated` VALUES (2,'Doe',4089033322,'1992-12-12','abc2@gmail.com','2018-09-23 00:00:00',1,1,NULL,5.00,NULL);
/*!40000 ALTER TABLE `Customer_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliv_timeline`
--

DROP TABLE IF EXISTS `deliv_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deliv_timeline` (
  `delivery_exec_id(FK)` varchar(255) NOT NULL DEFAULT '',
  `timedif` time(4) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `Description` varchar(20) NOT NULL DEFAULT '',
  `rate` float(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliv_timeline`
--

LOCK TABLES `deliv_timeline` WRITE;
/*!40000 ALTER TABLE `deliv_timeline` DISABLE KEYS */;
INSERT INTO `deliv_timeline` VALUES ('D1','-00:08:36.0000',5,'performance',0.00),('D1','00:45:00.0000',2,'restaurant prep time',NULL),('D1','00:35:48.0000',4,'restaurant prep time',NULL),('D1','00:21:30.0000',3,'restaurant prep time',NULL),('D1','-00:11:24.0000',4,'performance',0.00),('D1','00:27:12.0000',5,'restaurant prep time',NULL),('D1','00:24:00.0000',5,'actual deliv time',NULL),('D1','00:21:12.0000',4,'actual deliv time',NULL),('D1','00:21:00.0000',2,'actual deliv time',NULL),('D1','00:22:00.0000',3,'actual deliv time',NULL),('D1','-00:21:00.0000',2,'performance',0.00),('D1','-00:05:30.0000',3,'performance',0.00),('D10','00:26:00.0000',5,'restaurant prep time',NULL),('D10','00:07:00.0000',5,'performance',1.00),('D10','00:17:00.0000',3,'actual deliv time',NULL),('D10','00:26:00.0000',3,'restaurant prep time',NULL),('D10','00:17:00.0000',5,'actual deliv time',NULL),('D10','00:07:00.0000',3,'performance',1.00),('D14','00:24:00.0000',4,'restaurant prep time',NULL),('D14','00:26:00.0000',4,'actual deliv time',NULL),('D14','-00:11:00.0000',4,'performance',0.00),('D15','-00:22:00.0000',3,'performance',0.00),('D15','00:28:00.0000',3,'restaurant prep time',NULL),('D15','00:25:00.0000',5,'restaurant prep time',NULL),('D15','00:25:00.0000',5,'actual deliv time',NULL),('D15','00:02:00.0000',5,'performance',1.00),('D15','00:28:00.0000',3,'actual deliv time',NULL),('D16','00:21:30.0000',2,'actual deliv time',NULL),('D16','-00:14:30.0000',2,'performance',0.00),('D16','00:31:30.0000',2,'restaurant prep time',NULL),('D16','00:00:00.0000',4,'performance',0.00),('D16','00:49:00.0000',4,'restaurant prep time',NULL),('D16','00:20:00.0000',4,'actual deliv time',NULL),('D17','00:20:00.0000',4,'actual deliv time',NULL),('D17','-00:10:00.0000',4,'performance',0.00),('D17','-11:25:00.0000',4,'restaurant prep time',NULL),('D18','00:20:00.0000',4,'actual deliv time',NULL),('D18','-00:08:00.0000',4,'performance',0.00),('D18','00:43:00.0000',4,'restaurant prep time',NULL),('D19','-00:10:00.0000',3,'performance',0.00),('D19','00:27:00.0000',5,'restaurant prep time',NULL),('D19','00:25:00.0000',3,'restaurant prep time',NULL),('D19','00:00:30.0000',5,'performance',1.00),('D19','00:25:00.0000',3,'actual deliv time',NULL),('D19','00:20:30.0000',5,'actual deliv time',NULL),('D2','00:18:00.0000',4,'actual deliv time',NULL),('D2','00:20:30.0000',3,'actual deliv time',NULL),('D2','-00:08:30.0000',3,'performance',0.00),('D2','00:33:20.0000',4,'restaurant prep time',NULL),('D2','-00:02:20.0000',4,'performance',0.00),('D2','00:33:00.0000',3,'restaurant prep time',NULL),('D20','00:22:00.0000',4,'actual deliv time',NULL),('D20','00:00:00.0000',4,'performance',0.00),('D20','00:00:00.0000',5,'performance',0.00),('D20','00:00:00.0000',5,'restaurant prep time',NULL),('D20','00:40:00.0000',4,'restaurant prep time',NULL),('D20','00:00:00.0000',5,'actual deliv time',NULL),('D21','00:38:00.0000',5,'restaurant prep time',NULL),('D21','00:23:00.0000',4,'restaurant prep time',NULL),('D21','-00:18:00.0000',5,'performance',0.00),('D21','-00:07:00.0000',4,'performance',0.00),('D21','00:22:00.0000',4,'actual deliv time',NULL),('D21','00:23:00.0000',5,'actual deliv time',NULL),('D22','00:40:00.0000',3,'restaurant prep time',NULL),('D22','-00:12:00.0000',3,'performance',0.00),('D22','00:22:00.0000',3,'actual deliv time',NULL),('D24','00:27:00.0000',4,'restaurant prep time',NULL),('D24','00:28:00.0000',3,'restaurant prep time',NULL),('D24','-00:05:00.0000',4,'performance',0.00),('D24','00:10:00.0000',3,'performance',1.00),('D24','00:17:00.0000',4,'actual deliv time',NULL),('D24','00:15:00.0000',3,'actual deliv time',NULL),('D25','-00:19:30.0000',5,'performance',0.00),('D25','00:19:30.0000',5,'actual deliv time',NULL),('D25','00:38:30.0000',5,'restaurant prep time',NULL),('D26','00:18:00.0000',4,'actual deliv time',NULL),('D26','00:03:00.0000',4,'performance',1.00),('D26','-05:32:00.0000',4,'restaurant prep time',NULL),('D27','00:30:00.0000',4,'actual deliv time',NULL),('D27','00:35:00.0000',4,'restaurant prep time',NULL),('D27','-00:13:00.0000',4,'performance',0.00),('D28','-11:25:00.0000',3,'restaurant prep time',NULL),('D28','00:16:00.0000',2,'actual deliv time',NULL),('D28','00:31:00.0000',2,'restaurant prep time',NULL),('D28','00:06:00.0000',2,'performance',1.00),('D28','-00:10:00.0000',3,'performance',0.00),('D28','00:20:00.0000',3,'actual deliv time',NULL),('D29',NULL,2,'actual deliv time',NULL),('D29','00:20:00.0000',4,'actual deliv time',NULL),('D29','-00:08:00.0000',4,'performance',0.00),('D29',NULL,2,'performance',0.00),('D29',NULL,2,'restaurant prep time',NULL),('D29','00:43:00.0000',4,'restaurant prep time',NULL),('D3','00:23:00.0000',3,'restaurant prep time',NULL),('D3','00:20:00.0000',3,'actual deliv time',NULL),('D3','00:03:00.0000',3,'performance',1.00),('D30','-11:25:00.0000',5,'restaurant prep time',NULL),('D30','00:30:00.0000',5,'actual deliv time',NULL),('D30','-00:15:00.0000',5,'performance',0.00),('D31','00:41:00.0000',3,'restaurant prep time',NULL),('D31','00:25:00.0000',3,'actual deliv time',NULL),('D31','-00:18:00.0000',3,'performance',0.00),('D32','00:40:00.0000',4,'restaurant prep time',NULL),('D32','-11:35:00.0000',4,'actual deliv time',NULL),('D32','-00:10:00.0000',4,'performance',0.00),('D32','-00:20:00.0000',3,'performance',0.00),('D32','00:31:00.0000',3,'restaurant prep time',NULL),('D32','00:26:00.0000',3,'actual deliv time',NULL),('D33','-00:09:00.0000',4,'performance',0.00),('D33','00:32:00.0000',4,'restaurant prep time',NULL),('D33','00:17:00.0000',4,'actual deliv time',NULL),('D34','-05:26:00.0000',4,'restaurant prep time',NULL),('D34','00:28:00.0000',5,'restaurant prep time',NULL),('D34','00:20:00.0000',3,'actual deliv time',NULL),('D34','00:22:30.0000',4,'actual deliv time',NULL),('D34','00:28:00.0000',5,'actual deliv time',NULL),('D34','-00:13:00.0000',4,'performance',0.00),('D34','-00:15:00.0000',3,'performance',0.00),('D34','-00:22:00.0000',5,'performance',0.00),('D34','00:40:00.0000',3,'restaurant prep time',NULL),('D35','00:16:00.0000',3,'actual deliv time',NULL),('D35','00:26:00.0000',2,'restaurant prep time',NULL),('D35','00:17:00.0000',2,'actual deliv time',NULL),('D35','00:16:00.0000',3,'performance',1.00),('D35','00:07:00.0000',2,'performance',1.00),('D35','00:21:00.0000',3,'restaurant prep time',NULL),('D36','00:11:00.0000',5,'performance',1.00),('D36','00:17:00.0000',5,'actual deliv time',NULL),('D36','00:22:00.0000',5,'restaurant prep time',NULL),('D37','00:22:00.0000',5,'restaurant prep time',NULL),('D37','00:11:00.0000',5,'performance',1.00),('D37','00:17:00.0000',5,'actual deliv time',NULL),('D38','-00:07:30.0000',3,'performance',0.00),('D38','-11:25:00.0000',4,'restaurant prep time',NULL),('D38','00:21:00.0000',5,'restaurant prep time',NULL),('D38','00:21:00.0000',3,'actual deliv time',NULL),('D38','00:16:00.0000',5,'actual deliv time',NULL),('D38','00:20:00.0000',4,'actual deliv time',NULL),('D38','00:16:00.0000',5,'performance',1.00),('D38','-00:10:00.0000',4,'performance',0.00),('D38','00:33:00.0000',3,'restaurant prep time',NULL),('D39','00:40:00.0000',4,'restaurant prep time',NULL),('D39','-00:12:00.0000',4,'performance',0.00),('D39','00:22:00.0000',4,'actual deliv time',NULL),('D4','-00:00:40.0000',5,'performance',0.00),('D4','00:12:20.0000',5,'actual deliv time',NULL),('D4','00:22:40.0000',5,'restaurant prep time',NULL),('D40','00:33:00.0000',3,'restaurant prep time',NULL),('D40','-00:11:00.0000',3,'performance',0.00),('D40','00:15:00.0000',3,'actual deliv time',NULL),('D5','00:16:00.0000',4,'performance',1.00),('D5','00:17:00.0000',5,'actual deliv time',NULL),('D5','-00:05:00.0000',5,'performance',0.00),('D5','00:16:00.0000',4,'actual deliv time',NULL),('D5','00:27:00.0000',5,'restaurant prep time',NULL),('D5','00:21:00.0000',4,'restaurant prep time',NULL),('D8','00:32:00.0000',1,'restaurant prep time',NULL),('D8','-00:09:00.0000',1,'performance',0.00),('D8','00:17:00.0000',1,'actual deliv time',NULL),('D9','00:40:00.0000',3,'restaurant prep time',NULL),('D9','00:20:00.0000',5,'actual deliv time',NULL),('D9','00:20:00.0000',3,'actual deliv time',NULL),('D9','-00:15:00.0000',5,'performance',0.00),('D9','-00:15:00.0000',3,'performance',0.00),('D9','00:40:00.0000',5,'restaurant prep time',NULL);
/*!40000 ALTER TABLE `deliv_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliv_timeline1`
--

DROP TABLE IF EXISTS `deliv_timeline1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deliv_timeline1` (
  `delivery_exec_id(FK)` varchar(255) NOT NULL DEFAULT '',
  `timedif` time(4) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `Description` varchar(20) NOT NULL DEFAULT '',
  `rate` float(20,2) DEFAULT NULL,
  `performance_rating` float(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliv_timeline1`
--

LOCK TABLES `deliv_timeline1` WRITE;
/*!40000 ALTER TABLE `deliv_timeline1` DISABLE KEYS */;
INSERT INTO `deliv_timeline1` VALUES ('D1','-00:08:36.0000',5,'performance',0.00,4.00),('D1','-00:11:24.0000',4,'performance',0.00,3.00),('D1','-00:21:00.0000',2,'performance',0.00,1.00),('D1','-00:05:30.0000',3,'performance',0.00,4.00),('D10','00:07:00.0000',5,'performance',1.00,5.00),('D10','00:07:00.0000',3,'performance',1.00,5.00),('D14','-00:11:00.0000',4,'performance',0.00,3.00),('D15','-00:22:00.0000',3,'performance',0.00,1.00),('D15','00:02:00.0000',5,'performance',1.00,5.00),('D16','-00:14:30.0000',2,'performance',0.00,3.00),('D16','00:00:00.0000',4,'performance',0.00,4.00),('D17','-00:10:00.0000',4,'performance',0.00,3.00),('D18','-00:08:00.0000',4,'performance',0.00,4.00),('D19','-00:10:00.0000',3,'performance',0.00,3.00),('D19','00:00:30.0000',5,'performance',1.00,5.00),('D2','-00:08:30.0000',3,'performance',0.00,4.00),('D2','-00:02:20.0000',4,'performance',0.00,4.00),('D20','00:00:00.0000',4,'performance',0.00,4.00),('D20','00:00:00.0000',5,'performance',0.00,4.00),('D21','-00:18:00.0000',5,'performance',0.00,2.00),('D21','-00:07:00.0000',4,'performance',0.00,4.00),('D22','-00:12:00.0000',3,'performance',0.00,3.00),('D24','-00:05:00.0000',4,'performance',0.00,4.00),('D24','00:10:00.0000',3,'performance',1.00,5.00),('D25','-00:19:30.0000',5,'performance',0.00,2.00),('D26','00:03:00.0000',4,'performance',1.00,5.00),('D27','-00:13:00.0000',4,'performance',0.00,3.00),('D28','00:06:00.0000',2,'performance',1.00,5.00),('D28','-00:10:00.0000',3,'performance',0.00,3.00),('D29','-00:08:00.0000',4,'performance',0.00,4.00),('D29',NULL,2,'performance',0.00,4.00),('D3','00:03:00.0000',3,'performance',1.00,5.00),('D30','-00:15:00.0000',5,'performance',0.00,2.00),('D31','-00:18:00.0000',3,'performance',0.00,2.00),('D32','-00:10:00.0000',4,'performance',0.00,3.00),('D32','-00:20:00.0000',3,'performance',0.00,2.00),('D33','-00:09:00.0000',4,'performance',0.00,4.00),('D34','-00:13:00.0000',4,'performance',0.00,3.00),('D34','-00:15:00.0000',3,'performance',0.00,2.00),('D34','-00:22:00.0000',5,'performance',0.00,1.00),('D35','00:16:00.0000',3,'performance',1.00,5.00),('D35','00:07:00.0000',2,'performance',1.00,5.00),('D36','00:11:00.0000',5,'performance',1.00,5.00),('D37','00:11:00.0000',5,'performance',1.00,5.00),('D38','-00:07:30.0000',3,'performance',0.00,4.00),('D38','00:16:00.0000',5,'performance',1.00,5.00),('D38','-00:10:00.0000',4,'performance',0.00,3.00),('D39','-00:12:00.0000',4,'performance',0.00,3.00),('D4','-00:00:40.0000',5,'performance',0.00,4.00),('D40','-00:11:00.0000',3,'performance',0.00,3.00),('D5','00:16:00.0000',4,'performance',1.00,5.00),('D5','-00:05:00.0000',5,'performance',0.00,4.00),('D8','-00:09:00.0000',1,'performance',0.00,4.00),('D9','-00:15:00.0000',5,'performance',0.00,2.00),('D9','-00:15:00.0000',3,'performance',0.00,2.00);
/*!40000 ALTER TABLE `deliv_timeline1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Delivery_Exec`
--

DROP TABLE IF EXISTS `Delivery_Exec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Delivery_Exec` (
  `delivery_exec_id` varchar(255) NOT NULL,
  `name` char(50) NOT NULL,
  `designation` char(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_details` varchar(50) NOT NULL,
  `SSN` varchar(20) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `years_of_service` float(10,2) DEFAULT NULL,
  `deliv_exec_overall_rating` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`delivery_exec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Delivery_Exec`
--

LOCK TABLES `Delivery_Exec` WRITE;
/*!40000 ALTER TABLE `Delivery_Exec` DISABLE KEYS */;
INSERT INTO `Delivery_Exec` VALUES ('D1','Diana','Exec','Car','BGHHK9','6412196595',30,0.58,4.07),('D10','Kenneth','Exec','Car','DEDEWD89','3494874818',40,0.42,3.00),('D11','Florence','Exec','Car','NEWYORK343','2388375197',31,0.50,NULL),('D12','Karl','Exec','Bike','TECHIE333','8021495090',39,0.58,NULL),('D13','Roger','Manager','Car','JAMESBOND007','5709989457',38,0.50,5.00),('D14','Samuel','Exec','Car','EFREWFR68','3091509663',29,0.42,4.00),('D15','Bob M','Exec','Car','PLACE45','6700230312',33,0.33,4.00),('D16','Douglas','Manager','Car','DENVER556','3991110494',35,0.50,2.66),('D17','John','Exec','Car','BGHHK9','8412198595',30,0.58,4.00),('D18','Brian','Exec','Car','DEDEWD89','3494874818',40,0.42,4.00),('D19','Ricardo','Exec','Car','NEWYORK343','2388375197',31,0.50,4.33),('D2','Geneva','Exec','Car','DDGGJ67','2876534753',28,0.50,4.00),('D20','Mike','Exec','Bike','TECHIE333','8021495090',39,0.58,4.50),('D21','Mark','Manager','Car','JAMESBOND007','5709989457',38,0.50,4.50),('D22','Ricardo','Exec','Car','EFREWFR68','3091509883',29,0.42,3.00),('D23','Liam','Exec','Car','PLACE45','8700230312',33,0.33,NULL),('D24','Noah','Manager','Car','DENVER556','3991110494',35,0.50,3.50),('D25','Lucas','Exec','Car','DDGGJ67','2878534753',28,0.50,5.00),('D26','Michael','Exec','Car','Summer','2571555921',25,0.50,4.00),('D27','Alexander','Exec','Car','Patrick 007','8400142134',29,0.58,4.00),('D28','Ethan','Exec','Car','UCLA45','8502437783',25,0.50,2.50),('D29','Daniel','Exec','Bike','EFREJHWE5','4810040301',32,0.58,3.00),('D3','Thelma','Exec','Car','Summer','2571555921',25,0.50,NULL),('D30','Ella','Manager','Car','WDEEJRG6','2202241589',38,0.33,5.00),('D31','Aiden','Exec','Car','ERFER457','5995555298',37,0.42,3.00),('D32','Henry','Exec','Car','YOSEMITE45','5333988509',34,0.50,3.50),('D33','Joseph','Exec','Car','BGHHK9','8912198595',30,0.58,4.00),('D34','Jackson','Exec','Car','DEDEWD89','3999879818',40,0.42,4.00),('D35','Samuel','Exec','Car','NEWYORK343','2388375197',31,0.50,2.50),('D36','Owen','Exec','Bike','TECHIE333','8021995090',39,0.58,5.00),('D37','Dylan','Manager','Car','JAMESBOND007','5709989957',38,0.50,5.00),('D38','Luke','Exec','Car','EFREWFR68','3091509883',29,0.42,3.75),('D39','Gabriel','Exec','Car','PLACE45','8700230312',33,0.33,4.00),('D4','Patrick','Exec','Car','Patrick 007','8400142134',29,0.58,5.00),('D40','Anthony','Manager','Car','DENVER556','3991110999',35,0.50,3.00),('D5','Bob K','Exec','Car','UCLA45','6502437763',25,0.50,4.00),('D6','Brandon','Exec','Bike','EFREJHWE5','4810040301',32,0.58,4.00),('D7','Richard','Manager','Car','WDEEJRG6','2202241569',38,0.33,1.00),('D8','Doris','Exec','Car','ERFER457','5995555296',37,0.42,4.50),('D9','Jeffery','Exec','Car','YOSEMITE45','5333966509',34,0.50,3.66);
/*!40000 ALTER TABLE `Delivery_Exec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedback`
--

DROP TABLE IF EXISTS `Feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Feedback` (
  `feedback_id` varchar(255) NOT NULL,
  `order_id (FK)` varchar(255) NOT NULL,
  `rated_person` char(20) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `provides` (`order_id (FK)`),
  CONSTRAINT `provides` FOREIGN KEY (`order_id (FK)`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedback`
--

LOCK TABLES `Feedback` WRITE;
/*!40000 ALTER TABLE `Feedback` DISABLE KEYS */;
INSERT INTO `Feedback` VALUES ('F001','A001','C',5,NULL),('F002','A001','D',5,'Awesome service'),('F003','A002','C',5,NULL),('F004','A002','D',4,NULL),('F005','A002','R',2,'The haryali kebab was raw and not palatable. It was not cooked properly. Would not recommend it.'),('F006','A003','C',5,NULL),('F007','A004','C',5,NULL),('F008','A004','D',5,'Packaged perfect! Delivery guy super friendly! Yummy!'),('F009','A004','R',5,'Excellent food! Very flavorful and delicious with wide variety'),('F010','A005','C',5,NULL),('F011','A005','D',5,NULL),('F012','A005','R',5,'Recommend for mutton biryani'),('F013','A006','C',5,NULL),('F014','A006','D',4,NULL),('F015','A006','R',5,'Delicious and fresh'),('F016','A007','C',5,NULL),('F017','A007','D',4,NULL),('F018','A007','R',2,'Wrong drinks were given. Food was cold.'),('F019','A008','C',3,'Not friendly'),('F020','A008','D',1,'The food was cold and the order was wrong. There was food and drinks missing. Not sure if Iâ€™d like to use this app again.'),('F021','A008','R',1,'ordered 10 mild hot sauce , and I got 2'),('F022','A009','C',5,NULL),('F023','A009','D',5,NULL),('F024','A009','R',5,'Appreciate that everything was as per order and instructions'),('F025','A010','C',5,NULL),('F026','A010','D',5,NULL),('F027','A011','C',5,NULL),('F028','A012','C',5,NULL),('F029','A013','C',5,NULL),('F030','A014','C',5,NULL),('F031','A014','D',5,NULL),('F032','A014','R',5,NULL),('F033','A015','C',5,NULL),('F034','A015','R',3,'Uses the same sauce for many dishes. Wonâ€™t order from here again.'),('F035','A016','C',5,NULL),('F036','A017','C',5,NULL),('F037','A018','C',5,NULL),('F038','A018','R',5,NULL),('F039','A019','R',5,'Awesome service'),('F040','A020','R',5,NULL),('F041','A021','R',4,NULL),('F042','A022','R',2,'The haryali kebab was raw and not palatable. It was not cooked properly. Would not recommend it.'),('F043','A023','R',5,NULL),('F044','A028','R',5,NULL),('F045','A029','R',5,NULL),('F046','A030','R',5,'Excellent food! Very flavorful and delicious with wide variety'),('F047','A031','R',5,NULL),('F048','A032','R',5,NULL),('F049','A033','R',5,'Recommend for mutton biryani'),('F050','A034','R',5,NULL),('F051','A052','R',4,NULL),('F052','A053','R',5,'Delicious and fresh'),('F053','A054','R',5,NULL),('F054','A055','R',4,NULL),('F055','A056','R',2,'Wrong drinks were given. Food was cold.'),('F056','A057','R',3,'Not friendly'),('F057','A058','R',1,'The food was cold and the order was wrong. There was food and drinks missing. Not sure if Iâ€™d like to use this app again.'),('F058','A059','R',1,'ordered 10 mild hot sauce , and I got 2'),('F059','A060','R',5,NULL),('F060','A061','R',5,NULL),('F061','A016','D',4,NULL),('F062','A017','D',3,NULL),('F063','A018','D',2,NULL),('F064','A019','D',5,NULL),('F065','A020','D',4,NULL),('F066','A021','D',3,NULL),('F067','A022','D',5,'Awesome service'),('F068','A023','D',4,NULL),('F069','A024','D',3,NULL),('F070','A025','D',3,NULL),('F071','A026','D',2,NULL),('F072','A027','D',4,NULL),('F073','A028','D',4,NULL),('F074','A029','D',5,'Delivery guy super friendly!'),('F075','A030','D',3,NULL),('F076','A031','D',4,NULL),('F077','A032','D',5,NULL),('F078','A033','D',5,'Packaged perfect! Delivery guy super friendly! Yummy!'),('F079','A034','D',5,'Awesome service'),('F080','A035','D',5,'Delivery guy super friendly!'),('F081','A036','D',4,NULL),('F082','A037','D',4,NULL),('F083','A038','D',2,NULL),('F084','A039','D',3,NULL),('F085','A040','D',3,NULL),('F086','A041','D',4,NULL),('F087','A042','D',3,NULL),('F088','A043','D',4,NULL),('F089','A044','D',3,NULL),('F090','A045','D',5,NULL),('F091','A046','D',4,NULL),('F092','A047','D',5,'Delivery guy super friendly!'),('F093','A048','D',4,NULL),('F094','A049','D',4,NULL),('F095','A050','D',4,NULL),('F096','A051','D',3,NULL),('F097','A052','D',4,NULL),('F098','A053','D',5,NULL),('F099','A054','D',3,NULL),('F100','A055','D',4,NULL),('F101','A056','D',4,NULL),('F102','A057','D',3,NULL),('F103','A058','D',2,NULL),('F104','A059','D',3,NULL),('F105','A060','D',5,NULL),('F106','A061','D',5,NULL),('F107','A062','D',5,NULL),('F108','A063','D',3,NULL),('F109','A064','D',4,NULL),('F110','A065','D',3,NULL),('F111','A066','D',5,NULL),('F112','A067','D',4,NULL),('F113','A068','D',3,NULL),('F114','A069','D',4,NULL),('F115','A070','D',5,NULL),('F116','A071','D',3,NULL),('F117','A072','D',4,NULL),('F118','A073','D',2,NULL),('F119','A074','D',2,NULL),('F120','A075','D',3,NULL),('F121','A076','D',4,NULL),('F122','A077','D',5,NULL),('F123','A078','D',5,'Delivery guy friendly'),('F124','A079','D',4,NULL),('F125','A080','D',3,NULL),('F126','A019','C',5,NULL),('F127','A020','C',4,NULL),('F128','A021','C',5,NULL),('F129','A022','C',5,NULL),('F130','A023','C',4,NULL),('F131','A024','C',4,NULL),('F132','A025','C',4,NULL),('F133','A026','C',4,NULL),('F134','A027','C',5,NULL),('F135','A028','C',5,NULL),('F136','A029','C',5,NULL),('F137','A030','C',5,NULL),('F138','A031','C',5,NULL),('F139','A032','C',5,NULL),('F140','A033','C',3,NULL),('F141','A034','C',4,NULL),('F142','A035','C',5,NULL),('F143','A036','C',5,NULL),('F144','A037','C',4,NULL),('F145','A038','C',4,NULL),('F146','A039','C',4,NULL),('F147','A040','C',4,NULL),('F148','A041','C',4,NULL),('F149','A042','C',3,NULL),('F150','A043','C',3,NULL),('F151','A044','C',5,NULL),('F152','A045','C',3,NULL),('F153','A046','C',4,NULL),('F154','A047','C',5,NULL),('F155','A048','C',4,NULL),('F156','A049','C',5,NULL),('F157','A050','C',3,NULL),('F158','A051','C',5,NULL),('F159','A052','C',5,NULL),('F160','A053','C',5,NULL),('F161','A054','C',4,NULL),('F162','A055','C',4,NULL),('F163','A056','C',5,NULL),('F164','A057','C',4,NULL),('F165','A058','C',5,NULL),('F166','A059','C',4,NULL),('F167','A060','C',4,NULL),('F168','A061','C',5,NULL),('F169','A062','C',4,NULL),('F170','A063','C',5,NULL),('F171','A064','C',4,NULL),('F172','A065','C',5,NULL),('F173','A066','C',4,NULL),('F174','A067','C',5,NULL),('F175','A068','C',4,NULL),('F176','A069','C',5,NULL),('F177','A070','C',4,NULL),('F178','A071','C',5,NULL),('F179','A072','C',5,NULL),('F180','A073','C',5,NULL),('F181','A074','C',3,NULL),('F182','A075','C',4,NULL),('F183','A076','C',4,NULL),('F184','A077','C',3,NULL),('F185','A078','C',3,NULL),('F186','A079','C',3,NULL),('F187','A080','C',4,NULL);
/*!40000 ALTER TABLE `Feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Free_Delivery_Pass_FDP`
--

DROP TABLE IF EXISTS `Free_Delivery_Pass_FDP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Free_Delivery_Pass_FDP` (
  `fdp_id` varchar(255) NOT NULL,
  `status_id` tinyint(1) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `fdp_status_time` datetime NOT NULL,
  `fdp_reg_time` datetime NOT NULL,
  PRIMARY KEY (`fdp_id`),
  KEY `subscribes` (`cust_id`),
  CONSTRAINT `subscribes` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Free_Delivery_Pass_FDP`
--

LOCK TABLES `Free_Delivery_Pass_FDP` WRITE;
/*!40000 ALTER TABLE `Free_Delivery_Pass_FDP` DISABLE KEYS */;
INSERT INTO `Free_Delivery_Pass_FDP` VALUES ('fdp1',0,1,'2018-12-24 00:00:00','2018-11-24 00:00:00'),('fdp10',1,32,'2018-10-23 00:00:00','2018-09-23 00:00:00'),('fdp11',1,38,'2018-06-04 00:00:00','2018-05-04 00:00:00'),('fdp12',1,42,'2018-12-11 00:00:00','2018-12-11 00:00:00'),('fdp13',1,43,'2019-01-11 00:00:00','2018-12-11 00:00:00'),('fdp14',0,46,'2018-11-22 00:00:00','2018-10-22 00:00:00'),('fdp15',1,50,'2018-06-17 00:00:00','2018-05-17 00:00:00'),('fdp16',1,51,'2018-06-23 00:00:00','2018-05-23 00:00:00'),('fdp17',1,52,'2018-08-29 00:00:00','2018-07-29 00:00:00'),('fdp18',1,53,'2018-08-04 00:00:00','2018-08-04 00:00:00'),('fdp19',0,55,'2018-12-08 00:00:00','2018-12-08 00:00:00'),('fdp2',1,5,'2019-02-17 00:00:00','2019-01-17 00:00:00'),('fdp20',1,57,'2018-08-10 00:00:00','2018-01-10 00:00:00'),('fdp21',1,60,'2018-02-13 00:00:00','2018-02-13 00:00:00'),('fdp22',0,16,'2018-12-22 00:00:00','2018-11-22 00:00:00'),('fdp23',1,11,'2018-05-09 00:00:00','2018-02-09 00:00:00'),('fdp24',1,8,'2018-09-04 00:00:00','2018-02-04 00:00:00'),('fdp25',0,3,'2018-12-11 00:00:00','2018-12-11 00:00:00'),('fdp26',1,49,'2018-02-11 00:00:00','2018-01-11 00:00:00'),('fdp27',1,45,'2018-01-13 00:00:00','2018-01-13 00:00:00'),('fdp28',0,34,'2018-02-11 00:00:00','2018-02-11 00:00:00'),('fdp29',0,33,'2018-12-11 00:00:00','2018-12-11 00:00:00'),('fdp3',1,13,'2018-12-11 00:00:00','2018-12-11 00:00:00'),('fdp30',1,25,'2018-03-08 00:00:00','2018-02-08 00:00:00'),('fdp31',1,20,'2018-04-17 00:00:00','2018-03-17 00:00:00'),('fdp32',1,21,'2018-08-23 00:00:00','2018-03-23 00:00:00'),('fdp4',0,16,'2018-11-22 00:00:00','2018-07-22 00:00:00'),('fdp5',1,22,'2018-05-29 00:00:00','2018-03-29 00:00:00'),('fdp6',1,23,'2018-06-04 00:00:00','2018-06-04 00:00:00'),('fdp7',1,29,'2018-08-12 00:00:00','2018-08-12 00:00:00'),('fdp8',1,30,'2018-08-13 00:00:00','2018-03-13 00:00:00'),('fdp9',0,31,'2019-01-10 00:00:00','2018-06-22 00:00:00');
/*!40000 ALTER TABLE `Free_Delivery_Pass_FDP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inactive_customers`
--

DROP TABLE IF EXISTS `Inactive_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Inactive_customers` (
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inactive_customers`
--

LOCK TABLES `Inactive_customers` WRITE;
/*!40000 ALTER TABLE `Inactive_customers` DISABLE KEYS */;
INSERT INTO `Inactive_customers` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(12),(13),(14),(16),(17),(18),(19),(20),(21),(22),(23),(25),(26),(27),(28),(29),(30),(31),(32),(34),(35),(36),(37),(38),(39),(41),(42),(43),(44),(45),(46),(47),(50),(51),(54),(55),(56),(57),(58),(59),(60),(11),(15),(24),(33),(40),(48),(49),(52),(53),(99999999);
/*!40000 ALTER TABLE `Inactive_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items_ordered`
--

DROP TABLE IF EXISTS `Items_ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Items_ordered` (
  `item_id (FK)` varchar(255) NOT NULL,
  `order_id (FK)` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` float(20,2) DEFAULT NULL,
  KEY `contains` (`order_id (FK)`),
  KEY `ordered from` (`item_id (FK)`),
  CONSTRAINT `contains` FOREIGN KEY (`order_id (FK)`) REFERENCES `order` (`order_id`),
  CONSTRAINT `ordered from` FOREIGN KEY (`item_id (FK)`) REFERENCES `menu_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items_ordered`
--

LOCK TABLES `Items_ordered` WRITE;
/*!40000 ALTER TABLE `Items_ordered` DISABLE KEYS */;
INSERT INTO `Items_ordered` VALUES ('I001','A001',2,19.90),('I002','A001',1,6.95),('I010','A002',1,9.99),('I012','A002',1,7.99),('I013','A002',2,23.98),('I014','A003',2,25.90),('I015','A003',2,23.90),('I017','A003',1,19.95),('I017','A004',1,19.95),('I018','A004',1,12.95),('I027','A005',1,10.50),('I029','A005',1,12.50),('I027','A006',1,10.50),('I029','A006',1,12.50),('I030','A006',1,8.50),('I005','A007',2,11.90),('I008','A007',2,27.98),('I058','A008',2,31.98),('I060','A008',1,14.99),('I063','A008',1,13.99),('I064','A008',1,12.99),('I007','A018',1,15.00),('I020','A017',2,15.90),('I021','A017',1,8.95),('I011','A016',1,20.99),('I001','A015',1,9.95),('I002','A015',1,6.95),('I003','A015',1,7.95),('I065','A014',15,299.85),('I071','A013',3,20.85),('I072','A013',2,15.90),('I050','A012',2,15.98),('I052','A012',2,39.98),('I058','A009',2,31.98),('I059','A009',2,33.98),('I060','A009',1,14.99),('I064','A009',1,12.99),('I069','A010',15,269.25),('I070','A010',20,439.00),('I059','A011',1,16.99),('I060','A011',1,14.99),('I010','A019',1,9.99),('I011','A019',1,20.99),('I012','A019',1,7.99),('I014','A020',1,11.99),('I015','A020',1,12.95),('I016','A020',1,11.95),('I009','A021',1,7.99),('I010','A021',1,9.99),('I011','A021',1,20.99),('I012','A021',1,7.99),('I013','A021',1,11.99),('I001','A022',2,19.90),('I002','A023',2,13.90),('I007','A024',3,45.00),('I028','A025',2,17.98),('I029','A025',2,25.00),('I066','A026',5,99.95),('I052','A027',2,39.98),('I053','A027',2,45.98),('I054','A027',2,17.90),('I066','A028',45,899.55),('I060','A029',2,29.98),('I058','A030',1,15.99),('I059','A030',1,16.99),('I060','A030',1,14.99),('I061','A030',1,14.99),('I048','A031',5,44.50),('I070','A032',15,329.25),('I009','A033',3,23.97),('I059','A034',1,16.99),('I034','A035',10,150.00),('I069','A036',20,359.00),('I070','A037',15,329.25),('I069','A038',10,179.50),('I070','A039',30,658.50),('I023','A040',2,31.90),('I024','A041',1,17.95),('I002','A042',2,19.90),('I003','A042',2,13.90),('I007','A043',1,15.00),('I008','A043',1,13.99),('I009','A044',1,7.99),('I069','A045',10,179.50),('I009','A046',3,23.97),('I007','A047',1,15.00),('I008','A047',1,13.99),('I007','A048',1,15.00),('I002','A049',2,19.90),('I003','A049',2,13.90),('I020','A050',5,39.75),('I021','A051',1,8.95),('I022','A052',4,47.80),('I023','A053',4,63.80),('I033','A054',3,36.00),('I034','A054',3,45.00),('I040','A055',2,51.00),('I041','A056',2,40.00),('I042','A057',1,20.99),('I043','A058',2,31.00),('I044','A059',3,32.97),('I048','A060',4,35.60),('I049','A061',1,10.50),('I050','A062',3,23.97),('I051','A063',2,25.98),('I052','A064',4,79.96),('I053','A065',6,137.94),('I069','A066',20,359.00),('I021','A067',7,62.65),('I022','A068',2,23.90),('I023','A069',4,63.80),('I024','A070',1,17.95),('I025','A071',4,71.80),('I026','A072',3,62.85),('I027','A073',3,31.50),('I028','A074',3,26.97),('I029','A075',2,25.00),('I058','A076',2,31.98),('I059','A077',4,67.96),('I060','A078',5,74.95),('I061','A079',4,59.96),('I062','A080',2,27.98),('I024','A018',1,17.95);
/*!40000 ALTER TABLE `Items_ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menu_items`
--

DROP TABLE IF EXISTS `Menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Menu_items` (
  `item_id` varchar(255) NOT NULL,
  `rest_id (FK)` varchar(255) NOT NULL,
  `cusine_type` varchar(255) DEFAULT NULL,
  `menu_section_type` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `menu_section_id` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `consists` (`rest_id (FK)`),
  CONSTRAINT `consists` FOREIGN KEY (`rest_id (FK)`) REFERENCES `restaurant` (`rest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu_items`
--

LOCK TABLES `Menu_items` WRITE;
/*!40000 ALTER TABLE `Menu_items` DISABLE KEYS */;
INSERT INTO `Menu_items` VALUES ('I001','R1','American','Appetizers','Nachos',9.95,'M1','M101'),('I002','R1','American','Appetizers','Buffalo Wings',6.95,'M1','M101'),('I003','R1','American','Desserts','Cookie Pie',7.95,'M1','M102'),('I004','R1','American','Desserts','Apple Pie',6.95,'M1','M102'),('I005','R10','American','Breakfast','Pancakes',5.95,'M10','M1001'),('I006','R10','American','Breakfast','Waffles',7.99,'M10','M1001'),('I007','R10','American','Desserts','Icre-cream Sundae',15.00,'M10','M1002'),('I008','R10','American','Desserts','Tiramisu',13.99,'M10','M1002'),('I009','R11','Mexican','Main Course','Guacamole Nachos',7.99,'M11','M1101'),('I010','R11','Mexican','Main Course','Chicken Tacos',9.99,'M11','M1101'),('I011','R11','Mexican','Main Course','Enchiladas',20.99,'M11','M1101'),('I012','R11','Mexican','Drinks','Shakes (Vanilla/Mango)',7.99,'M11','M1102'),('I013','R11','Mexican','Drinks','Mocktails',11.99,'M11','M1102'),('I014','R12','Indian','Appetizers','Paneer Tikka',12.95,'M12','M1201'),('I015','R12','Indian','Appetizers','Cheese balls',11.95,'M12','M1201'),('I016','R12','Indian','Appetizers','Manchurian',10.95,'M12','M1201'),('I017','R12','Indian','Main Course','Paneer Sizzler',19.95,'M12','M1202'),('I018','R12','Indian','Main Course','Dal Tadka',12.95,'M12','M1202'),('I019','R12','Indian','Main Course','Bhindi Masala',12.00,'M12','M1202'),('I020','R13','Indian','Starters','Corn Chaat',7.95,'M13','M1301'),('I021','R13','Indian','Starters','Samosa Chat',8.95,'M13','M1301'),('I022','R13','Indian','Starters','Masala Dosa',11.95,'M13','M1301'),('I023','R13','Indian','Main Course','Sarso Da Saag',15.95,'M13','M1302'),('I024','R13','Indian','Main Course','Saag paneer',17.95,'M13','M1302'),('I025','R13','Indian','Main Course','Mini Thali',17.95,'M13','M1302'),('I026','R13','Indian','Main Course','Maharaja Thali',20.95,'M13','M1302'),('I027','R9','Mexican','Appetizers','Quesedillas',10.50,'M9','M901'),('I028','R9','Mexican','Appetizers','Nachos',8.99,'M9','M901'),('I029','R9','Mexican','Desserts','Ice cream',12.50,'M9','M902'),('I030','R9','Mexican','Desserts','Chocolate nachos',8.50,'M9','M902'),('I031','R9','Mexican','Main Course','Empanadas',12.90,'M9','M902'),('I032','R8','Japanese','Appetizers','Dimsum',10.99,'M8','M801'),('I033','R8','Japanese','Appetizers','Sushi',12.00,'M8','M801'),('I034','R8','Japanese','Appetizers','Sashimi',15.00,'M8','M801'),('I035','R8','Japanese','Main Course','Ramen',15.99,'M8','M802'),('I036','R8','Japanese','Main Course','Udon',18.50,'M8','M802'),('I037','R7','French','Appetizers','Croissants',13.50,'M7','M701'),('I038','R7','French','Appetizers','Nicoise Salad',15.50,'M7','M701'),('I039','R7','French','Appetizers','French soup',13.50,'M7','M701'),('I040','R7','French','Main course','Ratatoullie',25.50,'M7','M702'),('I041','R7','French','Desserts','Souffle',20.00,'M7','M703'),('I042','R7','French','Desserts','Mousse',20.99,'M7','M703'),('I043','R6','Southeast Asian','Main Course','Ramen',15.50,'M6','M601'),('I044','R6','Southeast Asian','Main Course','Curry noodles',10.99,'M6','M601'),('I045','R6','Southeast Asian','Dessert','Ice cream',8.99,'M6','M602'),('I046','R6','Southeast Asian','Dessert','Mochi',5.50,'M6','M602'),('I047','R4','Thai','Appetizers','Dumplings',10.00,'M4','M401'),('I048','R4','Thai','Main Course','Red curry',8.90,'M4','M402'),('I049','R4','Thai','Main Course','Pad Thai',10.50,'M4','M402'),('I050','R14','Mexican','Appetizers','Mexican Burritos',7.99,'M14','M1401'),('I051','R14','Mexican','Appetizers','Fajita Nachos',12.99,'M14','M1401'),('I052','R14','Mexican','Main Course','Grilled Steak',19.99,'M14','M1402'),('I053','R14','Mexican','Main Course','Grilled Fajitas',22.99,'M14','M1402'),('I054','R15','Mexican','Appetizers','Cheese Nachos',8.95,'M15','M1501'),('I055','R15','Mexican','Appetizers','Burritos',8.95,'M15','M1501'),('I056','R15','Mexican','Main Course','Fish Tacos',12.95,'M15','M1502'),('I057','R15','Mexican','Main Course','Mexican Steak',17.95,'M15','M1502'),('I058','R16','Indian','Starters','Bombay Chaat',15.99,'M16','M1601'),('I059','R16','Indian','Starters','Paneer Tikka',16.99,'M16','M1601'),('I060','R16','Indian','Starters','Manchurian',14.99,'M16','M1601'),('I061','R16','Indian','Starters','Kebab',14.99,'M16','M1601'),('I062','R16','Indian','Desserts','Gulab Jamun',13.99,'M16','M1602'),('I063','R16','Indian','Desserts','Basundi',13.99,'M16','M1602'),('I064','R16','Indian','Desserts','Rasmalai',12.99,'M16','M1602'),('I065','R17','Pizza','Main Course','Paneer Pizza',19.99,'M17','M1701'),('I066','R17','Pizza','Main Course','Corn Chat Pizza',19.99,'M17','M1701'),('I067','R17','Pizza','Desserts','Choco Lava Cake',7.99,'M17','M1702'),('I068','R17','Pizza','Desserts','Ice Cream',7.99,'M17','M1702'),('I069','R18','Pizza','Main Course','Veg Pizza',17.95,'M18','M1801'),('I070','R18','Pizza','Main Course','Chicken Pizza',21.95,'M18','M1801'),('I071','R19','Mexican','Appetizers','Tacos',6.95,'M19','M1901'),('I072','R19','Mexican','Appetizers','Mexican Burritos',7.95,'M19','M1901'),('I073','R19','Mexican','Appetizers','Sandwiches',11.95,'M19','M1901');
/*!40000 ALTER TABLE `Menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER`
--

DROP TABLE IF EXISTS `ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ORDER` (
  `order_id` varchar(255) NOT NULL,
  `cust_id(FK)` int(11) NOT NULL,
  `number_of_items` int(50) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `address_id (FK)` varchar(255) NOT NULL,
  `total_amount` float(10,2) DEFAULT NULL,
  `order_instructions` varchar(255) DEFAULT NULL,
  `order_type` tinyint(1) DEFAULT NULL,
  `order_source` tinyint(1) DEFAULT NULL,
  `order_start_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `delivery_exec_id(FK)` varchar(255) NOT NULL,
  `payment_id(FK)` varchar(255) NOT NULL,
  `order_placed` tinyint(1) DEFAULT NULL,
  `order_placed_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_confirmed` tinyint(1) DEFAULT NULL,
  `order_confirmed_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_picked` tinyint(1) DEFAULT NULL,
  `order_picked_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_delivered` tinyint(1) DEFAULT NULL,
  `order_delivered_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `expected_delivery_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `pays` (`payment_id(FK)`),
  KEY `places` (`cust_id(FK)`),
  KEY `delivers` (`delivery_exec_id(FK)`),
  CONSTRAINT `delivers` FOREIGN KEY (`delivery_exec_id(FK)`) REFERENCES `delivery_exec` (`delivery_exec_id`),
  CONSTRAINT `places` FOREIGN KEY (`cust_id(FK)`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER`
--

LOCK TABLES `ORDER` WRITE;
/*!40000 ALTER TABLE `ORDER` DISABLE KEYS */;
INSERT INTO `ORDER` VALUES ('A001',1,3,'santa clara','A1',29.00,'No cheese',1,1,'2019-01-07 17:27:00','D1','P1',1,'2019-01-07 17:42:00',1,'2019-01-07 17:46:00',1,'2019-01-07 18:20:00',1,'2019-01-07 18:41:00','2019-01-07 18:29:00'),('A002',2,4,'san jose','A2',45.32,NULL,1,1,'2019-01-08 20:47:00','D2','P2',1,'2019-01-08 21:04:00',1,'2019-01-08 21:09:00',1,'2019-01-08 21:40:00',1,'2019-01-08 21:56:00','2019-01-08 22:02:00'),('A003',3,5,'Mountain view','A3',75.33,NULL,1,1,'2018-10-22 02:26:00','D3','P3',1,'2018-10-22 02:41:00',0,'2018-10-22 02:46:00',0,'2018-10-22 03:07:00',0,'2018-10-22 03:22:00','2018-10-22 03:23:00'),('A004',4,2,'Palo Alto','A4',35.53,NULL,1,0,'2019-01-11 07:27:00','D4','P4',1,'2019-01-11 07:39:00',1,'2019-01-11 07:46:00',1,'2019-01-11 08:14:00',1,'2019-01-11 08:29:00','2019-01-11 08:39:00'),('A005',5,2,'Milpitas','A5',24.84,NULL,1,1,'2019-02-11 20:06:00','D5','P5',1,'2019-02-11 20:16:00',1,'2019-02-11 20:21:00',1,'2019-02-11 20:48:00',1,'2019-02-11 21:05:00','2019-02-11 21:00:00'),('A006',6,3,'Pleasanton','A6',34.02,'give curry separately',1,1,'2019-01-23 07:37:00','D1','P6',1,'2019-01-23 07:47:00',1,'2019-01-23 07:54:00',1,'2019-01-23 08:33:00',1,'2019-01-23 08:58:00','2019-01-23 08:40:00'),('A007',7,4,'Fremont','A7',43.07,NULL,1,1,'2019-01-29 07:30:00','D2','P7',1,'2019-01-29 07:46:00',1,'2019-01-29 07:51:00',1,'2019-01-29 08:29:00',1,'2019-01-29 08:52:00','2019-01-29 08:34:00'),('A008',8,5,'Newark','A8',79.87,NULL,1,1,'2019-02-14 09:25:00','D8','P8',1,'2019-02-14 09:36:00',1,'2019-02-14 09:40:00',1,'2019-02-14 10:12:00',1,'2019-02-14 10:29:00','2019-02-14 10:20:00'),('A009',9,6,'Menlo park','A9',101.46,NULL,1,0,'2019-02-15 11:20:00','D9','P9',1,'2019-02-15 11:30:00',1,'2019-02-15 11:34:00',1,'2019-02-15 12:14:00',1,'2019-02-15 12:34:00','2019-02-15 12:19:00'),('A010',10,35,'Atherton','A10',764.91,NULL,0,1,'2019-02-16 14:05:00','D10','P10',1,'2019-02-16 14:21:00',1,'2019-02-16 14:23:00',1,'2019-02-16 14:49:00',1,'2019-02-16 15:06:00','2019-02-16 15:13:00'),('A011',12,2,'Woodhurst','A12',34.54,NULL,1,1,'2018-12-10 13:11:00','D1','P11',1,'2018-12-10 13:24:00',1,'2018-12-10 13:30:00',1,'2018-12-10 13:53:00',1,'2018-12-10 14:17:00','2018-12-10 14:11:00'),('A012',13,4,'Los Gatos','A13',60.44,NULL,1,1,'2018-12-11 01:27:00','D2','P12',1,'2018-12-11 01:45:00',1,'2018-12-11 01:51:00',1,'2018-12-11 02:13:00',1,'2018-12-11 02:30:00','2018-12-11 02:41:00'),('A013',14,5,'Los Altos','A14',39.69,NULL,1,0,'2018-12-12 11:55:00','D3','P13',1,'2018-12-12 12:08:00',1,'2018-12-12 12:15:00',1,'2018-12-12 12:38:00',1,'2018-12-12 13:00:00','2018-12-12 12:53:00'),('A014',5,15,'Menlo park','A5',323.84,'No onions',0,1,'2019-02-19 13:48:00','D4','P5',1,'2019-02-19 13:58:00',1,'2019-02-19 14:04:00',1,'2019-02-19 14:44:00',1,'2019-02-19 15:06:00','2019-02-19 14:54:00'),('A015',7,3,'Fremont','A7',26.84,NULL,1,0,'2019-03-01 17:26:00','D6','P7',1,'2019-03-01 17:36:00',1,'2019-03-01 17:40:00',1,'2019-03-01 18:13:00',1,'2019-03-01 18:28:00','2019-03-01 18:17:00'),('A016',8,1,'Newark','A8',22.67,NULL,1,1,'2019-02-22 12:51:00','D5','P8',1,'2019-02-22 13:11:00',1,'2019-02-22 13:13:00',1,'2019-02-22 13:34:00',1,'2019-02-22 13:50:00','2019-02-22 14:06:00'),('A017',13,3,'Los Gatos','A13',26.84,'No meat',1,0,'2019-02-28 19:09:00','D2','P13',1,'2019-02-28 19:20:00',1,'2019-02-28 19:27:00',1,'2019-02-28 20:11:00',1,'2019-02-28 20:35:00','2019-02-28 20:07:00'),('A018',14,1,'Palo Alto','A14',16.20,NULL,1,1,'2019-02-27 13:09:00','D1','P14',0,'2019-02-27 13:27:00',1,'2019-02-27 13:31:00',1,'2019-02-27 14:16:00',1,'2019-02-27 14:37:00','2019-02-27 14:16:00'),('A019',16,3,'santa clara','A23',29.00,'No cheese',1,1,'2019-01-02 17:20:00','D1','P1',1,'2019-01-02 17:32:00',1,'2019-01-02 17:37:00',1,'2019-01-02 17:57:00',1,'2019-01-02 18:20:00','2019-01-02 18:15:00'),('A020',17,4,'san jose','A24',45.32,NULL,1,1,'2019-01-08 20:47:00','D2','P2',1,'2019-01-08 21:04:00',1,'2019-01-08 21:09:00',1,'2019-01-08 21:40:00',1,'2019-01-08 21:55:00','2019-01-08 22:00:00'),('A021',18,5,'Mountain view','A25',75.33,NULL,1,1,'2018-10-22 02:26:00','D3','P3',1,'2018-10-22 02:41:00',0,'2018-10-22 02:47:00',0,'2018-10-22 03:10:00',0,'2018-10-22 03:30:00','2018-10-22 03:33:00'),('A022',16,2,'Palo Alto','A23',35.53,NULL,1,0,'2019-01-11 07:27:00','D4','P4',1,'2019-01-11 07:39:00',1,'2019-01-11 07:39:00',1,'2019-01-11 07:39:00',1,'2019-01-11 07:39:00','2019-01-11 07:39:00'),('A023',18,2,'Milpitas','A25',13.90,NULL,1,1,'2019-02-11 20:06:00','D14','P25',1,'2019-02-11 20:16:00',1,'2019-02-11 20:26:00',1,'2019-02-11 20:50:00',1,'2019-02-11 21:16:00','2019-02-11 21:05:00'),('A024',19,3,'Pleasanton','A26',45.00,'give curry separately',1,1,'2019-01-23 19:37:00','D1','P26',1,'2019-01-23 19:47:00',1,'2019-01-23 20:00:00',1,'2019-01-23 20:20:00',1,'2019-01-23 20:40:00','2019-01-23 20:35:00'),('A025',20,4,'Fremont','A27',42.98,NULL,1,1,'2019-01-29 07:30:00','D15','P13',1,'2019-01-29 07:46:00',1,'2019-01-29 07:52:00',1,'2019-01-29 08:20:00',1,'2019-01-29 08:48:00','2019-01-29 08:26:00'),('A026',21,5,'Newark','A28',99.95,NULL,1,1,'2019-02-14 09:25:00','D16','P-COD',1,'2019-02-14 09:36:00',1,'2019-02-14 09:39:00',1,'2019-02-14 10:10:00',1,'2019-02-14 10:36:00','2019-02-14 10:16:00'),('A027',22,6,'Menlo park','A29',103.86,NULL,1,0,'2019-02-15 11:20:00','D17','P28',1,'2019-02-15 11:30:00',1,'2019-02-15 11:35:00',1,'2019-02-15 00:10:00',1,'2019-02-15 00:30:00','2019-02-15 00:20:00'),('A028',21,45,'Atherton','A28',899.55,NULL,0,1,'2019-02-16 14:05:00','D18','P-COD',1,'2019-02-16 14:21:00',1,'2019-02-16 14:27:00',1,'2019-02-16 15:10:00',1,'2019-02-16 15:30:00','2019-02-16 15:22:00'),('A029',23,2,'Woodhurst','A30',29.98,NULL,1,1,'2018-12-10 13:11:00','D1','P-COD',1,'2018-12-10 13:24:00',1,'2018-12-10 13:28:00',1,'2018-12-10 13:48:00',1,'2018-12-10 14:15:00','2018-12-10 14:13:00'),('A030',25,4,'Los Gatos','A32',62.96,NULL,1,1,'2018-12-11 13:27:00','D19','P31',1,'2018-12-11 13:45:00',1,'2018-12-11 13:55:00',1,'2018-12-11 14:20:00',1,'2018-12-11 14:45:00','2018-12-11 14:35:00'),('A031',25,5,'Los Altos','A32',44.50,NULL,1,0,'2018-12-12 11:55:00','D20','P31',1,'2018-12-12 12:08:00',1,'2018-12-12 12:08:00',1,'2018-12-12 12:48:00',1,'2018-12-12 13:10:00','2018-12-12 13:10:00'),('A032',26,15,'Menlo park','A33',329.25,'No onions',0,1,'2019-02-19 13:48:00','D20','P32',1,'2019-02-19 13:58:00',1,'2019-02-19 13:58:00',1,'2019-02-19 13:58:00',1,'2019-02-19 13:58:00','2019-02-19 13:58:00'),('A033',27,3,'Fremont','A34',23.97,NULL,1,0,'2019-03-01 17:26:00','D19','P33',1,'2019-03-01 17:36:00',1,'2019-03-01 17:46:00',1,'2019-03-01 18:15:00',1,'2019-03-01 18:36:00','2019-03-01 18:32:00'),('A034',28,1,'Newark','A35',16.99,NULL,1,1,'2019-02-22 12:51:00','D19','P34',1,'2019-02-22 13:11:00',1,'2019-02-22 13:20:00',1,'2019-02-22 13:45:00',1,'2019-02-22 14:05:00','2019-02-22 14:10:00'),('A035',29,10,'Los Gatos','A36',150.00,'No meat',0,0,'2019-02-28 19:09:00','D15','P-COD',1,'2019-02-28 19:20:00',1,'2019-02-28 19:30:00',1,'2019-02-28 19:55:00',1,'2019-02-28 20:20:00','2019-02-28 20:22:00'),('A036',29,20,'Palo Alto','A36',359.00,NULL,0,1,'2019-02-27 13:09:00','D1','P-COD',1,'2019-02-27 13:27:00',1,'2019-02-27 13:32:00',1,'2019-02-27 14:10:00',1,'2019-02-27 14:25:00','2019-02-27 14:25:00'),('A037',30,15,'Palo Alto','A37',329.25,'No onions',0,1,'2019-01-29 07:30:00','D16','P-COD',1,'2019-01-29 07:46:00',1,'2019-01-29 07:51:00',1,'2019-01-29 08:40:00',1,'2019-01-29 09:00:00','2019-01-29 09:00:00'),('A038',30,10,'santa clara','A37',179.50,NULL,0,1,'2019-02-14 09:25:00','D16','P-COD',1,'2019-02-14 09:36:00',1,'2019-02-14 09:40:00',1,'2019-02-14 10:12:00',1,'2019-02-14 10:29:00','2019-02-14 10:20:00'),('A039',31,30,'Milpitas','A38',658.50,NULL,0,1,'2019-02-15 11:20:00','D9','P36',1,'2019-02-15 11:30:00',1,'2019-02-15 11:34:00',1,'2019-02-15 12:14:00',1,'2019-02-15 12:34:00','2019-02-15 12:19:00'),('A040',32,2,'Woodhurst','A39',31.90,'No meat',1,1,'2019-02-16 14:05:00','D10','P37',1,'2019-02-16 14:21:00',1,'2019-02-16 14:23:00',1,'2019-02-16 14:49:00',1,'2019-02-16 15:06:00','2019-02-16 15:13:00'),('A041',32,1,'Mountain view','A39',17.95,NULL,1,0,'2018-12-10 13:11:00','D1','P37',1,'2018-12-10 13:24:00',1,'2018-12-10 13:30:00',1,'2018-12-10 13:53:00',1,'2018-12-10 14:17:00','2018-12-10 14:11:00'),('A042',34,4,'Menlo park','A41',33.80,'No cheese',1,0,'2018-12-11 01:27:00','D2','P39',1,'2018-12-11 01:45:00',1,'2018-12-11 01:51:00',1,'2018-12-11 02:13:00',1,'2018-12-11 02:30:00','2018-12-11 02:41:00'),('A043',34,2,'Atherton','A41',28.99,NULL,1,1,'2018-12-12 11:55:00','D21','P39',1,'2018-12-12 12:08:00',1,'2018-12-12 12:15:00',1,'2018-12-12 12:38:00',1,'2018-12-12 13:00:00','2018-12-12 12:53:00'),('A044',34,1,'Santa clara','A41',7.99,NULL,1,1,'2019-02-19 13:48:00','D22','P-COD',1,'2019-02-19 13:58:00',1,'2019-02-19 14:04:00',1,'2019-02-19 14:44:00',1,'2019-02-19 15:06:00','2019-02-19 14:54:00'),('A045',35,10,'Atherton','A42',179.50,NULL,0,0,'2019-03-01 17:26:00','D25','P52',1,'2019-03-01 17:36:00',1,'2019-03-01 17:40:00',1,'2019-03-01 18:13:00',1,'2019-03-01 18:28:00','2019-03-01 18:17:00'),('A046',36,3,'Woodhurst','A43',23.97,NULL,0,1,'2019-02-22 12:51:00','D26','P53',1,'2019-02-22 13:11:00',1,'2019-02-22 13:13:00',1,'2019-02-22 13:34:00',1,'2019-02-22 13:50:00','2019-02-22 14:06:00'),('A047',37,2,'Mountain view','A44',28.99,'give curry separately',1,0,'2019-02-28 19:09:00','D25','P54',1,'2019-02-28 19:20:00',1,'2019-02-28 19:27:00',1,'2019-02-28 20:11:00',1,'2019-02-28 20:35:00','2019-02-28 20:07:00'),('A048',38,1,'Palo Alto','A45',15.00,NULL,1,1,'2019-02-27 13:09:00','D1','P55',1,'2019-02-27 13:27:00',1,'2019-02-27 13:31:00',1,'2019-02-27 14:16:00',1,'2019-02-27 14:37:00','2019-02-27 14:16:00'),('A049',39,4,'Milpitas','A46',33.80,NULL,1,1,'2019-02-15 11:20:00','D26','P-COD',1,'2019-02-15 11:30:00',1,'2019-02-15 11:35:00',1,'2019-02-15 00:10:00',1,'2019-02-15 00:30:00','2019-02-15 00:20:00'),('A050',41,5,'Fremont','A48',39.75,NULL,0,1,'2019-02-16 14:05:00','D27','P56',1,'2019-02-16 14:21:00',1,'2019-02-16 14:30:00',1,'2019-02-16 15:05:00',1,'2019-02-16 15:35:00','2019-02-16 15:22:00'),('A051',41,1,'Santa clara','A48',8.95,NULL,1,1,'2019-02-15 11:20:00','D28','P56',1,'2019-02-15 11:30:00',1,'2019-02-15 11:35:00',1,'2019-02-15 00:10:00',1,'2019-02-15 00:30:00','2019-02-15 00:20:00'),('A052',42,4,'Mountain view','A49',47.80,NULL,1,1,'2019-02-16 14:05:00','D29','P57',1,'2019-02-16 14:21:00',1,'2019-02-16 14:27:00',1,'2019-02-16 15:10:00',1,'2019-02-16 15:30:00','2019-02-16 15:22:00'),('A053',42,4,'Palo Alto','A49',63.80,NULL,1,1,'2019-02-15 23:20:00','D30','P57',1,'2019-02-15 23:25:00',1,'2019-02-15 23:30:00',1,'2019-02-15 12:05:00',1,'2019-02-15 12:35:00','2019-02-15 12:20:00'),('A054',43,6,'Milpitas','A50',81.00,NULL,1,0,'2019-02-16 14:05:00','D31','P10',1,'2019-02-16 14:24:00',1,'2019-02-16 14:34:00',1,'2019-02-16 15:15:00',1,'2019-02-16 15:40:00','2019-02-16 15:22:00'),('A055',43,2,'Santa clara','A50',51.00,'No onions',1,0,'2019-01-29 19:30:00','D32','P7',1,'2019-01-29 19:46:00',1,'2019-01-29 19:55:00',1,'2019-01-29 20:35:00',1,'2019-01-29 09:00:00','2019-01-29 08:50:00'),('A056',44,2,'Woodhurst','A51',40.00,NULL,0,0,'2019-02-14 09:25:00','D33','P-COD',1,'2019-02-14 09:36:00',1,'2019-02-14 09:40:00',1,'2019-02-14 10:12:00',1,'2019-02-14 10:29:00','2019-02-14 10:20:00'),('A057',45,1,'Fremont','A52',20.99,'Less Spicy',1,1,'2019-02-15 11:20:00','D34','P-COD',1,'2019-02-15 11:30:00',1,'2019-02-15 11:34:00',1,'2019-02-15 12:14:00',1,'2019-02-15 12:34:00','2019-02-15 12:19:00'),('A058',46,2,'Menlo park','A53',31.00,NULL,0,0,'2019-02-16 14:05:00','D35','P58',1,'2019-02-16 14:21:00',1,'2019-02-16 14:23:00',1,'2019-02-16 14:49:00',1,'2019-02-16 15:06:00','2019-02-16 15:13:00'),('A059',47,3,'Mountain view','A54',32.97,'Extra Cheese',1,1,'2018-12-10 13:11:00','D1','P59',1,'2018-12-10 13:24:00',1,'2018-12-10 13:30:00',1,'2018-12-10 13:53:00',1,'2018-12-10 14:17:00','2018-12-10 14:11:00'),('A060',50,4,'Milpitas','A57',35.60,'Extra veggies',1,1,'2018-12-11 01:27:00','D36','P41',1,'2018-12-11 01:45:00',1,'2018-12-11 01:51:00',1,'2018-12-11 02:13:00',1,'2018-12-11 02:30:00','2018-12-11 02:41:00'),('A061',51,1,'Palo Alto','A58',10.50,NULL,1,1,'2018-12-10 13:11:00','D1','P42',1,'2018-12-10 13:24:00',1,'2018-12-10 13:30:00',1,'2018-12-10 13:53:00',1,'2018-12-10 14:17:00','2018-12-10 14:11:00'),('A062',51,3,'Fremont','A58',23.97,'No onions',1,1,'2018-12-11 01:27:00','D37','P42',1,'2018-12-11 01:45:00',1,'2018-12-11 01:51:00',1,'2018-12-11 02:13:00',1,'2018-12-11 02:30:00','2018-12-11 02:41:00'),('A063',54,2,'Milpitas','A61',25.98,NULL,1,1,'2018-12-12 11:55:00','D38','P45',1,'2018-12-12 12:08:00',1,'2018-12-12 12:15:00',1,'2018-12-12 12:38:00',1,'2018-12-12 13:00:00','2018-12-12 12:53:00'),('A064',54,4,'Fremont','A61',79.96,'give curry separately',1,1,'2019-02-19 13:48:00','D39','P45',1,'2019-02-19 13:58:00',1,'2019-02-19 14:04:00',1,'2019-02-19 14:44:00',1,'2019-02-19 15:06:00','2019-02-19 14:54:00'),('A065',54,6,'Menlo park','A61',137.94,'Extra Cheese',1,1,'2019-03-01 17:26:00','D40','P45',1,'2019-03-01 17:36:00',1,'2019-03-01 17:40:00',1,'2019-03-01 18:13:00',1,'2019-03-01 18:28:00','2019-03-01 18:17:00'),('A066',55,20,'Mountain view','A62',359.00,NULL,0,0,'2019-02-22 12:51:00','D38','P46',1,'2019-02-22 13:11:00',1,'2019-02-22 13:13:00',1,'2019-02-22 13:34:00',1,'2019-02-22 13:50:00','2019-02-22 14:06:00'),('A067',56,7,'Atherton','A63',62.65,'Extra Spicy',0,0,'2019-02-15 11:20:00','D38','P47',1,'2019-02-15 11:30:00',1,'2019-02-15 11:35:00',1,'2019-02-15 00:10:00',1,'2019-02-15 00:30:00','2019-02-15 00:20:00'),('A068',56,2,'Milpitas','A63',23.90,NULL,1,1,'2019-02-16 14:05:00','D38','P-COD',1,'2019-02-16 14:21:00',1,'2019-02-16 14:27:00',1,'2019-02-16 15:10:00',1,'2019-02-16 15:30:00','2019-02-16 15:22:00'),('A069',56,4,'Menlo park','A63',63.80,'Less Spicy',1,1,'2019-02-15 23:20:00','D34','P47',1,'2019-02-15 23:25:00',1,'2019-02-15 23:30:00',1,'2019-02-15 12:05:00',1,'2019-02-15 12:35:00','2019-02-15 12:20:00'),('A070',57,1,'Woodhurst','A64',17.95,NULL,1,0,'2019-01-29 07:30:00','D34','P48',1,'2019-01-29 07:46:00',1,'2019-01-29 07:52:00',1,'2019-01-29 08:20:00',1,'2019-01-29 08:48:00','2019-01-29 08:26:00'),('A071',57,4,'Mountain view','A64',71.80,NULL,1,1,'2019-02-14 09:25:00','D32','P48',1,'2019-02-14 09:36:00',1,'2019-02-14 09:39:00',1,'2019-02-14 10:10:00',1,'2019-02-14 10:36:00','2019-02-14 10:16:00'),('A072',58,3,'Woodhurst','A65',62.85,'Add extra ginger',1,1,'2019-01-07 17:27:00','D1','P49',1,'2019-01-07 17:42:00',1,'2019-01-07 17:46:00',1,'2019-01-07 18:20:00',1,'2019-01-07 18:41:00','2019-01-07 18:29:00'),('A073',58,3,'Menlo park','A65',31.50,'Please add extra topping',1,1,'2019-01-08 20:47:00','D28','P49',1,'2019-01-08 21:04:00',1,'2019-01-08 21:09:00',1,'2019-01-08 21:40:00',1,'2019-01-08 21:56:00','2019-01-08 22:02:00'),('A074',58,3,'Atherton','A65',26.97,NULL,1,1,'2018-10-22 02:26:00','D29','P49',1,'2018-10-22 02:41:00',0,NULL,0,NULL,0,NULL,NULL),('A075',59,2,'Mountain view','A60',25.00,NULL,1,1,'2019-01-11 07:27:00','D24','P50',1,'2019-01-11 07:39:00',1,'2019-01-11 07:46:00',1,'2019-01-11 08:14:00',1,'2019-01-11 08:29:00','2019-01-11 08:39:00'),('A076',59,2,'Atherton','A60',31.98,NULL,1,1,'2019-02-11 20:06:00','D24','P50',1,'2019-02-11 20:16:00',1,'2019-02-11 20:21:00',1,'2019-02-11 20:48:00',1,'2019-02-11 21:05:00','2019-02-11 21:00:00'),('A077',59,4,'Milpitas','A60',67.96,'No Mushrooms',1,0,'2019-01-23 07:37:00','D1','P50',1,'2019-01-23 07:47:00',1,'2019-01-23 07:54:00',1,'2019-01-23 08:33:00',1,'2019-01-23 08:58:00','2019-01-23 08:40:00'),('A078',59,5,'Fremont','A60',74.95,'Please add extra topping',1,0,'2019-01-29 07:30:00','D21','P50',1,'2019-01-29 07:46:00',1,'2019-01-29 07:51:00',1,'2019-01-29 08:29:00',1,'2019-01-29 08:52:00','2019-01-29 08:34:00'),('A079',60,4,'Atherton','A61',59.96,NULL,1,0,'2019-03-01 17:26:00','D34','P51',1,'2019-03-01 17:36:00',1,'2019-03-01 17:40:00',1,'2019-03-01 18:13:00',1,'2019-03-01 18:28:00','2019-03-01 18:17:00'),('A080',60,2,'Mountain view','A61',27.98,NULL,1,1,'2019-02-22 12:51:00','D35','P51',1,'2019-02-22 13:11:00',1,'2019-02-22 13:13:00',1,'2019-02-22 13:34:00',1,'2019-02-22 13:50:00','2019-02-22 14:06:00');
/*!40000 ALTER TABLE `ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orderfeedback`
--

DROP TABLE IF EXISTS `orderfeedback`;
/*!50001 DROP VIEW IF EXISTS `orderfeedback`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `orderfeedback` AS SELECT 
 1 AS `delivery_exec_id(FK)`,
 1 AS `order_start_time`,
 1 AS `order_placed_time`,
 1 AS `order_confirmed_time`,
 1 AS `order_picked_time`,
 1 AS `order_delivered_time`,
 1 AS `expected_delivery_time`,
 1 AS `rated_person`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Payment` (
  `payment_id` varchar(255) NOT NULL,
  `cust_id (FK)` int(11) NOT NULL,
  `payment_method_type` char(20) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES ('P-COD',99999999,'COD'),('P1',1,'Credit Card'),('P10',10,'Credit Card'),('P11',11,'Credit Card'),('P12',12,'Credit Card'),('P13',13,'Debit card'),('P16',9,'Credit Card'),('P17',10,'Credit Card'),('P18',11,'Credit Card'),('P19',12,'Credit Card'),('P2',2,'Credit Card'),('P20',13,'Credit Card'),('P21',7,'Credit Card'),('P22',14,'Credit Card'),('P24',17,'Credit Card'),('P25',18,'Credit Card'),('P26',19,'Credit Card'),('P27',20,'Credit Card'),('P28',22,'Debit card'),('P3',3,'Credit Card'),('P30',24,'Credit Card'),('P31',25,'Credit Card'),('P32',26,'Credit Card'),('P33',27,'Credit Card'),('P34',28,'Debit card'),('P36',31,'Credit Card'),('P37',32,'Credit Card'),('P38',33,'Credit Card'),('P39',34,'Credit Card'),('P4',4,'Credit Card'),('P40',49,'Debit card'),('P41',50,'Debit card'),('P42',51,'Credit Card'),('P43',52,'Credit Card'),('P44',53,'Credit Card'),('P45',54,'Credit Card'),('P46',55,'Debit card'),('P47',56,'Debit card'),('P48',57,'Debit card'),('P49',58,'Debit card'),('P5',5,'Credit Card'),('P50',59,'Debit card'),('P51',60,'Debit card'),('P52',35,'Credit Card'),('P53',36,'Debit card'),('P54',37,'Credit Card'),('P55',38,'Debit card'),('P56',41,'Credit Card'),('P57',42,'Credit Card'),('P58',46,'Credit Card'),('P59',47,'Credit Card'),('P6',6,'Credit Card'),('P7',7,'Credit Card'),('P8',8,'Credit Card'),('P9',9,'Credit Card');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prop_orders_new`
--

DROP TABLE IF EXISTS `prop_orders_new`;
/*!50001 DROP VIEW IF EXISTS `prop_orders_new`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `prop_orders_new` AS SELECT 
 1 AS `Online_Payments`,
 1 AS `Cash_On_Delivery`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Restaurant`
--

DROP TABLE IF EXISTS `Restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Restaurant` (
  `rest_id` varchar(255) NOT NULL,
  `restaurant_name` char(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price_min` float(20,2) DEFAULT NULL,
  `price_max` float(20,2) DEFAULT NULL,
  `rest_overall_rating` float(20,2) DEFAULT NULL,
  `type` char(50) DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  PRIMARY KEY (`rest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurant`
--

LOCK TABLES `Restaurant` WRITE;
/*!40000 ALTER TABLE `Restaurant` DISABLE KEYS */;
INSERT INTO `Restaurant` VALUES ('R1','Hungry Hound','1000 Lafayette Street, Santa Clara',1.25,10.95,4.20,'American','10:00:00','20:00:00'),('R10','The Table','Willow Street, San Jose',5.00,30.00,4.30,'American','09:00:00','21:00:00'),('R11','Luna Mexican Kitchen','The Alameda, San Jose',7.45,39.99,4.50,'Mexican','09:00:00','21:00:00'),('R12','Naan & Curry','Saratoga Ave, San Jose',2.45,21.45,3.70,'Indian','11:30:00','21:30:00'),('R13','Swaad Indian Cuisine','498 N 13th St, San Jose',4.99,25.99,4.30,'Indian','11:30:00','21:30:00'),('R14','Mango\'s Mexican Grill','The Alameda, San Jose',3.99,29.99,3.90,'Mexican','11:00:00','21:00:00'),('R15','Dia De Pesca','Bascom Ave, San Jose',4.45,25.45,4.30,'Mexican','10:30:00','20:00:00'),('R16','Kettle\'s','El camino Real, SC',3.99,19.99,4.30,'Indian','08:00:00','21:00:00'),('R17','Best Desi Pizza','Bascom Ave, Campbell',2.99,19.99,4.30,'Pizza','10:00:00','21:00:00'),('R18','Papa John\'s Pizza','The Alameda, San Jose',2.45,21.45,3.70,'Pizza','09:30:00','23:30:00'),('R19','Taco Bell','The Alameda, Santa Clara',2.99,19.99,3.70,'Mexican','07:00:00','02:00:00'),('R2','Toppings Tree','Homestead Rd Suite, SC',4.95,14.95,4.10,'Filipino','11:00:00','21:00:00'),('R20','Deedee\'s','Lafayette St, SC',3.45,29.45,4.30,'Indian','11:30:00','21:00:00'),('R21','MOD Pizza','El Camino Real, Santa Clara',3.99,19.99,4.50,'Pizza','10:30:00','22:00:00'),('R22','Ramen Taka','The Alameda, SC',7.99,29.99,4.50,'Japanese','11:30:00','20:30:00'),('R3','Olive Garden Italian Restaurant','Great Mall Dr, Milpitas',3.99,70.00,4.00,'Italian','11:00:00','22:00:00'),('R4','White Elephant','El Camino Real',4.00,30.00,4.20,'Thai','11:00:00','21:30:00'),('R5','Bill\'s Cafe','The Alameda, San Jose',1.45,9.95,4.40,'Breakfast','06:30:00','15:00:00'),('R6','Blurr Kitchen','El Camino Real, Santa Clara',3.45,20.99,4.50,'Southeast Asian','10:00:00','19:00:00'),('R7','Le Papillon','Saratoga Ave, San Jose',12.95,50.95,4.60,'French','17:30:00','21:30:00'),('R8','Hatcho Japanese Cuisine','Franklin Mall, SC',4.99,30.99,4.20,'Japanese','17:00:00','23:00:00'),('R9','La Paloma','El Camino Real, SC',5.99,32.99,4.10,'Mexican','11:00:00','21:00:00');
/*!40000 ALTER TABLE `Restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'FOODEX'
--

--
-- Dumping routines for database 'FOODEX'
--
/*!50003 DROP PROCEDURE IF EXISTS `cust_inactive2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cust_inactive2`()
Insert into Inactive_customers select cust_id from Customer where cust_id In
(Select cust_id from  Cust_activity where Latest_order_time is null and (Year(SYSDATE()) - Year(reg_date)) > 2); ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cust_activity`
--

/*!50001 DROP VIEW IF EXISTS `cust_activity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cust_activity` AS select `c`.`cust_id` AS `cust_id`,max(`o`.`order_placed_time`) AS `Latest_order_time`,max(`c`.`registration_date`) AS `reg_date` from (`customer` `c` left join `order` `o` on((`c`.`cust_id` = `o`.`cust_id(FK)`))) group by `c`.`cust_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderfeedback`
--

/*!50001 DROP VIEW IF EXISTS `orderfeedback`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderfeedback` AS select `o`.`delivery_exec_id(FK)` AS `delivery_exec_id(FK)`,`o`.`order_start_time` AS `order_start_time`,`o`.`order_placed_time` AS `order_placed_time`,`o`.`order_confirmed_time` AS `order_confirmed_time`,`o`.`order_picked_time` AS `order_picked_time`,`o`.`order_delivered_time` AS `order_delivered_time`,`o`.`expected_delivery_time` AS `expected_delivery_time`,`f`.`rated_person` AS `rated_person`,`f`.`rating` AS `rating` from (`order` `o` join `feedback` `f` on(((`o`.`order_id` = `f`.`order_id (FK)`) and (`f`.`rated_person` = 'D')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prop_orders_new`
--

/*!50001 DROP VIEW IF EXISTS `prop_orders_new`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prop_orders_new` AS select count((case when (`order`.`payment_id(FK)` <> 'P-COD') then 1 else NULL end)) AS `Online_Payments`,count((case when (`order`.`payment_id(FK)` = 'P-COD') then 1 else NULL end)) AS `Cash_On_Delivery` from `order` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-13 21:16:16
