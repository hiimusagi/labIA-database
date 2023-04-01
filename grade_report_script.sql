CREATE DATABASE  IF NOT EXISTS `grade_report` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `grade_report`;
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: grade_report
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessments` (
  `assessment_id` int NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `student_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `assessment_type` varchar(50) NOT NULL,
  `assessment_grade` int DEFAULT NULL,
  PRIMARY KEY (`assessment_id`),
  KEY `student_id` (`student_id`),
  KEY `subject_code` (`subject_code`),
  CONSTRAINT `assessments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `assessments_ibfk_2` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (1,'CEA201','HE153150','PT1',10),(2,'CEA201','HE153151','PT1',10),(3,'CEA201','HE153152','PT1',NULL),(4,'CEA201','HE153153','PT1',NULL),(5,'CEA201','HE153154','PT1',NULL),(6,'CEA201','HE153155','PT1',NULL),(7,'CEA201','HE153156','PT1',NULL),(8,'CEA201','HE153157','PT1',NULL),(9,'CEA201','HE153158','PT1',NULL),(10,'CEA201','HE153159','PT1',NULL),(11,'CEA201','HE153151','PT2',NULL),(12,'CEA201','HE153152','PT2',NULL),(13,'CEA201','HE153153','PT2',NULL),(14,'CEA201','HE153154','PT2',NULL),(15,'CEA201','HE153155','PT2',NULL),(16,'CEA201','HE153156','PT2',NULL),(17,'CEA201','HE153157','PT2',NULL),(18,'CEA201','HE153158','PT2',NULL),(19,'CEA201','HE153159','PT2',NULL),(20,'CEA201','HE153151','FE',NULL),(21,'CEA201','HE153152','FE',NULL),(22,'CEA201','HE153153','FE',NULL),(23,'CEA201','HE153154','FE',NULL),(24,'CEA201','HE153155','FE',NULL),(25,'CEA201','HE153156','FE',NULL),(26,'CEA201','HE153157','FE',NULL),(27,'CEA201','HE153158','FE',NULL),(28,'CEA201','HE153159','FE',NULL),(29,'CEA201','HE153150','FE',NULL),(30,'CEA201','HE153150','PT2',NULL),(31,'CSD201','HE153150','PT1',NULL),(32,'CSD201','HE153151','PT1',NULL),(33,'CSD201','HE153152','PT1',NULL),(34,'CSD201','HE153153','PT1',NULL),(35,'CSD201','HE153154','PT1',NULL),(36,'CSD201','HE153155','PT1',NULL),(37,'CSD201','HE153156','PT1',NULL),(38,'CSD201','HE153157','PT1',NULL),(39,'CSD201','HE153158','PT1',NULL),(40,'CSD201','HE153159','PT1',NULL),(41,'CSD201','HE153150','PT2',NULL),(42,'CSD201','HE153151','PT2',NULL),(43,'CSD201','HE153152','PT2',NULL),(44,'CSD201','HE153153','PT2',NULL),(45,'CSD201','HE153154','PT2',NULL),(46,'CSD201','HE153155','PT2',NULL),(47,'CSD201','HE153156','PT2',NULL),(48,'CSD201','HE153157','PT2',NULL),(49,'CSD201','HE153158','PT2',NULL),(50,'CSD201','HE153159','PT2',NULL),(51,'CSD201','HE153150','FE',NULL),(52,'CSD201','HE153151','FE',NULL),(53,'CSD201','HE153152','FE',NULL),(54,'CSD201','HE153153','FE',NULL),(55,'CSD201','HE153154','FE',NULL),(56,'CSD201','HE153155','FE',NULL),(57,'CSD201','HE153156','FE',NULL),(58,'CSD201','HE153157','FE',NULL),(59,'CSD201','HE153158','FE',NULL),(60,'CSD201','HE153159','FE',NULL),(61,'CSD201','HE153150','PT1',NULL),(62,'CSD201','HE153151','PT1',NULL),(63,'CSD201','HE153152','PT1',NULL),(64,'CSD201','HE153153','PT1',NULL),(65,'CSD201','HE153154','PT1',NULL),(66,'CSD201','HE153155','PT1',NULL),(67,'CSD201','HE153156','PT1',NULL),(68,'CSD201','HE153157','PT1',NULL),(69,'CSD201','HE153158','PT1',NULL),(70,'CSD201','HE153159','PT1',NULL),(71,'CSD201','HE153150','PT2',NULL),(72,'CSD201','HE153151','PT2',NULL),(73,'CSD201','HE153152','PT2',NULL),(74,'CSD201','HE153153','PT2',NULL),(75,'CSD201','HE153154','PT2',NULL),(76,'CSD201','HE153155','PT2',NULL),(77,'CSD201','HE153156','PT2',NULL),(78,'CSD201','HE153157','PT2',NULL),(79,'CSD201','HE153158','PT2',NULL),(80,'CSD201','HE153159','PT2',NULL),(81,'CSD201','HE153150','FE',NULL),(82,'CSD201','HE153151','FE',NULL),(83,'CSD201','HE153152','FE',NULL),(84,'CSD201','HE153153','FE',NULL),(85,'CSD201','HE153154','FE',NULL),(86,'CSD201','HE153155','FE',NULL),(87,'CSD201','HE153156','FE',NULL),(88,'CSD201','HE153157','FE',NULL),(89,'CSD201','HE153158','FE',NULL),(90,'CSD201','HE153159','FE',NULL);
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculums`
--

