CREATE DATABASE  IF NOT EXISTS `company_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `company_1`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: company_1
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CID` int NOT NULL,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `LID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (501,'Ravi','Kumar',203),(502,'Shivani','Rai',205),(503,'Kiran','Raj',201),(504,'Arjun','Singh',212),(505,'Abhijit','Gowda',206),(506,'Kiran','Das',204),(507,'Hema','Shetty',213),(508,'Nisha','Pillai',202),(509,'Vinay','Iyer',210),(510,'Meera','Suresh',215),(511,'Raghav','Rani',209),(512,'Lakshmi','Patil',204),(513,'Anand','Bhat',207),(514,'Kavya','Nair',211),(515,'Pranav','Shetty',202),(516,'Sita','Pillai',205),(517,'Mohan','Nambiar',201),(518,'Neha','Varma',214),(519,'Karthik','Menon',213),(520,'Riya','Iyer',208);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `DNO` int NOT NULL,
  `DNAME` varchar(45) NOT NULL,
  `LID` int DEFAULT NULL,
  PRIMARY KEY (`DNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (110,'Sales',203),(111,'Marketing',203),(112,'Finance',202),(113,'IT',201),(114,'HR',202);
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `EID` int NOT NULL,
  `FNAME` varchar(20) NOT NULL,
  `LNAME` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `GENDER` varchar(2) NOT NULL,
  `JOB` varchar(20) NOT NULL,
  `MGR` int DEFAULT NULL,
  `DOJ` date NOT NULL,
  `SAL` decimal(10,2) NOT NULL,
  `COMM` decimal(10,2) DEFAULT NULL,
  `DNO` int DEFAULT NULL,
  `CID` int DEFAULT NULL,
  PRIMARY KEY (`EID`),
  KEY `fn_index` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1601,'Siddarth','Patil','1985-11-24','M','Ceo',NULL,'2016-01-16',500000.00,NULL,113,NULL),(1602,'Hema','Shetty','1996-03-20','F','Hr',1601,'2016-10-20',150000.00,NULL,114,507),(1701,'Rahul','Mukharjee','1991-02-19','M','Manager',1602,'2017-04-17',100000.00,NULL,111,NULL),(1702,'Sameer','Khan','1995-04-20','M','Manager',1602,'2017-07-07',120000.00,NULL,110,NULL),(1801,'Jahnavi','Naik','1996-04-11','F','Dispatcher',1702,'2020-03-15',45000.00,1000.00,110,NULL),(1901,'Shivani','Rai','1998-11-07','F','Tester',1601,'2019-12-12',45000.00,NULL,113,502),(1902,'Abhijit','Gowda','1997-12-25','M','Dispatcher',1702,'2019-12-28',50000.00,NULL,110,505),(1903,'Karan','Bhat','1997-12-26','M','Salesman',1701,'2019-12-26',45000.00,NULL,111,NULL),(2001,'Murali','Krishnan','1998-06-08','M','Dispatcher',1702,'2020-03-15',45000.00,1000.00,110,NULL),(2002,'Dharani','Patil','1998-11-10','F','Developer',1601,'2021-06-20',30000.00,3000.00,113,NULL),(2101,'Rashmi','Gowda','1995-10-03','F','Salesman',1701,'2021-01-02',45000.00,3000.00,111,NULL),(2102,'Fariya','Taj','1999-01-03','F','Developer',1601,'2021-03-01',32000.00,3600.00,113,NULL),(2103,'Priya','Shetty','1998-03-20','F','Accountant',1602,'2021-05-01',32000.00,3600.00,112,NULL),(2104,'Aman','Rai','1998-08-15','M','Salesman',1701,'2021-12-26',40000.00,NULL,111,NULL),(2201,'Kiran','Raj','1999-09-21','M','Accountant',1602,'2022-08-28',30000.00,3600.00,112,503);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LID` int NOT NULL,
  `LOCATION` varchar(45) NOT NULL,
  `CITY` varchar(45) NOT NULL,
  `STATE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (201,'Koramangala','Bangalore','Karnataka'),(202,'Hitech City','Hyderabad','Telangana'),(203,'T. Nagar','Chennai','Tamil Nadu'),(204,'Peelamedu','Coimbatore','Tamil Nadu'),(205,'Fort Kochi','Kochi','Kerala'),(206,'Jayalakshmipuram','Mysore','Karnataka'),(207,'MVP Colony','Visakhapatnam','Andhra Pradesh'),(208,'Alwarpet','Chennai','Tamil Nadu'),(209,'Chandragiri','Tirupati','Andhra Pradesh'),(210,'Kowdiar','Thiruvananthapuram','Kerala'),(211,'Gadag Road','Hubli','Karnataka'),(212,'Benz Circle','Vijayawada','Andhra Pradesh'),(213,'Kondalampatti','Salem','Tamil Nadu'),(214,'Vellayambalam','Trivandrum','Kerala'),(215,'Hanamkonda','Warangal','Telangana');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ORDER_ID` int NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `ORDER_DATE` date NOT NULL,
  `DELIVERY_DATE` date NOT NULL,
  `EID` int NOT NULL,
  `CID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1111,3,'2024-03-18','2024-03-25',1801,502),(1112,1,'2024-03-22','2024-04-01',1801,505),(1113,11,'2024-04-01','2024-04-06',1902,510),(1114,2,'2024-04-12','2024-04-18',1801,503),(1115,12,'2024-04-25','2024-05-02',2001,511),(1116,1,'2024-04-30','2024-05-05',1902,509),(1117,3,'2024-05-06','2024-05-12',2001,507),(1118,4,'2024-05-15','2024-05-20',1902,512),(1119,2,'2024-05-18','2024-05-25',1801,514),(1120,14,'2024-05-20','2024-05-28',1801,501),(1121,9,'2024-05-25','2024-06-02',2001,511),(1122,11,'2024-06-02','2024-06-09',1902,503),(1123,6,'2024-06-07','2024-06-14',1801,508),(1124,3,'2024-06-15','2024-06-20',1902,515),(1125,5,'2024-06-21','2024-06-30',2001,505),(1126,7,'2024-06-25','2024-07-01',1801,502),(1127,4,'2024-07-01','2024-07-07',1902,503),(1128,3,'2024-07-05','2024-07-12',2001,511),(1129,6,'2024-07-12','2024-07-18',1801,510),(1130,14,'2024-07-18','2024-07-25',1902,512),(1131,2,'2024-07-22','2024-07-29',2001,505),(1132,9,'2024-08-02','2024-08-08',1801,508),(1133,4,'2024-08-05','2024-08-12',1902,506),(1134,7,'2024-08-10','2024-08-17',2001,509),(1135,6,'2024-08-15','2024-08-21',1801,515);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `PRODUCT_ID` int NOT NULL,
  `PNAME` varchar(45) NOT NULL,
  `PRICE` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smartphone',22999.00),(2,'Laptop',59999.00),(3,'Headphones',4499.00),(4,'Smartwatch',14999.00),(5,'Tablet',29999.00),(6,'Bluetooth Speaker',6499.00),(7,'Camera',37999.00),(8,'External Hard Drive',9999.00),(9,'Monitor',19999.00),(10,'Keyboard',2499.00),(11,'Mouse',1499.00),(12,'Printer',10999.00),(13,'VR Headset',29999.00),(14,'Game Console',22999.00),(15,'USB Flash Drive',999.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud`
--

DROP TABLE IF EXISTS `stud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud` (
  `ID` int DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud`
--

LOCK TABLES `stud` WRITE;
/*!40000 ALTER TABLE `stud` DISABLE KEYS */;
INSERT INTO `stud` VALUES (1,'RANGA%SWAMY'),(2,'SUMANTH_K_R'),(3,'%AKASH%G'),(4,'PAVAN_MN');
/*!40000 ALTER TABLE `stud` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 10:36:21
