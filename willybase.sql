-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: willybase
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-0ubuntu0.21.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BungeeOnlineTime`
--

DROP TABLE IF EXISTS `BungeeOnlineTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BungeeOnlineTime` (
  `uuid` varchar(36) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BungeeOnlineTime`
--

LOCK TABLES `BungeeOnlineTime` WRITE;
/*!40000 ALTER TABLE `BungeeOnlineTime` DISABLE KEYS */;
INSERT INTO `BungeeOnlineTime` VALUES ('d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz',361370910),('cb58cd1e-c107-46c2-b63d-04016b19d874','Shaun2177',7089939),('8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting',19964261),('e6711eb9-1962-485a-85c2-80698a035088','NutellaAndGo',5838856),('bdbfb7a5-81f4-488a-85eb-ea561611d976','ilikewilly',559762);
/*!40000 ALTER TABLE `BungeeOnlineTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PunishmentHistory`
--

DROP TABLE IF EXISTS `PunishmentHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PunishmentHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `uuid` varchar(35) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `operator` varchar(16) DEFAULT NULL,
  `punishmentType` varchar(16) DEFAULT NULL,
  `start` mediumtext DEFAULT NULL,
  `end` mediumtext DEFAULT NULL,
  `calculation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PunishmentHistory`
--

LOCK TABLES `PunishmentHistory` WRITE;
/*!40000 ALTER TABLE `PunishmentHistory` DISABLE KEYS */;
INSERT INTO `PunishmentHistory` VALUES (1,'CrazyOptic','b9602d22e81f40b289b5a6298484fa01','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','BAN','1629568708319','-1',''),(2,'SpaghettiBoye','4b327aa75ef44aa688e7c5427fba6f7a','setting off tnt in main area','jakeeiscrafting','KICK','1629570441976','-1',''),(3,'SebanPesce','de07b091efbc4bcfa7f903da929014fb','blowing shit up','AlixPlayzz','WARNING','1629570830114','-1',''),(4,'SpaghettiBoye','4b327aa75ef44aa688e7c5427fba6f7a','literal last chance','jakeeiscrafting','KICK','1629571126748','-1',''),(5,'IrisQuartz','2f74d7627d024d12ab2a082d9fd9c96c','Reason... literally just stop placing tnt is it that hard, anymore and its a kick then ban etc','jakeeiscrafting','WARNING','1629571441185','-1',''),(6,'IrisQuartz','2f74d7627d024d12ab2a082d9fd9c96c','Reason... placing tnt after being warned multiple times','jakeeiscrafting','KICK','1629571461380','-1',''),(7,'SebanPesce','de07b091efbc4bcfa7f903da929014fb','Reason... DM me on discord if you need to talk. jakee#1367','jakeeiscrafting','KICK','1629571953248','-1',''),(8,'SebanPesce','de07b091efbc4bcfa7f903da929014fb','griefing w diamond blocks','jakeeiscrafting','KICK','1629573356080','-1',''),(9,'Mr_Tayto','dc45b6daa48d4bc58c6f077b78320b50','Reason... using respawn anchors to grief and setting houses on fire.','jakeeiscrafting','KICK','1629574229025','-1',''),(10,'Mr_Tayto','dc45b6daa48d4bc58c6f077b78320b50','Reason... doing it again, 2/3 chances','jakeeiscrafting','KICK','1629574268555','-1',''),(11,'Mr_Tayto','dc45b6daa48d4bc58c6f077b78320b50','Reason... asked multiple times not to use respawn anchors','jakeeiscrafting','TEMP_BAN','1629574688562','1629576488509',''),(12,'aarch32','77793148047a4b0a8827f72e51d7d11c','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','MUTE','1631566439607','-1',''),(13,'Pb2007','67.255.59.85','Breaking server rules. Contact an Admin for more information.','jakeeiscrafting','IP_BAN','1631908163809','-1',''),(14,'geohgames','c86a4ac209864e44b7ac2485b1759aa5','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','MUTE','1632422569290','-1',''),(15,'bronyy','61c5d5a9a742407db53ff36bb7dc64d6','hacking','jakeeiscrafting','BAN','1632598651282','-1',''),(16,'unnotch','cffe6fefd0b0422fb9291bfc4ca2c265','Breaking server rules. Contact an Admin for more information.','jakeeiscrafting','BAN','1632599111998','-1',''),(17,'unnotch','cffe6fefd0b0422fb9291bfc4ca2c265','Breaking server rules. Contact an Admin for more information.','jakeeiscrafting','BAN','1632599698491','-1',''),(18,'NoisyAspiring','c1ae6d5767004bfd8f11fc6e998ee2d1','Breaking server rules. Contact an Admin for more information.','NoisyAspiring','WARNING','1635019157180','-1',''),(19,'Leopoggers_','b9602d22e81f40b289b5a6298484fa01','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','BAN','1635275457856','-1',''),(20,'NoisyAspiring','c1ae6d5767004bfd8f11fc6e998ee2d1','Breaking server rules. Contact an Admin for more information.','NoisyAspiring','BAN','1635276792961','-1',''),(21,'zidlelol_','e32fecdae4294db687f7662875300d39','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','MUTE','1635442308451','-1',''),(22,'zidlelol_','e32fecdae4294db687f7662875300d39','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','TEMP_MUTE','1635442934486','1635446534486',''),(23,'Zadamas_','0e4b3c613468432c90a9781a2b9bec9a','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','TEMP_MUTE','1635443443217','1635447043217',''),(24,'Leopoggers_','b9602d22e81f40b289b5a6298484fa01','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','KICK','1635444156980','-1',''),(25,'btoad','3e6ca04ef2de4a39ad7ee54da8a7885b','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','TEMP_MUTE','1635444504026','1635448104026',''),(26,'btoad','3e6ca04ef2de4a39ad7ee54da8a7885b','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','TEMP_MUTE','1635444592995','1635448192923',''),(27,'btoad','3e6ca04ef2de4a39ad7ee54da8a7885b','Idiot moron prick','NutellaAndGo','BAN','1635444743539','-1',''),(28,'Its_Just_someone','1543bc79790747708b396281982dba0e','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','TEMP_BAN','1635445342941','1635531742941',''),(29,'Leopoggers_','b9602d22e81f40b289b5a6298484fa01','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','KICK','1636312001565','-1',''),(30,'Immensity_','5f58eb772c36422a8487ea48cdfc8b77','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','BAN','1636837917652','-1',''),(31,'Immensity_','5f58eb772c36422a8487ea48cdfc8b77','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','KICK','1636838811949','-1',''),(32,'LmeoFR','880d5843d4d04105b79cc54cf67d96c6','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','KICK','1637526535078','-1',''),(33,'Leopoggers_','b9602d22e81f40b289b5a6298484fa01','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','KICK','1637612809792','-1',''),(34,'Zadamas_','0e4b3c613468432c90a9781a2b9bec9a','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','MUTE','1638643515512','-1',''),(35,'geohgames','c86a4ac209864e44b7ac2485b1759aa5','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','KICK','1641838565682','-1','');
/*!40000 ALTER TABLE `PunishmentHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Punishments`
--

DROP TABLE IF EXISTS `Punishments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Punishments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `uuid` varchar(35) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `operator` varchar(16) DEFAULT NULL,
  `punishmentType` varchar(16) DEFAULT NULL,
  `start` mediumtext DEFAULT NULL,
  `end` mediumtext DEFAULT NULL,
  `calculation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Punishments`
--

LOCK TABLES `Punishments` WRITE;
/*!40000 ALTER TABLE `Punishments` DISABLE KEYS */;
INSERT INTO `Punishments` VALUES (2,'SebanPesce','de07b091efbc4bcfa7f903da929014fb','blowing shit up','AlixPlayzz','WARNING','1629570830114','-1',''),(3,'IrisQuartz','2f74d7627d024d12ab2a082d9fd9c96c','Reason... literally just stop placing tnt is it that hard, anymore and its a kick then ban etc','jakeeiscrafting','WARNING','1629571441185','-1',''),(11,'NoisyAspiring','c1ae6d5767004bfd8f11fc6e998ee2d1','Breaking server rules. Contact an Admin for more information.','NoisyAspiring','WARNING','1635019157180','-1',''),(22,'Zadamas_','0e4b3c613468432c90a9781a2b9bec9a','Breaking server rules. Contact an Admin for more information.','AlixPlayzz','MUTE','1638643515512','-1','');
/*!40000 ALTER TABLE `Punishments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_actions`
--

DROP TABLE IF EXISTS `luckperms_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` bigint(20) NOT NULL,
  `actor_uuid` varchar(36) NOT NULL,
  `actor_name` varchar(100) NOT NULL,
  `type` char(1) NOT NULL,
  `acted_uuid` varchar(36) NOT NULL,
  `acted_name` varchar(36) NOT NULL,
  `action` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_actions`
--

LOCK TABLES `luckperms_actions` WRITE;
/*!40000 ALTER TABLE `luckperms_actions` DISABLE KEYS */;
INSERT INTO `luckperms_actions` VALUES (1,1629153534,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','permission set * true'),(2,1629153550,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','admin','create'),(3,1629153559,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','admin','permission set * true'),(4,1629153577,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','admin','meta setprefix 1 &c&lADMIN &7'),(5,1629153581,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','admin','meta setprefix 1 &c&lADMIN &c'),(6,1629153590,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add admin'),(7,1629153723,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','create'),(8,1629153724,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','create'),(9,1629153727,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','tester','create'),(10,1629153729,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','creator','create'),(11,1629153762,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','meta setprefix 1 &9&lHELPER &9'),(12,1629153766,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','meta setprefix 1 &9&lHelper &9'),(13,1629153786,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','meta setprefix 1 &e&lMod &e'),(14,1629153813,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','creator','meta setprefix 1 &f&lCre&c&lator &c'),(15,1629153850,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','tester','meta setprefix 1 &a&lTester &a'),(16,1629193328,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set bungee.ping true'),(17,1629193338,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set bungee.events true'),(18,1629193340,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set bungee.hub true'),(19,1629193424,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set server.default true'),(20,1629193457,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set serverduels.duel true'),(21,1629193557,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set essentials.spawn true'),(22,1629199952,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set essentials.warp true'),(23,1629200001,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set essentials.warps true'),(24,1629200006,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set essentials.warps.npc_cave true'),(25,1629200009,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set essentials.warps.spawn true'),(26,1629202548,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','parent add helper'),(27,1629202568,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set ab.all true'),(28,1629202573,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set ab.* true'),(29,1629233569,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set bungeecord.command.alert true'),(30,1629233581,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set bungeecord.command.find true'),(31,1629233589,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set bungeecord.command.list true'),(32,1629233601,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set bungeecord.command.ip true'),(33,1629233611,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set bungeecord.command.send true'),(34,1629233662,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set essentials.tp true'),(35,1629233664,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set essentials.tp.use true'),(36,1629233688,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.tphere true'),(37,1629233717,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.kick.use true'),(38,1629233730,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.notify.all true'),(39,1629233757,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.undoNotify.all true'),(40,1629233771,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.mute.all true'),(41,1629233781,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.warn.all true'),(42,1629233809,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.note.all true'),(43,1629233832,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.warns.all true'),(44,1629233840,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.notes.all true'),(45,1629233868,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.banlist true'),(46,1629233879,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.check true'),(47,1629233886,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ac.history true'),(48,1629233921,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set anticheat.check true'),(49,1629233923,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set anticheat.mod true'),(50,1629234001,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission unset anticheat.mod'),(51,1629234004,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission unset anticheat.check'),(52,1629234047,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set anticheat.* true'),(53,1629234105,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set anticheat.mod true'),(54,1629234202,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.gamemode true'),(55,1629234207,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.gamemode.all true'),(56,1629234211,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.gamemode.* true'),(57,1629234219,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.fly true'),(58,1629234229,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.vanish true'),(59,1629234271,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.speed true'),(60,1629234297,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.god true'),(61,1629234326,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.seen true'),(62,1629234349,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.nick true'),(63,1629234369,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.invsee true'),(64,1629234389,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.kill true'),(65,1629234462,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','permission set essentials.socialspy true'),(66,1629234472,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set essentials.pweather true'),(67,1629234474,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set essentials.ptime true'),(68,1629294223,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 1 &7'),(69,1629294273,'cb58cd1e-c107-46c2-b63d-04016b19d874','Shaun2177@bungee','U','cb58cd1e-c107-46c2-b63d-04016b19d874','shaun2177','parent add helper'),(70,1629294401,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 2 &7 server=1'),(71,1629294409,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 2 &7 server=2'),(72,1629294410,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 2 &7 server=3'),(73,1629294412,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 3 &7 server=2 world=2'),(74,1629294413,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 3 &7 server=2 world=3'),(75,1629294415,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','meta setprefix 4 &7 server=5 server=2 world=3'),(76,1629294436,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','setweight -1'),(77,1629294494,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove admin'),(78,1629294497,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add mod'),(79,1629294522,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','mod','meta setprefix 2 &e&lMOD &e'),(80,1629294542,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','meta setprefix 1 &9&lHELPER &9'),(81,1629294575,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove mod'),(82,1629294579,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add creator'),(83,1629294597,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove creator'),(84,1629294632,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add tester'),(85,1629294655,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove tester'),(86,1629294931,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add admin'),(87,1629294940,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','cb58cd1e-c107-46c2-b63d-04016b19d874','shaun2177','parent add admin'),(88,1629467686,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setprefix 2 &b'),(89,1629467692,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setprefix 2 '),(90,1629467699,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 1 *'),(91,1629467701,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 2 *'),(92,1629467702,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 3 *'),(93,1629467703,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 4 *'),(94,1629467704,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 0 *'),(95,1629468526,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove admin'),(96,1629468543,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add admin'),(97,1629468576,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove admin'),(98,1629468580,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add admin'),(99,1629569414,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting','parent add admin'),(100,1629573193,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting','meta setprefix 2 &6&lPOop &6'),(101,1631448461,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1  &7[&aBETA&7]'),(102,1631448471,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1  &7[&abeta&7]'),(103,1631448475,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1  &7[&aBeta&7]'),(104,1631448480,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1  &7[&aBETA&7]'),(105,1631448485,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1  &7[&eALPHA&7]'),(106,1631448488,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1  &7[&eALPHA&7]'),(107,1631906415,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','suffix-alpha','create'),(108,1631906436,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','suffix-alpha','meta setsuffix 1  &8[&eALPHA&8]'),(109,1631906451,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add suffix-alpha'),(110,1631906463,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 1 *'),(111,1631906464,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 0 *'),(112,1631906473,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','parent add suffix-alpha'),(113,1631906482,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','0d6e1474-e747-4ef9-8cc9-071e55dea55d','pb2007','parent add suffix-alpha'),(114,1631906500,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','suffix-alpha','meta setsuffix 1  &[&eALPHA&7]'),(115,1631906505,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','suffix-alpha','meta setsuffix 1  &7[&eALPHA&7]'),(116,1631909815,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','0d6e1474-e747-4ef9-8cc9-071e55dea55d','pb2007','permission settemp worldedit.* true 1d'),(117,1631910652,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','0d6e1474-e747-4ef9-8cc9-071e55dea55d','pb2007','permission settemp essentials.powertool true 1d'),(118,1632420337,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setprefix 2 &6&lBALLS &6'),(119,1632422780,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','meta setprefix 2 &6&pPOop &6'),(120,1632422784,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','meta setprefix 2 &6&lPOop &6'),(121,1632422837,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 0 *'),(122,1632422840,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 1 *'),(123,1632422841,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 2 *'),(124,1632422841,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removeprefix 3 *'),(125,1632599921,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','61c5d5a9-a742-407d-b53f-f36bb7dc64d6','bronyy','parent add tester'),(126,1632669064,'e6711eb9-1962-485a-85c2-80698a035088','NutellaAndGo@bungee','U','e6711eb9-1962-485a-85c2-80698a035088','nutellaandgo','parent set admin'),(127,1633008032,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','b3402fdd-9581-4876-9742-c0b1b04487a9','vgpp','permission set anticheat.* true'),(128,1634334225,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set bungee.ping, true server=bungee.hub world=true'),(129,1634334243,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','default','permission set bungee.smp true'),(130,1634570786,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove suffix-alpha'),(131,1634572352,'00000000-0000-0000-0000-000000000000','Console@bungee','U','bdbfb7a5-81f4-488a-85eb-ea561611d976','ilikewilly','permission set * true'),(132,1634572363,'00000000-0000-0000-0000-000000000000','Console@bungee','U','bdbfb7a5-81f4-488a-85eb-ea561611d976','ilikewilly','permission set * false'),(133,1634572523,'00000000-0000-0000-0000-000000000000','Console@bungee','G','null','default','permission set griefprevention.claims true'),(134,1634572596,'00000000-0000-0000-0000-000000000000','Console@bungee','G','null','default','permission set minecraft.command.msg true'),(135,1634572613,'00000000-0000-0000-0000-000000000000','Console@bungee','G','null','default','permission set minecraft.command.msg false'),(136,1634572622,'00000000-0000-0000-0000-000000000000','Console@bungee','G','null','default','permission set minecraft.command.msg true'),(137,1634572851,'00000000-0000-0000-0000-000000000000','Console@bungee','G','null','default','permission set griefprevention.createclaims true world=true'),(138,1634572864,'00000000-0000-0000-0000-000000000000','Console@bungee','G','null','default','permission set griefprevention.createclaims true'),(139,1634576868,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove admin'),(140,1634576874,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','permission set * false'),(141,1634925850,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add admin'),(142,1634926214,'00000000-0000-0000-0000-000000000000','Console@bungee','U','8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting','parent remove admin'),(143,1634926223,'00000000-0000-0000-0000-000000000000','Console@bungee','U','8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting','permission set * false'),(144,1634932178,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','permission set * true'),(145,1634932323,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ab.ban.perma true'),(146,1634932326,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ab.ban.temp true'),(147,1634932346,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ab.ban.all true'),(148,1634932352,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set ab.warn.all true'),(149,1634932385,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','parent add helper'),(150,1634932435,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','meta removeprefix 0 *'),(151,1634932436,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','meta removeprefix 1 *'),(152,1634932437,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','meta removeprefix 2 *'),(153,1634932438,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','meta removeprefix 3 *'),(154,1634932455,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','parent remove suffix-alpha'),(155,1634938233,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent remove admin'),(156,1635013707,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','0d6e1474-e747-4ef9-8cc9-071e55dea55d','pb2007','parent remove suffix-alpha'),(157,1635014437,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set smp.gamemode.survival true'),(158,1635014440,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set smp.gamemode.spectator true'),(159,1635020424,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','G','null','helper','permission set minecraft.command.teleport true'),(160,1635065107,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1 dick'),(161,1635065110,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta setsuffix 1 '),(162,1635065116,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 0 *'),(163,1635065117,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 1 *'),(164,1635065118,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 2 *'),(165,1635065119,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 3 *'),(166,1635065120,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 4 *'),(167,1635065120,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 5 *'),(168,1635065121,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 6 *'),(169,1635065122,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','meta removesuffix 7 *'),(170,1635591399,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','permission set poop true'),(171,1635591404,'00000000-0000-0000-0000-000000000000','Console@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','permission set poop false'),(172,1636812303,'00000000-0000-0000-0000-000000000000','Console@bungee','U','cffe6fef-d0b0-422f-b929-1bfc4ca2c265','unnotch','permission set * false'),(173,1636812373,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','cffe6fef-d0b0-422f-b929-1bfc4ca2c265','unnotch','permission clear'),(174,1636926241,'00000000-0000-0000-0000-000000000000','Console@bungee','U','3a945b4c-2768-4d70-90b9-8024f20e0381','tournn','meta setprefix 2 &6&lPOop &6'),(175,1636926624,'00000000-0000-0000-0000-000000000000','Console@bungee','U','8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting','permission set * true'),(176,1637006269,'d40a9422-e1c9-420f-93cd-f21404351ff6','AlixPlayzz@bungee','U','d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','parent add admin'),(177,1638643567,'e6711eb9-1962-485a-85c2-80698a035088','NutellaAndGo@bungee','U','e6711eb9-1962-485a-85c2-80698a035088','nutellaandgo','permission set * true'),(178,1638643655,'e6711eb9-1962-485a-85c2-80698a035088','NutellaAndGo@bungee','U','e6711eb9-1962-485a-85c2-80698a035088','nutellaandgo','permission set * true server=events');
/*!40000 ALTER TABLE `luckperms_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_group_permissions`
--

DROP TABLE IF EXISTS `luckperms_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(64) NOT NULL,
  `expiry` bigint(20) NOT NULL,
  `contexts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `luckperms_group_permissions_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_group_permissions`
--

LOCK TABLES `luckperms_group_permissions` WRITE;
/*!40000 ALTER TABLE `luckperms_group_permissions` DISABLE KEYS */;
INSERT INTO `luckperms_group_permissions` VALUES (1,'admin','*',1,'global','global',0,'{}'),(3,'admin','prefix.1.&c&lADMIN &c',1,'global','global',0,'{}'),(7,'creator','prefix.1.&f&lCre&c&lator &c',1,'global','global',0,'{}'),(8,'tester','prefix.1.&a&lTester &a',1,'global','global',0,'{}'),(9,'default','bungee.ping',1,'global','global',0,'{}'),(10,'default','bungee.events',1,'global','global',0,'{}'),(11,'default','bungee.hub',1,'global','global',0,'{}'),(12,'default','server.default',1,'global','global',0,'{}'),(13,'default','serverduels.duel',1,'global','global',0,'{}'),(14,'default','essentials.spawn',1,'global','global',0,'{}'),(15,'default','essentials.warp',1,'global','global',0,'{}'),(16,'default','essentials.warps',1,'global','global',0,'{}'),(17,'default','essentials.warps.npc_cave',1,'global','global',0,'{}'),(18,'default','essentials.warps.spawn',1,'global','global',0,'{}'),(19,'mod','group.helper',1,'global','global',0,'{}'),(20,'mod','ab.all',1,'global','global',0,'{}'),(21,'mod','ab.*',1,'global','global',0,'{}'),(22,'helper','bungeecord.command.alert',1,'global','global',0,'{}'),(23,'helper','bungeecord.command.find',1,'global','global',0,'{}'),(24,'helper','bungeecord.command.list',1,'global','global',0,'{}'),(25,'mod','bungeecord.command.ip',1,'global','global',0,'{}'),(26,'mod','bungeecord.command.send',1,'global','global',0,'{}'),(27,'helper','essentials.tp',1,'global','global',0,'{}'),(28,'helper','essentials.tp.use',1,'global','global',0,'{}'),(29,'mod','essentials.tphere',1,'global','global',0,'{}'),(30,'helper','ac.kick.use',1,'global','global',0,'{}'),(31,'helper','ac.notify.all',1,'global','global',0,'{}'),(32,'helper','ac.undoNotify.all',1,'global','global',0,'{}'),(33,'helper','ac.mute.all',1,'global','global',0,'{}'),(34,'helper','ac.warn.all',1,'global','global',0,'{}'),(35,'helper','ac.note.all',1,'global','global',0,'{}'),(36,'helper','ac.warns.all',1,'global','global',0,'{}'),(37,'helper','ac.notes.all',1,'global','global',0,'{}'),(38,'helper','ac.banlist',1,'global','global',0,'{}'),(39,'helper','ac.check',1,'global','global',0,'{}'),(40,'helper','ac.history',1,'global','global',0,'{}'),(43,'mod','anticheat.*',1,'global','global',0,'{}'),(44,'helper','anticheat.mod',1,'global','global',0,'{}'),(45,'mod','essentials.gamemode',1,'global','global',0,'{}'),(46,'mod','essentials.gamemode.all',1,'global','global',0,'{}'),(47,'mod','essentials.gamemode.*',1,'global','global',0,'{}'),(48,'mod','essentials.fly',1,'global','global',0,'{}'),(49,'mod','essentials.vanish',1,'global','global',0,'{}'),(50,'mod','essentials.speed',1,'global','global',0,'{}'),(51,'mod','essentials.god',1,'global','global',0,'{}'),(52,'mod','essentials.seen',1,'global','global',0,'{}'),(53,'mod','essentials.nick',1,'global','global',0,'{}'),(54,'mod','essentials.invsee',1,'global','global',0,'{}'),(55,'mod','essentials.kill',1,'global','global',0,'{}'),(56,'mod','essentials.socialspy',1,'global','global',0,'{}'),(57,'helper','essentials.pweather',1,'global','global',0,'{}'),(58,'helper','essentials.ptime',1,'global','global',0,'{}'),(59,'default','prefix.1.&7',1,'global','global',0,'{}'),(60,'default','prefix.2.&7',1,'1','global',0,'{}'),(61,'default','prefix.2.&7',1,'2','global',0,'{}'),(62,'default','prefix.2.&7',1,'3','global',0,'{}'),(63,'default','prefix.3.&7',1,'2','2',0,'{}'),(64,'default','prefix.3.&7',1,'2','3',0,'{}'),(65,'default','prefix.4.&7',1,'2','3',0,'{\"server\":\"5\"}'),(66,'default','weight.-1',1,'global','global',0,'{}'),(67,'mod','prefix.2.&e&lMOD &e',1,'global','global',0,'{}'),(68,'helper','prefix.1.&9&lHELPER &9',1,'global','global',0,'{}'),(71,'suffix-alpha','suffix.1. &7[&eALPHA&7]',1,'global','global',0,'{}'),(72,'default','bungee.ping,',1,'bungee.hub','true',0,'{}'),(73,'default','bungee.smp',1,'global','global',0,'{}'),(74,'default','griefprevention.claims',1,'global','global',0,'{}'),(77,'default','minecraft.command.msg',1,'global','global',0,'{}'),(78,'default','griefprevention.createclaims',1,'global','true',0,'{}'),(79,'default','griefprevention.createclaims',1,'global','global',0,'{}'),(80,'helper','ab.ban.perma',1,'global','global',0,'{}'),(81,'helper','ab.ban.temp',1,'global','global',0,'{}'),(82,'helper','ab.ban.all',1,'global','global',0,'{}'),(83,'helper','ab.warn.all',1,'global','global',0,'{}'),(84,'helper','smp.gamemode.survival',1,'global','global',0,'{}'),(85,'helper','smp.gamemode.spectator',1,'global','global',0,'{}'),(86,'helper','minecraft.command.teleport',1,'global','global',0,'{}');
/*!40000 ALTER TABLE `luckperms_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_groups`
--

DROP TABLE IF EXISTS `luckperms_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_groups` (
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_groups`
--

LOCK TABLES `luckperms_groups` WRITE;
/*!40000 ALTER TABLE `luckperms_groups` DISABLE KEYS */;
INSERT INTO `luckperms_groups` VALUES ('admin'),('creator'),('default'),('helper'),('mod'),('suffix-alpha'),('tester');
/*!40000 ALTER TABLE `luckperms_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_messenger`
--

DROP TABLE IF EXISTS `luckperms_messenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_messenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_messenger`
--

LOCK TABLES `luckperms_messenger` WRITE;
/*!40000 ALTER TABLE `luckperms_messenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_messenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_players`
--

DROP TABLE IF EXISTS `luckperms_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_players` (
  `uuid` varchar(36) NOT NULL,
  `username` varchar(16) NOT NULL,
  `primary_group` varchar(36) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `luckperms_players_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_players`
--

LOCK TABLES `luckperms_players` WRITE;
/*!40000 ALTER TABLE `luckperms_players` DISABLE KEYS */;
INSERT INTO `luckperms_players` VALUES ('01a8896a-9439-43eb-8924-eaf25ae0b900','filipgoo','default'),('046e227b-98e2-4216-b4b3-d9bf572f0c87','zirens','default'),('0c7cfa3a-b68c-423e-80da-ab7e7475d2dd','jejona','default'),('0d48c6b1-60c7-477a-8a86-c576b633e4b1','seepz','default'),('0d6e1474-e747-4ef9-8cc9-071e55dea55d','pb2007','default'),('0e4b3c61-3468-432c-90a9-781a2b9bec9a','zadamas_','default'),('0ea0b596-1966-433b-b17b-7ef997a25fee','rosettaesa2','default'),('10cc1a6e-8adc-4594-aaaf-ba629e92be29','blazeify','default'),('128ec094-77aa-449b-894a-b6eff8ca937f','771k','default'),('1442735a-c34c-4a90-9c66-c9af33fa3025','holyitsflame','default'),('14570e4e-eea0-4f9c-a938-b9f5f9346a65','mrc0a','default'),('1543bc79-7907-4770-8b39-6281982dba0e','its_just_someone','default'),('15b18986-89ba-45e5-9d04-735cedee36b9','duckly_','default'),('15c05a96-4c6b-4bf2-8688-d765af628316','cheesecake5441','default'),('19388549-92bd-4125-aaca-7aa4bc8536f9','c0dexlive','default'),('19d3e5b8-ef69-4454-9709-ea8a971903f0','neverlicktaser','default'),('1b964a39-3cc6-490d-adaa-c91997dd88ca','swordstep_','default'),('24355c59-3bb7-4117-a7e1-a1e3e58cd1c5','zirinq','default'),('252c90c1-5166-470c-85bc-11a3c8ea9349','her0brine2','default'),('2ce92d9b-44ad-49ce-92c0-062fe7300dd8','iternale','default'),('2f74d762-7d02-4d12-ab2a-082d9fd9c96c','irisquartz','default'),('374f7021-ed58-412c-9e51-f09028219588','2izzy','default'),('37bc8e5b-9958-4b40-9108-e710cb26c515','sheepiwak_','default'),('39a6c485-ebcb-4653-8fd3-ab71eb8c8e7b','erickwright1','default'),('3a945b4c-2768-4d70-90b9-8024f20e0381','tournn','default'),('3c0bebc6-6439-4944-b38a-48f475c9a9bb','yoitsojttv','default'),('3cbe9b48-d151-4f23-9804-85bcd43c73f6','dojje','default'),('3e6ca04e-f2de-4a39-ad7e-e54da8a7885b','btoad','default'),('461b9ff6-abfc-43f7-9338-2ce3ee5ba2ca','fifi_o','default'),('49141c1b-ae93-45ce-b396-096dcc585990','huntervictorian','default'),('4a586cf0-3d7d-468c-a71c-44ed0dffcc0f','b0t_king','default'),('4b327aa7-5ef4-4aa6-88e7-c5427fba6f7a','spaghettiboye','default'),('4cab066d-90b8-4e3e-9350-149eb884378b','franzoa87','default'),('4de7749a-61ff-4b2f-82d5-a901d2cdfad3','imuegi','default'),('51cbf178-1925-4870-bf1c-5e6a6bfb3c48','taycario','default'),('56735fb0-fe7f-491c-a082-a8b8f654c843','lmeoalt','default'),('57e47efe-a385-4304-9a3c-328bb2b611c9','amuv','default'),('5de731ba-1a8b-4add-8faa-b4019534f724','marcelomafiotu','default'),('5f58eb77-2c36-422a-8487-ea48cdfc8b77','immensity_','default'),('60eb2755-9380-4404-a476-ea9ef4e43189','doke_1','default'),('61c5d5a9-a742-407d-b53f-f36bb7dc64d6','bronyy','default'),('6440c950-04fb-4499-9426-0f8b1654b02c','ecgo','default'),('6c262943-896f-4f41-938e-e90f960845ff','mattmora10','default'),('72d19645-a138-4cb4-a049-abb4e0e84c40','walkedb','default'),('77793148-047a-4b0a-8827-f72e51d7d11c','aarch32','default'),('78997991-6fec-44e2-8fb3-bf53e1f5395e','triirex','default'),('799328df-fb9b-4acd-ad30-4cd973d01893','bananawing','default'),('7f6ebd17-ad1b-4511-a9d1-f7c034243f73','erynstreams','default'),('80bd7f4b-e41c-4701-b63a-e8fdaaa8d4f9','thegunstep_7','default'),('880d5843-d4d0-4105-b79c-c54cf67d96c6','lmeofr','default'),('8c70640d-b5aa-48b1-8f85-bdc98a2c83d1','ursul_anonim','default'),('8d1279ed-babe-4e77-b25c-91f7243f00c0','assslicker','default'),('8dcc0f5f-d9ae-4d57-b6f7-84b5640c61c3','theferalcultist','default'),('8eae0fc6-1925-4c22-9acb-ff9c763f42f8','jakeeiscrafting','default'),('92e1e41f-5c6f-4432-9f92-748cdd3a85bd','wholesome_100','default'),('9cf5ff57-0ee6-42a3-9b6b-85e7d64bb437','nemedizz','default'),('9e9903fd-f0b9-4c37-ad77-274e1adc34e7','besasael','default'),('9fd925a1-d249-41b3-adcf-dba0dd2d3385','conelive','default'),('a6081a9e-06b2-437e-8fb3-ac3f27f1167d','bourbonbteam','default'),('a70455d9-18c8-4f5d-bb5c-e5e8476fb9f0','ttvbryantjuh','default'),('a92072aa-6a23-44e2-a84a-c6aadea69d38','bakabunny365','default'),('aa21fd34-9335-44cf-bf26-a8dc2db71d22','potatoman9454','default'),('aa380116-f51e-49d6-b641-db182bdb4ccc','serenanoni','default'),('ab2def11-25e6-4236-ab1c-ac55c63d22b5','cfyc','default'),('b3402fdd-9581-4876-9742-c0b1b04487a9','vgpp','default'),('b9602d22-e81f-40b2-89b5-a6298484fa01','leopoggers_','default'),('bc79225f-60b2-4549-a6ef-3fbb30072bba','emuv','default'),('bce10081-8193-4d84-8576-26b50e3c57e4','flsh_','default'),('bdbfb7a5-81f4-488a-85eb-ea561611d976','ilikewilly','default'),('be27526b-fcfc-47b3-8c61-1e13eb09b6cd','ttvviridianfire','default'),('bebe06d1-f260-432b-b5ac-b046d5ca1fc0','wubkub','default'),('c143e44f-3fb3-4726-8596-7aeb511ee91f','pandoolive','default'),('c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','noisyaspiring','default'),('c3427968-2c4f-4ca5-a36c-7d326b6c19fa','adialwmofficial','default'),('c49673d9-d414-4287-b899-9fb1bdb20418','ut0pi4n','default'),('c6c4cae5-7749-44f1-9888-376c719c995d','va1dimar','default'),('c86a4ac2-0986-4e44-b7ac-2485b1759aa5','geohgames','default'),('cb58cd1e-c107-46c2-b63d-04016b19d874','shaun2177','default'),('cd3c9044-24a4-497f-b840-9bd0d80bf521','mezhez','default'),('cebac0da-04c5-4cfb-9060-d7ef8d9e8b3c','grimworld','default'),('cffe6fef-d0b0-422f-b929-1bfc4ca2c265','unnotch','default'),('d1afb74c-351d-4f10-8fd4-d6507e12a789','tangsyknow','default'),('d35a2904-0479-4e80-9c1b-f2ad8b5bed74','treepu','default'),('d40a9422-e1c9-420f-93cd-f21404351ff6','alixplayzz','default'),('d5585da6-3ba7-4c44-a29c-57ec1d5a0db4','sharfyy','default'),('d5b65e77-5e81-476e-9b88-20b5a8aeca83','skalmannen2','default'),('d6f5ce76-bd83-4048-93d8-740e5af75218','penguinzfly','default'),('d7f57d2f-6767-4876-92de-f75203618d92','thourandom','default'),('d8996ff2-097b-4248-ac7f-a562decf8015','iweezyisplaying','default'),('dabfc6eb-01c5-455d-b4ba-5ceb300f5911','thebiga1ty369','default'),('dc0e331b-9920-4ed1-9248-7ef83f97cfb2','twozip','default'),('dc45b6da-a48d-4bc5-8c6f-077b78320b50','mr_tayto','default'),('dc9bb311-c1cd-4ffe-934f-28076b0f16eb','jamieexe_','default'),('dcab91b6-8644-4cbf-8bdc-d9fa1f3646a9','dedbasil','default'),('ddc3b17b-03aa-4b73-89ae-9882ca1f1786','b_r_e_d','default'),('de07b091-efbc-4bcf-a7f9-03da929014fb','sebanpesce','default'),('e1b7664b-3986-4db8-8b61-84a897202c8c','bruhitsgotti','default'),('e2d6b341-f14c-44ab-b216-e9cbf9f53b7b','puglord124','default'),('e32fecda-e429-4db6-87f7-662875300d39','bridgenoobha_','default'),('e39c39ee-bcfa-4d76-a0e5-e82f8b8de278','jahshongk','default'),('e524472d-ea5f-40eb-89a6-694a4a14481e','joglee','default'),('e6711eb9-1962-485a-85c2-80698a035088','nutellaandgo','admin'),('e90244d4-d1e0-4410-9021-2a2987c69546','tslongpp','default'),('ec5b70b9-620f-4d89-8717-e66793dd03a8','drtid','default'),('ef2cac52-3c77-4713-9ccd-11d604745ba1','itssamz','default'),('f7f482e1-bc26-4e5b-8e37-d4b8c55c6b57','tashadowrobotyt','default'),('fb30d1d4-8f37-4619-9bf6-88470ae593af','rice5','default'),('ff5b7343-0782-4c99-843c-81408ec53c8e','bb0mber','default'),('fff7e999-ed72-4096-94ca-8119978077db','romex_','default');
/*!40000 ALTER TABLE `luckperms_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_tracks`
--

DROP TABLE IF EXISTS `luckperms_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_tracks` (
  `name` varchar(36) NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_tracks`
--

LOCK TABLES `luckperms_tracks` WRITE;
/*!40000 ALTER TABLE `luckperms_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `luckperms_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luckperms_user_permissions`
--

DROP TABLE IF EXISTS `luckperms_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luckperms_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(64) NOT NULL,
  `expiry` bigint(20) NOT NULL,
  `contexts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `luckperms_user_permissions_uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luckperms_user_permissions`
--

LOCK TABLES `luckperms_user_permissions` WRITE;
/*!40000 ALTER TABLE `luckperms_user_permissions` DISABLE KEYS */;
INSERT INTO `luckperms_user_permissions` VALUES (1,'d40a9422-e1c9-420f-93cd-f21404351ff6','group.default',1,'global','global',0,'{}'),(5,'cb58cd1e-c107-46c2-b63d-04016b19d874','group.default',1,'global','global',0,'{}'),(6,'cb58cd1e-c107-46c2-b63d-04016b19d874','group.helper',1,'global','global',0,'{}'),(11,'cb58cd1e-c107-46c2-b63d-04016b19d874','group.admin',1,'global','global',0,'{}'),(16,'8eae0fc6-1925-4c22-9acb-ff9c763f42f8','group.default',1,'global','global',0,'{}'),(18,'8eae0fc6-1925-4c22-9acb-ff9c763f42f8','prefix.2.&6&lPOop &6',1,'global','global',0,'{}'),(25,'c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','group.default',1,'global','global',0,'{}'),(27,'0d6e1474-e747-4ef9-8cc9-071e55dea55d','group.default',1,'global','global',0,'{}'),(34,'61c5d5a9-a742-407d-b53f-f36bb7dc64d6','group.default',1,'global','global',0,'{}'),(35,'61c5d5a9-a742-407d-b53f-f36bb7dc64d6','group.tester',1,'global','global',0,'{}'),(36,'e6711eb9-1962-485a-85c2-80698a035088','group.admin',1,'global','global',0,'{}'),(37,'b3402fdd-9581-4876-9742-c0b1b04487a9','group.default',1,'global','global',0,'{}'),(38,'b3402fdd-9581-4876-9742-c0b1b04487a9','anticheat.*',1,'global','global',0,'{}'),(39,'bdbfb7a5-81f4-488a-85eb-ea561611d976','group.default',1,'global','global',0,'{}'),(41,'bdbfb7a5-81f4-488a-85eb-ea561611d976','*',0,'global','global',0,'{}'),(45,'d40a9422-e1c9-420f-93cd-f21404351ff6','*',1,'global','global',0,'{}'),(46,'c1ae6d57-6700-4bfd-8f11-fc6e998ee2d1','group.helper',1,'global','global',0,'{}'),(50,'d40a9422-e1c9-420f-93cd-f21404351ff6','poop',0,'global','global',0,'{}'),(51,'cffe6fef-d0b0-422f-b929-1bfc4ca2c265','group.default',1,'global','global',0,'{}'),(53,'3a945b4c-2768-4d70-90b9-8024f20e0381','group.default',1,'global','global',0,'{}'),(54,'3a945b4c-2768-4d70-90b9-8024f20e0381','prefix.2.&6&lPOop &6',1,'global','global',0,'{}'),(55,'8eae0fc6-1925-4c22-9acb-ff9c763f42f8','*',1,'global','global',0,'{}'),(56,'d40a9422-e1c9-420f-93cd-f21404351ff6','group.admin',1,'global','global',0,'{}'),(57,'e6711eb9-1962-485a-85c2-80698a035088','*',1,'global','global',0,'{}'),(58,'e6711eb9-1962-485a-85c2-80698a035088','*',1,'events','global',0,'{}');
/*!40000 ALTER TABLE `luckperms_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 19:33:42
