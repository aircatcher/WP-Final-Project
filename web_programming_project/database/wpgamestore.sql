-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2016 at 07:03 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpgamestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `newsId` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `newsId`, `username`, `comment`, `date`) VALUES
(1, 3, 'user', 'That''s so cool!', '2016-06-09 15:19:49'),
(2, 3, 'admin', '@user I know right!', '2016-06-09 15:20:11'),
(3, 4, 'admin', 'Dunno what to feel right now... x_x', '2016-06-09 15:20:39'),
(4, 3, 'admin', 'Is it out yet???', '2016-06-09 22:11:11'),
(6, 8, 'user', 'Ive been waiting for this', '2016-06-10 18:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) NOT NULL,
  `history` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `history`) VALUES
(1, '<p style="text-align: justify;">Nippon Ichi Software was founded in September 1991 in Gifu Prefecture, Japan, as an entertainment software company. It was relocated and reincorporated on July 12, 1993. Since then Nippon Ichi Software, Inc. has grown into an international company focused on creating video game products across modern console platforms. NIS America, Inc. subsidiary of Nippon Ichi Software, Inc. of Japan, established its North American operations on December 24, 2003. Based in Santa Ana, California, NIS America, Inc. handles operations including localization, marketing, and publishing of Nippon Ichi titles. The first game to be released in North America by NIS America was Phantom Brave.<br /><br />NIS America was the result of the company''s wish to focus on international publication of their works in the U.S., given the increased popularity of their titles. Prior to the creation of this subsidiary, NIS software titles that appeared in the U.S. were localized and distributed by outside publishers. Notable examples would be Disgaea: Hour of Darkness, published in North America by Atlus and in Europe by Koei, La Pucelle, published in North America by Mastiff Inc, and Rhapsody: A Musical Adventure which was also published in North America by Atlus. The publisher has become a somewhat of a well-known presence in the North American market, having won RPGLand''s "Stateside Publisher of the Year Award" in 2009.<br /><br />Nippon Ichi, meaning "Japan''s Best" or "Japan #1," is often abbreviated as "N1".<br /><br />During years 2008 and 2009 the financial results for Nippon Ichi saw a huge drop. The January 2009 financial report for the company recorded a drop of more than 97% in income in comparison to the previous year. Kotaku editor Brian Ashcraft reported that after the release of the financial figures "The company''s closing price on the JASDAQ (Japanese NASDAQ) was &yen;36,200 on Friday. When the market opened this morning, and investors began reacting to Nippon Ichi''s financial statement, the stock price ultimately dropped &yen;7,000 (US$78) as the stock was unloaded."<br /><br />In 2012 Nippon Ichi Software entered the Guinness World Records Book awarded for being the company that released the most strategy RPGs.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `url`) VALUES
(1, 'ff_15', 'http://wallpapercave.com/wp/yoBBuBh.jpg'),
(2, 'atel_sophh', 'https://i.ytimg.com/vi/p0p5QLmvH_M/maxresdefault.jpg'),
(3, 'dark-souls3head', 'https://assets.vg247.com/current//2016/02/dark_souls_3_main_art_1.jpg'),
(4, 'disgsss', 'http://wallpapercave.com/wp/HWWVZZB.jpg'),
(5, 'the-legend-est-joss', 'http://www.shauntmax30.com/data/out/41/1303839-hq-1920x1080-the-legend-of-heroes-trails-in-the-sky-res.jpg'),
(6, 'farraaaam', 'http://www.imgbase.info/images/safe-wallpapers/video_games/dark_souls/42411_dark_souls.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `news` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `news`, `date`) VALUES
(3, 'Harvest Moon Rises over Skytree Village', '<p>Natsume announced a new title in its <em>Harvest Moon</em> farming sim series. <a href="/games/harvest/hmskytree/hmskytree.html"><em>Harvest Moon: Skytree Village</em></a> sees the series return to the Nintendo 3DS following <a href="/games/harvest/hmseeds/hmseeds.html"><em>Harvest Moon: Seeds of Memories</em></a>&#39; release for PC, Nintendo Wii U, iOS, and Android. A release date has not been announced, but the game will be playable at this month&#39;s E3.</p>\r\n\r\n<p><em>Skytree Village</em> takes place in a land known as the Oasis of the Harvest Goddess, where the titular village bustled thanks to its lush lands. However, the Harvest Goddess&#39; power in waning, making Skytree Village&#39;s land more barren. Players are tasked with reviving the seven Skytrees that grant the goddess her power and reverse the village&#39;s fortunes. As in other titles, players can choose to play as a male or female farmer, with a selection of bachelorettes and bachelors available to start a family with.</p>\r\n', '2016-06-03 06:53:46'),
(4, 'Black Rose Valkyrie opening movie', '\r\n				<p class="aligncenter"><img src="http://gematsu.com/wp-content/uploads/2016/06/Black-Rose-Valkyrie-Opening-Movie.jpg" alt="Black Rose Valkyrie" class="alignnone size-full wp-image-186686" srcset="http://gematsu.com/wp-content/uploads/2016/06/Black-Rose-Valkyrie-Opening-Movie.jpg 600w, http://gematsu.com/wp-content/uploads/2016/06/Black-Rose-Valkyrie-Opening-Movie-400x225.jpg 400w, http://gematsu.com/wp-content/uploads/2016/06/Black-Rose-Valkyrie-Opening-Movie-280x158.jpg 280w" sizes="(max-width: 600px) 100vw, 600px" /></p>\r\n<p>Compile Heart has released the opening movie for <em>Black Rose Valkyrie</em>, its upcoming PlayStation 4 RPG, featuring the theme song &#8220;Duality&#8221; by Sayaka Sasaki. <span id="more-186685"></span></p>\r\n<p><em>Black Rose Valkyrie</em> was <a href="http://gematsu.com/2016/05/black-rose-valkyrie-delayed-july-21-japan">recently delayed</a> to July 21 in Japan. If you missed it, catch our latest big update on the game <a href="http://gematsu.com/2016/05/black-rose-valkyrie-details-battle-system">here</a>.</p>', '2016-06-04 01:07:08'),
(5, 'Atelier Sophie Arrives with Videos', '<p><a href="/games/atelier/asoph/asoph.html"><em>Atelier Sophie: The Alchemist of the Mysterious Book</em></a> is now available in North America, with its European release to follow on Friday, and publisher Koei Tecmo has released a new set of videos to note the occasion. Along with the traditional launch trailer, the company also released two character introduction videos along with some doll-creation gameplay footage, all of which can be viewed below.</p>\r\n\r\n<p><em>Atelier Sophie</em> is the latest title in developer Gust&#39;s long-running crafting-based series. The game stars Sophie Neuenmuller, who <!--StartFragment-->comes across Plachta, a mysterious book who transforms into a girl and becomes Sophie&#39;s alchemy teacher. <em>Atelier Sophie</em> is available physically and digitally for PlayStation 4 and digitally-only for PlayStation Vita.<!--EndFragment--></p>\r\n\r\n<p style="text-align:center"><br />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/w0fCW9R9hA8" width="560"></iframe></p>\r\n\r\n<p style="text-align:center"><br />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/UzR8FSC2MbU" width="560"></iframe></p>\r\n\r\n<p style="text-align:center"><br />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/DS94A5ydANw" width="560"></iframe></p>\r\n\r\n<p style="text-align:center"><br />\r\n<iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/N7_ABhNk9PU" width="560"></iframe></p>\r\n\r\n<p style="text-align:right"><br />\r\n<a href="https://twitter.com/share">Tweet</a></p>', '2016-06-09 03:38:40'),
(6, 'Injustice 2 gameplay world premiere set for June 11', '<div class="tagline">See it at the Mortal Kombat X eSports Finals.</div>\r\n\r\n			<!-- Post Content -->\r\n			<div class="entry">\r\n				<p class="aligncenter"><img kioskedhash_production="10635_872e62f0_0710496a" src="http://gematsu.com/wp-content/uploads/2016/06/Injustice-2-Gameplay-Premiere-June-11-Ann.jpg" alt="Injustice 2" class="alignnone size-full wp-image-187296" srcset="http://gematsu.com/wp-content/uploads/2016/06/Injustice-2-Gameplay-Premiere-June-11-Ann.jpg 600w, http://gematsu.com/wp-content/uploads/2016/06/Injustice-2-Gameplay-Premiere-June-11-Ann-400x225.jpg 400w" sizes="(max-width: 600px) 100vw, 600px"><div id="kskd137856" style="position: relative; display: none; width: 0px; height: 0px; clear: both;" class="kskdDiv kskdCls"><div data-kioskid="137856" style="position: absolute; overflow: hidden; pointer-events: all; left: 0px; top: -338px; width: 600px; height: 338px;" class="kskdDiv"><div style="z-index: 11; transform-origin: 0% 100% 0px; visibility: visible; display: block; position: absolute; bottom: -74.1758px; left: 0px; margin-bottom: 0px; width: 728px ! important; height: 90px ! important; transform: scale(0.824176);" class="kskdDiv"><iframe data-kioskid="137856" scrolling="no" style="max-width: 100% ! important; width: 100%; height: 100%; overflow: hidden;" align="top" frameborder="0"></iframe></div><div style="z-index: 10; transform-origin: 0% 100% 0px; visibility: visible; display: block; position: absolute; bottom: -74.1758px; left: 0px; margin-bottom: 0px; width: 728px ! important; height: 90px ! important; transform: scale(0.824176);" class="kskdDiv"><iframe data-kioskid="137856" scrolling="no" style="max-width: 100% ! important; width: 100%; height: 100%; overflow: hidden;" align="top" frameborder="0"></iframe></div><div style="z-index: 5; position: absolute; bottom: 0px; left: 0px; right: 0px; height: 74.1758px;" class="kskdDiv kskdVis"></div></div></div></p>\r\n<p>The first gameplay footage of <em>Injustice 2</em> will premiere live on June 11 at the <em>Mortal Kombt X</em> eSports Finals on Twitch, Warner Bros. and NetherRealm Studios <a href="https://twitter.com/InjusticeGame/status/740935918018822144" target="_blank">announced</a>. <span id="more-187295"></span></p>\r\n<p><em>Injustice 2</em> is due out for PlayStation 4 and Xbox One in 2017. If you missed it, <a href="http://gematsu.com/2016/06/injustice-2-announced-ps4-xbox-one">catch the announcement story here</a>.</p>', '2016-06-10 04:14:49'),
(8, 'Mary Skelter details Chishiki Girls', '<div class="tagline">The girls with the names of fairy-tale princesses.</div>\r\n\r\n			<!-- Post Content -->\r\n			<div class="entry">\r\n				<p class="aligncenter"><img kioskedhash_production="10635_4453ef44_607eeab4" src="http://gematsu.com/wp-content/uploads/2016/06/Mary-Skelter_06-08-16.jpg" alt="Divine Prison Tower: Mary Skelter" class="alignnone size-full wp-image-187179" srcset="http://gematsu.com/wp-content/uploads/2016/06/Mary-Skelter_06-08-16.jpg 600w, http://gematsu.com/wp-content/uploads/2016/06/Mary-Skelter_06-08-16-400x225.jpg 400w, http://gematsu.com/wp-content/uploads/2016/06/Mary-Skelter_06-08-16-280x158.jpg 280w" sizes="(max-width: 600px) 100vw, 600px"><div id="kskd2638151" style="position: relative; display: block; width: 0px; height: 0px; clear: both;" class="kskdDiv kskdCls"><div data-kioskid="2638151" style="position: absolute; overflow: hidden; pointer-events: all; left: 0px; top: -338px; width: 600px; height: 338px;" class="kskdDiv"><div style="z-index: 11; transform-origin: 0% 100% 0px; visibility: visible; display: block; position: absolute; bottom: -53.0217px; left: 0px; margin-bottom: 0px; width: 728px ! important; height: 90px ! important; transform: scale(0.824176);" class="kskdDiv"><iframe data-kioskid="2638151" scrolling="no" style="max-width: 100% ! important; width: 100%; height: 100%; overflow: hidden;" align="top" frameborder="0"></iframe></div><div style="z-index: 10; transform-origin: 0% 100% 0px; visibility: visible; display: block; position: absolute; bottom: 0px; left: 0px; margin-bottom: 0px; width: 728px ! important; height: 90px ! important; transform: scale(0.824176);" class="kskdDiv"><iframe data-kioskid="2638151" scrolling="no" style="max-width: 100% ! important; width: 100%; height: 100%; overflow: hidden;" align="top" frameborder="0"></iframe></div><div style="height: 18px; width: 97px; position: absolute; overflow: hidden; right: 0px; opacity: 0.00340838; bottom: 20.9783px;" data-komp-komponent-id="u51uhe25" class="kskdDiv"><a data-komp-id="close" style="display:block;height:18px;width:18px;position:absolute;top:0px;cursor:pointer;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAMAAAC7IEhfAAABI1BMVEUAAAAAAAAAAAAAAAAAAAAAAACQkJCRkZGOjo6Pj4+QkJCRkZGLi4uRkZGSkpKTk5OUlJSIiIiJiYmKioqMjIyRkZGIiIiBgYGBgYFra2taWlpbW1tbW1tcXFxdXV1gYGBhYWFiYmJjY2NkZGRlZWVmZmbFxcXGxsbFxcWUlJSVlZWQkJCQkJD19fXb29vv7+/T09Pk5OTm5ubo6Ojp6enr6+vz8/P09PT29vb4+Pj5+fn6+vrh4eHi4uLj4+Pk5OTm5ubn5+fh4eHi4uLj4+Pk5OTm5ubn5+fr6+vt7e3v7+/x8fHy8vL09PT29vbm5ub+/v7m5ubn5+fo6Ojq6urs7Ozt7e3v7+/x8fHz8/P19fX39/f4+Pj6+vr8/Pz9/f3+/v5T3cwbAAAAUXRSTlMzPT5HSF1dXV5eXl5fX19fX2BgYGBgYWdof4KCg4ODg4ODg4OEhIaGh52eo6Td3t/j9PT09PT09PT09PT19fX19fX29vb29vb29vb29vb2/v7cj7FhAAABDklEQVQYGe3BVVfCABgG4Pebw1aUWeCYMRGLbrCTjpWx4v//Cnd2OFxt41oPz4O5fyWZWsLUVioJHxfDcWMRE+HGeHgObxnbtutrcIXrtm1n4C3atyyrtgrHZs2yrH4U3phEzzTN6gqwUTVNs5dg4IM56xqGUVnerRiG0RUZ+GLEjq7r5bKu6x2REIBO2z+u9jEhEJ20vh2tI8IMB80vR3MfM+yUPl2ldQTiipqmPX1omlbkEIArqKr6KAjvqqoWOPiK5BVFeRCIhDdFUfIR+NjLybJ8HyeA4q+yLOe24S0tSdLdIcFB/IskSWl4uxqMbmMEF/HPo8ElvLE32Rhhgvjs9QJ8sCHCFIVYzP0Bv8TkMV6N/MAsAAAAAElFTkSuQmCC) !important;background-repeat:no-repeat !important;background-size:18px 18px;right:0px" href="#" data-komp-komponent-id="semlx35r" class="kskdDiv"></a><a style="display:block;width:79px;height:18px;position:absolute;top:0px;background-image:url(data:image/png;base64,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) !important;background-repeat:no-repeat !important;background-size:auto 100%;right:18px" target="_blank" href="http://page.kiosked.com/advertising-automation-platform" data-komp-id="logo" data-komp-komponent-id="u51uhe25" class="kskdDiv"></a></div><div style="z-index: 5; position: absolute; bottom: 0px; left: 0px; right: 0px; height: 74.1758px;" class="kskdDiv kskdVis"></div></div></div></p>\r\n<p>Compile Heart has updated the <a href="http://www.compileheart.com/mary-skelter/" target="_blank">official website</a> for <em>Divine Prison Tower: Mary Skelter</em>, its upcoming PS Vita dungeon RPG, with new details on the game’s Chishiki Girls, and three new screenshots. <span id="more-187178"></span></p>\r\n<p>Get the information below.</p>\r\n<blockquote><p><strong>Chishiki Girls</strong></p>\r\n<p>Inside the living prison called “Jail,” extremely rare young girls are born. Their physical capabilities surpass those of normal humans, and each has special abilities.</p>\r\n<p>Moreover, each girl’s name is associated with women of “fairy-tales.” However, the reason for this is still unknown…</p>\r\n<p>The protagonist, Jack, is one of the few “Chishiki Boys” that appears similar to the Chishiki Girls.</p>\r\n<p><strong>Chishiki Girls Squad</strong></p>\r\n<p>In order to counter Jail, an organization known as the “Dawn Liberation Front” was formed. The Chishiki Girls gathered to join the organization are known as the “Chishiki Girls Squad.”</p>\r\n<p>The members that belong to the organization mainly wear black uniforms. Their main activities consist of protecting the people living in fear of the ominous monsters known as “Marchen” each day, and rescuing those trapped inside the prison.</p>\r\n<p>The Chishiki Girls Squad now has another goal as well. To escape from Jail.</p></blockquote>\r\n<p>If you missed them, previous updates detailed <a href="http://gematsu.com/2016/06/mary-skelter-mad-nightmare-trailer-blood-skelter-mode-protagonist-actions-three-desires-details">Blood Skelter mode, the protagonist’s actions, the three major desires</a>, <a href="http://gematsu.com/2016/05/mary-skelter-details-battle-basics">the basics of battle</a>, <a href="http://gematsu.com/2016/04/mary-skelter-details-nightmare-battles">Nightmare Battles</a>, characters <a href="http://gematsu.com/2016/04/mary-skelter-details-story-princess-kaguya-rapunzel">Princess Kaguya and Rapunzel</a>, <a href="http://gematsu.com/2016/04/mary-skelter-details-thumbelina-snow-white-sleeping-beauty">Thumbelina, Snow White, and Sleeping Beauty</a>, as well as <a href="http://gematsu.com/2016/04/mary-skelter-details-setting-characters-first-screenshots">the setting, and characters Jack, Alice, and Little Red Riding Hood</a>.</p>\r\n<p><em>Divine Prison Tower: Mary Skelter</em> is due out in Japan on October 13.</p>', '2016-06-10 04:21:30'),
(9, 'Another Touhou RPG Heads West', 'Soon after XSEED Games <a href="/news/Q2-2016/060616a.html">announced</a> that it will be releasing <a href="/games/other/ps4/touhouscar/touhouscar.html"><em>Touhou: Scarlet Curiosity</em></a> in North America, NIS America announced that it will also be releasing a <!--StartFragment--><em>doujin</em><!--EndFragment--> <em>Touhou</em> RPG in English. <em><a href="/games/touhou/touhougw/touhougw.html">Touhou Genso Wanderer</a></em> is a roguelike set in the <em>Touhou</em> universe, with NIS America releasing the PlayStation 4 and PlayStation Vita title in North America and Europe in early 2017.</p>\r\n\r\n<p>Originally released in Japan as <em>Fushigino Gensokyo: The Tower of Desire</em>, the game sees players taking control of Reimu, the Hakurei Shrine Maiden. While visiting Rinnosuke Morichika at his shop, she touches a golden sphere that causes a tower to appear in place of his shop and the population of Gensokyo to become clones that attack on sight. Reimu sets out to resolve the incident, joined by sage-in-training Futo Mononobe. The game features various other characters from the <em>Touhou </em>universe, as well as a special item fusion system.</p>\r\n\r\n<p style="text-align:center"><br>\r\n<!--StartFragment--><a href="http://rpgamer.com/games/touhou/touhougw/screens/touhougw1.jpg"><img src="http://rpgamer.com/games/touhou/touhougw/screens/thumbs/touhougw1-thumb.jpg" style="height:100px; width:130px"></a><!--EndFragment--> <!--StartFragment--><a href="http://rpgamer.com/games/touhou/touhougw/screens/touhougw2.jpg"><img src="http://rpgamer.com/games/touhou/touhougw/screens/thumbs/touhougw2-thumb.jpg" style="height:100px; width:130px"></a><!--EndFragment--> <!--StartFragment--><a href="http://rpgamer.com/games/touhou/touhougw/screens/touhougw3.jpg"><img src="http://rpgamer.com/games/touhou/touhougw/screens/thumbs/touhougw3-thumb.jpg" style="height:100px; width:130px"></a><!--EndFragment--> <!--StartFragment--><a href="http://rpgamer.com/games/touhou/touhougw/screens/touhougw4.jpg"><img src="http://rpgamer.com/games/touhou/touhougw/screens/thumbs/touhougw4-thumb.jpg" style="height:100px; width:130px"></a><!--EndFragment--></p>\r\n\r\n<p style="text-align:center"><br>\r\n<iframe allowfullscreen="" src="https://www.youtube.com/embed/BdcJPlXFpzE" frameborder="0" height="315" width="560"></iframe></p>\r\n\r\n<p style="text-align:right"><br>\r\n', '2016-06-10 04:21:30'),
(10, 'The Real Stories Behind E3''s Glossy Game Demos', '<p class="first-text">You only get one chance to make a first impression, and for many games, that happens at E3. The annual mega show is nearly upon us, and developers are spending days and nights putting together flashy demos to convince us to open our wallets. What&rsquo;s real? What&rsquo;s fake? Maybe both? I asked some developers to find out.</p>\r\n<p><em>This story originally appeared June 9, 2015.</em></p>\r\n<p>&ldquo;Do not underestimate how much planning goes into an advertising campaign for a AAA video game,&rdquo; said <em>Tomb Raider</em> reboot level designer Andrew Dovichi.</p>\r\n<div class="js_ad-mobile-dynamic js_ad-dynamic">&nbsp;</div>\r\n<p>Dovichi worked on <em>Tomb Raider</em>&rsquo;s appearance at Microsoft&rsquo;s 2012 press conference, which, despite all the work involved, he was incredibly thankful to be a part of.</p>\r\n<p>&ldquo;If devs don&rsquo;t think it is worth the effort,&rdquo; he said, &ldquo;then they likely haven&rsquo;t gotten to experience seeing all of the positive buzz surrounding the game they&rsquo;ve spent years working in secret on finally being shown to the world.&rdquo;</p>\r\n<p class="p1">Several developers I spoke to for this story asked to remain anonymous because they weren&rsquo;t authorized by their companies to talk about E3 demos.</p>\r\n<p>Many creators I talked to shared this feeling: it&rsquo;s usually worth the pain, suffering, and long nights to watch people ooo and ahh on the industry&rsquo;s biggest stage, when it feels like the world&rsquo;s watching. That&rsquo;s assuming it goes according to plan, which is not always the case.</p>\r\n<p>A few days before E3 2007, Harmonix designer Dan Teasdale awoke from a nightmare. His project, a little game called <em>Rock Band</em>, was set to premiere at Microsoft&rsquo;s press conference, but he worried it would all go terribly wrong. How? The band-centric music game would be performed live at the event by Harmonix staff and then-Microsoft executive Peter Moore. But the demo had a notable flaw: it was possible to accidentally pause the game while playing.</p>\r\n<div class="js_ad-mobile-dynamic js_ad-dynamic">&nbsp;</div>\r\n<p>&ldquo;It might be worth calling that out to him [Moore], even if it&rsquo;s only so I can get some sleep before Tuesday,&rdquo; Teasdale wrote in an email to Harmonix staff a few days before the conference.</p>\r\n<p>Teasdale didn&rsquo;t travel to E3 that year and was sitting on his couch with <em>G4</em> on the TV when it came time for <em>Rock Band</em> to debut. As he predicted, tragedy struck. Moore accidentally paused the game in front of the thousands in attendance and many more watching remotely.</p>\r\n<p>Fast forward to 2:20 to watch the awkwardness play out in real-time.</p>\r\n<p>All Teasdale could do was cringe.</p>\r\n<p>&ldquo;I remember just curling into the fetal position on the couch for a good couple of minutes,&rdquo; he said. &ldquo;In the end, it didn&rsquo;t matter and we won Game of Show, but having all of that anticipation and tension for the first reveal of your game turn into a punchline because we didn&rsquo;t have time to add a &lsquo;disable pause&rsquo; E3 demo cheat was rough.&rdquo;</p>\r\n<p>To Harmonix&rsquo;s credit, the game was being played live, which is more than you can say for some E3 demos. The premiere got screwed up because they were being totally authentic.</p>\r\n<p class="p1">A big stage demo at one of the big E3 press conferences last year, for example, was actually a video, a source told me. [Editor&rsquo;s Note: I previously listed this as Sony&rsquo;s conference. That was a mistake.] The demo wasn&rsquo;t faked, but the people &ldquo;playing&rdquo; on stage weren&rsquo;t controlling anything. (I know what the game actually is, but agreed to keep it private, to protect my source&rsquo;s identity.) They feared the game crashing, which happened the year before to <em>Assassin&rsquo;s Creed IV: Black Flag</em> at Sony&rsquo;s press conference.They didn&rsquo;t want an unfinished game biting them in the ass.</p>\r\n<p>If you don&rsquo;t remember what happened to <em>Assassin&rsquo;s Creed IV: Black Flag</em>, the video is below. I was in the audience when this happened and everyone was uncomfortable. You felt horrible.</p>\r\n<p>You can understand why someone might want to avoid the same level of embarrassment.</p>\r\n<p>&ldquo;Before going on stage they played that demo hundreds of times over the weeks leading up to E3,&rdquo; said a source close to the project. &ldquo;They didn&rsquo;t practice the hand movements&mdash;they knew the demo frame perfect. I watched a few times live at the studio, and they had it down scarily well. However, the game at that point wasn&rsquo;t perfect and if anything was slightly off, it wasn&rsquo;t good enough for the E3 stage [...] It was heartbreaking for them to have to use the video fallback, but the average fan doesn&rsquo;t yet know what an unfinished game should look or feel like.&rdquo;</p>\r\n<p>Multiple developers involved with on-stage demos told me these fallback plans are common practice. Not every game is forced to use a fallback plan, but every game has one of them.</p>\r\n<p>And that&rsquo;s the quandary E3 demos find themselves in: having to present a false reality. The games are not done, yet they must pretend to be. This contradiction vexes even the most experienced developers.</p>\r\n<h2><strong>The Danger of Promising Too Much</strong></h2>\r\n<p>One of the most impressive E3 demos I&rsquo;ve ever seen was <em>BioShock Infinite</em>&rsquo;s presentation from E3 2011. Shocking, suspenseful, thrilling&mdash;it was a masterful introduction to Columbia. About 20 developers at Irrational Games spent months hand-crafting this slick demo, despite the rest of the game being in a state of disarray. (After several delays, it eventually shipped in March 2013.)</p>\r\n<p>Here&rsquo;s a refresher:</p>\r\n<p>&ldquo;The interesting thing was that the game reflected in that demo is not the game that we ultimately shipped,&rdquo; said level designer Shawn Elliott, who contributed to its creation. He&rsquo;s now at Arkane Studios.</p>\r\n<p>What the demo provided for Irrational was an opportunity to crystalize what they wanted to build with <em>BioShock Infinite</em>. There were tentpoles in place already, <a href="http://kotaku.com/5933119/bioshock-infinite-update-multiplayer-modes-cut-gears-maestro-joining-should-fans-worry">but as has been reported in the past</a>, it took a long time for <em>BioShock Infinite</em> to begin coalescing. For Elliott and the rest of the team, an E3 demo was an opportunity to prove the vision to themselves <em>and </em>players.</p>\r\n<p>&ldquo;The studio, led by Ken [Levine, head of Irrational], really knew that we wanted to use every single minute of trailer time&mdash;of that demonstration time&mdash;to communicate something significant about the game,&rdquo; said Elliott. &ldquo;And also to communicate it to ourselves.&rdquo;</p>\r\n<p>Just about everything in that demo was highly scripted. In other words, while someone was technically playing the game, they weren&rsquo;t doing any improvising. They wanted to show the game off in a very specific way. Plus, at that point in development, that was the only option.</p>\r\n<p>&ldquo;AI [artificial intelligence], for instance, was just atrocious,&rdquo; he said. &ldquo;It was ungodly, unbelievably bad at that point in time. If you just let them loose, it would have been catastrophic.&rdquo;</p>\r\n<p>Scripting becomes a form of development &ldquo;duct tape,&rdquo; a phrase that was uttered to me several times by various game makers during my reporting for this story. Games&mdash;even those that ultimately turn out to be great&mdash;are broken for the vast majority of development, often coming together at the last second. Scripting is a way to compensate for game systems that haven&rsquo;t fully matured quite yet. At E3, some games may not ship for several months yet. In other cases, they may be years off.</p>\r\n<p>To get a better idea of how this works, let&rsquo;s go underneath the hood of an E3 demo. It&rsquo;s been a few years since the humorous action series <em>Destroy All Humans!</em> was shown, but I was able to get my hands on the game&rsquo;s E3 planning documents. These outline what the game&rsquo;s developer, Pandemic, had to build for the demo, and what the presenters were being asked to do while showing it.</p>\r\n<p>A document detailing every beat of the E3 demo is <a href="https://www.scribd.com/doc/268181756/Destroy-All-Humans-E3-Presenter-v3" target="_blank" rel="noopener">available for your perusal right here</a>, and you can even compare it to the <em>actual</em> demo of <em>Destroy All Humans! </em>from E3 2004. While it&rsquo;s not exactly word-for-word, there are definitely lines lifted from this script, and it follows the same flow.</p>\r\n<p>The proper audio kicks in around 1:30.</p>\r\n<p>You can go deeper, too. Want to know every animation that needed to be built for the demo? <a href="https://www.scribd.com/doc/268181757/Destroy-All-Humans-E3-v2-Animations" target="_blank" rel="noopener">Read this document.</a> Want to read the in-game script the developers used to build the demo? <a href="https://www.scribd.com/doc/268181759/Destroy-All-Humans-E3" target="_blank" rel="noopener">Read this.</a></p>', '2016-06-10 19:34:35'),
(11, 'Report: Franky Gabriel', '<p>With this, I conclude that Franky Gabriel was a leader in the afrikaan''s politics, especially concerning the jews.</p>', '2016-06-13 04:17:13'),
(12, 'Kokoro 2nd Game', '<p>Kokoro, the Nest of God will come out soon.</p>\r\n<p><canvas id="netbeans_glasspane" style="position: fixed; top: 0px; left: 0px; z-index: 50000; pointer-events: none;" width="1069" height="100"></canvas></p>', '2016-06-13 04:53:08'),
(13, 'Atelier Firis first details, screenshots', '<p class="aligncenter" style="font-family: Arial, Helvetica, sans-serif; font-size: 16px;">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_Top.jpg</p>\r\n<p><img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_Top.jpg" sizes="(max-width: 600px) 100vw, 600px" srcset="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_Top.jpg 600w, http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_Top-400x225.jpg 400w, http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_Top-280x158.jpg 280w" alt="Atelier Firis: The Alchemist of the Mysterious Journey" /></p>\r\n<p>&nbsp;</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 16px;">Gust has shared the first official information and screenshots on&nbsp;<em>Atelier Firis: The Alchemist of the Mysterious Journey</em>, its&nbsp;<a style="color: #005382; font-weight: bold; text-decoration: none;" href="http://gematsu.com/2016/05/atelier-firis-announced-ps4-ps-vita">newly announced</a>&nbsp;<em>Atelier</em>&nbsp;game due out for PlayStation 4 and PS Vita this fall in Japan.<span id="more-186212"></span></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 16px;">Get the information below.</p>\r\n<blockquote style="font-family: Arial, Helvetica, sans-serif; font-size: 16px;">\r\n<p><strong>â?  Journey a Mysterious New World</strong></p>\r\n<p>After launching&nbsp;<em>Atelier Sophie: The Alchemist of the Mysterious Book</em>&nbsp;last year, Gust is aiming at&nbsp;a new standard for the&nbsp;<em>Atelier</em>&nbsp;series.</p>\r\n<p>The next&nbsp;<em>Atelier</em>&nbsp;is set in a world where players can unravel&nbsp;a story all their own. In order to realize this goal, the theme of this new game is &ldquo;journey.&rdquo;</p>\r\n<p>The protagonist of this game is an innocent girl who has never left her town and longs to see the outside world. One day, thanks to&nbsp;an unexpected opportunity, she comes into contact with alchemy and sets her sights on the&nbsp;world beyond her own.</p>\r\n<p>From great plains to snowy mountains, in this vast world with a variety of faces, the girl will be met with first time wonders&nbsp;and discoveries, as well as face various challenges.</p>\r\n<p>How will this girl, with alchemy by her side, face these challenges? There is no single answer. The story will change, little by little, based on the girl&rsquo;s decisions.</p>\r\n<p>The player will be the guide to what road the girl will take and how the story will unfold. By all means, please enjoy the new world of the&nbsp;<em>Mysterious</em>&nbsp;series.</p>\r\n<p><strong>â?  Story</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_001.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_001.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>A remote region full of various &ldquo;mysteries.&rdquo; In its&nbsp;corner, in the middle of the wasteland, is a small town.</p>\r\n<p>It is a town where those who work as miners nestle close to each other. It is an underground city formed&nbsp;within a hollowed out, rocky mountain. Because of the environment, the winds that tell the change of season do not blow, and even the sunlight only shines in faintly from crevices between the rocks.</p>\r\n<p>A girl lives together in this town with glowing crystals and ores.</p>\r\n<p>This girl had a dream&mdash;a modest dream to freely walk the outside world. But it was also an unexpected wish come true.</p>\r\n<p>Preventing the girl from her dream is&nbsp;a huge iron door that blocks up entry to the town. Only a select few are allowed to pass through the door, and it is too heavy for the slender-armed girl to move.</p>\r\n<p>Keeping her desire to visit the outside world to herself, she watches the door that doesn&rsquo;t open each day. However, that every day suddenly comes to an end.</p>\r\n<p>One day, the girl comes into contact with the power of alchemy. This, what could be called fated, meeting invites the girl on a journey.</p>\r\n<p>A mysterious journey that continues on without end&mdash;</p>\r\n<p><strong>â?  Characters</strong></p>\r\n<p><strong>Firis Mistlud</strong></p>\r\n<ul>\r\n<li>Age: 15</li>\r\n<li>Job: Alchemist</li>\r\n<li>Illustrated by: Yuugen</li>\r\n<li>Voiced by: Kaede Hondo</li>\r\n</ul>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_002.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_002.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>The protagonist. She is a girl who lives in an underground mining town enclosed by a giant door. She has a special ability that lets her find out where ores are buried, and works as a miner&nbsp;while taking advantage of that ability.</p>\r\n<p>Because she has never left her town, she has a strong, dream-like yearning for the outside world.</p>\r\n<p>Shes gets a feel for alchemy after a certain opportunity, and uses it to journey the vast world. She has a calm and quiet personality, but is strong at heart.</p>\r\n<p><strong>Liane Mistlud</strong></p>\r\n<ul>\r\n<li>Age: 18</li>\r\n<li>Job: Hunter</li>\r\n<li>Illustrated by: NOCO</li>\r\n<li>Voiced by: Azusa Sato</li>\r\n</ul>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_003.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_003.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>Firis&rsquo; older sister, who lives in the undeground mining town. She is an excellent hunter and one of the select few allowed to leave the town.</p>\r\n<p>She cares deeply for her younger sister Firis, and is known throughout the town for how she dotes on her.</p>\r\n<p>She understands Firis&rsquo; feelings of wanting to go outside the town, and is secretly grieving&nbsp;her younger sister&rsquo;s current circumstances.</p>\r\n<p><strong>â?  Liane Tags Along</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_004.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_004.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>Firis, who is unable to freely come and go in her hometown deep underground, wants to visit the outside world, and her desire grows stronger each day. Her only connections to the outside world are the adventure book that she reads intently&nbsp;and her older sister Liane, who is the only one allowed to go outside.</p>\r\n<p>To make her way outside, Firis begins studying alchemy. And thanks to the support of Liane, who understands the feelings of her younger sister, she is soon permitted to leave town, albeit with a certain condition. That condition: &ldquo;Become a full-fledged alchemist in one year.&rdquo; Worried about her younger sister, Liane tags along, and Firis&rsquo; first ever journey begins.</p>\r\n<p><strong>â?  Journey the&nbsp;<em>Atelier</em>&nbsp;Series&rsquo; Biggest Ever World</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_005.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_005.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>The outside world that Firis and company will travel is endlessly vast, and a single field can connect areas such as a port town, river, and rocky mountain. The warm setting of&nbsp;<em>Atelier</em>&nbsp;is still the same. Together with Firis, you can run about these grand scale fields never before seen in the series.</p>\r\n<p><strong>â?  A New Outfit for Each Location</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_006.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_006.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>While traveling the world&rsquo;s various locations, Firis will visit areas with a variety of characteristics, whether it&rsquo;s intense cold or humidity. Firis&rsquo; outfit will change to suit the climate and local nature of that region. Her various appearances will make the journey even more enjoyable.</p>\r\n<p><strong>â?  Firis&rsquo; Choices Affect the World</strong></p>\r\n<p>During Firis&rsquo; journey, she&rsquo;ll happen across a variety of incidents. And she can overcome them in a variety of ways. There is not necessarily a single solution. Depending on how Firis&rsquo; chooses to address them, the story, and sometimes even the fields, will change.</p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_007.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_007.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p><em>&mdash;Oh no, a broken bridge! What will Firis do?</em></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_008.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_008.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p><em>&mdash;To fix the bridge, Firis can collect stones as materials and take advantage of her mining experience. She can use those stones to make building stones through alchemy and pass them on to a carpenter who will complete the bridge.</em></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_009.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_009.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p><em>&mdash;Otherwise, Firis can find another way across the river. By walking around, she&rsquo;ll discover a suspicious cave. It seems passing through here will go beyond the valley, but&hellip;</em></p>\r\n<p><strong>â?  The Traveler&rsquo;s Bonfire</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_010.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_010.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>In&nbsp;<em>Atelier Firis</em>, rather than focus on a single town, players will continue to travel across a great number of fields. So if you want to perform syntheses while traveling, you&rsquo;ll need to use a &ldquo;Traveler&rsquo;s Bonfire,&rdquo; which is available in various places. Here, Firis can also put up a tent.</p>\r\n<p><strong>â?  Synthesis, Material Collection, and Battles</strong></p>\r\n<p>Players can use the materials gathered&nbsp;in the fields to perform syntheses in the&nbsp;atelier. Grow as a traveler by facing against attacking monsters and seeking out special materials in unexplored regions.</p>\r\n<p><strong>Synthesis</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_011.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_011.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>Synthesis, which has become the representative element of the&nbsp;<em>Atelier</em>&nbsp;series, will see players combining materials like a puzzle to create any item in their own way.</p>\r\n<p>There is also a new type of synthesis called &ldquo;Superdreadnought Synthesis.&rdquo; In the world of&nbsp;<em>Atelier Firis</em>, this cannot be compared to standard synthesis. As the name suggests, the things you can synthesize are superdreadnought. This ignores the size of your alchemy pot, making it possible to create amazing things. Stay tuned for more information.</p>\r\n<p><strong>Material Collection</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_012.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_012.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>There are a large number of ingredients to be&nbsp;used during synthesis that can be found in the fields. Hit the tree with your staff, or break a rock with an item&hellip; Look everywhere in the field to discover new materials.</p>\r\n<p><strong>Battles</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_013.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_013.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>You&rsquo;ll also be attacked by monsters during material collection. Use the items you&rsquo;ve synthesized and the power of your allies to repel these enemies. You might even&nbsp;get some unexpected materials from these monsters.</p>\r\n<p><strong>â?  First-Print Bonus and Special Editions</strong></p>\r\n<p><strong>First-Print Bonus</strong></p>\r\n<p>First-print copies of&nbsp;<em>Atelier Firis: The Alchemist of the Mysterious Journey</em>&nbsp;will include two outfits for Firis.</p>\r\n<p><strong>Premium Box</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_014.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_014.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>The Premium Box edition of&nbsp;<em>Atelier Firis</em>&nbsp;includes:</p>\r\n<ul>\r\n<li>A copy of the game</li>\r\n<li><em>Atelier Firis</em>&nbsp;visual book</li>\r\n<li><em>Atelier Firis</em>&nbsp;soundtrack CD</li>\r\n<li>Special-drawn B3 cloth poster</li>\r\n<li>Three&nbsp;<em>Atelier Firis</em>&nbsp;clear art cards</li>\r\n<li>Product code to download a Firis exclusive outfit and exclusive theme</li>\r\n</ul>\r\n<p><strong>Special Collection Box</strong></p>\r\n<p class="aligncenter">&nbsp;</p>\r\n<p>image: http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_015.jpg</p>\r\n<img class="alignnone size-full wp-image-186213" src="http://gematsu.com/wp-content/uploads/2016/05/Atelier-Firis_05-29-16_015.jpg" alt="Atelier Firis: The Alchemist of the Mysterious Journey" />\r\n<p>&nbsp;</p>\r\n<p>The Special Collection Box edition of&nbsp;<em>Atelier Firis</em>&nbsp;includes:</p>\r\n<ul>\r\n<li>A copy of the game</li>\r\n<li><em>Atelier Firis</em>&nbsp;visual book</li>\r\n<li><em>Atelier Firis</em>&nbsp;soundtrack CD</li>\r\n<li>Special-drawn B3 cloth poster</li>\r\n<li>Three&nbsp;<em>Atelier Firis</em>&nbsp;clear art cards</li>\r\n<li>Product code to download a Firis exclusive outfit and exclusive theme</li>\r\n<li>Nine crystal paperweight cubes</li>\r\n<li>Special Collection Box special-drawn B2 cloth poster</li>\r\n<li>Product code to download a Special Collection Box special theme</li>\r\n</ul>\r\n<p><strong>â?  Niconico Broadcast</strong></p>\r\n<p><em>Atelier Firis</em>&nbsp;will make its video debut on June 13 during a Niconico broadcast. Details will be shared soon via the&nbsp;<a style="color: #005382; font-weight: bold; text-decoration: none;" href="http://social.gust.co.jp/newproject/" target="_blank">official website</a>.</p>\r\n</blockquote>\r\n<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 16px;"><br />Read more at http://gematsu.com/2016/05/atelier-firis-first-details-screenshots#QFWhkoF2brkct4pf.99</span></p>\r\n<p><canvas id="netbeans_glasspane" style="position: fixed; top: 0px; left: 0px; z-index: 50000; pointer-events: none;" width="1069" height="100"></canvas></p>', '2016-06-13 05:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `price` int(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `url`, `price`, `category`, `date`) VALUES
(1, 'Disgaea: Hour of Darkness', 'http://s.emuparadise.org/fup/up/150493-Disgaea_-_Hour_of_Darkness_(USA)_(En,Ja)-1.jpg', 500000, 'Tactical RPG', '2003-01-30'),
(2, 'Disgaea 5: Alliance of Vengeance', 'http://www.ricedigital.co.uk/wp-content/uploads/2014/10/disgaea5-box-ps4.jpg', 760000, 'Tactical RPG', '2015-03-26'),
(3, 'Disgaea 4: A Promise Unforgotten', 'http://vignette1.wikia.nocookie.net/disgaea/images/f/f2/Disgaea_4_US_Cover.jpg/revision/latest?cb=20110717223438&path-prefix=en', 423000, 'Tactical RPG', '2011-02-24'),
(4, 'The Witch and the Hundred Knight', 'http://nisamerica.com/games/witch100/poll/imgs/c3.jpg', 120000, 'Action RPG', '2013-07-25'),
(5, 'Phantom Brave', 'https://upload.wikimedia.org/wikipedia/en/a/a2/Phantom_Brave_cover.jpg', 450000, 'Tactical RPG', '2004-01-22'),
(6, 'Disgaea 3: Absence of Justice', 'http://vignette3.wikia.nocookie.net/disgaea/images/3/31/Disgaea_3_Vita_JP_Cover.png/revision/latest?cb=20131004045320&path-prefix=en', 300000, 'Tactical RPG', '2008-01-31'),
(8, 'Disgaea 2: Cursed Memories', 'http://gamestopplus.com/Image/covers/disgaea-2-cursed-memories/disgaea-2-cursed-memories-cover853109.jpg', 370000, 'Tactical RPG', '2006-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(10) NOT NULL,
  `profile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `profile`) VALUES
(1, '<p style="text-align: center;">This is the profile</p>');

-- --------------------------------------------------------

--
-- Table structure for table `staticelements`
--

CREATE TABLE `staticelements` (
  `id` int(10) NOT NULL,
  `facebooklink` varchar(50) NOT NULL,
  `twitterlink` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `menulocation` int(1) NOT NULL,
  `image1` int(10) NOT NULL,
  `image2` int(10) NOT NULL,
  `image3` int(10) NOT NULL,
  `image4` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staticelements`
--

INSERT INTO `staticelements` (`id`, `facebooklink`, `twitterlink`, `address`, `phone`, `menulocation`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'https://www.facebook.com/NISAmericaInc/', 'https://twitter.com/NISAmerica', 'Jl. Forrs', '0812101112', 0, 3, 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `type`, `lastlogin`) VALUES
(1, 'admin', 'admin', 'Administrator', 'Admin', '2016-06-13 05:01:11'),
(2, 'user', 'user', 'User', 'User', '2016-06-10 20:00:20'),
(3, 'farggo', 'fargg099', 'Brian Fargo', 'User', '2016-06-10 19:46:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staticelements`
--
ALTER TABLE `staticelements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staticelements`
--
ALTER TABLE `staticelements`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
