-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 12:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `event_id` int(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= pending, 1 =Paid',
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1= present',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = for verification,  1 = confirmed,2= declined',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audience`
--

INSERT INTO `audience` (`id`, `name`, `contact`, `email`, `address`, `event_id`, `payment_status`, `attendance_status`, `status`, `date_created`) VALUES
(2, 'George Wilson', '+18456-5455-55', 'gwilson@sample.com', 'Sample', 1, 1, 0, 1, '0000-00-00 00:00:00'),
(6, 'raghuveer mathur', '', 'raghuveermathur89@gmail.com', '', 6, 1, 0, 1, '2022-03-03 12:05:47'),
(7, 'Shubham Sharma', '9457166210', 'kratossharna1604@gmail.com', 'EN - 19', 5, 1, 0, 1, '2022-03-03 12:36:42'),
(8, 'SAATWIK GOSAIN', '8077024357', 'satwik.gosain@gmail.com', 'ME-20', 5, 1, 0, 1, '2022-03-03 12:40:47'),
(9, 'SAHIL PANDEY', '', 'sahilpandey329@gmail.com', 'EC-21\r\n', 12, 1, 0, 1, '2022-03-03 12:43:19'),
(10, 'KHUSHI MEHROTRA', '', 'khushimehrotra642@gmail.com', 'EC-21', 12, 1, 0, 1, '2022-03-03 12:44:29'),
(11, 'RAGHUVEER MATHUR', '', 'raghuveermathur89@gmail.com', 'EC-21', 12, 1, 0, 1, '2022-03-03 12:45:33'),
(12, 'DEEPAK SHUKLA', '', 'deepakshukla14277@gmail.com', 'EN-21', 12, 1, 0, 1, '2022-03-03 12:46:32'),
(13, 'CHESTHA RAJ', '', 'raj.cheshta2253@gmail.com', 'EC19', 12, 1, 0, 1, '2022-03-03 12:48:54'),
(14, 'YASHASSWEE GANGWAR', '', 'gangwaryashasswee@gmail.com', 'EC-21', 12, 1, 0, 1, '2022-03-03 12:49:50'),
(15, 'SHUBHAM SHARMA', '9457166210', 'kratossharma1604@gmail.com', 'EN-20', 5, 1, 0, 1, '2022-03-03 12:54:02'),
(16, 'AMAN KUMAR SHARMA', '8650919788', 'amansharma5434535@gmail.com', 'EN-20', 6, 1, 0, 1, '2022-03-03 12:55:45'),
(17, 'ISHIKA', '9389085656', 'ishikasingh0551@gmail.com', 'EC-20', 6, 1, 0, 1, '2022-03-03 12:57:02'),
(18, 'ISHIKA', '9389085656', 'ishikasharma0551@gmail.com', 'EC-20', 12, 1, 0, 1, '2022-03-03 12:59:00'),
(19, 'MOHD.HAMMAD', '7668953074', 'hammad534@gmail.com', 'EC-20', 12, 1, 0, 1, '2022-03-03 13:01:38'),
(20, 'VAIBHAV', '7505405195', 'vaibhavR712@gmail.com', 'EC-20', 6, 1, 0, 1, '2022-03-03 13:03:17'),
(21, 'VAIBHAV', '7505405195', 'vaibhavR712@GMAIL.COM', 'EC-20', 12, 1, 0, 1, '2022-03-03 13:04:17'),
(22, 'YASHASSWEE CHAUHAN', '9045721840', 'yashchauhan', 'EN-20', 5, 1, 0, 1, '2022-03-03 13:06:05'),
(23, 'YASHASSWEE CHAUHAN', '9045721840', 'yashchauhan49683@gmail.com', 'EN-20', 12, 1, 0, 1, '2022-03-03 13:08:11'),
(24, 'Akarsh saxena', '9417244025', 'akarshsaxena751@gmail.com', 'EC-20', 12, 1, 0, 1, '2022-03-03 13:09:34'),
(25, 'UTKARSH SAXENA', '9548144288', 'utsaxena489@gmail.com', 'EN-20', 6, 1, 0, 1, '2022-03-03 13:10:55'),
(26, 'LAKSHYA AGNIHOTRI', '', 'lakshya.agni@gmail.com', 'EC-20', 12, 1, 0, 1, '2022-03-03 13:12:58'),
(27, 'SHRUTI SAXENA', '6398722551', 'saxenashruti402@gmail.com', 'B.PHARM', 5, 1, 0, 1, '2022-03-03 13:37:08'),
(28, 'KUNDAN MAURYA', '9548735069', 'kundanmaurya235@gmail.com', 'EN-19', 6, 1, 0, 1, '2022-03-03 14:36:24'),
(29, 'KUNDAN MAURYA', '9548735069', 'kundanmaurya235@gmail.com', 'EN-19', 12, 1, 0, 2, '2022-03-03 14:37:04'),
(30, 'VAIBHAV SAXENA', '9548735069', 'vs1512.nic@gmail.com', 'EN-19', 6, 1, 0, 1, '2022-03-03 14:38:18'),
(32, 'Ayush Pandey', '7068278146', 'pandeyayush63077@gmail.com', 'CS', 6, 1, 0, 1, '2022-03-03 15:38:17'),
(33, 'Md. Ayan Kha', '7078117493', 'ayankhanofficial135@gmail.com', 'CS', 6, 1, 0, 1, '2022-03-03 15:40:22'),
(34, 'Aditya Kumar', '9411280268', 'aditya941180@gmail.com', 'CS', 6, 1, 0, 1, '2022-03-03 15:44:09'),
(35, 'Mohtashim Ali', '8384865874', 'mohtasim220all@gmail.com', 'CS', 6, 1, 0, 1, '2022-03-03 15:46:50'),
(36, 'Mratyunjay Saxena', '9634013477', 'mrityunjaysaxena8859@gmail.com', 'CS', 6, 1, 0, 1, '2022-03-03 15:49:21'),
(37, 'Subroto Chatterjee', '8958090161', 'subroto.chat.142@gmail.com', 'CS', 6, 1, 0, 1, '2022-03-03 15:51:54'),
(38, 'Priyansh Saxena', '8755045280', 'priyanshsaxena09@gmail.com', 'cs-21', 6, 1, 0, 1, '2022-03-03 16:04:02'),
(39, 'vanshika gupta', '', 'vanshikag0608@gmail.com', '2019 CS', 11, 1, 0, 1, '2022-03-04 09:23:13'),
(40, 'mohammad owais ansari', '8273070346', 'MohdOwais192002@gmail.com', '2021 CS', 11, 1, 0, 1, '2022-03-04 09:34:06'),
(41, 'kajal pandey', '7905719258', '', '2020', 5, 1, 0, 1, '2022-03-04 09:36:08'),
(42, 'palak agarwal', '8738821371', '', '2019 CS', 11, 1, 0, 1, '2022-03-04 09:37:52'),
(43, 'ANUSHKA RAGHUVANSHI', '7088234339', '', '2019 CS', 11, 1, 0, 1, '2022-03-04 09:39:11'),
(44, 'SANCHIT AGARWAL', '', 'sanchit3133@gmail.com', '2021 ECE', 12, 1, 0, 1, '2022-03-04 09:42:13'),
(45, 'MRAGANK JAITLY', '9557529386', 'mragankjaitlybly@gmail.com', '2020-CS', 5, 1, 0, 1, '2022-03-04 10:32:08'),
(46, 'MANVENDUU PATHAK', '8923184679', 'manvedupathak2000@gmail.com', '2020-CS', 5, 1, 0, 1, '2022-03-04 10:34:07'),
(47, 'khushi', '7830019643', '', '2019  ECE', 6, 1, 0, 1, '2022-03-04 10:42:30'),
(48, 'PRASHASTI YADAV', '7417015634', '', '2020  ECE\r\n', 5, 1, 0, 1, '2022-03-04 10:47:26'),
(49, 'PRASHASTI YADAV', '7417015634', '', '2020  ECE', 12, 1, 0, 1, '2022-03-04 10:50:33'),
(50, 'POONAM YADAV', '9012092331', '', '2019 ECE', 12, 1, 0, 1, '2022-03-04 10:54:14'),
(51, 'POONAM YADAV', '9012092331', '', '2019 ECE', 6, 1, 0, 1, '2022-03-04 10:55:32'),
(52, 'MOHD. SAHIL', '7417457742', '', '2020  EN', 12, 1, 0, 1, '2022-03-04 10:57:04'),
(53, 'MOHD. SAHIL', '7417457742', '', '2020  EN', 6, 1, 0, 1, '2022-03-04 10:57:33'),
(54, 'devesh gangwar', '8868066111', '', '2019 EN', 11, 1, 0, 1, '2022-03-04 11:09:51'),
(55, 'VRITIKA RATHORE', '7417798130', '', '2019 ECE', 12, 1, 0, 1, '2022-03-04 11:37:43'),
(56, 'MOHD. FAIYAAZ KHAN', '7302877887', '', '2020 CS', 11, 1, 0, 1, '2022-03-04 11:44:21'),
(57, 'Sumit Bhatt', '9621067339', '', 'CS', 11, 1, 0, 1, '2022-03-04 13:08:12'),
(58, 'Kashish Sluja', '9125142635', '', 'CS_19', 11, 1, 0, 1, '2022-03-04 13:24:08'),
(59, 'Ayushi Gupta', '7500149033', 'ayushiash1412@gmail.com', 'CS-19', 11, 1, 0, 1, '2022-03-04 14:08:25'),
(60, 'Aditya chaudhary', '8171999567', 'Snapshot', 'ECE-19', 12, 1, 0, 2, '2022-03-04 14:10:58'),
(61, 'Riya  Saxena', '9193755408', 'saxenariya459@gmail.com', 'ECE-19', 6, 1, 0, 1, '2022-03-04 14:55:30'),
(62, 'SATYAM SINGH', '8868066111', 'dsingh96340@gmail.com', 'EC-19', 6, 1, 0, 1, '2022-03-04 14:57:16'),
(63, 'SATYAM SINGH', '8868066111', 'dsingh96340@gmail.com', 'EC-19', 5, 1, 0, 1, '2022-03-04 14:57:46'),
(64, 'shudanshu Verma', '9118951059', '', 'IT-20', 6, 1, 0, 1, '2022-03-04 15:41:23'),
(65, 'shruti sharma ', '8755323177', '', 'EC_19', 6, 1, 0, 1, '2022-03-04 16:22:17'),
(66, 'shruti sharma', '8755323177', '', 'EC-19', 12, 1, 0, 1, '2022-03-04 16:23:05'),
(67, 'kumar gaurav', '9027430719', '', 'EN-19', 6, 1, 0, 1, '2022-03-04 16:24:20'),
(68, 'akansha gangwar', '6395314081', '', 'EC-19', 6, 1, 0, 1, '2022-03-04 16:25:40'),
(69, 'riya pokhariyal', '7060970708', '', 'EN-19', 6, 1, 0, 1, '2022-03-04 16:27:20'),
(70, 'vaishnavi sharma', '9456639909', '', 'EN-19', 6, 1, 0, 1, '2022-03-04 16:33:13'),
(71, 'rahul gupta', '9557163609', '', 'ec 19', 6, 1, 0, 1, '2022-03-04 16:37:09'),
(72, 'rahul gupta', '9557163609', '', 'ec 19', 12, 1, 0, 1, '2022-03-04 16:37:37'),
(73, 'sneha gupta', '7300965939', '', 'it 19', 11, 1, 0, 1, '2022-03-04 16:38:31'),
(74, 'devesh kumar', '8279966881', '', 'ec 19', 6, 1, 0, 1, '2022-03-04 16:39:37'),
(75, 'devesh kumar', '8279966881', '', 'ec 19', 12, 1, 0, 1, '2022-03-04 16:40:22'),
(76, 'Sudhanshu Verma', '9118951059', '', 'IT-20', 6, 1, 0, 1, '2022-03-04 16:48:20'),
(77, 'farukh', '82183199494', '', 'en 19', 6, 1, 0, 1, '2022-03-04 16:53:20'),
(78, 'AMIT VERMA', '7505574391', '7505574@gmail.com', 'CS-21', 11, 1, 0, 1, '2022-03-04 17:27:47'),
(79, 'TANAY PANDEY', '7417221834', 'tny.pndy@gmail.com', 'CS-20', 11, 1, 0, 1, '2022-03-04 18:14:50'),
(80, 'Aman Shah', '9457668361', 'proxyshah384@gmail.com', 'CS - 20', 5, 1, 0, 1, '2022-03-04 21:11:27'),
(81, 'Akash saxena', '6396100361', 'saxenakash53@gmail.com', 'CS - 19', 5, 1, 0, 1, '2022-03-04 21:13:06'),
(82, 'Sajal Shrivastav', '9068799683', 'ss.official2018@gmail.com', 'cs-19', 11, 1, 0, 1, '2022-03-04 22:18:53'),
(83, 'Archit Sharma', '7985413423', 'sharmaarchit9455@gmail.com', 'Cs-19', 11, 1, 0, 1, '2022-03-05 11:25:47'),
(84, 'YASHASSWEE CHAUHAN', '', '', 'en-20', 6, 1, 0, 1, '2022-03-05 11:27:10'),
(85, 'Vasu Agarwal', '9520616565', 'vasuagarwal827@gmail.com', 'EC-19', 11, 1, 0, 1, '2022-03-05 11:38:24'),
(86, 'siddhart Yadav', '9368630035', '', 'EC-19', 12, 1, 0, 1, '2022-03-05 12:02:00'),
(87, 'sahil agarwal', '9760424894', '', 'EC-19', 12, 1, 0, 1, '2022-03-05 12:02:43'),
(88, 'kratika verma', '9027039585', '', 'EC-19', 12, 1, 0, 1, '2022-03-05 12:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `event` text NOT NULL,
  `description` text NOT NULL,
  `schedule` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Public, 2-Private',
  `audience_capacity` int(30) NOT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Free,payable',
  `amount` double NOT NULL DEFAULT 0,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `venue_id`, `event`, `description`, `schedule`, `type`, `audience_capacity`, `payment_type`, `amount`, `banner`, `date_created`) VALUES
(5, 2, 'Tech Talk', '➢ Participants shall be preparing a presentation on innovative topic before the Tech-talk.&lt;p&gt;&amp;nbsp;➢ Topic will be given before the day of the event.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Each participant will be given 15 minutes (grace time 15sec) to speak on the topic.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Participants shall be awarded negative marks for exceeding the time limit.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Participants are not allowed to refer to any material/books after receiving the topic.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Evaluation criteria: Total 20 point&amp;nbsp;&lt;/p&gt;&lt;p&gt;Introduction (3)&amp;nbsp;&lt;/p&gt;&lt;p&gt;Depth of subject Knowledge (7)&amp;nbsp;&lt;/p&gt;&lt;p&gt;Presentation and Language (7)&amp;nbsp;&lt;/p&gt;&lt;p&gt;Conclusion (3)&lt;/p&gt;&lt;p&gt;➢ The decision of judges will be final and binding on all Participants.&lt;/p&gt;', '2022-03-05 09:30:00', 1, 1, 2, 20, '', '0000-00-00 00:00:00'),
(6, 3, 'Circuitrix', '➢ Team event (2 member).&nbsp;&lt;p&gt;➢ Wiring will be based on switch&rsquo;s, relays, lights etc.&nbsp;&lt;/p&gt;&lt;p&gt;➢ Time limit will be given at spot.&nbsp;&lt;/p&gt;&lt;p&gt;➢ Team have to complete the task in minimum possible time with output.&nbsp;&lt;/p&gt;&lt;p&gt;➢ Judgement will be based on time &amp; output.&nbsp;&lt;/p&gt;', '2022-03-05 10:30:00', 1, 2, 2, 20, '', '0000-00-00 00:00:00'),
(11, 6, 'Webops', '➢ Individual Event.&amp;nbsp;&lt;p&gt;➢ Design a responsive website in any programing language.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ If website is copy from internet, then website will be disqualified.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Brief description about website after submission of code.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Code should be submitted 15min before presenting website.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Judgement will be based on Frontend, Backend &amp;amp; Responsiveness of website.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Website will be judged on the basis of this topic.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ If the website is not related to this topic participant will be disqualified.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Topic are: -&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&bull; Covid 19 website&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&bull; Tech-Library&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&bull; Tech-News website&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&bull; To-Do List website&lt;/p&gt;', '2022-03-05 14:30:00', 1, 1, 2, 20, '', '0000-00-00 00:00:00'),
(12, 7, 'Line Following Robot', 'The objective of this contest is to complete the course with the highest points and in the shortest period oftime while accurately tracking the course line from start to finish.&amp;nbsp;&lt;p&gt;➢ Team event (Max. 3members).&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ The weight of bot not more than 2kg.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Time limit is 3 minutes.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ A team will get disqualified for any in disciplinary activities.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ It must be controlled autonomously without any human aid.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ The robot must be powered by a battery source placed on it.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Ready made Lego are not allowed.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ The road has been displayed on the notice board/ Project Lab/ contact to coordinators.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Testing for the track please contact to coordinators.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Any modification to code and change of batteries is allowed but the game play will be restarted.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Teams are not allowed to replace any component during the game play. However, they areallowed to replace defective sensors but will have to bear negative points.&amp;nbsp;&lt;/p&gt;', '2022-03-05 13:00:00', 1, 3, 2, 20, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Tech Utsav', 'info@sample.comm', '8787016919,703756439', '1646278740_login.png', '&lt;p style=&quot;text-align: left; background: transparent; position: relative;&quot;&gt;&lt;ol&gt;&lt;li&gt;CIRCUITRIX&lt;/li&gt;&lt;li&gt;SNAPSHOT&lt;/li&gt;&lt;li&gt;TECH-TALK&amp;nbsp;&lt;/li&gt;&lt;li&gt;COFFEE KLATCH&lt;/li&gt;&lt;li&gt;DECODE THE HIDDEN&lt;/li&gt;&lt;li&gt;LINE FOLLOWER ROBOT&lt;/li&gt;&lt;li&gt;WEBOPS&lt;/li&gt;&lt;li&gt;Ring the Bell&lt;/li&gt;&lt;/ol&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(30) NOT NULL,
  `venue` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `venue`, `address`, `description`, `rate`) VALUES
(1, 'New seminar Hall', 'New seminar Hall', 'New seminar Hall', 20),
(2, 'EC-Seminar Hall', 'EC-Seminar Hall', 'EC-Seminar Hall', 20),
(3, 'Network Lab', 'Network Lab', 'Network Lab', 20),
(4, 'Control System Lab', 'Control System Lab', 'Control System Lab', 20),
(5, 'EN-Seminar Hall', 'EN-Seminar Hall', 'EN-Seminar Hall', 20),
(6, 'CS-Seminar Hall', 'CS-Seminar Hall', 'CS-Seminar Hall', 20),
(7, 'Old Audi', 'Old Audi', 'Old Audi', 20);

-- --------------------------------------------------------

--
-- Table structure for table `venue_booking`
--

CREATE TABLE `venue_booking` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-for verification,1=confirmed,2=canceled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue_booking`
--

INSERT INTO `venue_booking` (`id`, `name`, `address`, `email`, `contact`, `venue_id`, `duration`, `datetime`, `status`) VALUES
(1, 'John Smith', 'Sample', 'asdasd@gmail.com', '+18456-5455-55', 2, '1 night', '2020-10-14 17:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_booking`
--
ALTER TABLE `venue_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `venue_booking`
--
ALTER TABLE `venue_booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
