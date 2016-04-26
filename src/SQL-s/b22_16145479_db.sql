-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Хост: sql303.byethost22.com
-- Време на генериране: 12 юни 2015 в 13:20
-- Версия на сървъра: 5.6.22-71.0
-- Версия на PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `b22_16145479_db`
--

-- --------------------------------------------------------

--
-- Структура на таблица `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `header` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment_text` text NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Ссхема на данните от таблица `comments`
--

INSERT INTO `comments` (`comment_id`, `project_id`, `created_at`, `header`, `author`, `email`, `comment_text`) VALUES
(2, 3, '2015-04-03 17:25:22', 'Deyan''s ', 'Deyan', '', 'it is working'),
(3, 1, '2015-05-08 03:15:19', '', 'deyan', 'deyan14@abv.bg', '1st comment :)'),
(4, 1, '2015-05-08 06:38:54', '', 'Teresa Sorbera', 'TeresaSorbera.traductrice@gmail.com', 'This is a cool site!'),
(5, 1, '2015-05-08 09:00:21', '', 'Matush', 'matush@gmail.com', 'i dont know');

-- --------------------------------------------------------

--
-- Структура на таблица `deliveries`
--

CREATE TABLE IF NOT EXISTS `deliveries` (
  `deliveri_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `header` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `reflection` text NOT NULL,
  `likes` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`deliveri_id`),
  KEY `module_id` (`module_id`),
  KEY `module_id_2` (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Ссхема на данните от таблица `deliveries`
--

INSERT INTO `deliveries` (`deliveri_id`, `module_id`, `header`, `image`, `description`, `reflection`, `likes`, `link`) VALUES
(3, 1, 'Self-portrait', 'IMG_0222.jpg', 'Description: We were supposed to made nice-looking self-portaint by using PhotoShop.', 'Reflection: Watching different tutorials online in order to enhanced our PhotoShop skills.', 0, ''),
(4, 3, 'PHP', 'PHP.png', 'Description: Jonas you could see the development text in my pack file.\r\n\r\n\r\n\r\n	\r\n.', 'Reflection: Learning the basic PHP language ', 0, 'http://download1081.mediafire.com/cx3mtkub1fpg/j7bqqhbzikkayes/TEST.ZIP'),
(5, 2, 'Individual character', 'mouse.png', 'Description: We needed to deliver a individual character for our interactive story. ', 'Reflection: For my character I did:\r\n1. Draw the character.\r\n2. Trace him in Illustrator.\r\n3. Colour him.', 10, ''),
(6, 1, 'Illustrator logo', 'Final.png', 'Description: In this project we were supposed to:\r\n1. Draw our logo.\r\n2. Trace it Illustrator.\r\n3. Colour it.', 'Reflection: By doing our personal logo we enhanced our Illustrator skills.', 10, ''),
(8, 2, 'THE Iteractive story', 'Poster.jpg', 'Description: Produce a positive and entertaining fantastical interactive story with whimsical\r\ncharacters and some animations for our target audience of 6 to 8-year-olds.', 'Reflection: 1. The first thing we did was brainstorm ideas for our group name.\r\n2. After that, we made a collage of a possible magical world.\r\n3. Then, we chose which story to base our project on.\r\n4. We spent a few days discussing what our story line would be and how it\r\nwould look like. Then we put the ideas on paper, creating our storyboard. In\r\nour storyboard, we included descriptions of the scenes, along with the\r\ninteractive elements we hoped to accomplish and drew some sketches of our\r\nscenes. This came in handy many times during the project as we referred back\r\nto this constantly, especially when it came time to drawing the background\r\nscenes and remembering which elements we wished to animate. Later we drew some of these scenes on a larger scale, took pictures of them\r\nand then traced them in Illustrator\r\n5. Then we discussed what the characters should look like and everybody drew\r\none character. The first version was without color.\r\n6. Over the course of the project, we improved the characters by adding, deleting\r\nor modifying details, objects, colors, positions, etc.\r\n7. Then we wrote a description of each of the characters and gave them names.\r\n8. We also discussed what the target audience’s user preferences would be.\r\n9. Then we drew the background scenes, uploaded them in HTML and CSS and\r\nanimated the scenes using Javascript and CSS animations.\r\n10. The last thing we did was to create a dialogue script and audio files for each of', 1, 'http://lehmanndesign.dk/pages/interactivestory/scene.html');

-- --------------------------------------------------------

--
-- Структура на таблица `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `header` varchar(100) NOT NULL,
  `project_type` varchar(100) NOT NULL,
  `used_skills` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `reflection` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Ссхема на данните от таблица `projects`
--

INSERT INTO `projects` (`project_id`, `header`, `project_type`, `used_skills`, `description`, `reflection`, `image`, `module_id`) VALUES
(1, 'Basic Web', 'html, css', 'coding', 'bla bla bla', 'getting better', 'Final.png', 1),
(2, 'Module 2 Interactive Story', 'JavaScript animation', 'Coding', 'nice job a?', 'bla bla', 'mouse.png', 2),
(3, 'Module - 3 (PHP)', 'coding', 'coding, design', 'we used bla bla bla', 'how u got better', 'PHP.png', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
