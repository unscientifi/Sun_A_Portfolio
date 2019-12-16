-- MySQL dump 10.13  Distrib 5.7.26, for osx10.9 (x86_64)
--
-- Host: us-cdbr-iron-east-05.cleardb.net    Database: heroku_a9e8b17bb040788
-- ------------------------------------------------------
-- Server version	5.6.42-log

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
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(70) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Information` text NOT NULL,
  `Collaborate` text NOT NULL,
  `Video` varchar(70) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'ThermoSecurity','Graphic Design','ThermoSecurity.jpg','HouseCom™️ ThermoSecurity™️ System GUI Concept','This is a school group project focusing on industrial design and promotion. I designed the specific functionality of the HouseCom™️ ThermoSecurity™️ System and its graphical user interface.\r\n\r\n','Collaborated with Collins Ilo, Melbin P. Jossy, and Arun Rohit Victor in modeling and web development. ','ThermoSecurity.mp4'),(2,'Monga','Graphic Design','Monga.jpg','Monga Takeout Menu Redesign','Monga is one of the famous Taiwanese fried chicken brands in Toronto. I took the chance to redesign their takeout menu. I recreated the layout and added several new products. By embedding geometric shapes, I maintain the overall brand impression in my design.','','Monga.mp4'),(3,'DemoReel','3D & VFX','DemoReel.jpg','2019 3D Demo Reel','My 2019 Cinema 4D Demo Reel is based on the use of lights. It is important to always engage with different lighting settings to get a more realistic feeling.\r\nI also added plenty of flares in After Effects to enhance the lighting effects.','','DemoReel.mp4'),(4,'SpringSushi','Graphic Design','SpringSushi.jpg','Spring Sushi Tuna Cutting Event Promotion','This is a roll-up banner for Spring Sushi\'s special tuna cutting event. I emphasized on the dark pink colour, whereas it not only connects to the brand logo but also can be related to the tuna sashimi picture.','','SpringSushi.mp4'),(5,'Hatch','3D & VFX','Hatch.jpg','Startup Agency Promotion Concept','This is a school group project for designing a startup advertising agency. I mainly focus on creating a brand consistent video with After Effects and Cinema 4D.\r\n','Collaborated with Alissar Arnaout, Syrrel Mae Cabiling, and Courtney Topping.','Hatch.mp4'),(6,'ChinesePerspectives','Video Production','ChinesePerspectives.jpg','London Chinese Perspective Radio Independent Film','This is a Chinese independent short film created by FM94.9 Chinese Perspectives Radio at Western University. I am one of the executive directors, and I also worked as an editor and visual effect artist.\r\n\r\n\r\n\r\n','Collaborated with Steven Lin, Lynn Zhou, and Kewen Yan.','ChinesePerspectives.mp4');
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 20:33:35
