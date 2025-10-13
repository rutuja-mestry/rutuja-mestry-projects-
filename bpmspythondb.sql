Last login: Fri Oct  3 20:30:32 on ttys000
rn66431@TIMSM42NLPC0270 ~ % mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 198
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> -- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
mysql> --
mysql> -- Host: localhost    Database: bpmspythondb
mysql> -- ------------------------------------------------------
mysql> -- Server version8.0.43
mysql> 
mysql> /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET NAMES utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE='+00:00' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_category`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_category`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_category` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `categoryname` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_category`
mysql> --
mysql> 
mysql> LOCK TABLES `app_category` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `app_category` VALUES (1,'Delux Bus','2024-02-05 05:07:39.151822','2024-02-05 05:07:39.151822'),(2,'AC Bus','2024-02-05 05:07:47.920653','2024-02-05 05:07:47.920653'),(3,'Non AC Bus','2024-02-05 05:07:59.240819','2024-02-05 05:07:59.240819'),(4,'Volvo Buses','2024-02-05 05:08:26.487218','2024-02-25 03:48:22.060363');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_login` datetime(6) DEFAULT NULL,
    ->   `is_superuser` tinyint(1) NOT NULL,
    ->   `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `is_staff` tinyint(1) NOT NULL,
    ->   `is_active` tinyint(1) NOT NULL,
    ->   `date_joined` datetime(6) NOT NULL,
    ->   `profile_pic` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `username` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_customuser` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `app_customuser` VALUES (1,'pbkdf2_sha256$390000$BhfNk7YSJzx57DCjgZm2wC$+4eTLIf+ghUHUyDrEFd7ACoD8sKQE2K/7MPv53y98Lo=','2024-02-25 04:03:15.123021',1,'admin','Admin','User','admin@gmail.com',1,1,'2024-02-05 05:00:22.626894',''),(2,'pbkdf2_sha256$1000000$Wrnzl0LqfLVSyYMmdaIeiH$jCQk3eno2ZKF3VGIHPuCDLcde4AuJq2/455TBu6PjTI=','2025-10-05 14:30:42.846035',1,'rutuja_mestry','Rutuja ','Mestry','rutujamestry2004@gmail.com',1,1,'2025-10-04 16:18:50.890107','');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_customuser` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_groups`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_groups`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_groups` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `group_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_groups_customuser_id_group_id_a5a0ca22_uniq` (`customuser_id`,`group_id`),
    ->   KEY `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` (`group_id`),
    ->   CONSTRAINT `app_customuser_group_customuser_id_164d073f_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_groups`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_groups` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_customuser_groups` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_customuser_groups` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_user_permissions`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_user_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_user_perm_customuser_id_permission_22e31019_uniq` (`customuser_id`,`permission_id`),
    ->   KEY `app_customuser_user__permission_id_c5920c75_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `app_customuser_user__customuser_id_4bcbaafb_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_user__permission_id_c5920c75_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_user_permissions` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_page`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_page`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_page` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `pagetitle` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `aboutus` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_page`
mysql> --
mysql> 
mysql> LOCK TABLES `app_page` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_page` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `app_page` VALUES (1,'About Us','pune',' Bus Pass Management System project is helpful to bus administration by reducing the paperwork, time consumption and makes the process of getting bus passes as simple and fast','','1234567890','2025-10-04 22:11:32.000000','2025-10-05 14:31:45.874980');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_page` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_passes`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_passes`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_passes` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `fullname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `gender` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `profile_pic1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` bigint NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitytype` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitycardnumber` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `source` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `destinations` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `fromdate` datetime(6) NOT NULL,
    ->   `todate` datetime(6) NOT NULL,
    ->   `cost` int NOT NULL,
    ->   `passcreated_at` datetime(6) NOT NULL,
    ->   `category_id_id` bigint NOT NULL,
    ->   `passnumber` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `app_passes_category_id_id_e48fef17_fk_app_category_id` (`category_id_id`),
    ->   CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_passes`
