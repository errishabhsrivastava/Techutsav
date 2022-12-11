-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 12:30 PM
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
(5, 'Abhay Singh Chauhan', '9058819970', 'abhaysjngh9@gmail.com', 'IT', 8, 1, 0, 1, '2022-03-03 12:00:29'),
(6, 'Devashu Rathore', '7017956442', 'devanshurathore02@gmail.com', 'IT', 8, 1, 0, 1, '2022-03-03 12:01:49'),
(7, 'Raghuveer Mathur', '9115326304', 'raghuveermathur89@gmail.com', 'EC', 8, 1, 0, 1, '2022-03-03 12:05:45'),
(8, 'Shubham Sharma', '9457166210', 'kratossharma1604@gmail.com', 'En-20', 10, 1, 0, 1, '2022-03-03 12:35:13'),
(9, 'akarsh saxena', '7417244025', 'ec', '20-', 7, 1, 0, 1, '2022-03-03 12:41:00'),
(10, 'akarsh saxena', '7417244025', 'akarshsexena751@gmail.com', '20-ec\r\n', 9, 1, 0, 1, '2022-03-03 12:42:48'),
(11, 'aman kumar sharma', '8650919788', 'amansharma5434535@gmail.com', 'en20', 7, 1, 0, 1, '2022-03-03 12:44:50'),
(12, 'aman kumar sharma', '8650919788', 'amansharma5434535@gmail.com', 'en-20', 9, 1, 0, 1, '2022-03-03 12:47:18'),
(13, 'utkarsh saxena', '9548144288', 'utsexena489@gmail.com', 'en-20', 9, 1, 0, 1, '2022-03-03 12:52:49'),
(14, 'utkarsh saxena', '', 'utsexena489@gmail.com', 'en20', 7, 1, 0, 1, '2022-03-03 12:53:41'),
(15, 'lakshya agnihotri', '', 'lakshya.agni@gmail.com', 'ec-20', 7, 0, 0, 1, '2022-03-03 12:55:04'),
(16, 'lakshya agnihotri', '', 'lakshya.agni@gmail.com', 'ec-20', 9, 1, 0, 1, '2022-03-03 12:55:54'),
(17, 'lakshya agnihotri', '7906488415', 'lakshya.agni@gmail.com', 'ec-20', 9, 1, 0, 0, '2022-03-03 12:56:37'),
(18, 'mohd. Hammad', '7668853074', 'hammad534@gmail.com', 'ec-20', 7, 1, 0, 1, '2022-03-03 12:58:12'),
(19, 'mohd hammad', '', 'hammad534@gmail.com', 'ec-20', 9, 1, 0, 1, '2022-03-03 12:59:03'),
(20, 'saksham aditya', '7302007493', 'sakshamaditya1@gmail.com', 'me-20', 10, 1, 0, 1, '2022-03-03 13:01:11'),
(21, 'YASHAWEE CHAUHAN', '90455721840', 'yashchauhan49683@gmail.com', 'EN-20', 7, 1, 0, 1, '2022-03-03 13:04:06'),
(22, 'vaibhav', '7505440195', 'vaibhavR712@gmail.com', 'ec-20', 7, 1, 0, 1, '2022-03-03 13:07:15'),
(23, 'Ansh Patel', '8954668390', 'anshp8859@gmail.com', 'BPh-20', 8, 1, 0, 1, '2022-03-03 13:09:07'),
(24, 'Ishika', '9389085656', 'ishikasingh0551@gmail.com', 'EC-20', 7, 1, 0, 1, '2022-03-03 13:11:44'),
(25, 'Kushagra Saran', '', 'kushagrasaran13@gmail.com', 'me-20', 10, 1, 0, 1, '2022-03-03 13:17:57'),
(26, 'sanchit agarwal', '', 'sanchit3133@gmail.com', 'ECE-2021', 7, 1, 0, 1, '2022-03-03 13:20:18'),
(27, 'Kushagra Saran', '', 'kushagrasaran13@gmail.com', 'ME\r\n2020\r\n', 7, 1, 0, 1, '2022-03-03 13:21:17'),
(28, 'Pulkit Rathi', '', 'rathipulkit1@gmail.com', 'CS19', 7, 1, 0, 1, '2022-03-03 13:22:05'),
(29, 'Chavvi Saxena', '', 'chavvisaxena0806@gmail.com', 'ECE\r\n2021\r\n', 8, 1, 0, 1, '2022-03-03 13:26:08'),
(30, 'Umra Nizam', '', 'umranizam13@gmail.com', 'ECE\r\n2021\r\n', 8, 1, 0, 1, '2022-03-03 13:27:15'),
(31, 'Shreshtha Mishra', '', 'shreshthamishra11@gmail.com', 'ECE\r\n2021', 8, 1, 0, 1, '2022-03-03 13:28:15'),
(32, 'Chaitanya Gangwar', '', 'chaitanyasir0@gmail.com', 'ECE\r\n2021\r\n', 8, 1, 0, 1, '2022-03-03 13:29:14'),
(33, 'Arnav Saxena', '', 'arnavsaxena@gmail.com', 'ECE\r\n2021\r\n', 0, 1, 0, 1, '2022-03-03 13:30:39'),
(34, 'Kushagra Saran', '', 'kushagrasaran@gmail.com', 'ME\r\n2021\r\n', 8, 1, 0, 1, '2022-03-03 13:31:40'),
(35, 'Pulkit Rathi', '', 'rathipulkit1@gmail.com', 'cs\r\n2019', 8, 1, 0, 1, '2022-03-03 13:32:57'),
(36, 'harsh sexena', '', 'harshsexenayours@gmail,com', 'BPh-19', 10, 1, 0, 1, '2022-03-03 13:36:38'),
(37, 'Harsh Saxena', '', 'harshsexenayours@gmail,com', 'BPh-19', 9, 1, 0, 1, '2022-03-03 13:37:19'),
(38, 'shruti sharma', '', 'saxenashruti422@gmail.com', 'BPh-19', 8, 1, 0, 1, '2022-03-03 13:39:39'),
(39, 'shruti saxena', '', 'saxenashruti422@gmail.com', 'BPh-19', 10, 1, 0, 1, '2022-03-03 13:40:46'),
(40, 'Vaibhav Saxena', '9548725069', 'vs1512.nic@gmail.com', 'EN - 19', 9, 1, 0, 1, '2022-03-03 14:27:57'),
(41, 'Faiz Abbas', '6393542172', 'mr.faiz224@gmail.com', 'ME- 19', 8, 1, 0, 1, '2022-03-03 14:30:49'),
(42, 'Mohd Navesh', '8755619192', 'mohdnavesh276@gmail.com', 'ME-19', 7, 1, 0, 1, '2022-03-03 14:32:31'),
(43, 'Kundan Maurya', '9548735069', 'kundanmaurya235@gmail.com', 'EN-19', 7, 1, 0, 1, '2022-03-03 14:34:45'),
(44, 'Divyansh Singh', '8006365000', 'divyansh2002xyz@gmail.com', 'EN-19', 10, 1, 0, 1, '2022-03-03 14:36:14'),
(45, 'Divyansh Singh', '8006365000', 'divyansh2002xyz@gmail.com', 'EN - 19', 9, 1, 0, 1, '2022-03-03 14:36:58'),
(46, 'Alec Kumar', '8630692815', 'aleckumar15@gmail.com', 'Cs-21', 8, 1, 0, 1, '2022-03-03 15:29:44'),
(47, 'MD. Ayan KhAN', '7078117493', 'ayankhanofficial@gmail.com', '2021-cs', 9, 1, 0, 1, '2022-03-03 15:38:53'),
(48, 'Ayan Khan', '7078117493', 'ayankhanofficial@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:40:07'),
(49, 'Ayush Pandey', '7068278146', 'pandeyayush63077@gmail.com', '2021-CS', 9, 1, 0, 1, '2022-03-03 15:41:59'),
(50, 'Ayush Pandey', '7068278146', 'pandeyayush63077@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:42:46'),
(51, 'Shivam Patel', '7078438387', 'shivampatel887@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:44:02'),
(52, 'Aditya Kumar', '9411280268', 'aditya941180@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:45:14'),
(53, 'Mohtashim Ali', '8384865874', 'mohtashim220ali@gmail.com', '2021-CS', 9, 1, 0, 1, '2022-03-03 15:46:46'),
(54, 'Mohtashim Ali', '8384865874', 'mohtashim220ali@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:47:29'),
(55, 'Mratyunjay Saxena', '9634013477', 'mratyunjaysaxena8859@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:49:03'),
(56, 'Mratyunjay Saxena', '9634013477', 'mratyunjaysaxena8859@gmail.com', '2021-CS', 9, 1, 0, 1, '2022-03-03 15:49:42'),
(57, 'Subroto Chatterjee', '8958090161', 'subroto.chat.1412@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:51:35'),
(58, 'Subroto Chatterjee', '8958090161', 'subroto.chat.1412@gmail.com', '2021-CS', 9, 1, 0, 1, '2022-03-03 15:52:13'),
(59, 'Sameer ', '9045540552', 'sameerz.rahmanz@gmail.com', '2021-CS', 8, 1, 0, 1, '2022-03-03 15:54:23'),
(60, 'Sameer', '9045540552', 'sameerz.rahmanz@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 15:55:00'),
(61, 'Priyansh Saxena', '8755045280', 'priyanshsaxena09@gmail.com', '2021-CS', 8, 1, 0, 1, '2022-03-03 16:03:36'),
(62, 'Priyansh Saxena', '8755045280', 'priyanshsaxena09@gmail.com', '2021-CS', 7, 1, 0, 1, '2022-03-03 16:04:29'),
(63, 'Shivani Rajput', '8176862517', 'shivir634@gmail.com', 'it-19', 8, 1, 0, 1, '2022-03-03 17:16:58'),
(64, 'Shivani Rajput', '8176862517', 'shivir634@gmail.com', 'it-19', 10, 1, 0, 1, '2022-03-03 17:18:02'),
(65, 'Shivani Rajput', '8176862517', 'shivir634@gmail.com', 'it-19', 7, 1, 0, 1, '2022-03-03 17:18:57'),
(66, 'Vanshika Gupta', '8630445729', 'vanshikaag0608@gmail.com', 'it-19', 7, 1, 0, 1, '2022-03-03 17:20:45'),
(67, 'Vanshika Gupta', '86304457293', 'vanshikaag0608@gmail.com', 'it-19', 9, 1, 0, 1, '2022-03-03 17:21:40'),
(68, 'laxmi narayan', '6395844177', 'yadavlaxmi6395@gmail.com', 'Bph2021', 8, 1, 0, 1, '2022-03-03 17:24:15'),
(69, 'shubham kumar verma', '9451348244', 'SSP979310@gmail.com', 'CS-21', 7, 1, 0, 1, '2022-03-03 17:29:24'),
(70, 'kajal Pandey', '7905719258', '', 'cs-20', 8, 1, 0, 1, '2022-03-03 17:30:38'),
(71, 'kajal Pandey', '7905719258', '', 'cs-20', 7, 1, 0, 1, '2022-03-03 17:31:17'),
(72, 'Palak Agarwal', '8738821341', 'agpalak436@gmail.com', 'cs-19', 7, 1, 0, 1, '2022-03-03 17:32:43'),
(73, 'Palak Agarwal', '8738821371', 'agpalak436@gmail.com', 'cs-19', 9, 1, 0, 1, '2022-03-03 17:35:07'),
(74, 'anushka raghuvanshi', '7088234339', 'anushkaraghuvanshi123@gmail.com', 'cs-19', 7, 1, 0, 1, '2022-03-03 17:37:07'),
(75, 'anushka raghuvanshi', '7088234339', 'anushkaraghuvanshi123@gmail.com', 'cs-19', 9, 1, 0, 1, '2022-03-03 17:38:58'),
(76, 'Mohd. Owais Ansari', '', 'MohdOwais192002@gmail.com', 'CS-19', 8, 1, 0, 1, '2022-03-03 17:41:29'),
(77, 'Mohd. Owais Ansari', '8273070346', '', 'CS-19', 7, 1, 0, 1, '2022-03-03 17:43:04'),
(78, 'vikas kumar', '9696424971', 'vikas992003@gmail.com', 'CS-21\r\n', 7, 1, 0, 1, '2022-03-03 17:44:58'),
(79, 'satyam nayak', '9456027970', 'satyamnayak8899@gmail.com', 'cs-21', 7, 1, 0, 1, '2022-03-03 17:47:24'),
(80, 'Rishabh Mishra', '7310844791', 'Rishuyadav1802003@gmail.com', 'IT-21', 8, 1, 0, 1, '2022-03-03 17:49:29'),
(81, 'Sanskriti  Gupta', '9198825601', '19tanu.gupta@gmail.com', 'cs-20', 7, 1, 0, 1, '2022-03-03 17:51:26'),
(82, 'Areeba Safi', '9453554660', 'areebasafi029@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 17:53:16'),
(83, 'Nistha Saxena', '9997256401', 'nisthasharma29@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 17:54:46'),
(84, 'Khushi Pandey', '8292662539', 'KhushiPandey8292@gmail.com', 'CS-20', 9, 1, 0, 1, '2022-03-03 17:55:53'),
(85, 'Maria Fatima', '7895555169', 'mariafatima75168@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 17:57:17'),
(86, 'Amjlika Singh', '7895464871', 'anjlikasingh03@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 17:58:47'),
(87, 'Yuvika Porwal', '', 'porwalyuvika06@gmail.com', 'IT-20', 7, 1, 0, 1, '2022-03-03 18:01:21'),
(88, 'Rishita Gupta', '', 'guptarishita2@gmail.com', 'BPh-20', 8, 1, 0, 1, '2022-03-03 18:02:26'),
(89, 'Vishankha Tomar', '9557902776', 'vishakhatomar70@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 18:04:28'),
(90, 'Zohra Imtiyaz', '', 'Zohrajmi2002@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 18:05:43'),
(91, 'Nidhi Singh Chauhan', '8107684599', '', 'CS-22', 9, 1, 0, 1, '2022-03-03 18:06:28'),
(92, 'Riya Sexena', '7900335570', 'RiyaSexena0987@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 18:08:06'),
(93, 'Mansi Dixit', '8923264895', 'mansidixit254@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-03 18:09:07'),
(94, 'Arusha', '', 'arushazahid960@gmail.com', 'CS-19', 7, 1, 0, 1, '2022-03-03 18:10:02'),
(95, 'Fiza Naaz', '', 'fizanaaz47@gmail.com', 'TI-19', 7, 1, 0, 1, '2022-03-03 18:10:55'),
(96, 'Fiza Naaz', '', 'fizanaaz47@gmail.com', 'IT-19', 9, 1, 0, 1, '2022-03-03 18:11:27'),
(98, 'Vidushi Yadav', '9336072234', 'vidushiyadav25@gmail.com', '2019-CS', 9, 1, 0, 1, '2022-03-03 18:17:52'),
(99, 'Vidushi Yadav', '9336072234', 'vidushiyadav25@gmail.com', '2019-CS', 7, 1, 0, 1, '2022-03-03 18:19:11'),
(100, 'Vritika Rathore', '741779830', 'vritikarathore.official@gmail.com', '2019-EC', 9, 1, 0, 1, '2022-03-03 18:20:47'),
(101, 'Vritika Rathore', '7417798130', 'vritikarathore.official@gmail.com', '2019-EC', 7, 1, 0, 1, '2022-03-03 18:22:42'),
(102, 'Muskan Srivastav', '7351149211', '20msrivastava2000@gmail.com', '2019-CS', 10, 1, 0, 1, '2022-03-03 18:25:08'),
(103, 'Muskan Srivastav', '7351149211', '20msrivastava2000@gmail.com', '2019-CS', 9, 1, 0, 1, '2022-03-03 18:26:22'),
(104, 'Paritosh Singh', '639512093', 'parithaku58@gmail.com', 'IT', 10, 1, 0, 1, '2022-03-03 18:31:22'),
(105, 'Paritosh Singh', '6395123093', 'parithaku58@gmail.com', 'IT', 7, 1, 0, 1, '2022-03-03 18:32:39'),
(106, 'Paritosh Singh', '6395123093', 'parithaku58@gmail.com', 'IT', 9, 1, 0, 1, '2022-03-03 18:33:46'),
(107, 'Khushi', '7830019643', 'khushisingh05082000@gmail.com', 'EC', 10, 1, 0, 1, '2022-03-03 18:35:31'),
(108, 'Khushi', '7830019643', 'khushisingh05082000@gmail.com', 'EC', 9, 1, 0, 1, '2022-03-03 18:36:24'),
(109, 'Khushi', '7830019643', 'khushisingh05082000@gmail.com', 'EC', 7, 1, 0, 1, '2022-03-03 18:37:18'),
(110, 'Shanvi Johari', '8279501208', 'shanvijohari593@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-03 18:38:57'),
(111, 'Saba Mazhar', '8279337793', 'sabamaghar0021@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-03 18:40:28'),
(112, 'Prashasti Yadav', '7417015634', 'praprashasti yadav@gmail.com', 'EC', 10, 1, 0, 1, '2022-03-03 18:42:36'),
(113, 'Poonam Yadav', '9012092331', 'Pyadav121020@gmail.com', 'EC', 7, 1, 0, 1, '2022-03-03 18:50:03'),
(114, 'Mohd Sahil', '7417457742', 'sahilmohd77r@gmail.com', 'EN', 7, 1, 0, 1, '2022-03-03 18:53:25'),
(115, 'Siddharh Das', '', 'sidas0055@gmail.com', 'EC', 7, 1, 0, 1, '2022-03-03 19:00:34'),
(116, 'Siddharh Das', '', 'sidas0055@gmail.com', 'EC', 9, 1, 0, 1, '2022-03-03 19:00:57'),
(117, 'Alok Kumar', '', '', 'EN', 9, 1, 0, 1, '2022-03-04 11:17:07'),
(118, 'Riya Pokhariyal', '7060970708', 'riyapokhariyal1363@gmail.com', '\r\nEN', 7, 1, 0, 1, '2022-03-04 11:33:30'),
(119, 'Riya Pokhariyal', '7060970708', 'riyapokhariyal1363@gmail.com', 'EN 19', 9, 1, 0, 1, '2022-03-04 11:34:17'),
(120, 'Riya Pokhariyal', '7060970708', 'riyapokhariyal1363@gmail.com', 'EN 19', 8, 1, 0, 2, '2022-03-04 11:35:04'),
(121, 'Saquiuddin', '7060896489', 'saquiuddin1708@gmail.com', 'EN', 9, 1, 0, 1, '2022-03-04 11:38:53'),
(122, 'Prashasti Yadav', '7417015634', 'praprashasti yadav@gmail.com', 'EC', 7, 1, 0, 1, '2022-03-04 11:46:01'),
(123, 'Mohd. Faizaaz Khan', '7302877887', 'khanfaraz179@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-04 11:47:36'),
(124, 'Shambhavi Agarwal', '7991727557', 'shambhavi0025@gmail.com', 'CS', 8, 1, 0, 1, '2022-03-04 12:25:15'),
(125, 'vaibhav raj', '8528066868', 'vaibhavsri1512@gmail.com', 'En 19', 7, 1, 0, 1, '2022-03-04 13:00:27'),
(126, 'harsh vardhan singh', '', '', 'EN-19', 7, 1, 0, 1, '2022-03-04 13:02:34'),
(127, 'SUMIT BHATT', '962067339', '', 'CS-19', 7, 1, 0, 1, '2022-03-04 13:04:42'),
(128, 'Samarth Saxena', '6398884300', 'saxenasamarth55@gmail.com', 'CS', 8, 1, 0, 1, '2022-03-04 13:20:30'),
(129, 'Samarth Saxena', '6398884300', 'saxenasamarth55@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-04 13:21:14'),
(130, 'Adamya Gupta', '9456658059', 'adam.7.sam@gmail.com', 'EC', 10, 1, 0, 1, '2022-03-04 13:23:14'),
(131, 'Adamya Gupta', '9456658059', 'adam.7.sam@gmail.com', 'EC', 7, 1, 0, 1, '2022-03-04 13:24:12'),
(132, 'Adamya Gupta', '9456658059', 'adam.7.sam@gmail.com', 'EC', 9, 1, 0, 1, '2022-03-04 13:24:53'),
(133, 'Kashish Saluja', '9125142635', 'kashishksalija@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-04 13:26:36'),
(134, 'Ajay Adhikari', '8937817081', 'ajayadhi23@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-04 13:27:58'),
(135, 'Ajay Adhikari', '8937817081', 'ajayadhi23@gmail.com', 'CS', 9, 1, 0, 1, '2022-03-04 13:31:30'),
(136, 'vaibhav raj', '', 'vaibhavsri1512@gmail.com', '2019', 9, 1, 0, 1, '2022-03-04 13:45:12'),
(137, 'Sanskar Agrawal', '8630936885', '', 'EC', 8, 1, 0, 1, '2022-03-04 13:46:50'),
(138, 'Sanskar Agrawal', '8630936885', '', 'EC', 7, 1, 0, 1, '2022-03-04 13:47:29'),
(139, 'Sanskar Agarwal', '8630936885', '', 'EC', 9, 1, 0, 1, '2022-03-04 13:54:30'),
(140, 'Anjali Gupta', '7078878224', 'ag1392491@gmail.com', 'CS', 8, 1, 0, 1, '2022-03-04 13:55:42'),
(141, 'Anjali Gupta', '7078878224', 'ag1392491@gmail.com', 'CS', 9, 1, 0, 1, '2022-03-04 13:56:20'),
(142, 'Anjali Gupta', '7078878224', 'ag1392491@gmail.com', 'EC', 7, 1, 0, 1, '2022-03-04 13:56:50'),
(143, 'Saumya Pathak', '7417780126', 'saumyapathak811@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-04 13:58:08'),
(144, 'Tarun Saini', '8057875439', 'tarunsaini75130@gmail.com', 'CS', 8, 1, 0, 1, '2022-03-04 13:59:11'),
(145, 'Tarun Saini', '8057875439', 'tarunsaini75130@gmail.com', 'CS', 7, 1, 0, 1, '2022-03-04 13:59:40'),
(146, 'Tarun Saini', '8057875439', 'tarunsaini75130@gmail.com', 'CS', 9, 1, 0, 1, '2022-03-04 14:00:05'),
(147, 'Ayush Khanka', '', '', '', 8, 1, 0, 1, '2022-03-04 14:00:49'),
(148, 'Ayush Khanka', '', '', '', 7, 1, 0, 1, '2022-03-04 14:01:18'),
(149, 'Ayush Khanka', '', '', '', 9, 1, 0, 1, '2022-03-04 14:01:37'),
(150, 'aditya chaudary', '8171999567', '', 'EC-19', 7, 1, 0, 1, '2022-03-04 14:06:55'),
(151, 'aditya chaudary', '8171999567', '', 'EC-19', 8, 1, 0, 1, '2022-03-04 14:07:36'),
(152, 'Taposh Chandra Sharma', '', '', 'cs-19', 7, 1, 0, 1, '2022-03-04 15:37:25'),
(153, 'Akshay Balyan', '8791347050', '', 'CS-20', 7, 1, 0, 1, '2022-03-04 15:38:22'),
(154, 'Tasmiya Khan', '', 'tasmiytakhan78651@gmail.com', 'cs-20', 7, 1, 0, 1, '2022-03-04 15:39:10'),
(155, 'Akshat Chandra', '7217562923', '', 'it-21', 7, 1, 0, 1, '2022-03-04 15:39:51'),
(156, 'Devesh Gangwar', '7579562818', '', 'it-21', 7, 1, 0, 1, '2022-03-04 15:40:28'),
(157, 'Sudhanshu Verma', '9118951059', '', 'it-20', 7, 1, 0, 1, '2022-03-04 15:40:59'),
(158, 'Anshi saxena', '6396850667', '', 'IT', 7, 1, 0, 1, '2022-03-04 15:41:51'),
(159, 'Saniya Sarfaraz', '9412376622', '', 'IT-21', 7, 1, 0, 1, '2022-03-04 15:43:33'),
(160, 'Vipin Kumar Singh', '9045076199', '', '', 8, 1, 0, 1, '2022-03-04 15:44:19'),
(161, 'Pooja Karakoti', '8979879330', '', 'IT-21', 7, 1, 0, 1, '2022-03-04 15:45:01'),
(162, 'Puja Karakoti', '8979879330', '', 'IT-21', 8, 1, 0, 1, '2022-03-04 15:45:39'),
(163, 'Shresthi Gupta', '8791272470', '', 'IT-21', 7, 1, 0, 1, '2022-03-04 15:47:11'),
(164, 'Shresthi Gupta', '8791272470', '', 'IT-21', 8, 1, 0, 1, '2022-03-04 15:47:44'),
(165, 'Samnan Khan', '9690851980', '', 'IT-21', 7, 1, 0, 1, '2022-03-04 15:48:17'),
(166, 'Samnan Khan', '9690851980', '', 'IT-21', 8, 1, 0, 1, '2022-03-04 15:48:50'),
(167, 'Vaishnavi Saxena', '9758214636', '', 'IT-21', 7, 1, 0, 1, '2022-03-04 15:49:20'),
(168, 'Vaishnavi Saxena', '9758214636', '', 'IT-21', 8, 1, 0, 1, '2022-03-04 15:49:51'),
(169, 'Shariq Ali Khan', '7037406855', '', 'IT-21', 8, 1, 0, 1, '2022-03-04 15:50:43'),
(170, 'Ajay Kumar', '8439949775', '', 'IT-21', 8, 1, 0, 1, '2022-03-04 15:51:27'),
(171, 'Abhishek Tiwari', '9554073973', '', 'IT-20', 8, 1, 0, 1, '2022-03-04 15:52:12'),
(172, 'Abhishek Tiwari', '9554073973', '', 'IT-20', 7, 1, 0, 1, '2022-03-04 15:52:36'),
(173, 'Shikhar Gupta', '7388271192', '', 'CS-20\r\n', 7, 1, 0, 1, '2022-03-04 15:53:21'),
(174, 'Shikhar Gupta', '7388271192', '', 'CS-20', 7, 1, 0, 1, '2022-03-04 15:54:21'),
(175, 'Ayush Kumar Saxena', '7895412971', '', 'CS-20', 7, 1, 0, 1, '2022-03-04 15:55:04'),
(176, 'Isha Saxena', '6397239197', '', 'CS-20', 7, 1, 0, 1, '2022-03-04 15:55:40'),
(177, 'Kritik Gupta', '6398884300', '', 'CS-21', 9, 1, 0, 1, '2022-03-04 16:01:00'),
(178, 'Samarth Saxena', '6398884300', '', 'CS-20', 10, 1, 0, 1, '2022-03-04 16:02:39'),
(179, 'Priyanshu Patel', '7055823712', '', 'CS-20', 7, 1, 0, 1, '2022-03-04 16:03:46'),
(180, 'Riya Saxena', '9193755408', '', 'EC-19', 7, 1, 0, 1, '2022-03-04 16:04:49'),
(181, 'Riya Saxena', '9193755408', '', 'EC-19', 9, 1, 0, 1, '2022-03-04 16:05:15'),
(182, 'Riya Saxena', '9193755408', '', 'EC-19', 10, 1, 0, 1, '2022-03-04 16:05:38'),
(183, 'Simran Mishra', '9027760270', '', 'CS-21', 7, 1, 0, 1, '2022-03-04 16:06:42'),
(184, 'Simran Mishra', '9027760270', '', 'CS-21', 9, 1, 0, 1, '2022-03-04 16:07:08'),
(185, 'Akansha Gautam', '9580584841', '', 'B.Pharm-20', 7, 1, 0, 1, '2022-03-04 16:08:17'),
(186, 'Akash Gupta', '7271961955', '', 'CS-20', 7, 1, 0, 1, '2022-03-04 16:09:00'),
(187, 'Devesh Kumar', '8279966881', '', 'EC-19', 10, 1, 0, 1, '2022-03-04 16:17:37'),
(188, 'Shruti Sharma', '8755323177', '', 'EC-19', 10, 1, 0, 1, '2022-03-04 16:21:32'),
(189, 'Kundan Maurya', '7579959353', '', 'EN-19', 10, 1, 0, 1, '2022-03-04 16:25:23'),
(190, 'Kumar Gaurav', '9027430719', '', 'EN-19', 10, 1, 0, 1, '2022-03-04 16:26:10'),
(191, 'Kumar Gaurav', '9027430719', '', 'EN-19', 9, 1, 0, 1, '2022-03-04 16:26:41'),
(192, 'Akansha Gangwar', '6395314081', '', 'EN-19', 7, 1, 0, 1, '2022-03-04 16:28:31'),
(193, 'Anchal Jain', '8923825140', '', 'CS-19', 10, 1, 0, 1, '2022-03-04 16:30:45'),
(194, 'Anchal Jain', '8923825140', '', 'CS-19', 9, 1, 0, 1, '2022-03-04 16:31:16'),
(195, 'Parul Sahni', '7579977123', '', 'CS-19', 10, 1, 0, 1, '2022-03-04 16:32:39'),
(196, 'Parul Sahni', '7579977123', '', 'CS-19', 9, 1, 0, 1, '2022-03-04 16:33:29'),
(197, 'Vaishnavi Sharma', '9456639909', '', 'EN-19', 10, 1, 0, 1, '2022-03-04 16:34:21'),
(198, 'Vaishnavi Sharma', '9456639909', '', 'EN-19', 8, 1, 0, 1, '2022-03-04 16:35:22'),
(199, 'Abhishek Gupta', '7007157482', 'mayank8874053610@gmail.com', 'EN', 7, 1, 0, 1, '2022-03-04 16:58:54'),
(200, 'Durgesh Kumar Pal', '9568866093', '', 'EN', 7, 1, 0, 1, '2022-03-04 16:59:47'),
(201, 'Amit Verma ', '7505574391', '7505574@gmail.com', 'CS', 9, 1, 0, 1, '2022-03-04 17:15:16'),
(202, 'RISHABH PAL', '9808404573', 'pal.rishabh980@gmail.com', 'CS-19 CETR', 9, 1, 0, 1, '2022-03-04 18:05:40'),
(203, 'SNEHA GUPTA', '7300965939', 'snehagupta2002@gmail.com', 'IT-19', 9, 1, 0, 1, '2022-03-04 18:06:55'),
(204, 'AMULYA VISHNOI', '7409114246', 'amulyavishnoi001@gmail.com', 'CS-20', 7, 1, 0, 1, '2022-03-04 18:10:37'),
(205, 'Akash Saxena', '6396100361', 'saxenakash53@gmail.com', 'CS-20', 10, 1, 0, 1, '2022-03-04 21:01:51'),
(206, 'Akash Saxena', '6396100361', 'saxenakash53@gmail.com', 'Cs-20', 7, 1, 0, 1, '2022-03-04 21:03:47'),
(207, 'Anushka Gupta', '8791398516', 'annussha.gupta@gmail.com', 'CS-20', 9, 1, 0, 1, '2022-03-04 21:05:26'),
(208, 'Anushka Gupta', '8791398516', 'annussha.gupta@gmail.com', 'Cs-20', 7, 1, 0, 1, '2022-03-04 21:06:00'),
(209, 'Sparsh Agarwal', '9690544303', 'sp2913108@gmail.com', 'cs-20', 7, 1, 0, 1, '2022-03-04 21:08:34'),
(210, 'Aman Shah', '9457668361', 'proxyshah384@gmail.com', 'Cs-20', 7, 1, 0, 1, '2022-03-04 21:09:36'),
(211, 'Aman Shah', '9457668361', 'proxyshah384@gmail.com', 'Cs-20', 10, 1, 0, 1, '2022-03-04 21:10:22'),
(212, 'Aryan Tyagi', '9718513515', 'aryantyagi118@gmail.com', 'IT - 19', 7, 1, 0, 1, '2022-03-04 21:52:17'),
(213, 'Harsh Shrotriya', '8630777181', 'harshshrotriya333@gmail.com', 'IT - 19', 7, 1, 0, 1, '2022-03-04 21:53:46'),
(214, 'Praveen kashyap', '7394990738', '2pkashyap2001@gmail.com', 'cs -19 ', 9, 1, 0, 1, '2022-03-04 22:25:37'),
(215, 'Harpal Singh', '', 'abhigujjar6789@gmail.com', 'BP-19', 7, 1, 0, 1, '2022-03-05 11:25:09'),
(216, 'Shruti Agarwal', '', '', 'BP-19', 7, 1, 0, 1, '2022-03-05 11:26:06'),
(217, 'Harvinder Singh', '', '', 'BP-19', 7, 1, 0, 1, '2022-03-05 11:26:45'),
(218, 'vikas kumar', '', '', 'BP-19', 7, 1, 0, 1, '2022-03-05 11:27:25'),
(219, 'Anurag Shankdhar', '', '', 'BP-19', 7, 1, 0, 1, '2022-03-05 11:28:04'),
(220, 'Ayush Katiyar', '', '', 'BP-19', 7, 1, 0, 1, '2022-03-05 11:28:45'),
(221, 'Vanshika kansal', '7395053337', 'vanshikakansalsrmscetcs19@gmail.com', 'cs-19', 8, 1, 0, 1, '2022-03-05 11:33:31'),
(222, 'mohd shoib', '', 'ahmadshoeb476@gmail.com', 'cs-19 ', 7, 1, 0, 1, '2022-03-05 11:57:30'),
(223, 'Mohd Nazeem Ansari', '', 'nazeemansari277@gmail.com', 'cs19', 7, 1, 0, 1, '2022-03-05 11:58:25'),
(224, 'siddhart yadav', '9368630035', '', 'Ec\r\n', 8, 1, 0, 1, '2022-03-05 12:04:40'),
(225, 'siddhart yadav', '9368630035', '', 'EC-19', 9, 1, 0, 1, '2022-03-05 12:05:27'),
(226, 'Sahil agarwal', '9760424894', '', 'EC-19', 8, 1, 0, 1, '2022-03-05 12:07:52'),
(227, 'Sahil agarwal', '9760424894', '', 'EC-19', 9, 1, 0, 1, '2022-03-05 12:09:20'),
(228, 'kratika verma', '', 'kratikaverma2322@gmail.com', 'EC-19', 9, 1, 0, 0, '2022-03-05 14:18:49'),
(229, 'kritika verma', '', 'kratikaverma2322@gmail.com', 'EC-19', 9, 1, 0, 1, '2022-03-05 14:23:56');

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
(7, 4, 'Decode the Hidden', '➢&amp;nbsp;It is a team event (Max. 2 member).&amp;nbsp;&lt;p&gt;➢ Clue will be given to the participants &amp;amp; they have reach at desired place&amp;amp; click thephotograph, write answer on the paper.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Clue will include general facts, logical, reasoning, mathematical &amp;amp; commonunderstanding skills.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ The winner will be chosen at the end of round in minimum time.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Photograph will be clicked of whole team at the location.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Participants reaching timing at location will be measured.&lt;/p&gt;', '2022-03-05 11:30:00', 1, 2, 2, 20, '', '0000-00-00 00:00:00'),
(8, 5, 'SnapShot', '➢ Individual Event.&amp;nbsp;&lt;p&gt;➢ Event duration will be told on the spot.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Participant should bring his/her Mobile Phone (only for event duration).&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Mobile Phone will be provided from the mobile counter during the event duration &amp;amp; willbe submit back at the end of the event at the mobile counter.➢ Only real pictures should be taken on the spot inside the campus.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Participants have to submit their photo.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Give brief presentation of photo.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Judgment will be based on photo &amp;amp; presentation.&lt;/p&gt;', '2022-03-05 12:30:00', 1, 1, 2, 20, '', '0000-00-00 00:00:00'),
(9, 2, 'Ring the Bell', '➢ Individual Event.&amp;nbsp;&lt;p&gt;➢ Images/Poster/Video will be show in this game.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Who know answer then he/she will be press the buzzer &amp;amp; tell the answer?&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Those who ring the buzzer first in minimum time, he/she will get the chance to answer.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Judgment will be based on maximum number of answers who give in minimum time.&amp;nbsp;&lt;/p&gt;&lt;p&gt;➢ Buzzer will be provided.&lt;/p&gt;', '2022-03-05 13:30:00', 1, 1, 2, 20, '', '0000-00-00 00:00:00'),
(10, 5, 'Coffee Klatch', '➢ It is a team event (Max. 2 members)&amp;nbsp;&lt;p&gt;➢ Each team will be shown image (technical image) just for 1 minute and in next 5 minute, theywill have to debatein against &amp;amp; for based on their vision.&lt;/p&gt;', '2022-03-05 13:45:00', 1, 2, 2, 20, '', '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

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
