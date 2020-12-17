-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: pruebatallerfacu
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `correo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idtelefonocliente` int(11) NOT NULL,
  `direccion_cliente_iddireccion` int(11) NOT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE KEY `idcliente_UNIQUE` (`idcliente`),
  KEY `fk_cliente_localidad_idx` (`id_localidad`),
  KEY `fk_cliente_provincia_idx` (`id_provincia`),
  KEY `fk_cliente_telefono_cliente1_idx` (`idtelefonocliente`),
  KEY `fk_cliente_direccion_cliente1_idx` (`direccion_cliente_iddireccion`),
  CONSTRAINT `fk_cliente_direccion_cliente1` FOREIGN KEY (`direccion_cliente_iddireccion`) REFERENCES `direccion_cliente` (`iddireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_localidad` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`idlocalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_provincia` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`idprovincia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_telefono_cliente1` FOREIGN KEY (`idtelefonocliente`) REFERENCES `telefono_cliente` (`idtelefonocliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('1000000','Roberto','Carlos',1,1,'robertocarlos@algo.com',24,24),('11333444','Violencia','Rivas',2,1,'violenciarivas@algo',4,5),('11333666','Samanta','Farjat',1,1,'samanta@jarron.com',1,1),('1200000','Julio','Gianibelli',1,1,'juligianibelli@algo.com',31,31),('22222333','Montgomeri','Burns',2,1,'burns@camisa',10,11),('23232323','Silvina','Luna',1,1,'silvina@algo.com',26,26),('23452544','Nelson','Monts',1,1,'nelson@algo',18,19),('3334446b','Pacha','Martel',3,2,'sdlfkgjdslkfj@lasdjlaks',48,48),('34235566','Guido ','Suller',1,1,'guidosuller@algo.com',32,32),('34324543','rodrigo','garcia',1,1,'rogar@gmail.com',47,47),('34343434','Gustavo','Cordera',1,1,'labombaloca@algo.com',22,22),('44445555','Pomelo','Rock',2,1,'pomelorock@miniiiiitas.com',5,6),('44555000','Ricardo ','Iorio',1,1,'rica@algo',13,14),('44555666','El','Tirri',1,2,'tirri@algo',20,21),('56565656','Eusebio','Medina',1,1,'eusebio@algo',25,25),('78675654','Pamela','Anderson',2,1,'pamela@algo',16,17);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepresupuesto`
--

DROP TABLE IF EXISTS `detallepresupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepresupuesto` (
  `iddetallePresupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `idpresupuesto` int(11) NOT NULL,
  `detalle` varchar(200) CHARACTER SET utf8 NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`iddetallePresupuesto`),
  KEY `fk_detallePresupuesto_presupuesto_idx` (`idpresupuesto`),
  CONSTRAINT `fk_detallePresupuesto_presupuesto` FOREIGN KEY (`idpresupuesto`) REFERENCES `presupuesto` (`idpresupuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepresupuesto`
--

LOCK TABLES `detallepresupuesto` WRITE;
/*!40000 ALTER TABLE `detallepresupuesto` DISABLE KEYS */;
INSERT INTO `detallepresupuesto` VALUES (1,1,'CORREA',1),(2,1,'AMORTIGUADOR DELANTERO',2),(3,4,'sadfasdf',1),(4,5,'asfweafawef',1),(5,6,'asdfasdf',1),(6,7,'asdfasd',2),(7,8,'1agaga',1),(8,8,'adfasdffa',4),(9,9,'ewfawefa',2),(10,10,'dsfsad',1),(11,11,'sdfasdfasdfa',2),(12,12,'jlsadkjflas',1),(13,13,'ewfwqef	q4r',1),(14,14,'safsafdasdf',33),(15,15,'1SFASDF',1),(16,16,'asdfasd',3),(17,17,'asdfasdfasd',1),(18,18,'ñljlasdkjfa',1),(19,19,'dsafsadf',1),(20,20,'asdfasdfasdfasfas',1),(21,21,'sadfasdfasdfasd',1),(22,21,'asdfasdfasdfas',22),(23,22,'sdafasdfasd',1),(24,22,'asdfasd',3),(25,23,'asdfasdfasd',1),(26,23,'sdfasdfasdfasd',3),(27,24,'asdfasd',1),(28,24,'asdfasdfasd',1),(29,25,'dasfasdf',2),(30,25,'dasfasdfasdfasdfasd',22),(31,26,'adfasdfasd',11),(32,26,'adfasdfasdasdfasdfasd',11),(33,27,'condensador de flujo',1),(34,28,'sdafsdaf',1),(35,28,'sdafasdfasdfasdfa',1),(36,29,'asdfasd',1),(37,29,'asdfasddsafdsafasdafd',1),(38,30,'dasfasd',1),(39,30,'dasfasdasdasd',1),(40,31,'sdfasdfa',1),(41,32,'asdfAS',1),(42,33,'ASDFASDFASD',1),(43,34,'ADAFSDFASDFA',1),(44,34,'ADAFSDFASDFA',1),(45,36,'asdfasdsfa',1),(46,36,'asdfasdfasdfasdfadsf',2),(47,36,'dddddddddddddddd',4),(48,37,'fqwef',2),(49,38,'asdfasd',1),(50,39,'asdfasdf',1),(51,39,'ffffffffffffffffff',1),(52,40,'Ruleman de empuje',1),(53,40,'embrague peugeot cod 2342342\n',1),(54,40,'lubricante\n',1),(55,40,'pegamento\n',1),(56,41,'ruleman',1),(57,41,'cajas de tornillos de 1/2',2),(58,41,'bujias',3),(59,41,'bujias',3),(60,42,'ruleman skf',1),(61,43,'rulemanes',2),(62,43,'tornillos',3),(63,43,'crapodinas',4),(64,44,'primero',1),(65,44,'segundo repuesto',2),(66,44,'tercer repuesto',3),(67,44,'cuarto repuesto',44),(68,45,'primero',1),(69,45,'segundo',33),(70,45,'tercero',2),(71,45,'cuarto',555),(72,46,'primero',221),(73,46,'segundo',3),(74,47,'asdfasdfas',2),(75,47,'fffffffffffffff',2),(76,47,'gggggggggggggg',4),(77,48,'adasfffffffffffffddddddddddd',1),(78,48,'adasfffffffffffffddddddddddd',2),(79,48,'adasfffffffffffffddddddddddd',3),(80,48,'adasfffffffffffffddddddddddd',4),(81,49,'dadfasdasdfa',1),(82,49,'dadfasdasdfa',2),(83,49,'dadfasdasdfa',3),(84,49,'dadfasdasdfa',3),(85,49,'dadfasdasdfa',4),(86,49,'dadfasdasdfa',5),(87,50,'dadddddddddddddddd',1),(88,50,'dadddddddddddddddd',2),(89,50,'dadddddddddddddddd',3),(90,50,'dadddddddddddddddd',4),(91,51,'asdfasdfasd',1),(92,51,'asdfasdfasd',2),(93,51,'asdfasdfasd',3),(94,51,'asdfasdfasd',4),(95,52,'bladkljalskdflaskd',1),(96,52,'asdfasdfasdfa',2),(97,53,'asdfasd',11),(98,54,'sdfasdf',1),(99,54,'asdfasdf',2),(100,55,'junta de tapa de cilindro',1),(101,55,'juego de tornillos para tapa de cilindro',1),(102,55,'juego de aros',1),(103,55,'reparacion de tapa de cilindro, prueba hidraulica y plano',1),(104,56,'cigüeñal',1),(105,56,'juego de tornillos',1),(106,56,'junta de carter',1),(107,57,'tapa de cilindros',1),(108,57,'tornillos',2),(109,57,'junta de tapa de cilindro',1),(110,58,'campanas de freno',1),(111,58,'bombin de freno izquierdo',1),(112,58,'liquido de frenos',1),(113,59,'correa de distribución',1),(114,59,'tensor',1),(115,60,'dfasdfasdfasd',1),(116,62,'JUEGO DE PISTONES',1),(117,62,'JUEGO DE JUNTAS',1),(118,62,'CUBIERTAS',4),(119,63,'zdrgzgsg',2),(120,63,'dfghzertzsg',5),(121,64,'bujes',2),(122,64,'tornillos',5);
/*!40000 ALTER TABLE `detallepresupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_cliente`
--

DROP TABLE IF EXISTS `direccion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion_cliente` (
  `iddireccion` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `entrecalleuno` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `entrecalledos` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `departamento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`iddireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_cliente`
--

LOCK TABLES `direccion_cliente` WRITE;
/*!40000 ALTER TABLE `direccion_cliente` DISABLE KEYS */;
INSERT INTO `direccion_cliente` VALUES (1,'600','7','8','43534',NULL),(5,'45','23','24','3543',''),(6,'45','45','46','4354',''),(10,'604','','','2',''),(11,'32','1','2','123','-'),(14,'Hermetica','Alma','Fuerte','666',''),(17,'sarasa','78','79','232',''),(19,'lazy join','345345','34534','3453',''),(20,'453','544','543','sadf',''),(21,'54','12','13','asdf',''),(22,'32','12','13','23423',''),(24,'44','23','24','23423',''),(25,'34','12','13','344',''),(26,'56','12','13','345',''),(27,'34','12','13','4432',''),(28,'455','23','24','456',''),(29,'455','23','24','453',''),(30,'455','23','24','4545',''),(31,'455','34','35','3435',''),(32,'66','145','146','322',''),(33,'','','','',''),(34,'','','','',''),(35,'','','','',''),(36,'','','','',''),(37,'','','','',''),(38,'','','','',''),(39,'','','','',''),(40,'asdfasd','sadfas','sadfas','sdfa',''),(41,'asdfasd','asdfas','dfasdf','444',''),(44,'asdfasd','sadf','asdf','sadff',''),(45,'asdffasdf','asdfasdf','sadfsad','sadf','asdf'),(46,'sadfas','asdf','asdf','sdaf',''),(47,'62','116 ','117','321',''),(48,'Lagartos','iguanas','sapos','333','333');
/*!40000 ALTER TABLE `direccion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidad` (
  `idlocalidad` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idlocalidad`),
  UNIQUE KEY `localidad_UNIQUE` (`localidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (2,'Berisso'),(1,'La Plata'),(3,'Sicardi');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idmarcas` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idmarcas`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Peugeot'),(2,'Fiat'),(3,'Chevrolet'),(4,'Audi'),(5,'Gol'),(6,'Ford'),(7,'Land Rover'),(9,'blalb'),(10,'blalb333'),(11,'jjjjjjjj');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idpaises` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idpaises`),
  UNIQUE KEY `pais_UNIQUE` (`pais`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (4,'Afganistan'),(1,'Argentina'),(2,'Brasil'),(6,'Paraguayos');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuesto` (
  `idpresupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `detalle` varchar(800) CHARACTER SET utf8 DEFAULT NULL,
  `total` decimal(7,2) DEFAULT NULL,
  `manodeobra` decimal(7,2) DEFAULT NULL,
  `totalrepuestos` decimal(7,2) DEFAULT NULL,
  `patente` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpresupuesto`),
  KEY `fk_prespuesto_vehiculo_idx` (`patente`),
  KEY `fk_presupuesto_vehiculo_idx` (`id_usuario`),
  CONSTRAINT `fk_prespuesto_vehiculo` FOREIGN KEY (`patente`) REFERENCES `vehiculo` (`patente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_presupuesto_vehiculo` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
INSERT INTO `presupuesto` VALUES (1,'2017-11-30 00:00:00','CAMBIO DE CORREA, TREN DELANTERO CAMBIO DE AMORTIGUADORES',0.00,0.00,0.00,'AAA111','informado',NULL),(2,'2017-12-01 00:00:00','',0.00,0.00,0.00,'EEE567','iniciado, sin informe de revisión',NULL),(3,'2017-12-01 00:00:00','',0.00,0.00,0.00,'EEE567','iniciado, sin informe de revisión',NULL),(4,'2017-12-01 00:00:00','',0.00,0.00,0.00,'EEE567','iniciado, sin informe de revisión',NULL),(5,'2017-12-01 00:00:00','sdafasewfawefa',0.00,0.00,0.00,'EEE567','informado',NULL),(6,'2017-12-01 00:00:00','sdfasdf',0.00,0.00,0.00,'AAA000','informado',NULL),(7,'2017-12-01 00:00:00','sdfasdf',0.00,0.00,0.00,'AAA000','informado',NULL),(8,'2017-12-01 00:00:00','asdfasdfasdfasdfasdfa',0.00,0.00,0.00,'AAA000','informado',NULL),(9,'2017-12-01 00:00:00','asdfsdf',0.00,0.00,0.00,'AAA111','informado',NULL),(10,'2017-12-01 00:00:00','sadfasdfa',0.00,0.00,0.00,'AAA111','informado',NULL),(11,'2017-12-01 00:00:00','asdfsadfasdfas',0.00,0.00,0.00,'AAA000','informado',NULL),(12,'2017-12-01 00:00:00','sdfasdfasdfsadf',0.00,0.00,0.00,'aaa111','informado',NULL),(13,'2017-12-01 00:00:00','efwqwqfewfqwf',0.00,0.00,0.00,'EEE567','informado',NULL),(14,'2017-12-01 00:00:00','asdfasdf',0.00,0.00,0.00,'ZZZ999','informado',NULL),(15,'2017-12-01 00:00:00','SDFASDFASDF',0.00,0.00,0.00,'EEE567','informado',NULL),(16,'2017-12-01 00:00:00','asdfasd',0.00,0.00,0.00,'EEE567','informado',NULL),(17,'2017-12-01 00:00:00','dasfa',0.00,0.00,0.00,'aaa111','informado',NULL),(18,'2017-12-01 00:00:00','asdfasdf',0.00,0.00,0.00,'aaa111','informado',NULL),(19,'2017-12-01 00:00:00','asdfads',0.00,0.00,0.00,'aaa111','informado',NULL),(20,'2017-12-01 00:00:00','asdfasdfa',0.00,0.00,0.00,'EEE567','informado',NULL),(21,'2017-12-01 00:00:00','asdfasdfasdfasdfasdf detalle reparacion',0.00,0.00,0.00,'AAA111','informado',NULL),(22,'2017-12-01 00:00:00','asdfasdfasd',0.00,0.00,0.00,'ZZZ999','informado',NULL),(23,'2017-12-01 00:00:00','dsafsadfasd',0.00,0.00,0.00,'AAA111','informado',NULL),(24,'2017-12-01 00:00:00','afsdfasdfasdf',0.00,0.00,0.00,'AAA111','informado',NULL),(25,'2017-12-01 00:00:00','asdfasdfsd detalle reparacion',0.00,0.00,0.00,'AAA000','informado',NULL),(26,'2017-12-01 00:00:00','fasdasdfasdf',0.00,0.00,0.00,'EEE567','informado',NULL),(27,'2017-12-01 00:00:00','Se le explotó una barra de plutonio del condensador de flujo. Es conveniente el cambio de las demas barras de plutonio para no correr riesgo atomico.',0.00,0.00,0.00,'EEE567','informado',NULL),(28,'2017-12-02 00:00:00','asdfasdf',0.00,0.00,0.00,'AAA000','informado',NULL),(29,'2017-12-02 00:00:00','fasdfasdfasd',0.00,0.00,0.00,'AAA000','informado',NULL),(30,'2017-12-02 00:00:00','asdasdfasd',0.00,0.00,0.00,'ZZZ999','informado',NULL),(31,'2017-12-02 00:00:00','asdfasd',0.00,0.00,0.00,'EEE567','informado',NULL),(32,'2017-12-02 00:00:00','SADFA',0.00,0.00,0.00,'EEE567','informado',NULL),(33,'2017-12-02 00:00:00','ASDFASDFASD',0.00,0.00,0.00,'aaa111','informado',NULL),(34,'2017-12-02 00:00:00','FSADFASDFASDFA',0.00,0.00,0.00,'EEE567','informado',NULL),(35,'2017-12-02 00:00:00','ASDFASFSA',0.00,0.00,0.00,'AAA111','informado',NULL),(36,'2017-12-02 00:00:00','dddddddddfffffffffffffffffffffffeeeeeeeeeeeeeeeee',0.00,0.00,0.00,'AAA000','informado',NULL),(37,'2017-12-02 00:00:00','dasfasafasd',0.00,0.00,0.00,'AAA000','informado',NULL),(38,'2017-12-02 00:00:00','asdfasd',0.00,0.00,0.00,'AAA000','informado',NULL),(39,'2017-12-03 00:00:00','asdfasdfasdf',0.00,0.00,0.00,'AAA000','informado',NULL),(40,'2017-12-03 00:00:00','Reparacion de embrague',0.00,0.00,0.00,'AAA111','informado',NULL),(41,'2017-12-03 00:00:00','puesta apunto de motor',0.00,0.00,0.00,'ZZZ999','informado',NULL),(42,'2017-12-03 00:00:00','',0.00,0.00,0.00,'aaa111','iniciado, sin informe de revisión',NULL),(43,'2017-12-03 00:00:00','reparacion eje trasero',0.00,0.00,0.00,'AAA000','informado',NULL),(44,'2017-12-03 00:00:00','prueba cantidad de filas',0.00,0.00,0.00,'AAA000','informado',NULL),(45,'2017-12-03 00:00:00','prueba filas',0.00,0.00,0.00,'ZZZ999','informado',NULL),(46,'2017-12-03 00:00:00','prueba filas',0.00,0.00,0.00,'AAA000','informado',NULL),(47,'2017-12-03 00:00:00','fffffffffffffffffffff',0.00,0.00,0.00,'AAA000','informado',NULL),(48,'2017-12-03 00:00:00','ddddddddddddddddddddddddd',0.00,0.00,0.00,'AAA000','informado',NULL),(49,'2017-12-03 00:00:00','fqwefqwef',0.00,0.00,0.00,'AAA000','informado',NULL),(50,'2017-12-03 00:00:00','4sdafsdfasd',0.00,0.00,0.00,'ZZZ999','informado',NULL),(51,'2017-12-03 00:00:00','dasfasdfasd',0.00,0.00,0.00,'AAA111','informado',NULL),(52,'2017-12-03 00:00:00','asdgsagqwfsadaf',0.00,0.00,0.00,'ZZZ999','informado',NULL),(53,'2017-12-03 00:00:00','sdafasd',0.00,0.00,0.00,'EEE567','informado',NULL),(54,'2017-12-03 00:00:00','asdfasd',0.00,0.00,0.00,'aaa111','informado',NULL),(55,'2017-12-03 00:00:00','reparacion de tapa de cilindro',0.00,0.00,0.00,'MMM555','informado',NULL),(56,'2017-12-03 00:00:00','cambio de cigüeñal',0.00,0.00,0.00,'EEE567','informado',NULL),(57,'2017-12-04 00:00:00','reparacion de tapa de cilindro',0.00,0.00,0.00,'MMM555','informado',NULL),(58,'2017-12-04 00:00:00','reparacion de freno trasero izquierdo',0.00,0.00,0.00,'QUE666','informado',NULL),(59,'2017-12-04 00:00:00','cambio de correa de distribución y tacos de motor',0.00,0.00,0.00,'QUE666','informado',NULL),(60,'2017-12-04 00:00:00','sadfasdfasdfas',0.00,0.00,0.00,'aaa111','informado',NULL),(61,'2017-12-04 00:00:00','gkg',0.00,0.00,0.00,'QUE666','informado',NULL),(62,'2017-12-04 00:00:00','REPARACION INTEGRAL DE MOTOR',0.00,0.00,0.00,'AAB123','informado',NULL),(63,'2017-12-10 00:00:00','ghzddgmzdgztrgnzr',0.00,0.00,0.00,'MMM555','informado',NULL),(64,'2018-03-09 00:00:00','cambio de alogo',0.00,0.00,0.00,'RRR555','informado',NULL);
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `idprovincia` int(11) NOT NULL AUTO_INCREMENT,
  `provincia` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idprovincia`),
  UNIQUE KEY `provincia_UNIQUE` (`provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Buenos Aires'),(2,'La Pampa'),(3,'La Rioja');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_cliente`
--

DROP TABLE IF EXISTS `telefono_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono_cliente` (
  `idtelefonocliente` int(11) NOT NULL AUTO_INCREMENT,
  `caracteristica` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tipotelefono` int(11) NOT NULL,
  PRIMARY KEY (`idtelefonocliente`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_cliente`
--

LOCK TABLES `telefono_cliente` WRITE;
/*!40000 ALTER TABLE `telefono_cliente` DISABLE KEYS */;
INSERT INTO `telefono_cliente` VALUES (1,'221','342342',1),(4,'011','0303456',2),(5,'221','4354',1),(9,'221','4356345',3),(10,'221','3456345',3),(13,'666','436345',1),(14,'22','4356345',2),(16,'211','45363456',2),(18,'24','34563456',1),(20,'444','2452435',2),(21,'011','6785678',2),(22,'232','2342234523',2),(24,'322','23423',2),(25,'2322','344',2),(26,'2342','345',1),(27,'342','4432',1),(28,'221','456',3),(29,'221','453',2),(30,'3232','4545',1),(31,'221','3435',2),(32,'221','322',2),(33,'','',0),(34,'','',0),(35,'','',0),(36,'','',0),(37,'','',0),(38,'','',0),(39,'','',0),(40,'sadf','sdfa',3),(41,'232','444',1),(44,'asdf','sadff',1),(45,'sadf','sadf',2),(46,'asdf','sdaf',2),(47,'221','321',3),(48,'33','333',2);
/*!40000 ALTER TABLE `telefono_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `turno` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `patente` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `observacioncliente` varchar(200) CHARACTER SET utf8 NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`turno`),
  KEY `fk_turno_vehiculo_idx` (`patente`),
  CONSTRAINT `fk_turno_vehiculo` FOREIGN KEY (`patente`) REFERENCES `vehiculo` (`patente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'2017-11-30','AAA111','pendiente','fundio biela',NULL),(2,'2017-12-03','AAA000','pendiente','cambiar calentadores',NULL),(3,'2018-11-30','AAA000','Finalizado','Cambio de correa de distribucion',NULL),(4,'2017-11-30','ZZZ999','A la espera de revisión','Se romplio toooodo',NULL),(5,'2017-12-21','AAA111','pendiente','Viene a reparar bomba de agua',NULL),(6,'2017-12-13','aaa111','pendiente','rompiop moti',NULL),(7,'2017-12-05','AAA000','pendiente','ASAFAGAFG',NULL),(8,'2017-12-27','ZZZ999','Finalizado','CAMBIO DE SUSPENSION TRASERA',NULL),(9,'2017-12-21','aaa111','Finalizado','bfgfyjglh-oñ',NULL),(10,'2017-12-14','AAA111','pendiente','dasfsdfasdfasdfasdfas',NULL),(11,'2017-12-14','EEE567','pendiente','Se le rompió el cigueñal',NULL),(15,'2017-12-31','EEE567','pendiente','Fundio motor',NULL),(16,'2017-12-30','EEE567','Finalizado','Fundio motor',NULL),(17,'2017-12-31','EEE567','A la espera de revisión','Fundio motor',NULL),(18,'2018-10-27','EEE567','pendiente','se le rompio el condensador de flujo y no se que otra cosa mas qporasdknas ñdlfkja sñldkjfaslñkdjf aslkd',NULL),(19,'2017-12-06','AAA000','pendiente','dsafasf',NULL),(20,'2017-12-08','AAA000','Finalizado','asdfasd',NULL),(21,'2017-12-21','MMM555','Finalizado','fundio motor',NULL),(22,'2017-12-22','MMM555','Finalizado','Se le rompió el motor',NULL),(23,'2017-12-22','MMM555','pendiente','Fundió motor',NULL),(24,'2017-12-07','QUE666','informando reparación','Se le rompieron los frenos traseros',NULL),(25,'2017-12-30','AAB123','Finalizado','FUNDIO MOTOR',NULL),(27,'2018-03-10','RRR555','informando reparación','averia con fecha de mañana',NULL);
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'1','1','1','1','1'),(2,'adsf','asdf','mcfly','111111','1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculo` (
  `patente` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `vin` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `numMotor` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `numChasis` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cliente` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `aniofabricacion` int(11) NOT NULL,
  `tipomotor` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipocombustible` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipotransmision` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `velocidades` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `transmision` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `idPais` int(11) NOT NULL,
  `modelo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `idMarca` int(11) NOT NULL,
  PRIMARY KEY (`patente`),
  UNIQUE KEY `patente_UNIQUE` (`patente`),
  KEY `fk_vehiculo_cliente_idx` (`id_cliente`),
  KEY `fk_vehiculo_pais_idx` (`idPais`),
  KEY `fk_vehiculo_marca_idx` (`idMarca`),
  CONSTRAINT `fk_vehiculo_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_marca` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idmarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_pais` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idpaises`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES ('AAA000','afdasd','asdfasdf','asdfas','foto','11333444',2000,'1.6','Nafta','Manual','5','Acme',1,'504 GRD',1),('AAA111','f43f34','asf4w','f4f3f',NULL,'11333666',2000,'2.3','Diesel','Manual','4 Velocidades','Alla',1,'Partner',1),('AAB123','saufo1r13','124899ausra','1j2i49aaf',NULL,'11333666',2008,'2.0','Nafta/ GNC','Manual','5 Velocidades','carcacha',2,'palio',2),('AEA324','1yu2437yahsra','o10289auri','j1h4iuqw',NULL,'11333666',2009,'1.7','Nafta ','Manual','5 Velocidades','Magistral',1,'fitito',2),('CCC668','3y473h','3h4h3iu24','4uih4i3u4h',NULL,'44555666',2000,'4.0','Diesel','Manual','5 Velocidades','Acme',1,'Chevy',3),('CCC678','34h34iuh','3i4uhri3u4','34jto3i4',NULL,'44555000',1973,'1.3','Nafta ','Manual','4 Velocidades','Fiat',2,'600',2),('EEE567','f334f3','34f343f43','asvw4',NULL,'44445555',2000,'2.0','Nafta ','Manual','5 Velocidades','Acme',1,'505',1),('HKT927','19284uwa','masne12ui4a','k1ji24',NULL,'11333444',2008,'1.3','Diesel','Manual','5 Velocidades','Tito',1,'3008',1),('MMM555','34t43444','43t344t43t','23r23r3r',NULL,'23232323',1990,'2.0','Nafta ','Manual','5 Velocidades','Acme',2,'Falcon',6),('QQQ666','344353f3','43t34433r','34344fr4',NULL,'44555666',2000,'3t43t34','Diesel','Manual','5 Velocidades','Acme',2,'trend',5),('QUE666','zkqwjr9wq','qwkjktjaopsg','12ui4as',NULL,'11333444',2007,'2.1','Nafta ','Automática','5 Velocidades','Fantoche',2,'corsa',2),('RGB876','23kj4h32kj','34i3uh4iruh34h','34hiu4h3i3uhr',NULL,'1200000',1976,'2.0','Nafta/ GNC','Manual','4 Velocidades','ACME',2,'Falcon Verde',6),('RRR555','322d3d2','233','32e23e',NULL,'44555000',2000,'32e23e','Nafta ','Manual','5 Velocidades','acme',2,'1500',2),('SS000SS','0000000000000','fj89a8fhe9fw','89asdf9ahs',NULL,'44555000',2015,'2.0','Nafta ','Automática','4 Velocidades','Acme',2,'Corsa win',2),('XXX000','8s9uf98suwe','sdafasdfasdfasdf9a8s','0asd9fu0as9df',NULL,'78675654',2017,'3.0','Diesel','Manual','6 Velocidades','Acme',1,'Corsa',2),('ZZZ111','3rf34fr','f43fq3fr4q3','afea4f',NULL,'44445555',1996,'1.7','Nafta ','Manual','6 Velocidades','Ferrari Transmitions',2,'554',1),('ZZZ999','q4rq34rq','q4rewfq34r','kerusa',NULL,'44445555',2010,'1.6','Nafta ','Manual','3 Velocidades','Pirulo',1,'Corselll',3);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-09 19:41:17
