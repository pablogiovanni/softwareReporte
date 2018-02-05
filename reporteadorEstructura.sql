-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.10.102    Database: hotelsancarlos
-- ------------------------------------------------------
-- Server version	5.7.7-rc-log

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
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicacion` (
  `idAplicacion` int(11) NOT NULL,
  `nombreAplicacion` varchar(45) DEFAULT NULL,
  `descripcionAplicacion` varchar(45) DEFAULT NULL,
  `habilitarAplicacion` varchar(45) DEFAULT NULL,
  `reporteador_idReporte` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAplicacion`),
  KEY `fk_aplicacion_reporteador1_idx` (`reporteador_idReporte`),
  CONSTRAINT `fk_aplicacion_reporteador1` FOREIGN KEY (`reporteador_idReporte`) REFERENCES `reporteador` (`idReporte`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion`
--

LOCK TABLES `aplicacion` WRITE;
/*!40000 ALTER TABLE `aplicacion` DISABLE KEYS */;
INSERT INTO `aplicacion` VALUES (1000,'Reservas','NULL','1000',NULL),(1100,'Checkin','NULL','NULL',1100),(1200,'Ckeckout','NULL','NULL',NULL);
/*!40000 ALTER TABLE `aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL,
  `fechaBitacora` date DEFAULT NULL,
  `horaBitacora` time DEFAULT NULL,
  `accionUsuario` varchar(45) DEFAULT NULL,
  `resultadoBitacora` varchar(45) DEFAULT NULL,
  `errorBitacora` varchar(45) DEFAULT NULL,
  `ipPc` varchar(45) DEFAULT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  `aplicacion_idAplicacion` int(11) NOT NULL,
  PRIMARY KEY (`idBitacora`),
  KEY `fk_bitacora_usuario1_idx` (`usuario_idUsuario`),
  KEY `fk_bitacora_aplicacion1_idx` (`aplicacion_idAplicacion`),
  CONSTRAINT `fk_bitacora_aplicacion1` FOREIGN KEY (`aplicacion_idAplicacion`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bitacora_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePerfil` varchar(45) DEFAULT NULL,
  `descripcionPerfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporteador`
--

DROP TABLE IF EXISTS `reporteador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporteador` (
  `idReporte` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(85) DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReporte`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporteador`
--

LOCK TABLES `reporteador` WRITE;
/*!40000 ALTER TABLE `reporteador` DISABLE KEYS */;
INSERT INTO `reporteador` VALUES (1100,'cliente.rpt','C:\\Users\\Win10641607\\Desktop\\REPORTES\\cliente.rpt',NULL);
/*!40000 ALTER TABLE `reporteador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table1` (
  `idReporteg` int(11) NOT NULL AUTO_INCREMENT,
  `nombreReporteg` varchar(60) DEFAULT NULL,
  `pathr` varchar(60) DEFAULT NULL,
  `reporte_app_ip` int(11) NOT NULL,
  PRIMARY KEY (`idReporteg`),
  KEY `fk_table1_aplicacion1_idx` (`reporte_app_ip`),
  CONSTRAINT `fk_table1_aplicacion1` FOREIGN KEY (`reporte_app_ip`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `nombreUsuario` varchar(45) DEFAULT NULL,
  `apellidoUsuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `correoUsuario` varchar(45) DEFAULT NULL,
  `telefonoUsuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hotelsancarlos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-04 22:46:43
