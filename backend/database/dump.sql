# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.6.22)
# Base de données: travel_checklist
# Temps de génération: 2023-09-27 13:51:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `weight` float DEFAULT NULL,
  `season` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `use_frequency` float DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;

INSERT INTO `article` (`id`, `name`, `weight`, `season`, `activity`, `category`, `use_frequency`, `gender`)
VALUES
	(1,'Tee-shirt / Débardeur',150,'','','cloth',1,'\r'),
	(2,'Alcool',NULL,'','','pharmacy',NULL,'\r'),
	(3,'Anti-moustique',NULL,'','','pharmacy',NULL,'\r'),
	(4,'Bandeau de démaquillage',NULL,'','','toiletry',NULL,'\r'),
	(5,'Basket',550,'','','shoe',NULL,'\r'),
	(6,'Basket',550,'','running','shoe',NULL,'\r'),
	(7,'Bonnet',400,'','','accessory',NULL,'\r'),
	(8,'Brassard',NULL,'','running','sport',NULL,'\r'),
	(9,'Brosse à dent + chargeur',NULL,'','','toiletry',NULL,'\r'),
	(10,'Casquette',300,'','','accessory',NULL,'\r'),
	(11,'Chapeau / Casquette',300,'Climat chaud','','accessory',NULL,'\r'),
	(12,'Chaussette',70,'','','cloth',1,'\r'),
	(13,'Chaussons',700,'','','shoe',NULL,'\r'),
	(14,'Compresse',NULL,'','','pharmacy',NULL,'\r'),
	(15,'Contenants',NULL,'','','zero waste',NULL,'\r'),
	(16,'Coupe-ongles',NULL,'','','toiletry',NULL,'\r'),
	(17,'Couteau Suisse',NULL,'','','zero waste',NULL,'\r'),
	(18,'Couverts',NULL,'','','zero waste',NULL,'\r'),
	(19,'Couverture',1500,'','','home',NULL,'\r'),
	(20,'Crème hydratante visage et corps',NULL,'','','toiletry',NULL,'\r'),
	(21,'Crème solaire',NULL,'','','toiletry',NULL,'\r'),
	(22,'Culotte',100,'','','cloth',1,'woman\r'),
	(23,'Protections périodiques / Cup',NULL,'','','toiletry',NULL,'woman\r'),
	(24,'Démaquillant',NULL,'','','toiletry',NULL,'\r'),
	(25,'Dentifrice',NULL,'','','toiletry',NULL,'\r'),
	(26,'Déodorant',NULL,'','','toiletry',NULL,'\r'),
	(27,'Drap',800,'','','home',NULL,'\r'),
	(28,'Drap housse',800,'','','home',NULL,'\r'),
	(29,'Echarpe',500,'Climat froid','','accessory',NULL,'\r'),
	(30,'Eco Cup',NULL,'','','zero waste',NULL,'\r'),
	(31,'Ecouteurs',NULL,'','','distraction',NULL,'\r'),
	(32,'Elastiques / Pinces',NULL,'','','toiletry',NULL,'\r'),
	(33,'Eponge / Lavette',NULL,'','','cleaner',NULL,'\r'),
	(34,'Gant',300,'Climat froid','','accessory',NULL,'\r'),
	(35,'Gel douche / Savon',NULL,'','','toiletry',NULL,'\r'),
	(36,'Gilet / Pull',400,'','','cloth',0,'\r'),
	(37,'Glacière + blocs',NULL,'','','zero waste',NULL,'\r'),
	(38,'Gourdes',NULL,'','','zero waste',NULL,'\r'),
	(39,'Guide de voyage',NULL,'','','document',NULL,'\r'),
	(40,'HDMI + adaptateur iPhone',NULL,'','','distraction',NULL,'\r'),
	(41,'Housse de couette',1500,'','','home',NULL,'\r'),
	(42,'Jeux (Molkky, cartes)',NULL,'','','distraction',NULL,'\r'),
	(43,'Jupe',400,'','','cloth',0,'\r'),
	(44,'Lessive',NULL,'','','cleaner',NULL,'\r'),
	(45,'Liquide vaisselle',NULL,'','','cleaner',NULL,'\r'),
	(46,'Livre',NULL,'','','distraction',NULL,'\r'),
	(47,'Magazine',NULL,'','','distraction',NULL,'\r'),
	(48,'Maillot de bain',300,'','','cloth',NULL,'\r'),
	(49,'Maquillage',NULL,'','','toiletry',NULL,'\r'),
	(50,'Lunettes / Masque / Tuba',NULL,'','piscine, plage','accessory',NULL,'\r'),
	(51,'Masques',NULL,'','','pharmacy',NULL,'\r'),
	(52,'Mouchoirs',NULL,'','','toiletry',NULL,'\r'),
	(53,'Ordinateur',NULL,'','','distraction',NULL,'\r'),
	(54,'Pansements',NULL,'','','pharmacy',NULL,'\r'),
	(55,'Pantacourt',500,'Climat chaud','','cloth',0,'\r'),
	(56,'Pantalon',500,'','','cloth',0,'\r'),
	(57,'Parasol de plage',NULL,'','plage','accessory',NULL,'\r'),
	(58,'Paréo',NULL,'','piscine, plage','cloth',NULL,'\r'),
	(59,'Peigne',NULL,'','','toiletry',NULL,'\r'),
	(60,'Pince à épiler',NULL,'','','toiletry',NULL,'\r'),
	(61,'Produit lave-vaisselle',NULL,'','','cleaner',NULL,'\r'),
	(62,'Produit nettoyant',NULL,'','','cleaner',NULL,'\r'),
	(63,'Pyjama',350,'','','cloth',NULL,'\r'),
	(64,'Rasoir',NULL,'','','toiletry',NULL,'\r'),
	(65,'Robe',400,'','','cloth',0,'\r'),
	(66,'Sac poubelle',NULL,'','','cleaner',NULL,'\r'),
	(67,'Sacs en tissu',NULL,'','','zero waste',NULL,'\r'),
	(68,'Sandales',600,'Climat chaud','','shoe',NULL,'\r'),
	(69,'Savon main',NULL,'','','cleaner',NULL,'\r'),
	(70,'Séche-cheveux',NULL,'','','toiletry',NULL,'\r'),
	(71,'Serviettes en tissu',NULL,'','','zero waste',NULL,'\r'),
	(72,'Serviettes éponge',500,'','','home',NULL,'\r'),
	(73,'Serviettes mains',100,'','','home',NULL,'\r'),
	(74,'Serviettes piscine / plage',NULL,'','piscine, plage','accessory',NULL,'\r'),
	(75,'Shampooing',NULL,'','','toiletry',NULL,'\r'),
	(76,'Soutien-gorge / Brassière',NULL,'','','cloth',0,'woman\r'),
	(77,'Support tél pour voiture',NULL,'','','car',NULL,'\r'),
	(78,'Tablette',NULL,'','','distraction',NULL,'\r'),
	(79,'Taies d\'oreiller',200,'','','home',NULL,'\r'),
	(80,'Tee-shirt de sport',150,'','running','cloth',0,'\r'),
	(81,'Pantalon de sport',300,'','running','cloth',0,'\r'),
	(82,'Badge télépéage',NULL,'','','car',NULL,'\r'),
	(83,'Ticket restaurant / ANCV',NULL,'','','document',NULL,'\r'),
	(84,'Tongs',400,'Climat chaud','','shoe',NULL,'\r'),
	(85,'Torchons',100,'','','home',NULL,'\r'),
	(86,'Lunettes de soleil',200,'','piscine, plage','accessory',NULL,'\r'),
	(87,'Éventail',NULL,'','piscine, plage','accessory',NULL,'\r'),
	(88,'Brumisateur',NULL,'','piscine, plage','accessory',NULL,'\r'),
	(89,'Couverture pic nic et plage',NULL,'','piscine, plage','accessory',NULL,'\r'),
	(90,'Sac de plage',400,'','piscine, plage','accessory',NULL,'\r'),
	(91,'Palmes',NULL,'','piscine, plage','accessory',NULL,'\r'),
	(92,'Chaussons de baignade',NULL,'','piscine, plage','shoe',NULL,'\r'),
	(93,'Chaussures de marche',550,'','','shoe',NULL,'\r'),
	(94,'Chaussettes de sport',70,'','randonnée, running','cloth',0,'\r'),
	(95,'Veste polaire',650,'Climat froid','randonnée','cloth',NULL,'\r'),
	(96,'Cols roulés',150,'','randonnée','cloth',0,'\r'),
	(97,'Sous-vêtements thermiques',NULL,'Climat froid','randonnée','cloth',0,'\r'),
	(98,'Veste imperméable',450,'','randonnée','cloth',0,'\r'),
	(99,'Semelles isolantes',NULL,'','','shoe',NULL,'\r'),
	(100,'Cartes à jouer / Dés',NULL,'','','distraction',NULL,'\r'),
	(101,'Console portable',NULL,'','','distraction',NULL,'\r'),
	(102,'Crayons de couleurs / Feutres',NULL,'','','distraction',NULL,'\r'),
	(103,'Grilles de jeux',NULL,'','','distraction',NULL,'\r'),
	(104,'Jeux de société',NULL,'','','distraction',NULL,'\r'),
	(105,'Eau de toilette / Parfum',NULL,'','','toiletry',NULL,'\r'),
	(106,'Gommage',NULL,'','','toiletry',NULL,'\r'),
	(107,'Produits coiffants',NULL,'','','toiletry',NULL,'\r'),
	(108,'Gant de toilette',NULL,'','','toiletry',NULL,'\r'),
	(109,'Coton / Lingette démaquillante',NULL,'','','toiletry',NULL,'\r'),
	(110,'Vernis et dissolvant',NULL,'','','toiletry',NULL,'\r'),
	(111,'Caleçon',100,'','','cloth',1,'man\r'),
	(112,'Bijoux',NULL,'','','accessory',NULL,'\r'),
	(113,'Mousse à raser',NULL,'','','toiletry',NULL,'man\r'),
	(114,'Shorts',325,'Climat chaud','','cloth',0,'\r'),
	(115,'Ceinture',300,'','','accessory',NULL,'\r'),
	(116,'Sac à dos',950,'','','accessory',NULL,'\r'),
	(117,'Parapluie',NULL,'','','accessory',NULL,'\r'),
	(118,'Baume pour les lèvres',NULL,'','','toiletry',NULL,'\r'),
	(119,'Lampe de poche / frontale',NULL,'','','accessory',NULL,'\r'),
	(120,'Chargeurs',NULL,'','','distraction',NULL,'\r'),
	(121,'Transformateur/adaptateur de prise de courant',NULL,'','','distraction',NULL,'\r'),
	(122,'Permis de conduire',NULL,'','','document',NULL,'\r'),
	(123,'Billets de transport',NULL,'','','document',NULL,'\r'),
	(124,'Chemise',350,'','pro','cloth',1,'\r');

/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `list`;

CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `_idx` (`article_id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Affichage de la table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT '["user"]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
