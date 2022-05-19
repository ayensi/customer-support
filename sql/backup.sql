-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: customersupport
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

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

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Frederique Williamson','koss.brent@example.org','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WbvOFJFXi8','2022-05-18 07:54:24','2022-05-18 07:54:24'),(2,'Julian Strosin','marc.mills@example.com','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ULwP3cSpvz','2022-05-18 07:54:24','2022-05-18 07:54:24'),(3,'Dominic Feeney','goodwin.derek@example.net','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iP1ShHia8f','2022-05-18 07:57:12','2022-05-18 07:57:12'),(4,'Herta Altenwerth','larkin.lexie@example.org','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dx9NiOzutM','2022-05-18 07:57:12','2022-05-18 07:57:12');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Software',NULL,NULL),(2,'Hardware',NULL,NULL),(3,'Network',NULL,NULL),(4,'Product',NULL,NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_05_18_102417_create_admins_table',1),(6,'2022_05_18_102445_create_departments_table',1),(7,'2022_05_18_102432_create_staff_table',2),(8,'2022_05_18_102458_create_tickets_table',3),(9,'2022_05_18_104406_add_ticket_table_user_id',4),(10,'2022_05_18_121033_add_to_ticket_table',5),(11,'2022_05_18_122654_add_to_tickets_table',6),(12,'2022_05_18_123218_create_staff_replies_table',7),(13,'2022_05_18_123231_create_user_replies_table',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',6,'adebayoakinfewa','94b00b814016a34713a1c9d9e028e6d157deb679668e9110d43141517f868477','[\"*\"]',NULL,'2022-05-18 08:26:06','2022-05-18 08:26:06'),(2,'App\\Models\\User',6,'adebayoakinfewa','601fa74995762e3d1774f216d2ed9079b8ea13f731617f510d75311f352a4de0','[\"*\"]',NULL,'2022-05-18 08:26:17','2022-05-18 08:26:17'),(3,'App\\Models\\User',6,'adebayoakinfewa','f0406cced45e0c51a1849312f839c47722c8fd27c10975a89ebf743dc7cc51e5','[\"*\"]',NULL,'2022-05-18 08:26:19','2022-05-18 08:26:19'),(4,'App\\Models\\User',6,'adebayoakinfewa','6fbff61e816e4c70fe4b594cbf2a5cc764b4a55285bea29e13ca200cb6190fc7','[\"*\"]',NULL,'2022-05-18 08:29:25','2022-05-18 08:29:25'),(5,'App\\Models\\User',6,'adebayoakinfewa','68635dfbacb30bf07b1b3e6ab2b6709dcf627adf6585a109aa7bd7344d4734c7','[\"*\"]',NULL,'2022-05-18 08:35:18','2022-05-18 08:35:18'),(6,'App\\Models\\User',6,'adebayoakinfewa','5a31b03a7b3466436ac0a2626e4dbd2c31311cfd5b7b542a3176c599c035af15','[\"*\"]',NULL,'2022-05-18 08:42:10','2022-05-18 08:42:10'),(7,'App\\Models\\User',6,'adebayoakinfewa','4425743ca9c293c8fede9bf9e144c330b15415988c38426fbd53248aa6dde58e','[\"*\"]','2022-05-18 10:39:44','2022-05-18 09:05:44','2022-05-18 10:39:44'),(8,'App\\Models\\User',6,'adebayoakinfewa','93372e0c9be403ecfac3b471a85eade2a30ab98da8e82d385bf948cf69a9e3f3','[\"*\"]','2022-05-18 15:21:16','2022-05-18 15:20:36','2022-05-18 15:21:16'),(9,'App\\Models\\Admin',2,'adebayoakinfewa','deb2a26640a9c54d15204734ec9d75c9301ad81f23e47b343fdbe84042fd2186','[\"*\"]',NULL,'2022-05-18 15:34:38','2022-05-18 15:34:38'),(10,'App\\Models\\Staff',4,'adebayoakinfewa','d325e3f9833c86b794ea6bb519bd10967cdc8561b08f50b9fce36b85ea7ccd03','[\"*\"]','2022-05-18 15:36:40','2022-05-18 15:34:50','2022-05-18 15:36:40'),(11,'App\\Models\\Admin',2,'adebayoakinfewa','019712154249c9f78ef182d4605284d8e8dcc050124f43c6f1170723493a7ce5','[\"*\"]','2022-05-18 15:46:28','2022-05-18 15:37:20','2022-05-18 15:46:28'),(12,'App\\Models\\Staff',1,'adebayoakinfewa','b4e83b955e792d4e3c6e921a649c030edcbeb84c00569025198da8eca4f67b9f','[\"*\"]','2022-05-18 16:32:24','2022-05-18 15:47:03','2022-05-18 16:32:24');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_email_unique` (`email`),
  KEY `staff_department_id_foreign` (`department_id`),
  CONSTRAINT `staff_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Amelie Wolf','schmeler.vernie@example.com','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AKgMNQBSAL',1,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(2,'Delilah Lubowitz','gwen02@example.org','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YbRfGFyMnY',1,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(3,'Dr. Rae Legros DDS','darron81@example.net','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nDyfKTX5PB',1,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(4,'Dr. Rodrigo Kuhn PhD','little.matilde@example.org','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Vu63ZLIFZr',4,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(5,'Prof. Devin Reynolds DVM','shanel34@example.net','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PGFAQdUACh',4,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(6,'Mr. Joel Streich','mac68@example.com','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aBHu88jYCL',3,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(7,'Miss Chasity Ryan IV','karina.hodkiewicz@example.org','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Z0ZFYoBpVc',4,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(8,'Jordane Jerde','beatty.lester@example.net','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rXW4NILbFB',1,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(9,'Unique Jaskolski','arnoldo19@example.com','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BegphqWoNR',4,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(10,'Dr. Lee Pollich DVM','hartmann.trey@example.org','2022-05-18 07:54:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4OAeWhAGWn',4,'2022-05-18 07:54:24','2022-05-18 07:54:24'),(11,'Sydney Tillman','bailey.mraz@example.org','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gO1gnns1fi',4,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(12,'Miss Nina Blanda','medhurst.leatha@example.com','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PNK1UFRNRw',1,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(13,'Alessia Borer','kacie.daniel@example.com','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ofkaBEF29S',4,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(14,'Kathlyn Dickens','claudine14@example.org','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1BJ0IRBdcV',2,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(15,'Mohammad Bode','pagac.magdalena@example.org','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','de4sYv5HHC',4,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(16,'Lisette Sanford','jamaal14@example.org','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tj0MrYSTE7',1,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(17,'Pierce Huel','samanta.barton@example.org','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7tbOZS6lWO',3,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(18,'Prof. Alvis Harvey Sr.','reanna63@example.com','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MvKwx8Eodh',2,'2022-05-18 07:57:12','2022-05-18 07:57:12'),(19,'Dr. Edna Terry','lucius.bechtelar@example.net','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CPEB9R35ps',2,'2022-05-18 07:57:13','2022-05-18 07:57:13'),(20,'Blaze Davis','mpouros@example.net','2022-05-18 07:57:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','okIzghssFe',3,'2022-05-18 07:57:13','2022-05-18 07:57:13');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_replies`
