-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: twitter
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweet` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `tweet` varchar(140) NOT NULL,
  `data_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tweet`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet`
--

LOCK TABLES `tweet` WRITE;
/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;
INSERT INTO `tweet` VALUES (5,2,'oi','2018-05-03 18:01:59'),(6,2,'Caio vai toma no cu','2018-05-03 18:10:40'),(7,2,'oi','2018-05-03 18:37:09'),(8,2,'sei la','2018-05-03 18:37:14'),(9,2,'Koe','2018-05-03 18:37:22'),(10,2,'CAIO VAI TOMA NO SEU CU','2018-05-03 18:37:50'),(11,2,'koe','2018-05-03 18:40:11'),(12,2,'mano sei la','2018-05-03 18:40:20'),(13,2,'KOe','2018-05-03 18:40:28'),(14,2,'mano sei la','2018-05-03 18:40:32'),(15,2,'que fita é essa ','2018-05-03 18:40:37');
/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'trzfps','vitor_48@hotmail.com','4676c7c288be1315df32e03aef155977'),(3,'caioviado','caio@superaremedia.com.br','732002cec7aeb7987bde842b9e00ee3b'),(4,'ericarrombado','suamae@gmail.com.br','c404352c1bf61454828fb0b74a2906cb');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'twitter'
--

--
-- Dumping routines for database 'twitter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-03 18:41:19
