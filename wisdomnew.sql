-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2020 at 01:49 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisdomnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcreate`
--

DROP TABLE IF EXISTS `addcreate`;
CREATE TABLE IF NOT EXISTS `addcreate` (
  `add_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) NOT NULL,
  `subtopic` varchar(100) NOT NULL,
  `image` mediumtext NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcreate`
--

INSERT INTO `addcreate` (`add_id`, `topic`, `subtopic`, `image`, `description`) VALUES
(3, 'get A for combine mathematics', 'combine maths for everyone', 'uplords/add/product-school-ITF7fD0TSCY-unsplash.jpg', 'Mathematics (from Greek Î¼Î¬Î¸Î·Î¼Î± mÃ¡thÄ“ma, \"knowledge, study, learning\") includes the study of '),
(4, 'A for physics', 'physics', 'uplords/add/tim-gouw-KigTvXqetXA-unsplash.jpg', 'Mathematics (from Greek Î¼Î¬Î¸Î·Î¼Î± mÃ¡thÄ“ma, \"knowledge, study, learning\") includes the study of ');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `address`, `telephone`, `email`) VALUES
('896525478', 'kamani', 'perera', 'mahiyanganaya rd,badulla', 552849758, 'kp@gmail.com'),
('987625285', 'dushani', 'perera', 'N0:6 kappettipola rd, badulla', 552235105, 'dush@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `advertistment`
--

DROP TABLE IF EXISTS `advertistment`;
CREATE TABLE IF NOT EXISTS `advertistment` (
  `ad_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `admin_id` varchar(50) NOT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `admin_id` (`admin_id`),
  KEY `advertistment_ibfk_3` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(100) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`attendance_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `first_name`, `last_name`, `date_time`) VALUES
(3, ' 98', 'chapi', 'perera ', '2020-01-12 12:17:44'),
(4, ' 96', 'dush', 'perera ', '2020-01-12 12:18:27'),
(5, ' 968264273v', 'suresh', 'perera ', '2020-01-12 12:18:59'),
(6, ' 968264273v', 'suresh', 'perera ', '2020-01-12 12:19:59'),
(7, ' 98', 'chapi', 'perera ', '2020-01-12 15:14:56'),
(8, ' ', '', ' ', '2020-01-12 15:14:59'),
(9, ' 98', 'chapi', 'perera ', '2020-01-12 15:15:30'),
(10, ' 76', 'ree', 'fss ', '2020-01-12 15:16:29'),
(11, ' 98', 'chapi', 'perera ', '2020-01-12 15:18:20'),
(12, ' 98', 'chapi', 'perera ', '2020-01-12 15:19:08'),
(13, ' 968264273V', '', ' ', '2020-01-13 02:50:07'),
(14, ' 968264273V', '', ' ', '2020-01-13 02:51:06'),
(15, ' 968264273V', '', ' ', '2020-01-13 02:51:26'),
(16, ' 968264273V', '', ' ', '2020-01-13 02:51:40'),
(17, ' 968264273V', '', ' ', '2020-01-13 02:51:59'),
(18, ' 968264273V', '', ' ', '2020-01-13 02:54:09'),
(19, ' ', '', ' ', '2020-01-13 02:54:11'),
(20, ' 968264273V', '', ' ', '2020-01-13 02:54:18'),
(21, ' ', '', ' ', '2020-01-13 02:54:20'),
(22, ' 968264273V', '', ' ', '2020-01-13 02:54:26'),
(23, ' 968264273V', '', ' ', '2020-01-13 02:54:35'),
(24, ' ', '', ' ', '2020-01-13 02:54:37'),
(25, ' 968264273V', '', ' ', '2020-01-13 02:55:14'),
(26, ' 968264273V', '', ' ', '2020-01-13 02:55:36'),
(27, ' 968264273V', '', ' ', '2020-01-13 02:55:54'),
(28, ' ', '', ' ', '2020-01-13 02:55:56'),
(29, ' 968264273V', '', ' ', '2020-01-13 02:56:15'),
(30, ' ', '', ' ', '2020-01-13 02:56:16'),
(32, ' ', '', ' ', '2020-01-13 03:57:42'),
(33, ' ', '', ' ', '2020-01-13 03:57:44'),
(34, ' 968264273V', '', ' ', '2020-01-14 07:49:03'),
(35, ' 968264273V', '', ' ', '2020-01-14 07:49:54'),
(36, ' 968264273V', '', ' ', '2020-01-14 07:49:54'),
(37, ' 968264273V', '', ' ', '2020-01-14 07:50:33'),
(38, ' 968264273V', '', ' ', '2020-01-14 08:06:49'),
(39, ' 968264273V', '', ' ', '2020-01-14 08:07:19'),
(40, ' 98', '', ' ', '2020-01-14 19:24:06'),
(42, ' 968264273V', '', ' ', '2020-01-16 07:21:55'),
(43, ' 968264273V', '', ' ', '2020-01-16 07:25:39'),
(44, ' 968264273V', '', ' ', '2020-01-16 07:27:27'),
(45, ' 968264273V', '', ' ', '2020-01-16 08:24:48'),
(46, ' 968264273V', '', ' ', '2020-01-16 08:29:13'),
(47, ' 968264273V', '', ' ', '2020-01-16 08:30:32'),
(48, ' 968264273V', '', ' ', '2020-01-16 08:32:41'),
(49, ' 968264273V', '', ' ', '2020-01-16 09:13:47'),
(50, ' 968264273V', '', ' ', '2020-01-16 10:28:43'),
(51, ' 968264273V', '', ' ', '2020-01-16 10:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(100) NOT NULL,
  `subject_id` int(10) NOT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `batch_sub_fk` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(12) NOT NULL,
  `category` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
(1, 'Maths'),
(6, 'Bio'),
(7, 'Art');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
CREATE TABLE IF NOT EXISTS `description` (
  `description_id` varchar(50) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user` varchar(50) NOT NULL,
  `forum_id` varchar(50) NOT NULL,
  PRIMARY KEY (`description_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `name`, `description`, `email`) VALUES
(1, 'dushani perera', 'I want to know about the further details?', 'dushaniperera96@gmail.com'),
(2, 'Anjali karunadasa', 'your institute has laborotary facilities?', 'ak@gmail.com'),
(3, 'amal', 'good', 'amal@gmail.com'),
(4, 'sandaru', 'good', 'sandaru@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
  `file_id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `forum_id` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  PRIMARY KEY (`forum_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `login_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`, `login_id`) VALUES
('dushani', 'dush', 'student', ''),
('dushani', '123', 'admin', ''),
(' amal', '123', 'student', '968264273v '),
(' ama', '123', 'student', '968264279v '),
(' chapi', '123', 'student', '968264279v '),
('kamani', '123', 'admin', '3265847v'),
('yasiru', 'abc', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `mark_id` varchar(50) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`mark_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `marks_ibfk_2` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(100) NOT NULL,
  `parent_name` varchar(25) NOT NULL,
  `type` varchar(20) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `another_children` varchar(20) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`p_id`, `student_id`, `parent_name`, `type`, `telephone`, `email`, `another_children`) VALUES
(48, '968264273v', 'sunil hewage', 'farther', 778168022, 'nimal@gmail.com', '15'),
(49, ' 998564521v', 'sriyalatha perera', 'mother', 771269618, 'dushani@gmail.com', '12 ');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentName` varchar(100) NOT NULL,
  `studentId` int(11) NOT NULL,
  `month` varchar(60) NOT NULL,
  `total_fee` float NOT NULL,
  `paid_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `studentName`, `studentId`, `month`, `total_fee`, `paid_at`) VALUES
