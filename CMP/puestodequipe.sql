CREATE DATABASE  IF NOT EXISTS `puestodequipe` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `puestodequipe`;
-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: puestodequipe
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.8

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
-- Table structure for table `t_ordenes`
--

DROP TABLE IF EXISTS `t_ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ordenes` (
  `OrdenID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Solicitante` varchar(75) NOT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Celular` varchar(10) DEFAULT NULL,
  `Direccion_Detallada` varchar(255) NOT NULL,
  `Fecha_Pedido` datetime NOT NULL,
  `Total` float DEFAULT NULL,
  `Estado` char(1) NOT NULL,
  PRIMARY KEY (`OrdenID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ordenes`
--

LOCK TABLES `t_ordenes` WRITE;
/*!40000 ALTER TABLE `t_ordenes` DISABLE KEYS */;
INSERT INTO `t_ordenes` VALUES (1,'Tomas Jimenez','thomasjs01','88888','809888','Esto es FULL AJAX','2011-04-11 00:00:00',200,'P'),(2,'Fernando Jimenez','thomasjs01','88888','809888','Esto es FULL AJAX','2011-04-11 00:00:00',200,'P'),(3,'Jackeline Jimenez','thomajs01','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(4,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(5,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(6,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(7,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(8,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(9,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(10,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(11,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(12,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(13,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(14,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(15,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(16,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(17,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(18,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P'),(19,'Jackeline Jimenez','','8098888','888888','calle juan persomo','2011-04-11 00:00:00',200,'P');
/*!40000 ALTER TABLE `t_ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inventario`
--

DROP TABLE IF EXISTS `t_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_inventario` (
  `No_Inventario` decimal(10,0) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `ProductoID` decimal(10,0) NOT NULL,
  `Cantidad_Registada` decimal(10,0) NOT NULL,
  `Cantidad_Minima_Requerida` decimal(10,0) NOT NULL,
  `Cantidad_Actual` decimal(10,0) NOT NULL,
  `Fecha_Actualizacion` datetime NOT NULL,
  PRIMARY KEY (`No_Inventario`,`ProductoID`),
  KEY `PR_PRDUCTO_INVENTARIO` (`ProductoID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inventario`
--

LOCK TABLES `t_inventario` WRITE;
/*!40000 ALTER TABLE `t_inventario` DISABLE KEYS */;
INSERT INTO `t_inventario` VALUES ('1','2011-04-10 00:00:00','1','200','50','49','0000-00-00 00:00:00'),('1','2011-04-10 00:00:00','2','200','50','100','0000-00-00 00:00:00'),('1','2011-04-10 00:00:00','3','200','50','51','0000-00-00 00:00:00'),('1','2011-04-10 00:00:00','4','200','50','100','0000-00-00 00:00:00'),('1','2011-04-10 00:00:00','5','200','50','200','0000-00-00 00:00:00'),('1','2011-04-10 00:00:00','6','200','50','200','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_detalle_ordenes`
--

DROP TABLE IF EXISTS `t_detalle_ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_detalle_ordenes` (
  `OrdenID` int(11) NOT NULL,
  `DetalleID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductoID` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio_Venta` float DEFAULT NULL,
  `SubTotal` float DEFAULT NULL,
  PRIMARY KEY (`DetalleID`,`OrdenID`),
  KEY `FK_ORDENES_DETALLE` (`OrdenID`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_detalle_ordenes`
--

LOCK TABLES `t_detalle_ordenes` WRITE;
/*!40000 ALTER TABLE `t_detalle_ordenes` DISABLE KEYS */;
INSERT INTO `t_detalle_ordenes` VALUES (1,1,1,1,35,35),(1,2,2,3,25,75),(1,3,3,2,25,50),(1,4,4,2,20,40),(2,5,1,1,35,35),(2,6,2,3,25,75),(2,7,3,2,25,50),(2,8,4,2,20,40),(3,9,3,2,25,50),(3,10,4,2,20,40),(3,11,5,2,35,70),(3,12,6,2,30,60),(4,13,3,2,25,50),(4,14,4,2,20,40),(4,15,5,2,35,70),(4,16,6,2,30,60),(5,17,3,2,25,50),(5,18,4,2,20,40),(5,19,5,2,35,70),(5,20,6,2,30,60),(6,21,3,2,25,50),(6,22,4,2,20,40),(6,23,5,2,35,70),(6,24,6,2,30,60),(7,25,3,2,25,50),(7,26,4,2,20,40),(7,27,5,2,35,70),(7,28,6,2,30,60),(8,29,3,2,25,50),(8,30,4,2,20,40),(8,31,5,2,35,70),(8,32,6,2,30,60),(9,33,3,2,25,50),(9,34,4,2,20,40),(9,35,5,2,35,70),(9,36,6,2,30,60),(10,37,3,2,25,50),(10,38,4,2,20,40),(10,39,5,2,35,70),(10,40,6,2,30,60),(11,41,3,2,25,50),(11,42,4,2,20,40),(11,43,5,2,35,70),(11,44,6,2,30,60),(12,45,3,2,25,50),(12,46,4,2,20,40),(12,47,5,2,35,70),(12,48,6,2,30,60),(13,49,3,2,25,50),(13,50,4,2,20,40),(13,51,5,2,35,70),(13,52,6,2,30,60),(14,53,3,2,25,50),(14,54,4,2,20,40),(14,55,5,2,35,70),(14,56,6,2,30,60),(15,57,3,2,25,50),(15,58,4,2,20,40),(15,59,5,2,35,70),(15,60,6,2,30,60),(16,61,3,2,25,50),(16,62,4,2,20,40),(16,63,5,2,35,70),(16,64,6,2,30,60),(17,65,3,2,25,50),(17,66,4,2,20,40),(17,67,5,2,35,70),(17,68,6,2,30,60),(18,69,3,2,25,50),(18,70,4,2,20,40),(18,71,5,2,35,70),(18,72,6,2,30,60),(19,73,3,2,25,50),(19,74,4,2,20,40),(19,75,5,2,35,70),(19,76,6,2,30,60);
/*!40000 ALTER TABLE `t_detalle_ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuarios`
--

DROP TABLE IF EXISTS `t_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usuarios` (
  `UsuarioID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_Corto` varchar(50) NOT NULL,
  `Nombre_Usuario` varchar(100) NOT NULL,
  `Clave` varchar(50) NOT NULL,
  `Rol` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `Fecha_Creacion` datetime NOT NULL,
  `Fecha_Modificacion` datetime DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UsuarioID`,`Usuario_Corto`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuarios`
--

LOCK TABLES `t_usuarios` WRITE;
/*!40000 ALTER TABLE `t_usuarios` DISABLE KEYS */;
INSERT INTO `t_usuarios` VALUES (1,'Tomas','Tomas Jimenez','0108019',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(2,'Fernando','Fernando JImenez','123456789',1,1,'0000-00-00 00:00:00',NULL,NULL),(3,'admin','admin','admin',1,1,'0000-00-00 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `t_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_productos`
--

DROP TABLE IF EXISTS `t_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productos` (
  `ProductoID` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` float NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductoID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Esta tabla contiene los productos, para ser ofertados en el ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_productos`
--

LOCK TABLES `t_productos` WRITE;
/*!40000 ALTER TABLE `t_productos` DISABLE KEYS */;
INSERT INTO `t_productos` VALUES (1,'Quipes','Quipes tradicional con el mejor sabor diminicano',35,'Picadera','JavaScriptFramework/jquery/SmartCart2.0/products/product1.jpg'),(2,'Empanada de pollo','Empanadas con la mejor masa',25,'Picadera','JavaScriptFramework/jquery/SmartCart2.0/products/product2.jpg'),(3,'Empanada de Queso','Empanadas con la mejor masa',25,'Picadera','JavaScriptFramework/jquery/SmartCart2.0/products/product2.jpg'),(4,'Croquetas','La croqueta con mas cantidad de pollo que puedas conseguir',20,'Picadera','JavaScriptFramework/jquery/SmartCart2.0/products/product3.jpg'),(5,'Pastelillos','Los patelillos con el mejor sabor',35,'Picadera','JavaScriptFramework/jquery/SmartCart2.0/products/product4.jpg'),(6,'Churros','Los churros caseros',30,'Desayuno','JavaScriptFramework/jquery/SmartCart2.0/products/product5.jpg');
/*!40000 ALTER TABLE `t_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ofertas`
--

DROP TABLE IF EXISTS `t_ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ofertas` (
  `No_Oferta` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Oferta` varchar(75) NOT NULL,
  `Oferta` varchar(255) NOT NULL,
  `Fecha_Oferta` date NOT NULL,
  `Fecha_Vencimiento` date NOT NULL,
  `Facebook` char(1) DEFAULT NULL,
  `Twitter` char(1) DEFAULT NULL,
  `No_Redes_Sociales` char(1) DEFAULT NULL,
  PRIMARY KEY (`No_Oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ofertas`
--

LOCK TABLES `t_ofertas` WRITE;
/*!40000 ALTER TABLE `t_ofertas` DISABLE KEYS */;
INSERT INTO `t_ofertas` VALUES (1,'Quicaderas del dia de las madres','Con monivo al dia de las madres, dale a ella las mejores picaderas para celebar a mitad de precio','2011-04-10','2011-06-01','N','N','S');
/*!40000 ALTER TABLE `t_ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_Inventario`
--

DROP TABLE IF EXISTS `vw_Inventario`;
/*!50001 DROP VIEW IF EXISTS `vw_Inventario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_Inventario` (
  `Nombre_Producto` varchar(50),
  `Cantidad_Actual` decimal(32,0),
  `Cantidad_Minima_Requerida` decimal(10,0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_Lista_Detalle_Orden`
--

DROP TABLE IF EXISTS `vw_Lista_Detalle_Orden`;
/*!50001 DROP VIEW IF EXISTS `vw_Lista_Detalle_Orden`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_Lista_Detalle_Orden` (
  `OrdenID` int(11),
  `DetalleID` int(11),
  `Nombre_Producto` varchar(50),
  `Cantidad` int(11),
  `Precio_Venta` float,
  `SubTotal` float
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_Lista_Ofertar`
--

DROP TABLE IF EXISTS `vw_Lista_Ofertar`;
/*!50001 DROP VIEW IF EXISTS `vw_Lista_Ofertar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_Lista_Ofertar` (
  `No_Oferta` int(11),
  `Nombre_Oferta` varchar(75),
  `Oferta` varchar(255),
  `Fecha_Vencimiento` date
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_lista_ordenes`
--

DROP TABLE IF EXISTS `vw_lista_ordenes`;
/*!50001 DROP VIEW IF EXISTS `vw_lista_ordenes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_lista_ordenes` (
  `Antiguedad` varchar(10),
  `OrdenID` int(11),
  `Nombre_Solicitante` varchar(75),
  `Correo_Electronico` varchar(100),
  `Telefono` varchar(10),
  `Celular` varchar(10),
  `Direccion_Detallada` varchar(255),
  `Fecha_Pedido` datetime
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_productos_ventas`
--

DROP TABLE IF EXISTS `vw_productos_ventas`;
/*!50001 DROP VIEW IF EXISTS `vw_productos_ventas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_productos_ventas` (
  `ProductoID` int(11),
  `Nombre` varchar(50),
  `Descripcion` varchar(255),
  `Categoria` varchar(50),
  `Precio` float,
  `Imagen` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_usuarios`
--

DROP TABLE IF EXISTS `vw_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vw_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_usuarios` (
  `UsuarioID` int(11),
  `Usuario_Corto` varchar(50),
  `Nombre_Usuario` varchar(100),
  `Clave` varchar(50),
  `Rol` int(11),
  `Estado` tinyint(1),
  `Fecha_Creacion` datetime,
  `Fecha_Modificacion` datetime,
  `correo_electronico` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_Inventario`
--

/*!50001 DROP TABLE IF EXISTS `vw_Inventario`*/;
/*!50001 DROP VIEW IF EXISTS `vw_Inventario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_Inventario` AS select `d`.`Nombre` AS `Nombre_Producto`,sum(`i`.`Cantidad_Actual`) AS `Cantidad_Actual`,`i`.`Cantidad_Minima_Requerida` AS `Cantidad_Minima_Requerida` from (`t_inventario` `i` join `t_productos` `d` on((`i`.`ProductoID` = `d`.`ProductoID`))) where (`i`.`Cantidad_Actual` > 0) group by `d`.`Nombre`,`i`.`Cantidad_Minima_Requerida` order by 2 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_Lista_Detalle_Orden`
--

/*!50001 DROP TABLE IF EXISTS `vw_Lista_Detalle_Orden`*/;
/*!50001 DROP VIEW IF EXISTS `vw_Lista_Detalle_Orden`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_Lista_Detalle_Orden` AS select `d`.`OrdenID` AS `OrdenID`,`d`.`DetalleID` AS `DetalleID`,`p`.`Nombre` AS `Nombre_Producto`,`d`.`Cantidad` AS `Cantidad`,`d`.`Precio_Venta` AS `Precio_Venta`,`d`.`SubTotal` AS `SubTotal` from (`t_detalle_ordenes` `d` join `t_productos` `p` on((`d`.`ProductoID` = `p`.`ProductoID`))) order by `d`.`OrdenID`,`d`.`DetalleID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_Lista_Ofertar`
--

/*!50001 DROP TABLE IF EXISTS `vw_Lista_Ofertar`*/;
/*!50001 DROP VIEW IF EXISTS `vw_Lista_Ofertar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_Lista_Ofertar` AS select `t_ofertas`.`No_Oferta` AS `No_Oferta`,`t_ofertas`.`Nombre_Oferta` AS `Nombre_Oferta`,`t_ofertas`.`Oferta` AS `Oferta`,`t_ofertas`.`Fecha_Vencimiento` AS `Fecha_Vencimiento` from `t_ofertas` where (`t_ofertas`.`Fecha_Vencimiento` > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_lista_ordenes`
--

/*!50001 DROP TABLE IF EXISTS `vw_lista_ordenes`*/;
/*!50001 DROP VIEW IF EXISTS `vw_lista_ordenes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lista_ordenes` AS select (case when (date_format(`t_ordenes`.`Fecha_Pedido`,_utf8'%d-%m-%Y') = date_format(curdate(),_utf8'%d-%m-%Y')) then _utf8'Hoy' else _utf8'Anteriores' end) AS `Antiguedad`,`t_ordenes`.`OrdenID` AS `OrdenID`,`t_ordenes`.`Nombre_Solicitante` AS `Nombre_Solicitante`,`t_ordenes`.`Correo_Electronico` AS `Correo_Electronico`,`t_ordenes`.`Telefono` AS `Telefono`,`t_ordenes`.`Celular` AS `Celular`,`t_ordenes`.`Direccion_Detallada` AS `Direccion_Detallada`,`t_ordenes`.`Fecha_Pedido` AS `Fecha_Pedido` from `t_ordenes` where (`t_ordenes`.`Estado` = _utf8'P') order by `t_ordenes`.`Fecha_Pedido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_productos_ventas`
--

/*!50001 DROP TABLE IF EXISTS `vw_productos_ventas`*/;
/*!50001 DROP VIEW IF EXISTS `vw_productos_ventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_productos_ventas` AS select `t_productos`.`ProductoID` AS `ProductoID`,`t_productos`.`Nombre` AS `Nombre`,`t_productos`.`Descripcion` AS `Descripcion`,`t_productos`.`Categoria` AS `Categoria`,`t_productos`.`Precio` AS `Precio`,`t_productos`.`Imagen` AS `Imagen` from `t_productos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuarios`
--

/*!50001 DROP TABLE IF EXISTS `vw_usuarios`*/;
/*!50001 DROP VIEW IF EXISTS `vw_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuarios` AS select `t_usuarios`.`UsuarioID` AS `UsuarioID`,`t_usuarios`.`Usuario_Corto` AS `Usuario_Corto`,`t_usuarios`.`Nombre_Usuario` AS `Nombre_Usuario`,`t_usuarios`.`Clave` AS `Clave`,`t_usuarios`.`Rol` AS `Rol`,`t_usuarios`.`Estado` AS `Estado`,`t_usuarios`.`Fecha_Creacion` AS `Fecha_Creacion`,`t_usuarios`.`Fecha_Modificacion` AS `Fecha_Modificacion`,`t_usuarios`.`correo_electronico` AS `correo_electronico` from `t_usuarios` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'puestodequipe'
--
/*!50003 DROP PROCEDURE IF EXISTS `pa_confirmacion_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_confirmacion_orden`(p_ordenid INT(11))
BEGIN

UPDATE t_ordenes

SET Estado = 'C'

WHERE OrdenID = p_ordenid;



SELECT OrdenID, Nombre_Solicitante

FROM t_ordenes

WHERE OrdenID = p_ordenid

AND Estado = 'C';

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pa_max_ordenid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_max_ordenid`()
BEGIN
SELECT MAX(OrdenId) ordenid FROM t_ordenes;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pa_nueva_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_nueva_orden`(p_nombre_solicitante VARCHAR(75), p_correo_electronico VARCHAR(100), p_telefono VARCHAR(10), p_celular VARCHAR(10), p_direccion_detallada VARCHAR(255))
BEGIN





INSERT INTO t_ordenes 

    (nombre_solicitante, 

    correo_electronico,

    telefono,

    celular,

    direccion_detallada,

    Fecha_Pedido,

    estado)

VALUES 

    (

    p_nombre_solicitante,

    p_correo_electronico,

    p_telefono,

    p_celular,

    p_direccion_detallada,

    curdate(),

    'P'

    );



SELECT MAX(OrdenId) ordenid FROM t_ordenes;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pa_nueva_orden2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_nueva_orden2`(p_nombre_solicitante VARCHAR(75), p_correo_electronico VARCHAR(100), p_telefono VARCHAR(10), p_celular VARCHAR(10), p_direccion_detallada VARCHAR(255),p_arrayproyprecio VARCHAR(100),p_total FLOAT)
BEGIN

DECLARE p_max_idOrder INT;


INSERT INTO t_ordenes 

    (nombre_solicitante, 

    correo_electronico,

    telefono,

    celular,

    direccion_detallada,

    Fecha_Pedido,

    estado)

VALUES 

    (

    p_nombre_solicitante,

    p_correo_electronico,

    p_telefono,

    p_celular,

    p_direccion_detallada,

    curdate(),

    'P'

    );

SET p_max_idOrder = ( SELECT MAX(OrdenId) ordenid FROM t_ordenes);

call pa_nuevo_detalle_orden2(p_max_idOrder, p_arrayproyprecio, p_total);

SELECT MAX(OrdenId) ordenid FROM t_ordenes;




END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pa_nuevo_detalle_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_nuevo_detalle_orden`(p_ordenid INT(11), p_texto VARCHAR(100), p_total FLOAT)
BEGIN



DECLARE p_contador INT;

DECLARE p_posicion_i INT;

DECLARE p_posicion_f INT;



SET p_contador = 1;

SET p_posicion_i = 0;

SET p_posicion_f = 0;



SET p_posicion_f = LOCATE(',',p_texto,p_posicion_i+1);



WHILE p_contador <> 0 DO

SET  p_contador = p_contador + 1;



IF p_posicion_f = 0 THEN

INSERT INTO t_detalle_ordenes

(

ordenid,

productoid,

cantidad

)

SELECT p_ordenid,

LEFT(SUBSTRING(p_texto,p_posicion_i+1,99), LOCATE('/',SUBSTRING(p_texto,p_posicion_i+1,99))), 

RIGHT(SUBSTRING(p_texto,p_posicion_i+1,99), CHAR_LENGTH(SUBSTRING(p_texto,p_posicion_i+1,99)) - LOCATE('/',SUBSTRING(p_texto,p_posicion_i+1,99)));

SET p_contador = 0;

END IF;



IF p_posicion_f <> 0 THEN

INSERT INTO t_detalle_ordenes

(

ordenid,

productoid,

cantidad

)

SELECT p_ordenid,

LEFT(SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1), LOCATE('/',SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1))), 

RIGHT(SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1), CHAR_LENGTH(SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1)) - LOCATE('/',SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1)));

END IF;



SET p_posicion_i = p_posicion_f;

SET p_posicion_f = LOCATE(',',p_texto,p_posicion_i+1);



END WHILE;







UPDATE t_detalle_ordenes, t_productos

SET t_detalle_ordenes.precio_venta = t_productos.precio

WHERE t_detalle_ordenes.OrdenID = p_ordenid

AND t_detalle_ordenes.ProductoID = t_productos.ProductoID;



UPDATE t_detalle_ordenes

SET SubTotal  = precio_venta * Cantidad

WHERE OrdenID = p_ordenid;



UPDATE t_ordenes

SET Total = p_total

WHERE OrdenID = p_ordenid;





END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pa_nuevo_detalle_orden2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_nuevo_detalle_orden2`(p_ordenid INT(11), p_texto VARCHAR(100), p_total FLOAT)
BEGIN



DECLARE p_contador INT;

DECLARE p_posicion_i INT;

DECLARE p_posicion_f INT;



SET p_contador = 1;

SET p_posicion_i = 0;

SET p_posicion_f = 0;



SET p_posicion_f = LOCATE(',',p_texto,p_posicion_i+1);



WHILE p_contador <> 0 DO

SET  p_contador = p_contador + 1;



IF p_posicion_f = 0 THEN

INSERT INTO t_detalle_ordenes

(

ordenid,

productoid,

cantidad

)

SELECT p_ordenid,

LEFT(SUBSTRING(p_texto,p_posicion_i+1,99), LOCATE('|',SUBSTRING(p_texto,p_posicion_i+1,99))), 

RIGHT(SUBSTRING(p_texto,p_posicion_i+1,99), CHAR_LENGTH(SUBSTRING(p_texto,p_posicion_i+1,99)) - LOCATE('|',SUBSTRING(p_texto,p_posicion_i+1,99)));

SET p_contador = 0;

END IF;



IF p_posicion_f <> 0 THEN

INSERT INTO t_detalle_ordenes

(

ordenid,

productoid,

cantidad

)

SELECT p_ordenid,

LEFT(SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1), LOCATE('|',SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1))), 

RIGHT(SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1), CHAR_LENGTH(SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1)) - LOCATE('|',SUBSTRING(p_texto,p_posicion_i+1,p_posicion_f-p_posicion_i-1)));

END IF;



SET p_posicion_i = p_posicion_f;

SET p_posicion_f = LOCATE(',',p_texto,p_posicion_i+1);



END WHILE;







UPDATE t_detalle_ordenes, t_productos

SET t_detalle_ordenes.precio_venta = t_productos.precio

WHERE t_detalle_ordenes.OrdenID = p_ordenid

AND t_detalle_ordenes.ProductoID = t_productos.ProductoID;



UPDATE t_detalle_ordenes

SET SubTotal  = precio_venta * Cantidad

WHERE OrdenID = p_ordenid;



UPDATE t_ordenes

SET Total = p_total

WHERE OrdenID = p_ordenid;





END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pa_publicar_oferta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pa_publicar_oferta`(

p_nombre_oferta VARCHAR(75),

p_oferta VARCHAR(255),

p_fecha_vencimiento DATE,

p_facebook CHAR(1),

p_twitter CHAR(1),

p_no_redes_sociales CHAR(1)

)
BEGIN

INSERT INTO t_ofertas

(

Nombre_Oferta,

Oferta,

Fecha_Vencimiento,

Facebook,

Twitter,

No_Redes_Sociales,

Fecha_Oferta

)

VALUES 

(

p_nombre_oferta,

p_oferta,

p_fecha_vencimiento,

p_facebook,

p_twitter,

p_no_redes_sociales,

curdate()

);



SELECT MAX(No_Oferta) FROM t_ofertas;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-11  9:15:30
