-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: techcorp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `despesa`
--

DROP TABLE IF EXISTS `despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesa` (
  `ID_despesa` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `Data_emissao` date DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `Descricao` varchar(256) DEFAULT NULL,
  `Categoria` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID_despesa`),
  KEY `ID_usuario` (`ID_usuario`),
  CONSTRAINT `despesa_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesa`
--

LOCK TABLES `despesa` WRITE;
/*!40000 ALTER TABLE `despesa` DISABLE KEYS */;
INSERT INTO `despesa` VALUES (1,1,'0000-00-00',500,'Compra de Mantimentos','Alimentação'),(2,2,'2024-03-15',50,'Pagamento da Conta de Luz','Serviços Públicos'),(3,3,'2024-03-05',100,'Jantar em Restaurante','Alimentação'),(4,4,'2024-03-20',30,'Gastos com Transporte Público','Transporte'),(5,5,'2024-03-08',106,'Compra de Roupas','Vestuário'),(6,6,'2024-03-01',800,'Pagamento de aluguel','Moradia'),(7,7,'2024-03-12',11,'Café da manhã em cafeteria','Alimentação'),(8,8,'2024-03-17',36,'Compra de livros','Entreterimento'),(9,9,'2024-03-25',16,'Assinatura de serviço de streaming','Entretenimento'),(10,10,'2024-03-22',20,'Gastos com saúde','Saude');
/*!40000 ALTER TABLE `despesa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01 10:25:21
