-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: tp_final
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

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
-- Table structure for table `DOCENTE`
--

DROP TABLE IF EXISTS `DOCENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DOCENTE` (
  `id_integrante` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_integrante`),
  CONSTRAINT `DOCENTE_ibfk_1` FOREIGN KEY (`id_integrante`) REFERENCES `INTEGRANTE` (`id_integrante`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCENTE`
--

LOCK TABLES `DOCENTE` WRITE;
/*!40000 ALTER TABLE `DOCENTE` DISABLE KEYS */;
INSERT INTO `DOCENTE` VALUES (46),(47),(48);
/*!40000 ALTER TABLE `DOCENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOCENTE_MATERIA`
--

DROP TABLE IF EXISTS `DOCENTE_MATERIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DOCENTE_MATERIA` (
  `id_docente_materia` int NOT NULL AUTO_INCREMENT,
  `id_docente` int NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`id_docente_materia`),
  UNIQUE KEY `id_docente` (`id_docente`,`id_materia`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `DOCENTE_MATERIA_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `DOCENTE` (`id_integrante`),
  CONSTRAINT `DOCENTE_MATERIA_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `MATERIA` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCENTE_MATERIA`
--

LOCK TABLES `DOCENTE_MATERIA` WRITE;
/*!40000 ALTER TABLE `DOCENTE_MATERIA` DISABLE KEYS */;
INSERT INTO `DOCENTE_MATERIA` VALUES (1,46,14),(2,47,14),(3,48,14);
/*!40000 ALTER TABLE `DOCENTE_MATERIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTUDIANTE`
--

DROP TABLE IF EXISTS `ESTUDIANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ESTUDIANTE` (
  `id_integrante` int NOT NULL AUTO_INCREMENT,
  `db_relacional` tinyint(1) NOT NULL,
  `db_no_relacional` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_integrante`),
  CONSTRAINT `ESTUDIANTE_ibfk_1` FOREIGN KEY (`id_integrante`) REFERENCES `INTEGRANTE` (`id_integrante`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTUDIANTE`
--

LOCK TABLES `ESTUDIANTE` WRITE;
/*!40000 ALTER TABLE `ESTUDIANTE` DISABLE KEYS */;
INSERT INTO `ESTUDIANTE` VALUES (1,1,1),(2,1,0),(3,0,0),(4,0,0),(5,0,0),(6,1,1),(7,1,1),(8,1,0),(9,1,0),(10,1,1),(11,0,0),(12,0,0),(13,1,1),(14,0,0),(15,1,0),(16,1,1),(17,0,0),(18,1,0),(19,1,0),(20,1,0),(21,0,0),(22,0,0),(23,0,0),(24,1,0),(25,0,0),(26,1,1),(27,0,0),(28,0,0),(29,1,0),(30,0,0),(31,1,1),(32,0,0),(33,0,0),(34,0,0),(35,0,0),(36,0,0),(37,0,0),(38,1,0),(39,0,0),(40,0,0),(41,0,0),(42,0,0),(43,0,0),(44,1,0),(45,0,0);
/*!40000 ALTER TABLE `ESTUDIANTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTUDIANTE_GRUPO_ROL`
--

DROP TABLE IF EXISTS `ESTUDIANTE_GRUPO_ROL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ESTUDIANTE_GRUPO_ROL` (
  `id_estudiante_grupo_rol` int NOT NULL AUTO_INCREMENT,
  `id_estudiante` int NOT NULL,
  `id_grupo` int NOT NULL,
  `id_rol` int NOT NULL,
  PRIMARY KEY (`id_estudiante_grupo_rol`),
  UNIQUE KEY `id_estudiante` (`id_estudiante`,`id_grupo`,`id_rol`),
  KEY `id_grupo` (`id_grupo`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `ESTUDIANTE_GRUPO_ROL_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `ESTUDIANTE` (`id_integrante`),
  CONSTRAINT `ESTUDIANTE_GRUPO_ROL_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `GRUPO` (`id_grupo`),
  CONSTRAINT `ESTUDIANTE_GRUPO_ROL_ibfk_3` FOREIGN KEY (`id_rol`) REFERENCES `ROL` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTUDIANTE_GRUPO_ROL`
--

LOCK TABLES `ESTUDIANTE_GRUPO_ROL` WRITE;
/*!40000 ALTER TABLE `ESTUDIANTE_GRUPO_ROL` DISABLE KEYS */;
INSERT INTO `ESTUDIANTE_GRUPO_ROL` VALUES (1,1,1,1),(2,2,1,2),(3,3,1,3),(4,4,1,4),(5,5,1,5),(6,6,2,4),(7,7,2,1),(8,8,2,2),(9,9,2,5),(10,10,2,3),(11,11,3,5),(12,12,3,4),(13,13,3,2),(14,14,3,1),(15,15,3,3),(16,16,4,4),(17,17,4,1),(18,18,4,2),(19,19,4,5),(20,20,4,3),(21,21,5,4),(22,22,5,1),(23,23,5,2),(24,24,5,5),(25,25,5,3),(26,26,6,4),(27,27,6,1),(28,28,6,2),(29,29,6,5),(30,30,6,3),(31,31,7,4),(32,32,7,2),(33,33,7,5),(34,34,7,3),(35,35,7,1),(36,36,8,4),(37,37,8,1),(38,38,8,2),(39,39,8,5),(40,40,8,3),(41,41,9,4),(42,42,9,1),(43,43,9,2),(44,44,9,5),(45,45,9,3);
/*!40000 ALTER TABLE `ESTUDIANTE_GRUPO_ROL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTUDIANTE_MATERIA`
--

DROP TABLE IF EXISTS `ESTUDIANTE_MATERIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ESTUDIANTE_MATERIA` (
  `id_estudiante_materia` int NOT NULL AUTO_INCREMENT,
  `id_estudiante` int NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`id_estudiante_materia`),
  UNIQUE KEY `id_estudiante` (`id_estudiante`,`id_materia`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `ESTUDIANTE_MATERIA_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `ESTUDIANTE` (`id_integrante`),
  CONSTRAINT `ESTUDIANTE_MATERIA_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `MATERIA` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTUDIANTE_MATERIA`
--

LOCK TABLES `ESTUDIANTE_MATERIA` WRITE;
/*!40000 ALTER TABLE `ESTUDIANTE_MATERIA` DISABLE KEYS */;
INSERT INTO `ESTUDIANTE_MATERIA` VALUES (1,1,14),(2,2,13),(3,2,14),(4,3,13),(5,3,14),(6,4,14),(7,4,15),(8,5,14),(9,5,15),(10,6,14),(11,7,14),(12,7,15),(13,8,14),(14,8,15),(15,9,14),(16,10,14),(17,10,15),(18,11,13),(19,11,14),(20,11,15),(21,12,13),(22,12,14),(23,12,15),(24,13,13),(25,13,14),(26,13,15),(27,14,13),(28,14,14),(29,14,15),(30,15,14),(31,16,13),(32,16,14),(33,17,13),(34,17,14),(35,17,15),(36,18,14),(37,19,13),(38,19,14),(39,19,15),(40,20,8),(41,20,14),(42,21,13),(43,21,14),(44,22,13),(45,22,14),(46,23,13),(47,23,14),(48,24,13),(49,24,14),(50,24,15),(51,25,13),(52,25,14),(53,25,15),(54,26,13),(55,26,14),(56,26,15),(57,27,13),(58,27,14),(59,27,15),(60,28,13),(61,28,14),(62,28,15),(63,29,14),(64,29,15),(65,30,13),(66,30,14),(67,30,15),(68,31,13),(69,31,14),(70,31,15),(71,32,13),(72,32,14),(73,32,15),(74,33,13),(75,33,14),(76,33,15),(77,34,13),(78,34,14),(79,34,15),(80,35,13),(81,35,14),(82,36,14),(83,37,8),(84,37,14),(85,38,13),(86,38,14),(87,39,13),(88,39,14),(89,40,13),(90,40,14),(91,41,13),(92,41,14),(93,41,15),(94,42,13),(95,42,14),(96,42,15),(97,43,13),(98,43,14),(99,44,13),(100,44,14),(101,44,15),(102,45,13),(103,45,14);
/*!40000 ALTER TABLE `ESTUDIANTE_MATERIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GRUPO`
--

DROP TABLE IF EXISTS `GRUPO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GRUPO` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GRUPO`
--

LOCK TABLES `GRUPO` WRITE;
/*!40000 ALTER TABLE `GRUPO` DISABLE KEYS */;
INSERT INTO `GRUPO` VALUES (1,'datamasters'),(2,'nullpointer'),(3,'Enrutados'),(4,'Mandarina'),(5,'MCTeam'),(6,'okupas'),(7,'undefined'),(8,'DropTable'),(9,'DreamTeam');
/*!40000 ALTER TABLE `GRUPO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOBBY`
--

DROP TABLE IF EXISTS `HOBBY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOBBY` (
  `id_hobby` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hobby`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOBBY`
--

LOCK TABLES `HOBBY` WRITE;
/*!40000 ALTER TABLE `HOBBY` DISABLE KEYS */;
INSERT INTO `HOBBY` VALUES (8,'Carpinteria'),(6,'Deportes'),(7,'Dibujo'),(12,'Electronica'),(11,'Fotografía'),(9,'Jardineria'),(4,'Lectura'),(1,'Musica'),(10,'Redes Sociales'),(5,'Series y Peliculas'),(2,'Viajes'),(3,'Videojuegos');
/*!40000 ALTER TABLE `HOBBY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOBBY_INTEGRANTE`
--

DROP TABLE IF EXISTS `HOBBY_INTEGRANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOBBY_INTEGRANTE` (
  `id_hobby_integrante` int NOT NULL AUTO_INCREMENT,
  `id_hobby` int NOT NULL,
  `id_integrante` int NOT NULL,
  PRIMARY KEY (`id_hobby_integrante`),
  UNIQUE KEY `id_hobby` (`id_hobby`,`id_integrante`),
  KEY `id_integrante` (`id_integrante`),
  CONSTRAINT `HOBBY_INTEGRANTE_ibfk_1` FOREIGN KEY (`id_hobby`) REFERENCES `HOBBY` (`id_hobby`),
  CONSTRAINT `HOBBY_INTEGRANTE_ibfk_2` FOREIGN KEY (`id_integrante`) REFERENCES `INTEGRANTE` (`id_integrante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOBBY_INTEGRANTE`
--

LOCK TABLES `HOBBY_INTEGRANTE` WRITE;
/*!40000 ALTER TABLE `HOBBY_INTEGRANTE` DISABLE KEYS */;
INSERT INTO `HOBBY_INTEGRANTE` VALUES (1,1,1),(4,1,2),(9,1,5),(11,1,6),(16,1,8),(19,1,10),(33,1,18),(39,1,22),(41,1,23),(45,1,25),(48,1,26),(49,1,27),(53,1,30),(55,1,31),(58,1,32),(66,1,36),(71,1,40),(79,1,46),(2,2,1),(61,2,34),(3,3,1),(43,3,24),(51,3,29),(60,3,33),(64,3,35),(69,3,39),(75,3,44),(77,3,45),(83,3,47),(87,3,48),(5,4,2),(10,4,5),(13,4,7),(22,4,12),(23,4,13),(26,4,14),(30,4,17),(34,4,18),(46,4,25),(73,4,41),(84,4,47),(6,5,2),(17,5,9),(28,5,15),(31,5,17),(35,5,18),(40,5,22),(52,5,29),(54,5,30),(59,5,32),(62,5,34),(80,5,46),(88,5,48),(8,6,4),(12,6,6),(14,6,7),(18,6,9),(20,6,10),(21,6,11),(24,6,13),(27,6,14),(29,6,16),(32,6,17),(38,6,21),(42,6,23),(44,6,24),(47,6,25),(50,6,27),(56,6,31),(63,6,34),(65,6,35),(67,6,37),(68,6,38),(72,6,40),(74,6,43),(76,6,44),(78,6,45),(81,6,46),(89,6,48),(15,7,7),(70,7,39),(85,8,47),(25,9,13),(36,9,20),(86,9,47),(37,10,20),(57,11,31),(82,11,46),(7,12,3),(90,12,48);
/*!40000 ALTER TABLE `HOBBY_INTEGRANTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INTEGRANTE`
--

DROP TABLE IF EXISTS `INTEGRANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INTEGRANTE` (
  `id_integrante` int NOT NULL AUTO_INCREMENT,
  `dni` int DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `recomendacion` tinytext,
  `id_trabajo` int DEFAULT NULL,
  `id_localidad` int DEFAULT NULL,
  PRIMARY KEY (`id_integrante`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `dni` (`dni`),
  KEY `fk_id_trabajo` (`id_trabajo`),
  KEY `fk_id_localidad` (`id_localidad`),
  CONSTRAINT `fk_id_localidad` FOREIGN KEY (`id_localidad`) REFERENCES `LOCALIDAD` (`id_localidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_id_trabajo` FOREIGN KEY (`id_trabajo`) REFERENCES `TRABAJO` (`id_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INTEGRANTE`
--

LOCK TABLES `INTEGRANTE` WRITE;
/*!40000 ALTER TABLE `INTEGRANTE` DISABLE KEYS */;
INSERT INTO `INTEGRANTE` VALUES (1,37688075,'Jotallan','Calvetti','gaabicarp@gmail.com','Rock nacional.',1,1),(2,41472398,'Mariel Nadine','Kovinchich','marielkov1998@gmail.com','Me gusta desde rock nacional hasta bandas sonoras de series o videojuegos.',2,2),(3,38532025,'gaston ezequiel','Abelardo','gabelardo@estudiantes.unsam.edu.ar','Me gusta los ritmos tropicales',3,1),(4,40663606,'Rodrigo Nicolas','Pavon Gomez','rodrigopavongomez@gmail.com','Mi hobbie es jugar y entrenar voley, estoy en el mixto de la Unsam.',1,NULL),(5,38601662,NULL,'Dragonetti','mdragonetti@estudiantes.unsam.edu.ar','musica de todo un poco',1,1),(6,44547586,'Juan Ignacio','Caceffo','jicaceffo@estudiantes.unsam.edu.ar','Wos',4,3),(7,37984582,NULL,'Gibelli','juligibelli@gmail.com','Serie: supernatural. Musica: arctic monkeys, radiohead',5,4),(8,35972409,'Emiliano Javier','Nuñez','ejnunez@estudiantes.unsam.edu.ar','me gusta bandas como foofighters',6,NULL),(9,43036494,'Alejo','Menini','amenini@estudiantes.unsam.edu.ar','the boys y the bear',4,5),(10,35726203,'Facundo','Barneche','fh.barneche@gmail.com','Recomiendo cuarteto pero me gusta todo',1,6),(11,43245286,'Valentino','Bortolussi','valentino.bortolussi.lembo@gmail.com','Recomiendo Queen.',NULL,7),(12,42647332,'Santiago','Bouza','sbouza@estudiantes.unsam.edu.ar',NULL,NULL,7),(13,38703368,'Cristian','Lomas','cristian.lomas.a@gmail.com',NULL,7,NULL),(14,42472348,'Tomás','Neiro','tomasneiro@hotmail.com','Y musica top 50 spoty.',8,4),(15,37626822,NULL,'Villafañez Sobrecasa','ccvillafanezsobrecasa@estudiantes.unsam.edu.ar',NULL,5,4),(16,41067566,'Maximiliano','Borrelli','maxifborrelli@gmail.com',NULL,5,8),(17,44792981,'Theo','Narmontas Bocci','narmontastheo@gmail.com','elden ring, dragon ball y jojo´s mis favoritos',NULL,NULL),(18,95822280,'Paola','Toledo Contreras','ptoledocontreras@estudiantes.unsam.edu.ar','Actualmente veo de vuelta la telenovela original \"Soy Betty La Fea\" y al mismo tiempo que la nueva temporada, la cual me ha traído grandes decepciones',5,4),(19,35993466,'Matias Hernan','Diaz','diaz.matiash@gmail.com',NULL,7,6),(20,42321002,'Annabella','Pagano','apagano@estudiantes.unsam.edu.ar','Musica los piojos y serie \"NADA\".',9,1),(21,40007189,'Gabriel','Tarquini','gabi.tarquini@gmail.com','No miro muchas series, pero actualmente estoy con The Office.',10,9),(22,39800551,'Valentin Pedro','Fucceneco','vfuccenecco@estudiantes.unsam.edu.ar','Musica rock nacional. Serie recomendada The Boys',10,1),(23,41106994,'Agustina','Rey Brienza','a.reybrienza@gmail.com','Y serie recomiendo una de las últimas que vi que se llama \"El Oso\".',11,10),(24,43781315,'Emiliano','Decuzzi','eadecuzzi@estudiantes.unsam.edu.ar',NULL,8,11),(25,44160355,'Tatiana','Sabbatini','tsabbatini@estudiantes.unsam.edu.ar',NULL,8,4),(26,40395042,NULL,'Ruina','mjruina@estudiantes.unsam.edu.ar',NULL,NULL,NULL),(27,41684308,'Lautaro','Cuellar','lautacuellar69@hotmail.com',NULL,12,12),(28,43017353,'Federico','Virgilio','fedevirgili00@gmail.com',NULL,8,1),(29,42291365,'Alan','Exarchos','alanexarchos@gmail.com',NULL,NULL,9),(30,45105469,NULL,'Rossi','flrossi@estudiantes.unsam.edu.ar','Musica Miranda! y serie The Office.',8,4),(31,NULL,'Ernesto','Davogustto','ernesto.davogustto@gmail.com',NULL,4,4),(32,45174406,'Lucas Gonzalo','Rodriguez','lgrodriguez@estudiantes.unsam.edu.ar',NULL,NULL,8),(33,39916775,'Alan','Guarino','aguarino@estudiantes.unsam.edu.ar',NULL,10,8),(34,35766192,'Tamara Eleonor','Mecozzi','mecozzite@gmail.com',NULL,12,1),(35,NULL,'Agustin','Hoj','ahoj@estudiantes.unsam.edu.ar',NULL,8,8),(36,35093145,'Matias','Caballero','msebacaballero@gmail.com','Pelea de gallos',12,13),(37,36594617,'David','Pazos','davidgpazos@gmail.com',NULL,9,4),(38,43441575,'Fabrizio','Signorello','fsignorello@estudiantes.undam.edu.ar',NULL,5,8),(39,42997600,'Andrés Elias','Simonini','aesimonini@estudiantes.unsam.edu.ar','Serie Arcane',NULL,12),(40,35205248,'Emiliano','Ferretti','emieferretti@gmail.com',NULL,12,6),(41,41555134,NULL,'Perez','amperez@estudiantes.unsam.edu.ar','Series recomendadas Dark o Black Mirror',13,8),(42,41548103,'Delfina','Borrelli','dborrelli@estudiantes.unsam.edu.ar',NULL,10,NULL),(43,42101048,'Pedro','Geraghty','pedrogeraghty82@gmail.com','The Office y Better Call Saul',12,4),(44,36791436,'Diego','Lentz','digoolentz@gmail.com',NULL,10,14),(45,44553142,NULL,'Pugliese','valentinpugliesew@outlook.com',NULL,8,NULL),(46,NULL,'Pablo','Nuñez Monzon','pnunezmonzon@unsam.edu.ar',NULL,13,NULL),(47,32438510,'Denise','Martin','dmmartin@unsam.edu.ar',NULL,13,4),(48,44514481,'Diego','Mirarchi','dhmirarchi@estudiantes.unsam.edu.ar',NULL,13,15);
/*!40000 ALTER TABLE `INTEGRANTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCALIDAD`
--

DROP TABLE IF EXISTS `LOCALIDAD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCALIDAD` (
  `id_localidad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_localidad`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCALIDAD`
--

LOCK TABLES `LOCALIDAD` WRITE;
/*!40000 ALTER TABLE `LOCALIDAD` DISABLE KEYS */;
INSERT INTO `LOCALIDAD` VALUES (4,'CABA'),(14,'Chilavert'),(11,'Ciudad Jardin'),(10,'El Palomar'),(7,'Escobar'),(15,'Florida'),(2,'Jose Leon Suarez'),(13,'Laferrere'),(12,'Loma Hermosa'),(3,'Pacheco'),(5,'San Andres'),(1,'San Martin'),(6,'Santos Lugares'),(8,'Villa Ballester'),(9,'Villa Bosch');
/*!40000 ALTER TABLE `LOCALIDAD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASCOTA`
--

DROP TABLE IF EXISTS `MASCOTA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASCOTA` (
  `id_mascota` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`id_mascota`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASCOTA`
--

LOCK TABLES `MASCOTA` WRITE;
/*!40000 ALTER TABLE `MASCOTA` DISABLE KEYS */;
INSERT INTO `MASCOTA` VALUES (1,'Gato'),(3,'Gorrion'),(2,'Perro');
/*!40000 ALTER TABLE `MASCOTA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASCOTA_INTEGRANTE`
--

DROP TABLE IF EXISTS `MASCOTA_INTEGRANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASCOTA_INTEGRANTE` (
  `id_mascota_integrante` int NOT NULL AUTO_INCREMENT,
  `id_mascota` int NOT NULL,
  `id_integrante` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_mascota_integrante`),
  UNIQUE KEY `id_mascota` (`id_mascota`,`id_integrante`),
  KEY `id_integrante` (`id_integrante`),
  CONSTRAINT `MASCOTA_INTEGRANTE_ibfk_1` FOREIGN KEY (`id_mascota`) REFERENCES `MASCOTA` (`id_mascota`),
  CONSTRAINT `MASCOTA_INTEGRANTE_ibfk_2` FOREIGN KEY (`id_integrante`) REFERENCES `INTEGRANTE` (`id_integrante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MASCOTA_INTEGRANTE_chk_1` CHECK ((`cantidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASCOTA_INTEGRANTE`
--

LOCK TABLES `MASCOTA_INTEGRANTE` WRITE;
/*!40000 ALTER TABLE `MASCOTA_INTEGRANTE` DISABLE KEYS */;
INSERT INTO `MASCOTA_INTEGRANTE` VALUES (1,2,2,1),(2,2,3,1),(3,1,4,3),(4,2,4,2),(5,1,5,1),(6,2,5,1),(7,1,6,2),(8,2,6,1),(9,1,10,1),(10,2,11,1),(11,1,12,3),(12,1,13,3),(13,2,14,2),(14,2,16,1),(15,1,20,2),(16,2,20,1),(17,1,21,1),(18,2,21,2),(19,1,22,2),(20,2,23,2),(21,1,27,1),(22,2,29,1),(23,2,30,1),(24,2,31,1),(25,2,32,1),(26,2,33,3),(27,1,34,3),(28,2,34,2),(29,2,35,1),(30,2,36,2),(31,2,38,3),(32,1,38,5),(33,1,39,2),(34,2,39,1),(35,2,40,2),(36,1,41,3),(37,2,41,3),(38,1,42,2),(39,1,43,2),(40,2,43,1),(41,1,44,1),(42,2,46,1),(43,3,47,2),(44,2,48,1);
/*!40000 ALTER TABLE `MASCOTA_INTEGRANTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MATERIA`
--

DROP TABLE IF EXISTS `MATERIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MATERIA` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_materia`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MATERIA`
--

LOCK TABLES `MATERIA` WRITE;
/*!40000 ALTER TABLE `MATERIA` DISABLE KEYS */;
INSERT INTO `MATERIA` VALUES (1,'CM_001','Electricidad y Magnetismo'),(2,'CM_002','Matemática I'),(3,'CM_003','Laboratorio de Computación I'),(4,'CM_004','Laboratorio de Computación II'),(5,'CM_005','Sistemas de Procesamiento de Datos'),(6,'CM_006','Matemática II'),(7,'CM_007','Algoritmos I'),(8,'CM_008','Conceptos de Arquitecturas y Sistemas Operativos'),(9,'CM_009','Matemática III'),(10,'CM_010','Algoritmos II'),(11,'CM_011','Redes Locales'),(12,'CM_012','Métodos Numéricos'),(13,'CM_013','Algoritmos III'),(14,'CM_014','Bases de Datos'),(15,'CM_015','Seminario de Programación'),(16,'CM_016','Programación con Herramientas Modernas'),(17,'CM_017','Proyectos de Software'),(18,'CM_018','Paradigmas de Programación');
/*!40000 ALTER TABLE `MATERIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROL`
--

DROP TABLE IF EXISTS `ROL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROL` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` tinytext,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROL`
--

LOCK TABLES `ROL` WRITE;
/*!40000 ALTER TABLE `ROL` DISABLE KEYS */;
INSERT INTO `ROL` VALUES (1,'Organizador','subdividir y repartir tareas al equipo / trabajar'),(2,'Representante','comunicación y entrega de actividades al equipo docente / trabajar'),(3,'Team Leader','organizar al equipo para reunirse y participar / trabajar'),(4,'Lider Tecnico','aporte de información esencial para el trabajo / trabajar'),(5,'Supervisor','asegurar que todos cumplan sus funciones / trabajar');
/*!40000 ALTER TABLE `ROL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRABAJO`
--

DROP TABLE IF EXISTS `TRABAJO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRABAJO` (
  `id_trabajo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_trabajo`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRABAJO`
--

LOCK TABLES `TRABAJO` WRITE;
/*!40000 ALTER TABLE `TRABAJO` DISABLE KEYS */;
INSERT INTO `TRABAJO` VALUES (5,'Backend'),(9,'Ciberseguridad'),(10,'Comercio'),(4,'Data analytics'),(7,'Desarrollador aplicaciones'),(11,'Desarrollador RPA'),(13,'Docente'),(3,'Finanzas'),(2,'Freelancer'),(1,'Frontend'),(8,'IT'),(12,'Otros'),(6,'Seguros');
/*!40000 ALTER TABLE `TRABAJO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:59:44