mysql> --
mysql> 
mysql> LOCK TABLES `app_passes` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_passes` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `app_passes` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `name` (`name`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group_permissions`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `group_id` int NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
    ->   KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
    ->   CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group_permissions` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_permission`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_permission`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_permission` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int NOT NULL,
    ->   `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
    ->   CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_permission`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_permission` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add passes',8,'add_passes'),(30,'Can change passes',8,'change_passes'),(31,'Can delete passes',8,'delete_passes'),(32,'Can view passes',8,'view_passes'),(33,'Can add page',9,'add_page'),(34,'Can change page',9,'change_page'),(35,'Can delete page',9,'delete_page'),(36,'Can view page',9,'view_page');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_admin_log`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_admin_log`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_admin_log` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `action_time` datetime(6) NOT NULL,
    ->   `object_id` longtext COLLATE utf8mb4_general_ci,
    ->   `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `action_flag` smallint unsigned NOT NULL,
    ->   `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int DEFAULT NULL,
    ->   `user_id` bigint NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
    ->   KEY `django_admin_log_user_id_c564eba6_fk_app_customuser_id` (`user_id`),
    ->   CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
    ->   CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_admin_log`
mysql> --
mysql> 
mysql> LOCK TABLES `django_admin_log` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_content_type`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_content_type`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_content_type` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_content_type`
mysql> --
mysql> 
mysql> LOCK TABLES `django_content_type` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','category'),(6,'app','customuser'),(9,'app','page'),(8,'app','passes'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_migrations`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_migrations`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_migrations` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `applied` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_migrations`
mysql> --
mysql> 
mysql> LOCK TABLES `django_migrations` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-05 04:58:28.292464'),(2,'contenttypes','0002_remove_content_type_name','2024-02-05 04:58:28.363774'),(3,'auth','0001_initial','2024-02-05 04:58:28.609041'),(4,'auth','0002_alter_permission_name_max_length','2024-02-05 04:58:28.671468'),(5,'auth','0003_alter_user_email_max_length','2024-02-05 04:58:28.681478'),(6,'auth','0004_alter_user_username_opts','2024-02-05 04:58:28.690419'),(7,'auth','0005_alter_user_last_login_null','2024-02-05 04:58:28.699429'),(8,'auth','0006_require_contenttypes_0002','2024-02-05 04:58:28.705376'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-05 04:58:28.714352'),(10,'auth','0008_alter_user_username_max_length','2024-02-05 04:58:28.722631'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-05 04:58:28.729166'),(12,'auth','0010_alter_group_name_max_length','2024-02-05 04:58:28.742012'),(13,'auth','0011_update_proxy_permissions','2024-02-05 04:58:28.752916'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-05 04:58:28.760757'),(15,'app','0001_initial','2024-02-05 04:58:29.121755'),(16,'admin','0001_initial','2024-02-05 04:58:29.270683'),(17,'admin','0002_logentry_remove_auto_add','2024-02-05 04:58:29.282654'),(18,'admin','0003_logentry_add_action_flag_choices','2024-02-05 04:58:29.294619'),(19,'app','0002_category','2024-02-05 04:58:29.306796'),(20,'app','0003_passes','2024-02-05 04:58:29.369064'),(21,'app','0004_passes_passnumber_alter_passes_mobilenumber','2024-02-05 04:58:29.390009'),(22,'app','0005_page','2024-02-05 04:58:29.402345'),(23,'app','0006_rename_profile_pic_customuser_profile_pic1','2024-02-05 04:58:29.418303'),(24,'app','0007_customuser_mobilenumber','2024-02-05 04:58:29.437522'),(25,'app','0008_remove_customuser_mobilenumber','2024-02-05 04:58:29.454355'),(26,'app','0009_rename_profile_pic1_customuser_profile_pic_and_more','2024-02-05 04:58:29.472193'),(27,'app','0010_rename_profile_pic_passes_profile_pic1','2024-02-05 04:58:29.482761'),(28,'sessions','0001_initial','2024-02-05 04:58:29.519089'),(29,'app','0011_alter_passes_profile_pic1','2024-02-05 05:31:24.468437'),(30,'app','0012_alter_passes_fromdate_alter_passes_todate','2025-10-04 14:58:06.298707');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_session`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_session`;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_session` (
    ->   `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `expire_date` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`session_key`),
    ->   KEY `django_session_expire_date_a5c62663` (`expire_date`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ERROR 1046 (3D000): No database selected
mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_session`
mysql> --
mysql> 
mysql> LOCK TABLES `django_session` WRITE;
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> INSERT INTO `django_session` VALUES ('n1ornf8ccns12hfgmrxe63nkye4ubc74','.eJxVjDsOwjAQBe_iGln-bexQ0nMGa-Nd4wCypTipEHeHSCmgfTPzXiLitpa4dV7iTOIsjDj9bhOmB9cd0B3rrcnU6rrMk9wVedAur434eTncv4OCvXxrcCobhcgYgoNE1kIGzgMO1mvvNehggDBkUt5kds7SaM3IHk2aHATx_gDXxjd6:1v5Pl4:hPzGYR1zcOaNUpRvUpTX88KScIyrC2l7VClp4yYyzGU','2025-10-19 14:30:42.849068'),('t82kn172fwmqriy2rh5ova1tsd80ir95','.eJxVjEEOwiAQRe_C2pCADC0u3XsGMswMUjWQlHZlvLsh6UK3_7333yrivpW4d1njwuqijDr9bgnpKXUAfmC9N02tbuuS9FD0Qbu-NZbX9XD_Dgr2MmojJlDykJl5YhGcMiBjkNkkwECzdRnFivUQPJ1JCNAyOETjwFv1-QIuYDlT:1rWyez:xnFOIBHpBFQZkBnOF6HxYSkBrJnfbCOOkRRLH5yMS6s','2024-02-19 13:05:17.897492');
ERROR 1046 (3D000): No database selected
mysql> /*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
ERROR 1046 (3D000): No database selected
mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> -- Dump completed on 2025-10-05 20:08:43
mysql> -- Dump completed on 2025-10-05 20:08:43
mysql> ;
ERROR: 
No query specified

mysql> DROP DATABASE bpmspythondb;
Query OK, 13 rows affected (0.05 sec)

mysql> CREATE DATABASE bpmspythondb;
Query OK, 1 row affected (0.00 sec)

mysql> use bpmspythondb;
Database changed
mysql> -- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
mysql> --
mysql> -- Host: localhost    Database: bpmspythondb
mysql> -- ------------------------------------------------------
mysql> -- Server version8.0.43
mysql> 
mysql> /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET NAMES utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE='+00:00' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_category`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_category`;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_category` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `categoryname` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_category`
mysql> --
mysql> 
mysql> LOCK TABLES `app_category` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_category` VALUES (1,'Delux Bus','2024-02-05 05:07:39.151822','2024-02-05 05:07:39.151822'),(2,'AC Bus','2024-02-05 05:07:47.920653','2024-02-05 05:07:47.920653'),(3,'Non AC Bus','2024-02-05 05:07:59.240819','2024-02-05 05:07:59.240819'),(4,'Volvo Buses','2024-02-05 05:08:26.487218','2024-02-25 03:48:22.060363');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_login` datetime(6) DEFAULT NULL,
    ->   `is_superuser` tinyint(1) NOT NULL,
    ->   `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `is_staff` tinyint(1) NOT NULL,
    ->   `is_active` tinyint(1) NOT NULL,
    ->   `date_joined` datetime(6) NOT NULL,
    ->   `profile_pic` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `username` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected, 3 warnings (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_customuser` VALUES (1,'pbkdf2_sha256$390000$BhfNk7YSJzx57DCjgZm2wC$+4eTLIf+ghUHUyDrEFd7ACoD8sKQE2K/7MPv53y98Lo=','2024-02-25 04:03:15.123021',1,'admin','Admin','User','admin@gmail.com',1,1,'2024-02-05 05:00:22.626894',''),(2,'pbkdf2_sha256$1000000$Wrnzl0LqfLVSyYMmdaIeiH$jCQk3eno2ZKF3VGIHPuCDLcde4AuJq2/455TBu6PjTI=','2025-10-05 14:30:42.846035',1,'rutuja_mestry','Rutuja ','Mestry','rutujamestry2004@gmail.com',1,1,'2025-10-04 16:18:50.890107','');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `app_customuser` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_groups`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_groups`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE `app_customuser_groups` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `group_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_groups_customuser_id_group_id_a5a0ca22_uniq` (`customuser_id`,`group_id`),
    ->   KEY `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` (`group_id`),
    ->   CONSTRAINT `app_customuser_group_customuser_id_164d073f_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_groups`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_groups` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_groups` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_groups` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_user_permissions`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_user_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_user_perm_customuser_id_permission_22e31019_uniq` (`customuser_id`,`permission_id`),
    ->   KEY `app_customuser_user__permission_id_c5920c75_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `app_customuser_user__customuser_id_4bcbaafb_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_user__permission_id_c5920c75_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_user_permissions` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` DISABLE KEYS */;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_page`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_page`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_page` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `pagetitle` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `aboutus` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_page`
mysql> --
mysql> 
mysql> LOCK TABLES `app_page` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_page` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_page` VALUES (1,'About Us','pune',' Bus Pass Management System project is helpful to bus administration by reducing the paperwork, time consumption and makes the process of getting bus passes as simple and fast','','1234567890','2025-10-04 22:11:32.000000','2025-10-05 14:31:45.874980');
Query OK, 1 row affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_page` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_passes`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_passes`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_passes` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `fullname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `gender` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `profile_pic1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` bigint NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitytype` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitycardnumber` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `source` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `destinations` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `fromdate` datetime(6) NOT NULL,
    ->   `todate` datetime(6) NOT NULL,
    ->   `cost` int NOT NULL,
    ->   `passcreated_at` datetime(6) NOT NULL,
    ->   `category_id_id` bigint NOT NULL,
    ->   `passnumber` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `app_passes_category_id_id_e48fef17_fk_app_category_id` (`category_id_id`),
    ->   CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_passes`
mysql> --
mysql> 
mysql> LOCK TABLES `app_passes` WRITE;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40000 ALTER TABLE `app_passes` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_passes` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `name` (`name`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group` WRITE;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group_permissions`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `group_id` int NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
    ->   KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
    ->   CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group_permissions` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_permission`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_permission`;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_permission` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int NOT NULL,
    ->   `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
    ->   CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_permission`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_permission` WRITE;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add passes',8,'add_passes'),(30,'Can change passes',8,'change_passes'),(31,'Can delete passes',8,'delete_passes'),(32,'Can view passes',8,'view_passes'),(33,'Can add page',9,'add_page'),(34,'Can change page',9,'change_page'),(35,'Can delete page',9,'delete_page'),(36,'Can view page',9,'view_page');
Query OK, 36 rows affected (0.00 sec)
Records: 36  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_admin_log`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_admin_log`;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_admin_log` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `action_time` datetime(6) NOT NULL,
    ->   `object_id` longtext COLLATE utf8mb4_general_ci,
    ->   `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `action_flag` smallint unsigned NOT NULL,
    ->   `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int DEFAULT NULL,
    ->   `user_id` bigint NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
    ->   KEY `django_admin_log_user_id_c564eba6_fk_app_customuser_id` (`user_id`),
    ->   CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
    ->   CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_admin_log`
mysql> --
mysql> 
mysql> LOCK TABLES `django_admin_log` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
Query OK, 0 rows affected (0.01 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_content_type`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_content_type`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_content_type` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_content_type`
mysql> --
mysql> 
mysql> LOCK TABLES `django_content_type` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','category'),(6,'app','customuser'),(9,'app','page'),(8,'app','passes'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
Query OK, 9 rows affected (0.00 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_migrations`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_migrations`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_migrations` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `applied` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_migrations`
mysql> --
mysql> 
mysql> LOCK TABLES `django_migrations` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-05 04:58:28.292464'),(2,'contenttypes','0002_remove_content_type_name','2024-02-05 04:58:28.363774'),(3,'auth','0001_initial','2024-02-05 04:58:28.609041'),(4,'auth','0002_alter_permission_name_max_length','2024-02-05 04:58:28.671468'),(5,'auth','0003_alter_user_email_max_length','2024-02-05 04:58:28.681478'),(6,'auth','0004_alter_user_username_opts','2024-02-05 04:58:28.690419'),(7,'auth','0005_alter_user_last_login_null','2024-02-05 04:58:28.699429'),(8,'auth','0006_require_contenttypes_0002','2024-02-05 04:58:28.705376'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-05 04:58:28.714352'),(10,'auth','0008_alter_user_username_max_length','2024-02-05 04:58:28.722631'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-05 04:58:28.729166'),(12,'auth','0010_alter_group_name_max_length','2024-02-05 04:58:28.742012'),(13,'auth','0011_update_proxy_permissions','2024-02-05 04:58:28.752916'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-05 04:58:28.760757'),(15,'app','0001_initial','2024-02-05 04:58:29.121755'),(16,'admin','0001_initial','2024-02-05 04:58:29.270683'),(17,'admin','0002_logentry_remove_auto_add','2024-02-05 04:58:29.282654'),(18,'admin','0003_logentry_add_action_flag_choices','2024-02-05 04:58:29.294619'),(19,'app','0002_category','2024-02-05 04:58:29.306796'),(20,'app','0003_passes','2024-02-05 04:58:29.369064'),(21,'app','0004_passes_passnumber_alter_passes_mobilenumber','2024-02-05 04:58:29.390009'),(22,'app','0005_page','2024-02-05 04:58:29.402345'),(23,'app','0006_rename_profile_pic_customuser_profile_pic1','2024-02-05 04:58:29.418303'),(24,'app','0007_customuser_mobilenumber','2024-02-05 04:58:29.437522'),(25,'app','0008_remove_customuser_mobilenumber','2024-02-05 04:58:29.454355'),(26,'app','0009_rename_profile_pic1_customuser_profile_pic_and_more','2024-02-05 04:58:29.472193'),(27,'app','0010_rename_profile_pic_passes_profile_pic1','2024-02-05 04:58:29.482761'),(28,'sessions','0001_initial','2024-02-05 04:58:29.519089'),(29,'app','0011_alter_passes_profile_pic1','2024-02-05 05:31:24.468437'),(30,'app','0012_alter_passes_fromdate_alter_passes_todate','2025-10-04 14:58:06.298707');
Query OK, 30 rows affected (0.00 sec)
Records: 30  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_session`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_session`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_session` (
    ->   `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `expire_date` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`session_key`),
    ->   KEY `django_session_expire_date_a5c62663` (`expire_date`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_session`
mysql> --
mysql> 
mysql> LOCK TABLES `django_session` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_session` VALUES ('n1ornf8ccns12hfgmrxe63nkye4ubc74','.eJxVjDsOwjAQBe_iGln-bexQ0nMGa-Nd4wCypTipEHeHSCmgfTPzXiLitpa4dV7iTOIsjDj9bhOmB9cd0B3rrcnU6rrMk9wVedAur434eTncv4OCvXxrcCobhcgYgoNE1kIGzgMO1mvvNehggDBkUt5kds7SaM3IHk2aHATx_gDXxjd6:1v5Pl4:hPzGYR1zcOaNUpRvUpTX88KScIyrC2l7VClp4yYyzGU','2025-10-19 14:30:42.849068'),('t82kn172fwmqriy2rh5ova1tsd80ir95','.eJxVjEEOwiAQRe_C2pCADC0u3XsGMswMUjWQlHZlvLsh6UK3_7333yrivpW4d1njwuqijDr9bgnpKXUAfmC9N02tbuuS9FD0Qbu-NZbX9XD_Dgr2MmojJlDykJl5YhGcMiBjkNkkwECzdRnFivUQPJ1JCNAyOETjwFv1-QIuYDlT:1rWyez:xnFOIBHpBFQZkBnOF6HxYSkBrJnfbCOOkRRLH5yMS6s','2024-02-19 13:05:17.897492');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> -- Dump completed on 2025-10-05 20:08:43
mysql> INSERT INTO bus_pass (sr_no, category_id, pass_name, ...)
    -> SELECT 
    ->     COALESCE(MAX(sr_no), 0) + 1, 
    ->     'your_category_id', 
    ->     'New Pass Name', ...
    -> FROM bus_pass;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '...)
SELECT 
    COALESCE(MAX(sr_no), 0) + 1, 
    'your_category_id', 
    'New' at line 1
mysql> bus_pass (
    ->     sr_no INT,
    ->     category_id INT,
    ->     pass_name VARCHAR(100)
    -> )
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'bus_pass (
    sr_no INT,
    category_id INT,
    pass_name VARCHAR(100)
)' at line 1
mysql> bus_pass (
    ->     sr_no INT,
    ->     category_id INT,
    ->     pass_name VARCHAR(100)
    -> )
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'bus_pass (
    sr_no INT,
    category_id INT,
    pass_name VARCHAR(100)
)' at line 1
mysql> CREATE TABLE bus_pass (
    ->     sr_no INT,
    ->     category_id INT,
    ->     pass_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE bus_pass (
    ->     sr_no INT AUTO_INCREMENT PRIMARY KEY,
    ->     category_id INT,
    ->     pass_name VARCHAR(100)
    -> );
ERROR 1050 (42S01): Table 'bus_pass' already exists
mysql> INSERT INTO bus_pass (category_id, pass_name)
    -> VALUES (2, 'New Pass');
Query OK, 1 row affected (0.00 sec)

mysql> DROP DATABASE bpmspythondb;
Query OK, 14 rows affected (0.05 sec)

mysql> CREATE DATABASE bpmspythondb;
Query OK, 1 row affected (0.00 sec)

mysql> use bpmspythondb;
Database changed
mysql> -- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
mysql> --
mysql> -- Host: localhost    Database: bpmspythondb
mysql> -- ------------------------------------------------------
mysql> -- Server version8.0.43
mysql> 
mysql> /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET NAMES utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE='+00:00' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_category`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_category`;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_category` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `categoryname` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_category`
mysql> --
mysql> 
mysql> LOCK TABLES `app_category` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_category` VALUES (1,'Delux Bus','2024-02-05 05:07:39.151822','2024-02-05 05:07:39.151822'),(2,'AC Bus','2024-02-05 05:07:47.920653','2024-02-05 05:07:47.920653'),(3,'Non AC Bus','2024-02-05 05:07:59.240819','2024-02-05 05:07:59.240819'),(4,'Volvo Buses','2024-02-05 05:08:26.487218','2024-02-25 03:48:22.060363');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_login` datetime(6) DEFAULT NULL,
    ->   `is_superuser` tinyint(1) NOT NULL,
    ->   `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `is_staff` tinyint(1) NOT NULL,
    ->   `is_active` tinyint(1) NOT NULL,
    ->   `date_joined` datetime(6) NOT NULL,
    ->   `profile_pic` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `username` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected, 3 warnings (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_customuser` VALUES (1,'pbkdf2_sha256$390000$BhfNk7YSJzx57DCjgZm2wC$+4eTLIf+ghUHUyDrEFd7ACoD8sKQE2K/7MPv53y98Lo=','2024-02-25 04:03:15.123021',1,'admin','Admin','User','admin@gmail.com',1,1,'2024-02-05 05:00:22.626894',''),(2,'pbkdf2_sha256$1000000$Wrnzl0LqfLVSyYMmdaIeiH$jCQk3eno2ZKF3VGIHPuCDLcde4AuJq2/455TBu6PjTI=','2025-10-05 14:30:42.846035',1,'rutuja_mestry','Rutuja ','Mestry','rutujamestry2004@gmail.com',1,1,'2025-10-04 16:18:50.890107','');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `app_customuser` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_groups`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_groups`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_groups` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `group_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_groups_customuser_id_group_id_a5a0ca22_uniq` (`customuser_id`,`group_id`),
    ->   KEY `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` (`group_id`),
    ->   CONSTRAINT `app_customuser_group_customuser_id_164d073f_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_groups`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_groups` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_groups` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_groups` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_user_permissions`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_user_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_user_perm_customuser_id_permission_22e31019_uniq` (`customuser_id`,`permission_id`),
    ->   KEY `app_customuser_user__permission_id_c5920c75_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `app_customuser_user__customuser_id_4bcbaafb_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_user__permission_id_c5920c75_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_user_permissions` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_page`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_page`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_page` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `pagetitle` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `aboutus` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_page`
mysql> --
mysql> 
mysql> LOCK TABLES `app_page` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_page` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_page` VALUES (1,'About Us','pune',' Bus Pass Management System project is helpful to bus administration by reducing the paperwork, time consumption and makes the process of getting bus passes as simple and fast','','1234567890','2025-10-04 22:11:32.000000','2025-10-05 14:31:45.874980');
Query OK, 1 row affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_page` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_passes`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_passes`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_passes` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `fullname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `gender` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `profile_pic1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` bigint NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitytype` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitycardnumber` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `source` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `destinations` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `fromdate` datetime(6) NOT NULL,
    ->   `todate` datetime(6) NOT NULL,
    ->   `cost` int NOT NULL,
    ->   `passcreated_at` datetime(6) NOT NULL,
    ->   `category_id_id` bigint NOT NULL,
    ->   `passnumber` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `app_passes_category_id_id_e48fef17_fk_app_category_id` (`category_id_id`),
    ->   CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_passes`
mysql> --
mysql> 
mysql> LOCK TABLES `app_passes` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_passes` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_passes` ENABLE KEYS */;
Query OK, 0 rows affected (0.01 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `name` (`name`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group_permissions`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `group_id` int NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
    ->   KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
    ->   CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group_permissions` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_permission`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_permission`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_permission` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int NOT NULL,
    ->   `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
    ->   CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_permission`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_permission` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add passes',8,'add_passes'),(30,'Can change passes',8,'change_passes'),(31,'Can delete passes',8,'delete_passes'),(32,'Can view passes',8,'view_passes'),(33,'Can add page',9,'add_page'),(34,'Can change page',9,'change_page'),(35,'Can delete page',9,'delete_page'),(36,'Can view page',9,'view_page');
Query OK, 36 rows affected (0.00 sec)
Records: 36  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_admin_log`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_admin_log`;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_admin_log` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `action_time` datetime(6) NOT NULL,
    ->   `object_id` longtext COLLATE utf8mb4_general_ci,
    ->   `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `action_flag` smallint unsigned NOT NULL,
    ->   `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int DEFAULT NULL,
    ->   `user_id` bigint NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
    ->   KEY `django_admin_log_user_id_c564eba6_fk_app_customuser_id` (`user_id`),
    ->   CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
    ->   CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_admin_log`
mysql> --
mysql> 
mysql> LOCK TABLES `django_admin_log` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_content_type`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_content_type`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_content_type` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_content_type`
mysql> --
mysql> 
mysql> LOCK TABLES `django_content_type` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','category'),(6,'app','customuser'),(9,'app','page'),(8,'app','passes'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
Query OK, 9 rows affected (0.00 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_migrations`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_migrations`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_migrations` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `applied` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_migrations`
mysql> --
mysql> 
mysql> LOCK TABLES `django_migrations` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-05 04:58:28.292464'),(2,'contenttypes','0002_remove_content_type_name','2024-02-05 04:58:28.363774'),(3,'auth','0001_initial','2024-02-05 04:58:28.609041'),(4,'auth','0002_alter_permission_name_max_length','2024-02-05 04:58:28.671468'),(5,'auth','0003_alter_user_email_max_length','2024-02-05 04:58:28.681478'),(6,'auth','0004_alter_user_username_opts','2024-02-05 04:58:28.690419'),(7,'auth','0005_alter_user_last_login_null','2024-02-05 04:58:28.699429'),(8,'auth','0006_require_contenttypes_0002','2024-02-05 04:58:28.705376'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-05 04:58:28.714352'),(10,'auth','0008_alter_user_username_max_length','2024-02-05 04:58:28.722631'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-05 04:58:28.729166'),(12,'auth','0010_alter_group_name_max_length','2024-02-05 04:58:28.742012'),(13,'auth','0011_update_proxy_permissions','2024-02-05 04:58:28.752916'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-05 04:58:28.760757'),(15,'app','0001_initial','2024-02-05 04:58:29.121755'),(16,'admin','0001_initial','2024-02-05 04:58:29.270683'),(17,'admin','0002_logentry_remove_auto_add','2024-02-05 04:58:29.282654'),(18,'admin','0003_logentry_add_action_flag_choices','2024-02-05 04:58:29.294619'),(19,'app','0002_category','2024-02-05 04:58:29.306796'),(20,'app','0003_passes','2024-02-05 04:58:29.369064'),(21,'app','0004_passes_passnumber_alter_passes_mobilenumber','2024-02-05 04:58:29.390009'),(22,'app','0005_page','2024-02-05 04:58:29.402345'),(23,'app','0006_rename_profile_pic_customuser_profile_pic1','2024-02-05 04:58:29.418303'),(24,'app','0007_customuser_mobilenumber','2024-02-05 04:58:29.437522'),(25,'app','0008_remove_customuser_mobilenumber','2024-02-05 04:58:29.454355'),(26,'app','0009_rename_profile_pic1_customuser_profile_pic_and_more','2024-02-05 04:58:29.472193'),(27,'app','0010_rename_profile_pic_passes_profile_pic1','2024-02-05 04:58:29.482761'),(28,'sessions','0001_initial','2024-02-05 04:58:29.519089'),(29,'app','0011_alter_passes_profile_pic1','2024-02-05 05:31:24.468437'),(30,'app','0012_alter_passes_fromdate_alter_passes_todate','2025-10-04 14:58:06.298707');
Query OK, 30 rows affected (0.00 sec)
Records: 30  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_session`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_session`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_session` (
    ->   `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `expire_date` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`session_key`),
    ->   KEY `django_session_expire_date_a5c62663` (`expire_date`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_session`
mysql> --
mysql> 
mysql> LOCK TABLES `django_session` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_session` VALUES ('n1ornf8ccns12hfgmrxe63nkye4ubc74','.eJxVjDsOwjAQBe_iGln-bexQ0nMGa-Nd4wCypTipEHeHSCmgfTPzXiLitpa4dV7iTOIsjDj9bhOmB9cd0B3rrcnU6rrMk9wVedAur434eTncv4OCvXxrcCobhcgYgoNE1kIGzgMO1mvvNehggDBkUt5kds7SaM3IHk2aHATx_gDXxjd6:1v5Pl4:hPzGYR1zcOaNUpRvUpTX88KScIyrC2l7VClp4yYyzGU','2025-10-19 14:30:42.849068'),('t82kn172fwmqriy2rh5ova1tsd80ir95','.eJxVjEEOwiAQRe_C2pCADC0u3XsGMswMUjWQlHZlvLsh6UK3_7333yrivpW4d1njwuqijDr9bgnpKXUAfmC9N02tbuuS9FD0Qbu-NZbX9XD_Dgr2MmojJlDykJl5YhGcMiBjkNkkwECzdRnFivUQPJ1JCNAyOETjwFv1-QIuYDlT:1rWyez:xnFOIBHpBFQZkBnOF6HxYSkBrJnfbCOOkRRLH5yMS6s','2024-02-19 13:05:17.897492');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> -- Dump completed on 2025-10-05 20:08:43
mysql> ;
ERROR: 
No query specified

mysql> INSERT INTO category (sr_no, category_name)
    -> VALUES (
    ->     COALESCE((SELECT MAX(sr_no) + 1 FROM category), 1),
    ->     'New Category'
    -> );
ERROR 1146 (42S02): Table 'bpmspythondb.category' doesn't exist
mysql> CREATE TABLE category (
    ->     sr_no INT NOT NULL,
    ->     category_name VARCHAR(100) NOT NULL,
    ->     PRIMARY KEY (sr_no)
    -> );
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO category (sr_no, category_name)
    -> VALUES (
    ->     COALESCE((SELECT MAX(sr_no) + 1 FROM category), 1),
    ->     'First Category'
    -> );
ERROR 1093 (HY000): You can't specify target table 'category' for update in FROM clause
mysql> -- Delete all categories if needed
mysql> DELETE FROM app_category;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bpmspythondb`.`app_passes`, CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`))
mysql> 
mysql> -- Reset AUTO_INCREMENT
mysql> ALTER TABLE app_category AUTO_INCREMENT = 1;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> -- Optional: Reorder IDs if rows exist
mysql> SET @count = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE app_category SET id = @count:= @count + 1 ORDER BY id;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`bpmspythondb`.`app_passes`, CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`))
mysql> DROP DATABASE bpmspythondb;
Query OK, 14 rows affected (0.05 sec)

