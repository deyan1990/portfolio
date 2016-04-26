-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2015 at 07:50 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `project_id`, `created_at`, `header`, `author`, `email`, `comment_text`) VALUES
(2, 3, '2015-04-03 17:25:22', 'Deyan''s ', 'Deyan', '', 'it is working :)'),
(3, 2, '2015-05-07 19:57:00', '', 'e3dasd', 'deyan14@abv.bg', 'asdasd');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`deliveri_id`, `module_id`, `header`, `image`, `description`, `reflection`, `likes`, `link`) VALUES
(3, 1, 'Self-portrait', 'IMG_0222.jpg', 'Description: We were supposed to made nice-looking self-portaint by using PhotoShop.', 'Reflection: Watching different tutorials online in order to enhanced our PhotoShop skills.', 0, ''),
(4, 3, 'PHP', 'PHP.png', 'PHP represented something totally new for me. But anyway I signed up for the advanced class to challenge myself to see if I could handle the amount of work and try to learn this language in a different way. During the previous project, we studied JavaScript language, where the browser interprets the script, while in PHP language, it is the server that interprets the script. That is why PHP is called a server-side scripting language. For my project I decided to enhance my personal website by using PHP in order to make it more functional. \n\nI created a modules’ table (called “projects”) which includes the projects I have done in each module, and a table “deliveries” for every delivery that we needed to deliver and a table “comments” in order that people could comment my work. \n\nI decided to use the 3 rows in the projects table as a navigation bar (Basic web, Interactive Story and PHP module).  In my projects’ table I used project id, header, used skills, description, reflection, image and module id. This will be the “daddy” of the deliveries table which are connected in the data base. In the “deliveries” table I put every single project that we needed to deliver so far and this table is the “child” of the “project” table. What is more, the comments’ table is also connected to the deliveries’ table in order that that people could comment in the specific module and not “outside” of the content. \nHowever, the comments’ table is not connected to the main module, which is playing the role of the navigation bar.\n \nAfter I made the tables and the connections, I needed to display the values that they have. That is the point where the actual PHP coding starts. In order to display something, I needed to tell my browser to go there and display this value in that order. For example:  \n$db = new PDO("mysql:host=localhost; dbname=kea_projects", "root","");\n$projects = $db->query("SELECT project_id, header,project_type,used_skills,description,reflection,image FROM projects ORDER BY project_id ASC");\n$deliveries = $db->query ("SELECT * FROM deliveries ORDER BY deliveri_id ASC");\nThis code indicates that my data base is in my local host and it is called “kea_projects” as well as indicating its user name (root) and password (“”). What is more, it selected the specific values that the table has. \nWhat is more, in my code I used a while loop which tells PHP to execute the nested statement repeatedly as long as the while expression evaluates to true. The value of the expression is checked each time at the beginning of the loop, so even if this value changes during the execution of nested statement, execution will not stop until the end of iteration. If the while expression evaluates to false from the very beginning the statement won’t even run once. I used while loop for my comments.\n\nThe issues I got were a lot of spelling mistakes, which I reduced while by doing the code-cademy exercise. Furthermore, I have a problem with uploading my site online because I didn’t know how to upload the database.\n\n\n\n\n	\n', 'Reflection: Learning the basic PHP language ', 0, ''),
(5, 2, 'Individual character', 'mouse.png', 'Description: We needed to deliver a individual character for our interactive story. ', 'Reflection: For my character I did:\r\n1. Draw the character.\r\n2. Trace him in Illustrator.\r\n3. Colour him.', 10, ''),
(6, 1, 'Illustrator logo', 'Final.png', 'Description: In this project we were supposed to:\r\n1. Draw our logo.\r\n2. Trace it Illustrator.\r\n3. Colour it.', 'Reflection: By doing our personal logo we enhanced our Illustrator skills.', 10, ''),
(8, 2, 'THE Iteractive story', 'Poster.jpg', 'Description: Produce a positive and entertaining fantastical interactive story with whimsical\r\ncharacters and some animations for our target audience of 6 to 8-year-olds.', 'Reflection: 1. The first thing we did was brainstorm ideas for our group name.\r\n2. After that, we made a collage of a possible magical world.\r\n3. Then, we chose which story to base our project on.\r\n4. We spent a few days discussing what our story line would be and how it\r\nwould look like. Then we put the ideas on paper, creating our storyboard. In\r\nour storyboard, we included descriptions of the scenes, along with the\r\ninteractive elements we hoped to accomplish and drew some sketches of our\r\nscenes. This came in handy many times during the project as we referred back\r\nto this constantly, especially when it came time to drawing the background\r\nscenes and remembering which elements we wished to animate. Later we drew some of these scenes on a larger scale, took pictures of them\r\nand then traced them in Illustrator\r\n5. Then we discussed what the characters should look like and everybody drew\r\none character. The first version was without color.\r\n6. Over the course of the project, we improved the characters by adding, deleting\r\nor modifying details, objects, colors, positions, etc.\r\n7. Then we wrote a description of each of the characters and gave them names.\r\n8. We also discussed what the target audience’s user preferences would be.\r\n9. Then we drew the background scenes, uploaded them in HTML and CSS and\r\nanimated the scenes using Javascript and CSS animations.\r\n10. The last thing we did was to create a dialogue script and audio files for each of', 1, 'http://lehmanndesign.dk/pages/interactivestory/scene.html'),
(9, 4, 'Logo', 'pushilkata.png', 'The group I was with didn''t like this logo but on the other hand, I like it better than the one we delivered.', '', 0, ''),
(10, 4, 'Poster', 'poster_final.png', 'I create this poster for the front left windol for Display store. This poster will be situated at the top of the windol.', '', 0, ''),
(11, 4, 'Flyer', 'Flyer.png', 'This is the flyer I created for Display. As can see people could leave their contacts in order to resive new information about future sales and events.', '', 1, ''),
(12, 4, 'The site we made for Display', '', '', '', 1, 'http://display.stefanlabaj.tk/'),
(13, 1, 'Documentation link:', '', '', '', 0, 'http://www.mediafire.com/download/4ezkmgdm271mih9/module+1.zip'),
(14, 2, 'Documentation link:', '', '', '', 0, 'http://www.mediafire.com/download/u77extq7j66qg3f/module+2.zip'),
(15, 3, 'Documentation link:', '', '', '', 1, 'http://www.mediafire.com/download/tka2um77mm4rmfl/module+3a.zip'),
(16, 4, 'Documentation link:', '', '', '', 1, 'http://www.mediafire.com/download/2bbpsqzt4gdr9db/module+3b.zip');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `header`, `project_type`, `used_skills`, `description`, `reflection`, `image`, `module_id`) VALUES
(1, 'Basic Web', 'html, css', 'coding', 'bla bla bla', 'getting better', 'Final.png', 1),
(2, 'Module 2 Interactive Story', 'JavaScript animation', 'Coding', 'nice job a?', 'bla bla', 'mouse.png', 2),
(3, 'Module - 3 (PHP)', 'coding', 'coding, design', 'we used bla bla bla', 'how u got better', 'PHP.png', 3),
(4, 'Module 3B - Who are they?', 'Create a new vision for real company.', 'Coding Designing', 'The students were supposed to create new identity for the company. By creating new web - site, business cards, posters, flyers we tried to help Display to enhanced their sales.', 'Students had the chance to work for real company which motivated them to give their best building th', 'pushilkata.png', 4);

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
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `deliveri_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
