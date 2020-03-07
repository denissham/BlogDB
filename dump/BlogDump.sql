-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: BlogDBNew
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `posts_post_id` int DEFAULT NULL,
  `tags_tag_id` int DEFAULT NULL,
  KEY `fk_pt_tag_idx` (`tags_tag_id`),
  KEY `fk_pt_post_idx` (`posts_post_id`),
  KEY `fk_posts_post_tags_idx` (`posts_post_id`),
  CONSTRAINT `fk_posts_post_tags` FOREIGN KEY (`posts_post_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `fk_tags_post_tags` FOREIGN KEY (`tags_tag_id`) REFERENCES `tags` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (9,1),(11,1),(12,1),(13,1),(16,1),(9,2),(17,2),(9,3),(14,3),(12,4),(13,4),(18,4),(12,5),(13,5),(15,5),(18,5),(13,6),(15,6),(19,6);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id_UNIQUE` (`post_id`),
  KEY `fk_user_id_users_idx` (`user_id`),
  CONSTRAINT `fk_user_id_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (9,'Vimeo’s new app helps small businesses create professional social videos','Vimeo signaled last year its plans to move further into the social video creation and editing space with its acquisition of short-form video editor Magisto. Today, the company is unveiling the results of its work in the months following the deal’s close with the debut of Vimeo Create. The new app includes a set of video creation tools aimed at small businesses and marketers looking to tell their stories using social video, but who lack the resources, time or budget to invest in video production at the scale they need to compete.\n\nWith Vimeo Create, available on both the desktop and as an app, businesses choose from pre-made, professionally-designed video templates that can be customized to meet their needs. More advanced users could opt to start a new video from scratch, as an alternative.','2020-02-25',1),(11,'Disney blocks John Oliver’s new episode critical of India’s PM Modi','Hotstar, India’s largest on-demand video streaming service with more than 300 million users, has blocked the newest episode of HBO’s “Last Week Tonight with John Oliver” that was critical of Prime Minister Narendra Modi. The move has angered many of its customers ahead of Disney+’s launch in one of the world’s largest entertainment markets next month.\n\nIn the episode, aired hours before U.S. President Donald Trump’s visit to India, Oliver talked about some of the questionable policies enforced by the ruling government in India and recent protests against “controversial figure” Modi’s citizenship measures. The 19-minute news recap and commentary sourced its information from credible news outlets.\n\nThe episode is available to stream in India through HBO’s official channel on YouTube, where it has garnered more than 4 million views. Hotstar is the exclusive syndicating partner of HBO, Showtime and ABC in India.\n\nSpokespeople of Star India, which operates Hotstar, and Disney, which owns the major Indian broadcasting network, did not respond to multiple requests for comment.','2020-02-22',2),(12,'When that ‘AI company’ isn’t really an AI company','Artificial intelligence is one of the most important fields in technology right now, which makes it ripe for buzzword-savvy startups to leverage for attention. But while machine learning and related technologies are now frequently employed, it’s less common that it’s central to a company’s strategy and IP.\nIt’s important to note that this sort of posturing doesn’t necessarily mean a company is bad — it’s entirely possible they have an overzealous communications department or PR firm. Just consider the following points warning signs — if you hear these terms, dig a little deeper to find out exactly what the company does.','2020-01-01',4),(13,'Startup malaise, startup ambition','Recapped. Layoffs. Slowdown. CEO transition. Budget cuts. Downsizing.\n\nIn spite of a spate of massive startup exits the last few months, culminating in fintech’s shining moment yesterday with Intuit’s $7.1 billion acquisition of Credit Karma, it’s been a tough period for the startup world. Layoffs abound, centered perhaps on SoftBank’s Vision Fund portfolio but hardly exclusive to it. Startups, both infamous and unheard of, are shutting their doors. And that doesn’t even begin to factor in the global macro concerns like coronavirus that will drive investor sentiment this year.\n\nThere’s a bit of malaise underway in the startup world, a sense that possibilities are closing, that everything that will be built has been built, that tech itself is under an excruciating microscope by the public that makes innovation impossible.\n\nAll of that may well be true. And yet, there remains so, so much more to get done.\n\nWhole sectors of the economy still need to be completely rebuilt from the ground up. Healthcare is barely digital, never personalized and based on almost no evidence or data whatsoever. Construction costs for housing and infrastructure have skyrocketed, with almost no real benefit to the end user whatsoever. Millions of people are facing student debt crises, and yet our school system doesn’t look all that much different from a century ago.','2019-12-07',5),(14,'Games already are social networks','Video games are only getting more popular.\nRoughly 2.5 billion people around the world played games last year, double the number of players in 2013. Gaming is a $149 billion industry, growing 7% year over year, with the U.S. as its largest market. In America, the average gamer is 33 years old and 46% of gamers are female, according to the Entertainment Software Association.\n(This is Part 1 of our ongoing series on virtual worlds, introduced in the article A Multiverse, not the Metaverse.)\n\nPer Quartz reporter Dan Kopf’s summary of U.S. Department of Labor data:\nMore people now report playing games on a typical day — 11.4% in 2017 compared to 7.8% in 2003 — and, on days they do play games, they spend more time doing so — about 145 minutes in 2017, compared to 125 in 2003.\nYoung people are the biggest driver of the trend. From 2003 to 2015, 15-24 year olds spent less than 25 minutes playing games on the average day. From 2015 to 2017, those in that age group dedicated almost 40 minutes a day to games.\nMobile games account for a large part of this dramatic growth, but all major game categories are growing. The console gaming market — the oldest segment and most expensive due to hardware cost — expanded more than 7% last year al','2019-10-01',1),(15,'Amazon opens its first cashierless grocery store','Today Amazon is opening its first grocery store to pilot the use of the retailer’s cashierless “Just Walk Out” technology that has previously powered 25 Amazon Go convenience stores in a handful of major U.S. metros. Based in Amazon’s hometown of Seattle, the new Amazon Go Grocery store allows customers to shop for everyday grocery items like fresh produce, meat, seafood, bakery items, household essentials, dairy, easy-to-make dinner options, beer, wine and spirits, and more.\n\nThe store is 7,700 square feet in the front of the house and 10,400 square feet overall, making it the largest use of Amazon’s Just Walk Out technology to date.\n\nAs with Amazon Go convenience stores, shoppers first use the Amazon Go app to scan in as they enter the store, then shop as usual. Cameras and sensors track the items removed from the shelves which are then added to the shopper’s virtual cart. When the customer exits the store, their cart is checked out automatically using their payment card on file.\n\nThe end result is a grocery store with no lines or waiting. Meanwhile, store staff are freed up to take care of other aspects of the business like restocking shelves and customer service.\n\nThis model has been working for Amazon’s convenience stores where customers come in to grab items quickly. But grocery shopping presents a new challenge for Amazon’s cashierless technology. Grocery shoppers tend to examine items more closely — often picking up fresh produce, giving it a squeeze, then putting it back. They may push the produce around on the shelf to find one they like. Or they comparison shop, by picking up two products to compare labels, then put one in the cart and another back on the shelf — sometimes in an incorrect spot. They even discard items on different isles instead of walking back to return it to the proper area when they change their minds.','2020-02-25',1),(16,'Blockchain security startup CoolBitX raises $16.75M Series B','CoolBitX, a blockchain security startup based in Taiwan, announced today it has raised a $16.75 million Series B led by returning investor SBI Holdings, a Japanese financial group.\n\nKorean cryptocurrency exchange Bitsonic, Monex Group, another Japanese financial group and Taiwan’s National Development Fund also participated.\n\nFounded in 2014, CoolBitX makes two products. One is CoolWallet S, a Bluetooth-enabled hardware wallet for cryptocurrency. The other is called called Sygna, a solution created to help virtual asset service providers (VASPs) become compliant with a new rule passed last year by the Financial Action Task Force (FATF).\n\nReferred to as the “travel rule,” it is meant to prevent money laundering and the financing of terrorist acts by requiring virtual asset service providers to collect personally identifiable information (PII) from customers during transactions. All virtual asset service providers in FATF member countries need to comply by June.\n\nWith its new funding, CoolBitX plans to expand Sygna’s presence beyond the Asia-Pacific region. The startup says that 12 cryptocurrency exchanges have already signed memorandums of understanding with it and are currently using or testing Sygna, including SBI VC Trade, Coincheck, Bitbank, DMM Bitcoin, BITpoint, MaiCoin, BitoPro and Ace.\n\nCoolBitX founder and CEO Michael Ou told TechCrunch in an email that Sygna’s deployment helps differentiates it from competitors like Shyft and Ciphertrace, which also offer travel rule compliance solutions, because it has been tested and proven by users.\n\n“In addition, Sygna ensures that VASPs can quickly comply with new regulations with minimal disruptions to their day-to-day operations,” he added. “By focusing on seamless user experience, maximum security during the transmission of data, Sygna aims to facilitate the mainstream adoption of the crypto currency.”\n\nIn a press statement, SBI Holdings president and CEO Yoshitaka Kitao said, “As one of the early investors in CoolBitX, SBI Holdings is happy to see the breakthroughs made by the CoolBitX team to drive cryptocurrency adoption forward. As such, we are delighted to participate in our second tranche of investment in CoolBitX. The borderless nature of digital assets requires a solution that isn’t bound by geographical boundaries, and we are proud to partner with CoolBitX on their journey to bring a secure and easy-to-implement system to the world.','2019-12-25',2),(17,'A multiverse, not the metaverse','Following web forums, web platforms and mobile apps, we are entering a new stage of social media — the multiverse era — where the virtual worlds of games expand to become mainstream hubs for social interaction and entertainment. In a seven-part Extra Crunch series, we will explore why that is the case and which challenges and opportunities are making it happen.\nIn 10 years, we will have undergone a paradigm shift in social media and human-computer interaction, moving away from 2D apps centered on posting content toward shared feeds and an era where mixed reality (viewed with lightweight headsets) mixes virtual and physical worlds. But we’re not technologically or culturally ready for that future yet. The “metaverse” of science fiction is not arriving imminently.\nInstead, the virtual worlds of multiplayer games — still accessed from phones, tablets, PCs and consoles — are our stepping stones during this next phase.\n\nUnderstanding this gradual transition helps us reconcile the futuristic visions of many in tech with the reality of how most humans will participate in virtual worlds and how social media impacts society. This transition centers on the merging of gaming and social media and leads to a new model of virtual worlds that are directly connected with our physical world, instead of isolated from it.\nMultiverse virtual worlds will come to function almost like new countries in our society, countries that exist in cyberspace rather than physical locations but have complex economic and political systems that interact with the physical world.\nThroughout these posts, I make a distinction between the “physical,” “virtual,” and “real” worlds. Our physical world defines tangible existence like in-person interactions and geographic location. The virtual world is that of digital technology and cyberspace: websites, social media, games. The real world is defined by the norms of what we accept as normal and meaningful in society. Laws and finance aren’t physical, but they are universally accepted as concrete aspects of life. I’ll argue here that social media apps are virtual worlds we have accepted as real — unified with normal life rather than separate from it — and that multiverse virtual worlds will make the same crossover.\nIn fact, because they incentivize small group interactions and accomplishment of collaborative tasks rather than promotion of viral posts, multiverse virtual worlds will bring a healthier era for social media’s societal impact.\nThe popularity of massive multiplayer online (MMO) gaming is exploding at the same time that the technology to access persistent virtual worlds with high-quality graphics from nearly any device is hitting the market. The rise of Epic Games’ Fortnite since 2017 accelerated interest in MMO games from both consumers who don’t consider themselves gamers and from journalists and investors who hadn’t paid much attention to gaming before','2019-12-01',6),(18,'Instead of IPOs and acquisitions, exiting to community is one alternative','The tech industry is built on the venture capital model where hockey stick growth and selling to a larger company or going public are markers of success. But the traditional VC model does not leave much room for startups that might not be the next unicorn but still generate revenue — just not the type of returns investors are looking for.\nThis is where exiting to the community comes in.\n“A lot of times, selling to the public doesn’t necessarily make the company or its service a better experience for the user or the workers,” Start.coop founder Greg Brodsky previously told TechCrunch. “Often it gets worse. It’s only really better for the investor.”\n\nBrodsky, who helps cooperative startups through the Start.coop accelerator, pointed to this exit to community idea as an option for startups looking to transition out of the more traditional Silicon Valley model. In this framework, some portion of the company is sold back to the workers or end users, he said. This idea is being spearheaded by Nathan Schneider, a Start.coop board member and professor of media studies at the University of Colorado, Boulder.\n“The idea with exit to community is how can you create a model where the whole point is to create a vibrant community that will become its eventual stewards,” Schneider tells TechCrunch. “It seems like a natural fit, especially in a moment where we’re looking for increased accountability and the wealth distribution problems in the startup economy.','2019-12-07',3),(19,'Molekule hopes to clear the air with $58 million in Series C funding and Berkeley Lab’s seal of approval','Silicon Valley air purifier startup Molekule was born out of an idea Dr. Yogi Goswami had back in the ’90s using photo-voltaic technology to kill air pollutants. His son, a young boy at the time, suffered from severe allergies and Dr. Goswami wanted to build something those like him could use in their home to clear the air. But the sleekly designed Molekule took a bit of a blow last fall when Wirecutter called it “the worst air purifier we’ve ever tested.”\n\nMolekule has since told TechCrunch comparing its PECO technology to the more common HEPA air filter technology is like comparing apples to oranges. “Up until now, everything has been air filtration, not real air purification,” co-founder and CEO of the company Jaya Rao told TechCrunch.\n\nTo disprove the naysayers, Molekule sent off its tech for testing at the Berkeley Lab, which concluded no measurable amount of VOC’s or ozone were emitted; Molekule effectively removed harmful chemicals in the air, like toluene, limonene, formaldehyde, as well as ozone, and that “no secondary byproducts were observed when the air cleaner was operated in the presence of a challenge VOC mixture.”\n\nCompare that to Wirecutter’s own assessment that, “on its auto setting, which is its medium setting, the Molekule reduced 0.3-micron particulates by (in the best case) only 26.4 percent over the course of half an hour. Compare that with the 87.6 percent reduction the Coway Mighty achieved on its medium setting.” TechCrunch reached out to Wirecutter and was told it still stands by its findings and does not recommend consumers purchase a Molekule.\n\nIt should be noted Consumer Reports also tested the Molekule device and it, too, did not recommend a purchase as the unit was not “proficient at catching larger airborne particles.” However, Molekule demonstrated to other news outlets at its own facilities that the photochemical reaction in its units did break down contaminants and kill mold spores.\n\n“To test PECO technology you actually need really sophisticated equipment,” Rao said. “Boiling it down to really simple factors is not enough because air is made up of many tiny but toxic things. These are air-borne chemicals nanometers in size, which Wirecutter admittedly did not test at all for.”','2020-02-01',7),(20,'Bluebeard','Bluebeard is a wealthy and powerful nobleman who has been married several times to beautiful women who have all mysteriously vanished. When Bluebeard visits his neighbor and asks to marry one of his daughters, the girls are terrified. After hosting a wonderful banquet, he chooses the youngest daughter to be his wife – against her will – and she goes to live with him in his rich and luxurious palace in the countryside, away from her family.\n\nBluebeard announces that he must leave for the country and gives the keys of the château to his wife. She is able to open any door in the house with them, each of which contain some of his riches, except for an underground chamber that he strictly forbids her to enter lest she suffer his wrath. He then goes away and leaves the house and the keys in her hands. She invites her sister, Anne, and her friends and cousins over for a party. However, she is eventually overcome with the desire to see what the forbidden room holds, and she sneaks away from the party and ventures into the room.\n\nShe immediately discovers the room is flooded with blood and the murdered corpses of Bluebeard\'s former wives hanging on hooks from the walls. Horrified, she drops the key in the blood and flees the room. She tries to wash the blood from the key, but the key is magical and the blood cannot be removed. Fearing for her life, she reveals her husband\'s secret to her visiting sister, and they plan to both flee the next morning. However, Bluebeard unexpectedly returns and finds the bloody key. In a blind rage, he threatens to kill his wife on the spot, but she asks for one last prayer with her sister Anne. Then, as Bluebeard is about to deliver the fatal blow, Anne and the wife\'s brothers arrive and kill Bluebeard. The wife inherits his fortune and castle, and has the dead wives buried. She uses the fortune to have her other siblings married then remarries herself, finally moving on from her horrible experience with Bluebeard.','2019-12-25',3);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_id_UNIQUE` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'#startup'),(2,'#ecology'),(3,'#ipo'),(4,'#video'),(5,'#newtechnology'),(6,'#tag');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe'),(2,'Simona','Halep'),(3,'Denys','Shamd'),(4,'Ivan','Kum'),(5,'Jack','Daniels'),(6,'Saimon','Kage'),(7,'Jaky','Chan');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-02 22:17:59
