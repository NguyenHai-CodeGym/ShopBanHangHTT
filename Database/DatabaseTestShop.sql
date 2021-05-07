-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: shophtt
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `delete_date` datetime(6) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `restore_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `image` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (5,'2021-03-27 15:37:56.883145',NULL,_binary '\0','sdfghjklkjhgfdsxdfghjkl;\r\n','Điện Thoại',NULL,NULL,NULL),(6,'2021-03-26 14:08:10.732823',NULL,_binary '\0','Et ea corporis atque','Laptop',NULL,NULL,NULL),(7,'2021-03-26 14:10:03.175127',NULL,_binary '\0','Harum fugiat obcaeca','Thời Trang',NULL,NULL,NULL),(8,'2021-03-26 15:24:07.552455',NULL,_binary '\0','Asperiores saepe eum','Đồ Gia Dụng',NULL,NULL,NULL),(18,'2021-05-06 22:39:30.780428',NULL,_binary '','Molestiae dolores ea.&nbsp;','Aurora Myers',NULL,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `dateOfBirth` datetime(6) DEFAULT NULL,
  `delete_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `restore_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `configPassword` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd32knrbmmpda2907f6ajwwa3c` (`role_id`),
  CONSTRAINT `FKd32knrbmmpda2907f6ajwwa3c` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'2021-03-29 11:45:13.628852','1987-01-10 00:00:00.000000',NULL,'admin@gmail.com','Garrison Santana','Male','92','$2b$10$PqcnwiPg8/bNw3hW2mBjyOJeiQFMhlSZXPac2oZShat/ZnwyIciu6','765',NULL,NULL,1,'Pa$$w0rd!',_binary '\0'),(2,'2021-05-07 14:41:06.062118','1987-11-24 00:00:00.000000',NULL,'user@gmail.com','Lucas Bryant','Male','avatar.jpg','$2a$10$bOEZrumv3MuxBn9HoVuY6uQaFjMYnDtJeMPk7Qb5TKCNofGzsNfQK','901',NULL,NULL,2,'1234',_binary '\0'),(3,'2021-05-07 14:45:24.194865','1998-05-12 00:00:00.000000',NULL,'buyer@gmail.com','Hunter Hunt','Male','avatar.jpg','$2a$10$HXlsC2iCiYh4Oaqa.VnEteE/b0istvMvuU/91gYpxqPd2Qo68a2bm','0961044926',NULL,NULL,3,'1234',_binary '\0');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `total_price` double DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKji4p042ka7if8knsq34l1hjvt` (`order_id`),
  KEY `FKrgc5kp45yoof6r3776hcl9egx` (`product_id`),
  CONSTRAINT `FKji4p042ka7if8knsq34l1hjvt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKrgc5kp45yoof6r3776hcl9egx` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `expected_date` datetime(6) DEFAULT NULL,
  `reality_date` datetime(6) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoyp3hir2alogdqycceenk3hik` (`status_id`),
  CONSTRAINT `FKoyp3hir2alogdqycceenk3hik` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `delete_date` datetime(6) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `restore_date` datetime(6) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `update_date` datetime(6) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `create_id` bigint DEFAULT NULL,
  `delete_id` bigint DEFAULT NULL,
  `restore_id` bigint DEFAULT NULL,
  `update_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKexqqeaksnmmku5py194ywp140` (`category_id`),
  KEY `FK3x8jbxkh06xgina0lk88myphm` (`create_id`),
  KEY `FKpuuc73iu9t3sir025hirkagjx` (`delete_id`),
  KEY `FK5k22s98p0n8gbbqwp7uxb972h` (`restore_id`),
  KEY `FKqr23xuxiunmdifcebmysc5y5c` (`update_id`),
  CONSTRAINT `FK3x8jbxkh06xgina0lk88myphm` FOREIGN KEY (`create_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK5k22s98p0n8gbbqwp7uxb972h` FOREIGN KEY (`restore_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKexqqeaksnmmku5py194ywp140` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKpuuc73iu9t3sir025hirkagjx` FOREIGN KEY (`delete_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKqr23xuxiunmdifcebmysc5y5c` FOREIGN KEY (`update_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (30,'Eu est ut voluptatib','2021-05-07 14:26:30.867110',NULL,_binary '\0','Fugiat, consectetur.&nbsp;','avatar.jpg',_binary '\0','Warren Graves',537,459,NULL,_binary '\0',NULL,7,NULL,NULL,NULL,NULL),(31,'Omnis voluptas venia','2021-05-07 14:34:49.312891',NULL,_binary '\0','A aut magni nemo do .&nbsp;','image-default.png',_binary '\0','Fritz Boyle',215,122,NULL,_binary '\0',NULL,8,NULL,NULL,NULL,NULL),(32,'Aliquip ipsam mollit','2021-05-07 14:38:06.164179',NULL,_binary '\0','Ut quisquam voluptat.&nbsp;','image-default.png',_binary '\0','Lara Wall',839,356,NULL,_binary '\0',NULL,6,NULL,NULL,NULL,NULL),(33,'Veniam fuga Qui ex','2021-05-07 14:38:10.839364',NULL,_binary '\0','Aperiam nulla distin.&nbsp;','image-default.png',_binary '\0','Rhonda White',394,852,NULL,_binary '\0',NULL,8,NULL,NULL,NULL,NULL),(34,'Voluptatem commodi ','2021-05-07 14:38:17.136473',NULL,_binary '\0','Est est id quibusdam.&nbsp;','image-default.png',_binary '\0','Rowan Kennedy',209,510,NULL,_binary '\0',NULL,6,NULL,NULL,NULL,NULL),(35,'In ut eu suscipit qu','2021-05-07 15:07:28.460139',NULL,_binary '\0','Et culpa, nobis exer.&nbsp;','image-default.png',_binary '\0','Brian Reid',959,922,NULL,_binary '\0',NULL,5,NULL,NULL,NULL,NULL),(36,'Et velit aliquam odi','2021-05-07 15:09:51.410181',NULL,_binary '\0','Beatae harum ab ut a.&nbsp;','image-default.png',_binary '\0','Grace Dunn',910,953,NULL,_binary '\0',NULL,5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) DEFAULT NULL,
  `delete_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `restore_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2021-03-29 11:40:38.429458',NULL,'Có quyền kiểm soát và truy cập tất cả ','Admin',NULL,NULL),(2,'2021-03-29 11:41:24.203540',NULL,'Có quyền đăng bán và quản lý các sản phẩm thuộc user hiện tại','User',NULL,NULL),(3,'2021-03-29 11:41:50.146569',NULL,'chỉ có quyền mua hàng và đánh giá ','Buyer',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shophtt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07 15:13:06
