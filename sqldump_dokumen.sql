/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.31-MariaDB : Database - stki
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stki` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `stki`;

/*Table structure for table `tb_corpus` */

DROP TABLE IF EXISTS `tb_corpus`;

CREATE TABLE `tb_corpus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text_corpus` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_corpus` */

insert  into `tb_corpus`(`id`,`text_corpus`) values 
(1,'Also known as the Land of the Gods, Bali appeals through its sheer natural beauty of looming volcanoes and lush terraced rice fields that exude peace and serenity. It is also famous for surfers paradise! Bali enchants with its dramatic dances and colorful ceremonies, its arts, and crafts, to its luxurious beach resorts and exciting nightlife. And everywhere, you will find intricately carved temples.'),
(2,'There are thousands of gift shops in Bali. From Denpasar to Ubud, you\'ll find many things you\'d like to bring back home. Balinese signature souvenir range from delicious snacks and beverages, to the exquisite handcrafted goods like Tenun Bali.\r\n\r\nIf you are thinking of bringing home souvenirs, your best bet is the souvenir market at Sukowati, where you may be overwhelmed by choice.\r\nMost of the starred hotels are located near the beach. Some even have their own private spots at certain beaches, where you can splurge on exclusive privilege. You can find them easily at popular spots like Kuta, Sanur, and Seminyak.'),
(3,'As Bali is located 8 degrees south of the equator, you will find the climate to be the typical tropical, warm and humid all year round with two main distinctive seasons: Dry Season and Rainy Season. Some of the areas around Bali\'s central mountains (volcanoes) have several peaks over 3,000 meters above sea levels. Up here the temperatures are considerably cooler, and there is much more rainfall than in the coastal areas.\r\n\r\nBali’s white beaches are certainly a favorite destination for family holidays. There are a variety of watersports available, such as banana boats, parasailing or jet skiing, go swimming or you may just linger and enjoy good sunbathing by the sea.\r\n\r\nKuta is one of the most well-known beaches in Bali. Along with this stretch are an array of hotels, restaurants, shops, and cafes. In the evenings the area throbs to the beat of disco music.\r\nFor a quieter evening enjoy the beach at Jimbaran, a popular spot to eat fresh barbecued seafood. Seminyak is home to five-stars International hotels and luxurious accommodation studded with fancy dining spots. Sanur Beach also dotted with hotels and restaurants. You can also visit Nusa Dua, where more private beaches front super deluxe hotels.');

/*Table structure for table `tb_corpus2` */

DROP TABLE IF EXISTS `tb_corpus2`;

CREATE TABLE `tb_corpus2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_corpus` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_corpus2` */

insert  into `tb_corpus2`(`id`,`text_corpus`) values 
(1,'Shipment of gold damaged in a fire'),
(2,'Delivery of silver arrived in a silver truck'),
(3,'Shipment of gold arrived in a truck');

/*Table structure for table `tb_corpus3` */

DROP TABLE IF EXISTS `tb_corpus3`;

CREATE TABLE `tb_corpus3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_corpus` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_corpus3` */