(1, 'dushani', 96826427, 'September', 1000, '2020-01-16 11:03:45'),
(2, 'chathumal', 97545125, 'March', 1000, '2020-01-16 11:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `slideimages`
--

DROP TABLE IF EXISTS `slideimages`;
CREATE TABLE IF NOT EXISTS `slideimages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slideimages`
--

INSERT INTO `slideimages` (`id`, `image`) VALUES
(5, 'uplords/slideimages/tim-gouw-KigTvXqetXA-unsplash.jpg'),
(8, 'uplords/slideimages/caleb-woods-RIcMwDLk1wo-unsplash.jpg'),
(10, 'uplords/slideimages/photo-1497633762265-9d179a990aa6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(75) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `type` varchar(100) DEFAULT 'Full Payment',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `address`, `telephone`, `email`, `path`, `status`, `type`) VALUES
(' 998564521v', 'aruna', 'madusanka', 'No:26/2 gunathilaka road', 778168022, 'dushaniperera96@gmail.com ', NULL, 'pending', 'Full Payment'),
('968264273v', 'Dushanee', 'Perera', 'no:26/2 gunathilake rd,Panadura.', 778168022, 'dushani@gmail.com', '', 'pending', 'full payment');

-- --------------------------------------------------------

--
-- Table structure for table `student_batch`
--

DROP TABLE IF EXISTS `student_batch`;
CREATE TABLE IF NOT EXISTS `student_batch` (
  `student_id` varchar(100) NOT NULL,
  `batch_name` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_batch`
--

INSERT INTO `student_batch` (`student_id`, `batch_name`) VALUES
(' 132123', '2012 '),
(' 2', '2021 '),
(' 2121', '2021 '),
(' 212121', '2012 '),
(' 253434', '2012 '),
(' 30', '2012 '),
(' 31', '2012 '),
(' 54', '2012 '),
(' 654654', '2012 '),
(' 968547', '2021 '),
(' 98', ' '),
(' 998564521v', '2021 ');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_title` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `sub_title`) VALUES
(1, 'combine maths'),
(2, 'physics'),
(3, 'chemistry'),
(4, 'Accounting'),
(5, 'Business studies'),
(6, 'Economics'),
(7, 'Sinhala\r\n'),
(8, 'Political Science'),
(9, 'ICT'),
(10, 'Geography'),
(11, ' dfsfd '),
(12, ' sycho '),
(13, ' bio '),
(14, ' bio ');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `studentId` int(10) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `studentId`, `subjectName`) VALUES
(1, 12345678, 'Combined Maths'),
(2, 12345678, 'Physics'),
(3, 123456789, 'Combined Maths'),
(4, 123456789, 'Physics'),
(5, 123456, 'Combined Maths'),
(6, 123456, 'Physics'),
(7, 123456, 'Physics'),
(8, 1234, 'Combined Maths'),
(9, 1234, 'Physics'),
(10, 123, 'Combined Maths'),
(11, 456859685, 'Physics'),
(12, 96826427, 'Chemestry'),
(13, 2147483647, 'Combined Maths'),
(14, 97545125, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `subject_student`
--

DROP TABLE IF EXISTS `subject_student`;
CREATE TABLE IF NOT EXISTS `subject_student` (
  `student_id` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_student`
--

INSERT INTO `subject_student` (`student_id`, `subject_title`) VALUES
(' 132123', 'maths '),
(' 2', 'maths '),
(' 2121', 'maths,sinhala '),
(' 212121', 'maths '),
(' 253434', 'maths '),
(' 3', 'rdsfds '),
(' 30', 'maths '),
(' 31', 'maths,sinhala '),
(' 54', 'maths '),
(' 654654', 'maths '),
(' 968547', 'maths '),
(' 98', ' '),
(' 998564521v', 'combine maths '),
('968264273', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

DROP TABLE IF EXISTS `tblcomment`;
CREATE TABLE IF NOT EXISTS `tblcomment` (
  `comment_Id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `post_Id` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `login_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`comment_Id`),
  KEY `student_id` (`login_id`),
  KEY `post_Id` (`post_Id`),
  KEY `student_id_2` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpost`
--

DROP TABLE IF EXISTS `tblpost`;
CREATE TABLE IF NOT EXISTS `tblpost` (
  `post_Id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `datetime` datetime DEFAULT NULL,
  `cat_id` int(12) DEFAULT NULL,
  `login_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`post_Id`),
  KEY `cat_id` (`cat_id`),
  KEY `student_id` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `last_name`, `subject_name`, `address`, `telephone`, `email`, `path`) VALUES
(' 2132321', 'dushane', 'perera', 'dfsfd', 'No:26/2 gunathilaka road', 778168022, 'dushaniperera0@gmail.com ', NULL),
(' 434', 'chapi', 'perera', 'dfsfd', 'No:26/2 gunathilaka road', 778168022, 'dushaniperera96@gmail.com ', NULL),
(' 856524487v', 'amarabandu', 'rupasinghe', 'sycho', 'No:26/2 gunathilaka road', 778168022, 'amarabandu96@gmail.com ', NULL),
(' 965689654v', 'jagath', 'rathmayake', 'bio', 'No:26/2 gunathilaka road', 778168022, 'jagath@gmail.com ', NULL),
('968264785v', 'nimal', 'perera', '', 'panadura', 771269618, 'nimal@gmail.com', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertistment`
--
ALTER TABLE `advertistment`
  ADD CONSTRAINT `advertistment_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `advertistment_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `batch_sub_fk` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`forum_id`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