mysql> CREATE DATABASE bpmspythondb;
Query OK, 1 row affected (0.01 sec)

mysql> use bpmspythondb;
Database changed
mysql> -- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
mysql> --
mysql> -- Host: localhost    Database: bpmspythondb
mysql> -- ------------------------------------------------------
mysql> -- Server version8.0.43
mysql> 
mysql> /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET NAMES utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE='+00:00' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_category`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_category`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_category` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `categoryname` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_category`
mysql> --
mysql> 
mysql> LOCK TABLES `app_category` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_category` VALUES (1,'Delux Bus','2024-02-05 05:07:39.151822','2024-02-05 05:07:39.151822'),(2,'AC Bus','2024-02-05 05:07:47.920653','2024-02-05 05:07:47.920653'),(3,'Non AC Bus','2024-02-05 05:07:59.240819','2024-02-05 05:07:59.240819'),(4,'Volvo Buses','2024-02-05 05:08:26.487218','2024-02-25 03:48:22.060363');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_login` datetime(6) DEFAULT NULL,
    ->   `is_superuser` tinyint(1) NOT NULL,
    ->   `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `is_staff` tinyint(1) NOT NULL,
    ->   `is_active` tinyint(1) NOT NULL,
    ->   `date_joined` datetime(6) NOT NULL,
    ->   `profile_pic` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `username` (`username`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected, 3 warnings (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_customuser` VALUES (1,'pbkdf2_sha256$390000$BhfNk7YSJzx57DCjgZm2wC$+4eTLIf+ghUHUyDrEFd7ACoD8sKQE2K/7MPv53y98Lo=','2024-02-25 04:03:15.123021',1,'admin','Admin','User','admin@gmail.com',1,1,'2024-02-05 05:00:22.626894',''),(2,'pbkdf2_sha256$1000000$Wrnzl0LqfLVSyYMmdaIeiH$jCQk3eno2ZKF3VGIHPuCDLcde4AuJq2/455TBu6PjTI=','2025-10-05 14:30:42.846035',1,'rutuja_mestry','Rutuja ','Mestry','rutujamestry2004@gmail.com',1,1,'2025-10-04 16:18:50.890107','');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `app_customuser` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_groups`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_groups`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_groups` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `group_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_groups_customuser_id_group_id_a5a0ca22_uniq` (`customuser_id`,`group_id`),
    ->   KEY `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` (`group_id`),
    ->   CONSTRAINT `app_customuser_group_customuser_id_164d073f_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_groups`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_groups` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_groups` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_groups` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_customuser_user_permissions`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_customuser_user_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `customuser_id` bigint NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `app_customuser_user_perm_customuser_id_permission_22e31019_uniq` (`customuser_id`,`permission_id`),
    ->   KEY `app_customuser_user__permission_id_c5920c75_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `app_customuser_user__customuser_id_4bcbaafb_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `app_customuser_user__permission_id_c5920c75_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_customuser_user_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `app_customuser_user_permissions` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_customuser_user_permissions` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_page`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_page`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_page` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `pagetitle` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `aboutus` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
    ->   `created_at` datetime(6) NOT NULL,
    ->   `updated_at` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_page`
mysql> --
mysql> 
mysql> LOCK TABLES `app_page` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_page` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `app_page` VALUES (1,'About Us','pune',' Bus Pass Management System project is helpful to bus administration by reducing the paperwork, time consumption and makes the process of getting bus passes as simple and fast','','1234567890','2025-10-04 22:11:32.000000','2025-10-05 14:31:45.874980');
Query OK, 1 row affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_page` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `app_passes`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `app_passes`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `app_passes` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `fullname` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `gender` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `profile_pic1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `mobilenumber` bigint NOT NULL,
    ->   `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitytype` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `identitycardnumber` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `source` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `destinations` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `fromdate` datetime(6) NOT NULL,
    ->   `todate` datetime(6) NOT NULL,
    ->   `cost` int NOT NULL,
    ->   `passcreated_at` datetime(6) NOT NULL,
    ->   `category_id_id` bigint NOT NULL,
    ->   `passnumber` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `app_passes_category_id_id_e48fef17_fk_app_category_id` (`category_id_id`),
    ->   CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `app_passes`
