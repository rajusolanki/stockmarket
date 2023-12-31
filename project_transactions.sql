-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `tran_time` timestamp NULL DEFAULT NULL,
  `trans_price` decimal(10,0) DEFAULT NULL,
  `stock_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `trans_qty` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `fk_stock3` (`stock_id`),
  KEY `fk_user4` (`user_id`),
  CONSTRAINT `fk_stock3` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user4` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (10000,'2021-03-22 13:55:21',3000,3,1014,'B',NULL),(10001,'2021-03-22 14:00:26',3000,3,1014,'S',NULL),(10002,'2021-03-22 14:01:40',3000,3,1014,'B',NULL),(10003,'2021-03-22 14:10:13',1000,4,1014,'B',NULL),(10004,'2021-03-22 14:21:41',3000,3,1014,'S',NULL),(10005,'2021-03-22 14:23:22',3000,3,1014,'B',NULL),(10006,'2021-03-22 14:35:42',3000,3,1014,'B',NULL),(10007,'2021-03-22 15:02:46',3000,2,1014,'B',NULL),(10008,'2021-03-22 15:10:26',3000,2,1014,'S',NULL),(10009,'2021-03-22 15:13:46',3000,2,1014,'B',NULL),(10010,'2021-03-22 15:15:17',3000,2,1014,'B',NULL),(10011,'2021-03-22 15:15:39',3000,2,1014,'S',NULL),(10012,'2021-03-22 15:46:29',3000,3,1014,'S',NULL),(10013,'2021-03-22 15:46:47',1000,4,1014,'S',NULL),(10014,'2021-03-22 15:47:16',3000,2,1014,'B',NULL),(10015,'2021-03-22 15:47:53',10000,5,1014,'B',NULL),(10016,'2021-03-22 15:48:14',10000,5,1014,'S',NULL),(10017,'2021-03-22 15:50:28',3000,3,1014,'S',NULL),(10018,'2021-03-22 15:54:38',3000,2,1014,'S',400),(10019,'2021-03-22 15:57:20',3000,2,1014,'B',1000),(10020,'2021-03-22 17:55:09',3000,3,1000,'B',99),(10021,'2021-03-22 17:55:18',10000,5,1000,'B',400),(10022,'2021-03-22 17:57:22',10000,5,1015,'B',1000);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23 12:33:00
