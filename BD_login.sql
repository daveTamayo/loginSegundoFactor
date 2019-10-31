-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: tutosegundofactor
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.8-MariaDB

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Jesus','jtamayoh@uniminuto.edu.co','$2y$12$pNtGaP5qjr4DfGCDjerLGu6lo.kF5EpkzslrMZAYpuWMNDH4dL.jK'),(3,'Satab','666@satan.com','$2y$12$fownvTeITK3Mf3s5J5/yoORjhNT.wCeVmRku59wr4SbKldM6Jh/9S'),(4,'Dave','dtamayo727@gmail.com','$2y$12$Lg8IXtZGIlXtTMQffLWgX.slUAX1pt4EQjqVYfr7uzlGYRQVxNrMu'),(5,'test','test@hotmail.com','$2y$12$oG7ihrVgpJ67Q4U1kGyyu.PuzpeoqV.VnIBv4WOwA/f473mDqD/IO'),(6,'pepito','pepito@gmail.com','$2y$12$X8BZrhXNK4ezE.VEWB3aiebvk1/gBFdOU4MLBWHI7sMgQO5VtClRW'),(7,'dav','dave@uniminuto.co','$2y$12$Fe9E7qoodP3uVluL4H41bOY1VkfrvflJwSMM/QaWhxMyIkgqhncpm'),(8,'tester','test@prueba.com','$2y$12$XaWSj.NBffrvOnuzgRK9nedBW4uvMwMlCGUvSLhhInIGuK7yjon/.'),(9,'david','dave@gmail.com','$2y$12$5bII8V0Elz6atiTdryX4BuFpuzWSlc6tl5lya/Lvb80g1mVVjFBgW'),(10,'test3','test3@prueba.com','$2y$12$T7/KAbzzDNddGBy454DCZ.OZ5vLHDtuuZBQxyWiah.MCBx2F8haVa'),(11,'jtatam','jtam@testing.com','$2y$12$dIoKhZw/SbEna0Rp/jZo/OXS1MktjQa6MsC4ap33G3Ks6KpBFAqwW'),(12,'test5','test@test5.com','$2y$12$nW.izWOOBxKlOKD9D7.QQeo7DK5WLczEX.MdAmlyHOXsdow/PNrXy'),(13,'segundo','segundo@unimintuo.edu','$2y$12$LbhwbLCw9zgK7pxHvkMSVuSb.TBj0/ZkmztyFc.OqjM9k/KYGA.Yq');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_factor`
--

DROP TABLE IF EXISTS `user_factor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_factor`
--

LOCK TABLES `user_factor` WRITE;
/*!40000 ALTER TABLE `user_factor` DISABLE KEYS */;
INSERT INTO `user_factor` VALUES (1,4,'6d0f4e4f7a12c768fff3df9f80bf54cf66177645db2a07d6973cff897fa98926130a19697a7bc35d','2019-10-30 13:09:57'),(2,5,'8637e7e389e5393c8b0c868f6c3f3c0ff0d77923c13cc3fae8c30983a44606300dce222cd239a2a2','2019-10-30 13:21:38'),(3,6,'21e7147469860b22dc1bef33eceabbd1dd47436f37382c902358012f0639c3d04abc1f3cf663e5d9','2019-10-31 06:55:46'),(4,1,'dd2465a783c9f9abd6c7de5891db6105fa429ecfa119fd99c1da0c35afcfba2311ab20e13c08bb0c','2019-10-31 05:39:34'),(5,7,'77bd62b318adf4f42023cef4e0854abf230f1e3b3fcdaab139a3d8c069ae15ee0e29298a77b50b54','2019-10-31 05:38:42'),(6,8,'9ffa5634ef06c60405dbe7e9b05f73960ab6b85a7491393992d311122749ef9a2df33bd73b5c02ca','2019-10-31 06:28:20'),(7,9,'b443d234eada38e9f7c6e409a6563374dada9139e7cf3645d959e871bde3c0919d50ab5436e1ade7','2019-10-31 05:52:27'),(8,10,'f59b0b31f4523627a01790134e2a298ddd5f3778dd733148023eed542dede32d4341b605e66e7bf5','2019-10-31 06:24:53'),(9,11,'598d98ef540619ddc050825ba055b9bf307f849a8f6da7de86f5e8a94bee93de38fcbe0ff57b5173','2019-10-31 06:11:19'),(10,12,'6a391770956796d0bc2e46a719246c11ec141d882ef4d1e3493759a38931b2f24038d935947f98f9','2019-10-31 06:21:38'),(11,13,'9b876adee397157e06b5ff3c9ed51f941a33ea63bd4d6b11f7348b80a3a8268b20af607ea24cb3b5','2019-10-31 07:08:43');
/*!40000 ALTER TABLE `user_factor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tutosegundofactor'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-30 20:15:49
