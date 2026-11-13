-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: nauka
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dzialy`
--

DROP TABLE IF EXISTS `dzialy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dzialy` (
  `numer` int(11) NOT NULL,
  `nazwa` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`numer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dzialy`
--

LOCK TABLES `dzialy` WRITE;
/*!40000 ALTER TABLE `dzialy` DISABLE KEYS */;
INSERT INTO `dzialy` VALUES (1,'Produkcja'),(2,'Marketing'),(3,'Kadry');
/*!40000 ALTER TABLE `dzialy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miejscowosc`
--

DROP TABLE IF EXISTS `miejscowosc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miejscowosc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `miejscowosc` varchar(100) DEFAULT NULL,
  `mieszkancy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miejscowosc`
--

LOCK TABLES `miejscowosc` WRITE;
/*!40000 ALTER TABLE `miejscowosc` DISABLE KEYS */;
INSERT INTO `miejscowosc` VALUES (1,'Kamiensk','3500'),(2,'Gomunice','400'),(4,'Warszawa','50000'),(5,'Gorzedow','1000'),(6,'Katowice','3500'),(7,'Kielce','400'),(8,'Kletnia','10000'),(9,'Plawno','50000'),(10,'Gdansk','1000');
/*!40000 ALTER TABLE `miejscowosc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesel`
--

DROP TABLE IF EXISTS `pesel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesel`
--

LOCK TABLES `pesel` WRITE;
/*!40000 ALTER TABLE `pesel` DISABLE KEYS */;
INSERT INTO `pesel` VALUES (1,'12345678901'),(2,'12345678902'),(4,'12345678904'),(5,'12345678905'),(6,'12345678906'),(7,'12345678907'),(8,'12345678908'),(9,'12345678909'),(10,'12345678919');
/*!40000 ALTER TABLE `pesel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `dzial` int(11) DEFAULT NULL,
  `zarobki` int(11) DEFAULT NULL,
  `pesel` varchar(11) DEFAULT NULL,
  `miejscowosc` varchar(100) DEFAULT NULL,
  `ludnosc` varchar(100) DEFAULT NULL,
  `rodzaj_szkoly` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Jan','Nowak',1,2500,'1','2',NULL,'1'),(2,'Adam','Kowalski',3,3500,'2','1',NULL,'2'),(4,'Robert','Brzozowski',2,1500,'4','5',NULL,'3'),(6,'Aleksander','Gonera',1,4000,'6','6',NULL,'1'),(7,'Artur','Borowik',2,2000,'7','7',NULL,'2'),(8,'Bartlomiej','Wiejacha',1,2300,'8','8',NULL,'3'),(9,'Robert','Lewandowski',3,2390,'9','9',NULL,'2'),(10,'Max','Verstappen',3,2790,'10','10',NULL,'1');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rodzaj_szkoly`
--

DROP TABLE IF EXISTS `rodzaj_szkoly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rodzaj_szkoly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rodzaj_szkoly` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodzaj_szkoly`
--

LOCK TABLES `rodzaj_szkoly` WRITE;
/*!40000 ALTER TABLE `rodzaj_szkoly` DISABLE KEYS */;
INSERT INTO `rodzaj_szkoly` VALUES (1,'techikum'),(2,'liceum'),(3,'nie_uczacy_sie');
/*!40000 ALTER TABLE `rodzaj_szkoly` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-13 10:21:49