DROP TABLE IF EXISTS `curriculums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculums` (
  `curriculum_id` int NOT NULL AUTO_INCREMENT,
  `curriculum_code` varchar(10) DEFAULT NULL,
  `curriculum_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`curriculum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculums`
--

LOCK TABLES `curriculums` WRITE;
/*!40000 ALTER TABLE `curriculums` DISABLE KEYS */;
INSERT INTO `curriculums` VALUES (1,'SE','Software Engineering'),(2,'AI','Artificial Intelligence'),(3,'IA','Information Assurance'),(4,'DM','Digital Marketing');
/*!40000 ALTER TABLE `curriculums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `lecture_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lecture_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`lecture_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES ('bantq','Mr. Ban',13),('chilp','Ms. Chi',14),('sangnv','Mr. Sang',12),('sonnt','Mr. Son',11),('thopn','Mr. Tho',15);
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_subject`
--

DROP TABLE IF EXISTS `lecture_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_subject` (
  `lecture_subject_id` int NOT NULL AUTO_INCREMENT,
  `lecture_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `subject_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`lecture_subject_id`),
  KEY `subject_code` (`subject_code`),
  KEY `lecture_id` (`lecture_id`),
  CONSTRAINT `lecture_subject_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`),
  CONSTRAINT `lecture_subject_ibfk_2` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`lecture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_subject`
--

LOCK TABLES `lecture_subject` WRITE;
/*!40000 ALTER TABLE `lecture_subject` DISABLE KEYS */;
INSERT INTO `lecture_subject` VALUES (1,'bantq','CEA201'),(2,'chilp','DBI202'),(3,'bantq','CSD201'),(4,'thopn','PRF192');
/*!40000 ALTER TABLE `lecture_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `student_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `curriculum_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `curriculum_id` (`curriculum_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculums` (`curriculum_id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('HE153150','Nguyen Huu Ngoc',1,10),('HE153151','Nguyen Huu Huy',1,1),('HE153152','Nguyen Huu An',1,2),('HE153153','Nguyen Huu Binh',1,3),('HE153154','Nguyen Huu Quoc',1,4),('HE153155','Nguyen Huu Thanh',1,5),('HE153156','Nguyen Huu Anh',1,6),('HE153157','Nguyen Huu Duy',1,7),('HE153158','Nguyen Huu Nam',1,8),('HE153159','Nguyen Huu Thinh',1,9);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `term_id` int NOT NULL,
  `subject_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `credits` int NOT NULL,
  PRIMARY KEY (`subject_code`),
  KEY `term_id` (`term_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('CEA201',1,'Computer Organization and Architecture',1),('CSD201',3,'Data Structures and Algorithms',1),('CSI104',1,'Introduction to Computer Science',1),('DBI202',3,'Introduction to Databases',1),('ENW492c',7,'Writing Research Papers',1),('HCM202',9,'Ho Chi Minh Ideology',1),('IOT102',4,'Internet of Things',1),('ITE302c',5,'Ethics in IT',1),('JPD113',3,'Elementary Japanese 1-A1.1',1),('JPD123',4,'Elementary Japanese 1-A1.2',1),('LAB211',3,'OOP with Java Lab',1),('MAD101',2,'Discrete mathematics',1),('MAE101',1,'Mathematics for Engineering',1),('MAS291',4,'Statistics and Probability',1),('MLN111',8,'Philosophy of Marxism – Leninism',1),('MLN122',8,'Political economics of Marxism – Leninism',1),('MLN131',9,'Scientific socialism',1),('NWC203c',2,'Computer Networking',1),('OJT202',6,'On the job training',1),('OSG202',2,'Operating Systems',1),('PMG202c',8,'Project management',1),('PRF192',1,'Programming Fundamentals',1),('PRJ301',4,'Java Web Application Development',1),('PRM392',7,'Mobile Programming',1),('PRN211',5,'Basic Cross-Platform Application Programming With .NET',1),('PRN221',7,'Advanced Cross-Platform Application Programming With .NET',1),('PRN231',8,'Building Cross-Platform Back-End Application With .NET',1),('PRO192',2,'Object-Oriented Programming',1),('PRU211m',7,'C# Programming and Unity',1),('PRU221m',8,'Object-Oriented Programming for Unity Games',1),('SEP490',9,'SE Capstone Project',1),('SSG103',2,'Communication and In-Group Working Skills',1),('SSL101c',1,'Academic Skills for University Success',1),('SWD392',7,'SW Architecture and Design',1),('SWE201c',4,'Introduction to Software Engineering',1),('SWP391',5,'Application development project',1),('SWR302',5,'Software Requirement',1),('SWT301',5,'Software Testing',1),('SYB302c',6,'Entrepreneurship',1),('VNR202',9,'History of Viet Nam Communist Party',1),('WDU203c',8,'UI/UX Design',1),('WED201c',3,'Web Design',1);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term`
--

DROP TABLE IF EXISTS `term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `term` (
  `term_id` int NOT NULL AUTO_INCREMENT,
  `term_no` int DEFAULT NULL,
  `curriculum_id` int DEFAULT NULL,
  PRIMARY KEY (`term_id`),
  KEY `curriculum_id` (`curriculum_id`),
  CONSTRAINT `term_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculums` (`curriculum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term`
--

LOCK TABLES `term` WRITE;
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
INSERT INTO `term` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,1,2),(11,2,2),(12,3,2),(13,4,2),(14,5,2),(15,6,2),(16,7,2),(17,8,2),(18,9,2);
/*!40000 ALTER TABLE `term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `passwords` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `roles` int DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'huynhhe153151@fpt.edu.vn'),(2,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'annhhe153152@fpt.edu.vn'),(3,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'binhnhhe153153@fpt.edu.vn'),(4,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'quocnhhe153154@fpt.edu.vn'),(5,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'thanhnhhe153155@fpt.edu.vn'),(6,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'anhnhhe153156@fpt.edu.vn'),(7,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'duynhhe153157@fpt.edu.vn'),(8,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'namnhhe153158@fpt.edu.vn'),(9,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'thinhnhhe153159@fpt.edu.vn'),(10,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',3,'ngocnhhe153150@fpt.edu.vn'),(11,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',2,'sonnt@fpt.edu.vn'),(12,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',2,'sangnv@fpt.edu.vn'),(13,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',2,'bantq@fpt.edu.vn'),(14,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',2,'chilp@fpt.edu.vn'),(15,'$2a$10$76OkBrdMGrtAkCn63DS6QO84rMiID/klZpcfOBVBPNph5xBDmRa2K',2,'thopn@fpt.edu.vn');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'grade_report'
--

--
-- Dumping routines for database 'grade_report'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 23:58:19
