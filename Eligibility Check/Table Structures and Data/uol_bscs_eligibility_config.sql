-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: uol_bscs
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `eligibility_config`
--

DROP TABLE IF EXISTS `eligibility_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eligibility_config` (
  `ec_id` int NOT NULL AUTO_INCREMENT,
  `sub_api_id` varchar(255) DEFAULT NULL,
  `description` text,
  `kycCheck` tinyint(1) DEFAULT '0',
  `msisdn` tinyint(1) DEFAULT '0',
  `prgcheck` tinyint(1) DEFAULT '0',
  `outstanding` tinyint(1) DEFAULT '0',
  `connLimit` tinyint(1) DEFAULT '0',
  `tmcodeCheck` tinyint(1) DEFAULT '0',
  `reasonCheck` tinyint(1) DEFAULT '0',
  `contrStatus` tinyint(1) DEFAULT '0',
  `simStatus` tinyint(1) DEFAULT '0',
  `MAHstatus` tinyint(1) DEFAULT '0',
  `pendingTrans` tinyint(1) DEFAULT '0',
  `pendingTicktets` tinyint(1) DEFAULT '0',
  `updated_by` varchar(100) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eligibility_config`
--

LOCK TABLES `eligibility_config` WRITE;
/*!40000 ALTER TABLE `eligibility_config` DISABLE KEYS */;
INSERT INTO `eligibility_config` VALUES (1,'customer_onboarding','customer onboarding elibility check',0,0,0,0,0,0,0,0,0,0,0,0,'suresh','2023-12-10 08:46:40','2023-12-12 09:07:55'),(2,'pre-post','Customer Changing from Pre To Post',1,0,0,1,0,0,0,0,0,0,0,0,'rakesh','2023-12-11 04:06:01','2023-12-12 04:57:19');
/*!40000 ALTER TABLE `eligibility_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 14:46:19
