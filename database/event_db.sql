-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 11:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

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
(2, 'George Wilson', '+18456-5455-55', 'gwilson@sample.com', 'Sample', 1, 1, 0, 1, '0000-00-00 00:00:00');

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
(1, 'Tech Utsav', 'techutsavsrmscet@gmail.com', '+91 1234567890', '1602641160_JSAV-multiscreen_3ddbdd40-38d9-4b64-9cf2-5d0ef356f29c.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

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
(1, 'Rishabh Srivastava', 'Sample', 'asdasd@gmail.com', '+18456-5455-55', 2, '1 night', '2020-10-14 17:00:00', 1);
(2, 'Rishabh Srivastava', 'Sample', 'asdasd@gmail.com', '+18456-5455-55', 2, '1 night', '2020-10-14 17:00:00', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venue_booking`
--
ALTER TABLE `venue_booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
