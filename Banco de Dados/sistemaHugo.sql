CREATE DATABASE  IF NOT EXISTS `sistema_clinica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_clinica`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_clinica
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `id_agenda` int NOT NULL AUTO_INCREMENT,
  `horario` time DEFAULT NULL,
  `data_marcada` date NOT NULL,
  `retorno` date DEFAULT NULL,
  `status_agenda` varchar(30) DEFAULT NULL,
  `id_funcionario` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_agenda`),
  KEY `agenda_ibfk_1` (`id_funcionario`),
  KEY `agenda_ibfk_2` (`id_cliente`),
  CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`),
  CONSTRAINT `agenda_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,'15:00:00','2025-05-02',NULL,'Agendado',NULL,NULL),(2,'12:00:00','2025-05-15',NULL,'Agendado',NULL,NULL),(3,'09:00:00','2025-05-14',NULL,'Agendado',1,1),(4,'09:00:00','2025-05-15','2025-05-15','Agendado',1,1),(5,'09:00:00','2025-05-09','2025-05-09','Agendado',1,1),(6,'09:00:00','2025-05-08','2025-05-08','Agendado',1,1);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `historico_saude` varchar(45) DEFAULT NULL,
  `id_pessoa` int NOT NULL,
  `procedimento` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_pessoa` (`id_pessoa`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Nenhum',1,NULL),(5,'Nenhuma Restrição',30,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dados_agenda`
--

DROP TABLE IF EXISTS `dados_agenda`;
/*!50001 DROP VIEW IF EXISTS `dados_agenda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dados_agenda` AS SELECT 
 1 AS `id_agenda`,
 1 AS `data_marcada`,
 1 AS `horario`,
 1 AS `retorno`,
 1 AS `status_agenda`,
 1 AS `procedimento`,
 1 AS `id_cliente`,
 1 AS `id_funcionario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dados_cliente`
--

DROP TABLE IF EXISTS `dados_cliente`;
/*!50001 DROP VIEW IF EXISTS `dados_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dados_cliente` AS SELECT 
 1 AS `id_pessoa`,
 1 AS `nome`,
 1 AS `idade`,
 1 AS `cpf`,
 1 AS `telefone`,
 1 AS `sexo`,
 1 AS `endereco`,
 1 AS `historico_saude`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `despesas`
--

DROP TABLE IF EXISTS `despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesas` (
  `id_despesa` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  `valor_despesa` double NOT NULL,
  PRIMARY KEY (`id_despesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesas`
--

LOCK TABLES `despesas` WRITE;
/*!40000 ALTER TABLE `despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada_saida`
--

DROP TABLE IF EXISTS `entrada_saida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrada_saida` (
  `id_entrada_saida` int NOT NULL AUTO_INCREMENT,
  `data_entrada_valor` date DEFAULT NULL,
  `recebimento` double DEFAULT NULL,
  `gastos` double DEFAULT NULL,
  `saldo_lucro` double DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `categoria` varchar(50) NOT NULL,
  `id_servicos` int DEFAULT NULL,
  `id_receita` int DEFAULT NULL,
  `id_despesas` int DEFAULT NULL,
  `nome_receita` varchar(50) DEFAULT NULL,
  `receita_despesa` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_entrada_saida`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada_saida`
--

LOCK TABLES `entrada_saida` WRITE;
/*!40000 ALTER TABLE `entrada_saida` DISABLE KEYS */;
INSERT INTO `entrada_saida` VALUES (1,'2025-05-05',1550,NULL,1550,'Salário Pago','Salário',NULL,NULL,NULL,'Salário','Receita'),(3,'2025-05-15',79.9,NULL,1629.9,'Sabao para Acnes','Produtos internos',NULL,NULL,NULL,'Sabonete','Receita'),(4,'2025-05-09',200,NULL,1829.9,'asasdsad','Conta de Luz',NULL,NULL,NULL,'teste','Receita'),(6,'2025-05-05',200,NULL,2029.9,'asasdsad','Conta de Luz',NULL,NULL,NULL,'teste','Receita'),(8,'2025-05-14',200,NULL,1829.9,'dfsdfs','Conta de Luz',NULL,NULL,NULL,'Testess','Despesa'),(9,'2025-05-21',150,NULL,1679.9,'dsfasfdas','Aluguel',NULL,NULL,NULL,'Teste','Despesa'),(10,'2025-05-11',60,NULL,1619.9,'fdafasfas','Aluguel',NULL,NULL,NULL,'TESTSSSS','Despesa'),(11,'2025-05-05',200,NULL,1819.9,'asasdsad','Conta de Luz',NULL,NULL,NULL,'teste','Receita'),(12,'2025-05-17',20,NULL,1839.9,'Teste','Produtos internos',NULL,NULL,NULL,'Luva ','Receita'),(13,'2025-05-20',123,NULL,1716.9,'sdfafasdfas','Aluguel',NULL,NULL,NULL,'asdf','Despesa'),(14,'2025-05-08',56,NULL,1772.9,'fdsgsdfgd','Internet',NULL,NULL,NULL,'TEstes11','Receita'),(15,'2025-05-08',56,NULL,1828.9,'fdsgsdfgd','Internet',NULL,NULL,NULL,'TEstes11','Receita'),(16,'2025-05-01',300,NULL,2128.9,'dfsasasdfasfas','Salário',NULL,NULL,NULL,'Pix Ana','Receita'),(17,'2025-05-01',300,NULL,2428.9,'dfsasasdfasfas','Salário',NULL,NULL,NULL,'Pix Ana','Receita'),(18,'2025-05-06',200,NULL,2628.9,'afsadfasfas','Salário',NULL,NULL,NULL,'Pix Iraildo','Receita'),(19,'2025-05-17',100,NULL,2828.9,'afsadfasfas','Salário',NULL,NULL,NULL,'Pix Iraildo','Receita'),(20,'2025-05-07',396,NULL,2432.9,'dfgdfgdf','Aluguel',NULL,NULL,NULL,'Aluguel','Despesa'),(21,'2025-05-17',100.1,NULL,2533,'dfdsfdsf','Produtos internos',NULL,NULL,NULL,'Sabao','Receita');
/*!40000 ALTER TABLE `entrada_saida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id_estoque` int NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `valor_produto` double DEFAULT NULL,
  `recebimento_produto` date DEFAULT NULL,
  `validade_produto` varchar(50) DEFAULT NULL,
  `reposicao` varchar(30) DEFAULT NULL,
  `situacao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_estoque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (2,'Creme Facial',1,109.99,'2025-05-16','90 dias','Em estoque','A'),(3,'Creme de Pele',1,59.99,'2025-05-26','90 dias','Em estoque','A');
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `salario` double DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `situacao` char(1) DEFAULT NULL,
  `id_pessoa` int NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `id_pessoa` (`id_pessoa`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,3500,'Chefe da Clínica','A',30);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(40) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `tipo_usuario` varchar(20) NOT NULL,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','490640B43519C77281CB2F8471E61A71','Administrador','A');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id_pagamento` int NOT NULL AUTO_INCREMENT,
  `forma_pagamento` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `idade` int DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `sexo` varchar(15) NOT NULL,
  `situacao` char(1) NOT NULL DEFAULT 'A',
  `endereco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Hugo Ruan',18,'66688899900','61998379048','Masculino','A','Recanto das Emas QR 801 CASA 13 LOTE 07'),(28,'Joao Miranda',25,'89945612378','61998379048','Masculino','A','Samambaia Sul Qr 304 Casa 17'),(30,'Wanaria Miranda Pereira',35,'000-999-888-48','(61)998379008','Feminino','A','Qr 301 Conjunto 04 Casa 1 Samambaia');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedimento`
--

DROP TABLE IF EXISTS `procedimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedimento` (
  `id_procedimento` int NOT NULL AUTO_INCREMENT,
  `id_servico` int NOT NULL,
  `id_estoque` int NOT NULL,
  PRIMARY KEY (`id_procedimento`),
  KEY `id_servico` (`id_servico`),
  KEY `id_estoque` (`id_estoque`),
  CONSTRAINT `procedimento_ibfk_1` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`),
  CONSTRAINT `procedimento_ibfk_2` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedimento`
--

LOCK TABLES `procedimento` WRITE;
/*!40000 ALTER TABLE `procedimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita` (
  `id_receita` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  `valor_receita` double NOT NULL,
  PRIMARY KEY (`id_receita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_servico` int NOT NULL AUTO_INCREMENT,
  `valor_total` double DEFAULT NULL,
  `status_servico` varchar(30) DEFAULT NULL,
  `id_pagamento` int NOT NULL,
  `id_agenda` int NOT NULL,
  PRIMARY KEY (`id_servico`),
  KEY `id_agenda` (`id_agenda`),
  KEY `id_pagamento` (`id_pagamento`),
  CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`id_agenda`) REFERENCES `agenda` (`id_agenda`),
  CONSTRAINT `servico_ibfk_2` FOREIGN KEY (`id_pagamento`) REFERENCES `pagamento` (`id_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sistema_clinica'
--

--
-- Dumping routines for database 'sistema_clinica'
--

--
-- Final view structure for view `dados_agenda`
--

/*!50001 DROP VIEW IF EXISTS `dados_agenda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dados_agenda` AS select `a`.`id_agenda` AS `id_agenda`,`a`.`data_marcada` AS `data_marcada`,`a`.`horario` AS `horario`,`a`.`retorno` AS `retorno`,`a`.`status_agenda` AS `status_agenda`,`c`.`procedimento` AS `procedimento`,`c`.`id_cliente` AS `id_cliente`,`f`.`id_funcionario` AS `id_funcionario` from ((`agenda` `a` join `cliente` `c` on((`a`.`id_cliente` = `c`.`id_cliente`))) join `funcionario` `f` on((`a`.`id_funcionario` = `f`.`id_funcionario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dados_cliente`
--

/*!50001 DROP VIEW IF EXISTS `dados_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dados_cliente` AS select `p`.`id_pessoa` AS `id_pessoa`,`p`.`nome` AS `nome`,`p`.`idade` AS `idade`,`p`.`cpf` AS `cpf`,`p`.`telefone` AS `telefone`,`p`.`sexo` AS `sexo`,`p`.`endereco` AS `endereco`,`c`.`historico_saude` AS `historico_saude` from (`cliente` `c` join `pessoa` `p` on((`c`.`id_pessoa` = `p`.`id_pessoa`))) */;
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

-- Dump completed on 2025-05-16 15:22:53