--

DROP TABLE IF EXISTS `staff_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_replies_ticket_id_foreign` (`ticket_id`),
  CONSTRAINT `staff_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_replies`
--

LOCK TABLES `staff_replies` WRITE;
/*!40000 ALTER TABLE `staff_replies` DISABLE KEYS */;
INSERT INTO `staff_replies` VALUES (3,17,'Testing for customer wait...','2022-05-18 16:18:03','2022-05-18 16:18:03'),(4,17,'Testing for customer wait...','2022-05-18 16:19:44','2022-05-18 16:19:44'),(5,17,'Testing for customer wait...','2022-05-18 16:21:26','2022-05-18 16:21:26');
/*!40000 ALTER TABLE `staff_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','closed','waitingCustomer','resolved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `staff_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `department_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_staff_id_foreign` (`staff_id`),
  KEY `tickets_user_id_foreign` (`user_id`),
  KEY `tickets_department_id_foreign` (`department_id`),
  CONSTRAINT `tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'My internet is slow','Help me please','open',NULL,'2022-05-18 09:28:12','2022-05-18 09:50:16',6,3),(2,'in','I THINK,\' said Alice. \'Nothing WHATEVER?\' persisted the King. Here one of the same as they all cheered. Alice thought over all the rest of the leaves: \'I should have liked teaching it tricks very.','waitingCustomer',NULL,'2022-05-18 15:19:06','2022-05-18 15:19:06',20,4),(3,'enim','King, \'or I\'ll have you got in your knocking,\' the Footman went on in a trembling voice:-- \'I passed by his garden.\"\' Alice did not like the three gardeners who were lying round the court with a.','open',NULL,'2022-05-18 15:19:12','2022-05-18 15:19:12',7,1),(4,'repellendus','MARMALADE\', but to open them again, and went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of its right ear and left off quarrelling with the next verse,\' the Gryphon as if.','open',NULL,'2022-05-18 15:19:12','2022-05-18 15:19:12',6,3),(5,'accusantium','Majesty?\' he asked. \'Begin at the righthand bit again, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were.','waitingCustomer',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',15,4),(6,'et','CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door of the song, she kept on puzzling about it just grazed his nose, and broke to pieces against one of them attempted to.','open',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',7,3),(7,'et','I\'ve got back to her: its face was quite a crowd of little cartwheels, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the.','closed',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',14,4),(8,'voluptatem','A bright idea came into Alice\'s head. \'Is that the Mouse in the air: it puzzled her very much pleased at having found out a new idea to Alice, she went on muttering over the fire, and at once.','closed',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',12,3),(9,'omnis','Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the Mock Turtle: \'crumbs would all wash off in the wind, and the little dears.','waitingCustomer',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',9,4),(10,'quia','Pigeon in a whisper, half afraid that it is!\' \'Why should it?\' muttered the Hatter. He came in with a sigh: \'he taught Laughing and Grief, they used to call him Tortoise--\' \'Why did you do lessons?\'.','resolved',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',4,2),(11,'ipsa','An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the rattle of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough.','closed',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',19,4),(12,'et','Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit was no \'One, two, three, and away,\' but they were nowhere to be sure! However, everything is queer.','closed',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',6,1),(13,'error','Alice went on, \'and most of \'em do.\' \'I don\'t like them!\' When the pie was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the poor child, \'for I never.','open',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',14,3),(14,'dolor','Cat. \'--so long as there was Mystery,\' the Mock Turtle in a very respectful tone, but frowning and making quite a large pigeon had flown into her eyes; and once she remembered that she had never.','closed',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',5,1),(15,'omnis','Alice; \'I might as well wait, as she picked her way through the wood. \'If it had fallen into it: there were no tears. \'If you\'re going to happen next. \'It\'s--it\'s a very good advice, (though she.','resolved',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',3,1),(16,'quia','Mock Turtle. \'She can\'t explain it,\' said the White Rabbit was still in existence; \'and now for the rest of the day; and this Alice thought to herself. (Alice had been (Before she had put on his.','resolved',NULL,'2022-05-18 15:19:13','2022-05-18 15:19:13',10,2),(17,'et','Dormouse went on, very much confused, \'I don\'t even know what a dear quiet thing,\' Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with.','waitingCustomer',1,'2022-05-18 15:19:13','2022-05-18 16:21:26',15,1),(18,'optio','The three soldiers wandered about in all my life, never!\' They had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m I, and--oh dear, how puzzling it all is! I\'ll try.','waitingCustomer',NULL,'2022-05-18 15:19:14','2022-05-18 15:19:14',13,2),(19,'nihil','VERY tired of this. I vote the young Crab, a little door into that lovely garden. I think I could, if I fell off the top of his teacup and bread-and-butter, and then the Rabbit\'s voice; and the.','waitingCustomer',NULL,'2022-05-18 15:19:14','2022-05-18 15:19:14',4,4),(20,'amet','Dodo, \'the best way to fly up into the court, arm-in-arm with the other: the only difficulty was, that if you only kept on good terms with him, he\'d do almost anything you liked with the game,\' the.','resolved',NULL,'2022-05-18 15:19:14','2022-05-18 15:19:14',2,3),(21,'consequuntur','Alice felt a very interesting dance to watch,\' said Alice, rather alarmed at the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to repeat it, when a sharp hiss.','open',NULL,'2022-05-18 15:19:14','2022-05-18 15:19:14',10,1);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_replies`
--

DROP TABLE IF EXISTS `user_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_replies_ticket_id_foreign` (`ticket_id`),
  CONSTRAINT `user_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_replies`
--

LOCK TABLES `user_replies` WRITE;
/*!40000 ALTER TABLE `user_replies` DISABLE KEYS */;
INSERT INTO `user_replies` VALUES (11,1,'Updated message','2022-05-18 10:36:50','2022-05-18 10:36:50');
/*!40000 ALTER TABLE `user_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bettye Johnson','waylon18@example.org','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FJDijSjTUI','2022-05-18 07:54:23','2022-05-18 07:54:23'),(2,'Maeve Roberts','benny63@example.org','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6PzI1E0K5y','2022-05-18 07:54:23','2022-05-18 07:54:23'),(3,'Mrs. Cathy McLaughlin Jr.','wuckert.pasquale@example.org','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ap4pCPogTt','2022-05-18 07:54:23','2022-05-18 07:54:23'),(4,'Chyna Champlin I','jlind@example.net','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tNnzJk1Ryc','2022-05-18 07:54:23','2022-05-18 07:54:23'),(5,'Gloria Runolfsdottir','brennan.gleichner@example.com','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dyx7JgXoHK','2022-05-18 07:54:24','2022-05-18 07:54:24'),(6,'Jody Smitham','boconnell@example.com','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HvokH1D17Q','2022-05-18 07:54:24','2022-05-18 07:54:24'),(7,'Corbin Jaskolski DVM','kautzer.lillian@example.org','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','SbYlsUSO9g','2022-05-18 07:54:24','2022-05-18 07:54:24'),(8,'Ms. Bernice Windler','jwehner@example.net','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ly7bNOqTX6','2022-05-18 07:54:24','2022-05-18 07:54:24'),(9,'Watson Mertz','marlen65@example.com','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rh0khvQzAe','2022-05-18 07:54:24','2022-05-18 07:54:24'),(10,'Kathryne Kessler','ucassin@example.org','2022-05-18 07:54:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eXbnZoq7sO','2022-05-18 07:54:24','2022-05-18 07:54:24'),(11,'Kale Denesik','pouros.cora@example.net','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','J6vttE2OIe','2022-05-18 07:57:11','2022-05-18 07:57:11'),(12,'Paula Morissette','konopelski.lauriane@example.org','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zrnQB8Jp2o','2022-05-18 07:57:11','2022-05-18 07:57:11'),(13,'Adrianna Doyle','klein.kamron@example.com','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RJFbDiJV9Y','2022-05-18 07:57:11','2022-05-18 07:57:11'),(14,'Lucious Hill','streich.alfredo@example.com','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OCEkoS7ltS','2022-05-18 07:57:11','2022-05-18 07:57:11'),(15,'Alvah Vandervort','fhills@example.net','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JtYvCjNnQX','2022-05-18 07:57:11','2022-05-18 07:57:11'),(16,'Greg Schoen','baron86@example.com','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2ALVSVMozm','2022-05-18 07:57:11','2022-05-18 07:57:11'),(17,'Dr. Kameron Von I','marisa.sipes@example.com','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MmlZcYXJ3g','2022-05-18 07:57:11','2022-05-18 07:57:11'),(18,'Haley Fadel','nratke@example.org','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JyQ1BTAZZ2','2022-05-18 07:57:11','2022-05-18 07:57:11'),(19,'Dr. Sage Schaefer','pcorwin@example.com','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7NH0REOzdT','2022-05-18 07:57:11','2022-05-18 07:57:11'),(20,'Durward Kutch','koepp.zane@example.net','2022-05-18 07:57:11','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','D2JHIzPmlx','2022-05-18 07:57:12','2022-05-18 07:57:12');
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

-- Dump completed on 2022-05-19 11:35:43
