-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: poc_teste_romulo
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `repositorios`
--

DROP TABLE IF EXISTS `repositorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repositorios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `estrelas` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_UNIQUE` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositorios`
--

LOCK TABLES `repositorios` WRITE;
/*!40000 ALTER TABLE `repositorios` DISABLE KEYS */;
INSERT INTO `repositorios` VALUES (1,'repo-searcher','https://github.com/romulo/robot',150),(2,'cloudcv-bootstrap','https://github.com/CloudCV/cloudcv-bootstrap',76),(3,'OpenCV-Kotlin-Starter','https://github.com/ramonrabello/OpenCV-Kotlin-Starter',73),(4,'vuletube','https://github.com/zlatnaspirala/vuletube',15),(5,'opencv_ios_starter','https://github.com/bipark/opencv_ios_starter',2),(6,'AndroidJNI','https://github.com/pragyanatvade/AndroidJNI',2),(7,'SimpleCvCam','https://github.com/huiyingShen/SimpleCvCam',2),(8,'opencv-android-starter-project','https://github.com/toddharding/opencv-android-starter-project',1),(9,'opencv_starter','https://github.com/alfed7/opencv_starter',1),(10,'Opencv-Android-Native-Starter','https://github.com/gps08/Opencv-Android-Native-Starter',1),(11,'Ball_OpenCv','https://github.com/AmshuBelbase/Ball_OpenCv',1);
/*!40000 ALTER TABLE `repositorios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-14 18:21:12
