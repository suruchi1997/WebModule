-- MySQL dump 10.13  Distrib 5.7.24, for osx11.1 (x86_64)
--
-- Host: garimaserver1.mysql.database.azure.com    Database: clubmanagement
-- ------------------------------------------------------
-- Server version	8.0.39-azure

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` varchar(255) NOT NULL,
  `event` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'2014','It stands tall today thanks to the efforts and initiative of our Charter President Rtn Vipula Mahajan. Director of Stem RX and CEO Velvet group of Beauty Care, she has been our pillar of strength right from the inception stage. In the Maiden year of our existence itself our club was recognized for the caliber it had shown by PDG Ajay Gupta.  We adopted Bal Kalyan Nagri, a Government managed shelter home for children and did our first major project here beginning with Annapurna Day celebration on 1st Oct 2014. Our club served food to 150 children and subsequently partnered with Chetana Foundation to do Life Skills training for children aged 6 – 16 years. Our efforts helped us secure a District Grant for 1.35 lakhs to do a Spoken English Program. Despite our fragile beginnings, we conducted a successful women’s day program in collaboration with CBD Police Station, including a rally and felicitation of women achievers. We organized vocational awards for 4 women achievers in collaboration with Millennium Club and with Chetana Foundation co- sponsored a picnic to Kidzania for 130 children of Bal Kalyan Nagri. We co- hosted a district TRF seminar and sponsored group therapy and life Skills program at Vivekanada School Vashi and a teachers Day program as well where we awarded certificates to 30 10th Std teachers for their dedication.This Rotary year will always go down in our club history as an incredible beginning.'),(2,'2015-16','In the year 2015-16, Our club was led by Rtn. Kavita Nair Bhatia -a Psychotherapist and Master Trainer; Co-founder and Director - Chetana Foundation; Director - Chetana NXT. She is trained in Dance and Movement Therapy, Drama Therapy In the corporate world, she has served 10 years as a Master trainer, working extensively with companies like Ceat RPG, Unitech Group of Companies, BG India, Nomura. During this time, Garima moved on into larger projects. 4 TB screening camps conducted were a landmark for a new and fledgling club , where more than 800 patients were screened. POCSO training was done for entire Navi Mumbai police representatives from Panvel to Airoli—the need of the hour, which was appreciated by the Navimumbai police department. Counseling and skill training at Bal Kalyan Nagari -a government managed orphanage -for social upliftment of the children. We hosted a child from Mexico – Lucy -under the RYE program- a real achievement for a club in its second year of existence!'),(3,'2016-17','In 2016-17, District 3142 was formed – Numero Uno Year Rtn.Meenu Wahal took over as Club President- Club membership grew significantly in this year. She was the club’s first PHF fellow and benefactor. Started Adult Literacy Center and Skill development center at Kopari gaon, Vashi. Conducted Healthy mind seminar. Club received a trophy for membership growth in the year 2016-17. Chartered Interact Club of Sainath College. Interact club of Koprigaon and Rotaract club of Koprigaon Mashaal (Community based). Club participated in a District Grant project for the first time this year.'),(4,'2017-18','In 2017-18, Rtn.Meera Limaye -was the Club President. Conducted a seminar on eradication of superstition and myths for 800 students of Sainath college. Women’s safety talk by Senior Police Inspector Meera Bansode for 300 girls. Lead Club in organizing -Women Empowerment program- as a part of Service week in November 2017. Donation of books, toys, food and clothes to over 500 slum kids in collaboration with students of Amity University. Second PHF member for the club was added this year.'),(5,'2018-19','In 2018-19, Rtn. Anshu Verma took over as the ClubPresident. Principal of Sainath college, Vashi. She spearheaded the club in conducting multiple fruitful programs of service in the year 2018-19- counseling skills, blood donation drives, tree plantation, Teachers training, drug abuse prevention sessions. A major project was the Rubella vaccination drive in collaboration with NMMC, where over 3000 students were immunized. Eye and health checkup camps for over 500 students. 5 new members joined the club in the year 2018-19. In addition, two PHF members were added this year.'),(6,'2019-20','In 2019-20, Rtn. Dr. Oriya Pillai took over the reins of the club. The club contributed actively in sponsoring flood relief kits, in addition to food and groceries for the victims of floods in Assam and Maharashtra. 11 children were sponsored for midday meal program by club members.  One person was sponsored to the LN4 camp to receive an artificial hand. In Corona times 750 families of sex-workers and migrants, were provided a month of groceries. Club participated in a District Grant project of providing PPE kits to NMMC for use by Health care workers. 1 PHF member was added in this year. First Rotary Community Corps of the club was formed with HB Bed College, Vashi.'),(7,'2020-21','In 2020-21, Rtn. Nandita Das took over the onus of Club President. Rotary year 2020-21 started with uncertainty and Opportunity. As covid 19 was at its peak, members contributed whole heartedly for food grains to shelter homes, Sex workers, Slum kids, PPE Kits to mathadi hospital, Mask and Inhalers to Police force, NMMC Education department, Auto drivers and others. WE conducted some unique projects online, Diversity Equality and Inclusion, Logotherapy, Cyber Security. Also launched a program “Forgiveness and approach to Peace”. Wonderful program for youth was conducted “Nirmal Jiwan Ujjwal Bhavshiya” -detoxification of mind, body and soul, which was attended by more than 500 students. A young boy was sponsored for LN4 camp to receive an artificial hand. Rotaract Club of Lekarz (DY Patil School Medicine) first institution based Rotaract Club was installed by Garima. 10 Girl Child was sponsored under the Asha Kiran program. 4 new members joined the Club. For the first time Club became the EREY Club. In addition to this 3 PHF members were added. Club was awarded “Platinum” by the district.'),(8,'2021-22','In 2021-22 Rtn. Meenakshi Bhatt took over the charge of Club as Club President. In the Year 2021 second wave of COVID 19 was spreading but our club members were enthusiastically helping by counseling and generously donating 5000 vaccine for labours in MIDC, Mahape in collaboration with other Rotary Clubs of Navi Mumbai. The Club became EREY for continuously 2nd time. Added Five new members, and Club was awarded “ Diamond ”by the district.'),(9,'2022-23','In 2022-23 Rtn. Nirmala Pandey took over the charge of Club as Club President .She conducted various meaningful projects for the benefit of the public ,cervical cancer screening camp was organized a session on menopause was conducted with the students of Sainath school, Run for the girl child education, prevention of child sexual abuse with a total of more than 10000, beneficiaries . Garima won the GOLD award in the FAB year'),(12,'2023-24','In 2023-24 Rtn Nupur Chakravorty took over the charge of the Club as Club President.A teacher by profession she brought her professionalism, idealism and creativity into her presidentship. That year she was instrumental in conducting various socially beneficial projects like a visit to an old age home which brought smiles to the faces of women in their twilight. She also conducted projects like Tree Plantation, Marathon run to highlight the end Thalassemia campaign. She also helped her club members in various projects like free cataract surgeries for poor patients and educational seminars on issues of eye problems, nutrition and menstrual health for school students. Her year also saw a district grant project to put CCTV cameras in a school. She successfully distributed educational apps to poor students and conducted informative and enjoyable programs in RYLA and on Women’s Day. Her year also saw a session on suicide prevention and various mental health issues. Almost 5000 beneficiaries’s lives were touched and Garima won a Silver Citation. ');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (3,'Dr. Ruchira  Sharma','ruchiranaina21@gmail.com','President','Doctor'),(4,'Mrs Nandita Das','dasnandita67@gmail.com','Club Trainer and Club Administrator, ETN Chair ','Human Resources'),(5,'Mrs Urmi Soni','urmisoni1604@gmail.com','Club Secretary','Dietician , Nutritionist and Counsellor'),(6,'Mrs. Meenakshi Bhatt','mmbhatt3@gmail.com','TRF Chair','FilmMaker'),(7,'Nupur Chakraborty','nupur.chakr@gmail.com','Vice President, Youth Affairs','Education'),(8,' Mrs. Latha Pillai','pillailatha64@gmail.com','Club Service Projects Chair','Principal'),(9,'Alka Vijan Khanna','Alkavijankhanna@yahoo.com','Member','Designer'),(10,'Anandi Suresh Kumar','anandi.sk18@gmail.com','Treasurer','Singer'),(11,' Dr Bharati Morey','bharatimorey62@gmail.com','Director Community Service I','Doctor'),(12,'Dr Deepa Kala','dkala24@yahoo.com','Member','Doctor'),(13,'Dr Swarnlata Harichandan','s_harichandan@hotmail.com','Chairman - Literacy','Principal'),(14,'Kavita Nair Bhatia','kavitanair.bhatia@gmail.com','Sergeant At Arms','Psychotherapist and trainer'),(15,'Kiran Sharma','drdhadken@yahoo.com','Member','Homemaker'),(16,'Lavanya Suresh Kumar','lavanya.sk8@gmail.com','Member','Engineer'),(17,'Mrs Diana Asit Ghosh','ghoshdiana@gmail.com','Member','Social Worker '),(18,'Mrs Munmun Narendra Bajpai','munmunbajpai@yahoo.com','Member','Educationist'),(19,'Mrs Preeti Devinder Popli','prlobo50@gmail.com','Member','Yoga Expert and Mindfulness Expert '),(20,'Mrs Sita Mittal','sitamittal22@gmail.com','Club Membership Chair','Educationist , Economist and Counselor'),(21,'Mrs Usha Shaktidhar Menon','usha65@rediffmail.com','Member','Education'),(22,'Neetu Dobaria','neetudobaria@gmail.com','Member','Pharmacist'),(23,'Prriya Esupuniyani','drprriya@gmail.com','Member','Doctor'),(26,'Anshu Verma','anshuverma83@gmail.com','Joint Secretary','Education'),(27,'Dr Priya Pillai','preejay2002@yahoo.com','PR-PI Chair , Club Learning Facilitator','Doctor');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (6,'Stress management ','2024-12-19','7a21f72a-3611-4c34-a9fa-ba3600478f92.jpeg'),(9,'Health care for rural women ','2024-12-21','IMG_8097.jpeg');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'t@1.com','scrypt:32768:8:1$IThcPXWY0eRkmPAY$fae4abe057cbc0aa4facfe9ea5d99e049e0814421b13cedb19bfbe25a214886f28acc72c7408461ae2bfa7a1ee96a7e8243e301b56549b850ac98988988ffaae'),(8,'ruchiranaina21@gmail.com','scrypt:32768:8:1$60m5yGCsB30F2ZyJ$1d8099cb7064bfb0cd417e46237e369f9b25b264353f734db03dace4adcee0591ebaa3fc4ce2ac3ce591f454cd3338f9d77501a280aa575ba2544921b4516d94');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 14:45:35
