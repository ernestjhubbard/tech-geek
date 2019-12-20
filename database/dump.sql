-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: techGeek
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `cartItems`
--

DROP TABLE IF EXISTS `cartItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartItems` (
  `cartItemId` int(11) NOT NULL AUTO_INCREMENT,
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`cartItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartItems`
--

LOCK TABLES `cartItems` WRITE;
/*!40000 ALTER TABLE `cartItems` DISABLE KEYS */;
INSERT INTO `cartItems` VALUES (155,28,4,29),(156,29,4,29),(157,30,4,29),(158,31,4,29),(159,31,4,29),(160,31,4,29),(161,31,4,29),(162,31,4,29),(163,31,4,29),(164,31,5,10),(165,32,5,10),(166,33,5,10),(167,34,5,10),(168,35,5,10),(169,36,5,10),(170,37,5,10),(171,38,5,10),(172,38,5,10),(173,39,5,10),(174,40,5,10),(175,41,5,10),(176,41,5,10),(177,41,5,10),(178,41,5,10),(179,42,1,30),(180,42,1,30),(181,42,1,30),(182,42,1,30),(183,42,1,30),(184,42,1,30),(185,42,1,30),(186,42,1,30),(187,42,1,30),(188,42,1,30),(189,42,1,30),(190,42,1,30),(191,42,1,30),(192,42,1,30),(193,42,1,30),(194,42,1,30),(195,42,1,30),(196,42,1,30),(197,42,1,30),(198,42,1,30),(199,42,1,30),(200,42,1,30),(201,42,1,30),(202,42,1,30),(203,42,1,30),(204,42,1,30),(205,42,1,30),(206,42,1,30),(207,42,1,30),(208,42,1,30),(209,42,1,30),(210,42,1,30),(211,42,1,30),(212,42,1,30),(213,43,5,10),(214,43,5,10),(215,43,5,10),(216,43,5,10),(217,43,5,10),(218,42,1,30),(219,42,1,30),(220,42,1,30),(221,42,3,30),(222,42,3,30),(223,42,1,30),(224,42,1,30),(225,42,1,30),(226,42,1,30),(227,42,1,30),(228,42,2,99),(229,42,2,99),(230,42,2,99),(231,42,2,99),(232,42,3,30),(233,42,3,30),(234,42,3,30),(235,42,3,30),(236,42,3,30),(237,42,3,30),(238,42,2,99),(239,42,2,99),(240,42,2,99),(241,42,2,99),(242,44,5,10),(243,44,5,10),(244,44,5,10),(245,42,3,30),(246,42,3,30),(247,42,1,30),(248,42,1,30),(249,42,1,30),(250,42,3,30),(251,42,3,30),(252,42,2,99),(253,42,2,99),(254,42,2,99),(255,42,2,99),(256,42,2,99),(257,42,2,99),(258,45,2,99),(259,45,1,30),(260,45,1,30),(261,46,1,30),(262,46,1,30),(263,46,1,30),(264,46,2,99),(265,47,1,30),(266,48,1,30),(267,48,1,30),(268,49,1,30),(269,49,2,99),(270,49,2,99),(271,49,2,99),(272,49,2,99),(273,50,2,99),(274,50,2,99),(275,50,4,29),(276,51,1,30),(277,51,1,30),(278,51,2,99),(279,51,2,99),(280,52,1,30),(281,52,4,29),(282,52,5,10),(283,52,1,30),(284,53,5,10),(285,53,5,10),(286,53,6,8),(287,53,6,8),(288,53,4,29),(289,54,1,30),(290,54,3,30),(291,55,1,30),(292,55,3,30),(293,55,3,30),(294,55,1,30),(295,55,1,30),(296,55,2,99),(297,55,2,99),(298,56,1,30),(299,56,1,30),(300,56,2,99),(301,56,2,99),(302,56,2,99),(303,57,1,30),(304,57,3,30),(305,57,5,10),(306,57,3,30),(307,57,3,30),(308,57,3,30),(309,57,6,8),(310,57,6,8),(311,57,6,8),(312,58,4,29),(313,59,1,30),(314,59,3,30),(315,59,4,29),(316,59,1,30),(317,59,6,8),(318,59,6,8),(319,60,1,30),(320,60,1,30),(321,60,1,30),(322,60,1,30),(323,60,1,30),(324,60,1,30),(325,60,1,30),(326,60,1,30),(327,60,1,30),(328,60,2,99),(329,60,1,30),(330,60,5,10),(331,60,4,29),(332,60,4,29),(333,60,5,10),(334,60,6,8),(335,60,2,99),(336,60,2,99),(337,60,4,29),(338,60,2,99),(339,61,1,30),(340,61,1,30),(341,62,3,4100),(342,62,3,4100),(343,62,3,4100),(344,62,3,4100);
/*!40000 ALTER TABLE `cartItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,'2019-11-20 18:58:22'),(2,'2019-11-20 20:50:45'),(3,'2019-11-20 20:57:55'),(4,'2019-11-20 21:05:10'),(5,'2019-11-20 21:05:25'),(6,'2019-11-20 21:06:53'),(7,'2019-11-20 21:07:04'),(8,'2019-11-20 22:19:27'),(9,'2019-11-20 22:22:24'),(10,'2019-11-20 22:22:36'),(11,'2019-11-20 22:22:47'),(12,'2019-11-20 22:22:54'),(13,'2019-11-20 23:37:05'),(14,'2019-11-20 23:39:00'),(15,'2019-11-20 23:41:43'),(16,'2019-11-20 23:42:27'),(17,'2019-11-20 23:46:14'),(18,'2019-11-20 23:53:53'),(19,'2019-11-20 23:56:09'),(20,'2019-11-21 00:03:25'),(21,'2019-11-21 00:06:30'),(22,'2019-11-21 00:08:38'),(23,'2019-11-21 00:08:40'),(24,'2019-11-21 00:12:10'),(25,'2019-11-21 00:13:16'),(26,'2019-11-21 00:13:17'),(27,'2019-11-21 00:13:18'),(28,'2019-11-21 00:13:55'),(29,'2019-11-21 00:16:33'),(30,'2019-11-21 00:16:38'),(31,'2019-11-21 00:17:12'),(32,'2019-11-21 03:38:00'),(33,'2019-11-21 03:44:33'),(34,'2019-11-21 03:51:55'),(35,'2019-11-21 03:56:34'),(36,'2019-11-21 04:04:18'),(37,'2019-11-21 04:04:34'),(38,'2019-11-21 04:05:45'),(39,'2019-11-21 04:06:30'),(40,'2019-11-21 04:09:46'),(41,'2019-11-21 04:09:51'),(42,'2019-11-21 18:34:46'),(43,'2019-11-21 18:42:46'),(44,'2019-11-21 19:22:09'),(45,'2019-11-21 19:52:25'),(46,'2019-11-21 20:02:25'),(47,'2019-11-21 20:04:08'),(48,'2019-11-21 20:05:04'),(49,'2019-11-21 20:08:35'),(50,'2019-11-21 20:10:18'),(51,'2019-11-21 20:14:37'),(52,'2019-11-21 20:15:43'),(53,'2019-11-21 20:16:37'),(54,'2019-11-21 20:25:37'),(55,'2019-11-21 20:26:56'),(56,'2019-11-21 20:30:15'),(57,'2019-11-21 20:33:44'),(58,'2019-11-21 20:36:56'),(59,'2019-11-21 21:05:48'),(60,'2019-11-22 00:13:00'),(61,'2019-11-30 03:55:05'),(62,'2019-12-20 04:01:37');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `cartId` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditCard` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingAddress` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (42,60,'asd','3434','asd','2019-11-22 00:20:55'),(43,60,'dfasd','sad','asd','2019-11-22 00:21:34'),(44,60,'asd','asd','234','2019-11-22 00:24:13'),(45,60,'asd','asd','asd','2019-11-22 00:40:49'),(46,60,'asdas','asdasd','asdas','2019-11-22 01:03:08'),(47,60,'asdas','asdasd','333','2019-11-22 01:08:56'),(48,60,'Ernest','000 000 000 0000','9200 irvine center dr','2019-11-22 01:10:17'),(49,60,'asd','asd','asdas','2019-11-22 01:38:00'),(50,60,'','','','2019-11-22 01:39:48'),(51,60,'asdasd','asdasd','asd','2019-11-22 01:46:50'),(52,60,'','','','2019-11-22 01:51:22'),(53,60,'asdas','sad','asdasd444','2019-11-22 01:51:29'),(54,60,'ern','hub','999','2019-11-22 01:52:09'),(55,60,'asd','asd','33','2019-11-22 01:53:13'),(56,60,'asd','asd','3','2019-11-22 02:09:10');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shortDescription` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ANNE PRO 2 Mechanical Keyboard',8900,'images/mechanicalkeyboard.jpg','Wired/Wireless Mechanical Keyboard (Gateron Brown Switch/Black Case)','Minimalistic design doing more with less. Requires less hand movement while still being able to access all the functionalities. Compact and Portable . It saves desk space and easy to carry around. Fits right in backpack. Perfect for home, work and on the go. Decent bluetooth connectivity enables wireless connection up to 4 devices and switch seamlessly back and forth.\r\nRevamped obinskit starter software simplifies the way to set up your own key layout, lighting and to create macros. The “Magic Fn” on the Caps Lock button makes it easier to utilize the F1-F12 keys while gaming.'),(2,'Razer Naga Trinity Gaming Mouse',6900,'images/gamingmouse.jpg','16,000 DPI Optical Sensor - Chroma RGB Lighting - Interchangeable Side Plate w/ 2, 7, 12 Button Configurations','INCREDIBLY ACCURATE: True 16,000 DPI 5G Optical Sensor Up to 450 inches per second (IPS)/50 G acceleration\r\nMORE WAYS TO CUSTOMIZE: 3 interchangeable side plates with 2, 7 and 12 button configurations\r\nMORE COMMANDS: Up to 19 fully programmable buttons\r\nDESIGNED TO WIN: Enhanced right handed form factor\r\nPOWERED BY RAZER CHROMA: 16.8 million customizable color option'),(3,'Razer Firefly Chroma Mouse Pad',4100,'images/mousepad.jpg','Customizable Chroma RGB Lighting - 14\"x10\" - Ideal for Quicker Mouse Movements - Non-Slip Rubber Base','The Razer Firefly features a hard, micro-textured finish for the perfect balance between control and speed\r\nRazer Chroma gives more personalization options with 16.8 million colors and customizable lighting effects via Razer Synapse\r\nThe precise, consistent surface offers you ultimate precision and complete control, regardless of which gaming mouse or sensitivity settings you use'),(4,'DXRacer Office Gaming Chair',28900,'images/gamingchair.jpg','Formula Series OH/FD101/NB','Ergonomic design-- more efficiently and comfortably,Free bonus: headrest cushion & lumbar cushion\r\nPatent race car seat breathable material strong mesh and PU\r\nExtra higher backrest to save neck and spinal, Flexible seat back with adjustment\r\nSpecial soft armrests with adjustment protect shoulders and wrists\r\nLifetime warranty on frame, 24-month warranty on parts'),(5,'Sceptre 24\" Curved LED Monitor',10900,'/images/monitor.jpg','Full HD 1080P HDMI VGA up to 75Hz Speakers, VESA Wall Mount Ready Metal Black 2019 (C248W-1920RN)','1800R curve monitor the curved display delivers a revolutionary visual experience with a leading 1800R screen curvature as the images appear to wrap around you for an in depth, immersive experience\r\nHdmi, VGA & PC audio in ports\r\nHigh refresh rate 75Hz\r\nVesa wall mount ready; Lamp Life: 30,000+ Hours\r\nWindows 10 Sceptre Monitors are fully compatible with Windows 10, the most recent operating System available on PCs.Brightness: 220 cd/M2\r\n75 hertz'),(6,'Turtle Beach Headset',8900,'/images/headset.jpg','Atlas Pro Performance PC Gaming Headset','Durable Comfort - A sleek metal headband with a suspended pad and swappable magnetic memory foam ear cushions ensure unmatched comfort so you can focus on the game.\r\nPro Gaming Mic with TruSpeak Technology - Communication is crucial in esports. Points are won and matches lost with a single command, and the Elite Atlas’s crystal clear noise-cancelling microphone with TruSpeak Technology is there to ensure your voice is always heard loud and clear.\r\nAerofit Ear Cushions - Groundbreaking material technologies combine for the best of both worlds when it comes to competitive gaming and comfort. Smooth athletic fabric combined with memory foam keeps players comfortable. Separate internal and external leather sidewalls provide passive noise-isolation for blocking out the roar of the crowd, as well as deeper bass response for better sound.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20  4:10:41
