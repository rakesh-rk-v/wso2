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
-- Table structure for table `sub_api_master`
--

DROP TABLE IF EXISTS `sub_api_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_api_master` (
  `api_id` int NOT NULL AUTO_INCREMENT,
  `sub_api_id` varchar(255) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `market` varchar(100) DEFAULT NULL,
  `subtype` varchar(50) DEFAULT NULL,
  `process_id` int DEFAULT NULL,
  `process_name` varchar(255) DEFAULT NULL,
  `enable_flag` tinyint(1) DEFAULT NULL,
  `request_type` varchar(70) DEFAULT NULL,
  `http_method` varchar(20) DEFAULT NULL,
  `sub_endpoint` varchar(255) DEFAULT NULL,
  `request_template_id` varchar(255) DEFAULT NULL,
  `dep_proc_id` varchar(255) DEFAULT NULL,
  `output_params` text,
  `retry` int DEFAULT NULL,
  `error_code` int DEFAULT NULL,
  `api_desc` text,
  `updated_by` varchar(100) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`api_id`),
  KEY `fk_sub_api_master_api_master` (`sub_api_id`),
  CONSTRAINT `fk_sub_api_master_api_master` FOREIGN KEY (`sub_api_id`) REFERENCES `api_master` (`sub_api_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_api_master`
--

LOCK TABLES `sub_api_master` WRITE;
/*!40000 ALTER TABLE `sub_api_master` DISABLE KEYS */;
INSERT INTO `sub_api_master` VALUES (1,'customer_onboarding','UOL','',NULL,1,'eligibility_check',1,'JSON','POST','eligibilityCheck','',NULL,NULL,NULL,NULL,NULL,'suresh','2023-12-10 08:44:07','2023-12-10 08:44:07'),(2,'customer_onboarding','EB',NULL,NULL,2,'customer_create',1,'SOAP','POST','customer.create','customer_create_template','1','csid',NULL,NULL,NULL,'suresh','2023-12-10 08:44:07','2023-12-10 08:44:07'),(3,'customer_onboarding','EB',NULL,NULL,3,'contract_create',1,'SOAP','POST','contract.create','customer_contr_create_template','2','contrcode',NULL,NULL,NULL,'suresh','2023-12-10 08:44:07','2023-12-10 08:44:37'),(4,'customer_onboarding','EB',NULL,NULL,4,'kycCheck',1,'JSON','POST','kyccalling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-11 12:27:12','2023-12-11 12:30:28'),(7,'customer_onboarding','EB',NULL,NULL,5,'msisdn',NULL,'JSON','POST','msisdnvalidation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-11 12:27:12','2023-12-11 12:30:28'),(8,'customer_onboarding','EB',NULL,NULL,6,'outstanding',NULL,'JSON','POST','outstandingEligibilityCheck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-11 12:27:12','2023-12-11 12:30:28'),(9,'customer_onboarding','EB',NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-12-11 12:27:13','2023-12-11 12:27:13');
/*!40000 ALTER TABLE `sub_api_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 14:46:21
