CREATE DATABASE  IF NOT EXISTS `camvers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `camvers`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 13.125.162.42    Database: camvers
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `promotion` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `study_room_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfjorc02okrpiyp5cvab0dt22p` (`study_room_id`),
  KEY `FKfyf1fchnby6hndhlfaidier1r` (`user_id`),
  CONSTRAINT `FKfjorc02okrpiyp5cvab0dt22p` FOREIGN KEY (`study_room_id`) REFERENCES `study_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKfyf1fchnby6hndhlfaidier1r` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'알려주세요,,,','2021-11-17 17:50:57',_binary '\0','코테 잘 보는 비결 알려주세요,,,',2,24),(2,'같이 스터디 만들어서 인증해요~!','2021-11-17 17:52:41',_binary '','갓생 살 사람 모이세요!',2,24),(4,'반갑습니다','2021-11-18 06:43:49',_binary '\0','안녕하세요',1,23),(7,'오늘 수능날인데,, 내년에 수능 볼 생각하니 막막하네요;;','2021-11-18 16:35:50',_binary '\0','오늘 공부 잘 되시나요?',2,24);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `finish` date DEFAULT NULL,
  `start` date DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcox0v4xnhs8qc7g4m34yuyvkq` (`user_id`),
  CONSTRAINT `FKcox0v4xnhs8qc7g4m34yuyvkq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,2,NULL,'2021-11-19','2021-11-19',24,'최종발표!'),(2,1,NULL,'2021-11-25','2021-12-25',23,'성탄절'),(3,1,NULL,'2021-12-25','2021-12-25',23,'성탄절'),(4,3,NULL,'2021-11-19','2021-11-19',23,'특화프로젝트 최종 발표'),(5,2,NULL,'2021-11-19','2021-11-08',23,'굉장히 바쁜 기간...'),(6,4,NULL,'2021-11-21','2021-11-21',23,'생일'),(7,1,NULL,'2021-12-07','2021-12-01',23,'취업 컨설팅'),(8,1,NULL,'2021-12-25','2021-12-25',23,'성탄절'),(9,1,NULL,'2021-12-25','2021-12-25',23,'성탄절'),(10,1,NULL,'2021-12-25','2021-12-25',23,'성탄절'),(11,4,NULL,'2021-11-04','2021-11-01',24,'일정~!'),(12,0,NULL,'2021-11-18','2021-11-16',25,'일정 등록'),(13,4,NULL,'2021-12-31','2021-12-31',23,'일정'),(14,3,NULL,'2021-12-30','2021-12-30',23,'일정2'),(15,1,NULL,'2021-11-01','2021-11-01',23,'일정3'),(16,4,NULL,'2021-11-10','2021-11-09',25,'test2'),(17,3,NULL,'2021-11-11','2021-11-11',25,'test3'),(18,4,NULL,'2021-11-19','2021-11-19',25,'test4'),(19,3,NULL,'2021-11-01','2021-11-01',25,'test4'),(20,2,NULL,'2021-11-03','2021-11-03',25,'test5'),(21,3,NULL,'2021-11-06','2021-11-06',25,'test6'),(22,3,NULL,'2021-11-09','2021-11-09',25,'asdf'),(23,0,NULL,'2021-11-10','2021-11-10',25,'asdggg'),(24,3,NULL,'2021-11-20','2021-11-20',25,'hjkl;\''),(25,3,NULL,'2021-11-18','2021-11-17',25,'agdfh');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5vlmhksso19pshk0ac1qo1p82` (`user_id`),
  CONSTRAINT `FK5vlmhksso19pshk0ac1qo1p82` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
