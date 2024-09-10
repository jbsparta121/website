-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: website
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

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
-- Table structure for table `tbl_configuraciones`
--

DROP TABLE IF EXISTS `tbl_configuraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_configuraciones` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `nombre_configuracion` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configuraciones`
--

LOCK TABLES `tbl_configuraciones` WRITE;
/*!40000 ALTER TABLE `tbl_configuraciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_configuraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_entradas`
--

DROP TABLE IF EXISTS `tbl_entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_entradas` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_entradas`
--

LOCK TABLES `tbl_entradas` WRITE;
/*!40000 ALTER TABLE `tbl_entradas` DISABLE KEYS */;
INSERT INTO `tbl_entradas` VALUES (1,'2024-01-05','Software de restaurante','Se vende todo tipo de libros','1704999219_omg.jpg'),(2,'2023-12-15','Software de restaurante','Software para su restaurante a la medida realizado con PHP y MYSQL','1704998998_1.jpg'),(3,'2024-01-07','Software de restaurante','Software para su restaurante a la medida realizado con PHP y MYSQL','1704999115_horse.jpg'),(6,'2024-01-04','Venta de cursos','Vendemos cursos de todo tipo','1704999142_2.jpg');
/*!40000 ALTER TABLE `tbl_entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_equipo`
--

DROP TABLE IF EXISTS `tbl_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_equipo` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_equipo`
--

LOCK TABLES `tbl_equipo` WRITE;
/*!40000 ALTER TABLE `tbl_equipo` DISABLE KEYS */;
INSERT INTO `tbl_equipo` VALUES (1,'1705072918_IMG_3465.JPG','Juan David Barreto Ortiz ','Programador','http://twitter.com/jbsparta','http://facebook.com/Juan','http://linkedin.com/Juan'),(2,'1705075279_patojpg.jpg','Mariana Ramirez','Programadora','http://twitter.com/mmmmm','http://facebook.com/mmmmm','http://linkedin.com/mmmmm'),(3,'1705074121_1 (1).jpg','Edwar Sneider MuÃ±oz','Developer','http://twitter.com/edwar','http://facebook.com/edwar','http://linkedin.com/edwar'),(5,'1705093131_1.jpg','Reineiro Fulgencio','Developer','http://twitter.com/spartica','http://facebook.com/spartica','http://linkedin.com/spartica');
/*!40000 ALTER TABLE `tbl_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_portafolio`
--

DROP TABLE IF EXISTS `tbl_portafolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_portafolio` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_portafolio`
--

LOCK TABLES `tbl_portafolio` WRITE;
/*!40000 ALTER TABLE `tbl_portafolio` DISABLE KEYS */;
INSERT INTO `tbl_portafolio` VALUES (9,'Venta de software','Omg idk','1724344714_pse.png','Vendemos todo tipo de hardware','JBSPARTA121','Software de inegnieria','http://jbsparta.com'),(11,'Software de restaurante','Software para su restaurante a la medida','1704977481_2.jpg','Software para su restaurante a la medida realizado con PHP y MYSQL','Restaurante SPARTA','Software','http://jbsparta.com/restaurante'),(12,'Teinda en lÃ­nea','Una tienda de cursos','1704978321_1.jpg','Vendemos cursos de todo tipo','JBSPARTA','AplicaciÃ³n web','http://jbsparta.com');
/*!40000 ALTER TABLE `tbl_portafolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicios`
--

DROP TABLE IF EXISTS `tbl_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_servicios` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `icono` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicios`
--

LOCK TABLES `tbl_servicios` WRITE;
/*!40000 ALTER TABLE `tbl_servicios` DISABLE KEYS */;
INSERT INTO `tbl_servicios` VALUES (3,'fa-laptop','Sancion','Soporte a productos de cÃ³mputo'),(4,'fa-lock','Seguridad informÃ¡tica','Ofrecemos asesorÃ­a de seguridad para su empresa'),(5,'fa-shopping-cart','Venta de software','Vendemos todo tipo de software');
/*!40000 ALTER TABLE `tbl_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `correo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (2,'luchodiaz','12345','jbsparta123@gmail.com');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'website'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-10  8:28:18
