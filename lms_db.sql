-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 10:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankdb`
--
CREATE DATABASE IF NOT EXISTS `bankdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bankdb`;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `amount` int(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sender`, `receiver`, `amount`, `date`) VALUES
('Gourab Bank', 'Kavish Pagaria', 12000, '2022-04-20'),
('Harsh Bhat', 'Tanmay Bank', 60000, '2022-04-20'),
('Harsh Bhat', 'Atharva Ghangale', 10000, '2022-04-20'),
('Shreyas Poojari', 'Kavish Pagaria', 1000, '2022-04-20'),
('Gourab Bank', 'Tanmay Bank', 1000, '2022-04-20'),
('Gourab Bank', 'Tanmay Bank', 22750, '2022-04-20'),
('Gourab Bank', 'Tanmay Bank', 204750, '2022-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `balance` int(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `balance`, `email`) VALUES
('Gourab', 'Bank', 0, 'gourabbank12345@gmail.com'),
('Tanmay', 'Bank', 308000, 'tanmaybank@gmail.com'),
('Harsh', 'Bhat', 30000, 'hbhat@gmail.com'),
('Shreyas', 'Poojari', 19000, 'sp@gmail.com'),
('Atharva', 'Ghangale', 260000, 'aghangale@gmail.com'),
('Kavish', 'Pagaria', 213000, 'kp@gmail.com'),
('Aayush', 'Dube', 150000, 'avd@gmail.com');
--
-- Database: `banksbankdb`
--
CREATE DATABASE IF NOT EXISTS `banksbankdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `banksbankdb`;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`username`, `password`, `userid`) VALUES
('Gourab', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`userid`);
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'suryaprasadtripathy8@gmail.com', 'pinkylove');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Personal Home Page', '5b141d71485b9'),
('5b141d712647f', 'Private Home Page', '5b141d71485dc'),
('5b141d712647f', 'Pretext Hypertext Processor', '5b141d71485e0'),
('5b141d712647f', 'Preprocessor Home Page', '5b141d71485e4'),
('5b141d718f873', 'Rasmus Lerdorf', '5b141d71978be'),
('5b141d718f873', 'Willam Makepiece', '5b141d71978cc'),
('5b141d718f873', 'Drek Kolkevi', '5b141d71978d1'),
('5b141d718f873', 'List Barely', '5b141d71978d4'),
('5b141d71ddb46', '.html', '5b141d71e5f2b'),
('5b141d71ddb46', '.ph', '5b141d71e5f3c'),
('5b141d71ddb46', '.php', '5b141d71e5f43'),
('5b141d71ddb46', '.xml', '5b141d71e5f48'),
('5b141d721a738', 'for loop', '5b141d7222820'),
('5b141d721a738', 'do-while loop', '5b141d722282f'),
('5b141d721a738', 'foreach loop', '5b141d7222880'),
('5b141d721a738', 'All of the above', '5b141d7222884'),
('5b141d7260b7d', 'echo (â€œHello Worldâ€);', '5b141d7268b8a'),
('5b141d7260b7d', 'print (â€œHello Worldâ€);', '5b141d7268b95'),
('5b141d7260b7d', 'printf (â€œHello Worldâ€);', '5b141d7268b98'),
('5b141d7260b7d', 'All of the above', '5b141d7268b9a'),
('5b141d72a6fa1', 'file()', '5b141d72aefcb'),
('5b141d72a6fa1', 'arr_file()', '5b141d72aefd8'),
('5b141d72a6fa1', 'arrfile()', '5b141d72aefdc'),
('5b141d72a6fa1', 'file_arr()', '5b141d72aefe0'),
('5b141d72d7a1c', 'Magic Function', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Inbuilt Function', '5b141d72dfa85'),
('5b141d72d7a1c', 'Default Function', '5b141d72dfa88'),
('5b141d72d7a1c', 'User Defined Function', '5b141d72dfa8b'),
('5b141d731429b', 'CREATE TABLE table_name (column_name column_type);', '5b141d731c234'),
('5b141d731429b', 'CREATE table_name (column_type column_name);', '5b141d731c242'),
('5b141d731429b', 'CREATE table_name (column_name column_type);', '5b141d731c248'),
('5b141d731429b', 'CREATE TABLE table_name (column_type column_name);', '5b141d731c24b'),
('5b141d7345176', 'get_array() and get_row()', '5b141d734cd10'),
('5b141d7345176', 'fetch_array() and fetch_row()', '5b141d734cd1b'),
('5b141d7345176', 'get_array() and get_column()', '5b141d734cd1d'),
('5b141d7345176', 'fetch_array() and fetch_column()', '5b141d734cd20'),
('5b141d737ddfc', 'explode()', '5b141d73858d0'),
('5b141d737ddfc', 'implode()', '5b141d73858df'),
('5b141d737ddfc', 'concat()', '5b141d73858e3'),
('5b141d737ddfc', 'concatenate()', '5b141d73858e8'),
('5b1422651fdde', '32 bits', '5b1422654ab3a'),
('5b1422651fdde', '128 bytes', '5b1422654ab48'),
('5b1422651fdde', '64 bits', '5b1422654ab4d'),
('5b1422651fdde', '16 bytes', '5b1422654ab51'),
('5b14226574ed5', 'IP', '5b1422657d052'),
('5b14226574ed5', 'TCP', '5b1422657d05f'),
('5b14226574ed5', 'UDP', '5b1422657d064'),
('5b14226574ed5', 'ARP', '5b1422657d069'),
('5b142265b5d08', 'Session layer', '5b142265c09e3'),
('5b142265b5d08', 'Physical layer', '5b142265c09f5'),
('5b142265b5d08', 'Data Link layer', '5b142265c09fa'),
('5b142265b5d08', 'Application layer', '5b142265c09ff'),
('5b1422661d93f', '12.0.0.1', '5b14226635df5'),
('5b1422661d93f', '168.172.19.39', '5b14226635e04'),
('5b1422661d93f', '172.15.14.36', '5b14226635e09'),
('5b1422661d93f', '192.168.24.43', '5b14226635e0d'),
('5b14226663cf4', 'Application', '5b1422666bf2b'),
('5b14226663cf4', 'Presentation', '5b1422666bf39'),
('5b14226663cf4', 'Session', '5b1422666bf3e'),
('5b14226663cf4', 'Transport', '5b1422666bf42'),
('5b1422669481b', 'VTP', '5b1422669c8dc'),
('5b1422669481b', 'STP', '5b1422669c8ea'),
('5b1422669481b', 'RIP', '5b1422669c8ef'),
('5b1422669481b', 'CDP', '5b1422669c8f3'),
('5b142266c525c', '14', '5b142266cd353'),
('5b142266c525c', '15', '5b142266cd361'),
('5b142266c525c', '16', '5b142266cd365'),
('5b142266c525c', '30', '5b142266cd369'),
('5b14226711d91', '255.255.255.192', '5b14226719fa0'),
('5b14226711d91', '255.255.255.224', '5b14226719fb1'),
('5b14226711d91', '255.255.255.240', '5b14226719fb7'),
('5b14226711d91', '255.255.255.248', '5b14226719fbb'),
('5b1422674286d', '6', '5b1422674a9ee'),
('5b1422674286d', '8', '5b1422674aa01'),
('5b1422674286d', '30', '5b1422674aa06'),
('5b1422674286d', '32', '5b1422674aa0b'),
('5b1422677371f', '127.0.0.0', '5b1422677b3e9'),
('5b1422677371f', '1.0.0.127', '5b1422677b3f7'),
('5b1422677371f', '127.0.0.1', '5b1422677b3fc'),
('5b1422677371f', '127.0.0.255', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'What does PHP stand for?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Who is the father of PHP?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'PHP files have a default file extension of.', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Which of the looping statements is/are supported by PHP?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which of the following PHP statements will output Hello World on the screen?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Which one of the following function is capable of reading a file into an array?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'A function in PHP which starts with __ (double underscore) is know as..', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Which one of the following statements is used to create a table?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Which of the methods are used to manage result sets using both associative and indexed arrays?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Which one of the following functions can be used to concatenate array elements to form a single delimited string?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'How long is an IPv6 address?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Which protocol does DHCP use at the Transport layer?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Where is a hub specified in the OSI model?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Which of the following is private IP address?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'If you use either Telnet or FTP, which is the highest layer you are using to transmit data?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Which of the following is a layer 2 protocol used to maintain a loop-free network?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'What is the maximum number of IP addresses that can be assigned to hosts on a local subnet that uses the 255.255.255.224 subnet mask?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'You need to subnet a network that has 5 subnets, each with at least 16 hosts. Which classful subnet mask would you use?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'You have an interface on a router with the IP address of 192.168.192.10/29. Including the router interface, how many hosts can have IP addresses on the LAN attached to the router interface?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'To test the IP stack on your local host, which IP address would you ping?\r\n\r\n', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Php & Mysqli', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'Ip Networking', 3, 1, 10, '2018-06-03 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2018-06-03 16:57:45'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Swagatika Padhi', 'National Institute of Science and Technology, Berhampur', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, Berhampur', 'priyanka@gmail.com', 'pinka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `lms_db`
--
CREATE DATABASE IF NOT EXISTS `lms_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lms_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Gourab Bank', 'gourab@gmail.com', 'gourab');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(5, 12, 2, 4, 32, 1, '2020-09-07 16:59:14'),
(6, 12, 2, 5, 38, 1, '2020-09-07 16:59:14'),
(7, 13, 3, 6, 41, 1, '2022-03-10 14:36:59'),
(8, 13, 2, 4, 0, 0, '2022-03-10 14:37:19'),
(9, 13, 2, 5, 38, 1, '2022-03-10 14:37:19'),
(10, 13, 4, 9, 55, 0, '2022-03-10 15:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_duration` text COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(8, 'Learn Guitar The Easy Wayy', 'This course is your \"Free Pass\" to playing guitar. It is the most direct and to the point complete online guitar course.', 'Adil', '../image/courseimg/Guitar.jpg', '3 Hours', 1655, 1800),
(9, 'Complete PHP Bootcamp', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.', 'Rajesh Kumar', '../image/courseimg/php.jpg', '3 Months', 700, 1700),
(10, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'Rahul Kumar', '../image/courseimg/Python.jpg', '4 Months', 800, 1800),
(11, 'Hands-on Artificial Intelligence', 'Learn and Master how AI works and how it is changing our lives in this Course.\r\nlives in this Course.', 'Jay Veeru', '../image/courseimg/ai.jpg', '6 Months', 900, 1900),
(12, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'Jay Shukla', '../image/courseimg/vue.jpg', '2 Months', 100, 1000),
(13, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Sonam Gupta', '../image/courseimg/angular.jpg', '4 Month', 800, 1600),
(16, 'Python Complete', 'This is complete Python COurse', 'RK', '../image/courseimg/Python.jpg', '4 hours', 500, 4000),
(17, 'Learn React Native', 'THis is react native for android and iso app development', 'GeekyShows', '../image/courseimg/Machine.jpg', '2 months', 200, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `respmsg` text COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-12'),
(7, 'ORDS57717951', 'jay@ischool.com', 14, 'TXN_SUCCESS', 'Txn Success', 400, '2019-09-13'),
(8, 'ORDS22968322', 'mario@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-13'),
(9, 'ORDS78666589', 'ignou@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-19'),
(10, 'ORDS59885531', 'sonam@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2020-07-04'),
(11, 'ORDS90407957', 'sonam@gmail.com', 8, 'Success', 'Done', 1655, '2022-03-10'),
(12, 'ORDS11083226', 'gourabbank123@gmail.com', 8, 'Success', 'Done', 1655, '2022-03-10'),
(13, 'ORDS56317484', 'gourabbank123@gmail.com', 9, 'Success', 'Done', 500, '2022-04-20'),
(14, '91147996', 'gourabbank123@gmail.com', 8, 'Success', 'Done', 0, '2022-04-24'),
(15, '28224659', 'gourabbank123@gmail.com', 8, 'Success', 'Done', 0, '2022-04-24'),
(16, 'ORDS90864770', 'sadf@gmail.com', 12, 'Success', 'Done', 100, '2022-04-24'),
(17, '4191786', 'sadf@gmail.com', 8, 'Success', 'Done', 0, '2022-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(2, 6, 'Math', '2020-09-07 12:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at iSchool made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the iSchool for providing us the best of placement opportunities and finally I got placed in DC Marvel.', 171),
(8, 'I am grateful to iSchool - both the faculty and the Training & Placement Department. They have made efforts ensuring maximum number of placed students. Due to the efforts made by the faculty and placement cell. I was able to bag a job in the second company.', 172),
(9, 'iSchool is a place of learning, fun, culture, lore, literature and many such life preaching activities. Studying at the iSchool brought an added value to my life.', 173),
(10, 'Think Magical, that is one thing that iSchool urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 174),
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180),
(13, 'This is Awesome GeekySHows Jindabaad', 182);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(3, 2, 12, 4, 4, '2020-09-07 16:59:14'),
(4, 3, 13, 5, 5, '2022-03-10 14:36:59'),
(5, 2, 13, 2, 4, '2022-03-10 14:37:19'),
(6, 4, 13, 0, 5, '2022-03-10 15:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Introduction to Python ', 'Introduction to Python Desc', '../lessonvid/video2.mp4', 10, 'Learn Python A-Z'),
(33, 'How Python Works', 'How Python Works Descc', '../lessonvid/video3.mp4', 10, 'Learn Python A-Z'),
(34, 'Why Python is powerful', 'Why Python is powerful Desc', '../lessonvid/video9.mp4', 10, 'Learn Python A-Z'),
(35, 'Everyone should learn Python ', 'Everyone should learn Python  Desccc', '../lessonvid/video1.mp4', 10, 'Learn Python A-Z'),
(36, 'Introduction to PHP', 'Introduction to PHP Desc', '../lessonvid/video4.mp4', 9, 'Complete PHP Bootcamp'),
(37, 'How PHP works', 'How PHP works Desc', '../lessonvid/video5.mp4', 9, 'Complete PHP Bootcamp'),
(38, 'is PHP really easy ?', 'is PHP really easy ? desc', '../lessonvid/video6.mp4', 9, 'Complete PHP Bootcamp'),
(39, 'Introduction to Guitar44', 'Introduction to Guitar desc1', '../lessonvid/video7.mp4', 8, 'Learn Guitar The Easy Way'),
(40, 'Type of Guitar', 'Type of Guitar Desc2', '../lessonvid/video8.mp4', 8, 'Learn Guitar The Easy Way'),
(41, 'Intro Hands-on Artificial Intelligence', 'Intro Hands-on Artificial Intelligence desc', '../lessonvid/video10.mp4', 11, 'Hands-on Artificial Intelligence'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/video11.mp4', 11, 'Hands-on Artificial Intelligence'),
(43, 'Inro Learn Vue JS', 'Inro Learn Vue JS desc', '../lessonvid/video12.mp4', 12, 'Learn Vue JS'),
(44, 'intro Angular JS', 'intro Angular JS desc', '../lessonvid/video13.mp4', 13, 'Angular JS'),
(48, 'Intro to Python Complete', 'This is lesson number 1', '../lessonvid/video11.mp4', 16, 'Python Complete'),
(49, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/video11.mp4', 17, 'Learn React Native'),
(50, 'ads', 'dfsfa', '../lessonvid/FIFA 19 9_16_2021 10_42_19 PM.png', 10, 'Learn Python A-Z'),
(51, 'ads', 'dsaf', '../lessonvid/8ads', 8, 'Learn Guitar The Easy Wayy');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(4, 'asdasd ads ads f ddfg dfgg', 2, 0, '2020-09-07 14:32:18'),
(5, 'Sample Question', 2, 0, '2020-09-07 14:00:39'),
(6, 'JAAJS', 3, 0, '2022-03-10 14:36:00'),
(9, 'dfs', 4, 0, '2022-03-10 14:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(29, 'dsfsf sdf', 4, 0, '2020-09-07 14:40:57'),
(30, 'dfdf', 4, 0, '2020-09-07 14:40:57'),
(31, ' dfd', 4, 0, '2020-09-07 14:40:57'),
(32, 'dsfsd', 4, 1, '2020-09-07 14:40:57'),
(37, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(38, 'Right', 5, 1, '2020-09-07 14:41:32'),
(39, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(40, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(41, 'A', 6, 1, '2022-03-10 14:36:00'),
(42, 'B', 6, 0, '2022-03-10 14:36:00'),
(43, 'C', 6, 0, '2022-03-10 14:36:00'),
(44, 'D', 6, 0, '2022-03-10 14:36:00'),
(45, 'A', 7, 1, '2022-03-10 14:36:02'),
(46, 'B', 7, 0, '2022-03-10 14:36:02'),
(47, 'C', 7, 0, '2022-03-10 14:36:02'),
(48, 'D', 7, 0, '2022-03-10 14:36:02'),
(49, 'a', 8, 0, '2022-03-10 14:52:09'),
(50, 'b', 8, 0, '2022-03-10 14:52:09'),
(51, 'c', 8, 0, '2022-03-10 14:52:09'),
(52, 'd', 8, 0, '2022-03-10 14:52:09'),
(53, 'a', 9, 0, '2022-03-10 14:52:11'),
(54, 'b', 9, 0, '2022-03-10 14:52:11'),
(55, 'c', 9, 0, '2022-03-10 14:52:11'),
(56, 'd', 9, 0, '2022-03-10 14:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(2, 'Pre-Test (Math)', 2, 6, '2020-09-07 13:21:27'),
(3, 'test1', 5, 6, '2022-03-10 14:35:35'),
(4, 'asdf', 5, 6, '2022-03-10 14:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(5, 2, 12, '2020-09-07 15:05:58'),
(6, 2, 13, '2020-09-07 15:05:58'),
(7, 3, 13, '2022-03-10 14:35:45'),
(8, 3, 12, '2022-03-10 14:42:40'),
(10, 4, 13, '2022-03-10 14:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `stu_pass` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student, 4=vip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`, `user_type`) VALUES
(171, 'Captain Marvel', 'cap@example.com', '123456', ' Web Designer', '../image/stu/student2.jpg', 3),
(172, 'Ant Man', 'ant@example.com', '123456', ' Web Developer', '../image/stu/student4.jpg', 3),
(173, ' Dr Strange', 'doc@example.com', '123456', ' Web Developer', '../image/stu/student1.jpg', 3),
(174, 'Scarlet Witch', 'witch@example.com', '123456', 'Web Designer', '../image/stu/student3.jpg', 3),
(176, ' Shaktiman', 'shaktiman@ischool.com', '123456', 'Software ENgg', '../image/stu/shaktiman.jpg', 3),
(178, ' Mario', 'mario@ischool.com', '1234567', ' Web Dev', '../image/stu/super-mario-2690254_1280.jpg', 3),
(182, ' sonam', 'sonam@gmail.com', '123456', ' Web Dev', '../image/stu/student2.jpg', 3),
(183, 'Gourab', 'gourabbank123@gmail.com', '0251abkgtc', '', '', 4),
(184, 'Dibb', 'gourabbank12345@gmail.com', '13ed', '', '', 1),
(185, 'adam', 'adam@gmail.com', '12345678', '', '', 4),
(186, 'Adama', 'adama@gmail.com', '123456', '', '', 4),
(187, 'Beta', 'beta@gmail.com', '0251abkgtc', '', '', 4),
(188, 'Gourabb', 'bank@gmail.com', '0251abkgtc', '', '', 4),
(189, 'Oman', 'oman@gmail.com', '0251abkgtc', '', '', 1),
(190, 'Dibba', 'dibbs@gmail.com', '0251abkgtc', '', '', 4),
(191, 'sadf', 'sadf@gmail.com', '0251abkgtc', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(3, 12, '2-C', '2020-09-07 14:51:25'),
(4, 13, '2-C', '2020-09-07 14:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '2020-09-07 09:10:49'),
(6, 'John Smith', 2, 'jsmith', 'admin123', 1, '2020-09-07 10:23:30'),
(12, 'Sample Student', 3, 'sstudent', 'admin123', 1, '2020-09-07 14:51:25'),
(13, 'Claire Blake', 3, 'cblake', 'admin123', 1, '2020-09-07 14:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `login_register_pure_coding`
--
CREATE DATABASE IF NOT EXISTS `login_register_pure_coding` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login_register_pure_coding`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` int(255) NOT NULL,
  `email` int(255) NOT NULL,
  `password` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(0, 0, 0, 0);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"lms\",\"table\":\"users\"},{\"db\":\"login_register_pure_coding\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-10-21 05:44:24', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `quiz_db`
--
CREATE DATABASE IF NOT EXISTS `quiz_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quiz_db`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(5, 12, 2, 4, 32, 1, '2020-09-07 16:59:14'),
(6, 12, 2, 5, 38, 1, '2020-09-07 16:59:14'),
(7, 13, 2, 4, 32, 1, '2022-03-09 21:13:30'),
(8, 13, 2, 5, 38, 1, '2022-03-09 21:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(2, 6, 'Math', '2020-09-07 12:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(3, 2, 12, 4, 4, '2020-09-07 16:59:14'),
(4, 2, 13, 4, 4, '2022-03-09 21:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(4, 'asdasd ads ads f ddfg dfgg', 2, 0, '2020-09-07 14:32:18'),
(5, 'Sample Question', 2, 0, '2020-09-07 14:00:39'),
(6, 'gfghhg', 4, 0, '2022-03-09 20:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(29, 'dsfsf sdf', 4, 0, '2020-09-07 14:40:57'),
(30, 'dfdf', 4, 0, '2020-09-07 14:40:57'),
(31, ' dfd', 4, 0, '2020-09-07 14:40:57'),
(32, 'dsfsd', 4, 1, '2020-09-07 14:40:57'),
(37, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(38, 'Right', 5, 1, '2020-09-07 14:41:32'),
(39, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(40, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(45, 'a', 7, 0, '2022-03-09 20:23:33'),
(46, 'b', 7, 0, '2022-03-09 20:23:33'),
(47, 'c', 7, 0, '2022-03-09 20:23:33'),
(48, 'd', 7, 0, '2022-03-09 20:23:33'),
(49, 'a', 6, 0, '2022-03-09 21:10:33'),
(50, 'b', 6, 1, '2022-03-09 21:10:33'),
(51, 'c', 6, 0, '2022-03-09 21:10:33'),
(52, 'd', 6, 0, '2022-03-09 21:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(2, 'Pre-Test (Math)', 2, 6, '2020-09-07 13:21:27'),
(3, 's', 2, 6, '2022-03-09 20:22:24'),
(4, 'g', 2, 6, '2022-03-09 20:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(5, 2, 12, '2020-09-07 15:05:58'),
(6, 2, 13, '2020-09-07 15:05:58'),
(7, 4, 13, '2022-03-09 20:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(3, 12, '2-C', '2020-09-07 14:51:25'),
(4, 13, '2-C', '2020-09-07 14:54:28'),
(5, 14, 'a', '2022-03-09 21:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '2020-09-07 09:10:49'),
(6, 'John Smith', 2, 'jsmith', 'admin123', 1, '2020-09-07 10:23:30'),
(12, 'Sample Student', 3, 'sstudent', 'admin123', 1, '2020-09-07 14:51:25'),
(13, 'Claire Blake', 3, 'cblake', 'admin123', 1, '2020-09-07 14:54:28'),
(14, 'Gourab', 3, 'gourabbank', 'admin123', 1, '2022-03-09 21:11:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `users`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
