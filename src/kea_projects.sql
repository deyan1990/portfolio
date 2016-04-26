-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2015 at 10:53 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kea_projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `header` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment_text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `project_id`, `created_at`, `header`, `author`, `email`, `comment_text`) VALUES
(2, 3, '2015-04-03 17:25:22', 'Deyan''s ', 'Deyan', '', 'it is working');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE IF NOT EXISTS `deliveries` (
  `deliveri_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `header` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `reflection` text NOT NULL,
  `likes` int(11) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`deliveri_id`, `module_id`, `header`, `image`, `description`, `reflection`, `likes`, `link`) VALUES
(3, 1, 'Self-portrait', 'IMG_0222.jpg', 'Description: We were supposed to made nice-looking self-portaint by using PhotoShop.', 'Reflection: Watching different tutorials online in order to enhanced our PhotoShop skills.', 0, ''),
(4, 3, 'PHP', 'PHP.png', 'Description: Code a database driven portfolio web site to present all the modules, all productions we made so far.', 'Reflection: Learning the basic PHP language ', 0, ''),
(5, 2, 'Individual character', 'mouse.png', 'Description: We needed to deliver a individual character for our interactive story. ', 'Reflection: For my character I did:\r\n1. Draw the character.\r\n2. Trace him in Illustrator.\r\n3. Colour him.', 10, ''),
(6, 1, 'Illustrator logo', 'Final.png', 'Description: In this project we were supposed to:\r\n1. Draw our logo.\r\n2. Trace it Illustrator.\r\n3. Colour it.', 'Reflection: By doing our personal logo we enhanced our Illustrator skills.', 10, ''),
(8, 2, 'THE Iteractive story', 'Poster.jpg', 'Description: Produce a positive and entertaining fantastical interactive story with whimsical\r\ncharacters and some animations for our target audience of 6 to 8-year-olds.', 'Reflection: 1. The first thing we did was brainstorm ideas for our group name.\r\n2. After that, we made a collage of a possible magical world.\r\n3. Then, we chose which story to base our project on.\r\n4. We spent a few days discussing what our story line would be and how it\r\nwould look like. Then we put the ideas on paper, creating our storyboard. In\r\nour storyboard, we included descriptions of the scenes, along with the\r\ninteractive elements we hoped to accomplish and drew some sketches of our\r\nscenes. This came in handy many times during the project as we referred back\r\nto this constantly, especially when it came time to drawing the background\r\nscenes and remembering which elements we wished to animate. Later we drew some of these scenes on a larger scale, took pictures of them\r\nand then traced them in Illustrator\r\n5. Then we discussed what the characters should look like and everybody drew\r\none character. The first version was without color.\r\n6. Over the course of the project, we improved the characters by adding, deleting\r\nor modifying details, objects, colors, positions, etc.\r\n7. Then we wrote a description of each of the characters and gave them names.\r\n8. We also discussed what the target audience’s user preferences would be.\r\n9. Then we drew the background scenes, uploaded them in HTML and CSS and\r\nanimated the scenes using Javascript and CSS animations.\r\n10. The last thing we did was to create a dialogue script and audio files for each of', 1, 'http://lehmanndesign.dk/pages/interactivestory/scene.html');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL,
  `header` varchar(100) NOT NULL,
  `project_type` varchar(100) NOT NULL,
  `used_skills` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `reflection` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `header`, `project_type`, `used_skills`, `description`, `reflection`, `image`, `module_id`) VALUES
(1, 'Basic Web', 'html, css', 'coding', 'bla bla bla', 'getting better', 'Final.png', 1),
(2, 'Module 2 Interactive Story', 'JavaScript animation', 'Coding', 'nice job a?', 'bla bla', 'mouse.png', 2),
(3, 'Module - 3 (PHP)', 'coding', 'coding, design', 'we used bla bla bla', 'how u got better', 'PHP.png', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`), ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`deliveri_id`), ADD KEY `module_id` (`module_id`), ADD KEY `module_id_2` (`module_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`), ADD KEY `module_id` (`module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `deliveri_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `projects` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
