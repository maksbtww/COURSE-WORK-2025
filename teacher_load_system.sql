-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: teacher_load_system
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS teacher_load_system;
CREATE DATABASE teacher_load_system CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE teacher_load_system;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES 
(1,'Основы программирования','Осень 2025'),
(2,'Базы данных','Весна 2025'),
(3,'Алгоритмы и структуры данных','Осень 2025'),
(4,'Математический анализ','Весна 2025'),
(5,'Компьютерные сети','Осень 2025'),
(6,'Физика','Весна 2025'),
(7,'Операционные системы','Осень 2024'),
(8,'Искусственный интеллект','Весна 2025'),
(9,'Машинное обучение','Осень 2025'),
(10,'Веб-программирование','Весна 2025'),
(11,'Теория вероятностей','Осень 2024'),
(12,'Экономика образования','Весна 2025');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_groups`
--

DROP TABLE IF EXISTS `student_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` int NOT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_groups`
--

LOCK TABLES `student_groups` WRITE;
/*!40000 ALTER TABLE `student_groups` DISABLE KEYS */;
INSERT INTO `student_groups` VALUES 
(1,'ПИ-21-1',2,'Прикладная информатика'),
(2,'ИС-22-2',1,'Информационные системы'),
(3,'ПМ-20-3',3,'Прикладная математика'),
(4,'КС-23-1',1,'Компьютерные науки'),
(5,'ФИ-21-2',2,'Физика'),
(6,'БИ-22-1',1,'Биология'),
(7,'ХИ-23-2',1,'Химия'),
(8,'ЭК-20-3',3,'Экономика'),
(9,'ЮР-21-1',2,'Юриспруденция'),
(10,'ПД-22-2',1,'Педагогика'),
(11,'МА-23-3',1,'Математика'),
(12,'ЛИ-20-1',3,'Лингвистика'),
(13,'СО-21-2',2,'Социология'),
(14,'ГЕ-22-3',1,'География'),
(15,'АР-23-1',1,'Архитектура');
/*!40000 ALTER TABLE `student_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES 
(1,'admin','admin123','Администратор Системы','admin'),
(2,'ivanov_dept','pass123','Иванов Сергей Николаевич','head_of_dept'),
(3,'petrov_dept','pass456','Петров Андрей Владимирович','head_of_dept'),
(4,'sidorov','teacher1','Сидоров Игорь Петрович','teacher'),
(5,'smirnova','teacher2','Смирнова Ольга Викторовна','teacher'),
(6,'kuznetsov','teacher3','Кузнецов Максим Сергеевич','teacher'),
(7,'popova','teacher4','Попова Татьяна Александровна','teacher'),
(8,'vasiliev','teacher5','Васильев Денис Анатольевич','teacher'),
(9,'romanova','teacher6','Романова Елена Юрьевна','teacher'),
(10,'chernev','teacher7','Чернев Артём Игоревич','teacher'),
(11,'morozov','teacher8','Морозов Алексей Валерьевич','teacher'),
(12,'lebedev','teacher9','Лебедев Павел Викторович','teacher'),
(13,'novikova','teacher10','Новикова Кристина Сергеевна','teacher'),
(14,'fedorov','teacher11','Фёдоров Роман Александрович','teacher'),
(15,'antonov','teacher12','Антонов Дмитрий Валентинович','teacher');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES 
(1,2,'Кафедра Информатики','Профессор'),
(2,3,'Кафедра Прикладной Математики','Доцент'),
(3,4,'Кафедра Информатики','Старший преподаватель'),
(4,5,'Кафедра Информатики','Преподаватель'),
(5,6,'Кафедра Прикладной Математики','Доцент'),
(6,7,'Кафедра Прикладной Математики','Преподаватель'),
(7,8,'Кафедра Компьютерных Наук','Профессор'),
(8,9,'Кафедра Компьютерных Наук','Доцент'),
(9,10,'Кафедра Физики','Преподаватель'),
(10,11,'Кафедра Физики','Старший преподаватель'),
(11,12,'Кафедра Биологии','Преподаватель'),
(12,13,'Кафедра Биологии','Доцент'),
(13,14,'Кафедра Экономики','Профессор'),
(14,15,'Кафедра Юриспруденции','Доцент'),
(15,1,'Кафедра Математики','Ассистент');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching_loads`
--

DROP TABLE IF EXISTS `teaching_loads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaching_loads` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `discipline_id` int NOT NULL,
  `group_id` int NOT NULL,
  `hours` int NOT NULL,
  `type` enum('лекция','практика','лабораторная') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_completed` int NOT NULL DEFAULT '0',
  `academic_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `discipline_id` (`discipline_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `teaching_loads_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teaching_loads_ibfk_2` FOREIGN KEY (`discipline_id`) REFERENCES `disciplines` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teaching_loads_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `student_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching_loads`
--

LOCK TABLES `teaching_loads` WRITE;
/*!40000 ALTER TABLE `teaching_loads` DISABLE KEYS */;
INSERT INTO `teaching_loads` VALUES 
(1,1,1,1,36,'лекция',36,'2024-2025'),
(2,1,2,2,32,'практика',24,'2024-2025'),
(3,2,3,3,24,'лабораторная',24,'2023-2024'),
(4,3,4,4,40,'лекция',32,'2020-2021'),
(5,4,5,5,18,'практика',9,'2019-2020'),
(6,5,6,6,54,'лекция',54,'2024-2025'),
(7,6,7,7,48,'лабораторная',40,'2023-2024'),
(8,7,8,8,32,'практика',32,'2024-2025'),
(9,8,9,9,36,'лекция',36,'2024-2025'),
(10,9,10,10,40,'лабораторная',30,'2022-2023'),
(11,10,11,11,32,'практика',32,'2024-2025'),
(12,11,12,12,24,'лекция',24,'2023-2024'),
(13,12,1,13,36,'практика',28,'2024-2025'),
(14,13,2,14,32,'лекция',32,'2024-2025'),
(15,14,3,15,24,'лабораторная',16,'2022-2023'),
(16,15,4,1,40,'лекция',40,'2024-2025'),
(17,1,5,2,18,'практика',18,'2024-2025'),
(18,2,6,3,54,'лекция',54,'2024-2025'),
(19,3,7,4,48,'лабораторная',40,'2023-2024'),
(20,4,8,5,32,'практика',32,'2024-2025'),
(21,5,9,6,36,'лекция',36,'2024-2025'),
(22,6,10,7,40,'лабораторная',30,'2022-2023'),
(23,7,11,8,32,'практика',32,'2024-2025'),
(24,8,12,9,24,'лекция',24,'2023-2024'),
(25,9,1,10,36,'практика',28,'2024-2025'),
(26,10,2,11,32,'лекция',32,'2024-2025'),
(27,11,3,12,24,'лабораторная',16,'2022-2023'),
(28,12,4,13,40,'лекция',40,'2024-2025'),
(29,13,5,14,18,'практика',18,'2024-2025'),
(30,14,6,15,54,'лекция',54,'2024-2025');
/*!40000 ALTER TABLE `teaching_loads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 14:29:02