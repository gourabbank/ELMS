-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 03:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

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
(1, 'Harsh Bhat', 'harshbhat8@gmail.com', 'admin');

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
(6, 12, 2, 5, 38, 1, '2020-09-07 16:59:14');

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
  `course_original_price` int(11) NOT NULL,
  `lessoncount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`, `lessoncount`) VALUES
(8, 'Learn Guitar The Easy Way', 'This course is your \"Free Pass\" to playing guitar. It is the most direct and to the point complete online guitar course.', 'Harsh Bhat', '../image/courseimg/Guitar.jpg', '3 Hours', 1, 1800, 3),
(9, 'Complete PHP Bootcamp', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.', 'Yashraj Desai', '../image/courseimg/php.jpg', '3 Months', 0, 1700, 3),
(10, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'Aniket Dewnani', '../image/courseimg/Python.jpg', '4 Months', 800, 1800, 9),
(11, 'Hands-on Artificial Intelligence', 'Learn and Master how AI works and how it is changing our lives in this Course.\r\nlives in this Course.', 'Gourab Bank', '../image/courseimg/ai.jpg', '6 Months', 900, 1900, 2),
(12, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'Jay Shukla', '../image/courseimg/vue.jpg', '2 Months', 100, 1000, 1),
(13, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Yash Jawale', '../image/courseimg/angular.jpg', '4 Month', 800, 1600, 1),
(16, 'Python Complete', 'This is complete Python COurse', 'Shreyas Poojari', '../image/courseimg/Python.jpg', '4 hours', 500, 4000, 1),
(17, 'Learn React Native', 'THis is react native for android and iso app development', 'Ruturaj Wairkar', '../image/courseimg/Machine.jpg', '2 months', 200, 3000, 1),
(21, 'Introduction to Spanish Language', 'Spanish', 'Harsh Bhat', '../image/courseimg/ignou.jpg', '3 months', 3000, 1800, 0);

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
(17, 'ORDS45429576', 'harshbhat8@gmail.com', 10, 'Success', 'Done', 800, '2009-03-22'),
(20, 'ORDS89936095', 'harshbhat8@gmail.com', 8, 'Success', 'Done', 1, '2022-03-11'),
(21, '88993249', 'yash@gmail.com', 12, 'Success', 'Done', 0, '2022-04-25'),
(22, '34163415', 'yash@gmail.com', 11, 'Success', 'Done', 0, '2022-04-25'),
(23, '70724250', '2019harsh.bhat@ves.ac.in', 16, 'Success', 'Done', 0, '2022-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `coursestatus`
--

CREATE TABLE `coursestatus` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8mb4_bin NOT NULL,
  `stu_id` int(11) NOT NULL,
  `stu_email` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `lessoncount` int(11) NOT NULL,
  `videocomplete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `coursestatus`
--

INSERT INTO `coursestatus` (`course_id`, `course_name`, `stu_id`, `stu_email`, `lessoncount`, `videocomplete`) VALUES
(8, 'Learn Guitar The Easy Wayy', 183, 'gourabbank123@gmail.com', 3, 0);

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
(3, 14, 'Python', '2022-03-10 15:33:47');

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
(14, 'i like eLMS', 183);

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
(3, 2, 12, 4, 4, '2020-09-07 16:59:14');

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
(32, 'Introduction to Python ', 'Introduction to Python Desc', '../lessonvid/video1.mp4', 10, 'Learn Python A-Z'),
(33, 'How Python Works', 'How Python Works Descc', '../lessonvid/video2.mp4', 10, 'Learn Python A-Z'),
(36, 'Introduction to PHP', 'Introduction to PHP Desc', '../lessonvid/video4.mp4', 9, 'Complete PHP Bootcamp'),
(37, 'How PHP works', 'How PHP works Desc', '../lessonvid/video5.mp4', 9, 'Complete PHP Bootcamp'),
(38, 'is PHP really easy ?', 'is PHP really easy ? desc', '../lessonvid/video6.mp4', 9, 'Complete PHP Bootcamp'),
(39, 'Introduction to Guitar44', 'Introduction to Guitar desc1', '../lessonvid/video9.mp4', 8, 'Learn Guitar The Easy Way'),
(40, 'Type of Guitar', 'Type of Guitar Desc2', '../lessonvid/video8.mp4', 8, 'Learn Guitar The Easy Way'),
(41, 'Intro Hands-on Artificial Intelligence', 'Intro Hands-on Artificial Intelligence desc', '../lessonvid/', 11, 'Hands-on Artificial Intelligence'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/video11.mp4', 11, 'Hands-on Artificial Intelligence'),
(43, 'Inro Learn Vue JS', 'Inro Learn Vue JS desc', '../lessonvid/video12.mp4', 12, 'Learn Vue JS'),
(44, 'intro Angular JS', 'intro Angular JS desc', '../lessonvid/video13.mp4', 13, 'Angular JS'),
(48, 'Intro to Python Complete', 'This is lesson number 1', '../lessonvid/video11.mp4', 16, 'Python Complete'),
(49, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/video11.mp4', 17, 'Learn React Native'),
(51, 'Los Alfabetos y Numeros', 'Aprende los alfabetos y numeros de espanol en la manera mas simple!', '../lessonvid/video5.mp4', 19, 'Introduction to Spanish Language'),
(52, 'Keywords And Identifiers In Python', 'Keywords And Identifiers', '../lessonvid/cn5.1.PNG', 10, 'Learn Python A-Z'),
(53, 'Keywords And Identifiers ', 'abcde', '../lessonvid/video9.mp4', 20, 'Intro to C'),
(54, 'Strings and nodes', 'yesss', '../lessonvid/_Strings and nodes', 8, 'Learn Guitar The Easy Way'),
(55, 'Classes and Objects', 'noo', '../lessonvid/Learn Python A-Z_Classes and Objects', 10, 'Learn Python A-Z'),
(56, 'Los Alfabetos y Numeros', 'abcde', '../lessonvid/Learn Python A-Z_Los Alfabetos y Numeros', 10, 'Learn Python A-Z'),
(57, 'Strings and nodes', 'dsda', '../lessonvid/Learn Python A-Z_Strings and nodes', 10, 'Learn Python A-Z'),
(58, 'python identifiers', 'py py py', '../lessonvid/Learn Python A-Z_python identifiers', 10, 'Learn Python A-Z'),
(59, 'Strings ', 'desc', '../lessonvid/Learn Python A-Z_Strings ', 10, 'Learn Python A-Z'),
(60, 'libraries', 'abcd', '../lessonvid/Learn Python A-Z_libraries', 10, 'Learn Python A-Z');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` text COLLATE utf8_bin NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(37, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(38, 'Right', 5, 1, '2020-09-07 14:41:32'),
(39, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(40, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(41, 'Harsh Bhat', 6, 0, '2022-03-10 17:55:03'),
(42, 'Yash Jawale', 6, 0, '2022-03-10 17:55:04'),
(43, 'Ruturaj Wairkar', 6, 0, '2022-03-10 17:55:04'),
(44, 'Gourab Bank', 6, 0, '2022-03-10 17:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_link` text COLLATE utf8_bin NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_link`, `lesson_id`, `lesson_name`, `course_id`) VALUES
(1, '50', 32, 'Introduction to Python ', 8),
(2, '100', 55, 'Classes and Objects', 10),
(3, '50', 33, 'How Python Works', 10),
(4, '50', 56, 'Los Alfabetos y Numeros', 10),
(5, '22', 41, 'Intro Hands-on Artificial Intelligence', 11),
(6, '50', 58, 'python identifiers', 10),
(8, 'https://docs.google.com/forms/d/19BiWjsjCh2hT068T1cCHjYHELfCAzr7Myx5UiYaMzc4/edit', 60, 'libraries', 10),
(9, 'https://github.com/gourabbank/ELMS', 48, 'Intro to Python Complete', 16),
(10, 'link', 54, 'Strings and nodes', 10),
(11, 'https://docs.google.com/document/d/1666sDZkV36nBwhEpVqQYUzCH3AI9WoM42ZXX4JM1Irc/edit', 39, 'Introduction to Guitar44', 8),
(12, 'https://docs.google.com/document/d/1666sDZkV36nBwhEpVqQYUzCH3AI9WoM42ZXX4JM1Irc/edit', 55, 'Classes and Objects', 10);

-- --------------------------------------------------------

--
-- Table structure for table `quizz`
--

CREATE TABLE `quizz` (
  `quizz_id` int(11) NOT NULL,
  `quiz_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `lesson_id` int(11) NOT NULL,
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`lesson_id`, `id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(55, 3, 'Python', 2, 14, '2022-03-10 16:22:21');

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
(7, 2, 13, '2022-03-10 15:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`, `user_type`) VALUES
(183, '   Harsh Bhat', 'harshbhat8@gmail.com', 'harshisgreat', '   Student', '../image/stu/me.jpg', 0),
(184, 'Yash Jawale', 'yashjawale1@gmail.com', 'yashisgreat', '', '', 0),
(185, ' Harsh Bhat', '2019harsh.bhat@ves.ac.in', 'harsh', ' Student', '../image/stu/', 4),
(186, 'Yash', 'yash@gmail.com', 'yash', '', '', 4);

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
(1, 'Administrator', 1, 'admin', 'admin123', 1, '2020-09-07 09:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `vip`
--

CREATE TABLE `vip` (
  `vip_id` int(11) NOT NULL,
  `vip_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `vip_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `vip_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `vip_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `vip_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
-- Indexes for table `coursestatus`
--
ALTER TABLE `coursestatus`
  ADD UNIQUE KEY `stu_id` (`stu_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `lessoncount` (`lessoncount`);

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
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quizz`
--
ALTER TABLE `quizz`
  ADD PRIMARY KEY (`quizz_id`),
  ADD KEY `quizz_id` (`quizz_id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`,`id`);

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
-- Indexes for table `vip`
--
ALTER TABLE `vip`
  ADD PRIMARY KEY (`vip_id`);

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vip`
--
ALTER TABLE `vip`
  MODIFY `vip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coursestatus`
--
ALTER TABLE `coursestatus`
  ADD CONSTRAINT `coursestatus_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `coursestatus_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `quizz_ibfk_1` FOREIGN KEY (`quizz_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD CONSTRAINT `quiz_list_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`lesson_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
