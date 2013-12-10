-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ez5
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,2,'Lock');
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(54,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-GB','English (United Kingdom)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1386348759,1,'eZ Publish',2,14),(1386348617,2,'Menu level 1',60,14),(1386348792,3,'Articles',59,14),(1386348742,4,'Menu Level 2 - Item 1',61,14);
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2',NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Folder\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,3,1082454989,14,'c15b600eb9198b1924063b5a68758232',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1031484992,8,5,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<name>',1052385361,14,11,'link',2,0,3,1082455072,14,'74ec6507063150bc813549b22534ad48',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1052385472,14,12,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Comment\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900',NULL,'a:2:{s:6:\"eng-GB\";s:19:\"Common ini settings\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<title>',1081858045,14,15,'template_look',2,0,3,1081858045,14,'59b43cd9feaaf0e45ac974fb4bbd3f92',NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Template look\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',2,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',1,'title',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring',116,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezxmltext',117,'caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,2,0,0,0,'','','','',NULL,'ezimage',118,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',120,'intro',0,1,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Intro\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',121,'body',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',2,0,0,0,0,0,0,0,0,'','','','','','ezboolean',123,'enable_comments',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:15:\"Enable comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',11,0,0,0,0,255,0,0,0,'','','','','','ezstring',143,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',11,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',144,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',11,0,0,0,0,0,0,0,0,'','','','','','ezurl',145,'location',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring',146,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezxmltext',147,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile',148,'file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,255,0,0,0,'','','','','','ezstring',152,'short_title',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezauthor',153,'author',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',154,'image',0,0,1,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Show children\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"Index Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Default Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Debug Output\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Debug By IP\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Debug IP List\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Debug Redirection\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"View Caching\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:14:\"Template Cache\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Template Compile\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Small Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Image Medium Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Large Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteName','','override;user;admin;demo','ezinisetting',172,'title',0,0,0,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,6,0,0,0,'site.ini','SiteSettings','MetaDataArray','','override;user;admin;demo','ezinisetting',173,'meta_data',0,0,0,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Meta data\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'sitestyle','','','','','ezpackage',175,'sitestyle',0,0,0,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Sitestyle\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',176,'id',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:2:\"id\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,1,0,0,0,'site.ini','MailSettings','AdminEmail','','override;user;admin;demo','ezinisetting',177,'email',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteURL','','override;user;admin;demo','ezinisetting',178,'siteurl',0,0,0,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:8:\"Site URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(2,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(5,0,3,'Media'),(11,0,1,'Content'),(12,0,3,'Media'),(13,0,1,'Content'),(14,0,4,'Setup'),(15,0,4,'Setup');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-GB','Folder'),(2,0,3,'eng-GB','Article'),(3,0,3,'eng-GB','User group'),(4,0,3,'eng-GB','User'),(5,0,3,'eng-GB','Image'),(11,0,3,'eng-GB','Link'),(12,0,3,'eng-GB','File'),(13,0,3,'eng-GB','Comment'),(14,0,3,'eng-GB','Common ini settings'),(15,0,3,'eng-GB','Template look');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media'),(1081858024,14,4,1081858024,14,'Setup');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (1,7,1,2,3,1386352257,'eZ Publish',14,1033917596,'9459d3c29e15006e45197295722c7ade',1,1),(3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,1,11,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,3,14,2,3,1301062024,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1),(15,2,54,2,2,1301062376,'Plain site',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1),(1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1),(1,2,57,2,3,1386352231,'Articles folder',14,1386348468,'38c5bcc34b52ec049ec983430ecde9af',1,1),(1,1,58,2,3,1386348524,'Menu level 1',14,1386348524,'94a67343ba0047dce7b40723d7658ea6',1,1),(1,1,59,2,3,1386348599,'Menu Level 2 - Item 1',14,1386348599,'953906a4b1f989cb349a95a6b06678e3',1,1),(1,2,60,2,3,1386348654,'Menu Level 2 - Item 2',14,1386348617,'61bdcc2db82542375bea0f9cbdedd3cf',1,1),(2,1,61,2,2,1386348705,'Test article',14,1386348705,'6b0fd2dae1986fea4020d2f398f1cc0d',1,1),(2,1,62,2,2,1386348725,'Test article',14,1386348725,'81eab6408b89f55926060e6a869045ec',1,1),(2,1,63,2,2,1386348742,'Test article',14,1386348742,'9b9e1ee9e69ad3316bb723e6f0c69cd5',1,1),(2,1,64,2,2,1386348759,'Test article',14,1386348759,'849638785a4b8a5b86dd05cefd2b7bca',1,1),(2,1,65,2,2,1386348792,'Test article',14,1386348792,'9222ce24be4913a2cb7985c0872b6e80',1,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,1,0,0,'Welcome to eZ Publish','ezstring',1,'eng-GB',3,0,'welcome to ez publish',6),(0,4,1,0,0,'Welcome to eZ Publish','ezstring',1,'eng-GB',3,0,'welcome to ez publish',7),(0,119,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">This is eZ plain site package with a limited setup of the eZ Publish functionality. For a full blown eZ Publish please chose the Website Interface or the eZ Flow site package at the installation.</paragraph></section>\n','ezxmltext',2,'eng-GB',3,0,'',6),(0,119,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is eZ plain site package with a limited setup of the eZ Publish functionality. For a full blown eZ Publish please chose the Website Interface or the eZ Flow site package at the installation.</paragraph></section>\n','ezxmltext',2,'eng-GB',3,0,'',7),(0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3),(30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3),(0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-GB',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1),(0,155,1,0,0,'eZ Publish','ezstring',102,'eng-GB',3,0,'ez publish',6),(0,155,1,0,0,'eZ Publish','ezstring',102,'eng-GB',3,0,'ez publish',7),(0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1),(0,156,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish is a popular open source content management system and development framework. It allows the development of professional, customized and dynamic web solutions. It can be used to build anything from a personal homepage to a multinational corporate website with role based multiuser access, online shopping, discussion forums and other advanced functionality. In addition, because of its open nature, eZ Publish can easily be plugged into, communicate and coexist with existing IT-solutions.</paragraph><section><header>Documentation and guidance</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">The <link target=\"_blank\" url_id=\"9\">eZ Publish documentation</link> covers common topics related to the setup and daily use of the eZ Publish content management system/framework. In addition, it also covers some advanced topics. People who are unfamiliar with eZ Publish should at least read the \"eZ Publish basics\" chapter.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">If you\'re unable to find an answer/solution to a specific question/problem within the documentation pages, you should make use of the official <link target=\"_blank\" url_id=\"4\">eZ Publish forum</link>. People who need professional help should purchase <link target=\"_blank\" url_id=\"10\">support</link> or <link target=\"_blank\" url_id=\"11\">consulting</link> services. It is also possible to sign up for various <link target=\"_blank\" url_id=\"12\">training sessions</link>.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For more information about eZ Publish and other products/services from eZ Systems, please visit <link target=\"_blank\" url_id=\"8\">ez.no</link>.</paragraph></section><section><header>Tutorials</header><section><header><strong>New users</strong></header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"13\">eZ Publish Administration Interface</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"14\">eZ Publish Online Editor Video</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"15\">eZ Flow Video Tutorial</link></paragraph></li></ul></paragraph></section><section><header>Experienced users</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"16\">How to develop eZ Publish Extensions</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"17\">How to create custom workflow</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"18\">How to use REST API interface</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"19\">Asynchronous publishing</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"20\">Upgrading to 4.5</link></paragraph></li></ul><line>Find more&amp;nbsp;<link target=\"_blank\" url_id=\"21\">tutorials</link>&amp;nbsp;and&amp;nbsp;<link target=\"_blank\" url_id=\"22\">videos</link> online.</line></paragraph></section></section></section>\n','ezxmltext',104,'eng-GB',3,0,'',6),(0,156,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Publish is a popular open source content management system and development framework. It allows the development of professional, customized and dynamic web solutions. It can be used to build anything from a personal homepage to a multinational corporate website with role based multiuser access, online shopping, discussion forums and other advanced functionality. In addition, because of its open nature, eZ Publish can easily be plugged into, communicate and coexist with existing IT-solutions.</paragraph></section>\n','ezxmltext',104,'eng-GB',3,0,'',7),(0,156,41,0,1045487555,'','ezxmltext',105,'eng-GB',3,0,'',1),(108,158,1,0,0,'','ezboolean',108,'eng-GB',3,0,'',6),(108,158,1,0,0,'','ezboolean',108,'eng-GB',3,0,'',7),(0,158,41,0,0,'','ezboolean',109,'eng-GB',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-GB',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-GB',3,0,'',1),(0,158,45,0,0,'','ezboolean',128,'eng-GB',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-GB',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-GB',3,0,'',1),(0,158,49,0,1,'','ezboolean',146,'eng-GB',3,1,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-GB',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-GB',3,0,'',1),(0,158,50,0,1,'','ezboolean',151,'eng-GB',3,1,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-GB',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-GB',3,0,'',1),(0,158,51,0,1,'','ezboolean',156,'eng-GB',3,1,'',1),(0,159,52,0,0,'Common INI settings','ezstring',157,'eng-GB',2,0,'common ini settings',1),(0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-GB',2,0,'',1),(0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-GB',2,0,'',1),(0,162,52,0,0,'disabled','ezinisetting',160,'eng-GB',2,0,'',1),(0,163,52,0,0,'disabled','ezinisetting',161,'eng-GB',2,0,'',1),(0,164,52,0,0,'','ezinisetting',162,'eng-GB',2,0,'',1),(0,165,52,0,0,'enabled','ezinisetting',163,'eng-GB',2,0,'',1),(0,166,52,0,0,'disabled','ezinisetting',164,'eng-GB',2,0,'',1),(0,167,52,0,0,'enabled','ezinisetting',165,'eng-GB',2,0,'',1),(0,168,52,0,0,'enabled','ezinisetting',166,'eng-GB',2,0,'',1),(0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-GB',2,0,'',1),(0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-GB',2,0,'',1),(0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-GB',2,0,'',1),(0,172,54,0,0,'Plain site','ezinisetting',170,'eng-GB',2,0,'',2),(0,173,54,0,0,'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework','ezinisetting',171,'eng-GB',2,0,'',2),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1082016632\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',172,'eng-GB',2,0,'',2),(0,175,54,0,0,'0','ezpackage',173,'eng-GB',2,0,'0',2),(0,176,54,0,0,'sitestyle_identifier','ezstring',174,'eng-GB',2,0,'sitestyle_identifier',2),(0,177,54,0,0,'nospam@ez.no','ezinisetting',175,'eng-GB',2,0,'',2),(0,178,54,0,0,'ez.no','ezinisetting',176,'eng-GB',2,0,'',2),(0,179,10,0,0,'','eztext',177,'eng-GB',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',3),(0,180,10,0,0,'','ezimage',179,'eng-GB',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',3),(0,4,56,0,NULL,'Design','ezstring',181,'eng-GB',3,0,'design',1),(0,155,56,0,NULL,'','ezstring',182,'eng-GB',3,0,'',1),(0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-GB',3,0,'',1),(0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-GB',3,0,'',1),(0,158,56,0,1,'','ezboolean',185,'eng-GB',3,1,'',1),(0,4,57,0,NULL,'Articles','ezstring',186,'eng-GB',3,0,'articles',1),(0,4,57,0,NULL,'Articles folder','ezstring',186,'eng-GB',3,0,'articles folder',2),(0,155,57,0,NULL,'','ezstring',187,'eng-GB',3,0,'',1),(0,155,57,0,NULL,'','ezstring',187,'eng-GB',3,0,'',2),(0,119,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Check the latest articles.</paragraph></section>\n','ezxmltext',188,'eng-GB',3,0,'',1),(0,119,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Check the latest articles.</paragraph></section>\n','ezxmltext',188,'eng-GB',3,0,'',2),(0,156,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',189,'eng-GB',3,0,'',1),(0,156,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',189,'eng-GB',3,0,'',2),(190,158,57,0,1,'','ezboolean',190,'eng-GB',3,1,'',1),(190,158,57,0,1,'','ezboolean',190,'eng-GB',3,1,'',2),(0,4,58,0,NULL,'Menu level 1','ezstring',191,'eng-GB',3,0,'menu level 1',1),(0,155,58,0,NULL,'','ezstring',192,'eng-GB',3,0,'',1),(0,119,58,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Just testing menus.</paragraph></section>\n','ezxmltext',193,'eng-GB',3,0,'',1),(0,156,58,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',194,'eng-GB',3,0,'',1),(195,158,58,0,1,'','ezboolean',195,'eng-GB',3,1,'',1),(0,4,59,0,NULL,'Menu Level 2 - Item 1','ezstring',196,'eng-GB',3,0,'menu level 2 - item 1',1),(0,155,59,0,NULL,'','ezstring',197,'eng-GB',3,0,'',1),(0,119,59,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',198,'eng-GB',3,0,'',1),(0,156,59,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',199,'eng-GB',3,0,'',1),(200,158,59,0,1,'','ezboolean',200,'eng-GB',3,1,'',1),(0,4,60,0,NULL,'Menu level 2 - Item 2','ezstring',201,'eng-GB',3,0,'menu level 2 - item 2',1),(0,4,60,0,NULL,'Menu Level 2 - Item 2','ezstring',201,'eng-GB',3,0,'menu level 2 - item 2',2),(0,155,60,0,NULL,'','ezstring',202,'eng-GB',3,0,'',1),(0,155,60,0,NULL,'','ezstring',202,'eng-GB',3,0,'',2),(0,119,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',203,'eng-GB',3,0,'',1),(0,119,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',203,'eng-GB',3,0,'',2),(0,156,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',204,'eng-GB',3,0,'',1),(0,156,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',204,'eng-GB',3,0,'',2),(205,158,60,0,1,'','ezboolean',205,'eng-GB',3,1,'',1),(205,158,60,0,1,'','ezboolean',205,'eng-GB',3,1,'',2),(0,1,61,0,NULL,'Test article','ezstring',206,'eng-GB',2,0,'test article',1),(0,152,61,0,NULL,'','ezstring',207,'eng-GB',2,0,'',1),(0,153,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',208,'eng-GB',2,0,'',1),(0,120,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article intro field.</paragraph></section>\n','ezxmltext',209,'eng-GB',2,0,'',1),(0,121,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article body field.</paragraph></section>\n','ezxmltext',210,'eng-GB',2,0,'',1),(0,123,61,0,0,'','ezboolean',211,'eng-GB',2,0,'',1),(0,154,61,0,NULL,'','ezobjectrelation',212,'eng-GB',2,0,'',1),(0,1,62,0,NULL,'Test article','ezstring',213,'eng-GB',2,0,'test article',1),(0,152,62,0,NULL,'','ezstring',214,'eng-GB',2,0,'',1),(0,153,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',215,'eng-GB',2,0,'',1),(0,120,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article intro field.</paragraph></section>\n','ezxmltext',216,'eng-GB',2,0,'',1),(0,121,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article body field.</paragraph></section>\n','ezxmltext',217,'eng-GB',2,0,'',1),(0,123,62,0,0,'','ezboolean',218,'eng-GB',2,0,'',1),(0,154,62,0,NULL,'','ezobjectrelation',219,'eng-GB',2,0,'',1),(0,1,63,0,NULL,'Test article','ezstring',220,'eng-GB',2,0,'test article',1),(0,152,63,0,NULL,'','ezstring',221,'eng-GB',2,0,'',1),(0,153,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',222,'eng-GB',2,0,'',1),(0,120,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article intro field.</paragraph></section>\n','ezxmltext',223,'eng-GB',2,0,'',1),(0,121,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article body field.</paragraph></section>\n','ezxmltext',224,'eng-GB',2,0,'',1),(0,123,63,0,0,'','ezboolean',225,'eng-GB',2,0,'',1),(0,154,63,0,NULL,'','ezobjectrelation',226,'eng-GB',2,0,'',1),(0,1,64,0,NULL,'Test article','ezstring',227,'eng-GB',2,0,'test article',1),(0,152,64,0,NULL,'','ezstring',228,'eng-GB',2,0,'',1),(0,153,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',229,'eng-GB',2,0,'',1),(0,120,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article intro field.</paragraph></section>\n','ezxmltext',230,'eng-GB',2,0,'',1),(0,121,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article body field.</paragraph></section>\n','ezxmltext',231,'eng-GB',2,0,'',1),(0,123,64,0,0,'','ezboolean',232,'eng-GB',2,0,'',1),(0,154,64,0,NULL,'','ezobjectrelation',233,'eng-GB',2,0,'',1),(0,1,65,0,NULL,'Test article','ezstring',234,'eng-GB',2,0,'test article',1),(0,152,65,0,NULL,'','ezstring',235,'eng-GB',2,0,'',1),(0,153,65,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',236,'eng-GB',2,0,'',1),(0,120,65,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article intro field.</paragraph></section>\n','ezxmltext',237,'eng-GB',2,0,'',1),(0,121,65,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Test article body field.</paragraph></section>\n','ezxmltext',238,'eng-GB',2,0,'',1),(0,123,65,0,0,'','ezboolean',239,'eng-GB',2,0,'',1),(0,154,65,0,NULL,'','ezobjectrelation',240,'eng-GB',2,0,'',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',6,1,3,'eZ Publish','eng-GB'),('eng-GB',7,1,3,'eZ Publish','eng-GB'),('eng-GB',1,4,3,'Users','eng-GB'),('eng-GB',2,10,3,'Anonymous User','eng-GB'),('eng-GB',1,11,3,'Guest accounts','eng-GB'),('eng-GB',1,12,3,'Administrator users','eng-GB'),('eng-GB',1,13,3,'Editors','eng-GB'),('eng-GB',3,14,3,'Administrator User','eng-GB'),('eng-GB',1,41,3,'Media','eng-GB'),('eng-GB',1,42,3,'Anonymous Users','eng-GB'),('eng-GB',1,45,3,'Setup','eng-GB'),('eng-GB',1,49,3,'Images','eng-GB'),('eng-GB',1,50,3,'Files','eng-GB'),('eng-GB',1,51,3,'Multimedia','eng-GB'),('eng-GB',1,52,2,'Common INI settings','eng-GB'),('eng-GB',2,54,2,'Plain site','eng-GB'),('eng-GB',1,56,3,'Design','eng-GB'),('eng-GB',1,57,3,'Articles','eng-GB'),('eng-GB',2,57,3,'Articles folder','eng-GB'),('eng-GB',1,58,3,'Menu level 1','eng-GB'),('eng-GB',1,59,3,'Menu Level 2 - Item 1','eng-GB'),('eng-GB',1,60,3,'Menu level 2 - Item 2','eng-GB'),('eng-GB',2,60,3,'Menu Level 2 - Item 2','eng-GB'),('eng-GB',1,61,2,'Test article','eng-GB'),('eng-GB',1,62,2,'Test article','eng-GB'),('eng-GB',1,63,2,'Test article','eng-GB'),('eng-GB',1,64,2,'Test article','eng-GB'),('eng-GB',1,65,2,'Test article','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1386352257,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(1,1,7,1,0,0,2,1386352257,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1301062024,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,1,2,0,0,12,1081860719,12,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1301062024,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,3,3,0,0,15,1301062024,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1),(54,1,2,2,0,0,56,1301062376,56,58,'design/plain_site','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1),(56,1,1,1,0,0,58,1301062376,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0),(57,1,2,2,0,0,59,1386352231,59,2,'articles_folder','/1/2/59/',0,'64214badb40c1974e75709f0a7e7b0d5',1,1),(58,1,1,2,0,0,60,1386348742,60,2,'menu_level_1','/1/2/60/',0,'41c9e44d90a90bb0f6b59325ad979a3b',1,1),(59,1,1,3,0,0,61,1386348742,61,60,'menu_level_1/menu_level_2_item_1','/1/2/60/61/',0,'da50f83d85f621f578834712556f255f',1,1),(60,1,2,3,0,0,62,1386348654,62,60,'menu_level_1/menu_level_2_item_2','/1/2/60/62/',0,'6175c81ff29af27acb9a5549d533dcb0',1,1),(61,1,1,3,0,0,63,1386348705,63,59,'articles_folder/test_article','/1/2/59/63/',0,'e72376d26679a5ce98915c1dd24655c3',1,1),(62,1,1,4,0,0,64,1386348726,64,61,'menu_level_1/menu_level_2_item_1/test_article','/1/2/60/61/64/',0,'bb4d95f1f9ad4563faa67a98567add83',2,0),(63,1,1,4,0,0,65,1386348742,65,61,'menu_level_1/menu_level_2_item_1/test_article2','/1/2/60/61/65/',0,'d46168559d24998c375698ccdcb668d3',2,0),(64,1,1,2,0,0,66,1386348759,66,2,'test_article','/1/2/66/',0,'ac9651f566b77e37e6e86d7b55390f95',2,0),(65,1,1,3,0,0,67,1386348792,67,59,'articles_folder/test_article2','/1/2/59/67/',0,'8e1b72dedb057fd0d971d5887a275da9',2,0);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,1,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(52,1082016497,14,491,2,3,1082016591,1,0,1,0),(56,1103023120,14,495,2,3,1103023120,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,1,0,3,0),(54,1301062300,14,500,2,3,1301062375,1,0,2,0),(1,1301072647,14,503,2,3,1301073466,3,0,6,1),(57,1386348366,14,504,2,3,1386348468,3,0,1,0),(58,1386348488,14,505,2,3,1386348524,1,0,1,0),(59,1386348538,14,506,2,3,1386348599,1,0,1,0),(60,1386348606,14,507,2,3,1386348617,3,0,1,0),(60,1386348645,14,508,2,3,1386348654,1,0,2,0),(61,1386348683,14,509,2,3,1386348704,1,0,1,0),(62,1386348725,14,510,2,3,1386348725,1,0,1,0),(63,1386348742,14,511,2,3,1386348742,1,0,1,0),(64,1386348759,14,512,2,3,1386348759,1,0,1,0),(65,1386348792,14,513,2,3,1386348792,1,0,1,0),(57,1386352226,14,514,2,3,1386352231,1,0,2,0),(1,1386352243,14,515,2,3,1386352256,1,0,7,1);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0),(42,1,0,5,1,2,5,'','0',9,1,0,0),(10,2,-1,6,1,2,44,'','0',9,1,0,0),(4,1,0,7,1,2,1,'','0',1,1,0,0),(12,1,0,8,1,2,5,'','0',1,1,0,0),(13,1,0,9,1,2,5,'','0',1,1,0,0),(41,1,0,11,1,2,1,'','0',1,1,0,0),(11,1,0,12,1,2,5,'','0',1,1,0,0),(45,1,-1,16,1,2,1,'','0',9,1,0,0),(49,1,0,27,1,2,43,'','0',9,1,0,0),(50,1,0,28,1,2,43,'','0',9,1,0,0),(51,1,0,29,1,2,43,'','0',9,1,0,0),(52,1,0,30,1,2,48,'','0',1,1,0,0),(56,1,0,34,1,2,1,'','0',2,0,0,0),(14,3,-1,38,1,2,13,'','0',1,1,0,0),(54,2,-1,39,1,2,58,'','0',1,1,0,0),(1,6,-1,42,1,2,1,'','0',8,1,0,0),(57,1,0,43,1,2,2,'','0',1,1,0,0),(58,1,0,44,1,2,2,'','0',1,1,0,0),(59,1,0,45,1,2,60,'','0',1,1,0,0),(60,1,0,46,1,2,60,'','0',1,1,0,0),(60,2,-1,47,1,2,60,'','0',1,1,0,0),(61,1,0,48,1,2,59,'','0',1,1,0,0),(62,1,0,50,1,2,61,'','0',2,0,0,0),(63,1,0,52,1,2,61,'','0',2,0,0,0),(64,1,0,54,1,2,2,'','0',2,0,0,0),(65,1,0,56,1,2,59,'','0',2,0,0,0),(57,2,-1,57,1,2,2,'','0',1,1,0,0),(1,7,-1,58,1,2,1,'','0',8,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0),(58,1,0,0,'','','','','ezpublish',2,0),(59,1,0,0,'','','','','ezpublish',3,0),(60,1,0,0,'','','','','ezpublish',4,0),(60,2,0,0,'','','','','ezpublish',5,0),(61,1,0,0,'','','','','ezpublish',6,0),(62,1,0,0,'','','','','ezpublish',7,0),(63,1,0,0,'','','','','ezpublish',8,0),(64,1,0,0,'','','','','ezpublish',9,0),(65,1,0,0,'','','','','ezpublish',10,0),(57,2,0,0,'','','','','ezpublish',11,0),(1,7,0,0,'','','','','ezpublish',12,0);
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2),('*',317,'content',0,3),('login',319,'user',0,3),('read',328,'content',0,1),('pdf',329,'content',0,1),('*',330,'ezoe',0,3),('login',331,'user',0,1);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328),(252,'Section',329),(253,'SiteAccess',331);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1'),(478,252,'1'),(479,253,'1833031301');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','*',0),(3,0,'Editor','',0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,11,0,4671,'name',0,957,0,0,1033920746,2,956),(6,3,11,0,4672,'name',0,0,1,956,1033920746,2,957),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(8,4,14,0,4676,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,4677,'last_name',0,960,1,958,1033920830,2,954),(12,4,14,0,4678,'user_account',0,955,2,954,1033920830,2,960),(12,4,14,0,4679,'user_account',0,927,3,960,1033920830,2,955),(12,4,14,0,4680,'user_account',0,0,4,955,1033920830,2,927),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(159,14,52,0,4694,'name',0,965,0,0,1082016591,4,877),(159,14,52,0,4695,'name',0,966,1,877,1082016591,4,965),(159,14,52,0,4696,'name',0,0,2,965,1082016591,4,966),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,56,0,4698,'name',0,0,0,0,1103023132,5,968),(4,1,58,0,4704,'name',0,973,0,0,1386348524,1,972),(4,1,58,0,4705,'name',0,974,1,972,1386348524,1,973),(4,1,58,0,4706,'name',0,975,2,973,1386348524,1,974),(119,1,58,0,4707,'short_description',0,976,3,974,1386348524,1,975),(119,1,58,0,4708,'short_description',0,977,4,975,1386348524,1,976),(119,1,58,0,4709,'short_description',0,0,5,976,1386348524,1,977),(4,1,59,0,4710,'name',0,973,0,0,1386348599,1,972),(4,1,59,0,4711,'name',0,978,1,972,1386348599,1,973),(4,1,59,0,4712,'name',0,979,2,973,1386348599,1,978),(4,1,59,0,4713,'name',0,974,3,978,1386348599,1,979),(4,1,59,0,4714,'name',0,0,4,979,1386348599,1,974),(4,1,60,0,4720,'name',0,973,0,0,1386348617,1,972),(4,1,60,0,4721,'name',0,978,1,972,1386348617,1,973),(4,1,60,0,4722,'name',0,979,2,973,1386348617,1,978),(4,1,60,0,4723,'name',0,978,3,978,1386348617,1,979),(4,1,60,0,4724,'name',0,0,4,979,1386348617,1,978),(1,2,61,0,4725,'title',0,981,0,0,1386348705,1,980),(1,2,61,0,4726,'title',0,980,1,980,1386348705,1,981),(120,2,61,0,4727,'intro',0,981,2,981,1386348705,1,980),(120,2,61,0,4728,'intro',0,982,3,980,1386348705,1,981),(120,2,61,0,4729,'intro',0,983,4,981,1386348705,1,982),(120,2,61,0,4730,'intro',0,980,5,982,1386348705,1,983),(121,2,61,0,4731,'body',0,981,6,983,1386348705,1,980),(121,2,61,0,4732,'body',0,984,7,980,1386348705,1,981),(121,2,61,0,4733,'body',0,983,8,981,1386348705,1,984),(121,2,61,0,4734,'body',0,0,9,984,1386348705,1,983),(1,2,62,0,4735,'title',0,981,0,0,1386348725,1,980),(1,2,62,0,4736,'title',0,980,1,980,1386348725,1,981),(120,2,62,0,4737,'intro',0,981,2,981,1386348725,1,980),(120,2,62,0,4738,'intro',0,982,3,980,1386348725,1,981),(120,2,62,0,4739,'intro',0,983,4,981,1386348725,1,982),(120,2,62,0,4740,'intro',0,980,5,982,1386348725,1,983),(121,2,62,0,4741,'body',0,981,6,983,1386348725,1,980),(121,2,62,0,4742,'body',0,984,7,980,1386348725,1,981),(121,2,62,0,4743,'body',0,983,8,981,1386348725,1,984),(121,2,62,0,4744,'body',0,0,9,984,1386348725,1,983),(1,2,63,0,4745,'title',0,981,0,0,1386348742,1,980),(1,2,63,0,4746,'title',0,980,1,980,1386348742,1,981),(120,2,63,0,4747,'intro',0,981,2,981,1386348742,1,980),(120,2,63,0,4748,'intro',0,982,3,980,1386348742,1,981),(120,2,63,0,4749,'intro',0,983,4,981,1386348742,1,982),(120,2,63,0,4750,'intro',0,980,5,982,1386348742,1,983),(121,2,63,0,4751,'body',0,981,6,983,1386348742,1,980),(121,2,63,0,4752,'body',0,984,7,980,1386348742,1,981),(121,2,63,0,4753,'body',0,983,8,981,1386348742,1,984),(121,2,63,0,4754,'body',0,0,9,984,1386348742,1,983),(1,2,64,0,4755,'title',0,981,0,0,1386348759,1,980),(1,2,64,0,4756,'title',0,980,1,980,1386348759,1,981),(120,2,64,0,4757,'intro',0,981,2,981,1386348759,1,980),(120,2,64,0,4758,'intro',0,982,3,980,1386348759,1,981),(120,2,64,0,4759,'intro',0,983,4,981,1386348759,1,982),(120,2,64,0,4760,'intro',0,980,5,982,1386348759,1,983),(121,2,64,0,4761,'body',0,981,6,983,1386348759,1,980),(121,2,64,0,4762,'body',0,984,7,980,1386348759,1,981),(121,2,64,0,4763,'body',0,983,8,981,1386348759,1,984),(121,2,64,0,4764,'body',0,0,9,984,1386348759,1,983),(1,2,65,0,4765,'title',0,981,0,0,1386348792,1,980),(1,2,65,0,4766,'title',0,980,1,980,1386348792,1,981),(120,2,65,0,4767,'intro',0,981,2,981,1386348792,1,980),(120,2,65,0,4768,'intro',0,982,3,980,1386348792,1,981),(120,2,65,0,4769,'intro',0,983,4,981,1386348792,1,982),(120,2,65,0,4770,'intro',0,980,5,982,1386348792,1,983),(121,2,65,0,4771,'body',0,981,6,983,1386348792,1,980),(121,2,65,0,4772,'body',0,984,7,980,1386348792,1,981),(121,2,65,0,4773,'body',0,983,8,981,1386348792,1,984),(121,2,65,0,4774,'body',0,0,9,984,1386348792,1,983),(4,1,57,0,4775,'name',0,986,0,0,1386348468,1,985),(4,1,57,0,4776,'name',0,987,1,985,1386348468,1,986),(119,1,57,0,4777,'short_description',0,814,2,986,1386348468,1,987),(119,1,57,0,4778,'short_description',0,988,3,987,1386348468,1,814),(119,1,57,0,4779,'short_description',0,985,4,814,1386348468,1,988),(119,1,57,0,4780,'short_description',0,0,5,988,1386348468,1,985),(4,1,1,0,4781,'name',0,990,0,0,1033917596,1,989),(4,1,1,0,4782,'name',0,991,1,989,1033917596,1,990),(4,1,1,0,4783,'name',0,992,2,990,1033917596,1,991),(4,1,1,0,4784,'name',0,991,3,991,1033917596,1,992),(155,1,1,0,4785,'short_name',0,992,4,992,1033917596,1,991),(155,1,1,0,4786,'short_name',0,993,5,991,1033917596,1,992),(119,1,1,0,4787,'short_description',0,994,6,992,1033917596,1,993),(119,1,1,0,4788,'short_description',0,991,7,993,1033917596,1,994),(119,1,1,0,4789,'short_description',0,995,8,994,1033917596,1,991),(119,1,1,0,4790,'short_description',0,996,9,991,1033917596,1,995),(119,1,1,0,4791,'short_description',0,997,10,995,1033917596,1,996),(119,1,1,0,4792,'short_description',0,998,11,996,1033917596,1,997),(119,1,1,0,4793,'short_description',0,999,12,997,1033917596,1,998),(119,1,1,0,4794,'short_description',0,1000,13,998,1033917596,1,999),(119,1,1,0,4795,'short_description',0,812,14,999,1033917596,1,1000),(119,1,1,0,4796,'short_description',0,1001,15,1000,1033917596,1,812),(119,1,1,0,4797,'short_description',0,814,16,812,1033917596,1,1001),(119,1,1,0,4798,'short_description',0,991,17,1001,1033917596,1,814),(119,1,1,0,4799,'short_description',0,992,18,814,1033917596,1,991),(119,1,1,0,4800,'short_description',0,1002,19,991,1033917596,1,992),(119,1,1,0,4801,'short_description',0,816,20,992,1033917596,1,1002),(119,1,1,0,4802,'short_description',0,999,21,1002,1033917596,1,816),(119,1,1,0,4803,'short_description',0,1003,22,816,1033917596,1,999),(119,1,1,0,4804,'short_description',0,1004,23,999,1033917596,1,1003),(119,1,1,0,4805,'short_description',0,991,24,1003,1033917596,1,1004),(119,1,1,0,4806,'short_description',0,992,25,1004,1033917596,1,991),(119,1,1,0,4807,'short_description',0,1005,26,991,1033917596,1,992),(119,1,1,0,4808,'short_description',0,1006,27,992,1033917596,1,1005),(119,1,1,0,4809,'short_description',0,814,28,1005,1033917596,1,1006),(119,1,1,0,4810,'short_description',0,1007,29,1006,1033917596,1,814),(119,1,1,0,4811,'short_description',0,1008,30,814,1033917596,1,1007),(119,1,1,0,4812,'short_description',0,1009,31,1007,1033917596,1,1008),(119,1,1,0,4813,'short_description',0,814,32,1008,1033917596,1,1009),(119,1,1,0,4814,'short_description',0,991,33,1009,1033917596,1,814),(119,1,1,0,4815,'short_description',0,1010,34,814,1033917596,1,991),(119,1,1,0,4816,'short_description',0,996,35,991,1033917596,1,1010),(119,1,1,0,4817,'short_description',0,997,36,1010,1033917596,1,996),(119,1,1,0,4818,'short_description',0,1011,37,996,1033917596,1,997),(119,1,1,0,4819,'short_description',0,814,38,997,1033917596,1,1011),(119,1,1,0,4820,'short_description',0,1012,39,1011,1033917596,1,814),(119,1,1,0,4821,'short_description',0,991,40,814,1033917596,1,1012),(156,1,1,0,4822,'description',0,992,41,1012,1033917596,1,991),(156,1,1,0,4823,'description',0,994,42,991,1033917596,1,992),(156,1,1,0,4824,'description',0,999,43,992,1033917596,1,994),(156,1,1,0,4825,'description',0,1013,44,994,1033917596,1,999),(156,1,1,0,4826,'description',0,1014,45,999,1033917596,1,1013),(156,1,1,0,4827,'description',0,1015,46,1013,1033917596,1,1014),(156,1,1,0,4828,'description',0,1016,47,1014,1033917596,1,1015),(156,1,1,0,4829,'description',0,1017,48,1015,1033917596,1,1016),(156,1,1,0,4830,'description',0,1018,49,1016,1033917596,1,1017),(156,1,1,0,4831,'description',0,1019,50,1017,1033917596,1,1018),(156,1,1,0,4832,'description',0,1020,51,1018,1033917596,1,1019),(156,1,1,0,4833,'description',0,1021,52,1019,1033917596,1,1020),(156,1,1,0,4834,'description',0,1022,53,1020,1033917596,1,1021),(156,1,1,0,4835,'description',0,1023,54,1021,1033917596,1,1022),(156,1,1,0,4836,'description',0,814,55,1022,1033917596,1,1023),(156,1,1,0,4837,'description',0,1020,56,1023,1033917596,1,814),(156,1,1,0,4838,'description',0,1001,57,814,1033917596,1,1020),(156,1,1,0,4839,'description',0,1024,58,1020,1033917596,1,1001),(156,1,1,0,4840,'description',0,1025,59,1001,1033917596,1,1024),(156,1,1,0,4841,'description',0,1019,60,1024,1033917596,1,1025),(156,1,1,0,4842,'description',0,1026,61,1025,1033917596,1,1019),(156,1,1,0,4843,'description',0,1027,62,1019,1033917596,1,1026),(156,1,1,0,4844,'description',0,1028,63,1026,1033917596,1,1027),(156,1,1,0,4845,'description',0,1022,64,1027,1033917596,1,1028),(156,1,1,0,4846,'description',0,1029,65,1028,1033917596,1,1022),(156,1,1,0,4847,'description',0,1030,66,1022,1033917596,1,1029),(156,1,1,0,4848,'description',0,1031,67,1029,1033917596,1,1030),(156,1,1,0,4849,'description',0,990,68,1030,1033917596,1,1031),(156,1,1,0,4850,'description',0,1032,69,1031,1033917596,1,990),(156,1,1,0,4851,'description',0,1033,70,990,1033917596,1,1032),(156,1,1,0,4852,'description',0,1034,71,1032,1033917596,1,1033),(156,1,1,0,4853,'description',0,999,72,1033,1033917596,1,1034),(156,1,1,0,4854,'description',0,1035,73,1034,1033917596,1,999),(156,1,1,0,4855,'description',0,1036,74,999,1033917596,1,1035),(156,1,1,0,4856,'description',0,990,75,1035,1033917596,1,1036),(156,1,1,0,4857,'description',0,999,76,1036,1033917596,1,990),(156,1,1,0,4858,'description',0,1037,77,990,1033917596,1,999),(156,1,1,0,4859,'description',0,1038,78,999,1033917596,1,1037),(156,1,1,0,4860,'description',0,1007,79,1037,1033917596,1,1038),(156,1,1,0,4861,'description',0,998,80,1038,1033917596,1,1007),(156,1,1,0,4862,'description',0,1039,81,1007,1033917596,1,998),(156,1,1,0,4863,'description',0,1040,82,998,1033917596,1,1039),(156,1,1,0,4864,'description',0,1041,83,1039,1033917596,1,1040),(156,1,1,0,4865,'description',0,1042,84,1040,1033917596,1,1041),(156,1,1,0,4866,'description',0,1043,85,1041,1033917596,1,1042),(156,1,1,0,4867,'description',0,1044,86,1042,1033917596,1,1043),(156,1,1,0,4868,'description',0,1045,87,1043,1033917596,1,1044),(156,1,1,0,4869,'description',0,1046,88,1044,1033917596,1,1045),(156,1,1,0,4870,'description',0,1019,89,1045,1033917596,1,1046),(156,1,1,0,4871,'description',0,1047,90,1046,1033917596,1,1019),(156,1,1,0,4872,'description',0,1048,91,1019,1033917596,1,1047),(156,1,1,0,4873,'description',0,1002,92,1047,1033917596,1,1048),(156,1,1,0,4874,'description',0,1049,93,1048,1033917596,1,1002),(156,1,1,0,4875,'description',0,1050,94,1002,1033917596,1,1049),(156,1,1,0,4876,'description',0,1051,95,1049,1033917596,1,1050),(156,1,1,0,4877,'description',0,1001,96,1050,1033917596,1,1051),(156,1,1,0,4878,'description',0,1052,97,1051,1033917596,1,1001),(156,1,1,0,4879,'description',0,1014,98,1001,1033917596,1,1052),(156,1,1,0,4880,'description',0,1053,99,1052,1033917596,1,1014),(156,1,1,0,4881,'description',0,991,100,1014,1033917596,1,1053),(156,1,1,0,4882,'description',0,992,101,1053,1033917596,1,991),(156,1,1,0,4883,'description',0,1029,102,991,1033917596,1,992),(156,1,1,0,4884,'description',0,1054,103,992,1033917596,1,1029),(156,1,1,0,4885,'description',0,1030,104,1029,1033917596,1,1054),(156,1,1,0,4886,'description',0,1055,105,1054,1033917596,1,1030),(156,1,1,0,4887,'description',0,1056,106,1030,1033917596,1,1055),(156,1,1,0,4888,'description',0,1057,107,1055,1033917596,1,1056),(156,1,1,0,4889,'description',0,1019,108,1056,1033917596,1,1057),(156,1,1,0,4890,'description',0,1058,109,1057,1033917596,1,1019),(156,1,1,0,4891,'description',0,998,110,1019,1033917596,1,1058),(156,1,1,0,4892,'description',0,1059,111,1058,1033917596,1,998),(156,1,1,0,4893,'description',0,1022,112,998,1033917596,1,1059),(156,1,1,0,4894,'description',0,1028,113,1059,1033917596,1,1022),(156,1,1,0,4895,'description',0,0,114,1022,1033917596,1,1028);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (812,2,'setup'),(814,3,'the'),(816,2,'for'),(877,1,'common'),(927,2,'ez.no'),(930,3,'users'),(951,1,'main'),(952,2,'group'),(953,2,'anonymous'),(954,3,'user'),(955,2,'nospam'),(956,1,'guest'),(957,1,'accounts'),(958,2,'administrator'),(959,1,'editors'),(960,1,'admin'),(961,1,'media'),(962,1,'images'),(963,1,'files'),(964,1,'multimedia'),(965,1,'ini'),(966,1,'settings'),(967,1,'sitestyle_identifier'),(968,1,'design'),(972,3,'menu'),(973,3,'level'),(974,2,'1'),(975,1,'just'),(976,1,'testing'),(977,1,'menus'),(978,2,'2'),(979,2,'item'),(980,5,'test'),(981,5,'article'),(982,5,'intro'),(983,5,'field'),(984,5,'body'),(985,1,'articles'),(986,1,'folder'),(987,1,'check'),(988,1,'latest'),(989,1,'welcome'),(990,1,'to'),(991,1,'ez'),(992,1,'publish'),(993,1,'this'),(994,1,'is'),(995,1,'plain'),(996,1,'site'),(997,1,'package'),(998,1,'with'),(999,1,'a'),(1000,1,'limited'),(1001,1,'of'),(1002,1,'functionality'),(1003,1,'full'),(1004,1,'blown'),(1005,1,'please'),(1006,1,'chose'),(1007,1,'website'),(1008,1,'interface'),(1009,1,'or'),(1010,1,'flow'),(1011,1,'at'),(1012,1,'installation'),(1013,1,'popular'),(1014,1,'open'),(1015,1,'source'),(1016,1,'content'),(1017,1,'management'),(1018,1,'system'),(1019,1,'and'),(1020,1,'development'),(1021,1,'framework'),(1022,1,'it'),(1023,1,'allows'),(1024,1,'professional'),(1025,1,'customized'),(1026,1,'dynamic'),(1027,1,'web'),(1028,1,'solutions'),(1029,1,'can'),(1030,1,'be'),(1031,1,'used'),(1032,1,'build'),(1033,1,'anything'),(1034,1,'from'),(1035,1,'personal'),(1036,1,'homepage'),(1037,1,'multinational'),(1038,1,'corporate'),(1039,1,'role'),(1040,1,'based'),(1041,1,'multiuser'),(1042,1,'access'),(1043,1,'online'),(1044,1,'shopping'),(1045,1,'discussion'),(1046,1,'forums'),(1047,1,'other'),(1048,1,'advanced'),(1049,1,'in'),(1050,1,'addition'),(1051,1,'because'),(1052,1,'its'),(1053,1,'nature'),(1054,1,'easily'),(1055,1,'plugged'),(1056,1,'into'),(1057,1,'communicate'),(1058,1,'coexist'),(1059,1,'existing');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1'),('ezpublish-version','5.3.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1082368571,4,1,0,1082368571,'41caff1d7f5ad51e70ad46abbcf28fb7','http://ez.no/community/forum'),(1082368571,8,1,0,1082368571,'dfcdb471b240d964dc3f57b998eb0533','http://ez.no'),(1301057834,9,1,0,1301057834,'bb9c47d334fd775f1c54c45d460e6b2a','http://doc.ez.no/'),(1301057834,10,1,0,1301057834,'ae76fd1d17de21067cf13101f11689b1','http://ez.no/eZPublish/eZ-Publish-Enterprise-Subscription/Support-Services'),(1301057834,11,1,0,1301057834,'0c098a23ef9c7cae63ee8f85cf504b2d','http://ez.no/Requests/Contact-Sales'),(1301057834,12,1,0,1301057834,'6d8c164dd30423d9dcbc3fae1d64e25c','http://ez.no/eZPublish/Training-and-Certification'),(1301057836,13,1,0,1301057836,'b13f5ff5cdcad2a4efb461e4edf6f718','http://ez.no/Demos-videos/eZ-Publish-Administration-Interface-Video-Tutorial'),(1301057836,14,1,0,1301057836,'7b133bbdf1d039979a973e5a697e3743','http://ez.no/Demos-videos/eZ-Publish-Online-Editor-Video-Tutorial'),(1301057836,15,1,0,1301057836,'4e75c83ab35d461f109ec959aa1c5e1d','http://ez.no/Demos-videos/eZ-Flow-Video-Tutorial'),(1301057836,16,1,0,1301057836,'215310c57a3d54ef1356c20855510357','http://share.ez.no/learn/ez-publish/an-introduction-to-developing-ez-publish-extensions'),(1301057836,17,1,0,1301057836,'9ba078c54f33985da5bd1348a8f39741','http://share.ez.no/learn/ez-publish/creating-a-simple-custom-workflow-event'),(1301057836,18,1,0,1301057836,'eb3d19c36acbd41176094024d8fccfd5','http://www.slideshare.net/ezcommunity/ole-marius-smestad-rest-api-how-to-turn-ez-publish-into-a-multichannel-machine'),(1301057836,19,1,0,1301057836,'1fea0fead02dfc550fbefa5c17acc94f','http://www.slideshare.net/BertrandDunogier/presentation-winter-conference-2011-e-z-asynchronous-publishing'),(1301057836,20,1,0,1301057836,'af8f8bdc5fac2f3ada6ad337adab04cb','http://doc.ez.no/eZ-Publish/Upgrading/Upgrading-to-4.5'),(1301057836,21,1,0,1301057836,'3c6d6cfc2642951e9a946b697f84a306','http://share.ez.no/learn'),(1301057836,22,1,0,1301057836,'ac3ba54b44950b2d77fa42cc57dab914','http://ez.no/Demos-videos');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (104,6,9),(104,6,4),(104,6,10),(104,6,11),(104,6,12),(104,6,8),(104,6,13),(104,6,14),(104,6,15),(104,6,16),(104,6,17),(104,6,18),(104,6,19),(104,6,20),(104,6,21),(104,6,22);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia'),('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings'),('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish'),('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9'),('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:59','eznode',1,38,0,1,3,38,0,'Articles-folder','9e54e28afc7ca0ea413a5690869f9b22'),('eznode:66','eznode',1,45,0,1,2,45,0,'Test-article','9f060389a1f90d42be231bfbac11643c'),('eznode:2','eznode',1,1,0,1,3,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:59','eznode',1,47,0,0,3,38,0,'Articles','dba5d91846ce1a5e63734dfcbcb481cb'),('eznode:60','eznode',1,39,0,1,3,39,0,'Menu-level-1','fae5bfbcfdebe7d1a522fd2d10c91284'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,1,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf'),('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240'),('eznode:56','eznode',1,24,0,1,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a'),('eznode:67','eznode',1,46,0,1,2,46,38,'Test-article2','9c94cc8d40f9b68a3757918565d95c5e'),('eznode:63','eznode',1,42,0,1,2,42,38,'Test-article','9f060389a1f90d42be231bfbac11643c'),('eznode:61','eznode',1,40,0,1,3,40,39,'Menu-Level-2-Item-1','3154246d0c9dc8c41a09deeb37e97bfe'),('eznode:62','eznode',1,41,0,1,3,41,39,'Menu-Level-2-Item-2','8073959de91a7cbea27260717de9733e'),('eznode:65','eznode',1,44,0,1,2,44,40,'Test-article2','9c94cc8d40f9b68a3757918565d95c5e'),('eznode:64','eznode',1,43,0,1,2,43,40,'Test-article','9f060389a1f90d42be231bfbac11643c');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'nospam@ez.no','admin','c78e3b0f3d9244ed8c6d1c29464bdff9',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2),(11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1386352218,0,1386350510,3,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-06 15:57:25
