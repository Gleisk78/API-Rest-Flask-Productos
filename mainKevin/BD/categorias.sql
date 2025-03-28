-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: punto_facil
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT '1',
  `fhc` datetime DEFAULT NULL,
  `uci` int(11) DEFAULT NULL COMMENT 'usuario cración id',
  `fecha_hora_actualizacion` datetime DEFAULT NULL,
  `usuario_actualizacion_id` int(11) DEFAULT NULL,
  `eliminado` tinyint(4) DEFAULT '0',
  `negocioId` int(11) DEFAULT NULL,
  `es_acceso_rapido` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (34,'vinos','vqqivbshiixujhjwdt.jpg',1,'2021-03-02 08:56:41',52,'2021-03-17 12:19:59',NULL,1,1,0),(35,'Yogurths','yewvbtpgfpepuwdrzj.jpg',1,'2021-03-02 08:58:18',52,'2021-03-17 14:21:08',NULL,1,1,0),(36,'Snacks y Galletas','bsuoxjinyvskkfkgmz.jpeg',1,'2021-03-02 08:59:25',52,'2021-03-17 14:21:34',NULL,1,1,0),(93,'Bebidas','bsuoxjinyvskkfkgmz.jpeg',1,NULL,NULL,NULL,NULL,1,1,0),(94,'Prueba','prueba.jpg',1,'2021-07-21 09:03:17',NULL,NULL,NULL,1,1,0),(95,'Prueba','prueba.jpg',1,'2021-07-21 09:12:28',7,NULL,NULL,1,1,0),(96,'nmmmm','yksyvhhyegdzrfkcxe.jpg',1,'2021-07-21 09:42:42',7,NULL,NULL,1,1,0),(97,'xxx','cslnsnfvtvunbftxxm.jpg',1,'2021-07-21 10:50:16',7,NULL,NULL,1,1,0),(98,'cbcvb','fbghsdhauolqzaywsh.jpg',1,'2021-07-21 11:28:14',7,NULL,NULL,1,1,0),(99,'dfgdfgdfgdfg','hplrrqzubfprvsjoct.jpg',1,'2021-07-21 12:05:23',7,NULL,NULL,1,1,0),(100,'etertdt','wlhinlluifvyvgbiof.jpg',1,'2021-07-21 12:12:11',7,NULL,NULL,1,1,0),(101,'Prueba','cjogcbcbjhpjkbsrwv.jpg',1,'2021-07-21 12:21:10',7,NULL,NULL,1,1,0),(102,'Helados','onihijwawuuasnmytb.jpg',1,'2021-07-21 12:33:07',7,NULL,NULL,1,1,0),(103,'Snacks','hfvkqqbefsbnjcdlsw.jpg',1,'2021-07-21 14:30:54',7,NULL,NULL,1,1,0),(104,'Snacks','wlremhzwsfszoolfia.jpg',1,'2021-07-21 14:30:55',7,NULL,NULL,1,1,0),(105,'Papel de impresión','aqjvfeaqqzmpksuttj.png',1,'2021-07-21 17:54:46',7,NULL,NULL,0,1,1),(106,'Helados','pwmiozgfouggdkpsjp.jpg',1,'2021-07-21 17:56:06',7,NULL,NULL,1,1,0),(107,'Pastas ','puuppymbtsjgdwbpea.jpg',1,'2021-07-21 20:12:56',7,NULL,NULL,1,1,0),(108,'Frutas','dgvnwqcsmczikxqhfy.jpg',1,'2021-07-21 20:23:52',7,NULL,NULL,1,1,0),(109,'Impresoras','xsiuxfxqtiixixuutm.jpg',1,'2021-09-06 21:14:54',7,NULL,NULL,0,1,1),(110,'Lectores de Barra','rryvwliwwfggszwbzf.webp',1,'2021-09-06 21:16:17',7,NULL,NULL,0,1,0),(111,'Lacteos','buddyrjjlgvnkajktm.jpg',1,'2021-09-30 23:59:15',7,NULL,NULL,1,1,0),(112,'Barquillos','Helado.jpg',1,'2021-11-08 14:56:37',68,NULL,NULL,0,2,0),(113,'Helados','Helados.png',1,'2021-11-08 14:59:11',68,NULL,NULL,1,2,0),(114,'Helados','Helados.png',1,'2021-11-08 15:00:17',68,NULL,NULL,1,2,0),(115,'Helados','Helados.png',1,'2021-11-08 15:04:48',68,NULL,NULL,1,2,0),(116,'Bebidas','Bebidas.jpg',1,'2021-12-29 14:40:24',68,NULL,NULL,0,2,1),(117,'Galletas y Dulces','Galletas y Dulces.png',1,'2022-01-03 13:57:39',68,NULL,NULL,1,2,0),(118,'lacteos','lacteos.png',1,'2022-01-08 13:08:43',68,NULL,NULL,1,2,0),(119,'Sandwiches ','Sandwiches .jpg',1,'2022-01-08 14:06:07',68,NULL,NULL,1,2,0),(120,'Carteras con correa','Carteras con correa.webp',1,'2022-01-08 16:55:15',72,NULL,NULL,0,3,1),(121,'Billeteras','Billeteras.jpg',1,'2022-01-08 19:33:14',72,NULL,NULL,0,3,0),(122,'Cinturones','Cinturones.jpg',1,'2022-01-08 19:45:46',72,NULL,NULL,0,3,0),(126,'Arroz','Arroz.jpg',1,'2022-01-22 16:57:53',68,NULL,NULL,1,2,0),(134,'Pañuelos','Pañuelos.png',1,'2022-04-01 12:57:55',72,NULL,NULL,0,3,0),(137,'Prueba X','Prueba X.png',1,'2022-04-26 13:23:48',72,NULL,NULL,0,3,0),(145,'Smoothies','Batidos.jpg',1,'2022-06-30 12:30:46',68,NULL,NULL,0,2,1),(146,'Papas Fritas','Papas Fritas.jpg',1,'2022-06-30 12:35:23',68,NULL,NULL,0,2,0),(147,'Gavetas de dinero','Gavetas de dinero.jpg',1,'2022-07-08 12:43:21',7,NULL,NULL,0,1,0),(148,'Impresora Etiquetas','Impresora Etiquetas.jpg',1,'2022-07-08 15:34:00',7,NULL,NULL,0,1,0),(149,'Cables','',1,'2022-09-08 16:10:26',7,NULL,NULL,0,1,1),(152,'Hot Dogs','Hot Dogs.jpeg',1,'2023-04-17 11:17:06',68,NULL,NULL,1,2,1),(153,'Donuts','Donuts.jpg',1,'2023-04-27 15:25:21',68,NULL,NULL,0,2,1),(154,'Cafe','Cafe.jpeg',1,'2023-04-27 18:04:53',68,NULL,NULL,0,2,1),(155,'Helados','Helados.webp',1,'2023-09-07 14:49:08',68,NULL,NULL,0,2,1),(160,'Panaderia','Panaderia.jpeg',1,'2023-11-02 22:29:04',68,NULL,NULL,0,2,1),(161,'Verduras','Verduras.jpg',1,'2023-11-02 22:54:56',68,NULL,NULL,0,2,1),(162,'Sandwiches','Sandwiches.jpg',1,'2023-12-07 09:55:12',68,NULL,NULL,0,2,1),(163,'Poleras deportivas','None',1,'2024-01-20 09:44:47',140,NULL,NULL,0,4,0),(164,'Pantalones de vestir','None',1,'2024-01-20 10:16:12',140,NULL,NULL,0,4,0),(165,'Pantalones cortos shorts','None',1,'2024-01-20 10:19:10',140,NULL,NULL,0,4,0),(166,'Poleras casual','None',1,'2024-01-20 10:20:34',140,NULL,NULL,0,4,0),(179,'Prueba','None',1,'2024-01-20 11:11:56',140,NULL,NULL,0,4,0),(180,'Prueba','None',1,'2024-01-20 11:12:51',140,NULL,NULL,0,4,0),(181,'Prueba 2000','None',1,'2024-01-22 10:36:06',140,NULL,NULL,0,4,0),(182,'X23','None',1,'2024-01-22 11:45:22',140,NULL,NULL,0,4,0),(183,'X332','None',1,'2024-01-22 11:46:32',140,NULL,NULL,0,4,0),(184,'Prueba XSMNs','None',1,'2024-01-22 11:47:25',140,NULL,NULL,0,4,0),(192,'Juguetes',NULL,1,NULL,NULL,NULL,NULL,0,NULL,0),(249,'Lacteos','Lacteos.png',1,'2024-10-20 12:35:49',68,NULL,NULL,0,2,1),(250,'Confites y Golosinas','',1,'2024-10-20 12:43:53',68,NULL,NULL,0,2,0),(404,'Aseo e higuiene',NULL,1,'2024-11-23 17:09:44',141,NULL,NULL,0,5,0),(405,'Accesorios de vestuario',NULL,1,'2024-11-23 17:09:44',141,NULL,NULL,0,5,0),(406,'Collar, Correas y Arnés',NULL,1,'2024-11-23 17:09:45',141,NULL,NULL,0,5,0),(407,'Comederos y Bebederos',NULL,1,'2024-11-23 17:09:45',141,NULL,NULL,0,5,0),(408,'Accesorios',NULL,1,'2024-11-23 17:09:46',141,NULL,NULL,0,5,0),(409,'Ropa',NULL,1,'2024-11-23 17:09:46',141,NULL,NULL,0,5,0),(410,'ROPA',NULL,1,'2024-11-23 17:09:47',141,NULL,NULL,0,5,0),(411,'Bebederos y Comederos',NULL,1,'2024-11-23 17:09:48',141,NULL,NULL,0,5,0),(412,'Categoria Prueba n3','None',1,'2025-02-13 18:50:06',68,NULL,NULL,0,2,0),(413,'Carteras','',1,'2025-03-06 18:43:58',144,NULL,NULL,1,8,0),(414,'Bebidas','Bebidas.jpg',1,'2025-03-14 17:28:52',144,NULL,NULL,0,8,1),(415,'Completos','Completos.jpg',1,'2025-03-14 17:31:46',144,NULL,NULL,0,8,1),(416,'Papas fritas','Papas fritas.jpg',1,'2025-03-14 17:48:28',144,NULL,NULL,0,8,1);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 16:08:56
