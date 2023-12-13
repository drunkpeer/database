-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: plantmanagement
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `classificationtable`
--

DROP TABLE IF EXISTS `classificationtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationtable` (
  `classification_id` int NOT NULL AUTO_INCREMENT,
  `family_name` varchar(100) DEFAULT NULL,
  `genus_name` varchar(100) DEFAULT NULL,
  `species_name` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `distribution_id` varchar(50) DEFAULT NULL,
  `growth_environment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`classification_id`),
  KEY `idx_species_name` (`species_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationtable`
--

LOCK TABLES `classificationtable` WRITE;
/*!40000 ALTER TABLE `classificationtable` DISABLE KEYS */;
INSERT INTO `classificationtable` VALUES (1,'蔷薇科','蔷薇属','spp.','月季花','001','温带地区、阳光充足'),(2,'茄科','番茄属','Solanum lycopersicum','西红柿','002','温暖湿润环境'),(3,'蔷薇科','蔷薇属','spp.','玫瑰花','003','温带地区、阳光充足'),(4,'科名','属名','种名','别名','分布区域ID','生长环境'),(5,'某某科','某某属','某某种','某某别名','某某分布区域ID','某某生长环境');
/*!40000 ALTER TABLE `classificationtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diseasetable`
--

DROP TABLE IF EXISTS `diseasetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseasetable` (
  `disease_id` int NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`disease_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseasetable`
--

LOCK TABLES `diseasetable` WRITE;
/*!40000 ALTER TABLE `diseasetable` DISABLE KEYS */;
INSERT INTO `diseasetable` VALUES (1,'蔷薇白粉病'),(2,'番茄晚疫病'),(3,'苹果黑星病');
/*!40000 ALTER TABLE `diseasetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributiontable`
--

DROP TABLE IF EXISTS `distributiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributiontable` (
  `distribution_id` varchar(50) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`distribution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributiontable`
--

LOCK TABLES `distributiontable` WRITE;
/*!40000 ALTER TABLE `distributiontable` DISABLE KEYS */;
INSERT INTO `distributiontable` VALUES ('001','江苏省','南京市','玄武区'),('002','浙江省','杭州市','西湖区'),('003','广东省','深圳市','福田区');
/*!40000 ALTER TABLE `distributiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `drugbytreatpeople`
--

DROP TABLE IF EXISTS `drugbytreatpeople`;
/*!50001 DROP VIEW IF EXISTS `drugbytreatpeople`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `drugbytreatpeople` AS SELECT 
 1 AS `species_name`,
 1 AS `family_name`,
 1 AS `genus_name`,
 1 AS `province`,
 1 AS `city`,
 1 AS `town`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipmentable`
--

DROP TABLE IF EXISTS `equipmentable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmentable` (
  `equipment_id` varchar(20) NOT NULL,
  `equipment_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmentable`
--

LOCK TABLES `equipmentable` WRITE;
/*!40000 ALTER TABLE `equipmentable` DISABLE KEYS */;
INSERT INTO `equipmentable` VALUES ('1','A');
/*!40000 ALTER TABLE `equipmentable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `equipmentbymonitorpeople`
--

DROP TABLE IF EXISTS `equipmentbymonitorpeople`;
/*!50001 DROP VIEW IF EXISTS `equipmentbymonitorpeople`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `equipmentbymonitorpeople` AS SELECT 
 1 AS `monitor_people`,
 1 AS `species_name`,
 1 AS `equipment_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `imagetable`
--

DROP TABLE IF EXISTS `imagetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagetable` (
  `image_id` varchar(50) NOT NULL,
  `image_location` varchar(100) DEFAULT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `image_photographer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagetable`
--

LOCK TABLES `imagetable` WRITE;
/*!40000 ALTER TABLE `imagetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitortable`
--

DROP TABLE IF EXISTS `monitortable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitortable` (
  `monitor_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(100) DEFAULT NULL,
  `monitor_people` varchar(100) DEFAULT NULL,
  `ph` int DEFAULT NULL,
  `temperature` int DEFAULT NULL,
  `monitor_time` datetime DEFAULT NULL,
  `monitor_location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitortable`
--

LOCK TABLES `monitortable` WRITE;
/*!40000 ALTER TABLE `monitortable` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitortable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CheckPH` BEFORE INSERT ON `monitortable` FOR EACH ROW BEGIN
  IF NEW.ph <= 0 OR NEW.ph >= 14 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'pH值非法，必须在1到14之间';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `pcd`
--

DROP TABLE IF EXISTS `pcd`;
/*!50001 DROP VIEW IF EXISTS `pcd`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pcd` AS SELECT 
 1 AS `species_name`,
 1 AS `family_name`,
 1 AS `genus_name`,
 1 AS `province`,
 1 AS `city`,
 1 AS `town`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `plantclassificationtable`
--

DROP TABLE IF EXISTS `plantclassificationtable`;
/*!50001 DROP VIEW IF EXISTS `plantclassificationtable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `plantclassificationtable` AS SELECT 
 1 AS `species_name`,
 1 AS `family_name`,
 1 AS `genus_name`,
 1 AS `alias`,
 1 AS `growth_environment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `planttable`
--

DROP TABLE IF EXISTS `planttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planttable` (
  `plant_id` varchar(50) NOT NULL,
  `species_name` varchar(100) DEFAULT NULL,
  `disease_name` varchar(100) DEFAULT '无',
  `morphology` varchar(255) DEFAULT NULL,
  `cultivation_techniques` varchar(255) DEFAULT NULL,
  `application_value` varchar(255) DEFAULT NULL,
  `image_id` varchar(50) DEFAULT NULL,
  `create_people` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `equipment_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`plant_id`),
  UNIQUE KEY `plant_id_index` (`plant_id`),
  FULLTEXT KEY `plant_id` (`plant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planttable`
--

LOCK TABLES `planttable` WRITE;
/*!40000 ALTER TABLE `planttable` DISABLE KEYS */;
INSERT INTO `planttable` VALUES ('1','蔷薇属 spp.','蔷薇白粉病','叶片上出现小白斑点','定期修剪和清除受感染的叶片','观赏用途、香气、切花','1','管理员','2023-01-01 10:00:00','A'),('2','番茄 Solanum lycopersicum','番茄晚疫病','叶子和果实上出现褐色斑点','适当的间距、良好的通风和使用杀菌剂','食用水果生产、维生素来源','2','管理员','2023-02-01 14:30:00','A'),('3','苹果属 spp.','苹果黑星病','叶片和果实上出现深色鳞状斑点','修剪感染的树枝和使用杀菌剂','食用水果生产、制作苹果酒','3','管理员','2023-03-01 09:45:00','A'),('4','spp.','玫瑰白粉病','叶片上出现小白斑点','定期修剪和清除受感染的叶片','观赏用途、香气、切花','4','管理员','2023-04-01 10:00:00','A'),('5','Solanum tuberosum','马铃薯晚疫病','叶子和块茎上出现褐色斑点','合理的灌溉和施肥管理','食用块茎生产、淀粉来源','5','管理员','2023-05-01 14:30:00','A'),('6','樱桃属 spp.','樱桃健康','正常生长状态','适当修剪和保持土壤湿润','食用水果生产、观赏','6','管理员','2023-06-01 09:45:00','A'),('P001','玫瑰','无',NULL,NULL,NULL,NULL,'张三','2023-12-11 23:42:51','喷雾器');
/*!40000 ALTER TABLE `planttable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_create_time` BEFORE INSERT ON `planttable` FOR EACH ROW BEGIN
  IF DATE(NEW.create_time) != CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = '创建时间填写错误，请确保创建时间为当天日期';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `preventtable`
--

DROP TABLE IF EXISTS `preventtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preventtable` (
  `prevent_id` int NOT NULL AUTO_INCREMENT,
  `prevent_method` varchar(100) DEFAULT NULL,
  `drug_name` varchar(100) DEFAULT NULL,
  `drug_amount` varchar(100) DEFAULT NULL,
  `prevention_detail` varchar(255) DEFAULT NULL,
  `action_period` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`prevent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preventtable`
--

LOCK TABLES `preventtable` WRITE;
/*!40000 ALTER TABLE `preventtable` DISABLE KEYS */;
INSERT INTO `preventtable` VALUES (1,'定期喷洒杀菌剂','噻恩醇','100ml/亩','每7-10天喷一次','14天'),(2,'定期修剪和喷洒杀菌剂','多菌灵','150ml/亩','修剪并每周喷雾一次','7天'),(3,'修剪感染的树枝和使用杀菌剂','苯醚甲环唑','200ml/亩','修剪感染部位并每10天喷雾一次','10天');
/*!40000 ALTER TABLE `preventtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `treatbyspecies_name`
--

DROP TABLE IF EXISTS `treatbyspecies_name`;
/*!50001 DROP VIEW IF EXISTS `treatbyspecies_name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `treatbyspecies_name` AS SELECT 
 1 AS `species_name`,
 1 AS `disease_name`,
 1 AS `treat_people`,
 1 AS `treat_time`,
 1 AS `prevent_method`,
 1 AS `drug_name`,
 1 AS `drug_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `treatmenttable`
--

DROP TABLE IF EXISTS `treatmenttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatmenttable` (
  `treat_id` int NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(100) DEFAULT NULL,
  `prevent_method` varchar(255) DEFAULT NULL,
  `plant_id` varchar(100) DEFAULT NULL,
  `treat_people` varchar(100) DEFAULT NULL,
  `treat_state` varchar(100) DEFAULT NULL,
  `treat_time` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`treat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatmenttable`
--

LOCK TABLES `treatmenttable` WRITE;
/*!40000 ALTER TABLE `treatmenttable` DISABLE KEYS */;
INSERT INTO `treatmenttable` VALUES (1,'蔷薇白粉病','定期喷洒杀菌剂','1','张三','未治疗','2023-07-01','2023-07-01 10:00:00'),(2,'番茄晚疫病','定期修剪和喷洒杀菌剂','2','李四','已治疗','2023-07-02','2023-07-02 14:30:00'),(3,'苹果黑星病','修剪感染的树枝和使用杀菌剂','3','王五','未治疗','2023-07-03','2023-07-03 09:45:00');
/*!40000 ALTER TABLE `treatmenttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `drugbytreatpeople`
--

/*!50001 DROP VIEW IF EXISTS `drugbytreatpeople`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `drugbytreatpeople` AS select `planttable`.`species_name` AS `species_name`,`classificationtable`.`family_name` AS `family_name`,`classificationtable`.`genus_name` AS `genus_name`,`distributiontable`.`province` AS `province`,`distributiontable`.`city` AS `city`,`distributiontable`.`town` AS `town` from ((`planttable` join `classificationtable` on((`planttable`.`species_name` = `classificationtable`.`species_name`))) join `distributiontable` on((`classificationtable`.`distribution_id` = `distributiontable`.`distribution_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `equipmentbymonitorpeople`
--

/*!50001 DROP VIEW IF EXISTS `equipmentbymonitorpeople`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `equipmentbymonitorpeople` AS select `monitortable`.`monitor_people` AS `monitor_people`,`planttable`.`species_name` AS `species_name`,`equipmentable`.`equipment_name` AS `equipment_name` from ((`monitortable` join `planttable` on((`monitortable`.`plant_id` = `planttable`.`plant_id`))) join `equipmentable` on((`planttable`.`equipment_name` = `equipmentable`.`equipment_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pcd`
--

/*!50001 DROP VIEW IF EXISTS `pcd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pcd` AS select `planttable`.`species_name` AS `species_name`,`classificationtable`.`family_name` AS `family_name`,`classificationtable`.`genus_name` AS `genus_name`,`distributiontable`.`province` AS `province`,`distributiontable`.`city` AS `city`,`distributiontable`.`town` AS `town` from ((`planttable` join `classificationtable` on((`planttable`.`species_name` = `classificationtable`.`species_name`))) join `distributiontable` on((`classificationtable`.`distribution_id` = `distributiontable`.`distribution_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `plantclassificationtable`
--

/*!50001 DROP VIEW IF EXISTS `plantclassificationtable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plantclassificationtable` AS select `planttable`.`species_name` AS `species_name`,`classificationtable`.`family_name` AS `family_name`,`classificationtable`.`genus_name` AS `genus_name`,`classificationtable`.`alias` AS `alias`,`classificationtable`.`growth_environment` AS `growth_environment` from (`planttable` join `classificationtable` on((`planttable`.`species_name` = `classificationtable`.`family_name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `treatbyspecies_name`
--

/*!50001 DROP VIEW IF EXISTS `treatbyspecies_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `treatbyspecies_name` AS select `planttable`.`species_name` AS `species_name`,`treatmenttable`.`disease_name` AS `disease_name`,`treatmenttable`.`treat_people` AS `treat_people`,`treatmenttable`.`treat_time` AS `treat_time`,`preventtable`.`prevent_method` AS `prevent_method`,`preventtable`.`drug_name` AS `drug_name`,`preventtable`.`drug_amount` AS `drug_amount` from ((`planttable` join `treatmenttable` on((`planttable`.`plant_id` = `treatmenttable`.`plant_id`))) join `preventtable` on((`treatmenttable`.`prevent_method` = `preventtable`.`prevent_method`))) */;
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

-- Dump completed on 2023-12-13 16:34:39
