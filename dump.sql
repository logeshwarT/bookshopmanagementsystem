-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshopmanagement
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `AdminUsername` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `AdminUsername` (`AdminUsername`),
  UNIQUE KEY `AdminEmail` (`AdminEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'lokesh1','lokesh_123','admin1@gmail.com'),(2,'harish2','harish_123','admin2@gmail.com'),(3,'amarnath3','amarnath_123','admin3@gmail.com');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `AdminID` int DEFAULT NULL,
  PRIMARY KEY (`BookID`),
  KEY `AdminID` (`AdminID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admins` (`AdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (16,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',1200.00,1),(17,'1984','George Orwell','978-0-452-28423-4','Fiction',2000.00,1),(18,'Pride and Prejudice','Jane Austen','978-0-19-953556-9','Fiction',1000.00,1),(19,'The Great Gatsby','F. Scott Fitzgerald','978-0-7432-7356-5','Fiction',800.00,2),(20,'The Catcher in the Rye','J.D. Salinger','978-0-316-76948-0','Fiction',1250.00,2),(21,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',900.00,2),(22,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','978-0-06-231609-7','Non-Fiction',1100.00,3),(23,'A Short History of Nearly Everything','Bill Bryson','978-0-7679-0817-7','Non-Fiction',750.00,3),(24,'The Wright Brothers','David McCullough','978-1-4767-4668-2','Non-Fiction',1300.00,3),(25,'The Guns of August','Barbara W. Tuchman','978-0-345-38623-7','Historical',2300.00,1),(26,'The Nightingale','Kristin Hannah','978-1-250-08397-8','Historical',900.00,1),(27,'All the Light We Cannot See','Anthony Doerr','978-1-5011-1049-2','Historical',850.00,1),(28,'Dune','Frank Herbert','978-0-441-17271-7','Sci-Fi',1300.00,2),(29,'Foundation','Isaac Asimov','978-0-553-29335-7','Sci-Fi',1750.00,2),(30,'Neuromancer','William Gibson','978-0-441-56956-2','Sci-Fi',1800.00,2),(31,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',1200.00,1),(32,'1984','George Orwell','978-0-452-28423-4','Fiction',2000.00,1),(33,'Pride and Prejudice','Jane Austen','978-0-19-953556-9','Fiction',1000.00,1),(34,'The Great Gatsby','F. Scott Fitzgerald','978-0-7432-7356-5','Fiction',800.00,2),(35,'The Catcher in the Rye','J.D. Salinger','978-0-316-76948-0','Fiction',1250.00,2),(36,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',900.00,2),(37,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','978-0-06-231609-7','Non-Fiction',1100.00,3),(38,'A Short History of Nearly Everything','Bill Bryson','978-0-7679-0817-7','Non-Fiction',750.00,3),(39,'The Wright Brothers','David McCullough','978-1-4767-4668-2','Non-Fiction',1300.00,3),(40,'The Guns of August','Barbara W. Tuchman','978-0-345-38623-7','Historical',2300.00,1),(41,'The Nightingale','Kristin Hannah','978-1-250-08397-8','Historical',900.00,1),(42,'All the Light We Cannot See','Anthony Doerr','978-1-5011-1049-2','Historical',850.00,1),(43,'Dune','Frank Herbert','978-0-441-17271-7','Sci-Fi',1300.00,2),(44,'Foundation','Isaac Asimov','978-0-553-29335-7','Sci-Fi',1750.00,2),(45,'Neuromancer','William Gibson','978-0-441-56956-2','Sci-Fi',1800.00,2),(46,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',1200.00,1),(47,'1984','George Orwell','978-0-452-28423-4','Fiction',2000.00,1),(48,'Pride and Prejudice','Jane Austen','978-0-19-953556-9','Fiction',1000.00,1),(49,'The Great Gatsby','F. Scott Fitzgerald','978-0-7432-7356-5','Fiction',800.00,2),(50,'The Catcher in the Rye','J.D. Salinger','978-0-316-76948-0','Fiction',1250.00,2),(51,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',900.00,2),(52,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','978-0-06-231609-7','Non-Fiction',1100.00,3),(53,'A Short History of Nearly Everything','Bill Bryson','978-0-7679-0817-7','Non-Fiction',750.00,3),(54,'The Wright Brothers','David McCullough','978-1-4767-4668-2','Non-Fiction',1300.00,3),(55,'The Guns of August','Barbara W. Tuchman','978-0-345-38623-7','Historical',2300.00,1),(56,'The Nightingale','Kristin Hannah','978-1-250-08397-8','Historical',900.00,1),(57,'All the Light We Cannot See','Anthony Doerr','978-1-5011-1049-2','Historical',850.00,1),(58,'Dune','Frank Herbert','978-0-441-17271-7','Sci-Fi',1300.00,2),(59,'Foundation','Isaac Asimov','978-0-553-29335-7','Sci-Fi',1750.00,2),(60,'Neuromancer','William Gibson','978-0-441-56956-2','Sci-Fi',1800.00,2),(61,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',1200.00,1),(62,'1984','George Orwell','978-0-452-28423-4','Fiction',2000.00,1),(63,'Pride and Prejudice','Jane Austen','978-0-19-953556-9','Fiction',1000.00,1),(64,'The Great Gatsby','F. Scott Fitzgerald','978-0-7432-7356-5','Fiction',800.00,2),(65,'The Catcher in the Rye','J.D. Salinger','978-0-316-76948-0','Fiction',1250.00,2),(66,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',900.00,2),(67,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','978-0-06-231609-7','Non-Fiction',1100.00,3),(68,'A Short History of Nearly Everything','Bill Bryson','978-0-7679-0817-7','Non-Fiction',750.00,3),(69,'The Wright Brothers','David McCullough','978-1-4767-4668-2','Non-Fiction',1300.00,3),(70,'The Guns of August','Barbara W. Tuchman','978-0-345-38623-7','Historical',2300.00,1),(71,'The Nightingale','Kristin Hannah','978-1-250-08397-8','Historical',900.00,1),(72,'All the Light We Cannot See','Anthony Doerr','978-1-5011-1049-2','Historical',850.00,1),(73,'Dune','Frank Herbert','978-0-441-17271-7','Sci-Fi',1300.00,2),(74,'Foundation','Isaac Asimov','978-0-553-29335-7','Sci-Fi',1750.00,2),(75,'Neuromancer','William Gibson','978-0-441-56956-2','Sci-Fi',1800.00,2),(76,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',1200.00,1),(77,'1984','George Orwell','978-0-452-28423-4','Fiction',2000.00,1),(78,'Pride and Prejudice','Jane Austen','978-0-19-953556-9','Fiction',1000.00,1),(79,'The Great Gatsby','F. Scott Fitzgerald','978-0-7432-7356-5','Fiction',800.00,2),(80,'The Catcher in the Rye','J.D. Salinger','978-0-316-76948-0','Fiction',1250.00,2),(81,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',900.00,2),(82,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','978-0-06-231609-7','Non-Fiction',1100.00,3),(83,'A Short History of Nearly Everything','Bill Bryson','978-0-7679-0817-7','Non-Fiction',750.00,3),(84,'The Wright Brothers','David McCullough','978-1-4767-4668-2','Non-Fiction',1300.00,3),(85,'The Guns of August','Barbara W. Tuchman','978-0-345-38623-7','Historical',2300.00,1),(86,'The Nightingale','Kristin Hannah','978-1-250-08397-8','Historical',900.00,1),(87,'All the Light We Cannot See','Anthony Doerr','978-1-5011-1049-2','Historical',850.00,1),(88,'Dune','Frank Herbert','978-0-441-17271-7','Sci-Fi',1300.00,2),(89,'Foundation','Isaac Asimov','978-0-553-29335-7','Sci-Fi',1750.00,2),(90,'Neuromancer','William Gibson','978-0-441-56956-2','Sci-Fi',1800.00,2),(91,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',1200.00,1),(92,'1984','George Orwell','978-0-452-28423-4','Fiction',2000.00,1),(93,'Pride and Prejudice','Jane Austen','978-0-19-953556-9','Fiction',1000.00,1),(94,'The Great Gatsby','F. Scott Fitzgerald','978-0-7432-7356-5','Fiction',800.00,2),(95,'The Catcher in the Rye','J.D. Salinger','978-0-316-76948-0','Fiction',1250.00,2),(96,'To Kill a Mockingbird','Harper Lee','978-0-06-112008-4','Fiction',900.00,2),(97,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','978-0-06-231609-7','Non-Fiction',1100.00,3),(98,'A Short History of Nearly Everything','Bill Bryson','978-0-7679-0817-7','Non-Fiction',750.00,3),(99,'The Wright Brothers','David McCullough','978-1-4767-4668-2','Non-Fiction',1300.00,3),(100,'The Guns of August','Barbara W. Tuchman','978-0-345-38623-7','Historical',2300.00,1),(101,'The Nightingale','Kristin Hannah','978-1-250-08397-8','Historical',900.00,1),(102,'All the Light We Cannot See','Anthony Doerr','978-1-5011-1049-2','Historical',850.00,1),(103,'Dune','Frank Herbert','978-0-441-17271-7','Sci-Fi',1300.00,2),(104,'Foundation','Isaac Asimov','978-0-553-29335-7','Sci-Fi',1750.00,2),(105,'Neuromancer','William Gibson','978-0-441-56956-2','Sci-Fi',1800.00,2);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `CartID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `BookID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CartID`),
  KEY `UserID` (`UserID`),
  KEY `BookID` (`BookID`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (13,1,16,2,2400.00),(14,1,17,1,2000.00),(15,2,18,3,3000.00),(16,3,19,1,800.00),(17,4,20,2,2500.00),(18,5,21,1,900.00),(19,1,16,2,2400.00),(20,1,17,1,2000.00),(21,2,18,3,3000.00),(22,3,19,1,800.00),(23,4,20,2,2500.00),(24,5,21,1,900.00),(25,1,16,2,2400.00),(26,1,17,1,2000.00),(27,2,18,3,3000.00),(28,3,19,1,800.00),(29,4,20,2,2500.00),(30,5,21,1,900.00),(31,1,16,2,2400.00),(32,1,17,1,2000.00),(33,2,18,3,3000.00),(34,3,19,1,800.00),(35,4,20,2,2500.00),(36,5,21,1,900.00);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe','johndoe','password_1','johndoe@gmail.com'),(2,'Jane','Smith','janesmith','password_2','janesmith@gmail.com'),(3,'Alice','Johnson','alicej','password_3','alice@gmail.com'),(4,'Bob','Wilson','bobw','password_4','bob@gmail.com'),(5,'Eva','Brown','evab','password_5','eva@gmail.com'),(6,'David','Lee','davidl','password_6','david@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06 14:26:23
