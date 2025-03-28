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
-- Table structure for table `negocios`
--

DROP TABLE IF EXISTS `negocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negocios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(10) DEFAULT NULL,
  `razonSocial` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `representanteNombre` varchar(100) DEFAULT NULL,
  `representanteEmail` varchar(120) DEFAULT NULL,
  `representanteTelefono` varchar(12) DEFAULT NULL,
  `tipoNegocioId` int(11) DEFAULT NULL,
  `ventas_web` tinyint(4) DEFAULT '0',
  `eliminado` tinyint(4) DEFAULT '0',
  `meses` int(11) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `giro` varchar(250) DEFAULT NULL,
  `fechaResolucion` date DEFAULT NULL,
  `certificado` varchar(150) DEFAULT NULL,
  `token_api_documentos` varchar(100) DEFAULT NULL,
  `boleta_detalle_sku` tinyint(4) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `tiene_tienda` tinyint(4) DEFAULT NULL,
  `key_tienda` varchar(45) DEFAULT NULL,
  `es_base` tinyint(4) DEFAULT '0' COMMENT 'Es la tienda base que se usa para configuraciones y desarrollo',
  PRIMARY KEY (`id`),
  KEY `fk_tipo_negocio_idx` (`tipoNegocioId`),
  KEY `fk_negocio_tipo_plan_idx` (`plan_id`),
  CONSTRAINT `fk_negocio_tipo_plan` FOREIGN KEY (`plan_id`) REFERENCES `planes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_negocio` FOREIGN KEY (`tipoNegocioId`) REFERENCES `tipo_negocios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negocios`
--

LOCK TABLES `negocios` WRITE;
/*!40000 ALTER TABLE `negocios` DISABLE KEYS */;
INSERT INTO `negocios` VALUES (1,'77380106-1','E-SOFTLAB SPA','Pamplona 5375, Puente Alto','logo.jpg','Eduardo Hidalgo Castillo','ehidalgoca@gmail.com','950042633',1,1,0,NULL,NULL,'VENTA AL POR MENOR DE COMPUTADORES, EQUIPO PERIFERICO, PROGRAMAS INFORMATICOS','2022-08-19','EDUARDO ANDRES HIDALGO CASTILLO','#219910939AMLSIDLS1',1,NULL,1,NULL,NULL,0),(2,'22900999-2','TAWA','trinidad 2000','','Juan Diego','micaleo@gmail.com','48888888',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,1),(3,'17006123-3','FANNY CARTERAS','parque arauco local 34, Las Condes','pabqgzgkvnhtjumjiz.png','Fanny Guzman','fanny@gmail.com','985966666',1,0,0,NULL,NULL,'VENTA AL POR MAYOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO.','2022-08-19','FANNY GUZMAN PARADA',NULL,NULL,NULL,1,NULL,NULL,0),(5,'77380106-1','PIWO',NULL,'','Eduardo Hidalgo','ehidalgo@stpsantiago.cl',NULL,3,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'LOML939291212',0),(8,'70753125-8','Peppitos SPA',NULL,'wnvsdrdtjauybioaaw.jpg','Pepito Perez','pepito@ppepito.cl',NULL,3,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `negocios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 16:20:18