INSERT INTO `memo` VALUES (3,'안녕\n',25),(4,'fdssfghjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj',25),(5,'fasdfasdf',25),(6,'asdfds',25),(9,'sfdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',25),(10,'네가 지금 편한 이유는\n내리막길을 걷고 있기 때문이다',24),(11,'인간은 스스로\n믿는대로 된다',24),(12,'발표 화이팅!',24);
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_character`
--

DROP TABLE IF EXISTS `my_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_character` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accessory1` int NOT NULL DEFAULT '6',
  `accessory2` int NOT NULL DEFAULT '4',
  `beard` int NOT NULL DEFAULT '9',
  `bottom` int NOT NULL DEFAULT '6',
  `eye` int NOT NULL DEFAULT '5',
  `eyebrow` int NOT NULL DEFAULT '2',
  `gloves` int NOT NULL DEFAULT '3',
  `hair` int NOT NULL DEFAULT '4',
  `hat` int NOT NULL DEFAULT '14',
  `head` int NOT NULL DEFAULT '0',
  `mouth` int NOT NULL DEFAULT '7',
  `onepiece` int NOT NULL DEFAULT '2',
  `sex` int NOT NULL DEFAULT '0',
  `shoes` int NOT NULL DEFAULT '5',
  `top` int NOT NULL DEFAULT '1',
  `weapon` int NOT NULL DEFAULT '20',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_character_user_id_idx` (`user_id`),
  CONSTRAINT `fk_character_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_character`
--

LOCK TABLES `my_character` WRITE;
/*!40000 ALTER TABLE `my_character` DISABLE KEYS */;
INSERT INTO `my_character` VALUES (6,16,17,9,13,13,12,0,2,14,0,1,2,0,18,16,20,23),(7,16,5,9,18,4,8,0,15,9,1,7,0,0,2,18,10,24),(8,6,15,9,7,7,8,3,4,1,0,7,2,0,17,5,20,25),(9,6,4,9,6,5,2,3,4,14,0,7,2,0,5,1,20,26);
/*!40000 ALTER TABLE `my_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_room`
--

DROP TABLE IF EXISTS `study_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `open` bit(1) DEFAULT NULL,
  `personnel` int DEFAULT NULL,
  `share` bit(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `topic` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8aite6gn2w3wn84o9te4m9uby` (`user_id`),
  CONSTRAINT `FK8aite6gn2w3wn84o9te4m9uby` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_room`
--

LOCK TABLES `study_room` WRITE;
/*!40000 ALTER TABLE `study_room` DISABLE KEYS */;
INSERT INTO `study_room` VALUES (1,'자유롭게 이용하세요~',_binary '\0',6,_binary '','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumbnails/%EC%82%AC%EC%9E%90.jpg','같이 공부해요',1,23),(2,'꼭 화면을 켜주시고, 최소 3시간 이상 공부하실 분만 들어와주세요! 안그러면 강퇴합니다.',_binary '\0',8,_binary '','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/tomato.png','임용고시준비하실분 들어오세요!',1,25),(3,'다함께 공부하고 싶으신 분들 자유롭게 입장해서 공부하세요~!',_binary '',40,_binary '\0','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/%EC%A0%9C%EB%AA%A9%EC%9D%84%20%EC%9E%85%EB%A0%A5%ED%95%B4%EC%A3%BC%EC%84%B8%EC%9A%94_-001.png','캠버스 다함께 스터디-1',123,24),(4,'자유롭게 공부하고 물어보고 싶을 때는 언제든지 협업룸에서 모여요~',_binary '\0',5,_binary '','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/olaf.jfif','재미있게 놀면서 공부하실 분들~',1,25),(5,'갓생 사는 거 인증하면서 공부할 사람 한 명 구해요~!ㅎㅎ',_binary '\0',2,_binary '','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/images.jfif','갓생살기',1,24),(6,'운영체제, 네트워크, 자바, DB, 알고리즘, 자료구조 다 할겁니다!! 어서 오세요~',_binary '\0',4,_binary '','https://media.istockphoto.com/photos/digital-artist-contemplates-during-coffee-break-in-his-home-office-picture-id1270008674?b=1&k=20&m=1270008674&s=170667a&w=0&h=PFxF-uJvGPTxKVMfHFYCoKwk5TQMP3JKQGgWneu90HY=','CS 공부!!❤',1,25),(7,'코딩테스트 같이 뽀개실 분들 모집합니다.\n매일 오후 9시부터 1문제씩 풀이 합니다.',_binary '\0',5,_binary '','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C.png','코테 가보자고',1,24),(8,'서로 책 소개하고 느낀점도 같이 공유하면 좋겠습니다~',_binary '\0',7,_binary '\0','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/books-5430104_1920.jpg','책 읽으실분들 오세요',123,25),(9,'다함께 공부하고 싶으신 분들 자유롭게 입장해서 공부하세요~!',_binary '',40,_binary '\0','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/library-869061_1920.jpg','캠버스 다함께 스터디-2',123,25),(10,'한달 안에 한국사 1급 못 따는 사람이 한턱내기 ㅇㅇ',_binary '\0',6,_binary '\0','https://camvers-bucket.s3.ap-northeast-2.amazonaws.com/thumnails/KakaoTalk_20210813_105943170_06.jpg','한국사 한달 마스터',1,23);
/*!40000 ALTER TABLE `study_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_time`
--

DROP TABLE IF EXISTS `study_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_time` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `study_date` date DEFAULT NULL,
  `study_time` int DEFAULT NULL,
  `success` bit(1) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmvaukj0yu74u463es1y4tv73l` (`user_id`),
  CONSTRAINT `FKmvaukj0yu74u463es1y4tv73l` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_time`
--

LOCK TABLES `study_time` WRITE;
/*!40000 ALTER TABLE `study_time` DISABLE KEYS */;
INSERT INTO `study_time` VALUES (1,'2021-11-18',48078,_binary '',23),(2,'2021-11-18',1,_binary '\0',25),(3,'2021-11-18',49,_binary '\0',24),(4,'2021-11-19',8,_binary '\0',23);
/*!40000 ALTER TABLE `study_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `d_day` date DEFAULT NULL,
  `d_day_desc` varchar(255) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `goal_time` int DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `role_type` varchar(20) NOT NULL,
  `character_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (23,'2021-12-25','성탄절','godfam44@gmail.com','---  1일 1커밋  ---',28800,'heejun','USER',NULL),(24,NULL,NULL,'lovejb0101@gmail.com',NULL,NULL,'victoria','USER',NULL),(25,NULL,NULL,'bsa14523@gmail.com',NULL,NULL,'박선아','USER',NULL),(26,NULL,NULL,'clamp31405@gmail.com',NULL,NULL,'김범진 컨설턴트','USER',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_room`
--

DROP TABLE IF EXISTS `user_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `study_room_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1cpknce05q8qk8vdddrf97r2u` (`user_id`),
  KEY `FK7pi8d7e62rncbwa7m36kj6819` (`study_room_id`),
  CONSTRAINT `FK1cpknce05q8qk8vdddrf97r2u` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK7pi8d7e62rncbwa7m36kj6819` FOREIGN KEY (`study_room_id`) REFERENCES `study_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_room`
--

LOCK TABLES `user_room` WRITE;
/*!40000 ALTER TABLE `user_room` DISABLE KEYS */;
INSERT INTO `user_room` VALUES (1,1,23),(2,2,25),(3,3,24),(5,4,25),(6,5,24),(7,6,25),(8,7,24),(9,8,25),(10,9,25),(16,9,24),(23,3,25),(24,3,23),(25,6,23),(26,10,23),(27,3,26),(28,9,26),(31,1,25),(32,1,24);
/*!40000 ALTER TABLE `user_room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-19 10:37:44