mysql> --
mysql> 
mysql> LOCK TABLES `app_passes` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_passes` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `app_passes` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `name` (`name`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_group_permissions`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_group_permissions`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_group_permissions` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `group_id` int NOT NULL,
    ->   `permission_id` int NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
    ->   KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
    ->   CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
    ->   CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_group_permissions`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_group_permissions` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `auth_permission`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `auth_permission`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `auth_permission` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int NOT NULL,
    ->   `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
    ->   CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `auth_permission`
mysql> --
mysql> 
mysql> LOCK TABLES `auth_permission` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add passes',8,'add_passes'),(30,'Can change passes',8,'change_passes'),(31,'Can delete passes',8,'delete_passes'),(32,'Can view passes',8,'view_passes'),(33,'Can add page',9,'add_page'),(34,'Can change page',9,'change_page'),(35,'Can delete page',9,'delete_page'),(36,'Can view page',9,'view_page');
Query OK, 36 rows affected (0.00 sec)
Records: 36  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_admin_log`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_admin_log`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_admin_log` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `action_time` datetime(6) NOT NULL,
    ->   `object_id` longtext COLLATE utf8mb4_general_ci,
    ->   `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `action_flag` smallint unsigned NOT NULL,
    ->   `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `content_type_id` int DEFAULT NULL,
    ->   `user_id` bigint NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
    ->   KEY `django_admin_log_user_id_c564eba6_fk_app_customuser_id` (`user_id`),
    ->   CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
    ->   CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_customuser` (`id`),
    ->   CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_admin_log`
