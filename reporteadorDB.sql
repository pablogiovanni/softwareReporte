-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: sql_server    Database: bd_seguridad
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `aguinaldo`
--

DROP TABLE IF EXISTS `aguinaldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aguinaldo` (
  `idAguinaldo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_aguinaldo_pago` datetime NOT NULL,
  `valorPercepcion` float NOT NULL,
  `estadoPago` int(11) NOT NULL,
  `contrato_idContrato` int(10) NOT NULL,
  PRIMARY KEY (`idAguinaldo`),
  KEY `fk_aguinaldo_contrato1_idx` (`contrato_idContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicacion` (
  `idAplicacion` int(11) NOT NULL,
  `nombreAplicacion` varchar(50) NOT NULL,
  `descripcionAplicacion` varchar(80) DEFAULT NULL,
  `reporteador_idReporte` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAplicacion`),
  KEY `fk_Aplicacion_Reporte1_idx` (`reporteador_idReporte`),
  CONSTRAINT `fk_Aplicacion_Reporte1` FOREIGN KEY (`reporteador_idReporte`) REFERENCES `reporteador` (`idReporte`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time(6) NOT NULL,
  `accion_usuario` varchar(45) NOT NULL,
  `tabla` varchar(45) NOT NULL,
  `resultado_bitacora` varchar(45) NOT NULL,
  `error_bitacora` varchar(120) NOT NULL,
  PRIMARY KEY (`id_bitacora`),
  KEY `FK_bitacora_usuario_idx` (`id_usuario`),
  CONSTRAINT `FK_bitacora_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cambio_contraseña`
--

DROP TABLE IF EXISTS `cambio_contraseña`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cambio_contraseña` (
  `id_cambio` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `contraseña_actual` varchar(45) NOT NULL,
  `contraseña_nueva` varchar(45) NOT NULL,
  `fecha_cambio` date NOT NULL,
  PRIMARY KEY (`id_cambio`),
  KEY `FK_cambio_usuario_idx` (`id_usuario`),
  CONSTRAINT `FK_cambio_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `derecho`
--

DROP TABLE IF EXISTS `derecho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derecho` (
  `id_derecho` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_derecho` varchar(50) NOT NULL,
  PRIMARY KEY (`id_derecho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalle_aplicacion_derecho`
--

DROP TABLE IF EXISTS `detalle_aplicacion_derecho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_aplicacion_derecho` (
  `id_aplicacion` int(11) NOT NULL,
  `id_derecho` int(11) NOT NULL,
  PRIMARY KEY (`id_aplicacion`,`id_derecho`),
  KEY `FK_detalle_derecho_idx` (`id_derecho`),
  CONSTRAINT `FK_detalle_aplicacion2` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_derecho` FOREIGN KEY (`id_derecho`) REFERENCES `derecho` (`id_derecho`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalle_perfil_aplicacion`
--

DROP TABLE IF EXISTS `detalle_perfil_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_perfil_aplicacion` (
  `id_perfil` int(11) NOT NULL,
  `id_aplicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_perfil`,`id_aplicacion`),
  KEY `FK_detalle_aplicacion_idx` (`id_aplicacion`),
  CONSTRAINT `FK_detalle_aplicacion` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(80) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reporteador`
--

DROP TABLE IF EXISTS `reporteador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporteador` (
  `idReporte` int(11) NOT NULL,
  `nombreReporte` varchar(500) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idReporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reportegeneral`
--

DROP TABLE IF EXISTS `reportegeneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportegeneral` (
  `idReporteg` int(11) NOT NULL AUTO_INCREMENT,
  `nombreReporteg` varchar(65) NOT NULL,
  `pathr` varchar(128) NOT NULL,
  `reporte_app_id` int(11) NOT NULL,
  PRIMARY KEY (`idReporteg`),
  KEY `fk_app_id_idx` (`reporte_app_id`),
  CONSTRAINT `fk_app_id` FOREIGN KEY (`reporte_app_id`) REFERENCES `aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `correo_usuario` varchar(45) DEFAULT NULL,
  `telefono_usuario` int(8) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_usuario_perfil_idx` (`id_perfil`),
  CONSTRAINT `FK_usuario_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'bd_seguridad'
--

--
-- Dumping routines for database 'bd_seguridad'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-09 15:28:53
