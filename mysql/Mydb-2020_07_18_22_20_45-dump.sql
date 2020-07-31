-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Project2
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES (1,'son','1');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `product_category` (`id_product`),
  CONSTRAINT `product_category` FOREIGN KEY (`id_product`) REFERENCES `Product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (16,'Truyen co tich',NULL),(17,'truyen ma',NULL);
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `History`
--

DROP TABLE IF EXISTS `History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `History` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `date_times` datetime DEFAULT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `History`
--

LOCK TABLES `History` WRITE;
/*!40000 ALTER TABLE `History` DISABLE KEYS */;
INSERT INTO `History` VALUES (1,'fileExportProduct.xlsx','2020-07-30 09:03:20'),(2,'fileExportCategory.xlsx','2020-07-30 09:03:32'),(3,'exportFIleHistory.xlsx','2020-07-30 09:03:49'),(4,'fileExportRepository.xlsx','2020-07-30 09:15:06'),(5,'product','2020-07-30 09:19:59'),(6,'exportFIleHistory.xlsx','2020-07-30 19:10:09'),(7,'fileExportProduct.xlsx','2020-07-30 19:40:12');
/*!40000 ALTER TABLE `History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(50) NOT NULL,
  `category_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `images` mediumblob NOT NULL,
  `describes` varchar(1000) DEFAULT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (23,'Thanh giong','Truyen co tich',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿ\Û\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿ\Â\0\0–\0\ì\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0J\Ô\0\0\0\0\0\0\0\0­\ÚL³ùÊ‹3ó(Á»\Éj\êÛ•\Ód÷\n¼®1bpc6hOZ‚›¨\Ê\îi’•r…^…\\\Ð\Å*Q\ë)\Ñ/t5\ãG®¬p\år²¹4*\Ïú\Ó/Ÿ-\\\ác­£Ü½ú¤»C\ÛEnº6\ç¯+›’žf\ã;õÙ‡\ãD¾U¢W¡¿–Ÿ“\ÂÂ´3¸ù,0ŽK¹÷ƒ-+­m;5¡ô4\ÝE;\"\ÔM\'a\ÊxÅ«š\Ì\ÍY\ÚZ^!Z»÷Y‘KYj]Ë²>4½¨\\¶\ÉÖˆ¹dj¬÷ÀV%‰X\0=J-onô\Î\Zu”\ê\êÜ®L|Z\ïû\ÜÖŸ<—xÂ¾8\Çi3±“L©Ixu\ãu]vü®:|`šRwg£HlWW\0+v‰[0ù¼¶,\èkœ(´³j¾T\Îý™]¢ù\ÐÂ¤ReŠ¸{Ž»h\Ðd¢™¦T\0\0\0\0\0\0\0\0«{ú/QÒ·«LJ\í÷{…g¤hŽÆ˜¸òš\×OTn\×\Ëjº)U$Æš¡\Ð\ç\Ç\r\Ã i&Tw±H\æûŽ\\\ÕxG,iVÁk–Z—3¯{†›¯\ï\æœ\é_D§€å¿ªõó\r\ZŒ®û‚WœgY\ç]!Ð«¦]M›>C°µ…Z¦\ß?[E\0¬\Úõˆz›øp{82`fxcÔ¾\r£\á~‡S¦©½(99Š\îË–\ì4\è¹ôjtxw5˜»T¢OT¡\á\Ð’Œ€\0\0_4>\ç\ås\\iýiO\Ë\Ù\Ðö<µm–¼þ4\ÓB÷¢9\éŸV\\\rY\Ðÿ\0\×\Ï@ø\0¼h\0¶`g\ä}Œ›@ú\0³\\\ËX¹²^pÿ\Ä\0-\0\0\0\0\0\0\0!\" 0#24$135AEÿ\Ú\0\0üÍŸW\çUfb¸™¬\ë&Z–¢\ç6’\ïZ›\'HD4\Ý&$o¾Hœ\ÒR--A²t¤v¤.¹†\çùƒÜ©A=|\rŸ\ÇÐ‰Ix€˜B¶b\Z-©D\ÏÈ»29,SR¨‡ò1\Ñ\Ú)Eû°Kÿ\0¿Í°€i\r²ò Gk\Z|,J\í©\\0\"\í/ª \ífk‰«\Çöð¹¦$\á`½«<g±»\0lð\Ò–p\Êq\Ób¿J\Ó_±«tˆ\Ôý¨kÑ—ªº»ž\à\ënj\n^Xv\Ô\ã„\ÔT\î_\Òi¤%3]IB•\Î\Ô2k[1TÀ†\Z\á‡\Ñ<\ì\×,\0`G\Óÿ\0O=?„T¡©\Z—ü~µ¥1ýú…õÕ›•NS§uŒÞ¹ü¼\×Ê¬%\Ø2ò\îY€\Þ\ÜAHO0Y’€\Ü<=øÌ€4úV\Ñ!\\‡pþ\Û\\g¦\ãô\íJ®\Ð\Z\ÚXX›5Ä¢¦–\ÐM´\r‹AQö;t«B“²Pv1ƒú‘Z?¹`Œg-Z7\â¨!^\ÓÕ§Ž\æK\à\Å/‹\ë~˜©pM\á–=¡\ëü=\Å\ãý›n«\\q!8³\â\Ðp=$®·kó”õ\É#¯§«lj÷°\Ñ\Û+Dy–,*q_\ëú¥,t•v‹^Y5š\è\ZLƒUf¶\r\ë.¯«`‹†2\Ô?\äL¤0†F®»5TÐ²sµ;Þšb\Ð1_ù³ûYð‚#,=÷hýŽö\Óhû#KþE\æ\Õþ^¥\ì\Êý~˜þ¿LúÝ™…SÜ\Õ=\í£\ÇN€¢«y6\ÃO¡_M\Ï\ê5M˜§·Š¸\Ë136‚2œ-\ç\n7Ÿªl‡\É!iÙ™­€ò¢…›È—\Ú][Û\é@ªõùO}»}&,Eˆ®1p]ƒ\"°\Ì5¨\Z\É\É\íœ9`\Ø)œg¼ùü\Ì\å\åS\Ùyñ\Æ)LJV·l·;=\Ò0gð\Îqœ²\Ó`\Ú\î½\Ê°ÿ\0w\æu®Ø€\éÌ¸j®q‰Z^ô”\Æ\ØD•†°©Œ©Lžx‘\0¾ƒmþ>C8ñœa|¿1›9\è,¾\Ý û\Ó{ªl¶²²d®\ÔV¬­\é0mc˜+~ªûŒ±½…Nž\ß!3´\áŽ;y:u©½3U,¨Ê°\Zs\ëui~ž\'¦«OQ¶¥>Á£V\ÊKOX¾\Ò\Â\Ý{šh)žž¸m˜«\ÆC”Õ¬µ>ÕªË®¥k1\ÂQA°\ZS\Ôs\n®\0f¨’ñ[”f¥9+É™–N7y=1€\n¥g£Lò\ÍA½]¶ü¡®\"¸Þ«x˜½9\ÊñûT\Ûag%S§7\êL°‡\Í\æi½\åaVo³\é•0ôº³£Fþš£LN\ç§\Ö\å\é\Õ3\Ó\êf¯DWZ—S0+U,s6‹v\ß\Ýù¦oZ#ItVhÈ•\Äªˆ\Å\ê\É\"±ªûú…Ž^§`r5R\ÂÔŠb\"R\Ñd\Æ\É\ä.f?1\'x\Z3“T‹\"\Êjp¤\Ì=¸Šs\ê…&T\Ù\á·`­$1W”M^%\ãHgD\Ï\Ù33301À¾øm¤¾›pˆ	\Þ\"Y´DqˆW¾Ý¥·{¯mœÀø\Ç\Ê8}ƒ;\Üda[iG”\Íü\Æ\Æ¶M¶\Ì}ûd÷?ˆˆû\á|Šh\äMß„Ñ´÷\ÌNÉ\Òg±m	{gÿ\Ä\00\0\0\0\0\0\0\0\0!1AQ\"aÁ #02ñbq¡Ñ\áðÿ\Ú\0?ø\Â\Ý\í:\ë´¸\ÞR9‰-¼¦ùR\n€=\æneAšb\n\ß\Ë	°¼ñTÿ\0\àb\ÖF\ÐNj\æ\Ë\Ö>%WA¬P\ß] 7\Ö\"‘ZÒ ó‘)\Ö\Ó$Zuó0Aæ‚œT0¥Ž¼£\Õ\î&VG\Ì\Ú\ØûFR\È\î¨ÿ\0:r\Ýmp-\Óðc\Ók=Eü‹JhŒ\ì\ZòŸ\Ì\ÍU\ï\ÞS^†5\ÂòöŠ--~©†²‹ð\ÖEÐ˜Y	±2÷\áˆ\Ò\'—m\â|\ë2Ì¹t™:\Å[‰\Ë\áQI±##6aoºU¦Zö\í9m”\'iI\n\n©ž½ Ãe*E7ž°©:ð]¾3óöÁ\Ú`Q\Ú\Î`pñI|¦6)¿{CŒ¤/\é\í!ý!Ä û¢\ã@\Ú˜…se•iv”\é*¦\Ðg\Â^­ÿ\03+>ó’-¬ƒ\á•É¿[\àP\ÆÀ£u\ïü\Ïš¥ý§]\ï¯\ãú‡­r\ÇSþ¿¨¸5R,v‡4:Í¦ixFao.>\æs3ÁP\Îa™\Ì\ÏÇ’›\Úr“´\ä§n\'¡ÿ\Ä\0\'\0\0\0\0\0\0\0\0\0!1A \"20aBRÿ\Ú\0?÷»®“ÿ\0Mn\Z…p‰\×d4\Û\äpðcP£N\ã¶,¦P¢V\Ü8•\Ç$£\åšU8\äA\å\É°—z?[ø<¤.Q}\ÈR“&‰sSôù4\Ó\ÅY	Rm?*\È\é§7{\ÑL\ç}»±þÅ¤¤zPhZxòJô›4§„hŽ­;\Ù&_‘\í\ÒBRÓ¿$zvˆ\Ú\à¿ø54/OøzwŒ‘&û\r\êY;F¬¾[bb\Ì‹10f49\ÅÆ™+õ>=‡‹eDsŒE\ÔWñ5>Í¡1JŒ\ÌÌŒ\Ì\Ì\Ì\á\à›®l\ä\äM¦j\Çú³N*¿\Ãe–\Ù~\ëe–ý\Þv{ÿ\0ÿ\Ä\0;\0\0\0\0\0\0!1\"A2Qaq B#03Rr‘¡b’¢±\Ñ\á‚@Csƒðÿ\Ú\0\0?ûk\ì>iQ\ÇB%7VS³\"¢^\Ä\Ø(;#eÒ˜\ç;[\r½#¹`j¸\ÖR*¹/-‰\\ôuMG\Ê¦\\ãºŸœ©QOLeJu=„¯Ã¬©Qµm£}»4¯qz*¼\Ë\ãO\Åq¯¤©Z¡\Ô-”x\Æz¼\Îÿ\0\ê~q©\Þ\Öò˜\é\È5·€”ûfAµ\ÌDC0\æ\È-µ–jX×¾¬M\ïî®½\âù\ÎJe\Ä\ë~cÞµá£kü@Cöû\ë1:\å\×\Â\"t\ÊT¤§ §x·Q•=´\ßý\Ã\Ù¹ˆÚ‡\ÜÁ&¥·Q=š^5L\Ðe\Ö)4ð¨5›t\ZEöƒ\Ã\ÆX\ÞË 2÷öZ¥AM|H¯\Ó³½¯Œª\ã‰^Ê®\ØÆ«B²\ÕU\ïib%\Êý¢\å\é+\Ô\ÊÝ½¼e7\ršTR¨Ï‰ªØª\Û÷‡‡~\"ˆP,W¿\åg¤\à\àl»\Ñ)\Þ\ÙGMñ6öPA\á‘0ÔµÁˆ¹jŸü!f\ë\ç¦¸Œn2\Åþa\í->Q·Ö´°\ÑD\ÕCR\ê³\îñ¿†“‘ó¸ù\Í®vˆ¤_¡\æ8Ž’Àoþ\é\Æ+8A\Ë\ÌeW¦ý·kÉ’ì³ÿ\0\Ç8\ï\Ê#p•ñ¡ðñ”±Òš°TR©©Ä²µõœ¬ôÎ«TZp¼Uºªúù4­ùÏ³\"=´˜v˜.\'S\ãhF¾ ²Ž[¶\Ý\"P\Üiv\Éi¶\Ö:B\íp€i¬sL°p9q†§†ó\Õ_	~Ä/\áö\r5ƒ›\Û\Ù_\ë;L­8ªly\Þ\Ö‰£U¬]}e:UªvU)wX‹‚#Ð ý£T<\ík	Ce\Ä\ÊlvzŸL#{`gDTÈ—é¸˜Vû¢o\èeV]‹\ìf#A¤,J\ß\ÒmbØ‹ZúFc\ÕM¥µ¼V¨A…\æ*¸¯E\ÊV¼e\ëPZ5\ÞÐƒ±šôœº@\"ú}—c¦9e¶¾\ë3ic>¯,|\âö`\æ<\"­@w\Öýg\Ôõ¤¨\ÌØ¨Ô·ø˜ð\ÔÖ¦¤Å§\ÄR\\	\ï&–oO9\ç\ç øtùOX\Ì\Æ\Ý\'\Åü¦qó\Ò-¶·¹õjM¢¦<Íµµ¼nLúeøL½5¿M\ç\×«bMµ3*i\É\âM£]\â}ginK\Úþæ¼´÷	þb¨\Úû\Í\\“¶*\Ùx\ÂgH±\Ðü3Œ¥HvaV\Ô\ïý\æ5\é”?±”\é§y¥\Z˜f•½%2»8\ÈC=%.kLÐ·ò\ÍIý&‡O#\îp\á{¬\Ì[\Öql½ñOO\×X\Ëðl½-(~q8¿\ÉRSA÷bš\ã¶\Ï\Ôw}\"v%ñ\í~/Or\ç\ÂŸ\n‘c©\ë.•1„¸¸Ü¼â‘¶ N‘¨\Ô\Èl\Â]i\Ä½¶œ\"¥\ÆU-\é)ðŒ?M!ö UÉ•vðW\å;\àŸ1î”²µ3º°¸\éªS¶–Q¼eD§L7{¼W]\Ô\Þ;‹]Á\ç:%Ef6Œ˜ª©l¬\ì´\Ç,½\ÊJ:\Æbuf·¯¤\Íi?–D,E¬rü<\ÄKS\â®|.?´l¬ywŽ\Ëb­kX,C Å®z\Þ\"‹yXm\0Z¸*ù	\ÈQÇ’Kšiü\ÑÉ§ˆ}µŸ\ÝOýÜŠz~\ïü>žSa9\é«z‰õT\Ñ}¤Ä5z¦\ÞÌ²:‰Í¯¯µj€\ën¦kJr©ù\×\íÈ¦yÁ\0Ã’©ð=1R \èg>n‰ ¦ó\0\Ö;©%«R$x® Á\ÙQkúZ}mU\È\ïhª·\ækea67Š\0¦E\í)\ê…\é9kNh_·,ò¾ðS¯\\µú\Æ\ÌøN.¯Iu‚\éx^˜o«m\È\é\Ö­Rš±\é5\Ïð‰Èš\í2\0?\Þ3H¦<Oú—\áÞ¯\Ñí¥„\É]\Ôù4JÕªv¯k\\‰÷´\Ð0ö1&¶H¹<­[‡\íN$%s¨Z\Ö0ª7:\Ù\ÜzÅ¯Lž\Ö\Ùc()/g¥™œA¨p[ˆõ*¾i÷ŒE kdXo	\Äv=\ÔÏ¤Pfµ>R„l%.Ì±¦[òœCTrœ=#kõ0}µ½õ\ÎX2Xµ¾˜\×l3§Im\ï\Ö`•©¯\È\Í8\ä_‘™\'…¼M\ç5zgþRÆµ;~c.üJ\Ëy~\ß&;“\Ö\\:‰õ®‡\å³­p\Ý\Ñ\Ä\Øû8¼\Ø.T\ì/\ÖVÂ Z¹i8a\ÄV\\»[µü%teUWö™o8,1K‡\ÂQ)U0ˆ\ÞqC‰¬;œ·•¸j\í‚\ÔÙ¢\Ò~\"•Bq\Ç\Âó‹ \ÕT-K~’¥!UjUª~€•M^€\Î+‡©P*³\ä\Ò-&¯N¥@\Â\ØxCh\02\n}\ã¹ðŸwýFh¬¾/N±ôa>\ì_óÌ¶F\'\Êó¹ýFw?¨\Î×…Ã¼7\Òs1\çTýýŸR?o«4$^¯ý\Í”¸u\Ç\ÆóZ\Ëò\ÖX?+K8eý\æ<8ÿ\0‘N¾S™Pü¦´G\êe…5\0ü\åº|3!<D\éöú\é2 \Í·Œ\Ä	eùI´\ÔF¿¤GH9z\Î\ì\Ç\Êa{yK\ë2¶gsÜ°\ÞX‰`5„…6º}ð\Îg\Ä²m¦\ß\î\\g\\G\ï,	\È\Ë\ÚüQ©‡S}¡ß˜^\\q¬¸\Ú[Ã§¸\é:CXƒ¦\Ð4ò›ˆ/ŒµÅ—º¥µ3¤\ØÌ›xiy ·\Êo¾’\Ó}„\Þ,C\ç6Œ¿?gÿ\Ä\0\'\0\0\0\0\0\0\0!1AQaq‘¡±Áð \Ñ0\áÿ\Ú\0\0?!ÿ\0·\Å]ƒù\Ìõ\á¼|GB–Ÿ£ö¡n\Ð\îË¹\ÏÑ¨Z\0,’? \à™M	ƒŽ\æK\éK&ó\á§_˜\r6ôrð\âY˜\Õ\ÏdQM$e°\Þ\á­\ã1f¼Œ‘Pwÿ\0qa\Å\Ôrx”»<Ÿ†:t5ôci\r@¦}>²–\ÕÑ³t\íÀñ\Ô%²ú3L\êB\Øä¸¢J¨,\Ü\Ûk÷\'Gs3%õ\Ô\ã\ÂÔˆ\ç	o\È6>e\Ìý`1\ëˆV,ñ/\äÿ\0½dÁ18^Ñ¨~Vij\Éó>{@¼ ôJjšy¿²™·×—ñ\È2=\ÌXPKóZ†\î#2\æ¬\Ûc¯…wMß˜\Ò¤­„\Õ\àS\Ô1•ˆ8€–\Ö\ã\êó\'\Ì/\ßSM_>\'N‘QŸ\ZÊ¨mh`\å®••\íQHº`µß•‹ø&ç¦¦MÉ¿uü.¼½UG.Å™\Ä?u]A©«ž+\åÁW\'ûƒ\æTW\Ý-4–ª\ÃÐŠ™[}CEAj\Ç*‡9`ÌŽb\é™\ãV¾˜1x¼¦\É@ ²­õs	\Ô?, ‡8?Ÿ\Ó\Ú=\ÛI+‹kE\ç\Ïð?´\îax¿B\Ó\â‡‚€\ÅññS^ó8\Ç]\Êý@§\ÌO\Þwü*žµ~uTˆ\å2\Æ?\Èc°« ˜‘ô\r\Ä\äq\ï\îW\Û-˜¿üT)µƒ{^O\ÜD\ê\ØL-]»bœ8	<ó.ô»:€<F^s•°\î\ås‚\Ü\Ø\ê¡y\Õÿ\0?M¯+b˜Û¦S¢Q8\ÌÛ‘\àŽ\Ä\Çk.¹¨€\ÓG\Å\ÎÁ˜*Ò¥b®b÷Æ¿^˜\ÅY\Ç\Åÿ\0`Á^ª8±\ãžXû\\k\Öí³\\Lù!ew\ï\ÌA»ž«36Fl\"üGñ²\áö¹—\Ër><Jx\àß¼\á(~]Ÿ1y¡ž\Î\åº0=Á ³(ŽOz€\r\ê}#þ\\9\É\ëýlk†vót7\Û±0ª¬J1]ô°|•„^]\Îj\n~hQ¼@–|2ò›\Úð<2”JGI\ÏÔ¿+\r\ã8=\ì\Òù•³`\Æþ›”o\Z\ÏôPoKÁ\ê\ÇMõYô\"Å›•O \ë\ÃS™Pe(XUAòÊ»Y,tº˜[^û¯\é|–\Ûü½ÿ\0‰­\ë-³(VrcU\ï.ÄŒTÁˆ\ÌÀ\é\Ê\Ê{£+\Ú\å\ëS®\è§Àó‹”–H\îšfýc¥zoŽ9ƒ\és°[:—K=)÷`;\ïü±R7°þ‰\ÄiK‹ö—\î¸lŸa\Çx‡\í{þ	~ž)2üÀ\í[õBn\ÝA¿Gô´¹O\Ú^’õ•§\é\Z­À0\Öc \î)”_Y¯Xmº\îT¿d\Æ\á;žOIZ¼\çÁÁ\å\Ü‘®œ\ÌT\ì=¥1@†¸Mƒ”\í^;/¨¦\r\Èß\é}‹yc¿cÁÀ7¹†º`>’—ªì›¥@{¦§ß±ô2–­Š¤+c«Ã›ªþ„o8h—¦\ÈUÛ¡Ìµ$ð]o\é7a¨wM_\Ö1}°~D\Ï*\Ñ|‡\ëV\n4\í¹\Ä,h¦’Ÿ˜E-¶k‹˜X\âƒ/bc\ëu[½\\~\Ñ;QR\ëVzNKðf‚2\Â2}\ï~\Zž¦\Ðh@¡ò¿\Êÿ\0)N+ÔŠÎ²»ù—9-¡‡¼GZ8E+¾£\Ä\Ü+ó(€\nzÿ\0Š³|Y²\ÜûM‚=@š+ûw1¢û\Ïû\Ô7d&‰R©£³¢òOO¼\Zü‚² 7[\ÄGÿ\0e%’@\á_œKv\ßmY·m\Õñk®\î\Úö\Ð\Ãy0•R\àW=AK\Ñ\àn-Jø¨ñ›\èÎ“\ãþ\îE&y–žp±(¶BÄ€­{×´\íS†m§4>‰\Ì›œYq·Ñ˜W{\ìûDñð™Dq‰“\Ôú>±UœgjÉŽn527kw5ò\ÖF8¨\îf¯¢–@›¨XeW´I9p:»%\ÚM\à+<KØ¢¬\Ï\Ý\Ú\àƒš—‰*žq\nö<une.%\Óo¡,u-J·2ž	n\Ñ55f\Ç•J]\î[<˜\ÞJ1õ—5\Ö\n¨N\"ò¬B\âK°ýà¢¤§ð%À•L|K*‡a,Ž«¤?fS1vÿ\0&°_¦ ›\Ñ\Ñ?2µ ¥[\ê\Äx¥\éH\Ò\í¼þñ\Øt8œµxŽ\×\Å-š‚‹Pª¶e‡N-1\Än\ä.$e§5),¯&m!®(\Ð(4-Î§#³„|\ÇÀ\Ý	Šql\îÀp7¸µˆ\íÁ\Ó9&ª\è“\Ð)‹B7\ÔÖµ¨x}9`!iòÂŽ\çiù€4C®\ÅL?Z\â‰\r\rŸ–Q[Í¹!Ù‚|\áf]ùv\ÏR‹SŠ-¿i÷P\Ë\ìÔ²M©—þ\æøŒL€ŽV\Ød\éedw\0[ðjZ\ØN?\Ê;ký7y>’÷|«übP\ì(»DQ?­F&\ï$*’)[†6\Ô\Ü9\ß\ï0*i:—¡^¿÷\É\0úD ¢³õ\Èw\0ò¦¡–G\ä`…öY°ñz0nž\Ò\Ý–¦\Ú\Ô\ÜA\åŒ\î(R.«\Ì\Ûk\'ÙŽ!]o²6­v˜\æe\ïý	¬T7)\\X\rPz¬ ˜\ïRž™OOõ\ê€QÁÿ\0±\Äÿ\0\\EÁ¬]*(\Õ}U/~¸:€Ý¯”@Ô§0\0*Pe\Ê\ÏN%Öœ}Šü\ÏAôý CJ†\"9\'MCHd_NF\Â`\ëú&ä¬›ºªµ,;gJô_û\r 1\Ä‹šñ_¾±\Ë\ä\ê\ÏBY\Ñ+,\Â\Ö^˜\nÜ£\Ñ7\nÙ¾% \0fˆ\n¬þ\äS	AZŠ,=\å\Ö\Z\êu:†\Ü\Õ>g\èe\â`i\ï/«?ÿ\Ú\0\0\0\0\0\0Ag\'\Ô\Íoð\Ç0c\n4*T¢/\àv\Äo\"\Ãs \ÏÐ€E\Í\Ñj4%Ôˆ YlEÁA­Ÿø\â)°\Ç2F&\à$¸ú ¢H$1x\Ö\Í÷+Q4vnús:\ïa\0\âó\È^€?ÿ\Ä\0(\0\0\0\0\0\0\0!1AQaq‘¡±ðÁ\Ñ ñ\á0ÿ\Ú\0?þbË¼¼]£6rö\Æ\ryÌ‡Gõý\Ì\n>\ÐT£\æ-\ß\Ä[qŽ\æ«[·[ˆ	•ª¤l/IŒg3•Ú¿º¿†â€ª\Ýt<\ã¥ó0ž\ïl_\Ä\0\r2€\Ùõ„\è‘jzýôˆ,÷\Ê\Z\Ú_\æPõòý~®\rÝš—\0³À\0\"‡\\lûˆPŽ\Ë[\Z4×œ{º3`\ro(\ã“\Î\0bù7\êJ\"Ý¥VÁ\î9;\Ù\ÌoC\â¶Þ¥þe\Ö3{–tc\ë\ã\æR©ŽŸ\æ+¶&¦ýsPOo$‰{‰Vøm\àmÒ£Hl\âó\é)\ÑGVXÀhø^§ý\ßÄ¯%\ã\Ì\â}û™KÔ¢„\n9ÏµJÕc\áRn\×]pŸ›;n›\Ö+\Ûerñ¸º\ä{ƒ´«\rŽ\éß›·¼`.\ÕõðJ\rû\n»qÄ½a·ºTJ/`Cÿ\0›|Á¬°”R†’ðG\ï.–Ê”0JA³\ë\×\â ß°\Òó\ÊzÀ¹#3ÿ\0 Mx_÷ \ë4¤j\é3°\×u*\'`¼tLÓ®ºÀÂº\Í`²òõ¨*\Â#l¼\í\ÌU\ß[ýM\Ê?\Ð>fQC\×òJ*¾úG\0©XˆdŸ\'™lZª\Å[x¯#13\n½»\Ù}­¨ŠCŠ)\Ñ!bŸ+ Í«ª­ü£6[¸\'J¥E¤5€]Õ—Y%®pM\ÓRô¸\ãõ–*[€_¬T\éàµ–R®\ç{øZ¨¤BY* \n¨§\âø%•2á¸¶Ï¤¨ø\ìšð¸9ñgÿ\Ä\0\'\0\0\0\0\0\0\0\0\0!1AQað qÁñ¡±\Ñ0\áÿ\Ú\0?ó‘GIPiŒmú”+ó\ß_\Ô\ìNs«DxØ‰K\Õ\Åw.WY¨*¾=Ÿ\Ø«\îþ¿16fW4²RÙ¨ª¹¥´,ô–49|Á{\Åeó€\É\Ûsf\î\ÎL|#ˆ11\Ë\Þ$\é¢ýe‹O\ÌL¾!T\ë\Äh^ ó\á\0fUx7*\é}>ÿ\0²«\Å3±\Z\Z\Äp\â\0nþX\Â\Ü\ÃVo¯‚¸ºB*R\á_ƒ\ëS_\ãó)x¤C~5\0mˆš•#\Î	¿ðk³ßœ2¥‰1Q\Ê	T\à‚¯ö^®\r‚WX7Q\Øj+h\èk\Ú\ãc>´\×9´sEûKT*ôAieM±i\\ \È3ñ/‹—\ÕA\Z\"›Ä·\ßH.‹®0n¢¸!¥1\Z\î\ÔB‘õòS\ä,\Ó`‚8\ÆÅ°F/Q´Ü·\\—[ñ\ëKso&\È\â0L	q\Üÿ\Ä\0(\0\0\0\0\0!1AQaq‘¡± Á0ð\Ñ\áñÿ\Ú\0\0?ÿ\0s\'¸\'\ësLñC¸|\ãJ\Ãü˜\Ù-\É:P\é6ŒŒ¾\'µue\\²c\0\â\ÕuÁUN13‰š6\ÄUµ\ç†dnyºP<mõp\ÙT\0¨÷\\K‹\à¿Fvƒ0¡Œ3³\ê.p\ë\Æ\"‘D| G\Ì\Î\ã-H†\ÞMT\ã\ß,À&‚½®°E\ëf«Q\ì5È³	ü\ïÕ«\n\È\î;`®E5p l	›\'’c÷\Ý\rW\Ôi8ù\Æ£’ñ\ì»Œ¿§k ‡i@…W‡©/(: \Z\\B ‡=3*}\n\à6&S§[\Þ@…µ\Ê\í—-ÓƒS\ÆM.ƒ¸Âœø\à=q4\å>»^›˜l3˜6ä¾›\Í>9fTR¢/<36Aƒ_ƒý\èH;^to_8©Ü¿Šøƒ .ñ\ÊÑ®H>¿¤\Ç\Ö	GŸ^½ðcD²¾D[\á=ò\ÆP†¤\ä\æ7)(]\Û>ü÷?O(;‰†S\Ó‘\ÑÀGW|\ë%)¤¨(®\Ä\ß\Î!CzaW%|\Ú\é\ï›\éŒ¢zLR\à@Àl>°\×[Á±d´o@ûs€+?¤ÿ\0¨\Z†œ\Þóð\éú\Þ\×\Z\0’\ZÞŠºaó‹—ô§{.L¤Ã¸kó€\Ð\Ú\ÒKu—tÊ‹\Û+³ ‚› ü\ë\Î6>$w\Ðo\ÞMLT¨jZ®©Á0›´·¹Š‘Ml–ü#Ž\èpIÁ´)‰ô?y!”V\í$O–k\ã£YÀ\Ï5È»„W;øžœ*S	Z\Ñ[G€i\Ù0\×v‚Y\çvý\×.\ÂRM»\í1!;adw:5¾®\r¤„¼§P\Ô{\ã¼Ð¿O ®¡\'c ³\\D\ï6¬\Òi=E0S~Ao³†yQMˆMJdˆU‹ûž\Þ\ÜI“Áw\Ý\Íúb\èb_”•ºº¡Ÿ”ý™ÿ\0\Ë\nµ•k\èkóŽû…P\Ð×——DP—\r¼{\ê<Cg„\äõÄ¢J?3\âµû\Ïø>_\à@\Ûx…õ=²TED\éJœ„ø\È÷7NKµƒ.U¶ˆ’³\ÏyzŽƒqö¢\é\ë\0®Éª7\Õ\è\ç\ÉW\ç¹\Ø\Í\ï4H¨ô{¾{ü`¶ÀÀK6p›\æ\á1›–M\nü`8Ž\0\í]€Hú÷‰tl£”6\Î\Çgx‰H‘d\ï\Û&\åýz\Ãtý\Å,-o\×ü\î\Ï\Î/¼`ýcc\ÌwÁó†A0º5\Å\Öý3eª[Ñ±5õ†Y‚¶ Ý»\ïÙ­§h\rf¬ü\\¯\Öý²@Kñ€9 ,õ\ì\äGb\ÛD7¹\éšù\áJ’?\à\nÃ€ 8p\Äñ`©0¾M“\Ó¡!lŠ£½\Ý\ïŒ4{ø^Ió£\Ó$¿€\Ã@ûI\éŒ\ËY<ºŒy³4B…’P\ä\ä\ÜH÷\Æ,õKW\Æ\Þðu\é\Æ\ã\ny8‘\Ó\Òƒl4N(\âB~_\Å\Ø=˜ñ\áÁ4m“Ÿ×œ€x-?{™7h§\í›É¯õ÷\Ü7žO\àky\Ï ¯R\Âx|\å Z„©\étzs‰\ë\ÝõÉ¹+l€	\ß;p¨-ž\Ã|¢p|\ÌMÈ¬´4^xß±†qV\Î\Ð\î\â¦\Ð\ê%c³7‡#šM\Ç\çN\è\éL¹=†\ÎC§9¬K\àµð\Ç\å\È!³\ìsýaê…–\Ðn®ñˆñ\ìCðaÁ+\ÛC.4!p\ë\Éü!ñEò>\\{e¼ªšS‚¸*\Æ\êE°^zÍŒ¥½¥€¢\å\Û\Ý£\Æ\ÜEÐ…G\Å}±X™4w­\ëJ°\ÙWË\à„\ê$—­N–»\á÷÷½…·°7\é‚\Ùxb\äXO8®XvÆƒk^rœ¢öÅ¹­ƒO\Ê)Ð‡À¢2Á\ïypb–½C\Ðö\Ç*O<¯?~0\ë\àÈ¬½)Ž„\ìÁ\Ç&WÞŠÁ\é†\r\n{‡©\rv´\Èh\Î`ü8ó™]Áöfò\å,>\àŠ< H”\àfÅ€8ŒÇ«ñ¨Ü‚k\ì\Ì÷¿ù3I\Òâ¦B\åª\à^¶;‹9À\Ëj/’N?ƒ\02–€\Æ^\êRx±=±;\ã$\ì4¼\0+ñ›-’\è\'\Ãý`¹=\Ú6%\Ü¾1œš\ÍZP»y\"u€*Šƒ—…Hé§¦-®‡W\Ó\ÐÎ©xzed\rG€\ã*¼°l­Høvù\Ä\ël\äckz\å\ÂIRM+·¥Ó›\èðÿ\08–Ê¥\ïm\"b\ÓûH\ëø,Óµ\ê8”¿\É\ÎB˜x\ÞC¢‡šUJ\è†pB\íJR˜:s\\\'Fõé•‰\ä’ô\ÏK0Æ®D€6\Ñ1\'¶Og‰ü7aÀ\îûTÁ£<\ìG\n»/ù\ã4%ôc‚\Ò\á¬\Æ$QŸJ¡1\É\å	$)ð`Ê†^\Ô*tÔ6iƒ-­½\"Ù®`m 9„P\åM\êw–o½#Á\çC\ÖÀ‰@´\Ý\åm®ÑŸ¾.\ZA\è\ä~q‰$|Ž‚\á¨y\È#û0©\0\à#ýâŒ—B¶½\"F\Ý\Äõ\ãoI`¼Š­\Ð:MU|¦ý\ä¢}>ø\ÈÍƒ_š®œ´\ên¸ô\ÝË–)V´‰soª7Àóo\é2\Ä;|£¬SŠ\Ï\Åú~²Ž$\ëE¦rU^c›ƒrz¡ùGtúÀ°O¾þ¿\ÝÓŠ\rô\0ô’¤›Ù¼K\0,¢~O®4\Ù%±\ìu2¨Ë·aX… ©ðÉ´N\Ç(\ßuÙ©ü\'x¶\ÎM°LÑŒ¨–°¼ï¹ˆ\r4”F\Ñ;\Ò/Y\"*U¡\î¹\Ã\ÌcŠ:˜)jz—{u•Ž–\ì}\×A[\Ò\Ç\ÓL¢ˆ	ÈŸ{þ%þb<#ür©A#¦\ÖQgr\ÜN;Å\Ä\ãa7T«Z\ÆQ¤Vw\Ê\ê\ä5 \î\r´«ða:Fý`Põ\Ä\ìœD-ù \Î÷¬l<\r\'°?wm\ÍU{\Û	íŽ» \éV\Ó`}²bg»E\r\Þ\Z[%g]ú\áI‰Com/|÷‰\n®\ä\Ân³{\ãx\ÉHNCð\ï\r-‚\Ç|89€H\Ð\Ð\å\ã€.€\Ò\"\Ý °v§“4\'¬bDV–„p.–‡@\×\Êû£D»SfŽ1\î\n\Z°óÿ\0\ÌÖ‚\Èiœ<L\\õŒ1©\ß\ä\ÆÀ¦ðÀ¿5Ý¿\é1ù`\Çþ¸‘`R^#S§]˜!4r\'w:d~\ã¨S!b%M“LJnø7û\É\î\rò7!\Û¦^oHõ\ã4\rû\åv|\à±\0€@\ã‘m”LChø¢\0\Çòª„°\Å\ÐcÁjþ´$Ç¨„…€`c¸ÁÍŽ¾³L¦\\ýg‚>YŒ<\ß8ÝˆCCË†§jÔEÎ®Rvi		œd\Ê¡\Ðm“Ç·Lž¦ÏŒY¹Æ¢xg^™¶¨b± +&=\ÐI(\Ã_Có\Ô}ƒð‹\\Ž\ÍE=G\ç(\ã¶*¾\×\ï\ÄyQFl\Æ™kÂ§¯\äæœ¿‚<yrU5´/8\Ý\Ó	\È\ïqJªzú;\Â(\àlV<ç½\ØÍ…!\ZxZ}b\'a\ÅW±nW€¯Ä•?ƒ&V\Ó\è[u2M³\ìy\Îÿ\0\Å\ë\î\0uô\ÚW3¥ñ\'\r°;\Ù<\ï\ÓVro\Øû\à‘,„\Ï#·Ž¾?\ÞÕ½U\ro\ãY¢)º‡¢õñ‚ *\Þõ¥\äñ<bÄ…\r‡½\Åx\Ñþ+Do\ÕY8\È$’½ÍœxÁ™\ÖRó?ú¿X§«3&\Î7Á\ë†\ÜmX\Ó\Ý\ãûÀN¨¾\"8Ù¦\îmDa1¼\ÓCC\ãß¬œ\r~OÛŸ|œ6\Ûoÿ\0¸d\Ã\áS\Óýñd&ÝŸ¬A\"§U\æ:?~\Ø\Ð2P\ÇC\Û\ë\ÆUŽ¨½¾Wp\ï\Û\ne©BÊ»ü®	d·\ÐcÄ·ªÀ~?¼hšPt\í*|cS¤Æ…\î?X\ÓÚ‡N\é\ç\Æ$ˆ^	³\"\Ô\×@YÏ®l¶6„ƒÉ¦&ü˜«Äºˆ9ñ¿‡5\â\Ú\ròvw\ï	Pn6}ÿ\0Rð¯Œ{Wp\çùÿ\0¥¾~Ÿ¬X)[9>c›&\ÏlÐº\ãü@U\Â³¯>¯¬F¡\é\ç\Òø?>\Ø\"\åv´N\ßLuñÁ´\çõš\Ç2xŸ\Û\ÛñŠ¨§½t?o¶\Z-\é\ßÀü\Ì\'\âtµ»§3¯Â¿8\à˜vCöÄˆª]ørþ÷§‡®I GNös\è˜Q`\Ù9>E>qk‚\à\à³À¯Ž=§ðŠ’Ø¥\ZbfˆN=¨3É‹Õºc\0\Ö \Ä” \Zùa\0aS}m\ãÉ–ÿ\0$i8€ý²\"ˆ‘ý\áü5\0Ñ¨x\ÐA\Üð\î,$5‡\ß\'Ú‚8\Ý¾\\´U\â9\\3B€<Y¢!f\àwö˜0BœT¸B\Â‰\Ý8{\Ûýg©¦\Õ\Âp\æƒ¶ ž=±ð>\ÙFxŠ\è\é÷Ÿþ·ÿ\0sÿ\Ù','',100,100),(24,'so menh','truyen ma',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿ\Û\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿ\Â\0\0±\0\ì\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0ùH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0H·¥=c´¯©®XHXrÜ´*\í½)Ž6Rc–¢W‹u™‰òø•qŠ\Æ4“»>¨BL\ç½]\è\\³J\Í\Ò\ê÷k—ct3\Ý+»]ó\ßT\ØtVp‚A¤Û¸±{kU8]\×\çòÊ¬)…;Uœ:†Œñfòujoº•Ë­st\Ö\ÎFK\Z}6‡—\É\ã·Rô6ùµ£_oE\ÌúüO7“#»·\ï~v©O·z«\ï§\Ç?-[Šu\í#\Õ\â\ì\Â+v‹-å‘šw·¯¥_4F»a›³¶£/\ã©\n´u¼\Ü\é9\ß\Ñ\êk\Í\ïƒ\æ5Ÿ\Ó\é\Ö\È\'Î›jT\çF·Ž\ÞóÞ¿oad}¾U|!ªc\Êj¦zG»~¯S\æosV¼ü\å#6u[\Î\Æ2‘Ñ‘nsR³õ´1ó…l÷ž{¦±)fº]GÐ•Š/W:Ó®\Ú,ª––ÿ\0C¯¸\Ç\Ðso\éŸþß‰\Ë>kO:JgqfòÒ¾“\ËKŸV|\Þ\Òz»ðý›”2¶q:k\ÎF9\ëvsk\ë§k²ÕªÎ…¥t\ÅõzŸ@Jj÷\Ã_9÷žž²\Õ\ËWWÞ‘\ÕË¿9Ö«:\î\\žLk\ÛzŒn\Ù\â\Ý\äÏŒ­[øo60;ú	pº„! Œ\ØË¶$ž\îcl\×s+Œ¦\ê²\äñú\á»\"Ž^À£¶gß¥V¦N¶~•\Â\n\í-f4t\ÍZ3\äW:ˆj\ÄJ\Ñg6c‘&¶\'…\Ój¬¡]‚|•™(#wg§<®¦\×q:j[Ë\Êò9s¤­–\ÈÀˆ€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0-\0\0\0\0\0\0\0!\"1A #2B$34P`ÿ\Ú\0\0ÿ\0¼\Ô\ÔÑœL\ÑýZ3_£SSFq3_«Fkô\è\Ã\êñ\Ö\áI¨‰\ÉxøQ\Z	ø#\Ìp\'Vjø\Íxiø×˜¬Q¬¶Å¬§%5é¸…Š¬\Ó_¤zŠ6(ý¼u<\Ø²\Ô\á1‡\Íÿ\0f(b¦‘°·±8\Z›UTý\È\ã\\L\Ñ\0l¥ôY¸5w\Í\î\"|;ôi\Ù-ý\ëŠ\ìÑ±­ý\Å:\n\ê\Ã%ƒJÛC\åW$|Ua\ÞyZ\0jŠŸµœö>Bñ1¢}š\Ì\Ç\â\'oö†Œ#\ëÚ†\Üs\Ê‰\àC?$A“Ž2S&®\Ó\ëae\à%\êw\í\ì~h¾„ú0‚\0ac9\"(Rƒ`“ûŽaƒc\ÕFÛ¦b¥\ì–\á[fm=ŒœeW’w}c“ß…Ž¸ý*q\êU\×KQZ\"d(l…Ç½™\ëe³;V—¡\êŸs\ê/Ó¯­K¸<E^E—\í‹ÀŸœ<¯hÆœ\\ñÒ±µ–s®=C®¨\\ž˜\Ì\æ\Û\Ê\ÔPª\î¨\Ã+\ÞvWûµ¹.z†z‹:—T\Êz\í\ë>Tø3pr²ù\Ù[W)³\\£ñ¸\Ãx\ÓbÝ¹þ#S\ìlŒJ}¦\Å\ÍeWì«·\"Ã›oJd£#6¾xùu¾f.oo(¾Ÿ•B[‹j¾oz¿\î—X–u.«–\ÚLO½	¡>§yø\èG¨†úü\Ï\í±þ\ß\Èú^ê±°GE%K\Ú^\"r%D?,\ì¾ud\Ú\ÖJ\ÆÑ¹­\ÇO‰œ~>g\à‰¹ø®Ö‰S]—\×O.£‰Š«P4u­Z×’<\ÏÁûGù?>\Öò~J\È\ê\è4›Sddõœp\Ø}\r9\Ëñgð‡\ít\ãp)ø_\åŠ8ß¿{\Ô\Ôq9™\×WýG\ÐO)ôwòBŸºù\é\Ã#%l8Y(ˆ¹Š:v­|\ÅåÁ23n\ã€6ÿ\0¶ü\ï·-ð@\Ô\ÜÇ¨³°\ÓU†•\ÖÄ¬\ê8ü±úŽ\Å\ã\É\rÀN1\Ø$;\Ûh(ó1iñƒOw%hJ\Ø|\ß.€¹Ž[ÿ\0\rB5è«rµ\Ý-\î\ê`ò¿0·›œ·U\Æ\ÏpÖ¡\"1øý\Ò\'\Ót\î6]\íQÇ±w\à\êcW\ÞNS%»‰\â\Ì\×F{1?³p2Sµ}£\å÷+_\åi\åg¯ôÿ\0ü°e§\Îbwj\ê•q\Í*aX§\ãø\Þ\Î;š™r,U|Û˜{\ËeWØƒ¥¹|ŒM–/+\Ó\"õeµr\ÓÜ°¶\æÂ”³ˆS7\èpUèª¼`Ò¬¬¢,\çc½fš‡\Ó~&¢¦\àª0‡eN¹9,¦³½N>Ÿ~¢J\ÂÅ¯QõÃŽ\ë¡xƒ¨\Ë\rP\×;M·¬\ÚmvÈ‹I‚¯+XŠº—¯‹€š2Â‚¨04\r©\ÎŒ\î¬,`°o½;\Ð\Üa¸\ì\ÜÑ¬-;\Í;¤i\Ó\Ç}\í\Ão)\È\ì:\Î\â\Ãdk\'8fýw79\È\ÎFsi\È\Îfs3‘œŒß®\æ\æ\ç#9‰Í§#9™\È\Îfnoÿ\09ÿ\Ä\0/\0	\0\0\0\0\0\0\0\01AQ !02±ð\"#PRq‘¡Á\Ñÿ\Ú\0?õñ\ë\Ói®¶Á›u¹#ô\ëûÅ¦Ÿ&nGý—\n§Qoc\Ó\èEZôŠ³\ÞZq>\\„\Z—\ë1MAuõ™P\Ö5ô\Î%‡\îò\Ç\í\ìøË³s™Ï¶\Î/K\nN%\ÜF+bü9‰Ç£Vl\í=ðm\ï71\ïT*X##\Ð\âX²‚\ç,R,&\Å\ÎG”\nõpºz\â\Z,]K!óÄ²–FÁX\Ç,Í“¨\êÒ²ªN¤\Ö>þg…)\0øs\á,8Hª±ôš‡©e+g\Å\r+§L2ˆhV‰X¬`xÇµ\ÆWi´r0­¸>p‹q\0¿<\á\Î\ã\ÏÂ¨\Í\ÈM§\í6l\í6“iûM§=&Ëž“eûFR¼üb\Æ^Fknóuû\Í\ç\ï7¼\Ý~óqû\Í\×\ï\çøÿ\Ä\0)\0\0\0\0\0\0\0\0\0! 1AQ\"2@Pa±\áÿ\Ú\0?ýÎ¹J6\Ñm¤GuOiŸ\ÈËˆ\íº$ð¬œqo²K†§R£\'®]t¡q÷Á²ƒŸÁõ1ôÖ¥y7ª¶OZ1i?sÊµ\Ùð®\Ú\Ï\în)©f¢jm\Î7Œe§\Ó×½Fj\ãXÿ\0	\é8Êš\Å|“¹ZºD4]\ÇrðŽ’.\Z)>5}«»•y7/sddÔ™„ûK‚\ï=8\êy=\Ö\Ò=$Itñd\"¡\à|#\Úk¼²°V¢ðV¥<‰j\í\Ã\ÉZÿ\0#Z¨óÅº,´Z-‹E¡r³ŠF/öÿ\Ä\01\0\0\0\0\0\0!1A\"Qa 2q0‘#R¡±P`Á\Ñÿ\Ú\0\0?ÿ\0¿\Ç\ß\Ç\Ý\Â¥¯\è>ŸX•l(X· \êÞ©L½\ÎP{\ßš&\ä\'_Û”$\ç\×vM%À r<\ÙI\á9\Ä\ÃA@\äc€­wž{&\ß\ÞQ‡õ„%\Ûd¬§‘ðkî„œœiŒ\áa_\ÓqÕ™•b\0¸}BñSv\nœ6 #\Õ%0M€\Êwñ*”u|«9­w2›lŸ¨¢G„\È>ÐždIT\Ú1‘„\Ö\ï\0Ì™DKŠh\r ñ…‚£\Ñ\Â!Ö•¹ @V]Š3\É,®¶\Ìs*bWº5\È\×`;b÷Qb\Þ\áXò‡\ÍÔ²\Í[Ž~•žnºþ¬­³m¬Ê–ó¦uÎsý­\á}/¤˜E¬28MýŠ\Þ\â\àº\'”\Ö÷*¡k\àÜ§¾¨šc‚˜\ÚM\Ûk¦ŸøÏ©>\â[„\áFnl!}7H¾\Ç\r®\ìU&Ñ§5eû­-^\Òu\èÚ¡Xþ/±\Ð\0 )\Ó\×d\"\ê]/U>¦i&†žÑµ4Œ‘uHvºýXñð¨~œe\×r{\í¦!7\èö•¸F%6›6+ô\ì\ç”\ÚtŒ™TAÏ¢%£\ä¢\×.¥\Ì#9+…»%N\Ó=\å+\Ç©8Bh¦Bs\ÛW{•Qõ=µ3#ú†\Ô\Ür\Ù\àð<\':¹\Ùªÿ\0Uñ.‘*­ZŽ\r\0mjsv¸”\ê…Óºðª¹\ÑL…Z†\á\Zp\r\Å5\î?·»(l\ê\0[\\¯:\0L·²ðºBœ-›mñ©EB:YH\ÊýË¨ñ§Ê§M¬…\rÍ\ëV\nt\ZZÞ7T\é°{Œ/¦À@\r\0a\Zy\"[t„vk¯¡\×Æ¡¿Nñ»ú@\áN\Ûn‰òªT{šs\Ý\Ò#¬©`ªµ\í“‚ˆ\ÂœšlZtF\í.cdO…IÅ³Ÿ\é?\Éÿ\0\Òý3\ï¹õ/\æ\éŽ\â\";h~5°˜\îœ@<þ\"X÷\âÀðš\È0\'\å1\Â=6UKo·§q\åm“Uh³w\íŽxUh\Éw\Ý=]Ô¬¤\áH*ž\æõEþPn\âU¸;—O´hcP\nÊˆ•p )<¦Sž“”vtœ\ÈD þ6\Â3%]ú7¥\r\ÜiÓ…FŸw_F®¬µ;cW\Ð|\Â \é±\à\ØEô]´É\Ü\Â\ÜÞ®ü\'’\à@h §\Ãøµ>£ˆsvô‘¡L\Ð\î?µ\Ð\égø^öG.E„\É‘ŽÓ¥\ÐG\ÐóüY*\È&´ÿ\0$ð\Ñ\ß\ép²\nt/‚€\0Ê‚G\á{¿\Â† \Ê\Þü—~Â„m†¦ÁðºÀxˆNy7&Pï±•\îpþ\ÔÉ•»ì‹žò\ã\åqö­+\Ü\ï\Ê\ÝM\îk&»\æWbë‚²Œ#òò±¦•¡I\Òñ\èÊ²o\ÂK¬}›\Â\áX©´ú8\Ò\ë*\nºÊ´+Â€¯…Â¶¸ÿ\0\Îÿ\0ÿ\Ä\0(\0\0\0\0\0\0\0!1AQaq‘¡±Á\Ñ ðP`ñÿ\Ú\0\0?!ÿ\0\Î[©n§‰‚–*ž&8ÿ\0‰–\é”Ê•-Ô·S\Ä\ÄK´·R¿\áLñKõ*W\à¸\ä\àxˆvUGMb#p­µˆ—ˆ²XG9@\Z¿\ÄFè€‚\Ý5\âUþ\Z\ÔÅ´‹–Ë¶¥¤±G\Ê\rññ¯Â‘¶}¥‹^bò\âÊ‚\âT\Õ¨\ÂÐ­T¨l¼GÊ­@¹\Ñ\Ð9 ¯c\ÐD—)oþ¿\0rÅ­&(\ä:_¨-Uy€˜\æ7†˜™¼­©×£~\ÂW\îPA±…\â9\È\\\âbª›‰{\ÙdK\Í,j&Y„X\áù•ö‡+@D·\Än…¼\Ôn\Û7¦)^ÁZˆB4Ã¤F>«9\â=¨g¸†°\ßR\ê]\Å\nÁDZ‹#\"\"´ž&\ÞXð”\ng| ipnˆÀ*\í-\Â0Ô¡!Kú–\Õfð\ÇwIGq¬*ƒ–hzœ\Ô`ŒAf‚e©\äƒ9±5\îX\ÚÍaš Z”\Ë=T\ìK\ãs,ÿ\0´7wB\Ë9\á–gÓ‡‰\Ït\åË™ý—\Ñ*¥\Â3wÌ¬¯ ¦` 8+—*4±\í\Ãò,—‡U°4ñ‰Uð	v¯k(4?´%•)°õ)Ÿ1M\ç\ÄÏ¤½ùK5Ì¼¼©A\0Å«¶Pº¶ˆ“E\åñ\r`=\Ê±z\ÜA•Œ6k*\ÝKfX\nL\ê ^%ˆ+l\Z…E_¹‘e)Á\0”\â9õºJ>\æbköfþ¸*?p1\ê,m€\æ{’ø&`1¦£fˆHnK8\Ä\Ò\èù424\ç©sB½3\Â`\'™\Ë\ÕB\êm˜™~¢#]¦\Ï‰\"Õ‹›\Ôt62þr²˜?+¤\\E¤\\óõ3ˆÌœ¸J¾\0›%‹û¾%yt\Ï2«\r\\\Ô#\ß\Ë\â\Ã\ßE?$‹\ç¹F]6\\¦2\Ü\\\ZWø•\ëtóF\ÛF_ñ\0²”®\"4õ¹q</®\åQ‚!·\Í\ÊiÁô»–\Ö\Â\çR¼º¿©w6D\Çò(p\â@(• :y‹aó…´\ÍL$t,F|\áõýñ.Q4¶›[\0EhM•h‚Ô¨\à‹zô\Üx\ËUR—­½\Ì*•ˆtÛ¨/j \ÎB\ç‘3U#\Ér£¢”\ã˜ùOgq ¤«(`	<\Ã\ìÞª\Ü^4F•‰F®X\n\Û,\Ór>#À_„KBð(%=ŒD\ÖP\Ë|?\ä¯\\¼N¤\é\Ò,C™]ú‰‡\â4–PV˜D\nj¢1Ü½ˆ9\"o;‡U	]«„\Öfa¥~\æ–%\ÛwD\ÏM7I¹ÀÀ£ƒþ®b‡QTØ¬L.’\0þ\Ã+ý¥\àO0´†%ã¬¯=KZ /ÀjP‰\ÐZ×¸\Éó\Ì;•Ä£cñ)yS+\Ï>£R©Ž\Ô!\Åg-\Zó!G\é3n \Øq¯;œÄ–f>{w\ÄT±\Ì÷\Üb•ªXž!—¯\ÃN}À\Û’\nGW‡2\ä\æ/\"\ê8Í¢ûW™WXð†¥Á¿¡þ&W²+·/©‰¥ñ³qGQo¦1\×\\\\\È#hx‚ho:˜ªŽ*.\î¥ˆt€\èh¿\â£\r>h\Ùü•\Ç!Me˜\Îeöú\Ì\Ê\Ã\Úb\É\\z,|\Ê\Ì\Ð\rq•¬¦\Çw3k\Å\Ê8–°–KE½Mb†!/xA8lz\í\ï¦D\ä\æ\ÛeTK«v\Ã*\ä\Ç\Ä°Ì±²y(€¶\Ôlõ5Be\Ä\\¨ÂŽ\àa’û—Tn0\Üƒ©j\ä\Ý^±D\æÿ\0G\É2õe\Ê\Ìb\ÌÀ_³ù3ˆ˜¸:\Ì\\·\ê)m\Ü\ã\É.(¡\É,»U@^;‹Æ±Z‡_\ä\Ê_r\æó)N„Ÿq\Ø²KI$\\\Ç€¬k\Êm\×0\ÝF\â\Õ1\êfeªù\ÓK˜\ÍF\Öy~%\È\È\ÐbÚ»|TTƒÝ¹þD\Öw3`4«#kl³wO\Ü\Ü9¼\Ôrç„º\á\0©Au\ëmÀ\à¹x5£\Ôp\Ú*˜\\Dr‘·\Ô\Úû£º\Ðv\ã&dó›—‚\Üuú•2\0\Z\Ó)\n”\ãÌ˜”À\\WÐ¯\ä¥Êž9ª„^c`\Änš[ˆ\ír\àaƒ\Ó(mB½3þeÙŽ\Õf\ã„ZR„‡‰–s9.9M\Ë\ÒÝ³+ñ+8Ã—/_›\ÔfÁJ\æ^\åJV1J\ä–8\Ì\\5ˆ4\Ë\Å\Ä\Ëð€\ç1›/\Ô\ç_¼]le\r¢	4—)=\Êÿ\07/\êr ñs•ò@W‰\Õ@Ñº\æ-\ØgŒ\Ë>F\êtE°\Þ9™Âƒ\ïq‘OE]b>\á¼\ÍÊª.¦vG\Ê&yƒ»®ªYo™\n\Ðù¶-”\nf‚[t\Ä\Øs÷:®¦œ~h!u-n¥xK÷*}2ˆ¶^ … „¬G\Âwª\Ù=\Ô\á§\ÔOu2˜}G„\"»@•\å	lf¾¨\0\Ç}ƒ¨h«B\r\ë÷6‚}GÁõ²\Ò\å\Ë\Ë~HñE¹‹6³\Ë<¿‰Iir\å¥\å\çýªz&Š¦mþ,ó~ø–—ÿ\0­ÿ\0ÿ\Ú\0\0\0\0\0\0ó\Ï<ó\Ï<ó\Ï<ó\ÏòßŽ\Éi·¦\â¾\Ûb\åþ€…|o\í´\Þ\Êÿ\0©[=\Ø\Ù\áB$øÌ¤¥³\ä\ÆX!F\ZL¬Å…VB\'™\å\0\çD\\¹‰i\Ëvõ¦C£0Ø¿Iò3>hÁ\ÌKh%+9ý5C\"p,X‡\ØdZz\ÝQ¯<ó\Ï<ó\Ï<ó\Ï<ó\Ï<ó\Ï<ó\Ï<ó\Ï<ÿ\Ä\0\'\0\0\0\0\0\0\0\0!1AQa‘ q¡0P\á±Áðÿ\Ú\0?ýq::\\3*\åt®†fuñ¾ñh3Ýµü~e[XB»weñ\ÇxEMöYõPnA@ñ—\Â\è»Ï¨9ª\Ø_e?Á¸º„\ä\Êcvwy\â:Q¿}‹\ÆùòÀŠ\éUh[»Clt{J«yÃ›Ñšñ0Mœ\è¥û¹s´wz(^hrúŠÊ‹]`ñ­•Ð™‘mqp•gO\îâ »©F\Ðtùú…\0k†\êP±y\Ä\ïÕ§Œfá¤³\ÇC\à\ÃQDþ\n´\ì¾\"MbP²ùðfZ4þe0¨n€ô\æ¹H\îs\ÉO˜\n0 ³o½\Ê\Â\"99q\Úr\×Ú½N˜G0•*nõµ\Ä\Í‘™u\çPGPø=`uLr¨\Ë5/•Yp+Ku\Zrô!Ñ—ð#`bª$óT¼T¼¤¸¬…\Þ&P\ÑË˜ufþbkm?S@\ædµE\nQAZýEh\Ó\äU11¢³\0Óž_¸b”7p-)’\ïq‹w+öÿ\Ä\0&\0\0\0\0\0\0\0\0\0\0!1AQaq@‘ð ¡\Ñ\áñÿ\Ú\0?úC\áB„!A*I_wüd¶†hE\ØÚ·\ìW\Ë k¼ÿ\0CO“òjù‰0a’h‚8CH\ÑJ1d\èKÙ „­ø\'v—\ã\0\ÞkF\ÏsÎ¦|dMX«„®¡&·ÂÁ¡\î\Ü\Ìk\Ý\Ð\ÙN\ÑaU™öÉ\å#\äb¦„Ÿ»„¾\Ì^¢)mžû\Ãõ§$×« ˜\×z\íô$H÷<WK\ÅóÂ´ˆ‰\ÊwC\ra\î‚Ð”\rŠ3\Ä\áihEˆ™\â*\Í\n\åºf\Ý\Ý´^´ÿ\0CV‘NQµl<gS\Ô\Æmˆ\'‰—\íü—µ\'ç Š¦ŸØ¨»qxHF\ÌJ\Ö\Ç\ä\Z»;©\ê{1Z>v4‡\Â/[Eð=£oG¢OvDn†IŽ.‹õÿ\0ÿ\Ä\0)\0\0\0\0\0!1AQaq‘¡±Á\Ñð\á P`ñÿ\Ú\0\0?ÿ\0\Þ\ÂÁ\Ø+\Ænz½b¤aœÞ°*\"?øœ`†¿Oh“¸¯(b9¢\ÔÁ\Æ-f‹«\ã(<3QZ\ç\áÿ\0€®FÉƒH9\ì\ç.\Ù^¯ü1\àwˆ\Ùy0PR\ßl$JuÁ/¼*@¨,:¾2ºª÷\à+,<`Œp GBœ\ë:9Œñ\ã$œ\ï9Dö\Í\è6ðc†m\ÆI0MN)Œ§!…\ÄI+\Â\Zø\ÎV¦§¦=\ï	€ôÙ\ÑS)\ç!_K¤Ç­–\ïY‹\å\ï&‹¾0–£Îž²X!3\á—Ö¹ç©Œ\á$Ÿ:&\n\ËJ\î½@øÉ¦ð—¬{˜\émŠraÁÏ£%Kk®S\Ë \ÐM\ÏX$\0@k|Ð¶ˆ^\ÎG\é—\Éur%lÂ½\0\r\àó2ÿ\01ŒŒ\ØW$\r\ÑA\Ø{Â«DEI\å÷†yb¶w\Å\Çvi@€d\Ò\0ðÇŠcö6{O{\Ç\ïV€Döf\åøl\ãCq\rIt“~²p³BSÉ‰\0J\È÷Š’›¸\ä„]Vd÷…¼\å)\Éy\ßNX\Z\Û\Î”f\àRbè”¢ž\Éö\â6Š\ØvrµDB\Ò\Z¾1PQy ·=‚K=°D&j\Ï\ÖÂŒ:v\árJxG	\É::\ëÊƒh\Ç\ïG;\Å:˜#\r\ÞmýaŠ-_‘\Ä\ÍtÄ¼\Ö\Zo—†ã¶e_išÛ’ùË²r´/8úl\'\Â	€¡ D\Äöm\\\ï\ì»uLCËŸ·X)\ê4¬ý\ç*8\î\Z\á™\È\×B\à*ºg>øÆŒf\ç¼Mdb\Ê*\ïŽµ¼\"pýÿ\09q·\r§V\ßÆ¦\04jM÷·qV¸œ}ùÆ¸DH¡\Ð\ç\ì\Ô\Ä\ßN7}\Zö8\â\\\×i	‡m~ø¸P\á\Ú\"wO\ÞZ€+\äz;\Å8%¤#ó›1\Ë5ó•¨\ãKúÆƒ\É\É\ÞWy‹úÁdhh¾C\Ö\0\åˆóC”8\ß9xW\ÔvN¶\ä%±\Û\ÏÑ\Z°\á\Ö\ÚÜ½;1R\Z\Ô\àuu®Gm€\çŸN\Z@!B\Å^õÆ±¥|²<|ÿ\0Y¹y4\Ô9\Ä\ç‡Hv5Oû¼QZ…ý\ç\0\íñ”B|S#ø¸ôZ\ÕqeNfë‡Ž)•/¿ƒ#4%\àˆ(ùñõ’ ­$;tx+¬\ÖlkÃ’]z0\ÖD²q\ÞqÀð»\æ4\ë\ë:\ïK\È`Q¢KÉ½¦\àNØ—OF˜—\ßD‡¥;Àg¬LMÙš|\è\'SŒ\×(%]\ÎHC\ÄQËž\ã’a˜ \ÉS\Ä\ÞQŠA^pw;ÀÀ\×\ZN\Ç\Þ}­ú*Z\åz\ç‘‚ø\ÇDd¨†\Çr+‰”\Ö\Þü9§¨NM&	&òo\åˆb¡ba\Ï\ã²y\ÊN“X;ˆJ\ÇWŠq›ž\Ê{N[\Öð/J;*a´MD‡g“ jFž2³9·%\æ\àIÀwn\ZŠs\Ë\ã`\É\èN½¿XDº÷‡…=˜&\\“’\Ö~b÷\0úio\ß-Á¾\r¨ ¿_\ÆEÛ¿_\ä2B\å˜\Åv}¸VŸ” ü±õœ„Æ½wp±ƒ\n½\Ù\ÎÙ£A\êuK÷¬—.\Èp=€k\ë!¢\áði8„©\Ó\ã\Þ(m8›‘~®K–öN\âEÂ¢\\ƒ:˜‹¿‹‘\èA\Ó[\áÈ–ŽÃ±Áp\êi7Ï‡Ûˆü©6ñ­ûÁà¢˜\ân¸ò\Â%~Ã‰¾²!?(ý/\Ð \Õ\ã5²”w¢ÿ\0<fÀZ½\Ü!\Ø\'“	Š‰	\ç\ÍÁ´%3BùpY€\Ó;FºvÁù\Äx¢¡\Ñó_\ÞO\É\0\Õ]Ï£÷›q\ï.\Òzk\ÞIµ+©\Ë\æ¼Tavþ\æ8J€Mõßž0‚ X*óøü\áX6•’zXôy±¹	ùshBðßŠfÏ¦0&·õ‰@w¿xšÞ²¡A­5„–\Å\Æ(l\ÞÉ‘1›u\ÂË‰9/\Þm@§	u‚\Â(b\ìWúâ±”\Õ\ï\ëª¥%^\Ð\Ö6\ÉCCÁ\ß\ÖYi\é\ã,Ä¿\ß>)ß¬QK\ë\Ôð}\á\r l\ã(û¬&´öXP\"‚Eõ‰„GDw/\ãSÀ±!÷“Í¡ q\Î2\Û\ÛD@\0U*(§¾ŒA\Z:\ßx”²\Û4P9žnK\'Z\Îm ©…\0‹\ÆJ]¶ð(”br{÷’\í£¾2\ÏR\ïs	¡8~Ù©Æ\nú–\à¬À¦€>q\ÆvèŽ“\\>°\Ä	z\ÍV±4­\çM%\'\Âa¡\rs´—6Ik\ÖsT\Z	\ÞJnð®[¼\Í]\Ï/œN\ãq\r9w9?–i÷\ì\ÈnA\Ä\Ì#\Ëp\í“,ð\"|2?N|b\èùþñ5²–¬Õ½õ•—p\É9¸Lõ\ä\Õýb9\çþòÞ…`4ÿ\0Œ%&\ß2\åt\Ø\Å\Ç4Ö² Xùóq„4œ©\â¦V(C8ó\ÇhòO¬b\Ðúc&ý 9\íuñ†Ý\Â(\Z˜f•‹\Ä\Øü¬’’\Ð(Š\Æm¾+›¥mœ\ã\ã(¼eX#—\0ŽŒTz¬fÁºº¸u­•\ÓÃ›`ˆ‹Á(/s.†A6+\ÝdU|\Ì\è\à\nP\0sëŒ³¦ZTø\Î\0\ïM¸\Ý\Îò:	U\ä^€\Þ\æpð3\ë4yû\Âe®J\Ñ@›ýgƒXo$úÁX	ñ„Ü“Cšü\áH÷\Þ_Ü»1²—¸FÚ¼·®\îY\ÒSz\îz\Ë\"5\ç\Å+Œ€R:[P<â¡ª9Ò¡4y8˜þ\ç@u_>ûÆ¸ ®ú%û˜JÀxM9žgx!·\áÀ”ÙŠh÷Šv;{\Ü\Ä9¡\í¼\áY^€CÂ¾q.†•¿8Ž5D\í6a¬\Ñ5· ¶,\Èò\âSat%³ñ>ó…\"\0|#ˆtñÉ¼Z_\ã‚\ÜP—~\ÙA®\á8\à%VV¬6¥zq.*_?ô\Ä\0\'4^&\\û\\f\áp	(%¥;\ËB:ƒ€® \'w·ùc2\Z18f=\é\Ú\Ùô²\È\ë~Sy\Ô\Ú\Ã\Ö(!Q\Õ\Ö\n¤C÷ˆ\ÕY«»œ¢C`\å‘\ß7_œ”ŽNW\ë\ãÁHJ·Û½IŒ¾·¢\È|z3\È\Ò\Õo}I\rË›>±ºÚ‚]Ÿ#‡\ÜPœù\Ö9s8ö¾9SíŠª`{\ÍAgCøž¹@ƒ­\í\×1Ä­\ç*&Ž+T5€+\ÂZ<\Í\á¸\Òg‘o\çx\Å2ûqi/\ãS\Ì\Ç]\Æ6\n\Ý\â\î\æ\Ë\ÆXI˜†\à¿1p±ªq\í\îaþ¥i\ç\ÆE\ÊG®.’Iñl>œŒU\ã&˜\Ñó|\Ï.Ij0\ß84\"pØ—xt†¡\É|¾p|:Q)Bù‡8ZQ t\Äñ\á–i…Ô¾I©\ï\Û\à‚\ç+¨öŒ\0M¤q\ÂWp(`ù\×8$&\èj‘ûN°\'\åk¤k\çy6tŠÙ† yp\ëõ‚IJJu‰b¹7É–N«n\"M€c@I-Â—„Ç¤­Áý˜Cl0½p\â¬X\ß\Êãšª(Ž{—4FEŠ‡‘\Ý\\\Z<|÷Š\'F\î*n#\Öp´öb˜„k¬­!\Î)\ÑÛˆù	§\çGñŒ>#Oô\Â\ne€\Ì?9»“^+¿\ÉóùQ~\Ã(_Ú;Á\Z¹¡\Ì\Îa\'œtsÿ\0Â™VóJ*twœ)\rh5õšˆ—G\ëy g¸±i\ÚN9\ÍC;XÜž\ê±Kzw\Þ.\çŽÜ°xš|ÿ\0ù‰ªŒ]\æ)qþ»ÿ\0¼\ÎB·\àlnN?9\Z´µLH£^[¿Y>O3¼i¢t_y\Íø\áýòZ,¿F\n)[½\ÝJ@6x™\Æ±5€|\Ä8`¨„IŒø\ÄP~‘0\0)ÿ\0)p,\Z¹9FvÃ”\ÏÌº÷\Ð)\";\Ö‹F¡\Æ>À…\ß98!\äw‘i_<aR\à—/P7Mø¾1„…#jü\àÁ´\ÜÂ§t\nûÀ,:\Ýmžsp¶UM\'ôct3Ž:øÊ‘\Ä\æ_ö`…žZþ0:S¼u\Zq\à<·\æ¸,<\Æ\æÆ—®sˆNõpá¬­1-\äÀM\'\ã/\Î_œ†c\Þ\Ü‰ø\ÏiøÀ\"4oŒ‰©8†,¡|˜#ñŠsú`d§\ã9Düe<eù\Ëó\ï=¸z	‰\Ó«ÃŒQ:¯ƒm/\ÆzŸŒo†*J~1~LS”üeùÿ\0\æÿ\0ÿ\Ù','',100,100);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-31  9:44:49
