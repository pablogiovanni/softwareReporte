-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
  `id_aplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_aplicacion` varchar(50) NOT NULL,
  `descripcion_aplicacion` varchar(80) NOT NULL,
  `habilitar_aplicacion` tinyint(1) NOT NULL,
  `id_reporte` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicacion`
--

LOCK TABLES `aplicacion` WRITE;
/*!40000 ALTER TABLE `aplicacion` DISABLE KEYS */;
INSERT INTO `aplicacion` VALUES (1,'Aplicacion uno','descripcion nuno',1,'1');
/*!40000 ALTER TABLE `aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

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
  `id_aplicacion` int(11) NOT NULL,
  `resultado_bitacora` varchar(45) NOT NULL,
  `error_bitacora` varchar(120) NOT NULL,
  `ip_pc` varchar(45) NOT NULL,
  PRIMARY KEY (`id_bitacora`),
  KEY `FK_bitacora_usuario_idx` (`id_usuario`),
  KEY `Fk_app_idx` (`id_aplicacion`),
  CONSTRAINT `FK_bitacora_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_app` FOREIGN KEY (`id_aplicacion`) REFERENCES `bitacora_app` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (5,3,'2018-02-09','22:25:41.000000','Guardar',1,'Exitoso','no','192.168.1.4'),(6,3,'2018-02-09','22:25:52.000000','Editar',1,'Exitoso','no','192.168.1.4'),(7,3,'2018-02-09','22:27:39.000000','Editar',2,'Exitoso','no','192.168.1.4'),(8,3,'2018-02-09','22:27:39.000000','Editar',2,'Exitoso','no','192.168.1.4'),(9,3,'2018-02-10','12:53:56.000000','Guardar',2,'Exitoso','no','192.168.1.4'),(10,3,'2018-02-10','12:54:48.000000','Guardar',1,'Exitoso','no','192.168.1.4'),(11,3,'2018-02-10','12:56:28.000000','Editar',4,'Exitoso','no','192.168.1.4'),(12,3,'2018-02-10','12:56:34.000000','Guardar',4,'Exitoso','no','192.168.1.4'),(13,3,'2018-02-14','10:57:50.000000','Editar',4,'Exitoso','no','192.168.43.243'),(14,3,'2018-02-14','10:57:56.000000','Guardar',4,'Exitoso','no','192.168.43.243'),(15,3,'2018-02-14','11:46:26.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(16,3,'2018-02-14','11:46:36.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(17,3,'2018-02-14','11:46:43.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(18,3,'2018-02-14','11:46:51.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(19,3,'2018-02-14','11:46:57.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(20,3,'2018-02-14','11:47:04.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(21,3,'2018-02-14','11:49:05.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(22,3,'2018-02-14','11:49:11.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(23,3,'2018-02-14','11:49:52.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(24,3,'2018-02-14','11:50:17.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(25,3,'2018-02-14','11:50:26.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(26,3,'2018-02-14','11:51:32.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(27,3,'2018-02-14','11:51:48.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(28,3,'2018-02-14','11:51:57.000000','Guardar',2,'Exitoso','no','127.0.0.1'),(29,3,'2018-02-14','11:52:13.000000','Guardar',2,'Exitoso','no','127.0.0.1');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_app`
--

DROP TABLE IF EXISTS `bitacora_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora_app` (
  `id_aplicacion` int(11) NOT NULL,
  `desc_app` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_app`
--

LOCK TABLES `bitacora_app` WRITE;
/*!40000 ALTER TABLE `bitacora_app` DISABLE KEYS */;
INSERT INTO `bitacora_app` VALUES (1,'Aplicaciones'),(2,'Perfiles'),(3,'Asignacion Perfiles'),(4,'Asignacion Aplicaciones'),(5,'Asignacion Perfiles a usuarios');
/*!40000 ALTER TABLE `bitacora_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_aplicacion_derecho`
--

DROP TABLE IF EXISTS `detalle_aplicacion_derecho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_aplicacion_derecho` (
  `id_usuario` int(11) NOT NULL,
  `id_aplicacion` int(11) NOT NULL,
  `ingresar` tinyint(1) NOT NULL,
  `modificar` tinyint(1) NOT NULL,
  `eliminar` tinyint(1) NOT NULL,
  `imprimir` tinyint(1) NOT NULL,
  `consultar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_aplicacion`),
  KEY `FK_detalle_usuario_idx` (`id_usuario`),
  KEY `FK_detalle_aplicacion2` (`id_aplicacion`),
  CONSTRAINT `FK_detalle_aplicacion2` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_aplicacion_derecho`
--

LOCK TABLES `detalle_aplicacion_derecho` WRITE;
/*!40000 ALTER TABLE `detalle_aplicacion_derecho` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_aplicacion_derecho` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `FK_detalle_aplicacion` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_perfil_aplicacion`
--

LOCK TABLES `detalle_perfil_aplicacion` WRITE;
/*!40000 ALTER TABLE `detalle_perfil_aplicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_perfil_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_usuario_perfil`
--

DROP TABLE IF EXISTS `detalle_usuario_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_usuario_perfil` (
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_perfil`),
  KEY `FK_detalle_up_perfil_idx` (`id_perfil`),
  CONSTRAINT `FK_detalle_up_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalle_up_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_usuario_perfil`
--

LOCK TABLES `detalle_usuario_perfil` WRITE;
/*!40000 ALTER TABLE `detalle_usuario_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id_perfil`),
  UNIQUE KEY `nombre_perfil_UNIQUE` (`nombre_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (5,'Doctor',''),(6,'Nutricionista',''),(7,'Enfermera',''),(8,'Cirujano',''),(9,'Dentista',''),(10,'Secretaria',''),(11,'Oncologia',''),(12,'Ginecologo',''),(13,'Limpieza',''),(14,'Maxilofacial',''),(15,'Neurologo',''),(16,'Auxiliares',''),(17,'Pediatra',''),(18,'Otorrino',''),(19,'Dermatologo','');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

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
  `vista` int(11) DEFAULT NULL,
  PRIMARY KEY (`idReporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporteador`
--

LOCK TABLES `reporteador` WRITE;
/*!40000 ALTER TABLE `reporteador` DISABLE KEYS */;
INSERT INTO `reporteador` VALUES (1,'cliente.rpt','C:\\Users\\usuario\\Desktop\\cliente.rpt',1);
/*!40000 ALTER TABLE `reporteador` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `fk_app_id` FOREIGN KEY (`reporte_app_id`) REFERENCES `aplicacion` (`id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportegeneral`
--

LOCK TABLES `reportegeneral` WRITE;
/*!40000 ALTER TABLE `reportegeneral` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportegeneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `correo_usuario` varchar(45) DEFAULT NULL,
  `telefono_usuario` int(8) DEFAULT NULL,
  `contrasena` blob,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (3,'ale','kimberly','gonzalez','jujfjh',2343243,'æ\\,H\ ;0ıaˇº\¬^\¬'),(5,'kim','Kimberly','Rivera','kim@gmail.com',12345678,'EëS\Ã\Œ%dæñpÙ	¥\Œ\÷'),(6,'adriana','Adriana','Ruiz','adriana@gmail.com',12345678,'∞êÖ\—u˝öè\ \œ|G∫∂ó'),(7,'werner','Werner','Ovalle','werner@gmail.com',12345678,'g∑h´\Ÿ\"T@)5Y[¯\Ì˜'),(8,'raul','Raul','Portillo','raul@gmail.com',12345678,'	:QŸ∑6Œ£4äô`ú©\„'),(9,'carlos','Carlos','Reyes','carlos@gmail.com',12345678,'\À÷úJõ|˝H≥2}Lá');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_bitacora`
--

DROP TABLE IF EXISTS `vista_bitacora`;
/*!50001 DROP VIEW IF EXISTS `vista_bitacora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_bitacora` AS SELECT 
 1 AS `usuario`,
 1 AS `fecha_bitacora`,
 1 AS `hora_bitacora`,
 1 AS `accion_usuario`,
 1 AS `desc_app`,
 1 AS `resultado_bitacora`,
 1 AS `error_bitacora`,
 1 AS `ip_pc`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_seguridad'
--

--
-- Dumping routines for database 'bd_seguridad'
--

--
-- Final view structure for view `vista_bitacora`
--

/*!50001 DROP VIEW IF EXISTS `vista_bitacora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_bitacora` AS select `u`.`usuario` AS `usuario`,`b`.`fecha_bitacora` AS `fecha_bitacora`,`b`.`hora_bitacora` AS `hora_bitacora`,`b`.`accion_usuario` AS `accion_usuario`,`ap`.`desc_app` AS `desc_app`,`b`.`resultado_bitacora` AS `resultado_bitacora`,`b`.`error_bitacora` AS `error_bitacora`,`b`.`ip_pc` AS `ip_pc` from ((`usuario` `u` join `bitacora` `b` on((`b`.`id_usuario` = `u`.`id_usuario`))) join `bitacora_app` `ap` on((`b`.`id_aplicacion` = `ap`.`id_aplicacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-23 10:34:19