mysql> --
mysql> 
mysql> LOCK TABLES `django_admin_log` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_content_type`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_content_type`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_content_type` (
    ->   `id` int NOT NULL AUTO_INCREMENT,
    ->   `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    ->   PRIMARY KEY (`id`),
    ->   UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_content_type`
mysql> --
mysql> 
mysql> LOCK TABLES `django_content_type` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','category'),(6,'app','customuser'),(9,'app','page'),(8,'app','passes'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
Query OK, 9 rows affected (0.00 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_migrations`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_migrations`;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_migrations` (
    ->   `id` bigint NOT NULL AUTO_INCREMENT,
    ->   `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `applied` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`id`)
    -> ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_migrations`
mysql> --
mysql> 
mysql> LOCK TABLES `django_migrations` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-05 04:58:28.292464'),(2,'contenttypes','0002_remove_content_type_name','2024-02-05 04:58:28.363774'),(3,'auth','0001_initial','2024-02-05 04:58:28.609041'),(4,'auth','0002_alter_permission_name_max_length','2024-02-05 04:58:28.671468'),(5,'auth','0003_alter_user_email_max_length','2024-02-05 04:58:28.681478'),(6,'auth','0004_alter_user_username_opts','2024-02-05 04:58:28.690419'),(7,'auth','0005_alter_user_last_login_null','2024-02-05 04:58:28.699429'),(8,'auth','0006_require_contenttypes_0002','2024-02-05 04:58:28.705376'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-05 04:58:28.714352'),(10,'auth','0008_alter_user_username_max_length','2024-02-05 04:58:28.722631'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-05 04:58:28.729166'),(12,'auth','0010_alter_group_name_max_length','2024-02-05 04:58:28.742012'),(13,'auth','0011_update_proxy_permissions','2024-02-05 04:58:28.752916'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-05 04:58:28.760757'),(15,'app','0001_initial','2024-02-05 04:58:29.121755'),(16,'admin','0001_initial','2024-02-05 04:58:29.270683'),(17,'admin','0002_logentry_remove_auto_add','2024-02-05 04:58:29.282654'),(18,'admin','0003_logentry_add_action_flag_choices','2024-02-05 04:58:29.294619'),(19,'app','0002_category','2024-02-05 04:58:29.306796'),(20,'app','0003_passes','2024-02-05 04:58:29.369064'),(21,'app','0004_passes_passnumber_alter_passes_mobilenumber','2024-02-05 04:58:29.390009'),(22,'app','0005_page','2024-02-05 04:58:29.402345'),(23,'app','0006_rename_profile_pic_customuser_profile_pic1','2024-02-05 04:58:29.418303'),(24,'app','0007_customuser_mobilenumber','2024-02-05 04:58:29.437522'),(25,'app','0008_remove_customuser_mobilenumber','2024-02-05 04:58:29.454355'),(26,'app','0009_rename_profile_pic1_customuser_profile_pic_and_more','2024-02-05 04:58:29.472193'),(27,'app','0010_rename_profile_pic_passes_profile_pic1','2024-02-05 04:58:29.482761'),(28,'sessions','0001_initial','2024-02-05 04:58:29.519089'),(29,'app','0011_alter_passes_profile_pic1','2024-02-05 05:31:24.468437'),(30,'app','0012_alter_passes_fromdate_alter_passes_todate','2025-10-04 14:58:06.298707');
Query OK, 30 rows affected (0.00 sec)
Records: 30  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Table structure for table `django_session`
mysql> --
mysql> 
mysql> DROP TABLE IF EXISTS `django_session`;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET @saved_cs_client     = @@character_set_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!50503 SET character_set_client = utf8mb4 */;
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE TABLE `django_session` (
    ->   `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
    ->   `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
    ->   `expire_date` datetime(6) NOT NULL,
    ->   PRIMARY KEY (`session_key`),
    ->   KEY `django_session_expire_date_a5c62663` (`expire_date`)
    -> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40101 SET character_set_client = @saved_cs_client */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> --
mysql> -- Dumping data for table `django_session`
mysql> --
mysql> 
mysql> LOCK TABLES `django_session` WRITE;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO `django_session` VALUES ('n1ornf8ccns12hfgmrxe63nkye4ubc74','.eJxVjDsOwjAQBe_iGln-bexQ0nMGa-Nd4wCypTipEHeHSCmgfTPzXiLitpa4dV7iTOIsjDj9bhOmB9cd0B3rrcnU6rrMk9wVedAur434eTncv4OCvXxrcCobhcgYgoNE1kIGzgMO1mvvNehggDBkUt5kds7SaM3IHk2aHATx_gDXxjd6:1v5Pl4:hPzGYR1zcOaNUpRvUpTX88KScIyrC2l7VClp4yYyzGU','2025-10-19 14:30:42.849068'),('t82kn172fwmqriy2rh5ova1tsd80ir95','.eJxVjEEOwiAQRe_C2pCADC0u3XsGMswMUjWQlHZlvLsh6UK3_7333yrivpW4d1njwuqijDr9bgnpKXUAfmC9N02tbuuS9FD0Qbu-NZbX9XD_Dgr2MmojJlDykJl5YhGcMiBjkNkkwECzdRnFivUQPJ1JCNAyOETjwFv1-QIuYDlT:1rWyez:xnFOIBHpBFQZkBnOF6HxYSkBrJnfbCOOkRRLH5yMS6s','2024-02-19 13:05:17.897492');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> /*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
Query OK, 0 rows affected (0.00 sec)

mysql> UNLOCK TABLES;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
Query OK, 0 rows affected (0.00 sec)

mysql> /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
Query OK, 0 rows affected (0.01 sec)

mysql> /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> -- Dump completed on 2025-10-05 20:08:43
mysql> ;
ERROR: 
No query specified

mysql> -- Delete all categories if needed
mysql> DELETE FROM app_category;
Query OK, 4 rows affected (0.00 sec)

mysql> 
mysql> -- Reset AUTO_INCREMENT
mysql> ALTER TABLE app_category AUTO_INCREMENT = 1;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> -- Optional: Reorder IDs if rows exist
mysql> SET @count = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE app_category SET id = @count:= @count + 1 ORDER BY id;
Query OK, 0 rows affected, 1 warning (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 1

mysql> -- Delete all passes if needed
mysql> DELETE FROM app_passes;
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> -- Reset AUTO_INCREMENT
mysql> ALTER TABLE app_passes AUTO_INCREMENT = 1;
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> -- Optional: Reorder IDs if rows exist
mysql> SET @count = 0;
Query OK, 0 rows affected (0.01 sec)

mysql> UPDATE app_passes SET id = @count:= @count + 1 ORDER BY id;
Query OK, 0 rows affected, 1 warning (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 1

mysql> ALTER TABLE app_category ADD COLUMN sr_no INT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> SET @count = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE app_category SET sr_no = @count:= @count + 1 ORDER BY id;
Query OK, 0 rows affected, 1 warning (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 1

mysql> ALTER TABLE app_passes ADD COLUMN pass_sr_no INT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> SET @count = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE app_passes SET pass_sr_no = @count:= @count + 1 ORDER BY id;
Query OK, 0 rows affected, 1 warning (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 1

mysql> INSERT INTO app_category (categoryname, created_at, updated_at, sr_no)
    -> SELECT 'New Category', NOW(), NOW(), 
    ->        COALESCE(
    ->            (SELECT MIN(t1.sr_no + 1) 
    ->             FROM app_category t1 
    ->             LEFT JOIN app_category t2 ON t1.sr_no + 1 = t2.sr_no 
    ->             WHERE t2.sr_no IS NULL), 1
    ->        );
Query OK, 1 row affected (0.00 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> INSERT INTO app_passes (fullname, gender, ..., category_id_id, passnumber)
    -> SELECT 'John Doe', 'Male', ..., 1, 
    ->        COALESCE(
    ->            (SELECT MIN(t1.passnumber + 1) 
    ->             FROM app_passes t1 
    ->             LEFT JOIN app_passes t2 
    ->               ON t1.passnumber + 1 = t2.passnumber 
    ->             WHERE t1.category_id_id = 1 AND t2.passnumber IS NULL
    ->            ), 1
    ->        );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '..., category_id_id, passnumber)
SELECT 'John Doe', 'Male', ..., 1, 
       COAL' at line 1
mysql> INSERT INTO app_category (categoryname, created_at, updated_at, sr_no)
    -> SELECT 'New Category', NOW(), NOW(),
    ->        COALESCE(
    ->            (SELECT MIN(t1.sr_no + 1) 
    ->             FROM app_category t1
    ->             LEFT JOIN app_category t2 ON t1.sr_no + 1 = t2.sr_no
    ->             WHERE t2.sr_no IS NULL
    ->            ), 1
    ->        );
Query OK, 1 row affected (0.00 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> INSERT INTO app_passes
    -> (fullname, gender, profile_pic1, mobilenumber, email, identitytype, identitycardnumber, source, destinations, fromdate, todate, cost, passcreated_at, category_id_id, passnumber)
    -> SELECT ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY), ?, NOW(), ?, 
    ->        COALESCE(
    ->            (SELECT MIN(t1.passnumber + 1)
    ->             FROM app_passes t1
    ->             LEFT JOIN app_passes t2 ON t1.passnumber + 1 = t2.passnumber
    ->             WHERE t1.category_id_id = ? AND t2.passnumber IS NULL
    ->            ), 1
    ->        );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY), ?, NOW(), ?,' at line 3
mysql> INSERT INTO app_passes
    -> (fullname, gender, profile_pic1, mobilenumber, email, identitytype, identitycardnumber, source, destinations, fromdate, todate, cost, passcreated_at, category_id_id, passnumber)
    -> SELECT 
    -> 'John Doe', 
    -> 'Male', 
    -> 'profile.jpg', 
    -> 1234567890, 
    -> 'john@example.com', 
    -> 'Aadhar Card', 
    -> '1234-5678-9012', 
    -> 'Pune', 
    -> 'Mumbai', 
    -> NOW(), 
    -> DATE_ADD(NOW(), INTERVAL 30 DAY), 
    -> 500, 
    -> NOW(), 
    -> 1,  -- category_id
    -> COALESCE(
    ->     (SELECT MIN(t1.passnumber + 1)
    ->      FROM app_passes t1
    ->      LEFT JOIN app_passes t2 ON t1.passnumber + 1 = t2.passnumber
    ->      WHERE t1.category_id_id = 1 AND t2.passnumber IS NULL
    ->     ), 1
    -> );
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`bpmspythondb`.`app_passes`, CONSTRAINT `app_passes_category_id_id_e48fef17_fk_app_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`))
mysql> FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (`category_id_id`) REFERENCES `app_category` (`id`)' at line 1
mysql> SHOW TABLES;
+---------------------------------+
| Tables_in_bpmspythondb          |
+---------------------------------+
| app_category                    |
| app_customuser                  |
| app_customuser_groups           |
| app_customuser_user_permissions |
| app_page                        |
| app_passes                      |
| auth_group                      |
| auth_group_permissions          |
| auth_permission                 |
| django_admin_log                |
| django_content_type             |
| django_migrations               |
| django_session                  |
+---------------------------------+
13 rows in set (0.00 sec)

mysql> desc app_passes;
+--------------------+--------------+------+-----+---------+----------------+
| Field              | Type         | Null | Key | Default | Extra          |
+--------------------+--------------+------+-----+---------+----------------+
| id                 | bigint       | NO   | PRI | NULL    | auto_increment |
| fullname           | varchar(250) | NO   |     | NULL    |                |
| gender             | varchar(100) | NO   |     | NULL    |                |
| profile_pic1       | varchar(100) | NO   |     | NULL    |                |
| mobilenumber       | bigint       | NO   |     | NULL    |                |
| email              | varchar(200) | NO   |     | NULL    |                |
| identitytype       | varchar(200) | NO   |     | NULL    |                |
| identitycardnumber | varchar(250) | NO   |     | NULL    |                |
| source             | varchar(250) | NO   |     | NULL    |                |
| destinations       | varchar(250) | NO   |     | NULL    |                |
| fromdate           | datetime(6)  | NO   |     | NULL    |                |
| todate             | datetime(6)  | NO   |     | NULL    |                |
| cost               | int          | NO   |     | NULL    |                |
| passcreated_at     | datetime(6)  | NO   |     | NULL    |                |
| category_id_id     | bigint       | NO   | MUL | NULL    |                |
| passnumber         | int          | NO   |     | NULL    |                |
| pass_sr_no         | int          | YES  |     | NULL    |                |
+--------------------+--------------+------+-----+---------+----------------+
17 rows in set (0.00 sec)

mysql> INSERT INTO app_passes
    -> (fullname, gender, profile_pic1, mobilenumber, email, identitytype, identitycardnumber, source, destinations, fromdate, todate, cost, passcreated_at, category_id_id, passnumber)
    -> SELECT
    -> 'John Doe',               -- fullname
    -> 'Male',                   -- gender
    -> 'profile.jpg',            -- profile_pic1
    -> 1234567890,               -- mobilenumber
    -> 'john@example.com',       -- email
    -> 'Aadhar Card',            -- identitytype
    -> '1234-5678-9012',         -- identitycardnumber
    -> 'Pune',                   -- source
    -> 'Mumbai',                 -- destinations
    -> NOW(),                    -- fromdate
    -> DATE_ADD(NOW(), INTERVAL 30 DAY),  -- todate
    -> 500,                       -- cost
    -> NOW(),                     -- passcreated_at
    -> c.id,                      -- category_id_id (looked up dynamically)
    -> COALESCE(
    ->     (SELECT MIN(t1.passnumber + 1)
    ->      FROM app_passes t1
    ->      LEFT JOIN app_passes t2 ON t1.passnumber + 1 = t2.passnumber
    ->      WHERE t1.category_id_id = c.id AND t2.passnumber IS NULL
    ->     ), 1
    -> )
    -> FROM app_category c
    -> WHERE c.categoryname = 'Delux Bus';  -- replace with your category name
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
