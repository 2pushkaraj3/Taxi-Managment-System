CREATE DATABASE  IF NOT EXISTS `taxidb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taxidb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: taxidb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_data`
--

DROP TABLE IF EXISTS `auth_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_data` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(500) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_data`
--

LOCK TABLES `auth_data` WRITE;
/*!40000 ALTER TABLE `auth_data` DISABLE KEYS */;
INSERT INTO `auth_data` VALUES (1,'shrey@gmail.com','$2b$10$CjTgkcuRMUAGOExtCVs3D.SpqaT0xRxfowhjtSvaJ7LE10VWpoXU2','customer'),(2,'dhyey@gmail.com','$2b$10$Xd4.FwDf7l3h.r6vh7/WFOTmlBuXIQfxGMPYK/do5fnQmvDvP7Jlu','driver'),(3,'dhruv@gmail.com','$2b$10$f1yPJIJFSPiyMkSgILD7auO9E2YMH6luRT9K3gOL//c3yp4ZUTZAy','customer'),(4,'parth@gmail.com','$2b$10$Ahy9MY6bcRpalLXgVfKrwewxz5aNxt6hwPV2MnHy2bIy/FMIvygcS','customer'),(5,'raja@gmail.com','$2b$10$Enkq9pC15CPE/uhWCRGcYe/19c.qOe6qPBq1D0KuA23CrrlkpgkGy','customer'),(6,'kewal@gmail.com','$2b$10$b1XibssQvWfxmKCiby9Ot.pjd2zFTOqIB7DXCxjTYSVEfagc75CU6','driver'),(7,'tanisha@gmail.com','$2b$10$X1a3xOjCKKWoJki2owG/teBRQnetLtSen12SG7xl6of1MSDM76m5m','driver'),(8,'rashiya@gmail.com','$2b$10$xymjgVF.Fa9r8BKKl7uKPuEg/S0sZqJMY3Sl4J4ji73wr88AfxQ5K','driver'),(65,'ajinkya@gmail.com','$2b$10$kwyx3Nzmh1L9wCbCQcXv/OEANNbIw3uNnQ4i1zjRQg0flmXKpQRQ.','driver'),(66,'pushkaraj@gmail.com','$2b$10$ykOl71j5geTF1YHn5kZZ3.ia3KA1gqtuifyYL0N1Vxl4pwAZ9bclK','customer');
/*!40000 ALTER TABLE `auth_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_details` (
  `Bill_no` int NOT NULL,
  `Bill_date` varchar(12) NOT NULL,
  `Total_amount` varchar(10) NOT NULL,
  `User_User_id` int NOT NULL,
  `Trip_details_Trip_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Bill_no`),
  KEY `fk_Bill_details_User1_idx` (`User_User_id`),
  KEY `fk_Bill_details_Trip_details1_idx` (`Trip_details_Trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (1,'27-04-2022','110',202051118,4),(2,'29-04-2022','50',202051118,5),(3,'27-04-2022','65',202051118,6),(4,'29-04-2022','45',202051118,7),(5,'29-04-2022','76',202051053,8),(6,'29-04-2022','67',202051053,9),(7,'28-04-2022','55',202051053,10),(8,'30-04-2022','125',202051053,11),(9,'28-04-2022','120',202051153,12),(10,'29-04-2022','96',202051153,13),(11,'29-04-2022','30',202051153,14),(12,'29-04-2022','47',202051151,15),(13,'30-04-2022','64',202051151,16),(14,'30-04-2022','78',202051151,17),(15,'27-04-2022','130',202051149,18),(16,'28-04-2022','160',202051149,19),(17,'29-04-2022','320',202051149,20),(18,'30-04-2022','78',202051149,21);
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `User_id` int NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Contact_no` varchar(12) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Taxi_Taxi_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_User_Taxi_idx` (`Taxi_Taxi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202051127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (202051053,'Parth','Chandravadiya','9876543210','Rajkot',1,'parth@gmail.com'),(202051118,'Shrey','Mehta','9510822230','Naranpura,Ahmedabad',2,'shrey@gmail.com'),(202051149,'Pushka','Raj','9432143126','Pune,Maharashtra',3,'pushkaraj@gmail.com'),(202051151,'Raja','Safi','9543215673','Uttar Pradesh',4,'raja@gmail.com'),(202051153,'Dhruv','Rashiya','9821343210','Rajlabdhi Heritage',5,'dhruv@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Contact_no` varchar(12) NOT NULL,
  `Rating` varchar(6) NOT NULL DEFAULT '5',
  `email` varchar(255) NOT NULL,
  `License_no` varchar(45) NOT NULL,
  PRIMARY KEY (`Driver_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=202051199 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (202051001,'Tanisha','Mehta','9234543215','5','tanisha@gmail.com','GJ0231347689'),(202051060,'kewal','delhiwala','9543215673','5','kewal@gmail.com','GJ0231347689'),(202051064,'Dhruv','Dave','9543215673','5','rashiya@gmail.com','GJ0132145871'),(202051065,'Dhyey','Savaliya','9821343210','5','dhyey@gmail.com','G1234567854'),(202051198,'Ajinkya','Sontakke','9453215467','5','ajinkya@gmail.com','GJ01234321569');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Feedback_id` int NOT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `Rating` varchar(5) NOT NULL,
  `User_User_id` int DEFAULT NULL,
  `Bill_details_Bill_no` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Feedback_id`),
  KEY `fk_Feedback_User1_idx` (`User_User_id`),
  KEY `fk_Feedback_Bill_details1_idx` (`Bill_details_Bill_no`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,' Safe ride','shrey@gmail.com','5',202051118,2),(2,'The seats are a little bit uncomfortable','shrey@gmail.com','3',202051118,3),(3,'Nice ride','shrey@gmail.com','4',202051118,4),(4,'Good service','shrey@gmail.com','5',202051118,5),(5,'Excellent service','parth@gmail.com','5',202051053,6),(6,'Expert navigation','parth@gmail.com','4',202051053,7),(7,'Great conversation','parth@gmail.com','4',202051053,8),(8,'Neat and Tidy','parth@gmail.com','5',202051053,9),(9,'Bad experience','dhruv@gmail.com','1',202051153,10),(10,'Nice service','dhruv@gmail.com','4',202051153,11),(11,'Expert navigation','dhruv@gmail.com','5',202051153,12),(12,'Neat and Tidy','raja@gmail.com','4',202051151,13),(13,'Great conversation','raja@gmail.com','4',202051151,14),(14,'Very slow ride','raja@gmail.com','2',202051151,15),(15,'Good ride but driver has taken long route to reach','pushkaraj@gmail.com','3',202051149,16),(16,'Excellent service','pushkaraj@gmail.com','5',202051149,17),(17,'Very bad service','pushkaraj@gmail.com','1',202051149,18),(18,'Very slow ride','pushkaraj@gmail.com','2',202051149,19);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxi`
--

DROP TABLE IF EXISTS `taxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxi` (
  `Taxi_id` int NOT NULL,
  `Registration_no` varchar(15) NOT NULL,
  `Model` varchar(25) NOT NULL,
  `Taxi_type` varchar(10) NOT NULL,
  `Driver_Driver_id` int NOT NULL AUTO_INCREMENT,
  `driver_email` varchar(100) NOT NULL,
  PRIMARY KEY (`Taxi_id`),
  UNIQUE KEY `driver_email_UNIQUE` (`driver_email`),
  KEY `fk_Taxi_Driver1_idx` (`Driver_Driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxi`
--

LOCK TABLES `taxi` WRITE;
/*!40000 ALTER TABLE `taxi` DISABLE KEYS */;
INSERT INTO `taxi` VALUES (1,'5432167213','Audi','Prime',1,'dhyey@gmail.com'),(2,'1245637485','Swift Desire','SUV',2,'kewal@gmail.com'),(3,'1245637485','Mercedes Benz','Prime',3,'tanisha@gmail.com'),(4,'43898401092','Wagonr','SUV',4,'rashiya@gmail.com'),(5,'5643678021','Honda City','SUV',5,'ajinkya@gmail.com');
/*!40000 ALTER TABLE `taxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_details`
--

DROP TABLE IF EXISTS `trip_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_details` (
  `Trip_id` int NOT NULL,
  `Trip_date` varchar(12) NOT NULL,
  `Trip_amount` varchar(10) NOT NULL,
  `Start_time` varchar(10) NOT NULL,
  `End_time` varchar(10) NOT NULL,
  `Pickup_address` varchar(100) NOT NULL,
  `Destination_address` varchar(100) NOT NULL,
  `User_User_id` int NOT NULL,
  `User_Taxi_Taxi_id` int NOT NULL,
  `Driver_Driver_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Trip_id`),
  KEY `fk_Trip_details_User1_idx` (`User_User_id`,`User_Taxi_Taxi_id`),
  KEY `fk_Trip_details_Driver1_idx` (`Driver_Driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_details`
--

LOCK TABLES `trip_details` WRITE;
/*!40000 ALTER TABLE `trip_details` DISABLE KEYS */;
INSERT INTO `trip_details` VALUES (1,'27-04-2022','110','9:30 pm','10:30 pm','Rajlabdhi heritage','Ahmedabad',202051118,1,1),(2,'27-04-2022','65','4:30 pm','4:50 pm','Infocity, Gandhinagar','Sargasan, Gandhinagar',202051118,1,2),(3,'29-04-2022','50','8:30 am','8:45 am','Rajlabdhi Heritage','Kudasan',202051118,2,3),(4,'29-04-2022','45','12:32 pm','12:46 pm','Kudasan','Rajlabdhi Heritage',202051118,4,4),(5,'29-04-2022','76','5:17 pm ','5:38 pm ','Rajlabhi Heritage','Infocity',202051053,5,5),(6,'29-04-2022','67','8:32 pm','8:50 pm','Naranpura,Ahmedabad','Vastrapur,Ahmedabad',202051053,3,6),(7,'28-04-2022','55','6:31 pm','6:59 pm','Rajlabdhi heritage','Kudasan',202051053,2,7),(8,'30-04-2022','125','2:57 pm','3:45 pm','Sargasan, Gandhinagar','Vastrapur,Ahmedabad',202051053,3,8),(9,'28-04-2022','120','7:45 pm','8:30 pm','Infocity','S.G Highway',202051153,5,9),(10,'29-04-2022','96','6:21 pm','6:45 pm','Kudasan','Vastrapur,Ahmedabad',202051153,4,10),(11,'29-04-2022','30','3:50 pm','4:05 pm','Bhaijipura','Rajlabdhi Heritage',202051153,2,11),(12,'29-04-2022','47','10:40 pm','11:00 pm','S.G Highway','Himalaya Mall',202051151,3,12),(13,'30-04-2022','64','9:23 am','9:40 am','Bhaijipura','Sargasan',202051151,1,13),(14,'30-04-2022','78','3:04 pm','3:22 pm','Sargasan','Bhaijipura',202051151,5,14),(15,'27-04-2022','130','9:00 pm','10:01 pm','Rajlabdhi Heritage','Naranpura',202051149,4,15),(16,'28-04-2022','160','8:30 am','9:43 am','Naranpura','Bhaijipura',202051149,1,16),(17,'29-04-2022','320','2:03 pm','3:19 pm','Rajlabdhi Heritage','S.G Highway',202051149,2,17),(18,'30-04-2022','78','6:07 pm','6:29 pm','Sargasan','Infocity',202051149,3,18);
/*!40000 ALTER TABLE `trip_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 23:06:24