insert  into `tb_corpus3`(`id`,`text_corpus`) values 
(1,'Donald Trump to Hillary Clinton: Run for president again! Clinton to Trump: Do your job!\r\nDavid Jackson\r\nUSA TODAY\r\n\r\n\r\nWASHINGTON – Engaging in a favorite pastime, President Donald Trump taunted Hillary Clinton and the 2020 Democratic candidates on Tuesday by saying she should run for the White House again – only to have Clinton taunt back.\r\n\r\n\"Don’t tempt me,\" she tweeted at Trump. \"Do your job.\"\r\n\r\nShe was responding to an earlier post in which Trump said: \"I think that Crooked Hillary Clinton should enter the race to try and steal it away from Uber Left Elizabeth Warren.\"\r\n\r\nHe also listed one \"condition\" of her renewed candidacy, saying Clinton should disclose the reason she deleted emails from her time as secretary of State for President Barack Obama.\r\n\r\nClinton responded a few hours later with her own taunting tweet.\r\n\r\nTrump\'s hit came as he as under impeachment investigation for asking Ukraine\'s president to investigate another Democratic presidential candidate, former Vice President Joe Biden.'),
(2,'TRUMP: DON’T TALK TO ME ABOUT UKRAINE, HILLARY CLINTON IS THE REAL CRIMINAL HERE\r\nThe president wants his 2016 opponent to run in 2020 so they can debate her crimes.\r\n\r\n\r\nBY BESS LEVIN\r\nOCTOBER 8, 2019\r\nUS Democratic Presidential nominee Hillary Clinton  and Republican Presidential nominee Donald Trump participate a town...\r\nBY SAUL LOEB/AFP/GETTY IMAGES.\r\nSince being accused of pressuring Ukraine to dig up dirt on Joe Biden as part of a quid pro quo deal for nearly $400 million in military aid and a White House visit, Donald Trump has responded to the charges in a variety of unhinged ways, none of which constitute actual legal defenses. He’s insisted that the whistle-blower is fake news because the person didn’t have firsthand knowledge of the call with Ukraine president Volodymyr Zelensky, despite the fact that the phone call summary in the complaint closely mirrored the rough readout of the conversation released by the White House itself. He’s suggested that Rep. Adam Schiff be tried for treason and Senator Mitt Romney be impeached. He’s scared the crap out of the prime minister of Finland, who will probably never return to the United States on account of lingering trauma. And, of course, he’s reached back into the dumpster of his brain to revive a favorite 2016 rallying call: that he did nothing wrong and the real criminal here is Hillary Clinton.\r\n\r\n“I think that Crooked Hillary Clinton should enter the race to try and steal it away from Uber Left Elizabeth Warren,” Trump tweeted one day after claiming to possess “great and unmatched wisdom,” his characteristic capitalization choices giving the impression that the senator from Massachusetts had scored that coveted Uber Technologies endorsement. “Only one condition. The Crooked one must explain all of her high crimes and misdemeanors including how & why she deleted 33,000 Emails AFTER getting ‘C’ Subpoena!”\r\n\r\nOf course, it’s not at all surprising that Trump, under the gun for abusing the power of the presidency in numerous ways, would turn to the “but her emails!” defense, a favorite go-to for Republicans whenever their Lord and Savior is backed into a corner, despite the fact that Emailgate was settled by the FBI three years ago. The old Clinton deflection has surfaced a handful of times since Republicans opened their impeachment inquiry, including this past weekend, when the president tweeted, “so Crooked Hillary Clinton can delete and acid wash 33,000 emails AFTER getting a Subpoena from the United States Congress, but I can’t make one totally appropriate telephone call to the President of Ukraine? Witch Hunt!”\r\n\r\nSeparately, other former members of the Trump orbit have put forth Clinton-related suspicions of their own. Earlier this month, the decomposing corpse of Steve Bannon, who refuses to disappear back into the putrid bog from whence he came, served up the bold claim that Clinton was planning to run in 2020, despite the fact that the chances of such a turn of events are about as likely as Trump tweeting later today, “I realize now that my actions concerning Biden and Ukraine were beyond the pale, and I will cooperate with any investigation into the matter.”\r\n\r\nUpdate: Several hours later, Clinton weighed in on the idea:'),
(3,'Hillary Clinton is taunting Trump. But is she seriously eyeing another run?\r\nCNN Digital Expansion 2017\r\nCNN Digital Expansion 2017\r\nBy Dan Merica and Jeff Zeleny, CNN\r\n\r\nUpdated 1549 GMT (2349 HKT) October 10, 2019\r\nHillary Clinton says staying married was \'gutsiest\' moment\r\n\r\nMilitary analyst: We don\'t know whose version is true\r\nNEW YORK, NY - NOVEMBER 15: Don McGahn, general counsel for the Trump transition team, gets into an elevator in the lobby at Trump Tower, November 15, 2016 in New York City. President-elect Donald Trump is in the process of choosing his presidential cabinet as he transitions from a candidate to the president-elect. (Photo by Drew Angerer/Getty Images)\r\nDemocrats say this White House lawyer is key in impeachment\r\ndina titus joe biden endorsement nevada bts newday vpx_00000228\r\nJoe Biden lands a key early state endorsement\r\nWASHINGTON, DC - MAY 13: (AFP-OUT) President Donald Trump&#39;s motorcade arrives at the White House on May 13, 2018 in Washington, D.C. (Photo by Zach Gibson/Getty Images)\r\nReport: White House review shows effort to justify Trump blocking Ukraine aid\r\n\r\nSchiff encourages Bolton to \'show courage\' and testify\r\nflorida trump voters impeachment hearings savidge pkg nr vpx_00020819\r\nTrump voter: Impeachment inquiry is \'a waste of time\'\r\nSAN DIEGO, CA - JULY 02: Navy Special Operations Chief Edward Gallagher walks out of military court with his wife Andrea Gallagher during lunch recess on July 2, 2019 in San Diego, California. Jury deliberations begin today for Chief Gallagher, who is on trial for war crimes for shooting of unarmed civilians in Iraq in 2017, including a school-age girl, and with killing a captured teenage ISIS fighter with a knife while deployed. (Photo by Sandy Huffaker/Getty Images)\r\nEsper raises concern with White House over Gallagher case\r\nIn this 2017 photo, former New York City Mayor Rudy Giuliani is seen at Trump Tower in New York City.\r\nGiuliani: Nunes should have met with Shokin\r\nChelsea Clinton (R) listens as Democratic presidential nominee Hillary Clinton speaks during a town hall meeting October 4, 2016 in Haverford, Pennsylvania. / AFP / Brendan Smialowski        (Photo credit should read BRENDAN SMIALOWSKI/AFP/Getty Images)NOW PLAYING\r\nHillary Clinton says staying married was \'gutsiest\' moment\r\n\r\nThis is what black voters want to see from Pete Buttigieg\r\n\r\nGiuliani\'s associates boasted of US government ties, Ukraine gas executive says\r\n\r\nBurnett on judge\'s ruling: Shatters Trump\'s immunity claim\r\n\r\nGiuliani backtracks after suggesting Trump might abandon him\r\n\r\nNational Enquirer chief David Pecker talking to prosecutors\r\nohio farmer considering run against jim jordan christopher gibbs sot ATH vpx_00001723.jpg\r\nThis Ohio farmer is considering a run against Jim Jordan\r\n\r\nRick Perry says Trump sent by God as the \'chosen one\'\r\n\r\nMilitary analyst: We don\'t know whose version is true\r\nNEW YORK, NY - NOVEMBER 15: Don McGahn, general counsel for the Trump transition team, gets into an elevator in the lobby at Trump Tower, November 15, 2016 in New York City. President-elect Donald Trump is in the process of choosing his presidential cabinet as he transitions from a candidate to the president-elect. (Photo by Drew Angerer/Getty Images)\r\nDemocrats say this White House lawyer is key in impeachment\r\ndina titus joe biden endorsement nevada bts newday vpx_00000228\r\nJoe Biden lands a key early state endorsement\r\nWASHINGTON, DC - MAY 13: (AFP-OUT) President Donald Trump&#39;s motorcade arrives at the White House on May 13, 2018 in Washington, D.C. (Photo by Zach Gibson/Getty Images)\r\nReport: White House review shows effort to justify Trump blocking Ukraine aid\r\n\r\nSchiff encourages Bolton to \'show courage\' and testify\r\nflorida trump voters impeachment hearings savidge pkg nr vpx_00020819\r\nTrump voter: Impeachment inquiry is \'a waste of time\'\r\nSAN DIEGO, CA - JULY 02: Navy Special Operations Chief Edward Gallagher walks out of military court with his wife Andrea Gallagher during lunch recess on July 2, 2019 in San Diego, California. Jury deliberations begin today for Chief Gallagher, who is on trial for war crimes for shooting of unarmed civilians in Iraq in 2017, including a school-age girl, and with killing a captured teenage ISIS fighter with a knife while deployed. (Photo by Sandy Huffaker/Getty Images)\r\nEsper raises concern with White House over Gallagher case\r\nIn this 2017 photo, former New York City Mayor Rudy Giuliani is seen at Trump Tower in New York City.\r\nGiuliani: Nunes should have met with Shokin\r\nChelsea Clinton (R) listens as Democratic presidential nominee Hillary Clinton speaks during a town hall meeting October 4, 2016 in Haverford, Pennsylvania. / AFP / Brendan Smialowski        (Photo credit should read BRENDAN SMIALOWSKI/AFP/Getty Images)\r\nHillary Clinton says staying married was \'gutsiest\' moment\r\n\r\nThis is what black voters want to see from Pete Buttigieg\r\n\r\nGiuliani\'s associates boasted of US government ties, Ukraine gas executive says\r\n\r\nBurnett on judge\'s ruling: Shatters Trump\'s immunity claim\r\n\r\nGiuliani backtracks after suggesting Trump might abandon him\r\n\r\nNational Enquirer chief David Pecker talking to prosecutors\r\nohio farmer considering run against jim jordan christopher gibbs sot ATH vpx_00001723.jpg\r\nThis Ohio farmer is considering a run against Jim Jordan\r\n\r\nRick Perry says Trump sent by God as the \'chosen one\'\r\n(CNN)Hillary Clinton fired off another taunting tweet to President Donald Trump on Thursday, saying, \"It\'s becoming a challenge to keep up with the high crimes and misdemeanors.\"\r\n\r\nClinton is carefully following the daily developments in the ongoing impeachment drama -- and is having fun at her former rival\'s expense -- but that doesn\'t mean she is seriously weighing another run for president, several of her friends and advisers tell CNN.\r\nClinton\'s recent reentry into the public sphere after months out of the limelight has led to speculation that she could be seriously considering a rematch with Trump. Those questions have been stoked by Clinton herself, who responded to a recent Trump tweet about her running again by simply saying, \"Don\'t tempt me,\" and joked with PBS\' Judy Woodruff about a possible round two with the President.\r\n\r\nSponsor content by Dubai Tourism\r\nExplore where the beginnings of Dubai were born\r\nJoin Gwyneth, Kate and Zoe as they each experience a different story of Dubai. Watch as their journeys unfold, each discovering the city in different ways.\r\n\"Maybe there does need to be a rematch,\" Clinton said jokingly. \"Obviously, I can beat him again.\" Clinton bested Trump in the popular vote, but fell short in the Electoral College.\r\nBut Clinton\'s reemergence is more a product of fortuitous timing and feeling unencumbered than a genuine exploration of a 2020 run.\r\n\"No,\" said longtime Clinton friend and former Virginia Gov. Terry McAuliffe, when asked if Clinton is considering a run in 2020. \"I think she is having the time of her life and speaking her mind.\"\r\nMcAuliffe, who was chair of Clinton\'s 2008 presidential campaign, added: \"It drives Trump crazy. ... Trump and his massive ego cannot get over the fact that Hillary Clinton got 3 million more votes than he got. It drives him absolutely mad, so she is having fun shooting back at him.\"\r\nFor Clinton, the moment is a twofold opportunity: promoting her book and taunting Trump. And friends who have spent time with her in recent weeks say she\'s enjoying both in equal measures.\r\n\"Yes, she loves taunting him. As much now as ever,\" a person close to Clinton told CNN, speaking on condition of anonymity to discuss private conversations. \"She\'s having fun, but that doesn\'t mean she\'s going to run again.\"\r\nClinton, after writing \"The Book of Gutsy Women: Favorite Stories of Courage and Resilience\" with her daughter, Chelsea Clinton, was always planning a lengthy book tour. Little did she know, however, that she would kick off the tour mere hours before House Speaker Nancy Pelosi announced the beginning of an impeachment inquiry into Trump.\r\nThat unexpected timing, aides said, meant Clinton was going to be far more public at the same time that Trump\'s presidency faced its most existential threat. Trump continues to bring up Clinton, tweeting about her regularly and often using questions around her email use as secretary of state to deflect from questions about his own legal issues.\r\nNick Merrill, Clinton\'s longtime spokesman, said the former nominee is \"not going to take (Trump\'s attacks) lying down.\"\r\n\"She is out on a book tour,\" Merrill said, \"and she is having a little fun.\"\r\nOne longtime loyal supporter said Clinton\'s jabs at Trump have created a fear among those close to her that she could ultimately consider a rematch, which many people believe would end badly for her.\r\n\"A lot of people are talking to her, which isn\'t helpful,\" another person close to Clinton told CNN. \"They get into her head because she so dislikes Donald Trump that she can\'t see straight.\"\r\nAll of this chatter -- much of which comes from longtime Clinton donors -- is focused on the notion of a rematch with Trump. Of course, should she decide to run -- again, highly unlikely -- she would face a Democratic primary fight in a far different landscape than the 2016 campaign.\r\n\"Sure, she thinks about it,\" said McAuliffe of another Clinton presidential run, \"but she is also realistic.\"\r\nStill, some friends email her political gambling sites, showing her with a strong chance of defeating Trump. Newspaper columns floating the idea of her running always make their way into her inbox, including one last week from former San Francisco Mayor Willie Brown.\r\n\"She feels vindicated on everything she felt during the campaign,\" a person close to Clinton said. \"She\'s been proven right. Does that mean she will run again? No.\"\r\nA longtime confidante put it more bluntly: \"She is NOT running.\"\r\nClinton has, however, been directly involved with the 2020 race and is deeply immersed in its day-to-day machinations. She keeps up with the swirl of news around the large field of Democrats vying to take on Trump and, according to advisers, has talked to nearly all of the 2020 Democrats.\r\nThat includes recent conversations with former Vice President Joe Biden and Sen. Elizabeth Warren of Massachusetts, the race\'s two front-runners, as well as in-person meetings with candidates like Sen. Kamala Harris of California, South Bend, Indiana, Mayor Pete Buttigieg and others. Clinton has not talked to Sen. Bernie Sanders of Vermont, an adviser said, who is running for the nomination again after challenging Clinton in 2016.\r\nWhile Clinton has been involved in the 2020 primary behind the scenes, she does not plan to endorse in the contest, people close to her said.\r\nClinton\'s recent bluntness has been a stark break from how she was as a candidate in 2016, where she was more guarded and careful.\r\nThis shift was recently made clear when, during a book tour interview, Clinton replied to a question about the gutsiest thing she ever did with an answer that took even some of her advisers by surprise.\r\n\"I think the gutsiest thing I\'ve ever done -- well, personally -- make the decision to stay in my marriage,\" Clinton told ABC, referring to her husband, then-President Bill Clinton, having an affair with then-White House intern Monica Lewinsky in the 1990s.\r\n\"She feels unconstrained, free to speak her mind,\" said Merrill. \"Watch her on this book tour. It\'s liberating.\"\r\nThis story has been updated with Hillary Clinton\'s tweet from Thursday.');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;