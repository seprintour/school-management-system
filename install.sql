-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2017 at 04:51 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE IF NOT EXISTS `academic_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_syllabus_code` longtext NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `uploader_type` longtext NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE IF NOT EXISTS `accountant` (
  `accountant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`accountant_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES
(3, 'ACCOUNTANT', '06/10/2014', 'male', '', '', 'FEDERAL COLLEGE OF EDUCATION, OSIELE ABEOKUTA OGUN STATE', '08033527716', 'accountant@accountant.com', 'account', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`) VALUES
(3, 'Admininstrator', 'admin@admin.com', 'admin', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE IF NOT EXISTS `alumni` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `interest` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `name`, `sex`, `phone`, `email`, `address`, `profession`, `marital_status`, `g_year`, `club`, `interest`) VALUES
(5, 'MR WALE', 'female', '08033527716', 'segtism@gmail.com', 'THIS IS THE ADDRESS OF THE ALUMNI, IT WORTH SHARING THANKS', 'SOFTWARE DEVELOPER', 'MARRIED', '2012', 'SCIENCE', 'READING');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `label` varchar(10) NOT NULL DEFAULT 'A',
  `content` text NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=286 ;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `title`, `description`, `file_name`, `file_type`, `class_id`, `teacher_id`, `timestamp`) VALUES
(1, 'TRUE LOVE STORY', 'GO TO GOOGLE AND BROWSE FOR INFORMATION ABOUT TITANIC', 'Email.docx', 'doc', '2', 0, 'Wed, 12 July 2017');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`) VALUES
(1, 2, 1, '2017-07-04'),
(2, 0, 5, '2017-07-08'),
(3, 1, 8, '2017-07-13'),
(4, 2, 9, '2017-07-13'),
(5, 1, 5, '2017-07-13'),
(6, 1, 10, '2017-07-13'),
(7, 0, 8, '2017-07-08'),
(8, 0, 9, '2017-07-08'),
(9, 0, 12, '2017-07-08'),
(10, 0, 14, '2017-07-08'),
(11, 0, 5, '2020-01-01'),
(12, 0, 11, '2020-01-01'),
(13, 0, 13, '2020-01-01'),
(14, 0, 8, '2020-01-01'),
(15, 0, 9, '2020-01-01'),
(16, 0, 12, '2020-01-01'),
(17, 0, 14, '2020-01-01'),
(18, 1, 8, '2017-07-16'),
(19, 2, 9, '2017-07-16'),
(20, 0, 12, '2017-07-16'),
(21, 0, 14, '2017-07-16'),
(22, 0, 5, '2017-07-16'),
(23, 0, 11, '2017-07-16'),
(24, 0, 13, '2017-07-16'),
(25, 2, 8, '2017-08-18'),
(26, 2, 9, '2017-08-18'),
(27, 2, 14, '2017-08-18'),
(28, 0, 5, '2017-08-18'),
(29, 0, 11, '2017-08-18'),
(30, 0, 13, '2017-08-18'),
(31, 0, 15, '2017-08-18'),
(32, 0, 12, '2017-08-18'),
(33, 0, 5, '2017-08-15'),
(34, 0, 11, '2017-08-15'),
(35, 0, 13, '2017-08-15'),
(36, 0, 15, '2017-08-15'),
(37, 0, 8, '2017-08-22'),
(38, 0, 9, '2017-08-22'),
(39, 0, 14, '2017-08-22'),
(53, 0, 5, '0000-00-00'),
(54, 0, 11, '0000-00-00'),
(55, 0, 13, '0000-00-00'),
(56, 0, 15, '0000-00-00'),
(57, 2, 5, '2017-08-19'),
(58, 2, 11, '2017-08-19'),
(59, 2, 13, '2017-08-19'),
(60, 2, 15, '2017-08-19'),
(61, 1, 5, '2017-08-17'),
(62, 2, 11, '2017-08-17'),
(63, 1, 13, '2017-08-17'),
(64, 2, 15, '2017-08-17'),
(65, 2, 5, '2017-08-25'),
(66, 1, 11, '2017-08-25'),
(67, 2, 13, '2017-08-25'),
(68, 1, 15, '2017-08-25'),
(69, 1, 5, '2017-08-20'),
(70, 1, 11, '2017-08-20'),
(71, 1, 13, '2017-08-20'),
(72, 1, 15, '2017-08-20'),
(73, 1, 8, '2017-08-19'),
(74, 2, 9, '2017-08-19'),
(75, 1, 14, '2017-08-19'),
(76, 1, 5, '2017-08-21'),
(77, 1, 11, '2017-08-21'),
(78, 1, 13, '2017-08-21'),
(79, 1, 15, '2017-08-21'),
(80, 0, 8, '2017-08-04'),
(81, 0, 9, '2017-08-04'),
(82, 0, 14, '2017-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `banar`
--

CREATE TABLE IF NOT EXISTS `banar` (
  `banar_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_namea` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `b_nameb` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`banar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `banar`
--

INSERT INTO `banar` (`banar_id`, `b_namea`, `b_nameb`) VALUES
(7, 'WE ARE THE BEST IN ALL SITUATIONS', 'CONGRATULATIONS FOR THE SUCCESS FO THIS PROGRAMME');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author`, `class_id`, `status`, `price`) VALUES
(2, 'PHP', 'COMPLETE PHP REFERENCE', 'OPTIMUM LINKUP COMPUTERS', '3', 'available', '40000');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE IF NOT EXISTS `circular` (
  `circular_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ref` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`circular_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`circular_id`, `subject`, `ref`, `content`, `date`) VALUES
(2, 'PARENT MEETINGS ASSOCIATION TODAY', 'PTAMEETINGS', 'THERE IS GOING TO BE MEETINGS TODAY', 'Thu, 13 July 2017');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('097f0054095ab89fc5de0c44acce5651d866b4dd', '127.0.0.1', 1504899967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839393936373b),
('14f46da4eaea4c97b9d0a398436154a80f9ebd2b', '127.0.0.1', 1504897251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839373035303b),
('16b10b2790267c701cf3521bcde13b99a8876520', '127.0.0.1', 1504893949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839333837393b),
('23fed49601c594138de832130d8e6dab1f91839d', '127.0.0.1', 1504971966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343937313936363b),
('3334db9772ae2b9983ba1b5e71991f4dbcef813c', '127.0.0.1', 1504892246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839313537353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2233223b6c6f67696e5f757365725f69647c733a313a2233223b6e616d657c733a31343a2241646d696e696e73747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('58c0cc78c1eff7efb68ce4e3f4d14deeaf5e8775', '127.0.0.1', 1504891111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839313035393b),
('6889107d4ce35f3b19749031e87f3e66539a5fb8', '127.0.0.1', 1504894769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839343630363b),
('86c9d9ab98a93e419971a3e77a77fd53b5e4a360', '127.0.0.1', 1504953430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343935333433303b),
('8adbdeb55c4e126493e99bd12ca2a321563b7f3d', '127.0.0.1', 1504898806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839383634383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2233223b6c6f67696e5f757365725f69647c733a313a2233223b6e616d657c733a31343a2241646d696e696e73747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('8e32aafbae7ad1e2587f5cffa35d9aba8c167ebe', '127.0.0.1', 1504892387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839323338373b),
('9c48da9ef9c2d8f5853cc5969f6706c84c970610', '127.0.0.1', 1504898014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839373734313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2233223b6c6f67696e5f757365725f69647c733a313a2233223b6e616d657c733a31343a2241646d696e696e73747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('bb8415f63a636aecfb4e22a0899989e0a8fc377a', '127.0.0.1', 1504898108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343839383130383b),
('cca478cb0110f3405c2743ed075270a92ce6d75b', '127.0.0.1', 1504975820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343937353832303b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(2, 'KG', 'KG1', 2),
(3, 'Primary One', 'Primary 1', 2),
(4, 'PRIMARY THREE', 'PRY 3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `time_start_min` int(11) NOT NULL,
  `time_end_min` int(11) NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`class_routine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE IF NOT EXISTS `club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `desc`) VALUES
(1, 'Science', 'This is just the most important aspect of clubs'),
(3, 'Jet Club', 'This is for those that want to go into engineering fields');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `title`, `description`, `file_name`, `file_type`, `class_id`, `teacher_id`, `timestamp`) VALUES
(5, 'assignment', 'assignment', 'SIMULATION COMPLETE SOFTWARE.doc', 'doc', '1', 0, '1499731200'),
(4, 'Investment| Management System', 'Investment| Management System. This is the information am talking about2', 'OLAWUYI.docx', 'doc', '2', 0, '1500495420');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `number_of_room`, `description`) VALUES
(1, 'Main Hall', '402', 'Very Clean Apartment'),
(3, 'New building', '1000', 'For all students');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiry_id`, `category`, `mobile`, `purpose`, `name`, `whom_to_meet`, `date`) VALUES
(1, 'Parent', '08033527716', 'For Admission', 'Optimum Linkup Universal Concepts', 'Teacher', '0000-00-00 00:00:00'),
(4, 'Guardian', '08033527716', 'Payment Coolection', 'OPtimum Linkup Computers', 'Administrative Office', '2017-07-05 02:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_category`
--

CREATE TABLE IF NOT EXISTS `enquiry_category` (
  `enquirycat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`enquirycat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `enquiry_category`
--

INSERT INTO `enquiry_category` (`enquirycat_id`, `category`, `purpose`, `whom`) VALUES
(1, 'Parent', 'For Admission', 'Teacher'),
(2, 'Vendors', 'Student Performance', 'Principal'),
(3, 'School Staff', 'Bill Submit', 'Administrative Office'),
(4, 'Service Man', 'Payment Collection', 'Director'),
(5, 'Others', 'Complain by Parent', 'Reception'),
(6, 'Visitors', 'Student Leave Early', 'Others'),
(8, 'Guardian', 'PTA', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE IF NOT EXISTS `enroll` (
  `enroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `from_class_id` int(11) NOT NULL,
  `to_class_id` int(11) NOT NULL,
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `student_id`, `from_class_id`, `to_class_id`) VALUES
(1, 5, 2, 3),
(2, 8, 3, 4),
(3, 9, 3, 4),
(4, 14, 3, 4),
(5, 11, 2, 3),
(6, 13, 2, 3),
(7, 15, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `comment`) VALUES
(1, 'Maths', '07/05/2017', 'This wil commence on the stipulated period of time'),
(2, 'English', '08/21/2017', 'This is the test exam.');

-- --------------------------------------------------------

--
-- Table structure for table `examquestion`
--

CREATE TABLE IF NOT EXISTS `examquestion` (
  `examquestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext NOT NULL,
  PRIMARY KEY (`examquestion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `examquestion`
--

INSERT INTO `examquestion` (`examquestion_id`, `name`, `title`, `description`, `file_name`, `file_type`, `class_id`, `timestamp`, `status`) VALUES
(8, 'Optimum', 'Mathematics', 'THIS EXAM IS FOR PRIMARY ONE PUPILS, PLEASE READ AND GIVE FEEDBACK SIR. THANKS', 'FOLUSO.docx', '', '3', 'Sat, 08 July 2017', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE IF NOT EXISTS `exam_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE IF NOT EXISTS `expense_category` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
(1, 'Teacher Salary'),
(2, 'Classroom Equipments'),
(3, 'Classroom Decorations'),
(4, 'Inventory Purchase'),
(5, 'Exam Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `front_end`
--

CREATE TABLE IF NOT EXISTS `front_end` (
  `front_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`front_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `front_end`
--

INSERT INTO `front_end` (`front_id`, `type`, `description`) VALUES
(3, 'about_us', ' Welcome to the bank of the 22nd Century. Bank Emerald is a bank that provides innovative solutions for all. We provide 36% interest per annum on all your deposits or 1% monthly on all your deposits. Fund your account instantly and withdraw instantly. Invest in your future today. '),
(4, 'vission', 'VISSION The first stage is to have you fund your wallet instantly and invest in Bank Emerald1'),
(5, 'mission', 'MISSION The first stage is to have you fund your wallet instantly and invest in Bank Emerald1'),
(6, 'goal', 'GOAL The first stage is to have you fund your wallet instantly and invest in Bank Emerald1'),
(7, 'services', 'SERVICES At Bank Emerald, our range of services are as below with description. Services we render are reliable and profitable.');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, 'test grade', '5', 0, 100, 'this is a test for grade');

-- --------------------------------------------------------

--
-- Table structure for table `help_desk`
--

CREATE TABLE IF NOT EXISTS `help_desk` (
  `helpdesk_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`helpdesk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `help_desk`
--

INSERT INTO `help_desk` (`helpdesk_id`, `name`, `purpose`, `content`) VALUES
(3, 'Omololu Esther', 'Payment Collection', 'We not able to pay school fees all the time please find solution to this problem as soon as possible'),
(4, 'TUNDE ALOWO', 'SCHOOL FEES PAYMENT', 'I WANT TO MAKE NOTICE TO THE MANAGEMENT THAT I WAS UNABLE TO MAKE PAYMENT OF MY SCHOOL FEES. THANKS FOR YOUR UNDERSTANDNG');

-- --------------------------------------------------------

--
-- Table structure for table `help_link`
--

CREATE TABLE IF NOT EXISTS `help_link` (
  `helplink_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`helplink_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `help_link`
--

INSERT INTO `help_link` (`helplink_id`, `title`, `link`) VALUES
(3, 'THIS IS THE TITLE OF THE ASSIGNMENT', 'https://www.optimumlinkup.com.ng'),
(4, 'Introduction to Java Programming', 'https://www.optimumlinkup.com.ng'),
(6, 'JAVA VIDEO TUTORIAL', 'https://www.optimumlinkup.com.ng');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE IF NOT EXISTS `holiday` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `holiday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `title`, `holiday`, `date`) VALUES
(2, 'JUNE 12', 'THERE IS GOING TO BE HOLIDAY SOON', 'Wed, 26 July 2017'),
(3, 'MAY 25', 'THERE IS GOING TO BE HOLIDAY SOON', 'Tue, 25 July 2017');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `hostel_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES
(2, 'Mr. Kilani', '06/19/2018', 'male', '', '', 'federal college of education', '8161662924', 'kilani@kilani.com', 'kilani', ''),
(5, 'hostel', '06/01/2014', 'male', '', '', 'FEDERAL COLLEGE OF EDUCATION, OSIELE ABEOKUTA OGUN STATE', '08033527716', 'hostel@hostel.com', 'hostel', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `student_id`, `title`, `description`, `amount`, `amount_paid`, `due`, `creation_timestamp`, `payment_timestamp`, `payment_method`, `payment_details`, `status`) VALUES
(1, 5, 'PAYMENT FOR SCHOOL FEES', 'YOU ARE TO PAY THE MONEY WITHING THE STIPULATED PERIOD OF TIME', 500000, '500000', '0', 1499472000, '', '', '', 'unpaid'),
(2, 15, 'SCHOOL FEES REPORT', 'PAYMENT SCHOOL FEES REPORT', 4000, '4000', '0', 1504224000, '', '', '', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci NOT NULL,
  `russian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8_unicode_ci NOT NULL,
  `greek` longtext COLLATE utf8_unicode_ci NOT NULL,
  `german` longtext COLLATE utf8_unicode_ci NOT NULL,
  `italian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thai` longtext COLLATE utf8_unicode_ci NOT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `latin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `korean` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1134 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1, 'login', 'login', 'Ã Â¦Â²Ã Â¦â€”Ã Â¦â€¡Ã Â¦Â¨', 'login', 'Ã˜Â¯Ã˜Â®Ã™Ë†Ã™â€ž', 'login', 'Ãâ€™ÃÂ¾ÃÂ¹Ã‘â€šÃÂ¸', 'Ã¦Â³Â¨Ã¥â€ Å’', 'giriÃ…Å¸', 'login', 'bejelentkezÃƒÂ©s', 'Connexion', 'ÃÆ’ÃÂÃŽÂ½ÃŽÂ´ÃŽÂµÃÆ’ÃŽÂ·', 'Login', 'login', 'Ã Â¹â‚¬Ã Â¸â€šÃ Â¹â€°Ã Â¸Â²Ã Â¸ÂªÃ Â¸Â¹Ã Â¹Ë†Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€žÃ˜Â§ÃšÂ¯ Ã˜Â§Ã™â€ ', 'Ã Â¤Â²Ã Â¥â€°Ã Â¤â€”Ã Â¤Â¿Ã Â¤Â¨', 'login', 'login', 'Ã£Æ’Â­Ã£â€šÂ°Ã£â€šÂ¤Ã£Æ’Â³', 'Ã«Â¡Å“ÃªÂ·Â¸Ã¬ÂÂ¸'),
(2, 'account_type', 'account type', 'Ã Â¦â€¦Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦â€¢Ã Â¦Â¾Ã Â¦â€°Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸ Ã Â¦Å¸Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Âª', 'tipo de cuenta', 'Ã™â€ Ã™Ë†Ã˜Â¹ Ã˜Â§Ã™â€žÃ˜Â­Ã˜Â³Ã˜Â§Ã˜Â¨', 'type account', 'Ã‘â€šÃÂ¸ÃÂ¿ Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ°', 'Ã¨Â´Â¦Ã¦Ë†Â·Ã§Â±Â»Ã¥Å¾â€¹', 'hesap tÃƒÂ¼rÃƒÂ¼', 'tipo de conta', 'fiÃƒÂ³k tÃƒÂ­pusÃƒÂ¡t', 'Type de compte', 'Ãâ€žÃŽÂ¿ÃŽÂ½ Ãâ€žÃÂÃâ‚¬ÃŽÂ¿ Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ±ÃÂÃŽÂ¹ÃŽÂ±ÃÆ’ÃŽÂ¼ÃŽÂ¿ÃÂ', 'Kontotyp', 'tipo di account', 'Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¹â‚¬Ã Â¸Â Ã Â¸â€”Ã Â¸Å¡Ã Â¸Â±Ã Â¸ÂÃ Â¸Å Ã Â¸Âµ', 'Ã˜Â§ÃšÂ©Ã˜Â§Ã˜Â¤Ã™â€ Ã™Â¹ ÃšÂ©Ã›Å’ Ã™â€šÃ˜Â³Ã™â€¦', 'Ã Â¤â€“Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤â€¢Ã Â¤Â¾Ã Â¤Â°', 'propter speciem', 'Jenis akun', 'Ã¥ÂÂ£Ã¥ÂºÂ§Ã£ÂÂ®Ã§Â¨Â®Ã©Â¡Å¾', 'ÃªÂ³â€žÃ¬Â â€¢ Ã¬Å“Â Ã­Ëœâ€¢'),
(3, 'admin', 'admin', 'Ã Â¦â€¦Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¡Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â¨', 'administraciÃƒÂ³n', 'Ã™â€¦Ã˜Â´Ã˜Â±Ã™Â', 'admin', 'ÃÂ°ÃÂ´ÃÂ¼ÃÂ¸ÃÂ½', 'Ã§Â®Â¡Ã§Ââ€ ', 'yÃƒÂ¶netim', 'administrador', 'admin', 'administrateur', 'Ãâ€žÃŽÂ¿ admin', 'Admin', 'Admin', 'Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€Ã Â¸Â¹Ã Â¹ÂÃ Â¸Â¥Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€¦Ã™â€ Ã˜ÂªÃ˜Â¸Ã™â€¦', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¸Ã Â¤Â¨', 'Lorem ipsum dolor sit', 'admin', 'Ã§Â®Â¡Ã§Ââ€ Ã¨â‚¬â€¦', 'ÃªÂ´â‚¬Ã«Â¦Â¬Ã¬Å¾Â'),
(4, 'teacher', 'teacher', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢', 'profesor', 'Ã™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'leraar', 'Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’', 'Ã¨â‚¬ÂÃ¥Â¸Ë†', 'ÃƒÂ¶Ã„Å¸retmen', 'professor', 'tanÃƒÂ¡r', 'professeur', 'ÃŽÂ´ÃŽÂ¬ÃÆ’ÃŽÂºÃŽÂ±ÃŽÂ»ÃŽÂ¿Ãâ€š', 'Lehrer', 'insegnante', 'Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢', 'Magister', 'guru', 'Ã¦â€¢â„¢Ã¥Â¸Â«', 'Ã¬â€žÂ Ã¬Æ’Â'),
(5, 'student', 'student', 'Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Â¤Ã Â§ÂÃ Â¦Â°', 'estudiante', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨', 'student', 'Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€š', 'Ã¥Â­Â¦Ã§â€Å¸', 'ÃƒÂ¶Ã„Å¸renci', 'estudante', 'diÃƒÂ¡k', 'ÃƒÂ©tudiant', 'Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃŽÂ®Ãâ€š', 'SchÃƒÂ¼ler', 'studente', 'Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°', 'discipulo', 'mahasiswa', 'Ã¥Â­Â¦Ã§â€Å¸', 'Ã­â€¢â„¢Ã¬Æ’Â'),
(6, 'parent', 'parent', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â¦Â¤Ã Â¦Â¾ Ã Â¦Â¬Ã Â¦Â¾ Ã Â¦Â®Ã Â¦Â¾Ã Â¦Â¤Ã Â¦Â¾', 'padre', 'Ã˜Â£Ã˜ÂµÃ™â€ž', 'ouder', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’', 'Ã¤ÂºÂ²', 'ebeveyn', 'parente', 'szÃƒÂ¼lÃ…â€˜', 'mÃƒÂ¨re', 'ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃŽÂ® ÃŽÂµÃâ€žÃŽÂ±ÃŽÂ¹ÃÂÃŽÂµÃŽÂ¯ÃŽÂ±', 'Elternteil', 'genitore', 'Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€ ', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾', 'parente', 'induk', 'Ã¨Â¦Âª', 'Ã«Â¶â‚¬Ã«ÂªÂ¨Ã¬ÂËœ'),
(7, 'email', 'email', 'Ã Â¦â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦â€¡Ã Â¦Â²', 'email', 'Ã˜Â§Ã™â€žÃ˜Â¨Ã˜Â±Ã™Å Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â¥Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â±Ã™Ë†Ã™â€ Ã™Å ', 'e-mail', 'ÃÂ¿ÃÂ¾ Ã‘ÂÃÂ»ÃÂµÃÂºÃ‘â€šÃ‘â‚¬ÃÂ¾ÃÂ½ÃÂ½ÃÂ¾ÃÂ¹ ÃÂ¿ÃÂ¾Ã‘â€¡Ã‘â€šÃÂµ', 'Ã§â€ÂµÃ¥Â­ÂÃ©â€šÂ®Ã¤Â»Â¶', 'E-posta', 'e-mail', 'E-mail', 'email', 'e-mail', 'E-Mail-', 'e-mail', 'Ã Â¸Â­Ã Â¸ÂµÃ Â¹â‚¬Ã Â¸Â¡Ã Â¸Â¥Ã Â¹Å’', 'Ã˜Â§Ã›Å’ Ã™â€¦Ã›Å’Ã™â€ž', 'Ã Â¤Ë†Ã Â¤Â®Ã Â¥â€¡Ã Â¤Â²', 'email', 'email', 'Ã£Æ’Â¡Ã£Æ’Â¼Ã£Æ’Â«', 'Ã¬ÂÂ´Ã«Â©â€Ã¬ÂÂ¼'),
(8, 'password', 'password', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'contraseÃƒÂ±a', 'Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â³Ã˜Â±', 'wachtwoord', 'ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’', 'Ã¥Â¯â€ Ã§Â Â', 'Ã…Å¸ifre', 'senha', 'jelszÃƒÂ³', 'mot de passe', 'Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’', 'Passwort', 'password', 'Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢', 'Ã™Â¾Ã˜Â§Ã˜Â³', 'Ã Â¤ÂªÃ Â¤Â¾Ã Â¤Â¸Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'Signum', 'kata sandi', 'Ã£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°', 'Ã¬â€¢â€Ã­ËœÂ¸'),
(9, 'forgot_password ?', 'forgot password ?', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â­Ã Â§ÂÃ Â¦Â²Ã Â§â€¡ Ã Â¦â€”Ã Â§â€¡Ã Â¦â€ºÃ Â§â€¡Ã Â¦Â¨?', 'Ã‚Â¿OlvidÃƒÂ³ su contraseÃƒÂ±a?', 'Ã™â€ Ã˜Â³Ã™Å Ã˜Âª Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â±Ã™Ë†Ã˜Â±Ã˜Å¸', 'wachtwoord vergeten?', 'ÃÂ·ÃÂ°ÃÂ±Ã‘â€¹ÃÂ»ÃÂ¸ ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’?', 'Ã¥Â¿ËœÃ¨Â®Â°Ã¥Â¯â€ Ã§Â ÂÃ¯Â¼Å¸', 'Ã…Å¾ifremi unuttum?', 'Esqueceu a senha?', 'Elfelejtett jelszÃƒÂ³?', 'Mot de passe oubliÃƒÂ©?', 'ÃŽÅ¾ÃŽÂµÃâ€¡ÃŽÂ¬ÃÆ’ÃŽÂ±Ãâ€žÃŽÂµ Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’;', 'Passwort vergessen?', 'dimenticato la password?', 'Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â¡Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢', 'Ã™Â¾Ã˜Â§Ã˜Â³ Ã™Ë†Ã˜Â±ÃšË† Ã˜Â¨ÃšÂ¾Ã™Ë†Ã™â€ž ÃšÂ¯Ã›Å’Ã˜Â§Ã˜Å¸', 'Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾ Ã Â¤Â¸Ã Â¤â€šÃ Â¤Â­Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¨Ã Â¤Â¾Ã Â¤ÂÃ Â¤â€š Ã Â¤Â¹Ã Â¥Ë†Ã Â¤â€š?', 'oblitus esne verbi?', 'lupa password?', 'Ã£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã¥Â¿ËœÃ£â€šÅ’Ã£ÂÅ¸Ã¯Â¼Å¸', 'Ã«Â¹â€žÃ«Â°â‚¬Ã«Â²Ë†Ã­ËœÂ¸Ã«Â¥Â¼ Ã¬Å¾Å Ã¬Å“Â¼ Ã¬â€¦Â¨Ã«â€šËœÃ¬Å¡â€?'),
(10, 'reset_password', 'reset password', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â°Ã Â¦Â¿Ã Â¦Â¸Ã Â§â€¡Ã Â¦Å¸', 'restablecer la contraseÃƒÂ±a', 'Ã˜Â¥Ã˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜ÂªÃ˜Â¹Ã™Å Ã™Å Ã™â€  Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â±Ã™Ë†Ã˜Â±', 'reset wachtwoord', 'Ã‘ÂÃÂ±Ã‘â‚¬ÃÂ¾Ã‘ÂÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’', 'Ã©â€¡ÂÃ¨Â®Â¾Ã¥Â¯â€ Ã§Â Â', 'Ã…Å¸ifrenizi sÃ„Â±fÃ„Â±rlamak', 'redefinir a senha', 'JelszÃƒÂ³ visszaÃƒÂ¡llÃƒÂ­tÃƒÂ¡sa', 'rÃƒÂ©initialiser le mot de passe', 'ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ­ÃÂÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’ Ãâ‚¬ÃÂÃÅ’ÃÆ’ÃŽÂ²ÃŽÂ±ÃÆ’ÃŽÂ·Ãâ€š', 'Kennwort zurÃƒÂ¼cksetzen', 'reimpostare la password', 'Ã Â¸â€¢Ã Â¸Â±Ã Â¹â€°Ã Â¸â€¡Ã Â¸â€žÃ Â¹Ë†Ã Â¸Â²Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢', 'Ã™Â¾Ã˜Â§Ã˜Â³ Ã™Ë†Ã˜Â±ÃšË† Ã˜Â±Ã›Å’ Ã˜Â³Ã›Å’Ã™Â¹', 'Ã Â¤ÂªÃ Â¤Â¾Ã Â¤Â¸Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¡ Ã Â¤Â°Ã Â¥â‚¬Ã Â¤Â¸Ã Â¥â€¡Ã Â¤Å¸', 'Duis adipiscing', 'reset password', 'Ã£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã¥â€ ÂÃ¨Â¨Â­Ã¥Â®Å¡Ã£Ââ„¢Ã£â€šâ€¹', 'Ã¬â€¢â€Ã­ËœÂ¸Ã«Â¥Â¼ Ã¬Å¾Â¬Ã¬â€žÂ¤Ã¬Â â€¢'),
(11, 'reset', 'reset', 'Ã Â¦Â°Ã Â¦Â¿Ã Â¦Â¸Ã Â§â€¡Ã Â¦Å¸ Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â¨', 'reajustar', 'Ã˜Â¥Ã˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜ÂªÃ˜Â¹Ã™Å Ã™Å Ã™â€ ', 'reset', 'Ã‘ÂÃÂ±Ã‘â‚¬ÃÂ¾Ã‘Â', 'Ã©â€¡ÂÃ§Â½Â®', 'ayarlamak', 'restabelecer', 'vissza', 'remettre', 'ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬', 'rÃƒÂ¼cksetzen', 'reset', 'Ã Â¸â€¢Ã Â¸Â±Ã Â¹â€°Ã Â¸â€¡Ã Â¹Æ’Ã Â¸Â«Ã Â¸Â¡Ã Â¹Ë†', 'Ã˜Â±Ã›Å’ Ã˜Â³Ã›Å’Ã™Â¹', 'Ã Â¤Â°Ã Â¥â‚¬Ã Â¤Â¸Ã Â¥â€¡Ã Â¤Å¸ Ã Â¤â€¢Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€š', 'Duis', 'ulang', 'Ã£Æ’ÂªÃ£â€šÂ»Ã£Æ’Æ’Ã£Æ’Ë†', 'Ã¬Å¾Â¬Ã¬â€žÂ¤Ã¬Â â€¢'),
(12, 'admin_dashboard', 'admin dashboard', 'Ã Â¦â€¦Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¡Ã Â¦Â®Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'administrador salpicadero', 'Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â´Ã˜Â±Ã™Â Ã™Ë†Ã˜Â­Ã˜Â© Ã˜Â§Ã™â€žÃ™â€šÃ™Å Ã˜Â§Ã˜Â¯Ã˜Â©', 'admin dashboard', 'ÃÂ°ÃÂ´ÃÂ¼ÃÂ¸ÃÂ½ ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»Ã‘Å’', 'Ã§Â®Â¡Ã§Ââ€ Ã©ÂÂ¢Ã¦ÂÂ¿', 'Admin paneli', 'Admin Dashboard', 'admin mÃ…Â±szerfal', 'administrateur tableau de bord', 'Ãâ‚¬ÃŽÂ¯ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ± ÃŽÂµÃŽÂ»ÃŽÂ­ÃŽÂ³Ãâ€¡ÃŽÂ¿Ãâ€¦ Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¹ÃÂÃŽÂ¹ÃÆ’Ãâ€žÃŽÂ®', 'Admin-Dashboard', 'Admin Dashboard', 'Ã Â¹ÂÃ Â¸Å“Ã Â¸â€¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Å¡Ã Â¸â€žÃ Â¸Â¸Ã Â¸Â¡Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€Ã Â¸Â¹Ã Â¹ÂÃ Â¸Â¥Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã˜Â§Ã›Å’ÃšË†Ã™â€¦Ã™â€  ÃšË†Ã›Å’Ã˜Â´ Ã˜Â¨Ã™Ë†Ã˜Â±ÃšË†', 'Ã Â¤ÂµÃ Â¥ÂÃ Â¤Â¯Ã Â¤ÂµÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¥Ã Â¤Â¾Ã Â¤ÂªÃ Â¤â€¢ Ã Â¤Â¡Ã Â¥Ë†Ã Â¤Â¶Ã Â¤Â¬Ã Â¥â€¹Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'Lorem ipsum dolor sit Dashboard', 'admin dashboard', 'Ã§Â®Â¡Ã§Ââ€ Ã£Æ’â‚¬Ã£Æ’Æ’Ã£â€šÂ·Ã£Æ’Â¥Ã£Æ’Å“Ã£Æ’Â¼Ã£Æ’â€°', 'ÃªÂ´â‚¬Ã«Â¦Â¬Ã¬Å¾Â Ã«Å’â‚¬Ã¬â€¹Å“ Ã«Â³Â´Ã«â€œÅ“'),
(13, 'account', 'account', 'Ã Â¦Â¹Ã Â¦Â¿Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¬', 'cuenta', 'Ã˜Â­Ã˜Â³Ã˜Â§Ã˜Â¨', 'rekening', 'Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€š', 'Ã¥Â¸ÂÃ¦Ë†Â·', 'hesap', 'conta', 'szÃƒÂ¡mla', 'compte', 'ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ±ÃÂÃŽÂ¹ÃŽÂ±ÃÆ’ÃŽÂ¼ÃÅ’Ãâ€š', 'Konto', 'conto', 'Ã Â¸Å¡Ã Â¸Â±Ã Â¸ÂÃ Â¸Å Ã Â¸Âµ', 'Ã˜Â§ÃšÂ©Ã˜Â§Ã˜Â¤Ã™â€ Ã™Â¹', 'Ã Â¤â€“Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾', 'propter', 'rekening', 'Ã£â€šÂ¢Ã£â€šÂ«Ã£â€šÂ¦Ã£Æ’Â³Ã£Æ’Ë†', 'ÃªÂ³â€žÃ¬Â â€¢'),
(14, 'profile', 'profile', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â²Ã Â§â€¡Ã Â¦â€“', 'perfil', 'Ã™â€¦Ã™â€žÃ™Â', 'profiel', 'ÃÂ¿Ã‘â‚¬ÃÂ¾Ã‘â€žÃÂ¸ÃÂ»Ã‘Å’', 'Ã¨Â½Â®Ã¥Â»â€œ', 'profil', 'perfil', 'profil', 'profil', 'Ãâ‚¬ÃÂÃŽÂ¿Ãâ€ ÃŽÂ¯ÃŽÂ»', 'Profil', 'profilo', 'Ã Â¹â€šÃ Â¸â€ºÃ Â¸Â£Ã Â¹â€žÃ Â¸Å¸Ã Â¸Â¥Ã Â¹Å’', 'Ã™Â¾Ã˜Â±Ã™Ë†Ã™ÂÃ˜Â§Ã˜Â¦Ã™â€ž', 'Ã Â¤Â°Ã Â¥â€šÃ Â¤ÂªÃ Â¤Â°Ã Â¥â€¡Ã Â¤â€“Ã Â¤Â¾', 'profile', 'profil', 'Ã£Æ’â€”Ã£Æ’Â­Ã£Æ’â€¢Ã£â€šÂ£Ã£Æ’Â¼Ã£Æ’Â«', 'Ã­â€â€žÃ«Â¡Å“Ã­â€¢â€ž'),
(15, 'change_password', 'change password', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¨', 'cambiar la contraseÃƒÂ±a', 'Ã˜ÂªÃ˜ÂºÃ™Å Ã™Å Ã˜Â± Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â±Ã™Ë†Ã˜Â±', 'wachtwoord wijzigen', 'ÃÂ¸ÃÂ·ÃÂ¼ÃÂµÃÂ½ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’', 'Ã¦â€ºÂ´Ã¦â€Â¹Ã¥Â¯â€ Ã§Â Â', 'Ã…Å¸ifresini deÃ„Å¸iÃ…Å¸tirmek', 'alterar a senha', 'jelszÃƒÂ³ megvÃƒÂ¡ltoztatÃƒÂ¡sa', 'changer le mot de passe', 'ÃŽÂ±ÃŽÂ»ÃŽÂ»ÃŽÂ¬ÃŽÂ¾ÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’ Ãâ‚¬ÃÂÃÅ’ÃÆ’ÃŽÂ²ÃŽÂ±ÃÆ’ÃŽÂ·Ãâ€š', 'Kennwort ÃƒÂ¤ndern', 'cambiare la password', 'Ã Â¹â‚¬Ã Â¸â€ºÃ Â¸Â¥Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Â¢Ã Â¸â„¢Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢', 'Ã™Â¾Ã˜Â§Ã˜Â³ Ã™Ë†Ã˜Â±ÃšË† Ã˜ÂªÃ˜Â¨Ã˜Â¯Ã›Å’Ã™â€ž', 'Ã Â¤ÂªÃ Â¤Â¾Ã Â¤Â¸Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¡ Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¤Ã Â¤Â¿Ã Â¤Â¤', 'mutare password', 'mengubah password', 'Ã£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã¥Â¤â€°Ã¦â€ºÂ´Ã£Ââ„¢Ã£â€šâ€¹', 'Ã¬â€¢â€Ã­ËœÂ¸Ã«Â¥Â¼ Ã«Â³â‚¬ÃªÂ²Â½'),
(16, 'logout', 'logout', 'Ã Â¦Â²Ã Â¦â€” Ã Â¦â€ Ã Â¦â€°Ã Â¦Å¸', 'logout', 'Ã˜ÂªÃ˜Â³Ã˜Â¬Ã™Å Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â®Ã˜Â±Ã™Ë†Ã˜Â¬', 'logout', 'ÃÂ²Ã‘â€¹Ã‘â€¦ÃÂ¾ÃÂ´', 'Ã¦Â³Â¨Ã©â€â‚¬', 'logout', 'Sair', 'logout', 'DÃƒÂ©connexion', 'ÃŽÂ±Ãâ‚¬ÃŽÂ¿ÃÆ’ÃÂÃŽÂ½ÃŽÂ´ÃŽÂµÃÆ’ÃŽÂ·', 'logout', 'Esci', 'Ã Â¸Â­Ã Â¸Â­Ã Â¸ÂÃ Â¸Ë†Ã Â¸Â²Ã Â¸ÂÃ Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€žÃ˜Â§ÃšÂ¯ Ã˜Â¢Ã˜Â¤Ã™Â¹ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤Â²Ã Â¥â€°Ã Â¤â€”Ã Â¤â€ Ã Â¤â€°Ã Â¤Å¸', 'logout', 'logout', 'Ã£Æ’Â­Ã£â€šÂ°Ã£â€šÂ¢Ã£â€šÂ¦Ã£Æ’Ë†', 'Ã«Â¡Å“ÃªÂ·Â¸ Ã¬â€¢â€žÃ¬â€ºÆ’'),
(17, 'panel', 'panel', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â§â€¡Ã Â¦Â²', 'panel', 'Ã™â€žÃ™Ë†Ã˜Â­Ã˜Â©', 'paneel', 'ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»Ã‘Å’', 'Ã©ÂÂ¢Ã¦ÂÂ¿', 'panel', 'painel', 'bizottsÃƒÂ¡g', 'panneau', 'Ãâ‚¬ÃŽÂ¯ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ±Ãâ€š', 'Platte', 'pannello', 'Ã Â¹ÂÃ Â¸Å“Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¹â€°Ã Â¸Â²Ã Â¸â€ºÃ Â¸Â±Ã Â¸â€', 'Ã™Â¾Ã›Å’Ã™â€ Ã™â€ž', 'Ã Â¤ÂªÃ Â¥Ë†Ã Â¤Â¨Ã Â¤Â²', 'panel', 'panel', 'Ã£Æ’â€˜Ã£Æ’ÂÃ£Æ’Â«', 'Ã­Å’Â¨Ã«â€žÂ'),
(18, 'dashboard_help', 'dashboard help', 'Ã Â¦Â¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â¸Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â¦Â¼Ã Â¦Â¤Ã Â¦Â¾', 'salpicadero ayuda', 'Ã™â€žÃ™Ë†Ã˜Â­Ã˜Â© Ã˜Â§Ã™â€žÃ™â€šÃ™Å Ã˜Â§Ã˜Â¯Ã˜Â© Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'dashboard hulp', 'ÃÅ¸Ã‘â‚¬ÃÂ¸ÃÂ±ÃÂ¾Ã‘â‚¬ÃÂ½ÃÂ°Ã‘Â ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»Ã‘Å’ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¤Â»ÂªÃ¨Â¡Â¨Ã¦ÂÂ¿Ã¥Â¸Â®Ã¥Å Â©', 'pano yardÃ„Â±m', 'dashboard ajuda', 'mÃ…Â±szerfal help', 'tableau de bord aide', 'Ãâ€žÃŽÂ±ÃŽÂ¼Ãâ‚¬ÃŽÂ»ÃÅ’ ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Dashboard-Hilfe', 'dashboard aiuto', 'Ã Â¹ÂÃ Â¸Å“Ã Â¸â€¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Å¡Ã Â¸â€žÃ Â¸Â¸Ã Â¸Â¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'ÃšË†Ã›Å’Ã˜Â´ Ã˜Â¨Ã™Ë†Ã˜Â±ÃšË† Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤Â¡Ã Â¥Ë†Ã Â¤Â¶Ã Â¤Â¬Ã Â¥â€¹Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'Dashboard auxilium', 'dashboard bantuan', 'Ã£Æ’â‚¬Ã£Æ’Æ’Ã£â€šÂ·Ã£Æ’Â¥Ã£Æ’Å“Ã£Æ’Â¼Ã£Æ’â€°Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã«Å’â‚¬Ã¬â€¹Å“ Ã«Â³Â´Ã«â€œÅ“ Ã«Ââ€žÃ¬â€ºâ‚¬Ã«Â§Â'),
(19, 'dashboard', 'dashboard', 'Ã Â¦Â¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'salpicadero', 'Ã™â€žÃ™Ë†Ã˜Â­Ã˜Â© Ã˜Â§Ã™â€žÃ™â€šÃ™Å Ã˜Â§Ã˜Â¯Ã˜Â©', 'dashboard', 'ÃÂ¿Ã‘â‚¬ÃÂ¸ÃÂ±ÃÂ¾Ã‘â‚¬ÃÂ½ÃÂ°Ã‘Â ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»Ã‘Å’', 'Ã¤Â»ÂªÃ¨Â¡Â¨Ã§â€ºËœ', 'gÃƒÂ¶sterge paneli', 'painel de instrumentos', 'mÃ…Â±szerfal', 'tableau de bord', 'Ãâ€žÃŽÂ±ÃŽÂ¼Ãâ‚¬ÃŽÂ»ÃÅ’', 'Armaturenbrett', 'cruscotto', 'Ã Â¸Â«Ã Â¸â„¢Ã Â¹â€°Ã Â¸Â²Ã Â¸â€ºÃ Â¸Â±Ã Â¸â€', 'ÃšË†Ã›Å’Ã˜Â´ Ã˜Â¨Ã™Ë†Ã˜Â±ÃšË†', 'Ã Â¤Â¡Ã Â¥Ë†Ã Â¤Â¶Ã Â¤Â¬Ã Â¥â€¹Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'Dashboard', 'dasbor', 'Ã£Æ’â‚¬Ã£Æ’Æ’Ã£â€šÂ·Ã£Æ’Â¥Ã£Æ’Å“Ã£Æ’Â¼Ã£Æ’â€°', 'ÃªÂ³â€žÃªÂ¸Â°Ã­Å’Â'),
(20, 'student_help', 'student help', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¥Ã Â§â‚¬Ã Â¦Â° Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda estudiantil', 'Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â§Ã™â€žÃ˜Â¨', 'student hulp', 'Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€š ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¥Â­Â¦Ã§â€Å¸Ã§Å¡â€žÃ¥Â¸Â®Ã¥Å Â©', 'Ãƒâ€“Ã„Å¸renci yardÃ„Â±m', 'ajuda estudante', 'diÃƒÂ¡k segÃƒÂ­tsÃƒÂ©gÃƒÂ©vel', 'aide aux ÃƒÂ©tudiants', 'Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃŽÂ®Ãâ€š ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'SchÃƒÂ¼ler-Hilfe', 'help studente', 'Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ ÃšÂ©Ã›Å’ Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â° Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'Discipulus auxilium', 'membantu siswa', 'Ã¥Â­Â¦Ã§â€Å¸Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã­â€¢â„¢Ã¬Æ’Â Ã«Ââ€žÃ¬â€ºâ‚¬Ã«Â§Â'),
(21, 'teacher_help', 'teacher help', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda del maestro', 'Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'leraar hulp', 'ÃÂ£Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¨â‚¬ÂÃ¥Â¸Ë†Ã§Å¡â€žÃ¥Â¸Â®Ã¥Å Â©', 'ÃƒÂ¶Ã„Å¸retmen yardÃ„Â±m', 'ajuda de professores', 'tanÃƒÂ¡r segÃƒÂ­tsÃƒÂ©gÃƒÂ©vel', 'aide de l''enseignant', 'ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ± Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂºÃâ‚¬ÃŽÂ±ÃŽÂ¹ÃŽÂ´ÃŽÂµÃâ€¦Ãâ€žÃŽÂ¹ÃŽÂºÃÅ½ÃŽÂ½', 'Lehrer-Hilfe', 'aiuto dell''insegnante', 'Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯ ÃšÂ©Ã›Å’ Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'doctor auxilium', 'bantuan guru', 'Ã¦â€¢â„¢Ã¥Â¸Â«Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'ÃªÂµÂÃ¬â€šÂ¬Ã¬ÂËœ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(22, 'subject_help', 'subject help', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda sujeto', 'Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Onderwerp hulp', 'Ãâ€”ÃÂ°ÃÂ³ÃÂ¾ÃÂ»ÃÂ¾ÃÂ²ÃÂ¾ÃÂº ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¤Â¸Â»Ã©Â¢ËœÃ¥Â¸Â®Ã¥Å Â©', 'konusu yardÃ„Â±m', 'ajuda assunto', 'tÃƒÂ¡rgy segÃƒÂ­tsÃƒÂ©gÃƒÂ©vel', 'l''objet de l''aide', 'Ãâ€¦Ãâ‚¬ÃÅ’ÃŽÂºÃŽÂµÃŽÂ¹ÃŽÂ½Ãâ€žÃŽÂ±ÃŽÂ¹ ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Thema Hilfe', 'Aiuto Subject', 'Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹ Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'agitur salus', 'bantuan subjek', 'Ã¤Â»Â¶Ã¥ÂÂÃ£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬Â£Â¼Ã¬Â Å“ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(23, 'subject', 'subject', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼', 'sujeto', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'onderwerp', 'Ã‘â€šÃÂµÃÂ¼ÃÂ°', 'Ã¤Â¸Â»Ã©Â¢Ëœ', 'konu', 'assunto', 'tÃƒÂ¡rgy', 'sujet', 'ÃŽÂ¸ÃŽÂ­ÃŽÂ¼ÃŽÂ±', 'Thema', 'soggetto', 'Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯', 'agitur', 'subyek', 'Ã£Æ’â€ Ã£Æ’Â¼Ã£Æ’Å¾', 'Ã¬Â Å“Ã«ÂªÂ©'),
(24, 'class_help', 'class help', 'Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦â€” Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'clase de ayuda', 'Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â¨Ã™â€šÃ˜Â© Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'klasse hulp', 'ÃÅ¡ÃÂ»ÃÂ°Ã‘ÂÃ‘Â ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã§Â±Â»Ã§Å¡â€žÃ¥Â¸Â®Ã¥Å Â©', 'sÃ„Â±nÃ„Â±f yardÃ„Â±m', 'classe ajuda', 'osztÃƒÂ¡ly segÃƒÂ­tsÃƒÂ©gÃƒÂ©vel', 'aide de la classe', 'ÃŽÅ¡ÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ± ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Klasse Hilfe', 'help classe', 'Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¹Æ’Ã Â¸â„¢Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤â€¢Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'genus auxilii', 'kelas bantuan', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(25, 'class', 'class', 'Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦â€”', 'clase', 'Ã™ÂÃ˜Â¦Ã˜Â©', 'klasse', 'ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â±Â»', 'sÃ„Â±nÃ„Â±f', 'classe', 'osztÃƒÂ¡ly', 'classe', 'ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ±', 'Klasse', 'classe', 'Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€”', 'class', 'kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤'),
(26, 'exam_help', 'exam help', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda examen', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'examen hulp', 'ÃÂ­ÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¨â‚¬Æ’Ã¨Â¯â€¢Ã¥Â¸Â®Ã¥Å Â©', 'sÃ„Â±nav yardÃ„Â±m', 'exame ajuda', 'vizsga help', 'aide ÃƒÂ  l''examen', 'ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'PrÃƒÂ¼fung Hilfe', 'esame di guida', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'ipsum Auxilium', 'ujian bantuan', 'Ã¨Â©Â¦Ã©Â¨â€œÃ£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬â€¹Å“Ã­â€”ËœÃ¬â€”Â Ã«Ââ€žÃ¬â€ºâ‚¬'),
(27, 'exam', 'exam', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾', 'examen', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'tentamen', 'Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã¨â‚¬Æ’Ã¨Â¯â€¢', 'sÃ„Â±nav', 'exame', 'vizsgÃƒÂ¡lat', 'exam', 'ÃŽÂµÃŽÂ¾ÃŽÂ­Ãâ€žÃŽÂ±ÃÆ’ÃŽÂ·', 'PrÃƒÂ¼fung', 'esame', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾', 'Lorem ipsum', 'ujian', 'Ã¨Â©Â¦Ã©Â¨â€œ', 'Ã¬â€¹Å“Ã­â€”Ëœ'),
(28, 'marks_help', 'marks help', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'marcas ayudan', 'Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â§Ã˜Âª Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'markeringen helpen', 'ÃÂ¼ÃÂµÃ‘â€šÃÂºÃÂ¸ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾ÃÂ³ÃÂ°Ã‘Å½Ã‘â€š', 'Ã¦Â â€¡Ã¨Â®Â°Ã¥Â¸Â®Ã¥Å Â©', 'iÃ…Å¸aretleri yardÃ„Â±m', 'marcas ajudar', 'jelek segÃƒÂ­tenek', 'marques aident', 'ÃÆ’ÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ± ÃŽÂ²ÃŽÂ¿ÃŽÂ·ÃŽÂ¸ÃŽÂ®ÃÆ’ÃŽÂµÃŽÂ¹', 'Markierungen helfen', 'segni aiutano', 'Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢', 'Ã™â€ Ã™â€¦Ã˜Â¨Ã˜Â± Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤Â¨Ã Â¤Â¿Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'notas auxilio', 'tanda membantu', 'Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã«Â§Ë†Ã­ÂÂ¬Ã«Å â€ Ã«ÂÂ° Ã«Ââ€žÃ¬â€ºâ‚¬Ã¬ÂÂ´'),
(29, 'marks-attendance', 'marks-attendance', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨-Ã Â¦â€°Ã Â¦ÂªÃ Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¿Ã Â¦Â¤Ã Â¦Â¿Ã Â¦Â°', 'marcas-asistencia', 'Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â§Ã˜Âª-Ã˜Â§Ã™â€žÃ˜Â­Ã˜Â¶Ã™Ë†Ã˜Â±', 'merken-deelname', 'ÃÂ·ÃÂ½ÃÂ°ÃÂºÃÂ¸-ÃÂ¿ÃÂ¾Ã‘ÂÃÂµÃ‘â€°ÃÂ°ÃÂµÃÂ¼ÃÂ¾Ã‘ÂÃ‘â€šÃÂ¸', 'Ã¦Â â€¡Ã¨Â®Â°Ã§Â¼ÂºÃ¥Â¸Â­', 'iÃ…Å¸aretleri-katÃ„Â±lÃ„Â±m', 'marcas de comparecimento', 'jelek-ellÃƒÂ¡tÃƒÂ¡s', 'marques-participation', 'ÃÆ’ÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ± Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ­ÃŽÂ»ÃŽÂµÃâ€¦ÃÆ’ÃŽÂ·', 'Marken-Teilnahme', 'marchi-presenze', 'Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹â‚¬Ã Â¸â€šÃ Â¹â€°Ã Â¸Â²Ã Â¸Â£Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¡', 'Ã™â€ Ã™â€¦Ã˜Â¨Ã˜Â± Ã˜Â­Ã˜Â§Ã˜Â¶Ã˜Â±Ã›Å’', 'Ã Â¤Â¨Ã Â¤Â¿Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤â€°Ã Â¤ÂªÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¥Ã Â¤Â¿Ã Â¤Â¤Ã Â¤Â¿', 'signa eius ministrabant,', 'tanda-pertemuan', 'Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯Ã‚Â·Ã¥â€¡ÂºÃ¥Â¸Â­', 'Ã«Â§Ë†Ã­ÂÂ¬ Ã¬Â¶Å“Ã¬â€žÂ'),
(30, 'grade_help', 'grade help', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda de grado', 'Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'leerjaar hulp', 'ÃÂ¾Ã‘â€ ÃÂµÃÂ½ÃÂºÃÂ° ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã§ÂºÂ§Ã¥Â¸Â®Ã¥Å Â©', 'sÃ„Â±nÃ„Â±f yardÃ„Â±m', 'ajuda grau', 'fokozat help', 'aide de qualitÃƒÂ©', 'ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃŽÂ¿ÃÂ ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Grade-Hilfe', 'aiuto grade', 'Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË† Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'gradus ope', 'kelas bantuan', 'Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'ÃªÂ¸â€° Ã«Ââ€žÃ¬â€ºâ‚¬'),
(31, 'exam-grade', 'exam-grade', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¶Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â£Ã Â§â‚¬', 'examen de grado', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'examen-grade', 'Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘ÂÃÂ°', 'Ã¨â‚¬Æ’Ã¨Â¯â€¢Ã§ÂºÂ§Ã¥Ë†Â«', 'sÃ„Â±nav notu', 'exame de grau', 'vizsga-grade', 'examen de qualitÃƒÂ©', 'ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š Ãâ‚¬ÃŽÂ¿ÃŽÂ¹ÃÅ’Ãâ€žÃŽÂ·Ãâ€žÃŽÂ±Ãâ€š', 'PrÃƒÂ¼fung-Grade', 'esami-grade', 'Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  ÃšÂ¯Ã˜Â±Ã›Å’ÃšË†', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡', 'ipsum turpis,', 'ujian-grade', 'Ã¨Â©Â¦Ã©Â¨â€œÃ£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°', 'Ã¬â€¹Å“Ã­â€”Ëœ Ã«â€œÂ±ÃªÂ¸â€°'),
(32, 'class_routine_help', 'class routine help', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸Ã Â§â€¡Ã Â¦Â° Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'clase ayuda rutina', 'Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â¨Ã™â€šÃ˜Â© Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â±Ã™Ë†Ã˜ÂªÃ™Å Ã™â€ Ã™Å Ã˜Â©', 'klasroutine hulp', 'ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â Ã‘â‚¬Ã‘Æ’Ã‘â€šÃÂ¸ÃÂ½ÃÂ° ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã§Â±Â»Ã¥Â¸Â¸Ã¨Â§â€žÃ¥Â¸Â®Ã¥Å Â©', 'sÃ„Â±nÃ„Â±f rutin yardÃ„Â±m', 'classe ajuda rotina', 'osztÃƒÂ¡ly rutin segÃƒÂ­t', 'classe aide routine', 'ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ± ÃÂÃŽÂ¿Ãâ€¦Ãâ€žÃŽÂ¯ÃŽÂ½ÃŽÂ±Ãâ€š ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Klasse Routine Hilfe', 'Classe aiuto di routine', 'Ã Â¸Â£Ã Â¸Â°Ã Â¸â€Ã Â¸Â±Ã Â¸Å¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸â€¢Ã Â¸Â²Ã Â¸Â¡Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€¢Ã Â¸Â´', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¹Ã™â€¦Ã™Ë†Ã™â€ž Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨Ã Â¤Å¡Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'uno genere auxilium', 'kelas bantuan rutin', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’ÂÃ£Æ’Â³Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«Â£Â¨Ã­â€¹Â´ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(33, 'class_routine', 'class routine', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸Ã Â§â€¡Ã Â¦Â° Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', 'rutina de la clase', 'Ã™ÂÃ˜Â¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â±Ã™Ë†Ã˜ÂªÃ™Å Ã™â€ Ã™Å Ã˜Â©', 'klasroutine', 'ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â ÃÂ¿ÃÂ¾ÃÂ´ÃÂ¿Ã‘â‚¬ÃÂ¾ÃÂ³Ã‘â‚¬ÃÂ°ÃÂ¼ÃÂ¼', 'Ã¥Â¸Â¸Ã¨Â§â€žÃ§Â±Â»', 'sÃ„Â±nÃ„Â±f rutin', 'rotina classe', 'osztÃƒÂ¡ly rutin', 'routine de classe', 'ÃŽÅ¡ÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ± ÃÂÃŽÂ¿Ãâ€¦Ãâ€žÃŽÂ¯ÃŽÂ½ÃŽÂ±', 'Klasse Routine', 'classe di routine', 'Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸Ë†Ã Â¸Â³Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¹Ã™â€¦Ã™Ë†Ã™â€ž', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨Ã Â¤Å¡Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾', 'in genere uno,', 'rutin kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã‚Â·Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’ÂÃ£Æ’Â³', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«Â£Â¨Ã­â€¹Â´'),
(34, 'invoice_help', 'invoice help', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda factura', 'Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â©', 'factuur hulp', 'Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€š-Ã‘â€žÃÂ°ÃÂºÃ‘â€šÃ‘Æ’Ã‘â‚¬ÃÂ° ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¥Ââ€˜Ã§Â¥Â¨Ã¥Â¸Â®Ã¥Å Â©', 'fatura yardÃ„Â±m', 'ajuda factura', 'szÃƒÂ¡mla segÃƒÂ­tsÃƒÂ©gÃƒÂ©vel', 'aide facture', 'Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿ ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Rechnungs Hilfe', 'help fattura', 'Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€°', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤Â¸Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â¯Ã Â¤Â¤Ã Â¤Â¾', 'auxilium cautionem', 'bantuan faktur', 'Ã©â‚¬ÂÃ£â€šÅ Ã§Å Â¶Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬â€ Â¡Ã¬Å¾Â¥ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(35, 'payment', 'payment', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â¦Â¦Ã Â¦Â¾Ã Â¦Â¨', 'pago', 'Ã˜Â¯Ã™ÂÃ˜Â¹', 'betaling', 'ÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€šÃÂ°', 'Ã¤Â»ËœÃ¦Â¬Â¾', 'ÃƒÂ¶deme', 'pagamento', 'fizetÃƒÂ©s', 'paiement', 'Ãâ‚¬ÃŽÂ»ÃŽÂ·ÃÂÃâ€°ÃŽÂ¼ÃŽÂ®', 'Zahlung', 'pagamento', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â³Ã Â¸Â£Ã Â¸Â°Ã Â¹â‚¬Ã Â¸â€¡Ã Â¸Â´Ã Â¸â„¢', 'Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Â¦Ã›Å’ÃšÂ¯Ã›Å’', 'Ã Â¤Â­Ã Â¥ÂÃ Â¤â€”Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¨', 'pecunia', 'pembayaran', 'Ã¦â€Â¯Ã¦â€°â€¢Ã£Ââ€ž', 'Ã¬Â§â‚¬Ã«Â¶Ë†'),
(36, 'book_help', 'book help', 'Ã Â¦Â¬Ã Â¦â€¡Ã Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'libro de ayuda', 'Ã™Æ’Ã˜ÂªÃ˜Â§Ã˜Â¨ Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'boek hulp', 'ÃÅ¡ÃÂ½ÃÂ¸ÃÂ³ÃÂ° ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¦Å“Â¬Ã¤Â¹Â¦Ã¥Â¸Â®Ã¥Å Â©', 'kitap yardÃ„Â±mÃ„Â±', 'livro ajuda', 'kÃƒÂ¶nyv segÃƒÂ­t', 'livre aide', 'ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ± Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯ÃŽÂ¿Ãâ€¦', 'Buch-Hilfe', 'della guida', 'Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­', 'ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨ Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'auxilium libro,', 'Buku bantuan', 'Ã£Æ’â€“Ã£Æ’Æ’Ã£â€šÂ¯Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬Â±â€¦ Ã«Ââ€žÃ¬â€ºâ‚¬Ã«Â§Â'),
(37, 'library', 'library', 'Ã Â¦Â²Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â°Ã Â¦Â¿', 'biblioteca', 'Ã™â€¦Ã™Æ’Ã˜ÂªÃ˜Â¨Ã˜Â©', 'bibliotheek', 'ÃÂ±ÃÂ¸ÃÂ±ÃÂ»ÃÂ¸ÃÂ¾Ã‘â€šÃÂµÃÂºÃÂ°', 'Ã¦â€“â€¡Ã¥Âºâ€œ', 'kÃƒÂ¼tÃƒÂ¼phane', 'biblioteca', 'kÃƒÂ¶nyvtÃƒÂ¡r', 'bibliothÃƒÂ¨que', 'ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¹ÃŽÂ¿ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ·', 'Bibliothek', 'biblioteca', 'Ã Â¸Â«Ã Â¹â€°Ã Â¸Â­Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â¡Ã Â¸Â¸Ã Â¸â€', 'Ã™â€žÃ˜Â§Ã˜Â¦Ã˜Â¨Ã˜Â±Ã›Å’Ã˜Â±Ã›Å’', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¯', 'library', 'perpustakaan', 'Ã¥â€ºÂ³Ã¦â€ºÂ¸Ã©Â¤Â¨', 'Ã«Ââ€žÃ¬â€žÅ“ÃªÂ´â‚¬'),
(38, 'transport_help', 'transport help', 'Ã Â¦Â¯Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¬Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¨Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'ayuda de transporte', 'Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã™â€šÃ™â€ž', 'vervoer help', 'Ã‘â€šÃ‘â‚¬ÃÂ°ÃÂ½Ã‘ÂÃÂ¿ÃÂ¾Ã‘â‚¬Ã‘â€š ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¨Â¿ÂÃ¨Â¾â€œÃ¥Â¸Â®Ã¥Å Â©', 'ulaÃ…Å¸Ã„Â±m yardÃ„Â±m', 'ajuda de transporte', 'szÃƒÂ¡llÃƒÂ­tÃƒÂ¡s SÃƒÂºgÃƒÂ³', 'le transport de l''aide', 'ÃŽÂ²ÃŽÂ¿ÃŽÂ·ÃŽÂ¸ÃŽÂ¿ÃÂÃŽÂ½ Ãâ€žÃŽÂ· ÃŽÂ¼ÃŽÂµÃâ€žÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬', 'Transport Hilfe', 'help trasporti', 'Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€šÃ Â¸â„¢Ã Â¸ÂªÃ Â¹Ë†Ã Â¸â€¡', 'Ã™â€ Ã™â€šÃ™â€ž Ã™Ë† Ã˜Â­Ã™â€¦Ã™â€ž Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â¹Ã Â¤Â¨ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'auxilium onerariis', 'transportasi bantuan', 'Ã¨Â¼Â¸Ã©â‚¬ÂÃ£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬Â â€žÃ¬â€ Â¡ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(39, 'transport', 'transport', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â¹Ã Â¦Â¨', 'transporte', 'Ã™â€ Ã™â€šÃ™â€ž', 'vervoer', 'Ã‘â€šÃ‘â‚¬ÃÂ°ÃÂ½Ã‘ÂÃÂ¿ÃÂ¾Ã‘â‚¬Ã‘â€š', 'Ã¨Â¿ÂÃ¨Â¾â€œ', 'taÃ…Å¸Ã„Â±ma', 'transporte', 'szÃƒÂ¡llÃƒÂ­tÃƒÂ¡s', 'transport', 'ÃŽÂ¼ÃŽÂµÃâ€žÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬', 'Transport', 'trasporto', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€šÃ Â¸â„¢Ã Â¸ÂªÃ Â¹Ë†Ã Â¸â€¡', 'Ã™â€ Ã™â€šÃ™â€ž Ã™Ë† Ã˜Â­Ã™â€¦Ã™â€ž', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â¹Ã Â¤Â¨', 'onerariis', 'angkutan', 'Ã¨Â¼Â¸Ã©â‚¬Â', 'Ã¬Ë†ËœÃ¬â€ Â¡'),
(40, 'dormitory_help', 'dormitory help', 'Ã Â¦â€ Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'dormitorio de ayuda', 'Ã˜Â¹Ã™â€ Ã˜Â¨Ã˜Â± Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'slaapzaal hulp', 'ÃÂ¾ÃÂ±Ã‘â€°ÃÂµÃÂ¶ÃÂ¸Ã‘â€šÃÂ¸ÃÂµ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¥Â®Â¿Ã¨Ë†ÂÃ¥Â¸Â®Ã¥Å Â©', 'yatakhane yardÃ„Â±m', 'dormitÃƒÂ³rio ajuda', 'kollÃƒÂ©giumi help', 'dortoir aide', 'ÃŽÂºÃŽÂ¿ÃŽÂ¹Ãâ€žÃÅ½ÃŽÂ½ÃŽÂ± ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Wohnheim Hilfe', 'dormitorio aiuto', 'Ã Â¸Â«Ã Â¸Â­Ã Â¸Å¾Ã Â¸Â±Ã Â¸ÂÃ Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'Ã˜Â´Ã›Å’Ã™â€ Ã˜Â§ÃšÂ¯Ã˜Â§Ã˜Â± Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¸ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'dormitorium auxilium', 'asrama bantuan', 'Ã¥Â¯Â®Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'ÃªÂ¸Â°Ã¬Ë†â„¢Ã¬â€šÂ¬ Ã«Ââ€žÃ¬â€ºâ‚¬Ã«Â§Â'),
(41, 'dormitory', 'dormitory', 'Ã Â¦Â¶Ã Â§ÂÃ Â¦Â°Ã Â¦Â®Ã Â¦Â¿Ã Â¦â€¢ - Ã Â¦â€ Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾', 'dormitorio', 'Ã˜Â§Ã™â€žÃ™â€¦Ã™â€¡Ã˜Â¬Ã˜Â¹', 'slaapzaal', 'Ã‘ÂÃÂ¿ÃÂ°ÃÂ»Ã‘Å’ÃÂ½Ã‘Â', 'Ã¥Â®Â¿Ã¨Ë†Â', 'yatakhane', 'dormitÃƒÂ³rio', 'hÃƒÂ¡lÃƒÂ³terem', 'dortoir', 'ÃŽÂºÃŽÂ¿ÃŽÂ¹Ãâ€žÃÅ½ÃŽÂ½ÃŽÂ±', 'Wohnheim', 'dormitorio', 'Ã Â¸Â«Ã Â¸Â­Ã Â¸Å¾Ã Â¸Â±Ã Â¸Â', 'Ã˜Â´Ã›Å’Ã™â€ Ã˜Â§ÃšÂ¯Ã˜Â§Ã˜Â±', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¸', 'dormitorium', 'asrama mahasiswa', 'Ã¥Â¯Â®', 'ÃªÂ¸Â°Ã¬Ë†â„¢Ã¬â€šÂ¬');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(42, 'noticeboard_help', 'noticeboard help', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'tablÃƒÂ³n de anuncios de la ayuda', 'Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â© Ã™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'prikbord hulp', 'ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂ° ÃÂ´ÃÂ»Ã‘Â ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¥Â¸Æ’Ã¥â€˜Å Ã¥Â¸Â®Ã¥Å Â©', 'noticeboard yardÃ„Â±m', 'avisos ajuda', 'ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n help', 'panneau d''aide', 'ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½ ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Brett-Hilfe', 'bacheca aiuto', 'Ã Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'noticeboard Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Noticeboard Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'auxilium noticeboard', 'pengumuman bantuan', 'Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬ÂËœ noticeboard Ã«Ââ€žÃ¬â€ºâ‚¬Ã«Â§Â'),
(43, 'noticeboard-event', 'noticeboard-event', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡-Ã Â¦â€¡Ã Â¦Â­Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸', 'tablÃƒÂ³n de anuncios de eventos', 'Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â© Ã˜Â§Ã™â€žÃ˜Â­Ã˜Â¯Ã˜Â«', 'prikbord-event', 'ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂ° ÃÂ´ÃÂ»Ã‘Â ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹-Ã‘ÂÃÂ¾ÃÂ±Ã‘â€¹Ã‘â€šÃÂ¸ÃÂµ', 'Ã¥Â¸Æ’Ã¥â€˜Å Ã§â€°Å’Ã¤Âºâ€¹Ã¤Â»Â¶', 'noticeboard olay', 'avisos de eventos', 'ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n esemÃƒÂ©ny', 'panneau d''ÃƒÂ©vÃƒÂ©nement', 'ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂºÃŽÂ´ÃŽÂ®ÃŽÂ»Ãâ€°ÃÆ’ÃŽÂ·', 'Brett-Ereignis', 'bacheca-evento', 'Ã Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¹â‚¬Ã Â¸Â«Ã Â¸â€¢Ã Â¸Â¸Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€œÃ Â¹Å’', 'noticeboard Ã˜Â§Ã›Å’Ã™Ë†Ã™â€ Ã™Â¹', 'Noticeboard Ã Â¤ËœÃ Â¤Å¸Ã Â¤Â¨Ã Â¤Â¾', 'noticeboard eventus,', 'pengumuman-acara', 'Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿Ã£â€šÂ¤Ã£Æ’â„¢Ã£Æ’Â³Ã£Æ’Ë†', 'Ã¬ÂËœ noticeboard Ã¬ÂÂ´Ã«Â²Â¤Ã­Å Â¸'),
(44, 'bed_ward_help', 'bed ward help', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'cama ward ayuda', 'Ã˜Â¬Ã™â€ Ã˜Â§Ã˜Â­ Ã˜Â³Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'bed ward hulp', 'ÃÂºÃ‘â‚¬ÃÂ¾ÃÂ²ÃÂ°Ã‘â€šÃ‘Å’ ÃÂ¿ÃÂ¾ÃÂ´ÃÂ¾ÃÂ¿ÃÂµÃ‘â€¡ÃÂ½Ã‘â€¹ÃÂ¹ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¥ÂºÅ Ã§â€”â€¦Ã¦Ë†Â¿Ã§Å¡â€žÃ¥Â¸Â®Ã¥Å Â©', 'yatak koÃ„Å¸uÃ…Å¸ yardÃ„Â±m', 'ajuda cama enfermaria', 'ÃƒÂ¡gy Ward help', 'lit salle de l''aide', 'ÃŽÂºÃÂÃŽÂµÃŽÂ²ÃŽÂ¬Ãâ€žÃŽÂ¹ Ãâ‚¬Ãâ€žÃŽÂ­ÃÂÃâ€¦ÃŽÂ³ÃŽÂ± ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Betten-Station Hilfe', 'Letto reparto aiuto', 'Ã Â¸Â§Ã Â¸Â­Ã Â¸Â£Ã Â¹Å’Ã Â¸â€Ã Â¹â‚¬Ã Â¸â€¢Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â€¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'Ã˜Â¨Ã˜Â³Ã˜ÂªÃ˜Â± Ã™Ë†Ã˜Â§Ã˜Â±ÃšË† Ã™â€¦Ã˜Â¯Ã˜Â¯', 'Ã Â¤Â¬Ã Â¤Â¿Ã Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤Â° Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡ Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦', 'lectum stans auxilium', 'tidur bangsal bantuan', 'Ã£Æ’â„¢Ã£Æ’Æ’Ã£Æ’â€°Ã§â€”â€¦Ã¦Â£Å¸Ã£ÂÂ®Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã¬Â¹Â¨Ã«Å’â‚¬ Ã«Â³â€˜Ã«Ââ„¢ Ã«Ââ€žÃ¬â€ºâ‚¬'),
(45, 'settings', 'settings', 'Ã Â¦Â¸Ã Â§â€¡Ã Â¦Å¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦Â¸', 'configuraciÃƒÂ³n', 'Ã˜Â¥Ã˜Â¹Ã˜Â¯Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Âª', 'instellingen', 'ÃÂ½ÃÂ°Ã‘ÂÃ‘â€šÃ‘â‚¬ÃÂ¾ÃÂ¹ÃÂºÃÂ¸', 'Ã¨Â®Â¾Ã§Â½Â®', 'ayarlarÃ„Â±', 'definiÃƒÂ§ÃƒÂµes', 'beÃƒÂ¡llÃƒÂ­tÃƒÂ¡sok', 'paramÃƒÂ¨tres', 'ÃŽÂ¡Ãâ€¦ÃŽÂ¸ÃŽÂ¼ÃŽÂ¯ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'Einstellungen', 'Impostazioni', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€¢Ã Â¸Â±Ã Â¹â€°Ã Â¸â€¡Ã Â¸â€žÃ Â¹Ë†Ã Â¸Â²', 'Ã˜ÂªÃ˜Â±Ã˜ÂªÃ›Å’Ã˜Â¨Ã˜Â§Ã˜Âª', 'Ã Â¤Â¸Ã Â¥â€¡Ã Â¤Å¸Ã Â¤Â¿Ã Â¤â€šÃ Â¤â€”Ã Â¥ÂÃ Â¤Â¸', 'occasus', 'Pengaturan', 'Ã¨Â¨Â­Ã¥Â®Å¡', 'Ã¬â€žÂ¤Ã¬Â â€¢'),
(46, 'system_settings', 'system settings', 'Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§â€¡Ã Â¦Â® Ã Â¦Â¸Ã Â§â€¡Ã Â¦Å¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦Â¸', 'configuraciÃƒÂ³n del sistema', 'Ã˜Â¥Ã˜Â¹Ã˜Â¯Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Âª Ã˜Â§Ã™â€žÃ™â€ Ã˜Â¸Ã˜Â§Ã™â€¦', 'systeeminstellingen', 'ÃÂ½ÃÂ°Ã‘ÂÃ‘â€šÃ‘â‚¬ÃÂ¾ÃÂ¹ÃÂºÃÂ¸ Ã‘ÂÃÂ¸Ã‘ÂÃ‘â€šÃÂµÃÂ¼Ã‘â€¹', 'Ã§Â³Â»Ã§Â»Å¸Ã¨Â®Â¾Ã§Â½Â®', 'sistem ayarlarÃ„Â±', 'configuraÃƒÂ§ÃƒÂµes do sistema', 'rendszerbeÃƒÂ¡llÃƒÂ­tÃƒÂ¡sokat', 'les paramÃƒÂ¨tres du systÃƒÂ¨me', 'ÃÂÃâ€¦ÃŽÂ¸ÃŽÂ¼ÃŽÂ¯ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š Ãâ€žÃŽÂ¿Ãâ€¦ ÃÆ’Ãâ€¦ÃÆ’Ãâ€žÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š', 'Systemeinstellungen', 'impostazioni di sistema', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€¢Ã Â¸Â±Ã Â¹â€°Ã Â¸â€¡Ã Â¸â€žÃ Â¹Ë†Ã Â¸Â²Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€ Ã˜Â¸Ã˜Â§Ã™â€¦ ÃšÂ©Ã›Å’ Ã˜ÂªÃ˜Â±Ã˜ÂªÃ›Å’Ã˜Â¨Ã˜Â§Ã˜Âª', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â£Ã Â¤Â¾Ã Â¤Â²Ã Â¥â‚¬ Ã Â¤Â¸Ã Â¥â€¡Ã Â¤Å¸Ã Â¤Â¿Ã Â¤â€šÃ Â¤â€”Ã Â¥ÂÃ Â¤Â¸', 'ratio occasus', 'pengaturan sistem', 'Ã£â€šÂ·Ã£â€šÂ¹Ã£Æ’â€ Ã£Æ’Â Ã¨Â¨Â­Ã¥Â®Å¡', 'Ã¬â€¹Å“Ã¬Å Â¤Ã­â€¦Å“ Ã¬â€žÂ¤Ã¬Â â€¢'),
(47, 'manage_language', 'manage language', 'Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â·Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar idioma', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ™â€žÃ˜ÂºÃ˜Â©', 'beheren taal', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘ÂÃÂ·Ã‘â€¹ÃÂº', 'Ã§Â®Â¡Ã§Ââ€ Ã¨Â¯Â­Ã¨Â¨â‚¬', 'dil yÃƒÂ¶netmek', 'gerenciar lÃƒÂ­ngua', 'kezelni nyelv', 'gÃƒÂ©rer langue', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· ÃŽÂ³ÃŽÂ»ÃÅ½ÃÆ’ÃÆ’ÃŽÂ±', 'verwalten Sprache', 'gestire lingua', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â Ã Â¸Â²Ã Â¸Â©Ã Â¸Â²', 'Ã˜Â²Ã˜Â¨Ã˜Â§Ã™â€  ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤Â­Ã Â¤Â¾Ã Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'moderari linguam,', 'mengelola bahasa', 'Ã¨Â¨â‚¬Ã¨ÂªÅ¾Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã¬â€“Â¸Ã¬â€“Â´Ã«Â¥Â¼ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(48, 'backup_restore', 'backup restore', 'Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦â€¢Ã Â¦â€ Ã Â¦Âª Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¨Ã Â¦Æ’Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¾Ã Â¦ÂªÃ Â¦Â¨', 'copia de seguridad a restaurar', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã˜Â³Ã˜Â® Ã˜Â§Ã™â€žÃ˜Â§Ã˜Â­Ã˜ÂªÃ™Å Ã˜Â§Ã˜Â·Ã™Å ', 'backup terugzetten', 'ÃÂ²ÃÂ¾Ã‘ÂÃ‘ÂÃ‘â€šÃÂ°ÃÂ½ÃÂ¾ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â‚¬ÃÂµÃÂ·ÃÂµÃ‘â‚¬ÃÂ²ÃÂ½ÃÂ¾ÃÂ³ÃÂ¾ ÃÂºÃÂ¾ÃÂ¿ÃÂ¸Ã‘â‚¬ÃÂ¾ÃÂ²ÃÂ°ÃÂ½ÃÂ¸Ã‘Â', 'Ã¥Â¤â€¡Ã¤Â»Â½Ã¨Â¿ËœÃ¥Å½Å¸', 'yedekleme geri', 'de backup restaurar', 'Backup Restore', 'restauration de sauvegarde', 'ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬Ãâ€š ÃŽÂ±ÃŽÂ½Ãâ€žÃŽÂ¹ÃŽÂ³ÃÂÃŽÂ¬Ãâ€ Ãâ€°ÃŽÂ½ ÃŽÂ±ÃÆ’Ãâ€ ÃŽÂ±ÃŽÂ»ÃŽÂµÃŽÂ¯ÃŽÂ±Ãâ€š', 'Backup wiederherstellen', 'ripristino di backup', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â³Ã Â¸Â£Ã Â¸Â­Ã Â¸â€¡Ã Â¸â€šÃ Â¹â€°Ã Â¸Â­Ã Â¸Â¡Ã Â¸Â¹Ã Â¸Â¥Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸ÂÃ Â¸â€žÃ Â¸Â·Ã Â¸â„¢', 'Ã˜Â¨Ã›Å’ÃšÂ© Ã˜Â§Ã™Â¾ Ã˜Â¨Ã˜Â­Ã˜Â§Ã™â€ž', 'Ã Â¤Â¬Ã Â¥Ë†Ã Â¤â€¢Ã Â¤â€¦Ã Â¤Âª Ã Â¤Â¬Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²', 'tergum restituunt', 'backup restore', 'Ã£Æ’ÂÃ£Æ’Æ’Ã£â€šÂ¯Ã£â€šÂ¢Ã£Æ’Æ’Ã£Æ’â€”Ã£ÂÂ¯Ã£â‚¬ÂÃ£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†Ã£â€šÂ¢', 'Ã«Â°Â±Ã¬â€”â€¦ Ã«Â³ÂµÃ¬â€ºÂ'),
(49, 'profile_help', 'profile help', 'Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯ Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â§â€¹Ã Â¦Â«Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â²', 'Perfil Ayuda', 'Ã™â€¦Ã™â€žÃ™Â Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'profile hulp', 'ÃÂ°ÃÂ½ÃÂºÃÂµÃ‘â€šÃÂ° ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã§Â®â‚¬Ã¤Â»â€¹Ã¥Â¸Â®Ã¥Å Â©', 'yardÃ„Â±m profile', 'Perfil ajuda', 'profile help', 'profil aide', 'Ãâ‚¬ÃÂÃŽÂ¿Ãâ€ ÃŽÂ¯ÃŽÂ» ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Profil Hilfe', 'profilo di aiuto', 'Ã Â¹â€šÃ Â¸â€ºÃ Â¸Â£Ã Â¹â€žÃ Â¸Å¸Ã Â¸Â¥Ã Â¹Å’Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'Ã™â€¦Ã˜Â¯Ã˜Â¯ Ã™Â¾Ã˜Â±Ã™Ë†Ã™ÂÃ˜Â§Ã˜Â¦Ã™â€ž', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¥â€¹Ã Â¤Â«Ã Â¤Â¾Ã Â¤â€¡Ã Â¤Â² Ã Â¤Â®Ã Â¥â€¡Ã Â¤â€š', 'Auctor nullam opem', 'Profil bantuan', 'Ã£Æ’â€”Ã£Æ’Â­Ã£Æ’â€¢Ã£â€šÂ£Ã£Æ’Â¼Ã£Æ’Â«Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”', 'Ã«Ââ€žÃ¬â€ºâ‚¬ Ã­â€â€žÃ«Â¡Å“Ã­â€¢â€ž'),
(50, 'manage_student', 'manage student', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¥Ã Â§â‚¬ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar estudiante', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â·Ã™â€žÃ˜Â¨Ã˜Â©', 'beheren student', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€šÃÂ°', 'Ã§Â®Â¡Ã§Ââ€ Ã¥Â­Â¦Ã§â€Å¸', 'ÃƒÂ¶Ã„Å¸renci yÃƒÂ¶netmek', 'gerenciar estudante', 'kezelni diÃƒÂ¡k', 'gÃƒÂ©rer ÃƒÂ©tudiant', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃâ€°ÃŽÂ½ Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃÅ½ÃŽÂ½', 'SchÃƒÂ¼ler verwalten', 'gestire studente', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â¨Ã Â¸Â¶Ã Â¸ÂÃ Â¸Â©Ã Â¸Â²', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â° Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo alumnorum', 'mengelola siswa', 'Ã§â€Å¸Ã¥Â¾â€™Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã­â€¢â„¢Ã¬Æ’Â ÃªÂ´â‚¬Ã«Â¦Â¬'),
(51, 'manage_teacher', 'manage teacher', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar maestro', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'beheren leraar', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Â', 'Ã§Â®Â¡Ã§Ââ€ Ã¨â‚¬ÂÃ¥Â¸Ë†', 'ÃƒÂ¶Ã„Å¸retmen yÃƒÂ¶netmek', 'gerenciar professor', 'kezelni tanÃƒÂ¡r', 'gÃƒÂ©rer enseignant', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂºÃâ‚¬ÃŽÂ±ÃŽÂ¹ÃŽÂ´ÃŽÂµÃâ€¦Ãâ€žÃŽÂ¹ÃŽÂºÃÅ½ÃŽÂ½', 'Lehrer verwalten', 'gestire insegnante', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã™Â¹Ã›Å’Ãšâ€ Ã˜Â± ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'magister curo', 'mengelola guru', 'Ã¦â€¢â„¢Ã¥Â¸Â«Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'ÃªÂµÂÃ¬â€šÂ¬ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(52, 'noticeboard', 'noticeboard', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'tablÃƒÂ³n de anuncios', 'Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â©', 'prikbord', 'ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂ° ÃÂ´ÃÂ»Ã‘Â ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹', 'Ã¥Â¸Æ’Ã¥â€˜Å ', 'noticeboard', 'quadro de avisos', 'ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n', 'panneau d''affichage', 'ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½', 'Brett', 'bacheca', 'Ã Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨', 'noticeboard', 'Noticeboard', 'noticeboard', 'pengumuman', 'Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿', 'Ã¬ÂËœ noticeboard'),
(53, 'language', 'language', 'Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â·Ã Â¦Â¾', 'idioma', 'Ã™â€žÃ˜ÂºÃ˜Â©', 'taal', 'Ã‘ÂÃÂ·Ã‘â€¹ÃÂº', 'Ã¨Â¯Â­', 'dil', 'lÃƒÂ­ngua', 'nyelv', 'langue', 'ÃŽÂ³ÃŽÂ»ÃÅ½ÃÆ’ÃÆ’ÃŽÂ±', 'Sprache', 'lingua', 'Ã Â¸Â Ã Â¸Â²Ã Â¸Â©Ã Â¸Â²', 'Ã˜Â²Ã˜Â¨Ã˜Â§Ã™â€ ', 'Ã Â¤Â­Ã Â¤Â¾Ã Â¤Â·Ã Â¤Â¾', 'Lingua', 'bahasa', 'Ã¨Â¨â‚¬Ã¨ÂªÅ¾', 'Ã¬â€“Â¸Ã¬â€“Â´'),
(54, 'backup', 'backup', 'Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦â€¢Ã Â¦â€ Ã Â¦Âª', 'reserva', 'Ã˜Â¯Ã˜Â¹Ã™â€¦', 'reservekopie', 'Ã‘â‚¬ÃÂµÃÂ·ÃÂµÃ‘â‚¬ÃÂ²ÃÂ½Ã‘â€¹ÃÂ¹', 'Ã¥Â¤â€¡Ã§â€Â¨', 'yedek', 'backup', 'mentÃƒÂ©s', 'sauvegarde', 'ÃŽÂµÃâ€ ÃŽÂµÃŽÂ´ÃÂÃŽÂ¹ÃŽÂºÃÅ’Ãâ€š', 'Sicherungskopie', 'di riserva', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â³Ã Â¸Â£Ã Â¸Â­Ã Â¸â€¡Ã Â¸â€šÃ Â¹â€°Ã Â¸Â­Ã Â¸Â¡Ã Â¸Â¹Ã Â¸Â¥', 'Ã˜Â¨Ã›Å’ÃšÂ© Ã˜Â§Ã™Â¾', 'Ã Â¤Â¬Ã Â¥Ë†Ã Â¤â€¢Ã Â¤â€¦Ã Â¤Âª', 'tergum', 'backup', 'Ã£Æ’ÂÃ£Æ’Æ’Ã£â€šÂ¯Ã£â€šÂ¢Ã£Æ’Æ’Ã£Æ’â€”', 'Ã¬Â§â‚¬Ã¬â€ºÂ'),
(55, 'calendar_schedule', 'calendar schedule', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â²Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¡Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¸Ã Â¦Â®Ã Â¦Â¯Ã Â¦Â¼Ã Â¦Â¸Ã Â§â€šÃ Â¦Å¡Ã Â§â‚¬', 'horario de calendario', 'Ã˜Â§Ã™â€žÃ˜Â¬Ã˜Â¯Ã™Ë†Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â²Ã™â€¦Ã™â€ Ã™Å ', 'kalender schema', 'ÃÅ¡ÃÂ°ÃÂ»ÃÂµÃÂ½ÃÂ´ÃÂ°Ã‘â‚¬Ã‘Å’ ÃÂ ÃÂ°Ã‘ÂÃÂ¿ÃÂ¸Ã‘ÂÃÂ°ÃÂ½ÃÂ¸ÃÂµ', 'Ã¦â€”Â¥Ã¥Å½â€ Ã¦â€”Â¥Ã§Â¨â€¹', 'takvim programÃ„Â±', 'agenda calendÃƒÂ¡rio', 'naptÃƒÂ¡ri ÃƒÂ¼temezÃƒÂ©s', 'calendrier calendrier', 'Ãâ€¡ÃÂÃŽÂ¿ÃŽÂ½ÃŽÂ¿ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ³ÃÂÃŽÂ¬ÃŽÂ¼ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ·ÃŽÂ¼ÃŽÂµÃÂÃŽÂ¿ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ¯ÃŽÂ¿Ãâ€¦', 'Kalender Zeitplan', 'programma di calendario', 'Ã Â¸â€ºÃ Â¸ÂÃ Â¸Â´Ã Â¸â€”Ã Â¸Â´Ã Â¸â„¢Ã Â¸â€¢Ã Â¸Â²Ã Â¸Â£Ã Â¸Â²Ã Â¸â€¡Ã Â¸â„¢Ã Â¸Â±Ã Â¸â€Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢', 'ÃšÂ©Ã›Å’Ã™â€žÃ™â€ ÃšË†Ã˜Â± Ã˜Â´Ã›Å’ÃšË†Ã™Ë†Ã™â€ž', 'Ã Â¤â€¢Ã Â¥Ë†Ã Â¤Â²Ã Â¥â€¡Ã Â¤â€šÃ Â¤Â¡Ã Â¤Â° Ã Â¤â€¦Ã Â¤Â¨Ã Â¥ÂÃ Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'kalendarium ipsum', 'jadwal kalender', 'Ã£â€šÂ«Ã£Æ’Â¬Ã£Æ’Â³Ã£Æ’â‚¬Ã£Æ’Â¼Ã£ÂÂ®Ã£â€šÂ¹Ã£â€šÂ±Ã£â€šÂ¸Ã£Æ’Â¥Ã£Æ’Â¼Ã£Æ’Â«', 'Ã¬ÂºËœÃ«Â¦Â°Ã«Ââ€ Ã¬ÂÂ¼Ã¬Â â€¢'),
(56, 'select_a_class', 'select a class', 'Ã Â¦ÂÃ Â¦â€¢Ã Â¦Å¸Ã Â¦Â¿ Ã Â¦Â¶Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â£Ã Â§â‚¬ Ã Â¦Â¨Ã Â¦Â¿Ã Â¦Â°Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¾Ã Â¦Å¡Ã Â¦Â¨', 'seleccionar una clase', 'Ã˜Â­Ã˜Â¯Ã˜Â¯ Ã™ÂÃ˜Â¦Ã˜Â©', 'selecteer een class', 'ÃÂ²Ã‘â€¹ÃÂ±ÃÂµÃ‘â‚¬ÃÂ¸Ã‘â€šÃÂµ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã©â‚¬â€°Ã¦â€¹Â©Ã¤Â¸â‚¬Ã¤Â¸ÂªÃ§Â±Â»', 'bir sÃ„Â±nÃ„Â±f seÃƒÂ§in', 'selecionar uma classe', 'vÃƒÂ¡lasszon ki egy osztÃƒÂ¡lyt', 'sÃƒÂ©lectionner une classe', 'ÃŽÂµÃâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ­ÃŽÂ¾Ãâ€žÃŽÂµ ÃŽÂ¼ÃŽÂ¹ÃŽÂ± ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ±', 'WÃƒÂ¤hlen Sie eine Klasse', 'selezionare una classe', 'Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'Ã˜Â§Ã›Å’ÃšÂ© ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã™â€ Ã˜ÂªÃ˜Â®Ã˜Â¨ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂÃ Â¤â€¢ Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Å¡Ã Â¤Â¯Ã Â¤Â¨ Ã Â¤â€¢Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€š', 'eligere genus', 'pilih kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£â€šâ€™Ã©ÂÂ¸Ã¦Å Å¾', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤Ã«Â¥Â¼ Ã¬â€žÂ Ã­Æ’Â'),
(57, 'student_list', 'student list', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¥Ã Â§â‚¬Ã Â¦Â° Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista de alumnos', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â·Ã™â€žÃ˜Â§Ã˜Â¨', 'student lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€š', 'Ã¥Â­Â¦Ã§â€Å¸Ã¥ÂÂÃ¥Ââ€¢', 'ÃƒÂ¶Ã„Å¸renci listesi', 'lista de alunos', 'diÃƒÂ¡k lista', 'liste des ÃƒÂ©tudiants', 'ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ¬ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ¿ Ãâ€žÃâ€°ÃŽÂ½ Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃÅ½ÃŽÂ½', 'SchÃƒÂ¼lerliste', 'elenco degli studenti', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ ÃšÂ©Ã›Å’ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â° Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'Discipulus album', 'daftar mahasiswa', 'Ã¥Â­Â¦Ã§â€Å¸Ã£ÂÂ®Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã­â€¢â„¢Ã¬Æ’Â Ã«ÂªÂ©Ã«Â¡Â'),
(58, 'add_student', 'add student', 'Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Â¤Ã Â§ÂÃ Â¦Â° Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir estudiante', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨', 'voeg student', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€šÃÂ°', 'Ã¦â€“Â°Ã¥Â¢Å¾Ã¥Â­Â¦Ã§â€Å¸', 'ÃƒÂ¶Ã„Å¸renci eklemek', 'adicionar estudante', 'hozzÃƒÂ¡ hallgatÃƒÂ³', 'ajouter ÃƒÂ©tudiant', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃŽÂ®Ãâ€š', 'Student hinzufÃƒÂ¼gen', 'aggiungere studente', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â° Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde elit', 'menambahkan mahasiswa', 'Ã¥Â­Â¦Ã§â€Å¸Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã­â€¢â„¢Ã¬Æ’ÂÃ¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(59, 'roll', 'roll', 'Ã Â¦Â°Ã Â§â€¹Ã Â¦Â²', 'rollo', 'Ã™â€žÃ™ÂÃ˜Â©', 'broodje', 'Ã‘â‚¬Ã‘Æ’ÃÂ»ÃÂ¾ÃÂ½', 'Ã¦Â»Å¡', 'rulo', 'rolo', 'tekercs', 'rouleau', 'ÃÂÃŽÂ¿ÃŽÂ»ÃÅ’', 'Rolle', 'rotolo', 'Ã Â¸Â¡Ã Â¹â€°Ã Â¸Â§Ã Â¸â„¢', 'Ã˜Â±Ã™Ë†Ã™â€ž', 'Ã Â¤Â°Ã Â¥â€¹Ã Â¤Â²', 'volumen', 'gulungan', 'Ã£Æ’Â­Ã£Æ’Â¼Ã£Æ’Â«', 'Ã«Â¡Â¤'),
(60, 'photo', 'photo', 'Ã Â¦â€ºÃ Â¦Â¬Ã Â¦Â¿', 'foto', 'Ã˜ÂµÃ™Ë†Ã˜Â±', 'foto', 'Ã‘â€žÃÂ¾Ã‘â€šÃÂ¾', 'Ã§â€¦Â§Ã§â€°â€¡', 'fotoÃ„Å¸raf', 'foto', 'fÃƒÂ©nykÃƒÂ©p', 'photo', 'Ãâ€ Ãâ€°Ãâ€žÃŽÂ¿ÃŽÂ³ÃÂÃŽÂ±Ãâ€ ÃŽÂ¯ÃŽÂ±', 'Foto', 'foto', 'Ã Â¸Â Ã Â¸Â²Ã Â¸Å¾Ã Â¸â€“Ã Â¹Ë†Ã Â¸Â²Ã Â¸Â¢', 'Ã˜ÂªÃ˜ÂµÃ™Ë†Ã›Å’Ã˜Â±', 'Ã Â¤Â«Ã Â¤Â¼Ã Â¥â€¹Ã Â¤Å¸Ã Â¥â€¹', 'Lorem ipsum', 'foto', 'Ã¥â€ â„¢Ã§Å“Å¸', 'Ã¬â€šÂ¬Ã¬Â§â€ž'),
(61, 'student_name', 'student name', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¥Ã Â§â‚¬Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del estudiante', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â§Ã™â€žÃ˜Â¨', 'naam van de leerling', 'ÃËœÃÂ¼Ã‘Â Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€šÃÂ°', 'Ã¥Â­Â¦Ã§â€Å¸Ã¥Â§â€œÃ¥ÂÂ', 'Ãƒâ€“Ã„Å¸renci adÃ„Â±', 'nome do aluno', 'tanulÃƒÂ³ nevÃƒÂ©t', 'nom de l''ÃƒÂ©tudiant', 'Ãâ€žÃŽÂ¿ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ¼ÃŽÂ±ÃŽÂ¸ÃŽÂ·Ãâ€žÃŽÂ®', 'Studentennamen', 'nome dello studente', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ ÃšÂ©Ã›â€™ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â° Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'ipsum est nomen', 'nama siswa', 'Ã¥Â­Â¦Ã§â€Å¸Ã£ÂÂ®Ã¥ÂÂÃ¥â€°Â', 'Ã­â€¢â„¢Ã¬Æ’ÂÃ¬ÂËœ Ã¬ÂÂ´Ã«Â¦â€ž'),
(62, 'address', 'address', 'Ã Â¦Â Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾', 'direcciÃƒÂ³n', 'Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€ ', 'adres', 'ÃÂ°ÃÂ´Ã‘â‚¬ÃÂµÃ‘Â', 'Ã¥Å“Â°Ã¥Ââ‚¬', 'adres', 'endereÃƒÂ§o', 'cÃƒÂ­m', 'adresse', 'ÃŽÂ´ÃŽÂ¹ÃŽÂµÃÂÃŽÂ¸Ãâ€¦ÃŽÂ½ÃÆ’ÃŽÂ·', 'Adresse', 'indirizzo', 'Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Â­Ã Â¸Â¢Ã Â¸Â¹Ã Â¹Ë†', 'Ã˜Â§Ã›Å’ÃšË†Ã˜Â±Ã›Å’Ã˜Â³', 'Ã Â¤ÂªÃ Â¤Â¤Ã Â¤Â¾', 'Oratio', 'alamat', 'Ã£â€šÂ¢Ã£Æ’â€°Ã£Æ’Â¬Ã£â€šÂ¹', 'Ã¬Â£Â¼Ã¬â€ Å’'),
(63, 'options', 'options', 'Ã Â¦â€¦Ã Â¦ÂªÃ Â¦Â¶Ã Â¦Â¨', 'Opciones', 'Ã˜Â®Ã™Å Ã˜Â§Ã˜Â±Ã˜Â§Ã˜Âª', 'opties', 'ÃÂ¾ÃÂ¿Ã‘â€ ÃÂ¸ÃÂ¸', 'Ã©â‚¬â€°Ã©Â¡Â¹', 'seÃƒÂ§enekleri', 'opÃƒÂ§ÃƒÂµes', 'lehetÃ…â€˜sÃƒÂ©gek', 'les options', 'ÃŽâ€¢Ãâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ­Ãâ€š', 'Optionen', 'Opzioni', 'Ã Â¸â€¢Ã Â¸Â±Ã Â¸Â§Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸Â', 'Ã˜Â§Ã˜Â®Ã˜ÂªÃ›Å’Ã˜Â§Ã˜Â±Ã˜Â§Ã˜Âª', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤â€¢Ã Â¤Â²Ã Â¥ÂÃ Â¤Âª', 'options', 'Pilihan', 'Ã£â€šÂªÃ£Æ’â€”Ã£â€šÂ·Ã£Æ’Â§Ã£Æ’Â³', 'Ã¬ËœÂµÃ¬â€¦Ëœ'),
(64, 'marksheet', 'marksheet', 'marksheet', 'marksheet', 'marksheet', 'Marksheet', 'marksheet', 'marksheet', 'Marksheet', 'marksheet', 'Marksheet', 'relevÃƒÂ© de notes', 'Marksheet', 'marksheet', 'Marksheet', 'marksheet', 'marksheet', 'Ã Â¤â€¦Ã Â¤â€šÃ Â¤â€¢Ã Â¤ÂªÃ Â¤Â¤Ã Â¥ÂÃ Â¤Â°', 'marksheet', 'marksheet', 'marksheet', 'marksheet'),
(65, 'id_card', 'id card', 'Ã Â¦â€ Ã Â¦â€¡Ã Â¦Â¡Ã Â¦Â¿ Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'carnet de identidad', 'Ã˜Â¨Ã˜Â·Ã˜Â§Ã™â€šÃ˜Â© Ã˜Â§Ã™â€žÃ™â€¡Ã™Ë†Ã™Å Ã˜Â©', 'id-kaart', 'Ã‘Æ’ÃÂ´ÃÂ¾Ã‘ÂÃ‘â€šÃÂ¾ÃÂ²ÃÂµÃ‘â‚¬ÃÂµÃÂ½ÃÂ¸ÃÂµ ÃÂ»ÃÂ¸Ã‘â€¡ÃÂ½ÃÂ¾Ã‘ÂÃ‘â€šÃÂ¸', 'Ã¨ÂºÂ«Ã¤Â»Â½Ã¨Â¯Â', 'kimlik kartÃ„Â±', 'carteira de identidade', 'szemÃƒÂ©lyi igazolvÃƒÂ¡ny', 'carte d''identitÃƒÂ©', 'id ÃŽÂºÃŽÂ¬ÃÂÃâ€žÃŽÂ±', 'Ausweis', 'carta d''identitÃƒÂ ', 'Ã Â¸Å¡Ã Â¸Â±Ã Â¸â€¢Ã Â¸Â£Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸Å Ã Â¸Â²Ã Â¸Å Ã Â¸â„¢', 'Ã˜Â´Ã™â€ Ã˜Â§Ã˜Â®Ã˜ÂªÃ›Å’ ÃšÂ©Ã˜Â§Ã˜Â±ÃšË†', 'Ã Â¤â€ Ã Â¤Â¡Ã Â¥â‚¬ Ã Â¤â€¢Ã Â¤Â¾Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'id ipsum', 'id card', 'IDÃ£â€šÂ«Ã£Æ’Â¼Ã£Æ’â€°', 'Ã¬â€¹Â Ã«Â¶â€žÃ¬Â¦Â'),
(66, 'edit', 'edit', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨ Ã Â¦â€¢Ã Â¦Â°Ã Â¦Â¾', 'editar', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â±', 'uitgeven', 'Ã‘â‚¬ÃÂµÃÂ´ÃÂ°ÃÂºÃ‘â€šÃÂ¸Ã‘â‚¬ÃÂ¾ÃÂ²ÃÂ°Ã‘â€šÃ‘Å’', 'Ã§Â¼â€“Ã¨Â¾â€˜', 'dÃƒÂ¼zenleme', 'editar', 'szerkeszt', 'modifier', 'edit', 'bearbeiten', 'modifica', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€š', 'Ã™â€¦Ã›Å’ÃšÂº Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤â€¢Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€š', 'edit', 'mengedit', 'Ã§Â·Â¨Ã©â€ºâ€ ', 'Ã­Å½Â¸Ã¬Â§â€˜'),
(67, 'delete', 'delete', 'Ã Â¦Â®Ã Â§ÂÃ Â¦â€ºÃ Â§â€¡ Ã Â¦Â«Ã Â§â€¡Ã Â¦Â²Ã Â¦Â¾', 'borrar', 'Ã˜Â­Ã˜Â°Ã™Â', 'verwijderen', 'Ã‘Æ’ÃÂ´ÃÂ°ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’', 'Ã¥Ë†Â Ã©â„¢Â¤', 'silmek', 'excluir', 'tÃƒÂ¶rÃƒÂ¶l', 'effacer', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ³ÃÂÃŽÂ±Ãâ€ ÃŽÂ®', 'lÃƒÂ¶schen', 'cancellare', 'Ã Â¸Â¥Ã Â¸Å¡', 'Ã˜Â®Ã˜Â§Ã˜Â±Ã˜Â¬', 'Ã Â¤Â¹Ã Â¤Å¸Ã Â¤Â¾Ã Â¤Â¨Ã Â¤Â¾', 'vel deleri,', 'menghapus', 'Ã¥â€°Å Ã©â„¢Â¤Ã£Ââ„¢Ã£â€šâ€¹', 'Ã¬â€šÂ­Ã¬Â Å“'),
(68, 'personal_profile', 'personal profile', 'Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¿Ã Â¦â€”Ã Â¦Â¤ Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â§â€¹Ã Â¦Â«Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â²', 'perfil personal', 'Ã™â€¦Ã™â€žÃ™Â Ã˜Â´Ã˜Â®Ã˜ÂµÃ™Å ', 'persoonlijk profiel', 'ÃÂ»ÃÂ¸Ã‘â€¡ÃÂ½Ã‘â€¹ÃÂ¹ ÃÂ¿Ã‘â‚¬ÃÂ¾Ã‘â€žÃÂ¸ÃÂ»Ã‘Å’', 'Ã¤Â¸ÂªÃ¤ÂºÂºÃ§Â®â‚¬Ã¤Â»â€¹', 'kiÃ…Å¸isel profil', 'perfil pessoal', 'szemÃƒÂ©lyes profil', 'profil personnel', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’Ãâ€°Ãâ‚¬ÃŽÂ¹ÃŽÂºÃÅ’ Ãâ‚¬ÃÂÃŽÂ¿Ãâ€ ÃŽÂ¯ÃŽÂ»', 'persÃƒÂ¶nliches Profil', 'profilo personale', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸Â¥Ã Â¸Â°Ã Â¹â‚¬Ã Â¸Â­Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â€Ã Â¸â€šÃ Â¹â€°Ã Â¸Â­Ã Â¸Â¡Ã Â¸Â¹Ã Â¸Â¥Ã Â¸ÂªÃ Â¹Ë†Ã Â¸Â§Ã Â¸â„¢Ã Â¸â€¢Ã Â¸Â±Ã Â¸Â§', 'Ã˜Â°Ã˜Â§Ã˜ÂªÃ›Å’ Ã™Â¾Ã˜Â±Ã™Ë†Ã™ÂÃ˜Â§Ã˜Â¦Ã™â€ž', 'Ã Â¤ÂµÃ Â¥ÂÃ Â¤Â¯Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¤Ã Â¤Â¿Ã Â¤â€”Ã Â¤Â¤ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¥â€¹Ã Â¤Â«Ã Â¤Â¾Ã Â¤â€¡Ã Â¤Â²', 'personal profile', 'profil pribadi', 'Ã¤ÂºÂºÃ§â€°Â©Ã§â€šÂ¹Ã¦ÂÂ', 'ÃªÂ°Å“Ã¬ÂÂ¸ Ã­â€â€žÃ«Â¡Å“Ã­â€¢â€ž'),
(69, 'academic_result', 'academic result', 'Ã Â¦ÂÃ Â¦â€¢Ã Â¦Â¾Ã Â¦Â¡Ã Â§â€¡Ã Â¦Â®Ã Â¦Â¿Ã Â¦â€¢ Ã Â¦Â«Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â«Ã Â¦Â²', 'resultado acadÃƒÂ©mico', 'Ã™â€ Ã˜ÂªÃ™Å Ã˜Â¬Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â£Ã™Æ’Ã˜Â§Ã˜Â¯Ã™Å Ã™â€¦Ã™Å Ã˜Â©', 'academische resultaat', 'ÃÂ°ÃÂºÃÂ°ÃÂ´ÃÂµÃÂ¼ÃÂ¸Ã‘â€¡ÃÂµÃ‘ÂÃÂºÃÂ¸ÃÂ¹ Ã‘â‚¬ÃÂµÃÂ·Ã‘Æ’ÃÂ»Ã‘Å’Ã‘â€šÃÂ°Ã‘â€š', 'Ã¥Â­Â¦Ã¦Å“Â¯Ã¦Ë†ÂÃ¦Å¾Å“', 'akademik sonuÃƒÂ§', 'resultado acadÃƒÂªmico', 'tudomÃƒÂ¡nyos eredmÃƒÂ©ny', 'rÃƒÂ©sultat acadÃƒÂ©mique', 'ÃŽÂ±ÃŽÂºÃŽÂ±ÃŽÂ´ÃŽÂ·ÃŽÂ¼ÃŽÂ±ÃÅ ÃŽÂºÃŽÂ® ÃŽÂ±Ãâ‚¬ÃŽÂ¿Ãâ€žÃŽÂ­ÃŽÂ»ÃŽÂµÃÆ’ÃŽÂ¼ÃŽÂ±', 'Studienergebnis', 'risultato accademico', 'Ã Â¸Å“Ã Â¸Â¥Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â¨Ã Â¸Â¶Ã Â¸ÂÃ Â¸Â©Ã Â¸Â²', 'Ã˜ÂªÃ˜Â¹Ã™â€žÃ›Å’Ã™â€¦Ã›Å’ Ã™â€ Ã˜ÂªÃ›Å’Ã˜Â¬Ã›Â', 'Ã Â¤Â¶Ã Â¥Ë†Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¿Ã Â¤â€¢ Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤Â£Ã Â¤Â¾Ã Â¤Â®', 'Ex academicis', 'Hasil akademik', 'Ã¥Â­Â¦Ã¨Â¡â€œÃ§ÂµÂÃ¦Å¾Å“', 'Ã­â€¢â„¢Ã¬Å Âµ ÃªÂ²Â°Ã¢â‚¬â€¹Ã¢â‚¬â€¹ÃªÂ³Â¼'),
(70, 'name', 'name', 'Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'nombre', 'Ã˜Â§Ã˜Â³Ã™â€¦', 'naam', 'ÃÂ½ÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ', 'Ã¥ÂÂÃ§Â§Â°', 'isim', 'nome', 'nÃƒÂ©v', 'nom', 'ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ±', 'Name', 'nome', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­', 'Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'nomen,', 'nama', 'Ã¥ÂÂÃ¥â€°Â', 'Ã¬ÂÂ´Ã«Â¦â€ž'),
(71, 'birthday', 'birthday', 'Ã Â¦Å“Ã Â¦Â¨Ã Â§ÂÃ Â¦Â®Ã Â¦Â¦Ã Â¦Â¿Ã Â¦Â¨', 'cumpleaÃƒÂ±os', 'Ã˜Â¹Ã™Å Ã˜Â¯ Ã™â€¦Ã™Å Ã™â€žÃ˜Â§Ã˜Â¯', 'verjaardag', 'ÃÂ´ÃÂµÃÂ½Ã‘Å’ Ã‘â‚¬ÃÂ¾ÃÂ¶ÃÂ´ÃÂµÃÂ½ÃÂ¸Ã‘Â', 'Ã§â€Å¸Ã¦â€”Â¥', 'doÃ„Å¸um gÃƒÂ¼nÃƒÂ¼', 'aniversÃƒÂ¡rio', 'szÃƒÂ¼letÃƒÂ©snap', 'anniversaire', 'ÃŽÂ³ÃŽÂµÃŽÂ½ÃŽÂ­ÃŽÂ¸ÃŽÂ»ÃŽÂ¹ÃŽÂ±', 'Geburtstag', 'compleanno', 'Ã Â¸Â§Ã Â¸Â±Ã Â¸â„¢Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â´Ã Â¸â€', 'Ã˜Â³Ã˜Â§Ã™â€žÃšÂ¯Ã˜Â±Ã›Â', 'Ã Â¤Å“Ã Â¤Â¨Ã Â¥ÂÃ Â¤Â®Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨', 'natalis', 'ulang tahun', 'Ã¨Âªâ€¢Ã§â€Å¸Ã¦â€”Â¥', 'Ã¬Æ’ÂÃ¬ÂÂ¼'),
(72, 'sex', 'sex', 'Ã Â¦Â²Ã Â¦Â¿Ã Â¦â„¢Ã Â§ÂÃ Â¦â€”', 'sexo', 'Ã˜Â¬Ã™â€ Ã˜Â³', 'seks', 'Ã‘ÂÃÂµÃÂºÃ‘Â', 'Ã¦â‚¬Â§Ã¥Ë†Â«', 'seks', 'sexo', 'szex', 'sexe', 'Ãâ€ ÃÂÃŽÂ»ÃŽÂ¿', 'Sex', 'sesso', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â¨', 'Ã˜Â¬Ã™â€ Ã˜Â³Ã›Å’', 'Ã Â¤Â²Ã Â¤Â¿Ã Â¤â€šÃ Â¤â€”', 'sex', 'seks', 'Ã£â€šÂ»Ã£Æ’Æ’Ã£â€šÂ¯Ã£â€šÂ¹', 'Ã¬â€žÂ¹Ã¬Å Â¤'),
(73, 'male', 'male', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â§ÂÃ Â¦Â·', 'masculino', 'Ã˜Â°Ã™Æ’Ã˜Â±', 'mannelijk', 'ÃÂ¼Ã‘Æ’ÃÂ¶Ã‘ÂÃÂºÃÂ¾ÃÂ¹', 'Ã§â€Â·Ã¦â‚¬Â§', 'erkek', 'masculino', 'fÃƒÂ©rfi', 'mÃƒÂ¢le', 'ÃŽÂ±ÃÂÃÆ’ÃŽÂµÃŽÂ½ÃŽÂ¹ÃŽÂºÃÅ’Ãâ€š', 'mÃƒÂ¤nnlich', 'maschio', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â¨Ã Â¸Å Ã Â¸Â²Ã Â¸Â¢', 'Ã™Â¾Ã˜Â±Ã™Ë†Ã™ÂÃ˜Â§Ã˜Â¦Ã™â€ž', 'Ã Â¤Â¨Ã Â¤Â°', 'masculus', 'laki-laki', 'Ã§â€Â·Ã¦â‚¬Â§', 'Ã«â€šÂ¨Ã¬â€žÂ±'),
(74, 'female', 'female', 'Ã Â¦Â®Ã Â¦Â¹Ã Â¦Â¿Ã Â¦Â²Ã Â¦Â¾', 'femenino', 'Ã˜Â£Ã™â€ Ã˜Â«Ã™â€°', 'vrouw', 'ÃÂ¶ÃÂµÃÂ½Ã‘ÂÃÂºÃÂ¸ÃÂ¹', 'Ã¥Â¥Â³', 'kadÃ„Â±n', 'feminino', 'nÃ…â€˜i', 'femelle', 'ÃŽÂ¸ÃŽÂ·ÃŽÂ»Ãâ€¦ÃŽÂºÃÅ’Ãâ€š', 'weiblich', 'femminile', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â¨Ã Â¸Â«Ã Â¸ÂÃ Â¸Â´Ã Â¸â€¡', 'Ã˜Â®Ã™Ë†Ã˜Â§Ã˜ÂªÃ›Å’Ã™â€ ', 'Ã Â¤Â®Ã Â¤Â¹Ã Â¤Â¿Ã Â¤Â²Ã Â¤Â¾', 'femina,', 'perempuan', 'Ã¥Â¥Â³Ã¦â‚¬Â§', 'Ã¬â€”Â¬Ã¬â€žÂ±'),
(75, 'religion', 'religion', 'Ã Â¦Â§Ã Â¦Â°Ã Â§ÂÃ Â¦Â®', 'religiÃƒÂ³n', 'Ã˜Â¯Ã™Å Ã™â€ ', 'religie', 'Ã‘â‚¬ÃÂµÃÂ»ÃÂ¸ÃÂ³ÃÂ¸Ã‘Â', 'Ã¥Â®â€”Ã¦â€¢â„¢', 'din', 'religiÃƒÂ£o', 'vallÃƒÂ¡s', 'religion', 'ÃŽÂ¸ÃÂÃŽÂ·ÃÆ’ÃŽÂºÃŽÂµÃŽÂ¯ÃŽÂ±', 'Religion', 'religione', 'Ã Â¸Â¨Ã Â¸Â²Ã Â¸ÂªÃ Â¸â„¢Ã Â¸Â²', 'Ã™â€¦Ã˜Â°Ã›ÂÃ˜Â¨', 'Ã Â¤Â§Ã Â¤Â°Ã Â¥ÂÃ Â¤Â®', 'religionis,', 'agama', 'Ã¥Â®â€”Ã¦â€¢â„¢', 'Ã¬Â¢â€¦ÃªÂµÂ'),
(76, 'blood_group', 'blood group', 'Ã Â¦Â°Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¤Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â­Ã Â¦Â¾Ã Â¦â€”', 'grupo sanguÃƒÂ­neo', 'Ã™ÂÃ˜ÂµÃ™Å Ã™â€žÃ˜Â© Ã˜Â§Ã™â€žÃ˜Â¯Ã™â€¦', 'bloedgroep', 'ÃÂ³Ã‘â‚¬Ã‘Æ’ÃÂ¿ÃÂ¿ÃÂ° ÃÂºÃ‘â‚¬ÃÂ¾ÃÂ²ÃÂ¸', 'Ã¨Â¡â‚¬Ã¥Å¾â€¹', 'kan grubu', 'grupo sanguÃƒÂ­neo', 'vÃƒÂ©rcsoport', 'groupe sanguin', 'ÃŽÂ¿ÃŽÂ¼ÃŽÂ¬ÃŽÂ´ÃŽÂ± ÃŽÂ±ÃŽÂ¯ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š', 'Blutgruppe', 'gruppo sanguigno', 'Ã Â¸ÂÃ Â¸Â£Ã Â¸Â¸Ã Â¹Å Ã Â¸â€ºÃ Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸â€', 'Ã˜Â®Ã™Ë†Ã™â€  ÃšÂ©Ã›â€™ ÃšÂ¯Ã˜Â±Ã™Ë†Ã™Â¾', 'Ã Â¤Â°Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¤ Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€”', 'sanguine coetus', 'golongan darah', 'Ã¨Â¡â‚¬Ã¦Â¶Â²Ã¥Å¾â€¹', 'Ã­ËœË†Ã¬â€¢Â¡Ã­Ëœâ€¢'),
(77, 'phone', 'phone', 'Ã Â¦Â«Ã Â§â€¹Ã Â¦Â¨', 'telÃƒÂ©fono', 'Ã™â€¡Ã˜Â§Ã˜ÂªÃ™Â', 'telefoon', 'Ã‘â€šÃÂµÃÂ»ÃÂµÃ‘â€žÃÂ¾ÃÂ½', 'Ã§â€ÂµÃ¨Â¯Â', 'telefon', 'telefone', 'telefon', 'tÃƒÂ©lÃƒÂ©phone', 'Ãâ€žÃŽÂ·ÃŽÂ»ÃŽÂ­Ãâ€ Ãâ€°ÃŽÂ½ÃŽÂ¿', 'Telefon', 'telefono', 'Ã Â¹â€šÃ Â¸â€”Ã Â¸Â£Ã Â¸Â¨Ã Â¸Â±Ã Â¸Å¾Ã Â¸â€”Ã Â¹Å’', 'Ã™ÂÃ™Ë†Ã™â€ ', 'Ã Â¤Â«Ã Â¤Â¼Ã Â¥â€¹Ã Â¤Â¨', 'Praesent', 'telepon', 'Ã©â€ºÂ»Ã¨Â©Â±', 'Ã¬Â â€žÃ­â„¢â€'),
(78, 'father_name', 'father name', 'Ã Â¦ÂªÃ Â¦Â¿Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del padre', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ˜Â£Ã˜Â¨', 'naam van de vader', 'ÃÂ¾Ã‘â€šÃ‘â€¡ÃÂµÃ‘ÂÃ‘â€šÃÂ²ÃÂ¾', 'Ã§Ë†Â¶Ã¤ÂºÂ²Ã¥Â§â€œÃ¥ÂÂ', 'baba adÃ„Â±', 'nome pai', 'apa nÃƒÂ©v', 'nom de pÃƒÂ¨re', 'ÃŽÂ¤ÃŽÂ¿ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃŽÂ¿Ãâ€¦ Ãâ‚¬ÃŽÂ±Ãâ€žÃŽÂ­ÃÂÃŽÂ±', 'Der Name des Vaters', 'nome del padre', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Å¾Ã Â¹Ë†Ã Â¸Â­', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯ ÃšÂ©Ã˜Â§ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'nomine Patris,', 'Nama ayah', 'Ã§Ë†Â¶Ã¨Â¦ÂªÃ£ÂÂ®Ã¥ÂÂÃ¥â€°Â', 'Ã¬â€¢â€žÃ«Â²â€žÃ¬Â§â‚¬Ã¬ÂËœ Ã¬ÂÂ´Ã«Â¦â€ž'),
(79, 'mother_name', 'mother name', 'Ã Â¦Â®Ã Â¦Â¾Ã Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre de la madre', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ˜Â£Ã™â€¦', 'moeder naam', 'ÃËœÃÂ¼Ã‘Â ÃÂ¼ÃÂ°Ã‘â€šÃÂµÃ‘â‚¬ÃÂ¸', 'Ã¦Â¯ÂÃ¤ÂºÂ²Ã§Å¡â€žÃ¥ÂÂÃ¥Â­â€”', 'anne adÃ„Â±', 'Nome mÃƒÂ£e', 'anyja nÃƒÂ©v', 'nom de la mÃƒÂ¨re', 'Ãâ€žÃŽÂ¿ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃŽÂ·Ãâ€š ÃŽÂ¼ÃŽÂ·Ãâ€žÃŽÂ­ÃÂÃŽÂ±Ãâ€š', 'Name der Mutter', 'Nome madre', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¹ÂÃ Â¸Â¡Ã Â¹Ë†', 'Ã™â€¦Ã˜Â§ÃšÂº ÃšÂ©Ã˜Â§ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'matris nomen,', 'Nama ibu', 'Ã¦Â¯ÂÃ£ÂÂ®Ã¥ÂÂÃ¥â€°Â', 'Ã¬â€“Â´Ã«Â¨Â¸Ã«â€¹Ë† Ã¬ÂÂ´Ã«Â¦â€ž'),
(80, 'edit_student', 'edit student', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Â¤Ã Â§ÂÃ Â¦Â°', 'edit estudiante', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â§Ã™â€žÃ˜Â¨', 'bewerk student', 'Ã‘â‚¬ÃÂµÃÂ´ÃÂ°ÃÂºÃ‘â€šÃÂ¸Ã‘â‚¬ÃÂ¾ÃÂ²ÃÂ°ÃÂ½ÃÂ¸Ã‘Â Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€š', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¥Â­Â¦Ã§â€Å¸', 'edit ÃƒÂ¶Ã„Å¸renci', 'ediÃƒÂ§ÃƒÂ£o aluno', 'szerkesztÃƒÂ©s diÃƒÂ¡k', 'modifier ÃƒÂ©tudiant', 'ÃŽÂµÃâ‚¬ÃŽÂµÃŽÂ¾ÃŽÂµÃÂÃŽÂ³ÃŽÂ±ÃÆ’ÃŽÂ¯ÃŽÂ± Ãâ€žÃâ€°ÃŽÂ½ Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃÅ½ÃŽÂ½', 'SchÃƒÂ¼ler bearbeiten', 'modifica dello studente', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã›â€™ Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°', 'edit studiosum', 'mengedit siswa', 'Ã§Â·Â¨Ã©â€ºâ€ Ã¥Â­Â¦Ã§â€Å¸', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã­â€¢â„¢Ã¬Æ’Â'),
(81, 'teacher_list', 'teacher list', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista maestra', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'leraar lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»ÃÂµÃÂ¹', 'Ã¨â‚¬ÂÃ¥Â¸Ë†Ã¥ÂÂÃ¥Ââ€¢', 'ÃƒÂ¶Ã„Å¸retmen listesi', 'lista de professores', 'tanÃƒÂ¡r lista', 'Liste des enseignants', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂºÃâ‚¬ÃŽÂ±ÃŽÂ¹ÃŽÂ´ÃŽÂµÃâ€¦Ãâ€žÃŽÂ¹ÃŽÂºÃÅ½ÃŽÂ½', 'Lehrer-Liste', 'elenco degli insegnanti', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'magister album', 'daftar guru', 'Ã¦â€¢â„¢Ã¥â€œÂ¡Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'ÃªÂµÂÃ¬â€šÂ¬Ã¬ÂËœ Ã«ÂªÂ©Ã«Â¡Â'),
(82, 'add_teacher', 'add teacher', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir profesor', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'voeg leraar', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Â', 'Ã¥Å Â Ã¤Â¸Å Ã¨â‚¬ÂÃ¥Â¸Ë†', 'ÃƒÂ¶Ã„Å¸retmen ekle', 'adicionar professor', 'hozzÃƒÂ¡ tanÃƒÂ¡r', 'ajouter enseignant', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ ÃŽÂ´ÃŽÂ¬ÃÆ’ÃŽÂºÃŽÂ±ÃŽÂ»ÃŽÂ¿Ãâ€š', 'Lehrer hinzufÃƒÂ¼gen', 'aggiungere insegnante', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯ Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'Magister addit', 'menambah guru', 'Ã¥â€¦Ë†Ã§â€Å¸Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'ÃªÂµÂÃ¬â€šÂ¬Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(83, 'teacher_name', 'teacher name', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del profesor', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'leraarsnaam', 'ÃËœÃÂ¼Ã‘Â Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Â', 'Ã¨â‚¬ÂÃ¥Â¸Ë†Ã¥Â§â€œÃ¥ÂÂ', 'ÃƒÂ¶Ã„Å¸retmen adÃ„Â±', 'nome professor', 'tanÃƒÂ¡r nÃƒÂ©v', 'nom des enseignants', 'ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂºÃâ‚¬ÃŽÂ±ÃŽÂ¹ÃŽÂ´ÃŽÂµÃâ€¦Ãâ€žÃŽÂ¹ÃŽÂºÃÅ½ÃŽÂ½', 'Lehrer Name', 'Nome del docente', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯ ÃšÂ©Ã˜Â§ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'magister nomine', 'nama guru', 'Ã¦â€¢â„¢Ã¥â€œÂ¡Ã¥ÂÂ', 'ÃªÂµÂÃ¬â€šÂ¬ Ã¬ÂÂ´Ã«Â¦â€ž');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(84, 'edit_teacher', 'edit teacher', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢', 'edit maestro', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'leraar bewerken', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¨â‚¬ÂÃ¥Â¸Ë†', 'edit ÃƒÂ¶Ã„Å¸retmen', 'editar professor', 'szerkesztÃƒÂ©s tanÃƒÂ¡r', 'modifier enseignant', 'edit ÃŽÂµÃŽÂºÃâ‚¬ÃŽÂ±ÃŽÂ¹ÃŽÂ´ÃŽÂµÃâ€¦Ãâ€žÃŽÂ¹ÃŽÂºÃÅ½ÃŽÂ½', 'edit Lehrer', 'modifica insegnante', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤â€¢Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€š Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢', 'edit magister', 'mengedit guru', 'Ã§Â·Â¨Ã©â€ºâ€ Ã£ÂÂ®Ã¥â€¦Ë†Ã§â€Å¸', 'Ã­Å½Â¸Ã¬Â§â€˜ ÃªÂµÂÃ¬â€šÂ¬'),
(85, 'manage_parent', 'manage parent', 'Ã Â¦â€¦Ã Â¦Â­Ã Â¦Â¿Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â¬Ã Â¦â€¢ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar los padres', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â£Ã™â€¦', 'beheren ouder', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»ÃÂµÃÂ¹', 'Ã¦Â¯ÂÃ¥â€¦Â¬Ã¥ÂÂ¸Ã§Â®Â¡Ã§Ââ€ ', 'ebeveyn yÃƒÂ¶netmek', 'gerenciar pai', 'kezelni szÃƒÂ¼lÃ…â€˜', 'gÃƒÂ©rer parent', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃŽÂ®', 'verwalten Mutter', 'gestione genitore', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo parent', 'mengelola orang tua', 'Ã¨Â¦ÂªÃ£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã«Â¶â‚¬Ã«ÂªÂ¨ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(86, 'parent_list', 'parent list', 'Ã Â¦Â®Ã Â§â€šÃ Â¦Â² Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista primaria', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™Ë†Ã˜Â§Ã™â€žÃ˜Â¯', 'ouder lijst', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’Ã‘ÂÃÂºÃÂ¾ÃÂ³ÃÂ¾ Ã‘ÂÃÂ¿ÃÂ¸Ã‘ÂÃÂºÃÂ°', 'Ã§Ë†Â¶Ã¥Ë†â€”Ã¨Â¡Â¨', 'ebeveyn listesi', 'lista pai', 'szÃƒÂ¼lÃ…â€˜ lista', 'liste parent', 'ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃŽÂ® ÃŽÂ»ÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ±', 'geordneten Liste', 'elenco padre', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  ÃšÂ©Ã›Å’ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'parente album', 'daftar induk', 'Ã¨Â¦ÂªÃ£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã¬Æ’ÂÃ¬Å“â€ž Ã«ÂªÂ©Ã«Â¡Â'),
(87, 'parent_name', 'parent name', 'Ã Â¦Â®Ã Â§â€šÃ Â¦Â² Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del padre', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™Ë†Ã˜Â§Ã™â€žÃ˜Â¯', 'oudernaam', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’ ÃÂ½ÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ', 'Ã§Ë†Â¶Ã¥ÂÂ', 'ebeveyn isim', 'nome do pai', 'szÃƒÂ¼lÃ…â€˜ nÃƒÂ©v', 'nom du parent', 'ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃÅ’ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ±', 'Mutternamen', 'nome del padre', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  ÃšÂ©Ã›â€™ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'Nomen parentis,', 'nama orang tua', 'Ã¨Â¦ÂªÃ£ÂÂ®Ã¥ÂÂÃ¥â€°Â', 'Ã«Â¶â‚¬Ã«ÂªÂ¨ Ã¬ÂÂ´Ã«Â¦â€ž'),
(88, 'relation_with_student', 'relation with student', 'Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Â¤Ã Â§ÂÃ Â¦Â°Ã Â¦Â¦Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¸Ã Â¦â„¢Ã Â§ÂÃ Â¦â€”Ã Â§â€¡ Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â°Ã Â§ÂÃ Â¦â€¢', 'relaciÃƒÂ³n con el estudiante', 'Ã˜Â§Ã™â€žÃ˜Â¹Ã™â€žÃ˜Â§Ã™â€šÃ˜Â© Ã™â€¦Ã˜Â¹ Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â§Ã™â€žÃ˜Â¨', 'relatie met student', 'ÃÂ¾Ã‘â€šÃÂ½ÃÂ¾Ã‘Ë†ÃÂµÃÂ½ÃÂ¸Ã‘Â Ã‘Â Ã‘Æ’Ã‘â€¡ÃÂµÃÂ½ÃÂ¸ÃÂºÃÂ¾ÃÂ¼', 'Ã¤Â¸Å½Ã¥Â­Â¦Ã§â€Å¸Ã¥â€¦Â³Ã§Â³Â»', 'ÃƒÂ¶Ã„Å¸renci ile iliÃ…Å¸kisi', 'relaÃƒÂ§ÃƒÂ£o com o aluno', 'kapcsolatban diÃƒÂ¡k', 'relation avec l''ÃƒÂ©lÃƒÂ¨ve', 'ÃÆ’Ãâ€¡ÃŽÂ­ÃÆ’ÃŽÂ· ÃŽÂ¼ÃŽÂµ Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂ¼ÃŽÂ±ÃŽÂ¸ÃŽÂ·Ãâ€žÃŽÂ®', 'Zusammenhang mit Studenten', 'rapporto con lo studente', 'Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸ÂªÃ Â¸Â±Ã Â¸Â¡Ã Â¸Å¾Ã Â¸Â±Ã Â¸â„¢Ã Â¸ËœÃ Â¹Å’Ã Â¸ÂÃ Â¸Â±Ã Â¸Å¡Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ ÃšÂ©Ã›â€™ Ã˜Â³Ã˜Â§Ã˜ÂªÃšÂ¾ Ã˜ÂªÃ˜Â¹Ã™â€žÃ™â€š', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾ Ã Â¤â€¢Ã Â¥â€¡ Ã Â¤Â¸Ã Â¤Â¾Ã Â¤Â¥ Ã Â¤Â¸Ã Â¤â€šÃ Â¤Â¬Ã Â¤â€šÃ Â¤Â§', 'cum inter ipsum', 'hubungan dengan siswa', 'Ã¥Â­Â¦Ã§â€Å¸Ã£ÂÂ¨Ã£ÂÂ®Ã©â€“Â¢Ã¤Â¿â€š', 'Ã­â€¢â„¢Ã¬Æ’ÂÃªÂ³Â¼Ã¬ÂËœ ÃªÂ´â‚¬ÃªÂ³â€ž'),
(89, 'parent_email', 'parent email', 'Ã Â¦Â®Ã Â§â€šÃ Â¦Â² Ã Â¦â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦â€¡Ã Â¦Â²', 'correo electrÃƒÂ³nico de los padres', 'Ã˜Â§Ã™â€žÃ˜Â¨Ã˜Â±Ã™Å Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â¥Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â±Ã™Ë†Ã™â€ Ã™Å  Ã˜Â§Ã™â€žÃ˜Â£Ã™â€¦', 'ouder email', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’ ÃÂ¿ÃÂ¸Ã‘ÂÃ‘Å’ÃÂ¼ÃÂ¾', 'Ã§Ë†Â¶Ã¦Â¯ÂÃ§Å¡â€žÃ§â€ÂµÃ¥Â­ÂÃ©â€šÂ®Ã¤Â»Â¶', 'ebeveyn email', 'e-mail dos pais', 'szÃƒÂ¼lÃ…â€˜ e-mail', 'parent email', 'email Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ³ÃŽÂ¿ÃŽÂ½ÃŽÂ­ÃŽÂ±', 'Eltern per E-Mail', 'email genitore', 'Ã Â¸Â­Ã Â¸ÂµÃ Â¹â‚¬Ã Â¸Â¡Ã Â¸Â¥Ã Â¹Å’Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  ÃšÂ©Ã˜Â§ Ã˜Â§Ã›Å’ Ã™â€¦Ã›Å’Ã™â€ž', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤Ë†Ã Â¤Â®Ã Â¥â€¡Ã Â¤Â²', 'parente email', 'email induk', 'Ã¨Â¦ÂªÃ©â€ºÂ»Ã¥Â­ÂÃ£Æ’Â¡Ã£Æ’Â¼Ã£Æ’Â«', 'Ã«Â¶â‚¬Ã«ÂªÂ¨Ã¬ÂËœ Ã¬ÂÂ´Ã«Â©â€Ã¬ÂÂ¼'),
(90, 'parent_phone', 'parent phone', 'Ã Â¦Å Ã Â¦Â°Ã Â§ÂÃ Â¦Â§Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¤Ã Â¦Â¨ Ã Â¦Â«Ã Â§â€¹Ã Â¦Â¨', 'telÃƒÂ©fono de los padres', 'Ã˜Â§Ã™â€žÃ™â€¡Ã˜Â§Ã˜ÂªÃ™Â Ã˜Â§Ã™â€žÃ™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã™Å Ã™â€ ', 'ouder telefoon', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’ Ã‘â€šÃÂµÃÂ»ÃÂµÃ‘â€žÃÂ¾ÃÂ½', 'Ã¥Â®Â¶Ã©â€¢Â¿Ã§â€ÂµÃ¨Â¯Â', 'ebeveyn telefon', 'telefone dos pais', 'szÃƒÂ¼lÃ…â€˜ telefon', 'mÃƒÂ¨re de tÃƒÂ©lÃƒÂ©phone', 'ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃŽÂ® Ãâ€žÃŽÂ·ÃŽÂ»ÃŽÂ­Ãâ€ Ãâ€°ÃŽÂ½ÃŽÂ¿', 'Elterntelefon', 'telefono genitore', 'Ã Â¹â€šÃ Â¸â€”Ã Â¸Â£Ã Â¸Â¨Ã Â¸Â±Ã Â¸Å¾Ã Â¸â€”Ã Â¹Å’Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  Ã™ÂÃ™Ë†Ã™â€ ', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤â€¢Ã Â¥â€¹ Ã Â¤Â«Ã Â¥â€¹Ã Â¤Â¨', 'parentis phone', 'telepon orang tua', 'Ã¨Â¦ÂªÃ£ÂÂ®Ã¦ÂÂºÃ¥Â¸Â¯Ã©â€ºÂ»Ã¨Â©Â±', 'Ã«Â¶â‚¬Ã«ÂªÂ¨ Ã¬Â â€žÃ­â„¢â€'),
(91, 'parrent_address', 'parrent address', 'parrent Ã Â¦Â Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾', 'DirecciÃƒÂ³n Parrent', 'Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€  parrent', 'parrent adres', 'Parrent ÃÂ°ÃÂ´Ã‘â‚¬ÃÂµÃ‘Â', 'parrentÃ¥Å“Â°Ã¥Ââ‚¬', 'parrent adresi', 'endereÃƒÂ§o Parrent', 'parrent cÃƒÂ­m', 'adresse Parrent', 'parrent ÃŽÂ´ÃŽÂ¹ÃŽÂµÃÂÃŽÂ¸Ãâ€¦ÃŽÂ½ÃÆ’ÃŽÂ·', 'parrent Adresse', 'Indirizzo parrent', 'Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Â­Ã Â¸Â¢Ã Â¸Â¹Ã Â¹Ë† parrent', 'parrent Ã˜Â§Ã›Å’ÃšË†Ã˜Â±Ã›Å’Ã˜Â³', 'parrent Ã Â¤ÂªÃ Â¤Â¤Ã Â¤Â¾', 'oratio parrent', 'alamat parrent', 'parrentÃ£â€šÂ¢Ã£Æ’â€°Ã£Æ’Â¬Ã£â€šÂ¹', 'parrent Ã¬Â£Â¼Ã¬â€ Å’'),
(92, 'parrent_occupation', 'parrent occupation', 'parrent Ã Â¦Â¬Ã Â§Æ’Ã Â¦Â¤Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¿', 'ocupaciÃƒÂ³n Parrent', 'Ã˜Â§Ã™â€žÃ˜Â§Ã˜Â­Ã˜ÂªÃ™â€žÃ˜Â§Ã™â€ž parrent', 'parrent bezetting', 'Parrent ÃÂ¾ÃÂºÃÂºÃ‘Æ’ÃÂ¿ÃÂ°Ã‘â€ ÃÂ¸Ã‘Â', 'parrentÃ¨ÂÅ’Ã¤Â¸Å¡', 'parrent iÃ…Å¸gal', 'ocupaÃƒÂ§ÃƒÂ£o Parrent', 'parrent FoglalkozÃƒÂ¡s', 'occupation Parrent', 'parrent ÃŽÂµÃâ‚¬ÃŽÂ¬ÃŽÂ³ÃŽÂ³ÃŽÂµÃŽÂ»ÃŽÂ¼ÃŽÂ±', 'parrent Beruf', 'occupazione parrent', 'Ã Â¸Â­Ã Â¸Â²Ã Â¸Å Ã Â¸ÂµÃ Â¸Å¾ parrent', 'parrent Ã™â€šÃ˜Â¨Ã˜Â¶Ã›â€™', 'parrent Ã Â¤â€¢Ã Â¤Â¬Ã Â¥ÂÃ Â¤Å“Ã Â¥â€¡', 'opus parrent', 'pendudukan parrent', 'parrentÃ¨ÂÂ·Ã¦Â¥Â­', 'parrent Ã¬Â§ÂÃ¬â€”â€¦'),
(93, 'add', 'add', 'Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€” Ã Â¦â€¢Ã Â¦Â°Ã Â¦Â¾', 'aÃƒÂ±adir', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â©', 'toevoegen', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’', 'Ã¥Å Â ', 'eklemek', 'adicionar', 'hozzÃƒÂ¡ad', 'ajouter', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ·', 'hinzufÃƒÂ¼gen', 'aggiungere', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡', 'Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼Ã Â¤Â¨Ã Â¤Â¾', 'Adde', 'menambahkan', 'Ã¥Å Â Ã£ÂË†Ã£â€šâ€¹', 'Ã¬Â¶â€ÃªÂ°â‚¬'),
(94, 'parent_of', 'parent of', 'Ã Â¦â€¦Ã Â¦Â­Ã Â¦Â¿Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â¬Ã Â¦â€¢', 'matriz de', 'Ã˜Â§Ã™â€žÃ˜Â£Ã™â€¦ Ã™â€ž', 'ouder van', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’', 'Ã§Ë†Â¶', 'ebeveyn', 'pai', 'szÃƒÂ¼lÃ…â€˜', 'parent d''', 'ÃŽÂ³ÃŽÂ¿ÃŽÂ½ÃŽÂ­ÃŽÂ±Ãâ€š', 'Muttergesellschaft der', 'madre di', 'Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€ ', 'Ã Â¤â€¢Ã Â¥â€¡ Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾', 'parentem,', 'induk dari', 'Ã£ÂÂ®Ã¨Â¦Âª', 'Ã¬ÂËœ Ã«Â¶â‚¬Ã«ÂªÂ¨'),
(95, 'profession', 'profession', 'Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â¶Ã Â¦Â¾', 'profesiÃƒÂ³n', 'Ã™â€¦Ã™â€¡Ã™â€ Ã˜Â©', 'beroep', 'ÃÂ¿Ã‘â‚¬ÃÂ¾Ã‘â€žÃÂµÃ‘ÂÃ‘ÂÃÂ¸Ã‘Â', 'Ã¨ÂÅ’Ã¤Â¸Å¡', 'meslek', 'profissÃƒÂ£o', 'szakma', 'profession', 'ÃŽÂµÃâ‚¬ÃŽÂ¬ÃŽÂ³ÃŽÂ³ÃŽÂµÃŽÂ»ÃŽÂ¼ÃŽÂ±', 'Beruf', 'professione', 'Ã Â¸Â­Ã Â¸Â²Ã Â¸Å Ã Â¸ÂµÃ Â¸Å¾', 'Ã™Â¾Ã›Å’Ã˜Â´Ã›Â', 'Ã Â¤ÂµÃ Â¥ÂÃ Â¤Â¯Ã Â¤ÂµÃ Â¤Â¸Ã Â¤Â¾Ã Â¤Â¯', 'professio', 'profesi', 'Ã¨ÂÂ·Ã¦Â¥Â­', 'Ã¬Â§ÂÃ¬â€”â€¦'),
(96, 'edit_parent', 'edit parent', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Å Ã Â¦Â°Ã Â§ÂÃ Â¦Â§Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¤Ã Â¦Â¨', 'edit padres', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã™Å Ã™â€ ', 'bewerk ouder', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã§Ë†Â¶', 'edit ebeveyn', 'ediÃƒÂ§ÃƒÂ£o pai', 'szerkesztÃƒÂ©s szÃƒÂ¼lÃ…â€˜', 'modifier parent', 'edit ÃŽÂ³ÃŽÂ¿ÃŽÂ½ÃŽÂ­ÃŽÂ±', 'edit Mutter', 'modifica genitore', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã›Å’ÃšÂº Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€ ', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤Å“Ã Â¤Â¨Ã Â¤â€¢', 'edit parent', 'mengedit induk', 'Ã§Â·Â¨Ã©â€ºâ€ Ã¨Â¦Âª', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã«Â¶â‚¬Ã«ÂªÂ¨'),
(97, 'add_parent', 'add parent', 'Ã Â¦Å Ã Â¦Â°Ã Â§ÂÃ Â¦Â§Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¤Ã Â¦Â¨ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir los padres', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ™Ë†Ã˜Â§Ã™â€žÃ˜Â¯', 'Voeg een ouder', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Â', 'Ã¦Â·Â»Ã¥Å Â Ã§Ë†Â¶', 'ebeveyn ekle', 'adicionar pai', 'hozzÃƒÂ¡ szÃƒÂ¼lÃ…â€˜', 'ajouter parent', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃŽÂ®', 'Mutter hinzufÃƒÂ¼gen', 'aggiungere genitore', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde parent', 'menambahkan orang tua', 'Ã¨Â¦ÂªÃ£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã«Â¶â‚¬Ã«ÂªÂ¨Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(98, 'manage_subject', 'manage subject', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar sujeto', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'beheren onderwerp', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘â€šÃÂµÃÂ¼Ã‘Æ’', 'Ã§Â®Â¡Ã§Ââ€ Ã¤Â¸Â»Ã©Â¢Ëœ', 'konuyu yÃƒÂ¶netmek', 'gerenciar assunto', 'kezelni tÃƒÂ¡rgy', 'gÃƒÂ©rer sujet', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€¦Ãâ‚¬ÃÅ’ÃŽÂºÃŽÂµÃŽÂ¹Ãâ€žÃŽÂ±ÃŽÂ¹', 'Thema verwalten', 'gestire i soggetti', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹ ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'subiectum disponat', 'mengelola subjek', 'Ã¥Â¯Â¾Ã¨Â±Â¡Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã«Å’â‚¬Ã¬Æ’Â ÃªÂ´â‚¬Ã«Â¦Â¬'),
(99, 'subject_list', 'subject list', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista por materia', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Onderwerp lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº ÃÂ¿ÃÂ¾ÃÂ´ÃÂ»ÃÂµÃÂ¶ÃÂ¸Ã‘â€š', 'Ã¤Â¸Â»Ã©Â¢ËœÃ¥Ë†â€”Ã¨Â¡Â¨', 'konu listesi', 'lista por assunto', 'tÃƒÂ©ma lista', 'liste de sujets', 'Ãâ€¦Ãâ‚¬ÃÅ’ÃŽÂºÃŽÂµÃŽÂ¹ÃŽÂ½Ãâ€žÃŽÂ±ÃŽÂ¹ ÃŽÂ»ÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ±', 'Themenliste', 'lista soggetto', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹ ÃšÂ©Ã›Å’ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'subiectum album', 'daftar subjek', 'Ã£â€šÂµÃ£Æ’â€“Ã£â€šÂ¸Ã£â€šÂ§Ã£â€šÂ¯Ã£Æ’Ë†Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã¬Â£Â¼Ã¬Â Å“ Ã«ÂªÂ©Ã«Â¡Â'),
(100, 'add_subject', 'add subject', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'AÃƒÂ±adir asunto', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Onderwerp toevoegen', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â€šÃÂµÃÂ¼Ã‘Æ’', 'Ã¦â€“Â°Ã¥Â¢Å¾Ã¤Â¸Â»Ã©Â¢Ëœ', 'konu ekle', 'adicionar assunto', 'TÃƒÂ¡rgy hozzÃƒÂ¡adÃƒÂ¡sa', 'ajouter l''objet', 'ÃŽÂ ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ· ÃŽÂ¸ÃŽÂ­ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š', 'Thema hinzufÃƒÂ¼gen', 'aggiungere soggetto', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼Ã Â¥â€¡Ã Â¤â€š Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯', 're addere', 'menambahkan subjek', 'Ã¤Â»Â¶Ã¥ÂÂÃ£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬Â Å“Ã«ÂªÂ©Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(101, 'subject_name', 'subject name', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'nombre del sujeto', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Onderwerp naam', 'ÃÂ¸ÃÂ¼Ã‘Â Ã‘ÂÃ‘Æ’ÃÂ±Ã‘Å ÃÂµÃÂºÃ‘â€šÃÂ°', 'Ã¤Â¸Â»Ã©Â¢ËœÃ¥ÂÂÃ§Â§Â°', 'konu adÃ„Â±', 'nome do assunto', 'tÃƒÂ¡rgy megnevezÃƒÂ©se', 'nom du sujet', 'Ãâ€¦Ãâ‚¬ÃÅ’ÃŽÂºÃŽÂµÃŽÂ¹ÃŽÂ½Ãâ€žÃŽÂ±ÃŽÂ¹ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ±', 'Thema Namen', 'nome del soggetto', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹ ÃšÂ©Ã›â€™ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'agitur nomine', 'nama subjek', 'Ã£â€šÂµÃ£Æ’â€“Ã£â€šÂ¸Ã£â€šÂ§Ã£â€šÂ¯Ã£Æ’Ë†Ã¥ÂÂ', 'Ã¬Â£Â¼Ã¬Â²Â´ Ã¬ÂÂ´Ã«Â¦â€ž'),
(102, 'edit_subject', 'edit subject', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼', 'Editar asunto', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Onderwerp bewerken', 'ÃËœÃÂ·ÃÂ¼ÃÂµÃÂ½ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â€šÃÂµÃÂ¼Ã‘Æ’', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¤Â¸Â»Ã©Â¢Ëœ', 'dÃƒÂ¼zenleme konusu', 'Editar assunto', 'TÃƒÂ¡rgy szerkesztÃƒÂ©se', 'modifier l''objet', 'edit ÃŽÂ¸ÃŽÂ­ÃŽÂ¼ÃŽÂ±', 'Betreff bearbeiten', 'Modifica oggetto', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹ Ã™â€¦Ã›Å’ÃšÂº Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯ Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤â€¢Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€š', 'edit subiecto', 'mengedit subjek', 'Ã§Â·Â¨Ã©â€ºâ€ Ã¥Â¯Â¾Ã¨Â±Â¡', 'Ã¬Â Å“Ã«ÂªÂ© Ã¬Ë†ËœÃ¬Â â€¢'),
(103, 'manage_class', 'manage class', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar clase', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'beheren klasse', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â®Â¡Ã§Ââ€ Ã§Â±Â»', 'sÃ„Â±nÃ„Â±f yÃƒÂ¶netmek', 'gerenciar classe', 'kezelni osztÃƒÂ¡ly', 'gÃƒÂ©rer classe', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃŽÂ¬ÃŽÂ¾ÃŽÂ·Ãâ€š', 'Klasse verwalten', 'gestione della classe', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'genus regendi', 'mengelola kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤Ã¬â€”ÂÃªÂ²Å’ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(104, 'class_list', 'class list', 'Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦â€” Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista de la clase', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã™ÂÃ˜Â¦Ã˜Â©', 'klasse lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â±Â»Ã¥Ë†â€”Ã¨Â¡Â¨', 'sÃ„Â±nÃ„Â±f listesi', 'lista de classe', 'class lista', 'liste de classe', 'Ãâ‚¬ÃŽÂ¯ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ±Ãâ€š ÃŽÂ±Ãâ‚¬ÃŽÂ¿Ãâ€žÃŽÂµÃŽÂ»ÃŽÂµÃÆ’ÃŽÂ¼ÃŽÂ¬Ãâ€žÃâ€°ÃŽÂ½', 'Klassenliste', 'elenco di classe', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤â€¢Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'genus album', 'daftar kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«ÂªÂ©Ã«Â¡Â'),
(105, 'add_class', 'add class', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸Ã Â§â€¡ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'agregar la clase', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã™ÂÃ˜Â¦Ã˜Â©', 'voeg klasse', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã¦Â·Â»Ã¥Å Â Ã§Â±Â»', 'sÃ„Â±nÃ„Â±f eklemek', 'adicionar classe', 'hozzÃƒÂ¡ osztÃƒÂ¡ly', 'ajouter la classe', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’ÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¬ÃŽÂ¾ÃŽÂ·', 'Klasse hinzufÃƒÂ¼gen', 'aggiungere classe', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Â£Ã Â¸Â°Ã Â¸â€Ã Â¸Â±Ã Â¸Å¡', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde genus', 'menambahkan kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(106, 'class_name', 'class name', 'Ã Â¦Â¶Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â£Ã Â§â‚¬Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'nombre de la clase', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™ÂÃ˜Â¦Ã˜Â©', 'class naam', 'ÃËœÃÂ¼Ã‘Â ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘ÂÃÂ°', 'Ã§Â±Â»Ã¥ÂÂ', 'sÃ„Â±nÃ„Â±f adÃ„Â±', 'nome da classe', 'osztÃƒÂ¡ly neve', 'nom de la classe', 'ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃŽÂ·Ãâ€š ÃŽÂºÃŽÂ»ÃŽÂ¬ÃÆ’ÃŽÂ·Ãâ€š', 'Klassennamen', 'nome della classe', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤â€¢Ã Â¥â€¡ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'Classis nomine', 'nama kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã¥ÂÂ', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã¬ÂÂ´Ã«Â¦â€ž'),
(107, 'numeric_name', 'numeric name', 'Ã Â¦Â¸Ã Â¦Â¾Ã Â¦â€šÃ Â¦â€“Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¿Ã Â¦â€¢ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'nombre numÃƒÂ©rico', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â±Ã™â€šÃ™â€¦Ã™Å Ã˜Â©', 'numerieke naam', 'Ã‘â€¡ÃÂ¸Ã‘ÂÃÂ»ÃÂ¾ÃÂ²ÃÂ¾ÃÂµ ÃÂ¸ÃÂ¼Ã‘Â', 'Ã¦â€¢Â°Ã¥Â­â€”Ã¥ÂÂÃ§Â§Â°', 'SayÃ„Â±sal isim', 'nome numÃƒÂ©rico', 'numerikus nÃƒÂ©v', 'nom numÃƒÂ©rique', 'ÃŽÂ±ÃÂÃŽÂ¹ÃŽÂ¸ÃŽÂ¼ÃŽÂ·Ãâ€žÃŽÂ¹ÃŽÂºÃÅ’ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ±', 'numerischen Namen', 'nome numerico', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¢Ã Â¸Â±Ã Â¸Â§Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸â€š', 'Ã˜Â¹Ã˜Â¯Ã˜Â¯Ã›Å’ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â¸Ã Â¤Â¾Ã Â¤â€šÃ Â¤â€“Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¿Ã Â¤â€¢ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'secundum numerum est secundum nomen,', 'Nama numerik', 'Ã¦â€¢Â°Ã¥â‚¬Â¤Ã£ÂÂ®Ã¥ÂÂÃ¥â€°Â', 'Ã¬Ë†Â«Ã¬Å¾Â Ã¬ÂÂ´Ã«Â¦â€ž'),
(108, 'name_numeric', 'name numeric', 'Ã Â¦Â¸Ã Â¦Â¾Ã Â¦â€šÃ Â¦â€“Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¿Ã Â¦â€¢ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â® Ã Â¦Â¦Ã Â¦Â¿Ã Â¦Â¨', 'nombre numÃƒÂ©rico', 'Ã˜ÂªÃ˜Â³Ã™â€¦Ã™Å Ã˜Â© Ã˜Â±Ã™â€šÃ™â€¦Ã™Å Ã˜Â©', 'naam numerieke', 'ÃÂ½ÃÂ°ÃÂ·ÃÂ²ÃÂ°Ã‘â€šÃ‘Å’ Ã‘â€¡ÃÂ¸Ã‘ÂÃÂ»ÃÂ¾ÃÂ²ÃÂ¾ÃÂ¹', 'Ã¦â€¢Â°Ã¥Â­â€”Ã¥â€˜Â½Ã¥ÂÂ', 'sayÃ„Â±sal isim', 'nome numÃƒÂ©rico', 'nÃƒÂ©v numerikus', 'nommer numÃƒÂ©rique', 'ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± ÃŽÂ±ÃÂÃŽÂ¹ÃŽÂ¸ÃŽÂ¼ÃŽÂ·Ãâ€žÃŽÂ¹ÃŽÂºÃÅ’', 'nennen numerischen', 'nome numerico', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¢Ã Â¸Â±Ã Â¸Â§Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸â€š', 'Ã˜Â¹Ã˜Â¯Ã˜Â¯Ã›Å’ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â¸Ã Â¤Â¾Ã Â¤â€šÃ Â¤â€“Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¿Ã Â¤â€¢ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'secundum numerum est secundum nomen,', 'nama numerik', 'Ã¦â€¢Â°Ã¥â‚¬Â¤Ã£ÂÂ«Ã¥ÂÂÃ¥â€°ÂÃ£â€šâ€™Ã¤Â»ËœÃ£Ââ€˜Ã£â€šâ€¹', 'Ã¬Ë†Â«Ã¬Å¾Â Ã¬ÂÂ´Ã«Â¦â€žÃ¬Ââ€ž'),
(109, 'edit_class', 'edit class', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦â€”', 'clase de ediciÃƒÂ³n', 'Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â¨Ã™â€šÃ˜Â© Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â±', 'bewerken klasse', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã§Â±Â»', 'sÃ„Â±nÃ„Â±f dÃƒÂ¼zenle', 'ediÃƒÂ§ÃƒÂ£o classe', 'szerkesztÃƒÂ©s osztÃƒÂ¡ly', 'modifier la classe', 'edit ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ±', 'Klasse bearbeiten', 'modifica della classe', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸Â£Ã Â¸Â°Ã Â¸â€Ã Â¸Â±Ã Â¸Å¡', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€”', 'edit genere', 'mengedit kelas', 'Ã§Â·Â¨Ã©â€ºâ€ Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤'),
(110, 'manage_exam', 'manage exam', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar examen', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'beheren examen', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã¨â‚¬Æ’Ã¨Â¯â€¢Ã§Â®Â¡Ã§Ââ€ ', 'sÃ„Â±navÃ„Â± yÃƒÂ¶netmek', 'gerenciar exame', 'kezelni vizsga', 'gÃƒÂ©rer examen', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'PrÃƒÂ¼fung verwalten', 'gestire esame', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo ipsum', 'mengelola ujian', 'Ã¨Â©Â¦Ã©Â¨â€œÃ£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã¬â€¹Å“Ã­â€”Ëœ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(111, 'exam_list', 'exam list', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista de exÃƒÂ¡menes', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'examen lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã¨â‚¬Æ’Ã¨Â¯â€¢Ã¥ÂÂÃ¥Ââ€¢', 'sÃ„Â±nav listesi', 'lista de exames', 'vizsga lista', 'liste d''examen', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'PrÃƒÂ¼fungsliste', 'elenco esami', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'Lorem ipsum album', 'daftar ujian', 'Ã¨Â©Â¦Ã©Â¨â€œÃ£ÂÂ®Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã¬â€¹Å“Ã­â€”Ëœ Ã«ÂªÂ©Ã«Â¡Â'),
(112, 'add_exam', 'add exam', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'agregar examen', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'voeg examen', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã¦â€“Â°Ã¥Â¢Å¾Ã¨â‚¬Æ’Ã¨Â¯â€¢', 'sÃ„Â±nav eklemek', 'adicionar exame', 'hozzÃƒÂ¡ vizsga', 'ajouter examen', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’ÃŽÂµÃâ€žÃŽÂµ ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'PrÃƒÂ¼fung hinzufÃƒÂ¼gen', 'aggiungere esame', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã™â€¦Ã›Å’ÃšÂº Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde ipsum', 'menambahkan ujian', 'Ã¨Â©Â¦Ã©Â¨â€œÃ£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬â€¹Å“Ã­â€”ËœÃ¬â€”Â Ã¬Â¶â€ÃªÂ°â‚¬'),
(113, 'exam_name', 'exam name', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'nombre del examen', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'examen naam', 'ÃÂÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã¨â‚¬Æ’Ã¨Â¯â€¢Ã¥ÂÂÃ§Â§Â°', 'sÃ„Â±nav adÃ„Â±', 'nome do exame', 'Vizsga neve', 'nom de l''examen', 'ÃŽÂ¤ÃŽÂ¿ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ¬ ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'PrÃƒÂ¼fungsnamen', 'nome dell''esame', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  ÃšÂ©Ã›â€™ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'ipsum nomen,', 'Nama ujian', 'Ã¨Â©Â¦Ã©Â¨â€œÃ¥ÂÂ', 'Ã¬â€¹Å“Ã­â€”Ëœ Ã¬ÂÂ´Ã«Â¦â€ž'),
(114, 'date', 'date', 'Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â°Ã Â¦Â¿Ã Â¦â€“', 'fecha', 'Ã˜ÂªÃ˜Â§Ã˜Â±Ã™Å Ã˜Â®', 'datum', 'ÃÂ´ÃÂ°Ã‘â€šÃÂ°', 'Ã¦â€”Â¥Ã¦Å“Å¸', 'tarih', 'data', 'dÃƒÂ¡tum', 'date', 'ÃŽÂ·ÃŽÂ¼ÃŽÂµÃÂÃŽÂ¿ÃŽÂ¼ÃŽÂ·ÃŽÂ½ÃŽÂ¯ÃŽÂ±', 'Datum', 'data', 'Ã Â¸Â§Ã Â¸Â±Ã Â¸â„¢Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†', 'Ã˜ÂªÃ˜Â§Ã˜Â±Ã›Å’Ã˜Â®', 'Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â°Ã Â¥â‚¬Ã Â¤â€“', 'date', 'tanggal', 'Ã¦â€”Â¥Ã¤Â»Ëœ', 'Ã«â€šÂ Ã¬Â§Å“'),
(115, 'comment', 'comment', 'Ã Â¦Â®Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯', 'comentario', 'Ã˜ÂªÃ˜Â¹Ã™â€žÃ™Å Ã™â€š', 'commentaar', 'ÃÂºÃÂ¾ÃÂ¼ÃÂ¼ÃÂµÃÂ½Ã‘â€šÃÂ°Ã‘â‚¬ÃÂ¸ÃÂ¹', 'Ã¨Â¯â€žÃ¨Â®Âº', 'yorum', 'comentÃƒÂ¡rio', 'megjegyzÃƒÂ©s', 'commentaire', 'ÃÆ’Ãâ€¡ÃÅ’ÃŽÂ»ÃŽÂ¹ÃŽÂ¿', 'Kommentar', 'commento', 'Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â«Ã Â¹â€¡Ã Â¸â„¢', 'Ã˜ÂªÃ˜Â¨Ã˜ÂµÃ˜Â±Ã›Â', 'Ã Â¤Å¸Ã Â¤Â¿Ã Â¤ÂªÃ Â¥ÂÃ Â¤ÂªÃ Â¤Â£Ã Â¥â‚¬', 'comment', 'komentar', 'Ã£â€šÂ³Ã£Æ’Â¡Ã£Æ’Â³Ã£Æ’Ë†', 'Ã«â€¦Â¼Ã­Ââ€°'),
(116, 'edit_exam', 'edit exam', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾', 'examen de ediciÃƒÂ³n', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â±', 'bewerk examen', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¨â‚¬Æ’Ã¨Â¯â€¢', 'edit sÃ„Â±navÃ„Â±', 'ediÃƒÂ§ÃƒÂ£o do exame', 'szerkesztÃƒÂ©s vizsga', 'modifier examen', 'edit ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'edit PrÃƒÂ¼fung', 'modifica esame', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾', 'edit ipsum', 'mengedit ujian', 'Ã§Â·Â¨Ã©â€ºâ€ Ã¨Â©Â¦Ã©Â¨â€œ', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã¬â€¹Å“Ã­â€”Ëœ'),
(117, 'manage_exam_marks', 'manage exam marks', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾ Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar marcas de examen', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â§Ã˜Âª Ã˜Â§Ã™â€žÃ˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'beheren examencijfers', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½ÃÂ°Ã‘â€ ÃÂ¸ÃÂ¾ÃÂ½ÃÂ½Ã‘â€¹ÃÂµ ÃÂ¾Ã‘â€šÃÂ¼ÃÂµÃ‘â€šÃÂºÃÂ¸', 'Ã§Â®Â¡Ã§Ââ€ Ã¨â‚¬Æ’Ã¨Â¯â€¢Ã§â€”â€¢', 'sÃ„Â±nav iÃ…Å¸aretleri yÃƒÂ¶netmek', 'gerenciar marcas exame', 'kezelni vizsga jelek', 'gÃƒÂ©rer les marques d''examen', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃâ€°ÃŽÂ½ ÃÆ’ÃŽÂ·ÃŽÂ¼ÃŽÂ¬Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'PrÃƒÂ¼fungsnoten verwalten', 'gestire i voti degli esami', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â­Ã Â¸Å¡Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  ÃšÂ©Ã›â€™ Ã™â€ Ã˜Â´Ã˜Â§Ã™â€ Ã˜Â§Ã˜Âª ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¥â€¡ Ã Â¤Â¨Ã Â¤Â¿Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'ipsum curo indicia', 'mengelola nilai ujian', 'Ã¨Â©Â¦Ã©Â¨â€œÃ£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã¬â€¹Å“Ã­â€”Ëœ Ã¬Â ÂÃ¬Ë†ËœÃ«Â¥Â¼ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(118, 'manage_marks', 'manage marks', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar marcas', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â§Ã˜Âª', 'beheren merken', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂ·ÃÂ½ÃÂ°ÃÂºÃÂ¸', 'Ã¥â€¢â€ Ã¦Â â€¡Ã§Â®Â¡Ã§Ââ€ ', 'iÃ…Å¸aretleri yÃƒÂ¶netmek', 'gerenciar marcas', 'kezelni jelek', 'gÃƒÂ©rer les marques', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃâ€°ÃŽÂ½ ÃÆ’ÃŽÂ·ÃŽÂ¼ÃŽÂ¬Ãâ€žÃâ€°ÃŽÂ½', 'Markierungen verwalten', 'gestire i marchi', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢', 'Ã™â€ Ã™â€¦Ã˜Â¨Ã˜Â±Ã™Ë†ÃšÂº ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤Â¨Ã Â¤Â¿Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo indicia', 'mengelola tanda', 'Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã«Â§Ë†Ã­ÂÂ¬Ã«Â¥Â¼ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(119, 'select_exam', 'select exam', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¿Ã Â¦Â°Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¾Ã Â¦Å¡Ã Â¦Â¨', 'seleccione examen', 'Ã˜Â­Ã˜Â¯Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'selecteer examen', 'ÃÂ²Ã‘â€¹ÃÂ±Ã‘â‚¬ÃÂ°Ã‘â€šÃ‘Å’ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã©â‚¬â€°Ã¦â€¹Â©Ã¨â‚¬Æ’Ã¨Â¯â€¢', 'sÃ„Â±navÃ„Â± seÃƒÂ§in', 'selecionar exame', 'vÃƒÂ¡lassza ki a vizsga', 'sÃƒÂ©lectionnez examen', 'ÃŽÂµÃâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ­ÃŽÂ¾Ãâ€žÃŽÂµ ÃŽÂµÃŽÂ¾ÃŽÂµÃâ€žÃŽÂ¬ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š', 'PrÃƒÂ¼fung wÃƒÂ¤hlen', 'seleziona esame', 'Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã™â€¦Ã™â€ Ã˜ÂªÃ˜Â®Ã˜Â¨ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Å¡Ã Â¤Â¯Ã Â¤Â¨', 'velit ipsum', 'pilih ujian', 'Ã¥Ââ€”Ã©Â¨â€œÃ£â€šâ€™Ã©ÂÂ¸Ã¦Å Å¾', 'Ã¬â€¹Å“Ã­â€”ËœÃ¬Ââ€ž Ã¬â€žÂ Ã­Æ’Â'),
(120, 'select_class', 'select class', 'Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦â€” Ã Â¦Â¨Ã Â¦Â¿Ã Â¦Â°Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¾Ã Â¦Å¡Ã Â¦Â¨', 'seleccione clase', 'Ã˜Â­Ã˜Â¯Ã˜Â¯ Ã™ÂÃ˜Â¦Ã˜Â©', 'selecteren klasse', 'ÃÂ²Ã‘â€¹ÃÂ±Ã‘â‚¬ÃÂ°Ã‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã©â‚¬â€°Ã¦â€¹Â©Ã¤ÂºÂ§Ã¥â€œÂÃ§Â±Â»Ã¥Ë†Â«', 'sÃ„Â±nÃ„Â±f seÃƒÂ§in', 'selecionar classe', 'vÃƒÂ¡lassza osztÃƒÂ¡ly', 'sÃƒÂ©lectionnez classe', 'ÃŽâ€¢Ãâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ­ÃŽÂ¾Ãâ€žÃŽÂµ ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ·ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¯ÃŽÂ±', 'Klasse wÃƒÂ¤hlen', 'seleziona classe', 'Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã™â€ Ã˜ÂªÃ˜Â®Ã˜Â¨ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Å¡Ã Â¤Â¯Ã Â¤Â¨ Ã Â¤â€¢Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€š', 'genus eligere,', 'pilih kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£â€šâ€™Ã©ÂÂ¸Ã¦Å Å¾', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤Ã«Â¥Â¼ Ã¬â€žÂ Ã­Æ’Â');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(121, 'select_subject', 'select subject', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â·Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¨Ã Â¦Â¿Ã Â¦Â°Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¾Ã Â¦Å¡Ã Â¦Â¨ Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â¨', 'seleccione tema', 'Ã˜Â­Ã˜Â¯Ã˜Â¯ Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹', 'Selecteer onderwerp', 'ÃÂ²Ã‘â€¹ÃÂ±ÃÂµÃ‘â‚¬ÃÂ¸Ã‘â€šÃÂµ Ã‘â€šÃÂµÃÂ¼Ã‘Æ’', 'Ã©â‚¬â€°Ã¦â€¹Â©Ã¤Â¸Â»Ã©Â¢Ëœ', 'konu seÃƒÂ§in', 'selecionar assunto', 'VÃƒÂ¡lassza a TÃƒÂ¡rgy', 'sÃƒÂ©lectionner le sujet', 'ÃŽÂµÃâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ­ÃŽÂ¾Ãâ€žÃŽÂµ ÃŽÂ¸ÃŽÂ­ÃŽÂ¼ÃŽÂ±', 'Thema wÃƒÂ¤hlen', 'seleziona argomento', 'Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã™â€¦Ã™Ë†Ã˜Â¶Ã™Ë†Ã˜Â¹ Ã™â€¦Ã™â€ Ã˜ÂªÃ˜Â®Ã˜Â¨ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â·Ã Â¤Â¯ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Å¡Ã Â¤Â¯Ã Â¤Â¨', 'eligere subditos', 'pilih subjek', 'Ã¤Â»Â¶Ã¥ÂÂÃ£â€šâ€™Ã©ÂÂ¸Ã¦Å Å¾', 'Ã¬Â£Â¼Ã¬Â Å“Ã«Â¥Â¼ Ã¬â€žÂ Ã­Æ’Â'),
(122, 'select_an_exam', 'select an exam', 'Ã Â¦ÂÃ Â¦â€¢Ã Â¦Å¸Ã Â¦Â¿ Ã Â¦ÂªÃ Â¦Â°Ã Â§â‚¬Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾ Ã Â¦Â¨Ã Â¦Â¿Ã Â¦Â°Ã Â§ÂÃ Â¦Â¬Ã Â¦Â¾Ã Â¦Å¡Ã Â¦Â¨', 'seleccione un examen', 'Ã˜Â­Ã˜Â¯Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€ ', 'selecteer een examen', 'ÃÂ²Ã‘â€¹ÃÂ±Ã‘â‚¬ÃÂ°Ã‘â€šÃ‘Å’ Ã‘ÂÃÂºÃÂ·ÃÂ°ÃÂ¼ÃÂµÃÂ½', 'Ã©â‚¬â€°Ã¦â€¹Â©Ã¨â‚¬Æ’Ã¨Â¯â€¢', 'Bir sÃ„Â±nav seÃƒÂ§in', 'selecionar um exame', 'vÃƒÂ¡lasszon ki egy vizsga', 'sÃƒÂ©lectionner un examen', 'ÃŽÂµÃâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ­ÃŽÂ¾Ãâ€žÃŽÂµ ÃŽÂ¼ÃŽÂ¹ÃŽÂ± ÃŽÂµÃŽÂ¾ÃŽÂ­Ãâ€žÃŽÂ±ÃÆ’ÃŽÂ·', 'WÃƒÂ¤hlen Sie eine PrÃƒÂ¼fung', 'selezionare un esame', 'Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¸ÂªÃ Â¸Â­Ã Â¸Å¡', 'Ã˜Â§Ã™â€¦Ã˜ÂªÃ˜Â­Ã˜Â§Ã™â€  Ã™â€¦Ã™â€ Ã˜ÂªÃ˜Â®Ã˜Â¨ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂÃ Â¤â€¢ Ã Â¤ÂªÃ Â¤Â°Ã Â¥â‚¬Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Å¡Ã Â¤Â¯Ã Â¤Â¨', 'Eligebatur autem ipsum', 'pilih ujian', 'Ã¥Ââ€”Ã©Â¨â€œÃ£â€šâ€™Ã©ÂÂ¸Ã¦Å Å¾', 'Ã¬â€¹Å“Ã­â€”ËœÃ¬Ââ€ž Ã¬â€žÂ Ã­Æ’Â'),
(123, 'mark_obtained', 'mark obtained', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨Ã Â¦Â¿Ã Â¦Â¤ Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â¦Â¾Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¤', 'calificaciÃƒÂ³n obtenida', 'Ã˜Â¨Ã™â€¦Ã™â€ Ã˜Â§Ã˜Â³Ã˜Â¨Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â­Ã˜ÂµÃ™Ë†Ã™â€ž Ã˜Â¹Ã™â€žÃ™â€°', 'markeren verkregen', 'ÃÂ¾Ã‘â€šÃÂ¼ÃÂµÃ‘â€šÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¿ÃÂ¾ÃÂ»Ã‘Æ’Ã‘â€¡ÃÂµÃÂ½Ã‘â€¹', 'Ã¨Å½Â·Ã¥Â¾â€”Ã¦Â â€¡', 'iÃ…Å¸aretlemek elde', 'marca obtida', 'jelÃƒÂ¶lje kapott', 'marquer obtenu', 'ÃÆ’ÃŽÂ®ÃŽÂ¼ÃŽÂ± Ãâ‚¬ÃŽÂ¿Ãâ€¦ ÃŽÂ»ÃŽÂ±ÃŽÂ¼ÃŽÂ²ÃŽÂ¬ÃŽÂ½ÃŽÂµÃâ€žÃŽÂ±ÃŽÂ¹', 'Markieren Sie erhalten', 'contrassegnare ottenuto', 'Ã Â¸â€”Ã Â¸Â³Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¹â€žÃ Â¸â€Ã Â¹â€°Ã Â¸Â£Ã Â¸Â±Ã Â¸Å¡', 'Ã™â€ Ã˜Â´Ã˜Â§Ã™â€  Ã˜Â²Ã˜Â¯ Ã˜Â­Ã˜Â§Ã˜ÂµÃ™â€ž', 'Ã Â¤â€¦Ã Â¤â€šÃ Â¤â€¢ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¤', 'attende obtinuit', 'menandai diperoleh', 'Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯Ã£ÂÅ’Ã¥Â¾â€”', 'Ã«Â§Ë†Ã­ÂÂ¬ Ã­Å¡ÂÃ«â€œÂ'),
(124, 'attendance', 'attendance', 'Ã Â¦â€°Ã Â¦ÂªÃ Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¿Ã Â¦Â¤Ã Â¦Â¿', 'asistencia', 'Ã˜Â§Ã™â€žÃ˜Â­Ã˜Â¶Ã™Ë†Ã˜Â±', 'opkomst', 'ÃÂ¿ÃÂ¾Ã‘ÂÃÂµÃ‘â€°ÃÂ°ÃÂµÃÂ¼ÃÂ¾Ã‘ÂÃ‘â€šÃ‘Å’', 'Ã¦Å Â¤Ã§Ââ€ ', 'katÃ„Â±lÃ„Â±m', 'comparecimento', 'rÃƒÂ©szvÃƒÂ©tel', 'prÃƒÂ©sence', 'Ãâ‚¬ÃŽÂ±ÃÂÃŽÂ¿Ãâ€¦ÃÆ’ÃŽÂ¯ÃŽÂ±', 'Teilnahme', 'partecipazione', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€Ã Â¸Â¹Ã Â¹ÂÃ Â¸Â¥Ã Â¸Â£Ã Â¸Â±Ã Â¸ÂÃ Â¸Â©Ã Â¸Â²', 'Ã˜Â­Ã˜Â§Ã˜Â¶Ã˜Â±Ã›Å’', 'Ã Â¤â€°Ã Â¤ÂªÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¥Ã Â¤Â¿Ã Â¤Â¤Ã Â¤Â¿', 'auscultant', 'kehadiran', 'Ã¥â€¡ÂºÃ¥Â¸Â­', 'Ã¬Â¶Å“Ã¬â€žÂ'),
(125, 'manage_grade', 'manage grade', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestiÃƒÂ³n de calidad', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'beheren leerjaar', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â®Â¡Ã§Ââ€ Ã§ÂºÂ§', 'notu yÃƒÂ¶netmek', 'gerenciar grau', 'kezelni fokozat', 'gÃƒÂ©rer de qualitÃƒÂ©', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ‚¬ÃŽÂ¿ÃŽÂ¹ÃÅ’Ãâ€žÃŽÂ·Ãâ€žÃŽÂ±Ãâ€š', 'Klasse verwalten', 'gestione grade', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË† ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'moderari gradu', 'mengelola kelas', 'Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã«â€œÂ±ÃªÂ¸â€° ÃªÂ´â‚¬Ã«Â¦Â¬'),
(126, 'grade_list', 'grade list', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'Lista de grado', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'cijferlijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘ÂÃÂ°', 'Ã§Â­â€°Ã§ÂºÂ§Ã¥Ë†â€”Ã¨Â¡Â¨', 'sÃ„Â±nÃ„Â±f listesi', 'lista grau', 'fokozat lista', 'liste de qualitÃƒÂ©', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃŽÂ¿ÃÂ', 'Notenliste', 'elenco grade', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË† Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡ Ã Â¤â€¢Ã Â¥â‚¬ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'gradus album', 'daftar kelas', 'Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°Ã¤Â¸â‚¬Ã¨Â¦Â§', 'Ã«â€œÂ±ÃªÂ¸â€° Ã«ÂªÂ©Ã«Â¡Â'),
(127, 'add_grade', 'add grade', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€” Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â¨', 'aÃƒÂ±adir grado', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'voeg leerjaar', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã¦Â·Â»Ã¥Å Â Ã§ÂºÂ§', 'not eklemek', 'adicionar grau', 'hozzÃƒÂ¡ fokozat', 'ajouter note', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ· ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃŽÂ¿ÃÂ', 'Klasse hinzufÃƒÂ¼gen', 'aggiungere grade', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË† Ã™â€¦Ã›Å’ÃšÂº Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde gradum,', 'menambahkan kelas', 'Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã«â€œÂ±ÃªÂ¸â€°Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(128, 'grade_name', 'grade name', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre de grado', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'rangnaam', 'ÃÂÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ Ã‘ÂÃÂ¾Ã‘â‚¬Ã‘â€šÃÂ°', 'Ã§Â­â€°Ã§ÂºÂ§Ã¥ÂÂÃ§Â§Â°', 'sÃ„Â±nÃ„Â±f adÃ„Â±', 'nome da classe', 'fokozat nÃƒÂ©v', 'nom de la catÃƒÂ©gorie', 'ÃŽÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃŽÂ¿ÃÂ', 'Klasse Name', 'nome del grado', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË† Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'nomen, gradus,', 'nama kelas', 'Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°Ã¥ÂÂ', 'Ã«â€œÂ±ÃªÂ¸â€° Ã¬ÂÂ´Ã«Â¦â€ž'),
(129, 'grade_point', 'grade point', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡ Ã Â¦ÂªÃ Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸', 'de calificaciones', 'Ã˜ÂªÃ˜Â±Ã˜Â§Ã™Æ’Ã™â€¦Ã™Å ', 'rangpunt', 'ÃÂ±ÃÂ°ÃÂ»ÃÂ»', 'Ã¦Ë†ÂÃ§Â»Â©', 'not', 'ponto de classe', 'fokozatÃƒÂº pont', 'cumulative', 'ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃÅ½ÃŽÂ½', 'Noten', 'punto di grado', 'Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË† Ã™Â¾Ã™Ë†Ã˜Â§Ã˜Â¦Ã™â€ Ã™Â¹', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡ Ã Â¤Â¬Ã Â¤Â¿Ã Â¤â€šÃ Â¤Â¦Ã Â¥Â', 'gradus punctum', 'indeks prestasi', 'Ã¦Ë†ÂÃ§Â¸Â¾Ã¨Â©â€¢Ã¤Â¾Â¡Ã§â€šÂ¹', 'Ã­â€¢â„¢Ã¬Â Â'),
(130, 'mark_from', 'mark from', 'Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨ Ã Â¦Â¥Ã Â§â€¡Ã Â¦â€¢Ã Â§â€¡', 'marca de', 'Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â© Ã™â€¦Ã™â€ ', 'mark uit', 'ÃÂ·ÃÂ½ÃÂ°ÃÂº ÃÂ¾Ã‘â€š', 'Ã¤Â»Å½Ã¥â€¢â€ Ã¦Â â€¡', 'mark dan', 'marca de', 'jelÃƒÂ¶lÃƒÂ©st', 'marque de', 'ÃÆ’ÃŽÂ®ÃŽÂ¼ÃŽÂ± ÃŽÂ±Ãâ‚¬ÃÅ’', 'Marke aus', 'segno da', 'Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¸Ë†Ã Â¸Â²Ã Â¸Â', 'Ã™â€ Ã˜Â´Ã˜Â§Ã™â€  Ã˜Â³Ã›â€™', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â°Ã Â¥ÂÃ Â¤â€¢ Ã Â¤Â¸Ã Â¥â€¡', 'marcam', 'mark dari', 'Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯Ã£Ââ€¹Ã£â€šâ€°', 'Ã­â€˜Å“Ã¬â€”ÂÃ¬â€žÅ“'),
(131, 'mark_upto', 'mark upto', 'Ã Â¦ÂªÃ Â¦Â°Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¨Ã Â§ÂÃ Â¦Â¤ Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨Ã Â¦Â¿Ã Â¦Â¤', 'marcar hasta', 'Ã˜Â¨Ã™â€¦Ã™â€ Ã˜Â§Ã˜Â³Ã˜Â¨Ã˜Â© Ã˜ÂªÃ˜ÂµÃ™â€ž', 'mark tot', 'ÃÂ¾Ã‘â€šÃÂ¼ÃÂµÃ‘â€šÃÂ¸Ã‘â€šÃ‘Å’ Ãâ€ÃÅ¾', 'Ã©Â«ËœÃ¨Â¾Â¾Ã¦Â â€¡Ã¨Â®Â°', 'kadar iÃ…Å¸aretlemek', 'marcar atÃƒÂ©', 'jelÃƒÂ¶lje upto', 'marquer jusqu''ÃƒÂ ', 'ÃÆ’ÃŽÂ®ÃŽÂ¼ÃŽÂ± ÃŽÂ¼ÃŽÂ­Ãâ€¡ÃÂÃŽÂ¹', 'Markieren Sie bis zu', 'contrassegnare fino a', 'Ã Â¸â€”Ã Â¸Â³Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â´Ã Â¸â„¢', 'Ã˜ÂªÃšÂ© ÃšÂ©Ã›â€™ Ã™â€¦Ã™Ë†Ã™â€šÃ˜Â¹', 'Ã Â¤Â¤Ã Â¤â€¢ Ã Â¤Å¡Ã Â¤Â¿Ã Â¤Â¹Ã Â¥ÂÃ Â¤Â¨Ã Â¤Â¿Ã Â¤Â¤', 'Genitus est notare', 'menandai upto', 'Ã§â€šÂ¹Ã£ÂÂ§Ã¦Å“â‚¬Ã¥Â¤Â§Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯', 'Ã­â€˜Å“ÃªÂ¹Å’Ã¬Â§â‚¬'),
(132, 'edit_grade', 'edit grade', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡', 'edit grado', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ˜ÂµÃ™Â', 'Cijfer bewerken', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘ÂÃÂ°', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã§Â­â€°Ã§ÂºÂ§', 'edit notu', 'ediÃƒÂ§ÃƒÂ£o grau', 'szerkesztÃƒÂ©s fokozat', 'edit qualitÃƒÂ©', 'edit ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃŽÂ¿ÃÂ', 'edit Grad', 'modifica grade', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ¯Ã˜Â±Ã›Å’ÃšË†', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡', 'edit gradu', 'mengedit kelas', 'Ã§Â·Â¨Ã©â€ºâ€ Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã«â€œÂ±ÃªÂ¸â€°'),
(133, 'manage_class_routine', 'manage class routine', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸Ã Â§â€¡Ã Â¦Â° Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar rutina de la clase', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â¨Ã™â€šÃ˜Â© Ã˜Â§Ã™â€žÃ˜Â±Ã™Ë†Ã˜ÂªÃ™Å Ã™â€ Ã™Å Ã˜Â©', 'beheren klasroutine', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘â‚¬Ã‘Æ’Ã‘â€šÃÂ¸ÃÂ½Ã‘Æ’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘ÂÃÂ°', 'Ã§Â®Â¡Ã§Ââ€ Ã§Â±Â»Ã¥Â¸Â¸Ã¨Â§â€ž', 'sÃ„Â±nÃ„Â±f rutin yÃƒÂ¶netmek', 'gerenciar rotina classe', 'kezelni class rutin', 'gÃƒÂ©rer la routine de classe', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¹ÃÂÃŽÂ¯ÃŽÂ¶ÃŽÂ¿ÃŽÂ½Ãâ€žÃŽÂ±ÃŽÂ¹ Ãâ€žÃŽÂ¬ÃŽÂ¾ÃŽÂ· ÃÂÃŽÂ¿Ãâ€¦Ãâ€žÃŽÂ¯ÃŽÂ½ÃŽÂ±', 'verwalten Klasse Routine', 'gestione classe di routine', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢Ã Â¸â€¢Ã Â¸Â²Ã Â¸Â¡Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€¢Ã Â¸Â´', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¹Ã™â€¦Ã™Ë†Ã™â€ž ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨Ã Â¤Å¡Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'uno in genere tractare', 'mengelola rutinitas kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’ÂÃ£Æ’Â³Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã¬Ë†ËœÃ¬Â¤â‚¬Ã¬ÂËœ Ã¬ÂÂ¼Ã¬Æ’ÂÃ¬Â ÂÃ¬ÂÂ¸ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(134, 'class_routine_list', 'class routine list', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸Ã Â§â€¡Ã Â¦Â° Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'clase de lista de rutina', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â±Ã™Ë†Ã˜ÂªÃ™Å Ã™â€ Ã™Å Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â¨Ã™â€šÃ˜Â©', 'klasroutine lijst', 'ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â Ã‘â‚¬Ã‘Æ’Ã‘â€šÃÂ¸ÃÂ½ÃÂ° Ã‘ÂÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº', 'Ã§ÂÂ­Ã§ÂºÂ§Ã¥Â¸Â¸Ã¨Â§â€žÃ¥Ë†â€”Ã¨Â¡Â¨', 'sÃ„Â±nÃ„Â±f rutin listesi', 'classe de lista de rotina', 'osztÃƒÂ¡ly rutin lista', 'classe liste routine', 'ÃŽÂºÃŽÂ»ÃŽÂ¬ÃÆ’ÃŽÂ· list ÃÂÃŽÂ¿Ãâ€¦Ãâ€žÃŽÂ¯ÃŽÂ½ÃŽÂ±Ãâ€š', 'Klasse Routine Liste', 'classe lista di routine', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸Ë†Ã Â¸Â³Ã Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¹Ã™â€¦Ã™Ë†Ã™â€ž ÃšÂ©Ã›â€™ Ã™â€¦Ã˜Â·Ã˜Â§Ã˜Â¨Ã™â€š Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨Ã Â¤Å¡Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'uno genere album', 'Daftar rutin kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’ÂÃ£Æ’Â³Ã¤Â¸â‚¬Ã¨Â¦Â§', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«Â£Â¨Ã­â€¹Â´ Ã«ÂªÂ©Ã«Â¡Â'),
(135, 'add_class_routine', 'add class routine', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸Ã Â§â€¡Ã Â¦Â° Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤', 'aÃƒÂ±adir rutina de la clase', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã™ÂÃ˜Â¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â±Ã™Ë†Ã˜ÂªÃ™Å Ã™â€ Ã™Å Ã˜Â©', 'voeg klasroutine', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¿ÃÂ¾ÃÂ´ÃÂ¿Ã‘â‚¬ÃÂ¾ÃÂ³Ã‘â‚¬ÃÂ°ÃÂ¼ÃÂ¼Ã‘Æ’ ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘ÂÃÂ°', 'Ã¦Â·Â»Ã¥Å Â Ã§Â±Â»Ã¥Â¸Â¸Ã¨Â§â€ž', 'sÃ„Â±nÃ„Â±f rutin eklemek', 'adicionar rotina classe', 'hozzÃƒÂ¡ class rutin', 'ajouter routine de classe', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’ÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¬ÃŽÂ¾ÃŽÂ· ÃÂÃŽÂ¿Ãâ€¦Ãâ€žÃŽÂ¯ÃŽÂ½ÃŽÂ±', 'Klasse hinzufÃƒÂ¼gen Routine', 'aggiungere classe di routine', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Â£Ã Â¸Â°Ã Â¸â€Ã Â¸Â±Ã Â¸Å¡Ã Â¸â€¢Ã Â¸Â²Ã Â¸Â¡Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€¢Ã Â¸Â´', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¹Ã™â€¦Ã™Ë†Ã™â€ž Ã™â€¦Ã›Å’ÃšÂº Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨Ã Â¤Å¡Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde genus moris', 'menambahkan rutin kelas', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã‚Â·Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’ÂÃ£Æ’Â³Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«Â£Â¨Ã­â€¹Â´Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(136, 'day', 'day', 'Ã Â¦Â¦Ã Â¦Â¿Ã Â¦Â¨', 'dÃƒÂ­a', 'Ã™Å Ã™Ë†Ã™â€¦', 'dag', 'ÃÂ´ÃÂµÃÂ½Ã‘Å’', 'Ã¦â€”Â¥', 'gÃƒÂ¼n', 'dia', 'nap', 'jour', 'ÃŽÂ·ÃŽÂ¼ÃŽÂ­ÃÂÃŽÂ±', 'Tag', 'giorno', 'Ã Â¸Â§Ã Â¸Â±Ã Â¸â„¢', 'Ã˜Â¯Ã™â€ ', 'Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨', 'die,', 'hari', 'Ã¦â€”Â¥', 'Ã¬ÂÂ¼'),
(137, 'starting_time', 'starting time', 'Ã Â¦Â¸Ã Â¦Â®Ã Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¶Ã Â§ÂÃ Â¦Â°Ã Â§Â', 'tiempo de inicio', 'Ã˜Â¨Ã˜Â¯Ã˜Â¡Ã˜Â§ Ã˜Â§Ã™â€žÃ™Ë†Ã™â€šÃ˜Âª', 'starttijd', 'ÃÂ²Ã‘â‚¬ÃÂµÃÂ¼Ã‘Â ÃÂ½ÃÂ°Ã‘â€¡ÃÂ°ÃÂ»ÃÂ°', 'Ã¥Â¼â‚¬Ã¥Â§â€¹Ã¦â€”Â¶Ã©â€”Â´', 'baÃ…Å¸langÃ„Â±ÃƒÂ§ Ã¢â‚¬â€¹Ã¢â‚¬â€¹zamanÃ„Â±', 'tempo comeÃƒÂ§ando', 'indÃƒÂ­tÃƒÂ¡si idÃ…â€˜', 'temps de dÃƒÂ©marrage', 'ÃÅ½ÃÂÃŽÂ± ÃŽÂ­ÃŽÂ½ÃŽÂ±ÃÂÃŽÂ¾ÃŽÂ·Ãâ€š', 'Startzeit', 'tempo di avviamento', 'Ã Â¹â‚¬Ã Â¸Â§Ã Â¸Â¥Ã Â¸Â²Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸â€¢Ã Â¹â€°Ã Â¸â„¢', 'Ã™Ë†Ã™â€šÃ˜Âª Ã˜Â´Ã˜Â±Ã™Ë†Ã˜Â¹ Ã›ÂÃ™Ë†Ã™â€ Ã›â€™', 'Ã Â¤Â¸Ã Â¤Â®Ã Â¤Â¯ Ã Â¤â€¢Ã Â¥â‚¬ Ã Â¤Â¶Ã Â¥ÂÃ Â¤Â°Ã Â¥ÂÃ Â¤â€ Ã Â¤Â¤ Ã Â¤â€¢Ã Â¥â€¡', 'tum satus', 'waktu mulai', 'Ã¨ÂµÂ·Ã¥â€¹â€¢Ã¦â„¢â€šÃ©â€“â€œ', 'Ã¬â€¹Å“Ã¬Å¾â€˜ Ã¬â€¹Å“ÃªÂ°â€ž'),
(138, 'ending_time', 'ending time', 'Ã Â¦Â¸Ã Â¦Â®Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦Â¶Ã Â§â€¡Ã Â¦Â·', 'hora de finalizaciÃƒÂ³n', 'Ã˜ÂªÃ™â€ Ã˜ÂªÃ™â€¡Ã™Å  Ã˜Â§Ã™â€žÃ˜Â³Ã˜Â§Ã˜Â¹Ã˜Â©', 'eindtijd', 'ÃÂ²Ã‘â‚¬ÃÂµÃÂ¼Ã‘Â ÃÂ¾ÃÂºÃÂ¾ÃÂ½Ã‘â€¡ÃÂ°ÃÂ½ÃÂ¸Ã‘Â', 'Ã§Â»â€œÃ¦ÂÅ¸Ã¦â€”Â¶Ã©â€”Â´', 'bitiÃ…Å¸ zamanÃ„Â±nÃ„Â±', 'tempo final', 'befejezÃƒÂ©si idÃ…â€˜pont', 'heure de fin', 'ÃÅ½ÃÂÃŽÂ± ÃŽÂ»ÃŽÂ®ÃŽÂ¾ÃŽÂ·Ãâ€š', 'Endzeit', 'ora finale', 'Ã Â¸ÂªÃ Â¸Â´Ã Â¹â€°Ã Â¸â„¢Ã Â¸ÂªÃ Â¸Â¸Ã Â¸â€Ã Â¹â‚¬Ã Â¸Â§Ã Â¸Â¥Ã Â¸Â²', 'Ã™Ë†Ã™â€šÃ˜Âª Ã˜Â®Ã˜ÂªÃ™â€¦', 'Ã Â¤Â¸Ã Â¤Â®Ã Â¤Â¯ Ã Â¤Â¸Ã Â¤Â®Ã Â¤Â¾Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¤ Ã Â¤Â¹Ã Â¥â€¹Ã Â¤Â¨Ã Â¥â€¡ Ã Â¤â€¢Ã Â¥â€¡', 'et finis temporis,', 'akhir waktu', 'Ã§Âµâ€šÃ¤Âºâ€ Ã¦â„¢â€šÃ¥Ë†Â»', 'Ã¬Â¢â€¦Ã«Â£Å’ Ã¬â€¹Å“ÃªÂ°â€ž'),
(139, 'edit_class_routine', 'edit class routine', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¸ Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸Ã Â¦Â¿Ã Â¦Â¨', 'rutina de la clase de ediciÃƒÂ³n', 'Ã˜Â§Ã™â€žÃ˜Â·Ã˜Â¨Ã™â€šÃ˜Â© Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ˜Â±Ã™Ë†Ã˜ÂªÃ™Å Ã™â€ Ã™Å Ã˜Â©', 'bewerk klasroutine', 'ÃÅ¸Ã‘â‚¬ÃÂ¾Ã‘â€ ÃÂµÃÂ´Ã‘Æ’Ã‘â‚¬ÃÂ° Ã‘â‚¬ÃÂµÃÂ´ÃÂ°ÃÂºÃ‘â€šÃÂ¸Ã‘â‚¬ÃÂ¾ÃÂ²ÃÂ°ÃÂ½ÃÂ¸Ã‘Â ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã§Â±Â»Ã¥Â¸Â¸Ã¨Â§â€ž', 'sÃ„Â±nÃ„Â±f dÃƒÂ¼zenle rutin', 'rotina de ediÃƒÂ§ÃƒÂ£o de classe', 'szerkesztÃƒÂ©s osztÃƒÂ¡ly rutin', 'routine modifier de classe', 'edit Ãâ€žÃŽÂ¬ÃŽÂ¾ÃŽÂ· ÃÂÃŽÂ¿Ãâ€¦Ãâ€žÃŽÂ¯ÃŽÂ½ÃŽÂ±', 'edit Klasse Routine', 'modifica della classe di routine', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸Å Ã Â¸Â±Ã Â¹â€°Ã Â¸â„¢Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢Ã Â¸â€¢Ã Â¸Â²Ã Â¸Â¡Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€¢Ã Â¸Â´', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â³ Ã™â€¦Ã˜Â¹Ã™â€¦Ã™Ë†Ã™â€ž', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¨Ã Â¤Å¡Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾', 'edit uno genere', 'rutin mengedit kelas', 'Ã§Â·Â¨Ã©â€ºâ€ Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¹Ã£ÂÂ®Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’ÂÃ£Æ’Â³', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã­ÂÂ´Ã«Å¾ËœÃ¬Å Â¤ Ã«Â£Â¨Ã­â€¹Â´'),
(140, 'manage_invoice/payment', 'manage invoice/payment', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ / Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar factura / pago', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â© / Ã˜Â¯Ã™ÂÃ˜Â¹', 'beheren factuur / betaling', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ° / ÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€šÃÂ°', 'Ã§Â®Â¡Ã§Ââ€ Ã¥Ââ€˜Ã§Â¥Â¨/Ã¤Â»ËœÃ¦Â¬Â¾', 'fatura / ÃƒÂ¶deme yÃƒÂ¶netmek', 'gerenciar fatura / pagamento', 'kezelni szÃƒÂ¡mla / fizetÃƒÂ©si', 'gÃƒÂ©rer facture / paiement', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ¯ÃŽÂ¿Ãâ€¦ / Ãâ‚¬ÃŽÂ»ÃŽÂ·ÃÂÃâ€°ÃŽÂ¼ÃŽÂ®Ãâ€š', 'Verwaltung Rechnung / Zahlung', 'gestione fattura / pagamento', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€° / Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â³Ã Â¸Â£Ã Â¸Â°Ã Â¹â‚¬Ã Â¸â€¡Ã Â¸Â´Ã Â¸â„¢', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ / Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Â¦Ã›Å’ÃšÂ¯Ã›Å’ ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ / Ã Â¤Â­Ã Â¥ÂÃ Â¤â€”Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo cautionem / solutionem', 'mengelola tagihan / pembayaran', 'Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸/Ã¦â€Â¯Ã¦â€°â€¢Ã§Â®Â¡Ã§Ââ€ ', 'Ã¬ÂÂ¸Ã«Â³Â´Ã¬ÂÂ´Ã¬Å Â¤ / ÃªÂ²Â°Ã¬Â Å“ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(141, 'invoice/payment_list', 'invoice/payment list', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ / Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista de facturas / pagos', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â© / Ã˜Â¯Ã™ÂÃ˜Â¹', 'factuur / betaling lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ° / ÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€šÃÂ°', 'Ã¥Ââ€˜Ã§Â¥Â¨/Ã¤Â»ËœÃ¦Â¬Â¾Ã¦Â¸â€¦Ã¥Ââ€¢', 'fatura / ÃƒÂ¶deme listesi', 'lista de fatura / pagamento', 'szÃƒÂ¡mla / fizetÃƒÂ©si lista', 'liste facture / paiement', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ¯ÃŽÂ¿Ãâ€¦ / Ãâ‚¬ÃŽÂ»ÃŽÂ·ÃÂÃâ€°ÃŽÂ¼ÃŽÂ®Ãâ€š', 'Rechnung / Zahlungsliste', 'elenco fattura / pagamento', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€° / Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â³Ã Â¸Â£Ã Â¸Â°Ã Â¹â‚¬Ã Â¸â€¡Ã Â¸Â´Ã Â¸â„¢', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ / Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Â¦Ã›Å’ÃšÂ¯Ã›Å’ ÃšÂ©Ã›Å’ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ / Ã Â¤Â­Ã Â¥ÂÃ Â¤â€”Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'cautionem / list pretium', 'daftar tagihan / pembayaran', 'Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸/Ã¦â€Â¯Ã¦â€°â€¢Ã¤Â¸â‚¬Ã¨Â¦Â§', 'Ã¬ÂÂ¸Ã«Â³Â´Ã¬ÂÂ´Ã¬Å Â¤ / ÃªÂ²Â°Ã¬Â Å“Ã«Â¦Â¬Ã¬Å Â¤Ã­Å Â¸'),
(142, 'add_invoice/payment', 'add invoice/payment', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ / Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir factura / pago', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â© / Ã˜Â¯Ã™ÂÃ˜Â¹', 'voeg factuur / betaling', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ° / ÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€šÃÂ°', 'Ã¦Â·Â»Ã¥Å Â Ã¥Ââ€˜Ã§Â¥Â¨/Ã¤Â»ËœÃ¦Â¬Â¾', 'fatura / ÃƒÂ¶deme eklemek', 'adicionar factura / pagamento', 'hozzÃƒÂ¡ szÃƒÂ¡mla / fizetÃƒÂ©si', 'ajouter facture / paiement', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ· Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ¯ÃŽÂ¿Ãâ€¦ / Ãâ‚¬ÃŽÂ»ÃŽÂ·ÃÂÃâ€°ÃŽÂ¼ÃŽÂ®Ãâ€š', 'hinzufÃƒÂ¼gen Rechnung / Zahlung', 'aggiungere fatturazione / pagamento', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€° / Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Å Ã Â¸Â³Ã Â¸Â£Ã Â¸Â°Ã Â¹â‚¬Ã Â¸â€¡Ã Â¸Â´Ã Â¸â„¢', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ / Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Â¦Ã›Å’ÃšÂ¯Ã›Å’ Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ / Ã Â¤Â­Ã Â¥ÂÃ Â¤â€”Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼Ã Â¥â€¡Ã Â¤â€š', 'add cautionem / solutionem', 'menambahkan tagihan / pembayaran', 'Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸/Ã¦â€Â¯Ã¦â€°â€¢Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬â€ Â¡Ã¬Å¾Â¥ / Ã¬Â§â‚¬Ã«Â¶Ë†Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(143, 'title', 'title', 'Ã Â¦â€“Ã Â§â€¡Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â¬', 'tÃƒÂ­tulo', 'Ã™â€žÃ™â€šÃ˜Â¨', 'titel', 'ÃÂ½ÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ', 'Ã¦Â â€¡Ã©Â¢Ëœ', 'baÃ…Å¸lÃ„Â±k', 'tÃƒÂ­tulo', 'cÃƒÂ­m', 'titre', 'Ãâ€žÃŽÂ¯Ãâ€žÃŽÂ»ÃŽÂ¿Ãâ€š', 'Titel', 'titolo', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¹â‚¬Ã Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡', 'Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€ ', 'Ã Â¤Â¶Ã Â¥â‚¬Ã Â¤Â°Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢', 'title', 'judul', 'Ã£â€šÂ¿Ã£â€šÂ¤Ã£Æ’Ë†Ã£Æ’Â«', 'Ã­â€˜Å“Ã¬Â Å“'),
(144, 'description', 'description', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â°Ã Â¦Â£', 'descripciÃƒÂ³n', 'Ã™Ë†Ã˜ÂµÃ™Â', 'beschrijving', 'ÃÂ¾ÃÂ¿ÃÂ¸Ã‘ÂÃÂ°ÃÂ½ÃÂ¸ÃÂµ', 'Ã¦ÂÂÃ¨Â¿Â°', 'tanÃ„Â±m', 'descriÃƒÂ§ÃƒÂ£o', 'leÃƒÂ­rÃƒÂ¡s', 'description', 'Ãâ‚¬ÃŽÂµÃÂÃŽÂ¹ÃŽÂ³ÃÂÃŽÂ±Ãâ€ ÃŽÂ®', 'Beschreibung', 'descrizione', 'Ã Â¸Â¥Ã Â¸Â±Ã Â¸ÂÃ Â¸Â©Ã Â¸â€œÃ Â¸Â°', 'Ã˜ÂªÃ™ÂÃ˜ÂµÃ›Å’Ã™â€ž', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤ÂµÃ Â¤Â°Ã Â¤Â£', 'description', 'deskripsi', 'Ã¨ÂªÂ¬Ã¦ËœÅ½', 'ÃªÂ¸Â°Ã¬Ë†Â '),
(145, 'amount', 'amount', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â®Ã Â¦Â¾Ã Â¦Â£', 'cantidad', 'Ã™â€¦Ã˜Â¨Ã™â€žÃ˜Âº', 'bedrag', 'ÃÂºÃÂ¾ÃÂ»ÃÂ¸Ã‘â€¡ÃÂµÃ‘ÂÃ‘â€šÃÂ²ÃÂ¾', 'Ã©â€¡Â', 'miktar', 'quantidade', 'mennyisÃƒÂ©g', 'montant', 'Ãâ‚¬ÃŽÂ¿ÃÆ’ÃÅ’', 'Menge', 'importo', 'Ã Â¸Ë†Ã Â¸Â³Ã Â¸â„¢Ã Â¸Â§Ã Â¸â„¢', 'Ã˜Â±Ã™â€šÃ™â€¦', 'Ã Â¤Â°Ã Â¤Â¾Ã Â¤Â¶Ã Â¤Â¿', 'tantum', 'jumlah', 'Ã©Â¡Â', 'Ã¬â€“â€˜'),
(146, 'status', 'status', 'Ã Â¦â€¦Ã Â¦Â¬Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¾', 'estado', 'Ã˜Â­Ã˜Â§Ã™â€žÃ˜Â©', 'toestand', 'Ã‘ÂÃ‘â€šÃÂ°Ã‘â€šÃ‘Æ’Ã‘Â', 'Ã§Å Â¶Ã¦â‚¬Â', 'durum', 'estado', 'ÃƒÂ¡llapot', 'statut', 'ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ¬ÃÆ’Ãâ€žÃŽÂ±ÃÆ’ÃŽÂ·', 'Status', 'stato', 'Ã Â¸ÂªÃ Â¸â€“Ã Â¸Â²Ã Â¸â„¢Ã Â¸Â°', 'Ã˜Â¯Ã˜Â±Ã˜Â¬Ã›Â', 'Ã Â¤Â¹Ã Â¥Ë†Ã Â¤Â¸Ã Â¤Â¿Ã Â¤Â¯Ã Â¤Â¤', 'status', 'status', 'Ã£â€šÂ¹Ã£Æ’â€ Ã£Æ’Â¼Ã£â€šÂ¿Ã£â€šÂ¹', 'Ã¬Â§â‚¬Ã¬Å“â€ž'),
(147, 'view_invoice', 'view invoice', 'Ã Â¦Â¦Ã Â§â€¡Ã Â¦â€“Ã Â§ÂÃ Â¦Â¨ Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨', 'vista de la factura', 'Ã˜Â¹Ã˜Â±Ã˜Â¶ Ã˜Â§Ã™â€žÃ™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â©', 'view factuur', 'ÃÂ²ÃÂ¸ÃÂ´ Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ°-Ã‘â€žÃÂ°ÃÂºÃ‘â€šÃ‘Æ’Ã‘â‚¬Ã‘â€¹', 'Ã¦Å¸Â¥Ã§Å“â€¹Ã¥Ââ€˜Ã§Â¥Â¨', 'view fatura', 'vista da fatura', 'view szÃƒÂ¡mla', 'vue facture', 'Ãâ‚¬ÃÂÃŽÂ¿ÃŽÂ²ÃŽÂ¿ÃŽÂ»ÃŽÂ® Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿', 'Ansicht Rechnung', 'vista fattura', 'Ã Â¸â€Ã Â¸Â¹Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€°', 'Ã˜Â¯Ã›Å’ÃšÂ©ÃšÂ¾Ã›Å’ÃšÂº Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³', 'Ã Â¤Â¦Ã Â¥â€¡Ã Â¤â€“Ã Â¥â€¡Ã Â¤â€š Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨', 'propter cautionem', 'lihat faktur', 'Ã£Æ’â€œÃ£Æ’Â¥Ã£Æ’Â¼Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸', 'Ã«Â³Â´ÃªÂ¸Â° Ã¬â€ Â¡Ã¬Å¾Â¥'),
(148, 'paid', 'paid', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¶Ã Â§â€¹Ã Â¦Â§', 'pagado', 'Ã™â€¦Ã˜Â¯Ã™ÂÃ™Ë†Ã˜Â¹', 'betaald', 'ÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€¡ÃÂµÃÂ½ÃÂ½Ã‘â€¹ÃÂ¹', 'Ã¦â€Â¯Ã¤Â»Ëœ', 'ÃƒÂ¼cretli', 'pago', 'fizetett', 'payÃƒÂ©', 'ÃŽÂºÃŽÂ±Ãâ€žÃŽÂ±ÃŽÂ²ÃŽÂ»ÃŽÂ·ÃŽÂ¸ÃŽÂµÃŽÂ¯', 'bezahlt', 'pagato', 'Ã Â¸â€¢Ã Â¹â€°Ã Â¸Â­Ã Â¸â€¡Ã Â¸Ë†Ã Â¹Ë†Ã Â¸Â²Ã Â¸Â¢', 'Ã˜Â§Ã˜Â¯Ã˜Â§ ÃšÂ©Ã›Å’Ã˜Â§', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¦Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â¤', 'solutis', 'dibayar', 'Ã¦â€Â¯Ã¦â€°â€¢Ã£â€šÂÃ£â€šÅ’Ã£ÂÅ¸', 'Ã¬Â§â‚¬ÃªÂ¸â€°'),
(149, 'unpaid', 'unpaid', 'Ã Â¦â€¦Ã Â¦Â¬Ã Â§Ë†Ã Â¦Â¤Ã Â¦Â¨Ã Â¦Â¿Ã Â¦â€¢', 'no pagado', 'Ã˜ÂºÃ™Å Ã˜Â± Ã™â€¦Ã˜Â¯Ã™ÂÃ™Ë†Ã˜Â¹', 'onbetaald', 'ÃÂ½ÃÂµÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€¡ÃÂµÃÂ½ÃÂ½Ã‘â€¹ÃÂ¹', 'Ã¦Å“ÂªÃ¤Â»Ëœ', 'ÃƒÂ¶denmemiÃ…Å¸', 'nÃƒÂ£o remunerado', 'kifizetetlen', 'non rÃƒÂ©munÃƒÂ©rÃƒÂ©', 'ÃŽÂ±Ãâ‚¬ÃŽÂ»ÃŽÂ®ÃÂÃâ€°Ãâ€žÃŽÂ·', 'unbezahlt', 'non pagato', 'Ã Â¸Â¢Ã Â¸Â±Ã Â¸â€¡Ã Â¹â€žÃ Â¸Â¡Ã Â¹Ë†Ã Â¹â€žÃ Â¸â€Ã Â¹â€°Ã Â¸Å Ã Â¸Â³Ã Â¸Â£Ã Â¸Â°', 'Ã˜Â¨Ã™â€žÃ˜Â§ Ã™â€¦Ã˜Â¹Ã˜Â§Ã™Ë†Ã˜Â¶Ã›Â', 'Ã Â¤â€¦Ã Â¤ÂµÃ Â¥Ë†Ã Â¤Â¤Ã Â¤Â¨Ã Â¤Â¿Ã Â¤â€¢', 'non est constitutus,', 'dibayar', 'Ã¦Å“ÂªÃ¦â€°â€¢Ã£Ââ€ž', 'Ã¬Â§â‚¬Ã«Â¶Ë†Ã­â€¢ËœÃ¬Â§â‚¬ Ã¬â€¢Å Ã¬Ââ‚¬'),
(150, 'add_invoice', 'add invoice', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir factura', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â©', 'voeg factuur', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€š', 'Ã¦Â·Â»Ã¥Å Â Ã¥Ââ€˜Ã§Â¥Â¨', 'faturayÃ„Â± eklemek', 'adicionar fatura', 'hozzÃƒÂ¡ szÃƒÂ¡mla', 'ajouter facture', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿', 'Rechnung hinzufÃƒÂ¼gen', 'aggiungere fattura', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€°', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ Ã™â€¦Ã›Å’ÃšÂº Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'add cautionem', 'menambahkan faktur', 'Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬â€ Â¡Ã¬Å¾Â¥Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(151, 'payment_to', 'payment to', 'Ã Â¦ÂªÃ Â§â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸', 'pago a', 'Ã˜Â¯Ã™ÂÃ˜Â¹ Ã™â€ž', 'betaling aan', 'ÃÂ¾ÃÂ¿ÃÂ»ÃÂ°Ã‘â€šÃÂ°', 'Ã¦â€Â¯Ã¤Â»Ëœ', 'iÃƒÂ§in ÃƒÂ¶deme', 'pagamento', 'fizetÃƒÂ©s', 'paiement', 'Ãâ‚¬ÃŽÂ»ÃŽÂ·ÃÂÃâ€°ÃŽÂ¼ÃŽÂ®', 'Zahlung an', 'pagamento', 'Ã Â¸Å Ã Â¸Â³Ã Â¸Â£Ã Â¸Â°Ã Â¹â‚¬Ã Â¸â€¡Ã Â¸Â´Ã Â¸â„¢Ã Â¹Æ’Ã Â¸Â«Ã Â¹â€°Ã Â¸ÂÃ Â¸Â±Ã Â¸Å¡', 'Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Â¦Ã›Å’ÃšÂ¯Ã›Å’', 'Ã Â¤â€¢Ã Â¥â€¹ Ã Â¤Â­Ã Â¥ÂÃ Â¤â€”Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¨', 'pecunia', 'pembayaran kepada', 'Ã£ÂÂ¸Ã£ÂÂ®Ã¦â€Â¯Ã¦â€°â€¢Ã£Ââ€ž', 'Ã¬â€”Â Ã¬Â§â‚¬Ã«Â¶Ë†'),
(152, 'bill_to', 'bill to', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Â²', 'proyecto de ley para', 'Ã™â€¦Ã˜Â´Ã˜Â±Ã™Ë†Ã˜Â¹ Ã™â€šÃ˜Â§Ã™â€ Ã™Ë†Ã™â€  Ã™â€ž', 'wetsvoorstel om', 'Ãâ€”ÃÂ°ÃÂºÃÂ¾ÃÂ½ÃÂ¾ÃÂ¿Ã‘â‚¬ÃÂ¾ÃÂµÃÂºÃ‘â€š ÃÂ¾', 'Ã¦Â³â€¢Ã¦Â¡Ë†', 'bill', 'projeto de lei para', 'tÃƒÂ¶rvÃƒÂ©nyjavaslat', 'projet de loi', 'ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ¿ÃÆ’Ãâ€¡ÃŽÂ­ÃŽÂ´ÃŽÂ¹ÃŽÂ¿ ÃŽÂ³ÃŽÂ¹ÃŽÂ± Ãâ€žÃŽÂ·ÃŽÂ½', 'Gesetzentwurf zur', 'disegno di legge per', 'Ã Â¸Å¡Ã Â¸Â´Ã Â¸Â¥', 'Ã˜Â¨Ã™â€ž', 'Ã Â¤Â¬Ã Â¤Â¿Ã Â¤Â² Ã Â¤â€¢Ã Â¥â€¡ Ã Â¤Â²Ã Â¤Â¿Ã Â¤Â', 'latumque', 'RUU untuk', 'Ã¨Â«â€¹Ã¦Â±â€šÃ£Ââ„¢Ã£â€šâ€¹', 'Ã«Â²â€¢Ã¬â€¢Ë†'),
(153, 'invoice_title', 'invoice title', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ Ã Â¦Â¶Ã Â¦Â¿Ã Â¦Â°Ã Â§â€¹Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'TÃƒÂ­tulo de la factura', 'Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€  Ã˜Â§Ã™â€žÃ™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â©', 'factuur titel', 'ÃÂÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ°', 'Ã¥Ââ€˜Ã§Â¥Â¨Ã¦Å Â¬Ã¥Â¤Â´', 'fatura baÃ…Å¸lÃ„Â±k', 'tÃƒÂ­tulo fatura', 'szÃƒÂ¡mla cÃƒÂ­m', 'titre de la facture', 'ÃŽÂ¤ÃŽÂ¯Ãâ€žÃŽÂ»ÃŽÂ¿Ãâ€š Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿', 'Rechnungs Titel', 'title fattura', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€°', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€ ', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤Â¶Ã Â¥â‚¬Ã Â¤Â°Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢', 'title cautionem', 'judul faktur', 'Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸Ã£ÂÂ®Ã£â€šÂ¿Ã£â€šÂ¤Ã£Æ’Ë†Ã£Æ’Â«', 'Ã¬â€ Â¡Ã¬Å¾Â¥ Ã¬Â Å“Ã«ÂªÂ©'),
(154, 'invoice_id', 'invoice id', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨ Ã Â¦â€ Ã Â¦â€¡Ã Â¦Â¡Ã Â¦Â¿', 'IdentificaciÃƒÂ³n de la factura', 'Ã™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â© Ã™â€¦Ã˜Â¹Ã˜Â±Ã™Â', 'factuur id', 'Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€š-Ã‘â€žÃÂ°ÃÂºÃ‘â€šÃ‘Æ’Ã‘â‚¬ÃÂ° ID', 'Ã¥Ââ€˜Ã§Â¥Â¨Ã§Â¼â€“Ã¥ÂÂ·', 'fatura id', 'id fatura', 'szÃƒÂ¡mla id', 'Identifiant facture', 'id Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿', 'Rechnung-ID', 'fattura id', 'Ã Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€°Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸â€š', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³ ID', 'Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨ Ã Â¤â€ Ã Â¤Ë†Ã Â¤Â¡Ã Â¥â‚¬', 'id cautionem', 'faktur id', 'Ã¨Â«â€¹Ã¦Â±â€šÃ¦â€ºÂ¸ID', 'Ã¬â€ Â¡Ã¬Å¾Â¥ ID'),
(155, 'edit_invoice', 'edit invoice', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨', 'edit factura', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â©', 'bewerk factuur', 'Ã‘â‚¬ÃÂµÃÂ´ÃÂ°ÃÂºÃ‘â€šÃÂ¸Ã‘â‚¬ÃÂ¾ÃÂ²ÃÂ°ÃÂ½ÃÂ¸Ã‘Â Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€šÃÂ°-Ã‘â€žÃÂ°ÃÂºÃ‘â€šÃ‘Æ’Ã‘â‚¬Ã‘â€¹', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¥Ââ€˜Ã§Â¥Â¨', 'edit fatura', 'ediÃƒÂ§ÃƒÂ£o fatura', 'szerkesztÃƒÂ©s szÃƒÂ¡mla', 'modifier la facture', 'edit Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿', 'edit Rechnung', 'modifica fattura', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¹Æ’Ã Â¸Å¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸ÂµÃ Â¹â€°', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¾Ã Â¤Â¨', 'edit cautionem', 'mengedit faktur', 'Ã§Â·Â¨Ã©â€ºâ€ Ã©â‚¬ÂÃ£â€šÅ Ã§Å Â¶', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã¬â€ Â¡Ã¬Å¾Â¥');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(156, 'manage_library_books', 'manage library books', 'Ã Â¦Â²Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â¬Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â°Ã Â¦Â¿Ã Â¦Â° Ã Â¦Â¬Ã Â¦â€¡ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar libros de la biblioteca', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã™â€¦Ã™Æ’Ã˜ÂªÃ˜Â¨Ã˜Â© Ã˜Â§Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â¨', 'beheren bibliotheekboeken', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂ±ÃÂ¸ÃÂ±ÃÂ»ÃÂ¸ÃÂ¾Ã‘â€šÃÂµÃ‘â€¡ÃÂ½Ã‘â€¹ÃÂµ ÃÂºÃÂ½ÃÂ¸ÃÂ³ÃÂ¸', 'Ã§Â®Â¡Ã§Ââ€ Ã¥â€ºÂ¾Ã¤Â¹Â¦', 'kitaplarÃ„Â± kÃƒÂ¼tÃƒÂ¼phane yÃƒÂ¶netmek', 'gerenciar os livros da biblioteca', 'kezelni kÃƒÂ¶nyvtÃƒÂ¡ri kÃƒÂ¶nyvek', 'gÃƒÂ©rer des livres de bibliothÃƒÂ¨que', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¹ÃÂÃŽÂ¹ÃÆ’Ãâ€žÃŽÂµÃŽÂ¯Ãâ€žÃŽÂµ Ãâ€žÃŽÂ± ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯ÃŽÂ± Ãâ€žÃŽÂ·Ãâ€š ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¹ÃŽÂ¿ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ·Ãâ€š', 'BÃƒÂ¼cher aus der Bibliothek verwalten', 'gestire i libri della biblioteca', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã¢â‚¬â€¹Ã¢â‚¬â€¹Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­Ã Â¸Â«Ã Â¹â€°Ã Â¸Â­Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â¡Ã Â¸Â¸Ã Â¸â€', 'ÃšÂ©Ã˜ÂªÃ˜Â¨ Ã˜Â®Ã˜Â§Ã™â€ Ã›â€™ ÃšÂ©Ã›Å’ ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨Ã›Å’ÃšÂº Ã™â€¦Ã™â€ Ã˜Â¸Ã™â€¦', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â¯ Ã Â¤â€¢Ã Â¥â‚¬ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢Ã Â¥â€¹Ã Â¤â€š Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo bibliotheca librorum,', 'mengelola buku perpustakaan', 'Ã¥â€ºÂ³Ã¦â€ºÂ¸Ã©Â¤Â¨Ã£ÂÂ®Ã¦Å“Â¬Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã«Ââ€žÃ¬â€žÅ“ÃªÂ´â‚¬ Ã¬Â±â€¦ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(157, 'book_list', 'book list', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista de libros', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â¨', 'boekenlijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº ÃÂºÃÂ½ÃÂ¸ÃÂ³', 'Ã¤Â¹Â¦Ã¥Ââ€¢', 'kitap listesi', 'lista de livros', 'book lista', 'liste de livres', 'ÃŽÂ»ÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯Ãâ€°ÃŽÂ½', 'Buchliste', 'elenco libri', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã¢â‚¬â€¹Ã¢â‚¬â€¹Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­', 'ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨ ÃšÂ©Ã›Å’ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'album', 'daftar buku', 'Ã£Æ’â€“Ã£Æ’Æ’Ã£â€šÂ¯Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã«Ââ€žÃ¬â€žÅ“ Ã«ÂªÂ©Ã«Â¡Â'),
(158, 'add_book', 'add book', 'Ã Â¦Â¬Ã Â¦â€¡ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'AÃƒÂ±adir libro', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã™Æ’Ã˜ÂªÃ˜Â§Ã˜Â¨', 'boek toevoegen', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂºÃÂ½ÃÂ¸ÃÂ³Ã‘Æ’', 'Ã¥Å Â Ã¥â€¦Â¥Ã¤Â¹Â¦', 'kitap eklemek', 'adicionar livro', 'KÃƒÂ¶nyv hozzÃƒÂ¡adÃƒÂ¡sa', 'ajouter livre', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ Ãâ€žÃŽÂ¿ ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯ÃŽÂ¿', 'Buch hinzufÃƒÂ¼gen', 'aggiungere il libro', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­', 'ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨ Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde libri', 'menambahkan buku', 'Ã¦Å“Â¬Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬Â±â€¦Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(159, 'book_name', 'book name', 'Ã Â¦Â¬Ã Â¦â€¡Ã Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del libro', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â§Ã˜Â¨', 'boeknaam', 'ÃÂÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ ÃÂºÃÂ½ÃÂ¸ÃÂ³ÃÂ¸', 'Ã¤Â¹Â¦Ã¥ÂÂ', 'kitap adÃ„Â±', 'nome livro', 'book nÃƒÂ©v', 'nom de livre', 'Ãâ€žÃŽÂ¿ ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃŽÂ¿Ãâ€¦ ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯ÃŽÂ¿Ãâ€¦', 'Buchnamen', 'nome del libro', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­', 'ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨ ÃšÂ©Ã˜Â§ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤â€¢Ã Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¬ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'librum nomine', 'nama buku', 'Ã£Æ’â€“Ã£Æ’Æ’Ã£â€šÂ¯Ã¥ÂÂ', 'Ã¬Â±â€¦ Ã¬ÂÂ´Ã«Â¦â€ž'),
(160, 'author', 'author', 'Ã Â¦Â²Ã Â§â€¡Ã Â¦â€“Ã Â¦â€¢', 'autor', 'Ã˜Â§Ã™â€žÃ™Æ’Ã˜Â§Ã˜ÂªÃ˜Â¨', 'auteur', 'ÃÂ°ÃÂ²Ã‘â€šÃÂ¾Ã‘â‚¬', 'Ã¤Â½Å“Ã¨â‚¬â€¦', 'yazar', 'autor', 'szerzÃ…â€˜', 'auteur', 'ÃÆ’Ãâ€¦ÃŽÂ³ÃŽÂ³ÃÂÃŽÂ±Ãâ€ ÃŽÂ­ÃŽÂ±Ãâ€š', 'Autor', 'autore', 'Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¹â‚¬Ã Â¸â€šÃ Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã™â€¦Ã˜ÂµÃ™â€ Ã™Â', 'Ã Â¤Â²Ã Â¥â€¡Ã Â¤â€“Ã Â¤â€¢', 'auctor', 'penulis', 'Ã¨â€˜â€”Ã¨â‚¬â€¦', 'Ã¬Â â‚¬Ã¬Å¾Â'),
(161, 'price', 'price', 'Ã Â¦Â¦Ã Â¦Â¾Ã Â¦Â®', 'precio', 'Ã˜Â§Ã™â€žÃ˜Â³Ã˜Â¹Ã˜Â±', 'prijs', 'Ã‘â€ ÃÂµÃÂ½ÃÂ°', 'Ã¤Â»Â·Ã¦Â Â¼', 'fiyat', 'preÃƒÂ§o', 'ÃƒÂ¡r', 'prix', 'Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ®', 'Preis', 'prezzo', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸â€žÃ Â¸Â²', 'Ã™â€šÃ›Å’Ã™â€¦Ã˜Âª', 'Ã Â¤â€¢Ã Â¥â‚¬Ã Â¤Â®Ã Â¤Â¤', 'price', 'harga', 'Ã¤Â¾Â¡Ã¦Â Â¼', 'ÃªÂ°â‚¬ÃªÂ²Â©'),
(162, 'available', 'available', 'Ã Â¦â€°Ã Â¦ÂªÃ Â¦Â²Ã Â¦Â¬Ã Â§ÂÃ Â¦Â§', 'disponible', 'Ã™â€¦Ã˜ÂªÃ˜Â§Ã˜Â­', 'beschikbaar', 'ÃÂ´ÃÂ¾Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ¿ÃÂ½Ã‘â€¹ÃÂ¹', 'Ã¥ÂÂ¯Ã§â€Â¨Ã§Å¡â€ž', 'mevcut', 'disponÃƒÂ­vel', 'rendelkezÃƒÂ©sre ÃƒÂ¡llÃƒÂ³', 'disponible', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ¸ÃŽÂ­ÃÆ’ÃŽÂ¹ÃŽÂ¼ÃŽÂ¿Ãâ€š', 'verfÃƒÂ¼gbar', 'disponibile', 'Ã Â¸ÂªÃ Â¸Â²Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â£Ã Â¸â€“Ã Â¹Æ’Ã Â¸Å Ã Â¹â€°Ã Â¹â€žÃ Â¸â€Ã Â¹â€°', 'Ã˜Â¯Ã˜Â³Ã˜ÂªÃ›Å’Ã˜Â§Ã˜Â¨', 'Ã Â¤â€°Ã Â¤ÂªÃ Â¤Â²Ã Â¤Â¬Ã Â¥ÂÃ Â¤Â§', 'available', 'tersedia', 'Ã¥Ë†Â©Ã§â€Â¨Ã£ÂÂ§Ã£ÂÂÃ£â€šâ€¹', 'Ã¬Å“Â Ã­Å¡Â¨Ã­â€¢Å“'),
(163, 'unavailable', 'unavailable', 'Ã Â¦â€¦Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â¦Â¾Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¯', 'indisponible', 'Ã˜ÂºÃ™Å Ã˜Â± Ã™â€¦Ã˜ÂªÃ˜Â§Ã˜Â­', 'niet beschikbaar', 'ÃÂ½ÃÂµÃÂ´ÃÂ¾Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ¿ÃÂµÃÂ½', 'Ã¤Â¸ÂÃ¥ÂÂ¯Ã§â€Â¨', 'yok', 'indisponÃƒÂ­vel', 'ÃƒÂ©rhetÃ…â€˜ el', 'indisponible', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ¸ÃŽÂ­ÃÆ’ÃŽÂ¹ÃŽÂ¼ÃŽÂ¿', 'nicht verfÃƒÂ¼gbar', 'non disponibile', 'Ã Â¹â€žÃ Â¸Â¡Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Âµ', 'Ã˜Â¯Ã˜Â³Ã˜ÂªÃ›Å’Ã˜Â§Ã˜Â¨ Ã™â€ Ã›ÂÃ›Å’ÃšÂº', 'Ã Â¤â€¦Ã Â¤Â¨Ã Â¥ÂÃ Â¤ÂªÃ Â¤Â²Ã Â¤Â¬Ã Â¥ÂÃ Â¤Â§', 'unavailable', 'tidak tersedia', 'Ã¥Ë†Â©Ã§â€Â¨Ã£ÂÂ§Ã£ÂÂÃ£ÂÂªÃ£Ââ€ž', 'Ã¬â€”â€ Ã«Å â€'),
(164, 'edit_book', 'edit book', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¬Ã Â¦â€¡', 'libro de ediciÃƒÂ³n', 'Ã™Æ’Ã˜ÂªÃ˜Â§Ã˜Â¨ Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â±', 'bewerk boek', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂºÃÂ½ÃÂ¸ÃÂ³ÃÂ°', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¦Å“Â¬Ã¤Â¹Â¦', 'edit kitap', 'ediÃƒÂ§ÃƒÂ£o do livro', 'edit kÃƒÂ¶nyv', 'edit livre', 'ÃŽÂµÃâ‚¬ÃŽÂµÃŽÂ¾ÃŽÂµÃÂÃŽÂ³ÃŽÂ±ÃÆ’Ãâ€žÃŽÂµÃŽÂ¯Ãâ€žÃŽÂµ Ãâ€žÃŽÂ¿ ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯ÃŽÂ¿', 'edit Buch', 'modifica book', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â¸Ã Â¥ÂÃ Â¤Â¤Ã Â¤â€¢', 'edit Liber', 'mengedit buku', 'Ã§Â·Â¨Ã©â€ºâ€ Ã£ÂÂ®Ã¦Å“Â¬', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã¬Â±â€¦'),
(165, 'manage_transport', 'manage transport', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â¹Ã Â¦Â¨ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar el transporte', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã™â€šÃ™â€ž', 'beheren van vervoerssystemen', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ Ã‘â€šÃ‘â‚¬ÃÂ°ÃÂ½Ã‘ÂÃÂ¿ÃÂ¾Ã‘â‚¬Ã‘â€šÃÂ¾ÃÂ¼', 'Ã¨Â¿ÂÃ¨Â¾â€œÃ§Â®Â¡Ã§Ââ€ ', 'ulaÃ…Å¸Ã„Â±m yÃƒÂ¶netmek', 'gerenciar o transporte', 'kezelni a kÃƒÂ¶zlekedÃƒÂ©s', 'la gestion du transport', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂ¼ÃŽÂµÃâ€žÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃÅ½ÃŽÂ½', 'Transport verwalten', 'gestire i trasporti', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€šÃ Â¸â„¢Ã Â¸ÂªÃ Â¹Ë†Ã Â¸â€¡', 'Ã™â€ Ã™â€šÃ™â€ž Ã™Ë† Ã˜Â­Ã™â€¦Ã™â€ž ÃšÂ©Ã›â€™ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â¹Ã Â¤Â¨ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo onerariis', 'mengelola transportasi', 'Ã¨Â¼Â¸Ã©â‚¬ÂÃ£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'ÃªÂµÂÃ­â€ Âµ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(166, 'transport_list', 'transport list', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â¹Ã Â¦Â¨ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'Lista de transportes', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã™â€šÃ™â€ž', 'lijst vervoer', 'ÃÂ»ÃÂ¸Ã‘ÂÃ‘â€š Ã‘â€šÃ‘â‚¬ÃÂ°ÃÂ½Ã‘ÂÃÂ¿ÃÂ¾Ã‘â‚¬Ã‘â€š', 'Ã¨Â¿ÂÃ¨Â¾â€œÃ¥ÂÂÃ¥Ââ€¢', 'taÃ…Å¸Ã„Â±ma listesi', 'Lista de transportes', 'szÃƒÂ¡llÃƒÂ­tÃƒÂ¡s lista', 'liste de transport', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂ¼ÃŽÂµÃâ€žÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃÅ½ÃŽÂ½', 'Transportliste', 'elenco trasporti', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€šÃ Â¸â„¢Ã Â¸ÂªÃ Â¹Ë†Ã Â¸â€¡', 'Ã™â€ Ã™â€šÃ™â€ž Ã™Ë† Ã˜Â­Ã™â€¦Ã™â€ž ÃšÂ©Ã›Å’ Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â¹Ã Â¤Â¨ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'turpis album', 'daftar transport', 'Ã¨Â¼Â¸Ã©â‚¬ÂÃ¤Â¸â‚¬Ã¨Â¦Â§', 'Ã¬Â â€žÃ¬â€ Â¡ Ã«ÂªÂ©Ã«Â¡Â'),
(167, 'add_transport', 'add transport', 'Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â¹Ã Â¦Â¨ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€” Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â¨', 'aÃƒÂ±adir el transporte', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã™â€šÃ™â€ž', 'voeg vervoer', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â€šÃ‘â‚¬ÃÂ°ÃÂ½Ã‘ÂÃÂ¿ÃÂ¾Ã‘â‚¬Ã‘â€š', 'Ã¥Å Â Ã¤Â¸Å Ã¨Â¿ÂÃ¨Â¾â€œ', 'taÃ…Å¸Ã„Â±ma ekle', 'adicionar transporte', 'hozzÃƒÂ¡ a kÃƒÂ¶zlekedÃƒÂ©s', 'ajouter transports', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ ÃŽÂ¼ÃŽÂµÃâ€žÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃÅ½ÃŽÂ½', 'add-Transport', 'aggiungere il trasporto', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€šÃ Â¸â„¢Ã Â¸ÂªÃ Â¹Ë†Ã Â¸â€¡', 'Ã™â€ Ã™â€šÃ™â€ž Ã™Ë† Ã˜Â­Ã™â€¦Ã™â€ž Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â¹Ã Â¤Â¨ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde onerariis', 'tambahkan transportasi', 'Ã£Æ’Ë†Ã£Æ’Â©Ã£Æ’Â³Ã£â€šÂ¹Ã£Æ’ÂÃ£Æ’Â¼Ã£Æ’Ë†Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬Â â€žÃ¬â€ Â¡Ã¬Ââ€ž Ã¬Â¶â€ÃªÂ°â‚¬'),
(168, 'route_name', 'route name', 'Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'nombre de la ruta', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜ÂªÃ™Ë†Ã˜Â¬Ã™Å Ã™â€¡', 'naam van de route', 'ÃËœÃÂ¼Ã‘Â ÃÂ¼ÃÂ°Ã‘â‚¬Ã‘Ë†Ã‘â‚¬Ã‘Æ’Ã‘â€š', 'Ã¨Â·Â¯Ã§â€Â±Ã¥ÂÂÃ§Â§Â°', 'rota ismi', 'nome da rota', 'ÃƒÂºtvonal nevÃƒÂ©t', 'nom de la route', 'ÃŽÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ´ÃÂÃŽÂ¿ÃŽÂ¼ÃŽÂ®Ãâ€š', 'Routennamen', 'nome del percorso', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¹â‚¬Ã Â¸ÂªÃ Â¹â€°Ã Â¸â„¢Ã Â¸â€”Ã Â¸Â²Ã Â¸â€¡', 'Ã˜Â±Ã˜Â§Ã˜Â³Ã˜ÂªÃ›â€™ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'iter nomine', 'Nama rute', 'Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’Ë†Ã£ÂÂ®Ã¥ÂÂÃ¥â€°Â', 'ÃªÂ²Â½Ã«Â¡Å“ Ã¬ÂÂ´Ã«Â¦â€ž'),
(169, 'number_of_vehicle', 'number of vehicle', 'Ã Â¦â€”Ã Â¦Â¾Ã Â¦Â¡Ã Â¦Â¼Ã Â§â‚¬Ã Â¦Â° Ã Â¦Â¸Ã Â¦â€šÃ Â¦â€“Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾', 'nÃƒÂºmero de vehÃƒÂ­culo', 'Ã˜Â¹Ã˜Â¯Ã˜Â¯ Ã™â€¦Ã™â€  Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â±Ã™Æ’Ã˜Â¨Ã˜Â§Ã˜Âª', 'aantal voertuigkilometers', 'ÃÂºÃÂ¾ÃÂ»ÃÂ¸Ã‘â€¡ÃÂµÃ‘ÂÃ‘â€šÃÂ²ÃÂ¾ ÃÂ°ÃÂ²Ã‘â€šÃÂ¾ÃÂ¼ÃÂ¾ÃÂ±ÃÂ¸ÃÂ»Ã‘Â', 'Ã¨Â½Â¦Ã¨Â¾â€ Ã§Å¡â€žÃ¦â€¢Â°Ã©â€¡Â', 'AracÃ„Â±n sayÃ„Â±sÃ„Â±', 'nÃƒÂºmero de veÃƒÂ­culo', 'szÃƒÂ¡mÃƒÂº gÃƒÂ©pjÃƒÂ¡rmÃ…Â±', 'nombre de vÃƒÂ©hicules', 'ÃŽÂ±ÃÂÃŽÂ¹ÃŽÂ¸ÃŽÂ¼ÃÅ’Ãâ€š Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂ¿Ãâ€¡ÃŽÂ·ÃŽÂ¼ÃŽÂ¬Ãâ€žÃâ€°ÃŽÂ½', 'Anzahl der Fahrzeug', 'numero di veicolo', 'Ã Â¸Ë†Ã Â¸Â³Ã Â¸â„¢Ã Â¸Â§Ã Â¸â„¢Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¢Ã Â¸Â²Ã Â¸â„¢Ã Â¸Å¾Ã Â¸Â²Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â°', 'ÃšÂ¯Ã˜Â§Ãšâ€˜Ã›Å’ ÃšÂ©Ã›Å’ Ã˜ÂªÃ˜Â¹Ã˜Â¯Ã˜Â§Ã˜Â¯', 'Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¹Ã Â¤Â¨ Ã Â¤â€¢Ã Â¥â‚¬ Ã Â¤Â¸Ã Â¤â€šÃ Â¤â€“Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾', 'de numero scilicet vehiculum', 'jumlah kendaraan', 'Ã¨Â»Å Ã¤Â¸Â¡Ã£ÂÂ®Ã¦â€¢Â°', 'Ã¬Â°Â¨Ã«Å¸â€°Ã¬ÂËœ Ã¬Ë†Ëœ'),
(170, 'route_fare', 'route fare', 'Ã Â¦Â°Ã Â§ÂÃ Â¦Å¸ Ã Â¦â€¢Ã Â¦Â°Ã Â¦Â¬Ã Â§â€¡Ã Â¦Â¨', 'ruta hacer', 'Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â³Ã˜Â§Ã˜Â± Ã˜ÂªÃ™ÂÃ˜Â¹Ã™â€ž', 'route doen', 'ÃÂ¼ÃÂ°Ã‘â‚¬Ã‘Ë†Ã‘â‚¬Ã‘Æ’Ã‘â€š ÃÂ´ÃÂµÃÂ»ÃÂ°Ã‘â€šÃ‘Å’', 'Ã¨Â·Â¯Ã§ÂºÂ¿Ã¥ÂÅ¡', 'yol yapmak', 'rota fazer', 'ÃƒÂºtvonal do', 'itinÃƒÂ©raire faire', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ´ÃÂÃŽÂ¿ÃŽÂ¼ÃŽÂ® ÃŽÂºÃŽÂ¬ÃŽÂ½ÃŽÂµÃŽÂ¹', 'Route zu tun', 'r', 'Ã Â¹â‚¬Ã Â¸ÂªÃ Â¹â€°Ã Â¸â„¢Ã Â¸â€”Ã Â¸Â²Ã Â¸â€¡Ã Â¸â€”Ã Â¸Â³', 'Ã˜Â±Ã˜Â§Ã˜Â³Ã˜ÂªÃ›â€™ ÃšÂ©Ã˜Â±Ã˜ÂªÃ›â€™', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â°Ã Â¥ÂÃ Â¤â€” Ã Â¤â€¢Ã Â¤Â°Ã Â¤Â¨Ã Â¤Â¾', 'iter faciunt,', 'rute lakukan', 'Ã£Æ’Â«Ã£Æ’Â¼Ã£Æ’Ë†Ã£Ââ€¹', 'ÃªÂ²Â½Ã«Â¡Å“Ã«Å â€ Ã­â€¢Â '),
(171, 'edit_transport', 'edit transport', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Â¬Ã Â¦Â¹Ã Â¦Â¨', 'transporte de ediciÃƒÂ³n', 'Ã˜Â§Ã™â€žÃ™â€ Ã™â€šÃ™â€ž Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â±', 'vervoer bewerken', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â€šÃ‘â‚¬ÃÂ°ÃÂ½Ã‘ÂÃÂ¿ÃÂ¾Ã‘â‚¬Ã‘â€š', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¨Â¿ÂÃ¨Â¾â€œ', 'edit ulaÃ…Å¸Ã„Â±m', 'ediÃƒÂ§ÃƒÂ£o transporte', 'szerkesztÃƒÂ©s szÃƒÂ¡llÃƒÂ­tÃƒÂ¡s', 'transport modifier', 'edit ÃŽÂ¼ÃŽÂµÃâ€žÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃÅ½ÃŽÂ½', 'edit Transport', 'modifica dei trasporti', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€šÃ Â¸â„¢Ã Â¸ÂªÃ Â¹Ë†Ã Â¸â€¡', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ Ã™â€ Ã™â€šÃ™â€ž Ã™Ë† Ã˜Â­Ã™â€¦Ã™â€ž', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤ÂªÃ Â¤Â°Ã Â¤Â¿Ã Â¤ÂµÃ Â¤Â¹Ã Â¤Â¨', 'edit onerariis', 'mengedit transportasi', 'Ã§Â·Â¨Ã©â€ºâ€ Ã¨Â¼Â¸Ã©â‚¬Â', 'Ã­Å½Â¸Ã¬Â§â€˜ Ã¬Â â€žÃ¬â€ Â¡'),
(172, 'manage_dormitory', 'manage dormitory', 'Ã Â¦â€ Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar dormitorio', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã™â€¦Ã™â€¡Ã˜Â¬Ã˜Â¹', 'beheren slaapzaal', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂ¾ÃÂ±Ã‘â€°ÃÂµÃÂ¶ÃÂ¸Ã‘â€šÃÂ¸ÃÂµ', 'Ã¥Â®Â¿Ã¨Ë†ÂÃ§Â®Â¡Ã§Ââ€ ', 'yurt yÃƒÂ¶netmek', 'gerenciar dormitÃƒÂ³rio', 'kezelni kollÃƒÂ©giumi', 'gÃƒÂ©rer dortoir', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· ÃŽÂºÃŽÂ¿ÃŽÂ¹Ãâ€žÃÅ½ÃŽÂ½ÃŽÂ±', 'Schlafsaal verwalten', 'gestione dormitorio', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â«Ã Â¸Â­Ã Â¸Å¾Ã Â¸Â±Ã Â¸Â', 'Ã˜Â´Ã›Å’Ã™â€ Ã˜Â§ÃšÂ¯Ã˜Â§Ã˜Â± ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¸ Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo dormitorio', 'mengelola asrama', 'Ã¥Â¯Â®Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'ÃªÂ¸Â°Ã¬Ë†â„¢Ã¬â€šÂ¬Ã«Â¥Â¼ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(173, 'dormitory_list', 'dormitory list', 'Ã Â¦â€ Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista dormitorio', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã™â€¦Ã™â€¡Ã˜Â¬Ã˜Â¹', 'slaapzaal lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº ÃÂ¾ÃÂ±Ã‘â€°ÃÂµÃÂ¶ÃÂ¸Ã‘â€šÃÂ¸ÃÂµ', 'Ã¥Â®Â¿Ã¨Ë†ÂÃ¥ÂÂÃ¥Ââ€¢', 'yurt listesi', 'lista dormitÃƒÂ³rio', 'kollÃƒÂ©giumi lista', 'liste de dortoir', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± ÃŽÂºÃŽÂ¿ÃŽÂ¹Ãâ€žÃÅ½ÃŽÂ½ÃŽÂ±', 'Schlafsaal Liste', 'elenco dormitorio', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Â«Ã Â¸Â­Ã Â¸Å¾Ã Â¸Â±Ã Â¸Â', 'Ã˜Â´Ã›Å’Ã™â€ Ã˜Â§ÃšÂ¯Ã˜Â§Ã˜Â± Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¸ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'dormitorium album', 'daftar asrama', 'Ã¥Â¯Â®Ã£ÂÂ®Ã£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'ÃªÂ¸Â°Ã¬Ë†â„¢Ã¬â€šÂ¬ Ã«ÂªÂ©Ã«Â¡Â'),
(174, 'add_dormitory', 'add dormitory', 'Ã Â¦â€ Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir dormitorio', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã™â€¦Ã™â€¡Ã˜Â¬Ã˜Â¹', 'voeg slaapzaal', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¾ÃÂ±Ã‘â€°ÃÂµÃÂ¶ÃÂ¸Ã‘â€šÃÂ¸ÃÂµ', 'Ã¦Â·Â»Ã¥Å Â Ã¥Â®Â¿Ã¨Ë†Â', 'yurt ekle', 'adicionar dormitÃƒÂ³rio', 'hozzÃƒÂ¡ kollÃƒÂ©giumi', 'ajouter dortoir', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ· ÃŽÂºÃŽÂ¿ÃŽÂ¹Ãâ€žÃÅ½ÃŽÂ½ÃŽÂ±', 'Schlaf hinzufÃƒÂ¼gen', 'aggiungere dormitorio', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Â«Ã Â¸Â­Ã Â¸Å¾Ã Â¸Â±Ã Â¸Â', 'Ã˜Â´Ã›Å’Ã™â€ Ã˜Â§ÃšÂ¯Ã˜Â§Ã˜Â± Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¸ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde dormitorio', 'menambahkan asrama', 'Ã¥Â¯Â®Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'ÃªÂ¸Â°Ã¬Ë†â„¢Ã¬â€šÂ¬Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(175, 'dormitory_name', 'dormitory name', 'Ã Â¦â€ Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¤Ã Â¦Â¾Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del dormitorio', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™â€¦Ã™â€¡Ã˜Â¬Ã˜Â¹', 'slaapzaal naam', 'ÃËœÃÂ¼Ã‘Â ÃÂ¾ÃÂ±Ã‘â€°ÃÂµÃÂ¶ÃÂ¸Ã‘â€šÃÂ¸ÃÂµ', 'Ã¥Â®Â¿Ã¨Ë†ÂÃ¥ÂÂ', 'yurt adÃ„Â±', 'nome dormitÃƒÂ³rio', 'kollÃƒÂ©giumi nÃƒÂ©v', 'nom de dortoir', 'ÃŽÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± ÃŽÂºÃŽÂ¿ÃŽÂ¹Ãâ€žÃÅ½ÃŽÂ½ÃŽÂ±', 'Schlaf Namen', 'Nome dormitorio', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Â«Ã Â¸Â­Ã Â¸Å¾Ã Â¸Â±Ã Â¸Â', 'Ã˜Â´Ã›Å’Ã™â€ Ã˜Â§ÃšÂ¯Ã˜Â§Ã˜Â± Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¸ Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'dormitorium nomine', 'Nama asrama', 'Ã¥Â¯Â®Ã¥ÂÂ', 'ÃªÂ¸Â°Ã¬Ë†â„¢Ã¬â€šÂ¬ Ã¬ÂÂ´Ã«Â¦â€ž'),
(176, 'number_of_room', 'number of room', 'Ã Â¦ËœÃ Â¦Â°Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¸Ã Â¦â€šÃ Â¦â€“Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾', 'nÃƒÂºmero de habitaciÃƒÂ³n', 'Ã˜Â¹Ã˜Â¯Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜ÂºÃ˜Â±Ã™Â', 'aantal kamer', 'Ã‘â€¡ÃÂ¸Ã‘ÂÃÂ»ÃÂ¾ ÃÂºÃÂ¾ÃÂ¼ÃÂ½ÃÂ°Ã‘â€šÃÂµ', 'Ã¦Ë†Â¿Ã©â€”Â´Ã¦â€¢Â°Ã©â€¡Â', 'oda sayÃ„Â±sÃ„Â±', 'nÃƒÂºmero de quarto', 'szÃƒÂ¡ma szobÃƒÂ¡ban', 'nombre de salle', 'Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂ±ÃÂÃŽÂ¹ÃŽÂ¸ÃŽÂ¼ÃÅ’ Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂ´Ãâ€°ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¯Ãâ€°ÃŽÂ½', 'Anzahl der Zimmer', 'numero delle camera', 'Ã Â¸Ë†Ã Â¸Â³Ã Â¸â„¢Ã Â¸Â§Ã Â¸â„¢Ã Â¸Â«Ã Â¹â€°Ã Â¸Â­Ã Â¸â€¡Ã Â¸Å¾Ã Â¸Â±Ã Â¸Â', 'ÃšÂ©Ã™â€¦Ã˜Â±Ã›â€™ ÃšÂ©Ã›Å’ Ã˜ÂªÃ˜Â¹Ã˜Â¯Ã˜Â§Ã˜Â¯', 'Ã Â¤â€¢Ã Â¤Â®Ã Â¤Â°Ã Â¥â€¡ Ã Â¤â€¢Ã Â¥â‚¬ Ã Â¤Â¸Ã Â¤â€šÃ Â¤â€“Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾', 'numerus locus', 'Jumlah kamar', 'Ã£ÂÅ Ã©Æ’Â¨Ã¥Â±â€¹Ã¦â€¢Â°', 'ÃªÂ°ÂÃ¬â€¹Â¤ Ã¬Ë†Ëœ'),
(177, 'manage_noticeboard', 'manage noticeboard', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar tablÃƒÂ³n de anuncios', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â©', 'beheren prikbord', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂµ ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹', 'Ã§Â®Â¡Ã§Ââ€ Ã¥Â¸Æ’Ã¥â€˜Å ', 'Noticeboard yÃƒÂ¶netmek', 'gerenciar avisos', 'kezelni ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n', 'gÃƒÂ©rer panneau d''affichage', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½', 'Brett verwalten', 'gestione bacheca', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨', 'noticeboard ÃšÂ©Ã˜Â§ Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Noticeboard Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo noticeboard', 'mengelola pengumuman', 'Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã¬ÂËœ noticeboard ÃªÂ´â‚¬Ã«Â¦Â¬'),
(178, 'noticeboard_list', 'noticeboard list', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'tablÃƒÂ³n de anuncios de la lista', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â©', 'prikbord lijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂ° ÃÂ´ÃÂ»Ã‘Â ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹', 'Ã¥Â¸Æ’Ã¥â€˜Å Ã¥ÂÂÃ¥Ââ€¢', 'noticeboard listesi', 'lista de avisos', 'ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n lista', 'liste de panneau d''affichage', 'ÃŽÂ»ÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½', 'Brett-Liste', 'elenco bacheca', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨', 'noticeboard Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Noticeboard Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'noticeboard album', 'daftar pengumuman', 'Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿Ã¤Â¸â‚¬Ã¨Â¦Â§', 'Ã¬ÂËœ noticeboard Ã«ÂªÂ©Ã«Â¡Â'),
(179, 'add_noticeboard', 'add noticeboard', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€”', 'aÃƒÂ±adir tablÃƒÂ³n de anuncios', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â©', 'voeg prikbord', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂµ ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹', 'Ã¦Â·Â»Ã¥Å Â Ã¥Â¸Æ’Ã¥â€˜Å ', 'Noticeboard ekle', 'adicionar avisos', 'hozzÃƒÂ¡ ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n', 'ajouter panneau d''affichage', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ®ÃŽÂºÃŽÂ· ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½', 'Brett hinzufÃƒÂ¼gen', 'aggiungere bacheca', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨', 'noticeboard Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Noticeboard Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'adde noticeboard', 'menambahkan pengumuman', 'Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬ÂËœ noticeboard Ã¬Â¶â€ÃªÂ°â‚¬'),
(180, 'notice', 'notice', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦Å“Ã Â§ÂÃ Â¦Å¾Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¤Ã Â¦Â¿', 'aviso', 'Ã˜Â¥Ã˜Â´Ã˜Â¹Ã˜Â§Ã˜Â±', 'kennisgeving', 'Ã‘Æ’ÃÂ²ÃÂµÃÂ´ÃÂ¾ÃÂ¼ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂµ', 'Ã©â‚¬Å¡Ã§Å¸Â¥', 'uyarÃ„Â±', 'aviso', 'ÃƒÂ©rtesÃƒÂ­tÃƒÂ©s', 'dÃƒÂ©lai', 'ÃŽÂµÃŽÂ¹ÃŽÂ´ÃŽÂ¿Ãâ‚¬ÃŽÂ¿ÃŽÂ¯ÃŽÂ·ÃÆ’ÃŽÂ·', 'Bekanntmachung', 'avviso', 'Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¹Æ’Ã Â¸Â«Ã Â¹â€°Ã Â¸â€”Ã Â¸Â£Ã Â¸Â²Ã Â¸Å¡', 'Ã™â€ Ã™Ë†Ã™Â¹Ã˜Â³', 'Ã Â¤Â¨Ã Â¥â€¹Ã Â¤Å¸Ã Â¤Â¿Ã Â¤Â¸', 'Observa', 'pemberitahuan', 'Ã¤ÂºË†Ã¥â€˜Å ', 'Ã­â€ ÂµÃ¬Â§â‚¬'),
(181, 'add_notice', 'add notice', 'Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶ Ã Â¦Â¯Ã Â§â€¹Ã Â¦â€” Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â¨', 'aÃƒÂ±adir aviso', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â¥Ã˜Â´Ã˜Â¹Ã˜Â§Ã˜Â±', 'voeg bericht', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘Æ’ÃÂ²ÃÂµÃÂ´ÃÂ¾ÃÂ¼ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂµ', 'Ã¦Â·Â»Ã¥Å Â Ã©â‚¬Å¡Ã§Å¸Â¥', 'haber ekle', 'adicionar aviso', 'hozzÃƒÂ¡ ÃƒÂ©rtesÃƒÂ­tÃƒÂ©s', 'ajouter un avis', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¯ÃŽÂ½Ãâ€°ÃÆ’ÃŽÂ·', 'Hinweis hinzufÃƒÂ¼gen', 'aggiungere preavviso', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¹ÂÃ Â¸Ë†Ã Â¹â€°Ã Â¸â€¡Ã Â¹Æ’Ã Â¸Â«Ã Â¹â€°Ã Â¸â€”Ã Â¸Â£Ã Â¸Â²Ã Â¸Å¡Ã Â¸Â¥Ã Â¹Ë†Ã Â¸Â§Ã Â¸â€¡Ã Â¸Â«Ã Â¸â„¢Ã Â¹â€°Ã Â¸Â²', 'Ã™â€ Ã™Ë†Ã™Â¹Ã˜Â³ ÃšÂ©Ã˜Â§ Ã˜Â§Ã˜Â¶Ã˜Â§Ã™ÂÃ›Â ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤Â¨Ã Â¥â€¹Ã Â¤Å¸Ã Â¤Â¿Ã Â¤Â¸ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼', 'addunt et titulum', 'tambahkan pemberitahuan', 'Ã©â‚¬Å¡Ã§Å¸Â¥Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã­â€ ÂµÃ¬Â§â‚¬Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(182, 'edit_noticeboard', 'edit noticeboard', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â¨Ã Â§â€¹Ã Â¦Å¸Ã Â¦Â¿Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'edit tablÃƒÂ³n de anuncios', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ™â€žÃ˜Â§Ã™ÂÃ˜ÂªÃ˜Â©', 'bewerk prikbord', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ´ÃÂ¾Ã‘ÂÃÂºÃÂ° ÃÂ´ÃÂ»Ã‘Â ÃÂ¾ÃÂ±Ã‘Å Ã‘ÂÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂ¹', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¥Â¸Æ’Ã¥â€˜Å ', 'edit noticeboard', 'ediÃƒÂ§ÃƒÂ£o de avisos', 'szerkesztÃƒÂ©s ÃƒÂ¼zenÃ…â€˜falÃƒÂ¡n', 'modifier panneau d''affichage', 'edit ÃŽÂ±ÃŽÂ½ÃŽÂ±ÃŽÂºÃŽÂ¿ÃŽÂ¹ÃŽÂ½ÃÅ½ÃÆ’ÃŽÂµÃâ€°ÃŽÂ½', 'Brett bearbeiten', 'modifica bacheca', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸â€ºÃ Â¹â€°Ã Â¸Â²Ã Â¸Â¢Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸ÂÃ Â¸Â²Ã Â¸Â¨', 'Ã™â€¦Ã›Å’ÃšÂº Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº noticeboard', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Noticeboard', 'edit noticeboard', 'mengedit pengumuman', 'Ã§Â·Â¨Ã©â€ºâ€ Ã¤Â¼ÂÃ¨Â¨â‚¬Ã¦ÂÂ¿', 'Ã­Å½Â¸Ã¬Â§â€˜Ã¬ÂËœ noticeboard'),
(183, 'system_name', 'system name', 'Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦Â° Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'Nombre del sistema', 'Ã˜Â§Ã˜Â³Ã™â€¦ Ã˜Â§Ã™â€žÃ™â€ Ã˜Â¸Ã˜Â§Ã™â€¦', 'Name System', 'ÃËœÃÂ¼Ã‘Â Ã‘ÂÃÂ¸Ã‘ÂÃ‘â€šÃÂµÃÂ¼Ã‘â€¹', 'Ã§Â³Â»Ã§Â»Å¸Ã¥ÂÂÃ§Â§Â°', 'sistemi adÃ„Â±', 'nome do sistema', 'rendszer neve', 'nom du systÃƒÂ¨me', 'ÃÅ’ÃŽÂ½ÃŽÂ¿ÃŽÂ¼ÃŽÂ± Ãâ€žÃŽÂ¿Ãâ€¦ ÃÆ’Ãâ€¦ÃÆ’Ãâ€žÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š', 'Systemnamen', 'nome del sistema', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€ Ã˜Â¸Ã˜Â§Ã™â€¦ ÃšÂ©Ã˜Â§ Ã™â€ Ã˜Â§Ã™â€¦', 'Ã Â¤Â¸Ã Â¤Â¿Ã Â¤Â¸Ã Â¥ÂÃ Â¤Å¸Ã Â¤Â® Ã Â¤Â¨Ã Â¤Â¾Ã Â¤Â®', 'ratio nominis', 'Nama sistem', 'Ã£â€šÂ·Ã£â€šÂ¹Ã£Æ’â€ Ã£Æ’Â Ã¥ÂÂ', 'Ã¬â€¹Å“Ã¬Å Â¤Ã­â€¦Å“ Ã¬ÂÂ´Ã«Â¦â€ž'),
(184, 'save', 'save', 'Ã Â¦Â°Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾', 'guardar', 'Ã˜Â­Ã™ÂÃ˜Â¸', 'besparen', 'Ã‘ÂÃÂºÃÂ¾ÃÂ½ÃÂ¾ÃÂ¼ÃÂ¸Ã‘â€šÃ‘Å’', 'Ã¨Å â€šÃ§Å“Â', 'kurtarmak', 'salvar', 'kivÃƒÂ©ve', 'sauver', 'ÃŽÂµÃŽÂºÃâ€žÃÅ’Ãâ€š', 'sparen', 'salvare', 'Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â°Ã Â¸Â«Ã Â¸Â¢Ã Â¸Â±Ã Â¸â€', 'ÃšÂ©Ã™Ë† Ã˜Â¨Ãšâ€ Ã˜Â§Ã™â€ Ã›â€™ ÃšÂ©Ã›â€™', 'Ã Â¤Â¬Ã Â¤Å¡Ã Â¤Â¾Ã Â¤Â¨Ã Â¤Â¾', 'salvum', 'menyimpan', 'Ã¤Â¿ÂÃ¥Â­Ëœ', 'Ã¬Â â‚¬Ã¬Å¾Â¥'),
(185, 'system_title', 'system title', 'Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§â€¡Ã Â¦Â® Ã Â¦Â¶Ã Â¦Â¿Ã Â¦Â°Ã Â§â€¹Ã Â¦Â¨Ã Â¦Â¾Ã Â¦Â®', 'TÃƒÂ­tulo de sistema', 'Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€  Ã˜Â§Ã™â€žÃ™â€ Ã˜Â¸Ã˜Â§Ã™â€¦', 'systeem titel', 'ÃÂÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ Ã‘ÂÃÂ¸Ã‘ÂÃ‘â€šÃÂµÃÂ¼Ã‘â€¹', 'Ã§Â³Â»Ã§Â»Å¸Ã¦Â â€¡Ã©Â¢Ëœ', 'Sistem baÃ…Å¸lÃ„Â±k', 'tÃƒÂ­tulo sistema', 'rendszer cÃƒÂ­m', 'titre du systÃƒÂ¨me', 'ÃŽÂ¤ÃŽÂ¯Ãâ€žÃŽÂ»ÃŽÂ¿Ãâ€š Ãâ€žÃŽÂ¿Ãâ€¦ ÃÆ’Ãâ€¦ÃÆ’Ãâ€žÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š', 'System-Titel', 'titolo di sistema', 'Ã Â¸Å Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€ Ã˜Â¸Ã˜Â§Ã™â€¦ Ã˜Â¹Ã™â€ Ã™Ë†Ã˜Â§Ã™â€ ', 'Ã Â¤Â¸Ã Â¤Â¿Ã Â¤Â¸Ã Â¥ÂÃ Â¤Å¸Ã Â¤Â® Ã Â¤Â¶Ã Â¥â‚¬Ã Â¤Â°Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢', 'ratio title', 'title sistem', 'Ã£â€šÂ·Ã£â€šÂ¹Ã£Æ’â€ Ã£Æ’Â Ã£ÂÂ®Ã£â€šÂ¿Ã£â€šÂ¤Ã£Æ’Ë†Ã£Æ’Â«', 'Ã¬â€¹Å“Ã¬Å Â¤Ã­â€¦Å“ Ã¬Â Å“Ã«ÂªÂ©'),
(186, 'paypal_email', 'paypal email', 'PayPal Ã Â¦â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦â€¡Ã Â¦Â²', 'paypal email', 'Ã˜Â¨Ã˜Â§Ã™Å  Ã˜Â¨Ã˜Â§Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â¨Ã˜Â±Ã™Å Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â¥Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â±Ã™Ë†Ã™â€ Ã™Å ', 'paypal e-mail', 'PayPal ÃÂ¿ÃÂ¾ Ã‘ÂÃÂ»ÃÂµÃÂºÃ‘â€šÃ‘â‚¬ÃÂ¾ÃÂ½ÃÂ½ÃÂ¾ÃÂ¹ ÃÂ¿ÃÂ¾Ã‘â€¡Ã‘â€šÃÂµ', 'PayPalÃ§â€ÂµÃ¥Â­ÂÃ©â€šÂ®Ã¤Â»Â¶', 'paypal e-posta', 'paypal e-mail', 'paypal email', 'paypal email', 'paypal ÃŽÂ·ÃŽÂ»ÃŽÂµÃŽÂºÃâ€žÃÂÃŽÂ¿ÃŽÂ½ÃŽÂ¹ÃŽÂºÃÅ’ Ãâ€žÃŽÂ±Ãâ€¡Ãâ€¦ÃŽÂ´ÃÂÃŽÂ¿ÃŽÂ¼ÃŽÂµÃŽÂ¯ÃŽÂ¿', 'paypal E-Mail', 'paypal-mail', 'paypal Ã Â¸Â­Ã Â¸ÂµÃ Â¹â‚¬Ã Â¸Â¡Ã Â¸Â¥Ã Â¹Å’', 'Ã™Â¾Ã›â€™ Ã™Â¾Ã˜Â§Ã™â€ž Ã˜Â§Ã›Å’ Ã™â€¦Ã›Å’Ã™â€ž', 'Ã Â¤ÂªÃ Â¥â€¡Ã Â¤ÂªÃ Â¥Ë†Ã Â¤Â² Ã Â¤Ë†Ã Â¤Â®Ã Â¥â€¡Ã Â¤Â²', 'Paypal email', 'email paypal', 'PaypalÃ£ÂÂ®Ã£Æ’Â¡Ã£Æ’Â¼Ã£Æ’Â«', 'Ã­Å½ËœÃ¬ÂÂ´Ã­Å’â€ Ã¬ÂÂ´Ã«Â©â€Ã¬ÂÂ¼'),
(187, 'currency', 'currency', 'Ã Â¦Â®Ã Â§ÂÃ Â¦Â¦Ã Â§ÂÃ Â¦Â°Ã Â¦Â¾', 'moneda', 'Ã˜Â¹Ã™â€¦Ã™â€žÃ˜Â©', 'valuta', 'ÃÂ²ÃÂ°ÃÂ»Ã‘Å½Ã‘â€šÃÂ°', 'Ã¨Â´Â§Ã¥Â¸Â', 'para', 'moeda', 'valuta', 'monnaie', 'ÃŽÂ½ÃÅ’ÃŽÂ¼ÃŽÂ¹ÃÆ’ÃŽÂ¼ÃŽÂ±', 'WÃƒÂ¤hrung', 'valuta', 'Ã Â¹â‚¬Ã Â¸â€¡Ã Â¸Â´Ã Â¸â„¢Ã Â¸â€¢Ã Â¸Â£Ã Â¸Â²', 'ÃšÂ©Ã˜Â±Ã™â€ Ã˜Â³Ã›Å’', 'Ã Â¤Â®Ã Â¥ÂÃ Â¤Â¦Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾', 'currency', 'mata uang', 'Ã©â‚¬Å¡Ã¨Â²Â¨', 'Ã­â€ ÂµÃ­â„¢â€'),
(188, 'phrase_list', 'phrase list', 'Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Å“ Ã Â¦Â¤Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â¾', 'lista de frases', 'Ã™â€šÃ˜Â§Ã˜Â¦Ã™â€¦Ã˜Â© Ã˜Â¬Ã™â€¦Ã™â€žÃ˜Â©', 'zinnenlijst', 'ÃÂ¡ÃÂ¿ÃÂ¸Ã‘ÂÃÂ¾ÃÂº Ã‘â€žÃ‘â‚¬ÃÂ°ÃÂ·ÃÂ°', 'Ã§Å¸Â­Ã¨Â¯Â­Ã¥Ë†â€”Ã¨Â¡Â¨', 'ifade listesi', 'lista de frases', 'kifejezÃƒÂ©s lista', 'liste de phrase', 'ÃŽâ€ºÃŽÂ¯ÃÆ’Ãâ€žÃŽÂ± Ãâ€ ÃÂÃŽÂ¬ÃÆ’ÃŽÂ·', 'Phrasenliste', 'elenco frasi', 'Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â§Ã Â¸Â¥Ã Â¸Âµ', 'Ã˜Â¬Ã™â€¦Ã™â€žÃ›Â Ã™ÂÃ›ÂÃ˜Â±Ã˜Â³Ã˜Âª', 'Ã Â¤ÂµÃ Â¤Â¾Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾Ã Â¤â€šÃ Â¤Â¶ Ã Â¤Â¸Ã Â¥â€šÃ Â¤Å¡Ã Â¥â‚¬', 'dicitur album', 'Daftar frase', 'Ã£Æ’â€¢Ã£Æ’Â¬Ã£Æ’Â¼Ã£â€šÂºÃ£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†', 'Ã«Â¬Â¸ÃªÂµÂ¬ Ã«ÂªÂ©Ã«Â¡Â'),
(189, 'add_phrase', 'add phrase', 'Ã Â¦Â¶Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¦Ã Â¦â€”Ã Â§ÂÃ Â¦Å¡Ã Â§ÂÃ Â¦â€º Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤', 'aÃƒÂ±adir la frase', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã˜Â¹Ã˜Â¨Ã˜Â§Ã˜Â±Ã˜Â©', 'voeg zin', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â€žÃ‘â‚¬ÃÂ°ÃÂ·Ã‘Æ’', 'Ã¦Â·Â»Ã¥Å Â Ã¨Â¯ÂÃ§Â»â€ž', 'ifade eklemek', 'adicionar frase', 'adjunk kifejezÃƒÂ©st', 'ajouter la phrase', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ Ãâ€ ÃÂÃŽÂ¬ÃÆ’ÃŽÂ·', 'Begriff hinzufÃƒÂ¼gen', 'aggiungere la frase', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Â§Ã Â¸Â¥Ã Â¸Âµ', 'Ã˜Â¬Ã™â€¦Ã™â€žÃ›Â Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤ÂµÃ Â¤Â¾Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾Ã Â¤â€šÃ Â¤Â¶ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼Ã Â¤Â¨Ã Â¤Â¾', 'addere phrase', 'menambahkan frase', 'Ã£Æ’â€¢Ã£Æ’Â¬Ã£Æ’Â¼Ã£â€šÂºÃ£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã«Â¬Â¸ÃªÂµÂ¬Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(190, 'add_language', 'add language', 'Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â·Ã Â¦Â¾ Ã Â¦Â¯Ã Â§ÂÃ Â¦â€¢Ã Â§ÂÃ Â¦Â¤', 'aÃƒÂ±adir idioma', 'Ã˜Â¥Ã˜Â¶Ã˜Â§Ã™ÂÃ˜Â© Ã™â€žÃ˜ÂºÃ˜Â©', 'add taal', 'ÃÂ´ÃÂ¾ÃÂ±ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃÂ·Ã‘â€¹ÃÂº', 'Ã¦â€“Â°Ã¥Â¢Å¾Ã¨Â¯Â­Ã¨Â¨â‚¬', 'dil ekle', 'adicionar lÃƒÂ­ngua', 'nyelv hozzÃƒÂ¡adÃƒÂ¡sa', 'ajouter la langue', 'Ãâ‚¬ÃÂÃŽÂ¿ÃÆ’ÃŽÂ¸ÃŽÂ­ÃÆ’Ãâ€žÃŽÂµ ÃŽÂ³ÃŽÂ»ÃÅ½ÃÆ’ÃÆ’ÃŽÂ±', 'Sprache hinzufÃƒÂ¼gen', 'aggiungere la lingua', 'Ã Â¹â‚¬Ã Â¸Å¾Ã Â¸Â´Ã Â¹Ë†Ã Â¸Â¡Ã Â¸Â Ã Â¸Â²Ã Â¸Â©Ã Â¸Â²', 'Ã˜Â²Ã˜Â¨Ã˜Â§Ã™â€  ÃšÂ©Ã™Ë† Ã˜Â´Ã˜Â§Ã™â€¦Ã™â€ž', 'Ã Â¤Â­Ã Â¤Â¾Ã Â¤Â·Ã Â¤Â¾ Ã Â¤Å“Ã Â¥â€¹Ã Â¤Â¡Ã Â¤Â¼Ã Â¤Â¨Ã Â¤Â¾', 'addere verbis', 'menambahkan bahasa', 'Ã¨Â¨â‚¬Ã¨ÂªÅ¾Ã£â€šâ€™Ã¨Â¿Â½Ã¥Å Â ', 'Ã¬â€“Â¸Ã¬â€“Â´Ã«Â¥Â¼ Ã¬Â¶â€ÃªÂ°â‚¬'),
(191, 'phrase', 'phrase', 'Ã Â¦Â¬Ã Â¦Â¾Ã Â¦â€¢Ã Â§ÂÃ Â¦Â¯', 'frase', 'Ã˜Â§Ã™â€žÃ˜Â¹Ã˜Â¨Ã˜Â§Ã˜Â±Ã˜Â©', 'frase', 'Ã‘â€žÃ‘â‚¬ÃÂ°ÃÂ·ÃÂ°', 'Ã§Å¸Â­Ã¨Â¯Â­', 'ifade', 'frase', 'kifejezÃƒÂ©s', 'phrase', 'Ãâ€ ÃÂÃŽÂ¬ÃÆ’ÃŽÂ·', 'Ausdruck', 'frase', 'Ã Â¸Â§Ã Â¸Â¥Ã Â¸Âµ', 'Ã˜Â¬Ã™â€¦Ã™â€žÃ›Â', 'Ã Â¤ÂµÃ Â¤Â¾Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾Ã Â¤â€šÃ Â¤Â¶', 'phrase', 'frasa', 'Ã£Æ’â€¢Ã£Æ’Â¬Ã£Æ’Â¼Ã£â€šÂº', 'ÃªÂµÂ¬');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(192, 'manage_backup_restore', 'manage backup restore', 'Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦â€¢Ã Â¦â€ Ã Â¦Âª Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¨Ã Â¦Æ’Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¾Ã Â¦ÂªÃ Â¦Â¨ Ã Â¦â€œ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar copias de seguridad a restaurar', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã˜Â³Ã˜Â® Ã˜Â§Ã™â€žÃ˜Â§Ã˜Â­Ã˜ÂªÃ™Å Ã˜Â§Ã˜Â·Ã™Å ', 'beheer van back-up herstellen', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂ²ÃÂ¾Ã‘ÂÃ‘ÂÃ‘â€šÃÂ°ÃÂ½ÃÂ¾ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â‚¬ÃÂµÃÂ·ÃÂµÃ‘â‚¬ÃÂ²ÃÂ½ÃÂ¾ÃÂ³ÃÂ¾ ÃÂºÃÂ¾ÃÂ¿ÃÂ¸Ã‘â‚¬ÃÂ¾ÃÂ²ÃÂ°ÃÂ½ÃÂ¸Ã‘Â', 'Ã§Â®Â¡Ã§Ââ€ Ã¥Â¤â€¡Ã¤Â»Â½Ã¦ÂÂ¢Ã¥Â¤Â', 'yedekleme geri yÃƒÂ¶netmek', 'gerenciar o backup de restauraÃƒÂ§ÃƒÂ£o', 'kezelni a biztonsÃƒÂ¡gi mentÃƒÂ©s visszaÃƒÂ¡llÃƒÂ­tÃƒÂ¡sa', 'gÃƒÂ©rer de restauration de sauvegarde', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¯ÃÂÃŽÂ¹ÃÆ’ÃŽÂ· ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬Ãâ€š ÃŽÂ±ÃŽÂ½Ãâ€žÃŽÂ¹ÃŽÂ³ÃÂÃŽÂ¬Ãâ€ Ãâ€°ÃŽÂ½ ÃŽÂ±ÃÆ’Ãâ€ ÃŽÂ±ÃŽÂ»ÃŽÂµÃŽÂ¯ÃŽÂ±Ãâ€š', 'verwalten Backup wiederherstellen', 'gestire il ripristino di backup', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â³Ã Â¸Â£Ã Â¸Â­Ã Â¸â€¡Ã Â¸â€šÃ Â¹â€°Ã Â¸Â­Ã Â¸Â¡Ã Â¸Â¹Ã Â¸Â¥Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸ÂÃ Â¸â€žÃ Â¸Â·Ã Â¸â„¢', 'Ã˜Â¨Ã›Å’ÃšÂ© Ã˜Â§Ã™Â¾ Ã˜Â¨Ã˜Â­Ã˜Â§Ã™â€ž Ã˜Â§Ã™â€ Ã˜ÂªÃ˜Â¸Ã˜Â§Ã™â€¦', 'Ã Â¤Â¬Ã Â¥Ë†Ã Â¤â€¢Ã Â¤â€¦Ã Â¤Âª Ã Â¤Â¬Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â² Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo tergum restituunt', 'mengelola backup restore', 'Ã£Æ’ÂÃ£Æ’Æ’Ã£â€šÂ¯Ã£â€šÂ¢Ã£Æ’Æ’Ã£Æ’â€”Ã£â‚¬ÂÃ£Æ’ÂªÃ£â€šÂ¹Ã£Æ’Ë†Ã£â€šÂ¢Ã£â€šâ€™Ã§Â®Â¡Ã§Ââ€ ', 'Ã«Â°Â±Ã¬â€”â€¦ Ã«Â³ÂµÃ¬â€ºÂ ÃªÂ´â‚¬Ã«Â¦Â¬'),
(193, 'restore', 'restore', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â¦Â¤Ã Â§ÂÃ Â¦Â¯Ã Â¦Â°Ã Â§ÂÃ Â¦ÂªÃ Â¦Â£ Ã Â¦â€¢Ã Â¦Â°Ã Â¦Â¾', 'restaurar', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â©', 'herstellen', 'ÃÂ²ÃÂ¾Ã‘ÂÃ‘ÂÃ‘â€šÃÂ°ÃÂ½ÃÂ¾ÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂµ', 'Ã¦ÂÂ¢Ã¥Â¤Â', 'geri', 'restaurar', 'visszaad', 'restaurer', 'ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ­ÃÂÃŽÂµÃâ€žÃŽÂµ', 'wiederherstellen', 'ripristinare', 'Ã Â¸Å¸Ã Â¸Â·Ã Â¹â€°Ã Â¸â„¢Ã Â¸Å¸Ã Â¸Â¹', 'Ã˜Â¨Ã˜Â­Ã˜Â§Ã™â€ž', 'Ã Â¤Â¬Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²', 'reddite', 'mengembalikan', 'Ã¥Â¾Â©Ã¥â€¦Æ’Ã£Ââ„¢Ã£â€šâ€¹', 'Ã«Â³ÂµÃ¬â€ºÂ'),
(194, 'mark', 'mark', 'Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Âª', 'marca', 'Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â©', 'mark', 'ÃÂ·ÃÂ½ÃÂ°ÃÂº', 'Ã¦Â â€¡Ã¥Â¿â€”', 'iÃ…Å¸aret', 'marca', 'jel', 'marque', 'ÃÆ’ÃŽÂ·ÃŽÂ¼ÃŽÂ¬ÃŽÂ´ÃŽÂ¹', 'Marke', 'marchio', 'Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢', 'Ã™â€ Ã˜Â´Ã˜Â§Ã™â€ ', 'Ã Â¤Â¨Ã Â¤Â¿Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¨', 'Marcus', 'tanda', 'Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯', 'Ã­â€˜Å“'),
(195, 'grade', 'grade', 'Ã Â¦â€”Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¡', 'grado', 'Ã˜Â¯Ã˜Â±Ã˜Â¬Ã˜Â©', 'graad', 'ÃÂºÃÂ»ÃÂ°Ã‘ÂÃ‘Â', 'Ã§Â­â€°Ã§ÂºÂ§', 'sÃ„Â±nÃ„Â±f', 'grau', 'fokozat', 'grade', 'ÃŽÂ²ÃŽÂ±ÃŽÂ¸ÃŽÂ¼ÃÅ’Ãâ€š', 'Klasse', 'grado', 'Ã Â¹â‚¬Ã Â¸ÂÃ Â¸Â£Ã Â¸â€', 'ÃšÂ¯Ã˜Â±Ã›Å’ÃšË†', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¥â€¡Ã Â¤Â¡', 'gradus,', 'kelas', 'Ã£â€šÂ°Ã£Æ’Â¬Ã£Æ’Â¼Ã£Æ’â€°', 'Ã­â€¢â„¢Ã«â€¦â€ž'),
(196, 'invoice', 'invoice', 'Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¾Ã Â¦Â¨', 'factura', 'Ã™ÂÃ˜Â§Ã˜ÂªÃ™Ë†Ã˜Â±Ã˜Â©', 'factuur', 'Ã‘ÂÃ‘â€¡ÃÂµÃ‘â€š-Ã‘â€žÃÂ°ÃÂºÃ‘â€šÃ‘Æ’Ã‘â‚¬ÃÂ°', 'Ã¥Ââ€˜Ã§Â¥Â¨', 'fatura', 'fatura', 'szÃƒÂ¡mla', 'facture', 'Ãâ€žÃŽÂ¹ÃŽÂ¼ÃŽÂ¿ÃŽÂ»ÃÅ’ÃŽÂ³ÃŽÂ¹ÃŽÂ¿', 'Rechnung', 'fattura', 'Ã Â¹Æ’Ã Â¸Å¡Ã Â¸ÂÃ Â¸Â³Ã Â¸ÂÃ Â¸Â±Ã Â¸Å¡Ã Â¸ÂªÃ Â¸Â´Ã Â¸â„¢Ã Â¸â€žÃ Â¹â€°Ã Â¸Â²', 'Ã˜Â§Ã™â€ Ã™Ë†Ã˜Â§Ã˜Â¦Ã˜Â³', 'Ã Â¤Â¬Ã Â¥â‚¬Ã Â¤Å“Ã Â¤â€¢', 'cautionem', 'faktur', 'Ã£â€šÂ¤Ã£Æ’Â³Ã£Æ’Å“Ã£â€šÂ¤Ã£â€šÂ¹', 'Ã¬â€ Â¡Ã¬Å¾Â¥'),
(197, 'book', 'book', 'Ã Â¦Â¬Ã Â¦â€¡', 'libro', 'Ã™Æ’Ã˜ÂªÃ˜Â§Ã˜Â¨', 'boek', 'ÃÂºÃÂ½ÃÂ¸ÃÂ³ÃÂ°', 'Ã¤Â¹Â¦', 'kitap', 'livro', 'kÃƒÂ¶nyv', 'livre', 'ÃŽÂ²ÃŽÂ¹ÃŽÂ²ÃŽÂ»ÃŽÂ¯ÃŽÂ¿', 'Buch', 'libro', 'Ã Â¸Â«Ã Â¸â„¢Ã Â¸Â±Ã Â¸â€¡Ã Â¸ÂªÃ Â¸Â·Ã Â¸Â­', 'ÃšÂ©Ã˜ÂªÃ˜Â§Ã˜Â¨', 'Ã Â¤â€¢Ã Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾Ã Â¤Â¬', 'Liber', 'buku', 'Ã¦Å“Â¬', 'Ã¬Â±â€¦'),
(198, 'all', 'all', 'Ã Â¦Â¸Ã Â¦Â¬', 'todo', 'Ã™Æ’Ã™â€ž', 'alle', 'ÃÂ²Ã‘ÂÃÂµ', 'Ã¦â€°â‚¬Ã¦Å“â€°', 'tÃƒÂ¼m', 'tudo', 'minden', 'tout', 'ÃÅ’ÃŽÂ»ÃŽÂ±', 'alle', 'tutto', 'Ã Â¸â€”Ã Â¸Â±Ã Â¹â€°Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸â€', 'Ã˜ÂªÃ™â€¦Ã˜Â§Ã™â€¦', 'Ã Â¤Â¸Ã Â¤Â¬', 'omnes', 'semua', 'Ã£Ââ„¢Ã£ÂÂ¹Ã£ÂÂ¦', 'Ã«ÂªÂ¨Ã«â€œÂ '),
(199, 'upload_&_restore_from_backup', 'upload & restore from backup', 'Ã Â¦â€ Ã Â¦ÂªÃ Â¦Â²Ã Â§â€¹Ã Â¦Â¡ &amp; Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦â€¢Ã Â¦â€ Ã Â¦Âª Ã Â¦Â¥Ã Â§â€¡Ã Â¦â€¢Ã Â§â€¡ Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¨Ã Â¦Æ’Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¾Ã Â¦ÂªÃ Â¦Â¨', 'cargar y restaurar copia de seguridad', 'Ã˜ÂªÃ˜Â­Ã™â€¦Ã™Å Ã™â€ž Ã™Ë†Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã™â€¦Ã™â€  Ã˜Â§Ã™â€žÃ™â€ Ã˜Â³Ã˜Â®Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â§Ã˜Â­Ã˜ÂªÃ™Å Ã˜Â§Ã˜Â·Ã™Å Ã˜Â©', 'uploaden en terugzetten van een backup', 'ÃÂ·ÃÂ°ÃÂ³Ã‘â‚¬Ã‘Æ’ÃÂ·ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¸ ÃÂ²ÃÂ¾Ã‘ÂÃ‘ÂÃ‘â€šÃÂ°ÃÂ½ÃÂ¾ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¸ÃÂ· Ã‘â‚¬ÃÂµÃÂ·ÃÂµÃ‘â‚¬ÃÂ²ÃÂ½ÃÂ¾ÃÂ¹ ÃÂºÃÂ¾ÃÂ¿ÃÂ¸ÃÂ¸', 'Ã¤Â¸Å Ã¤Â¼Â Ã¥ÂÅ Ã¤Â»Å½Ã¥Â¤â€¡Ã¤Â»Â½Ã¤Â¸Â­Ã¦ÂÂ¢Ã¥Â¤Â', 'yÃƒÂ¼kleyebilir ve yedekten geri yÃƒÂ¼kleme', 'fazer upload e restauraÃƒÂ§ÃƒÂ£o de backup', 'feltÃƒÂ¶lteni ÃƒÂ©s visszaÃƒÂ¡llÃƒÂ­tani backup', 'tÃƒÂ©lÃƒÂ©charger et restauration de la sauvegarde', 'ÃŽÂ±ÃŽÂ½ÃŽÂµÃŽÂ²ÃŽÂ¬ÃÆ’ÃŽÂµÃâ€žÃŽÂµ ÃŽÂºÃŽÂ±ÃŽÂ¹ ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬ ÃŽÂ±Ãâ‚¬ÃÅ’ backup', 'Upload &amp; Wiederherstellung von Backups', 'caricare e ripristinare dal backup', 'Ã Â¸Â­Ã Â¸Â±Ã Â¸â€ºÃ Â¹â€šÃ Â¸Â«Ã Â¸Â¥Ã Â¸â€Ã Â¹ÂÃ Â¸Â¥Ã Â¸Â°Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸ÂÃ Â¸â€žÃ Â¸Â·Ã Â¸â„¢Ã Â¸Ë†Ã Â¸Â²Ã Â¸ÂÃ Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â³Ã Â¸Â£Ã Â¸Â­Ã Â¸â€¡Ã Â¸â€šÃ Â¹â€°Ã Â¸Â­Ã Â¸Â¡Ã Â¸Â¹Ã Â¸Â¥', 'Ã˜Â§Ã™Â¾ Ã™â€žÃ™Ë†ÃšË† ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº Ã˜Â§Ã™Ë†Ã˜Â± Ã˜Â¨Ã›Å’ÃšÂ© Ã˜Â§Ã™Â¾ Ã˜Â³Ã›â€™ Ã˜Â¨Ã˜Â­Ã˜Â§Ã™â€ž', 'Ã Â¤â€¦Ã Â¤ÂªÃ Â¤Â²Ã Â¥â€¹Ã Â¤Â¡ Ã Â¤â€Ã Â¤Â° Ã Â¤Â¬Ã Â¥Ë†Ã Â¤â€¢Ã Â¤â€¦Ã Â¤Âª Ã Â¤Â¸Ã Â¥â€¡ Ã Â¤Â¬Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²', 'restituo ex tergum upload,', 'meng-upload &amp; restore dari backup', 'Ã£â€šÂ¢Ã£Æ’Æ’Ã£Æ’â€”Ã£Æ’Â­Ã£Æ’Â¼Ã£Æ’â€°Ã¯Â¼â€ Ã£Æ’ÂÃ£Æ’Æ’Ã£â€šÂ¯Ã£â€šÂ¢Ã£Æ’Æ’Ã£Æ’â€”Ã£Ââ€¹Ã£â€šâ€°Ã¥Â¾Â©Ã¥â€¦Æ’', 'Ã¬â€”â€¦Ã«Â¡Å“Ã«â€œÅ“ Ã«Â°Â Ã«Â°Â±Ã¬â€”â€¦Ã¬â€”ÂÃ¬â€žÅ“ Ã«Â³ÂµÃ¬â€ºÂ'),
(200, 'manage_profile', 'manage profile', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â¦Â«Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â²Ã Â¦Å¸Ã Â¦Â¿ Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¿Ã Â¦Å¡Ã Â¦Â¾Ã Â¦Â²Ã Â¦Â¨Ã Â¦Â¾', 'gestionar el perfil', 'Ã˜Â¥Ã˜Â¯Ã˜Â§Ã˜Â±Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã™â€žÃ™Â Ã˜Â§Ã™â€žÃ˜Â´Ã˜Â®Ã˜ÂµÃ™Å ', 'te beheren!', 'Ã‘Æ’ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ»Ã‘ÂÃ‘â€šÃ‘Å’ ÃÂ¿Ã‘â‚¬ÃÂ¾Ã‘â€žÃÂ¸ÃÂ»ÃÂµÃÂ¼', 'Ã§Â®Â¡Ã§Ââ€ Ã©â€¦ÂÃ§Â½Â®Ã¦â€“â€¡Ã¤Â»Â¶', 'profilini yÃƒÂ¶netmek', 'gerenciar o perfil', 'Profil kezelÃƒÂ©se', 'gÃƒÂ©rer le profil', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±Ãâ€¡ÃŽÂµÃŽÂ¹ÃÂÃŽÂ¹ÃÆ’Ãâ€žÃŽÂµÃŽÂ¯Ãâ€žÃŽÂµ Ãâ€žÃŽÂ¿ Ãâ‚¬ÃÂÃŽÂ¿Ãâ€ ÃŽÂ¯ÃŽÂ»', 'Profil verwalten', 'gestire il profilo', 'Ã Â¸Ë†Ã Â¸Â±Ã Â¸â€Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸Â£Ã Â¸Â²Ã Â¸Â¢Ã Â¸Â¥Ã Â¸Â°Ã Â¹â‚¬Ã Â¸Â­Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â€', 'Ã™Â¾Ã˜Â±Ã™Ë†Ã™ÂÃ˜Â§Ã˜Â¦Ã™â€ž ÃšÂ©Ã˜Â§ Ã™â€ Ã˜Â¸Ã™â€¦ ÃšÂ©Ã˜Â±Ã›Å’ÃšÂº', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¥â€¹Ã Â¤Â«Ã Â¤Â¾Ã Â¤â€¡Ã Â¤Â² Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â¬Ã Â¤â€šÃ Â¤Â§Ã Â¤Â¨', 'curo profile', 'mengelola profil', 'Ã£Æ’â€”Ã£Æ’Â­Ã£Æ’â€¢Ã£â€šÂ¡Ã£â€šÂ¤Ã£Æ’Â«Ã¯Â¼Ë†Ã¥â‚¬â€¹Ã¤ÂºÂºÃ¦Æ’â€¦Ã¥Â Â±Ã¯Â¼â€°Ã£ÂÂ®Ã§Â®Â¡Ã§Ââ€ ', 'Ã­â€â€žÃ«Â¡Å“Ã­â€¢â€ž (Ã«â€šÂ´ Ã¬Â â€¢Ã«Â³Â´) ÃªÂ´â‚¬Ã«Â¦Â¬'),
(201, 'update_profile', 'update profile', 'Ã Â¦ÂªÃ Â§ÂÃ Â¦Â°Ã Â§â€¹Ã Â¦Â«Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â² Ã Â¦â€ Ã Â¦ÂªÃ Â¦Â¡Ã Â§â€¡Ã Â¦Å¸', 'actualizar el perfil', 'Ã˜ÂªÃ˜Â­Ã˜Â¯Ã™Å Ã˜Â« Ã˜Â§Ã™â€žÃ™â€¦Ã™â€žÃ™Â Ã˜Â§Ã™â€žÃ˜Â´Ã˜Â®Ã˜ÂµÃ™Å ', 'Profiel bijwerken', 'ÃÂ¾ÃÂ±ÃÂ½ÃÂ¾ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¿Ã‘â‚¬ÃÂ¾Ã‘â€žÃÂ¸ÃÂ»Ã‘Å’', 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¤Â¸ÂªÃ¤ÂºÂºÃ¨Âµâ€žÃ¦â€“â„¢', 'profilinizi gÃƒÂ¼ncelleyin', 'atualizar o perfil', 'frissÃƒÂ­teni profil', 'mettre ÃƒÂ  jour le profil', 'ÃŽÂµÃŽÂ½ÃŽÂ·ÃŽÂ¼ÃŽÂµÃÂÃÅ½ÃÆ’ÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¿ Ãâ‚¬ÃÂÃŽÂ¿Ãâ€ ÃŽÂ¯ÃŽÂ»', 'Profil aktualisieren', 'aggiornare il profilo', 'Ã Â¸Â­Ã Â¸Â±Ã Â¸â€ºÃ Â¹â‚¬Ã Â¸â€Ã Â¸â€¢Ã Â¹â€šÃ Â¸â€ºÃ Â¸Â£Ã Â¹â€žÃ Â¸Å¸Ã Â¸Â¥Ã Â¹Å’', 'Ã™Â¾Ã˜Â±Ã™Ë†Ã™ÂÃ˜Â§Ã˜Â¦Ã™â€ž ÃšÂ©Ã™Ë† Ã˜Â§Ã™Â¾ ÃšË†Ã›Å’Ã™Â¹', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¥â€¹Ã Â¤Â«Ã Â¤Â¼Ã Â¤Â¾Ã Â¤â€¡Ã Â¤Â² Ã Â¤â€¦Ã Â¤ÂªÃ Â¤Â¡Ã Â¥â€¡Ã Â¤Å¸', 'magna eget ipsum', 'memperbarui profil', 'Ã£Æ’â€”Ã£Æ’Â­Ã£Æ’â€¢Ã£â€šÂ¡Ã£â€šÂ¤Ã£Æ’Â«Ã£â€šâ€™Ã¦â€ºÂ´Ã¦â€“Â°', 'Ã­â€â€žÃ«Â¡Å“Ã­â€¢â€žÃ¬Ââ€ž Ã¬â€”â€¦Ã«ÂÂ°Ã¬ÂÂ´Ã­Å Â¸'),
(202, 'new_password', 'new password', 'Ã Â¦Â¨Ã Â¦Â¤Ã Â§ÂÃ Â¦Â¨ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'nueva contraseÃƒÂ±a', 'Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã™â€¦Ã˜Â±Ã™Ë†Ã˜Â± Ã˜Â¬Ã˜Â¯Ã™Å Ã˜Â¯Ã˜Â©', 'nieuw wachtwoord', 'ÃÂ½ÃÂ¾ÃÂ²Ã‘â€¹ÃÂ¹ ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’', 'Ã¦â€“Â°Ã¥Â¯â€ Ã§Â Â', 'Yeni Ã…Å¸ifre', 'nova senha', 'ÃƒÅ¡j jelszÃƒÂ³', 'nouveau mot de passe', 'ÃŽÂ½ÃŽÂ­ÃŽÂ¿ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’', 'Neues Passwort', 'nuova password', 'Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢Ã Â¹Æ’Ã Â¸Â«Ã Â¸Â¡Ã Â¹Ë†', 'Ã™â€ Ã›Å’Ã˜Â§ Ã™Â¾Ã˜Â§Ã˜Â³ Ã™Ë†Ã˜Â±ÃšË†', 'Ã Â¤Â¨Ã Â¤Â¯Ã Â¤Â¾ Ã Â¤ÂªÃ Â¤Â¾Ã Â¤Â¸Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'novum password', 'kata sandi baru', 'Ã¦â€“Â°Ã£Ââ€”Ã£Ââ€žÃ£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°', 'Ã¬Æ’Ë† Ã¬â€¢â€Ã­ËœÂ¸'),
(203, 'confirm_new_password', 'confirm new password', 'Ã Â¦Â¨Ã Â¦Â¤Ã Â§ÂÃ Â¦Â¨ Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦Â¨Ã Â¦Â¿Ã Â¦Â¶Ã Â§ÂÃ Â¦Å¡Ã Â¦Â¿Ã Â¦Â¤ Ã Â¦â€¢Ã Â¦Â°Ã Â§ÂÃ Â¦Â¨', 'confirmar nueva contraseÃƒÂ±a', 'Ã˜ÂªÃ˜Â£Ã™Æ’Ã™Å Ã˜Â¯ Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â±Ã™Ë†Ã˜Â± Ã˜Â§Ã™â€žÃ˜Â¬Ã˜Â¯Ã™Å Ã˜Â¯Ã˜Â©', 'Bevestig nieuw wachtwoord', 'ÃÂ¿ÃÂ¾ÃÂ´Ã‘â€šÃÂ²ÃÂµÃ‘â‚¬ÃÂ´ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ½ÃÂ¾ÃÂ²Ã‘â€¹ÃÂ¹ ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’', 'Ã§Â¡Â®Ã¨Â®Â¤Ã¦â€“Â°Ã¥Â¯â€ Ã§Â Â', 'yeni parolayÃ„Â± onaylayÃ„Â±n', 'confirmar nova senha', 'erÃ…â€˜sÃƒÂ­tse meg az ÃƒÂºj jelszÃƒÂ³t', 'confirmer le nouveau mot de passe', 'ÃŽÂµÃâ‚¬ÃŽÂ¹ÃŽÂ²ÃŽÂµÃŽÂ²ÃŽÂ±ÃŽÂ¹ÃÅ½ÃÆ’ÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¿ ÃŽÂ½ÃŽÂ­ÃŽÂ¿ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’', 'BestÃƒÂ¤tigen eines neuen Kennwortes', 'conferma la nuova password', 'Ã Â¸Â¢Ã Â¸Â·Ã Â¸â„¢Ã Â¸Â¢Ã Â¸Â±Ã Â¸â„¢Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢Ã Â¹Æ’Ã Â¸Â«Ã Â¸Â¡Ã Â¹Ë†', 'Ã™â€ Ã˜Â¦Ã›â€™ Ã™Â¾Ã˜Â§Ã˜Â³ Ã™Ë†Ã˜Â±ÃšË† ÃšÂ©Ã›Å’ Ã˜ÂªÃ™Ë†Ã˜Â«Ã›Å’Ã™â€š', 'Ã Â¤Â¨Ã Â¤Â Ã Â¤ÂªÃ Â¤Â¾Ã Â¤Â¸Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¡ Ã Â¤â€¢Ã Â¥â‚¬ Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â·Ã Â¥ÂÃ Â¤Å¸Ã Â¤Â¿', 'confirma novum password', 'konfirmasi password baru', 'Ã¦â€“Â°Ã£Ââ€”Ã£Ââ€žÃ£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã§Â¢ÂºÃ¨ÂªÂ', 'Ã¬Æ’Ë† Ã¬â€¢â€Ã­ËœÂ¸Ã«Â¥Â¼ Ã­â„¢â€¢Ã¬ÂÂ¸Ã­â€¢Â©Ã«â€¹Ë†Ã«â€¹Â¤'),
(204, 'update_password', 'update password', 'Ã Â¦ÂªÃ Â¦Â¾Ã Â¦Â¸Ã Â¦â€œÃ Â¦Â¯Ã Â¦Â¼Ã Â¦Â¾Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡ Ã Â¦â€ Ã Â¦ÂªÃ Â¦Â¡Ã Â§â€¡Ã Â¦Å¸', 'actualizar la contraseÃƒÂ±a', 'Ã˜ÂªÃ˜Â­Ã˜Â¯Ã™Å Ã˜Â« Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â³Ã˜Â±', 'updaten wachtwoord', 'ÃÂ¾ÃÂ±ÃÂ½ÃÂ¾ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ ÃÂ¿ÃÂ°Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘Å’', 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¥Â¯â€ Ã§Â Â', 'ParolanÃ„Â±zÃ„Â± gÃƒÂ¼ncellemek', 'atualizar senha', 'frissÃƒÂ­ti jelszÃƒÂ³', 'mettre ÃƒÂ  jour le mot de passe', 'ÃŽÂµÃŽÂ½ÃŽÂ·ÃŽÂ¼ÃŽÂµÃÂÃÅ½ÃÆ’ÃŽÂµÃâ€žÃŽÂµ Ãâ€žÃŽÂ¿ÃŽÂ½ ÃŽÂºÃâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’ Ãâ‚¬ÃÂÃÅ’ÃÆ’ÃŽÂ²ÃŽÂ±ÃÆ’ÃŽÂ·Ãâ€š', 'Kennwort aktualisieren', 'aggiornare la password', 'Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â±Ã Â¸Å¡Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â¸Ã Â¸â€¡Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸Å“Ã Â¹Ë†Ã Â¸Â²Ã Â¸â„¢', 'Ã™Â¾Ã˜Â§Ã˜Â³ Ã˜Â§Ã™Â¾ ÃšË†Ã›Å’Ã™Â¹', 'Ã Â¤ÂªÃ Â¤Â¾Ã Â¤Â¸Ã Â¤ÂµÃ Â¤Â°Ã Â¥ÂÃ Â¤Â¡ Ã Â¤â€¦Ã Â¤Â¦Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¤Ã Â¤Â¨', 'scelerisque eget', 'memperbarui sandi', 'Ã£Æ’â€˜Ã£â€šÂ¹Ã£Æ’Â¯Ã£Æ’Â¼Ã£Æ’â€°Ã£â€šâ€™Ã¦â€ºÂ´Ã¦â€“Â°', 'Ã¬â€¢â€Ã­ËœÂ¸Ã«Â¥Â¼ Ã¬â€”â€¦Ã«ÂÂ°Ã¬ÂÂ´Ã­Å Â¸'),
(205, 'teacher_dashboard', 'teacher dashboard', 'Ã Â¦Â¶Ã Â¦Â¿Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦â€¢ Ã Â¦Â¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'tablero maestro', 'Ã™â€žÃ™Ë†Ã˜Â­Ã˜Â© Ã˜Â£Ã˜Â¬Ã™â€¡Ã˜Â²Ã˜Â© Ã˜Â§Ã™â€žÃ™â€šÃ™Å Ã˜Â§Ã˜Â³ Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â¹Ã™â€žÃ™â€¦', 'leraar dashboard', 'Ã‘Æ’Ã‘â€¡ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’ ÃÂ¿Ã‘â‚¬ÃÂ¸ÃÂ±ÃÂ¾Ã‘â‚¬ÃÂ½ÃÂ¾ÃÂ¹ ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»ÃÂ¸', 'Ã¨â‚¬ÂÃ¥Â¸Ë†Ã¤Â»ÂªÃ¨Â¡Â¨Ã¦ÂÂ¿', 'ÃƒÂ¶Ã„Å¸retmen pano', 'dashboard professor', 'tanÃƒÂ¡r mÃ…Â±szerfal', 'enseignant tableau de bord', 'Ãâ€žÃŽÂ±ÃŽÂ¼Ãâ‚¬ÃŽÂ»ÃÅ’ Ãâ€žÃâ€°ÃŽÂ½ ÃŽÂµÃŽÂºÃâ‚¬ÃŽÂ±ÃŽÂ¹ÃŽÂ´ÃŽÂµÃâ€¦Ãâ€žÃŽÂ¹ÃŽÂºÃÅ½ÃŽÂ½', 'Lehrer-Dashboard', 'dashboard insegnante', 'Ã Â¸ÂÃ Â¸Â£Ã Â¸Â°Ã Â¸â€Ã Â¸Â²Ã Â¸â„¢Ã Â¸â€žÃ Â¸Â£Ã Â¸Â¹', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â§Ã˜Â¯ ÃšË†Ã›Å’Ã˜Â´ Ã˜Â¨Ã™Ë†Ã˜Â±ÃšË†', 'Ã Â¤Â¶Ã Â¤Â¿Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â·Ã Â¤â€¢ Ã Â¤Â¡Ã Â¥Ë†Ã Â¤Â¶Ã Â¤Â¬Ã Â¥â€¹Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'magister Dashboard', 'dashboard guru', 'Ã¦â€¢â„¢Ã¥Â¸Â«Ã£ÂÂ®Ã£Æ’â‚¬Ã£Æ’Æ’Ã£â€šÂ·Ã£Æ’Â¥Ã£Æ’Å“Ã£Æ’Â¼Ã£Æ’â€°', 'ÃªÂµÂÃ¬â€šÂ¬ Ã«Å’â‚¬Ã¬â€¹Å“ Ã«Â³Â´Ã«â€œÅ“'),
(206, 'backup_restore_help', 'backup restore help', 'Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦â€¢Ã Â¦â€ Ã Â¦Âª Ã Â¦ÂªÃ Â§ÂÃ Â¦Â¨Ã Â¦Æ’Ã Â¦Â¸Ã Â§ÂÃ Â¦Â¥Ã Â¦Â¾Ã Â¦ÂªÃ Â¦Â¨ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â¯Ã Â§ÂÃ Â¦Â¯', 'copia de seguridad restaurar ayuda', 'Ã˜Â§Ã˜Â³Ã˜ÂªÃ˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€ Ã˜Â³Ã˜Â® Ã˜Â§Ã™â€žÃ˜Â§Ã˜Â­Ã˜ÂªÃ™Å Ã˜Â§Ã˜Â·Ã™Å  Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â³Ã˜Â§Ã˜Â¹Ã˜Â¯Ã˜Â©', 'backup helpen herstellen', 'ÃÂ²ÃÂ¾Ã‘ÂÃ‘ÂÃ‘â€šÃÂ°ÃÂ½ÃÂ¾ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â‚¬ÃÂµÃÂ·ÃÂµÃ‘â‚¬ÃÂ²ÃÂ½Ã‘Æ’Ã‘Å½ ÃÂºÃÂ¾ÃÂ¿ÃÂ¸Ã‘Å½ ÃÂ¿ÃÂ¾ÃÂ¼ÃÂ¾Ã‘â€°Ã‘Å’', 'Ã¥Â¤â€¡Ã¤Â»Â½Ã¦ÂÂ¢Ã¥Â¤ÂÃ§Å¡â€žÃ¥Â¸Â®Ã¥Å Â©', 'yedekleme yardÃ„Â±m geri', 'de backup restaurar ajuda', 'Backup Restore segÃƒÂ­tsÃƒÂ©gÃƒÂ©vel', 'restauration de sauvegarde de l''aide', 'ÃŽÂµÃâ‚¬ÃŽÂ±ÃŽÂ½ÃŽÂ±Ãâ€ ÃŽÂ¿ÃÂÃŽÂ¬Ãâ€š ÃŽÂ±ÃŽÂ½Ãâ€žÃŽÂ¹ÃŽÂ³ÃÂÃŽÂ¬Ãâ€ Ãâ€°ÃŽÂ½ ÃŽÂ±ÃÆ’Ãâ€ ÃŽÂ±ÃŽÂ»ÃŽÂµÃŽÂ¯ÃŽÂ±Ãâ€š ÃŽÂ²ÃŽÂ¿ÃŽÂ®ÃŽÂ¸ÃŽÂµÃŽÂ¹ÃŽÂ±', 'Backup wiederherstellen Hilfe', 'Backup Restore aiuto', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â³Ã Â¸Â£Ã Â¸Â­Ã Â¸â€¡Ã Â¸â€šÃ Â¹â€°Ã Â¸Â­Ã Â¸Â¡Ã Â¸Â¹Ã Â¸Â¥Ã Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸ÂÃ Â¸â€žÃ Â¸Â·Ã Â¸â„¢Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¸Å Ã Â¹Ë†Ã Â¸Â§Ã Â¸Â¢Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­', 'Ã˜Â¨Ã›Å’ÃšÂ© Ã˜Â§Ã™Â¾ ÃšÂ©Ã›Å’ Ã™â€¦Ã˜Â¯Ã˜Â¯ Ã˜Â¨Ã˜Â­Ã˜Â§Ã™â€ž', 'Ã Â¤Â¬Ã Â¥Ë†Ã Â¤â€¢Ã Â¤â€¦Ã Â¤Âª Ã Â¤Â®Ã Â¤Â¦Ã Â¤Â¦ Ã Â¤Â¬Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²', 'auxilium tergum restituunt', 'backup restore bantuan', 'Ã£Æ’ÂÃ£Æ’Æ’Ã£â€šÂ¯Ã£â€šÂ¢Ã£Æ’Æ’Ã£Æ’â€”Ã£Æ’ËœÃ£Æ’Â«Ã£Æ’â€”Ã£â€šâ€™Ã¥Â¾Â©Ã¥â€¦Æ’', 'Ã«Â°Â±Ã¬â€”â€¦ Ã«Ââ€žÃ¬â€ºâ‚¬Ã¬Ââ€ž Ã«Â³ÂµÃ¬â€ºÂ'),
(207, 'student_dashboard', 'student dashboard', 'Ã Â¦â€ºÃ Â¦Â¾Ã Â¦Â¤Ã Â§ÂÃ Â¦Â° Ã Â¦Â¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'salpicadero estudiante', 'Ã™â€žÃ™Ë†Ã˜Â­Ã˜Â© Ã˜Â§Ã™â€žÃ™â€šÃ™Å Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â·Ã™â€žÃ˜Â§Ã˜Â¨Ã™Å Ã˜Â©', 'student dashboard', 'Ã‘ÂÃ‘â€šÃ‘Æ’ÃÂ´ÃÂµÃÂ½Ã‘â€š ÃÂ¿Ã‘â‚¬ÃÂ¸ÃÂ±ÃÂ¾Ã‘â‚¬ÃÂ½ÃÂ¾ÃÂ¹ ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»ÃÂ¸', 'Ã¥Â­Â¦Ã§â€Å¸Ã§Å¡â€žÃ¤Â»ÂªÃ¨Â¡Â¨Ã¦ÂÂ¿', 'Ãƒâ€“Ã„Å¸renci paneli', 'dashboard estudante', 'tanulÃƒÂ³ mÃ…Â±szerfal', 'tableau de bord de l''ÃƒÂ©lÃƒÂ¨ve', 'Ãâ€žÃŽÂ±ÃŽÂ¼Ãâ‚¬ÃŽÂ»ÃÅ’ Ãâ€žÃâ€°ÃŽÂ½ Ãâ€ ÃŽÂ¿ÃŽÂ¹Ãâ€žÃŽÂ·Ãâ€žÃÅ½ÃŽÂ½', 'SchÃƒÂ¼ler Armaturenbrett', 'studente dashboard', 'Ã Â¹ÂÃ Â¸Å“Ã Â¸â€¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Å¡Ã Â¸â€žÃ Â¸Â¸Ã Â¸Â¡Ã Â¸â„¢Ã Â¸Â±Ã Â¸ÂÃ Â¹â‚¬Ã Â¸Â£Ã Â¸ÂµÃ Â¸Â¢Ã Â¸â„¢', 'Ã˜Â·Ã˜Â§Ã™â€žÃ˜Â¨ Ã˜Â¹Ã™â€žÃ™â€¦ ÃšÂ©Ã›â€™ ÃšË†Ã›Å’Ã˜Â´ Ã˜Â¨Ã™Ë†Ã˜Â±ÃšË†', 'Ã Â¤â€ºÃ Â¤Â¾Ã Â¤Â¤Ã Â¥ÂÃ Â¤Â° Ã Â¤Â¡Ã Â¥Ë†Ã Â¤Â¶Ã Â¤Â¬Ã Â¥â€¹Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'Discipulus Dashboard', 'dashboard mahasiswa', 'Ã¥Â­Â¦Ã§â€Å¸Ã£ÂÂ®Ã£Æ’â‚¬Ã£Æ’Æ’Ã£â€šÂ·Ã£Æ’Â¥Ã£Æ’Å“Ã£Æ’Â¼Ã£Æ’â€°', 'Ã­â€¢â„¢Ã¬Æ’Â Ã«Å’â‚¬Ã¬â€¹Å“ Ã«Â³Â´Ã«â€œÅ“'),
(208, 'parent_dashboard', 'parent dashboard', 'Ã Â¦â€¦Ã Â¦Â­Ã Â¦Â¿Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â¬Ã Â¦â€¢ Ã Â¦Â¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Â¶Ã Â¦Â¬Ã Â§â€¹Ã Â¦Â°Ã Â§ÂÃ Â¦Â¡', 'salpicadero padres', 'Ã™â€žÃ™Ë†Ã˜Â­Ã˜Â© Ã˜Â£Ã˜Â¬Ã™â€¡Ã˜Â²Ã˜Â© Ã˜Â§Ã™â€žÃ™â€šÃ™Å Ã˜Â§Ã˜Â³ Ã˜Â§Ã™â€žÃ˜Â£Ã™â€¦', 'ouder dashboard', 'Ã‘â‚¬ÃÂ¾ÃÂ´ÃÂ¸Ã‘â€šÃÂµÃÂ»Ã‘Å’ ÃÂ¿Ã‘â‚¬ÃÂ¸ÃÂ±ÃÂ¾Ã‘â‚¬ÃÂ½ÃÂ¾ÃÂ¹ ÃÂ¿ÃÂ°ÃÂ½ÃÂµÃÂ»ÃÂ¸', 'Ã¥Â®Â¶Ã©â€¢Â¿Ã¤Â»ÂªÃ¨Â¡Â¨Ã¦ÂÂ¿', 'ebeveyn kontrol paneli', 'dashboard pai', 'szÃƒÂ¼lÃ…â€˜ mÃ…Â±szerfal', 'parent tableau de bord', 'ÃŽÂ¼ÃŽÂ·Ãâ€žÃÂÃŽÂ¹ÃŽÂºÃŽÂ® Ãâ€žÃŽÂ±ÃŽÂ¼Ãâ‚¬ÃŽÂ»ÃÅ’', 'Mutter Armaturenbrett', 'dashboard genitore', 'Ã Â¹ÂÃ Â¸Å“Ã Â¸â€¡Ã Â¸â€žÃ Â¸Â§Ã Â¸Å¡Ã Â¸â€žÃ Â¸Â¸Ã Â¸Â¡Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€ºÃ Â¸ÂÃ Â¸â€žÃ Â¸Â£Ã Â¸Â­Ã Â¸â€¡', 'Ã™Ë†Ã˜Â§Ã™â€žÃ˜Â¯Ã›Å’Ã™â€  ÃšÂ©Ã›â€™ ÃšË†Ã›Å’Ã˜Â´ Ã˜Â¨Ã™Ë†Ã˜Â±ÃšË†', 'Ã Â¤Â®Ã Â¤Â¾Ã Â¤Â¤Ã Â¤Â¾ - Ã Â¤ÂªÃ Â¤Â¿Ã Â¤Â¤Ã Â¤Â¾ Ã Â¤Â¡Ã Â¥Ë†Ã Â¤Â¶Ã Â¤Â¬Ã Â¥â€¹Ã Â¤Â°Ã Â¥ÂÃ Â¤Â¡', 'Dashboard parent', 'orangtua dashboard', 'Ã¨Â¦ÂªÃ£Æ’â‚¬Ã£Æ’Æ’Ã£â€šÂ·Ã£Æ’Â¥', 'Ã«Â¶â‚¬Ã«ÂªÂ¨ Ã«Å’â‚¬Ã¬â€¹Å“ Ã«Â³Â´Ã«â€œÅ“'),
(209, 'view_marks', 'view marks', 'Ã Â¦Â¦Ã Â§â€¡Ã Â¦â€“Ã Â§ÂÃ Â¦Â¨ Ã Â¦Å¡Ã Â¦Â¿Ã Â¦Â¹Ã Â§ÂÃ Â¦Â¨', 'Vista marcas', 'Ã˜Â¹Ã™â€žÃ˜Â§Ã™â€¦Ã˜Â§Ã˜Âª Ã˜Â±Ã˜Â£Ã™Å ', 'view merken', 'ÃÂ²ÃÂ¸ÃÂ´ ÃÂ·ÃÂ½ÃÂ°ÃÂºÃÂ¸', 'Ã©â€°Â´Ã¤ÂºÅ½Ã¥â€¢â€ Ã¦Â â€¡', 'gÃƒÂ¶rÃƒÂ¼nÃƒÂ¼mÃƒÂ¼ iÃ…Å¸aretleri', 'vista marcas', 'view jelek', 'Vue marques', 'ÃÆ’ÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ± ÃŽÂ¬Ãâ‚¬ÃŽÂ¿ÃË†ÃŽÂ·', 'Ansicht Marken', 'Vista marchi', 'Ã Â¹â‚¬Ã Â¸â€žÃ Â¸Â£Ã Â¸Â·Ã Â¹Ë†Ã Â¸Â­Ã Â¸â€¡Ã Â¸Â«Ã Â¸Â¡Ã Â¸Â²Ã Â¸Â¢Ã Â¸Â¡Ã Â¸Â¸Ã Â¸Â¡Ã Â¸Â¡Ã Â¸Â­Ã Â¸â€¡', 'Ã˜Â¯Ã›Å’ÃšÂ©ÃšÂ¾Ã›Å’ÃšÂº Ã™â€ Ã˜Â´Ã˜Â§Ã™â€ Ã˜Â§Ã˜Âª', 'Ã Â¤Â¦Ã Â¥â€¡Ã Â¤â€“Ã Â¤Â¨Ã Â¥â€¡ Ã Â¤â€¢Ã Â¥â€¡ Ã Â¤Â¨Ã Â¤Â¿Ã Â¤Â¶Ã Â¤Â¾Ã Â¤Â¨', 'propter signa', 'lihat tanda', 'Ã£Æ’â€œÃ£Æ’Â¥Ã£Æ’Â¼Ã£Æ’Å¾Ã£Æ’Â¼Ã£â€šÂ¯', 'Ã«Â³Â´ÃªÂ¸Â° Ã«Â§Ë†Ã­ÂÂ¬'),
(210, 'delete_language', 'delete language', 'Ã Â¦Â­Ã Â¦Â¾Ã Â¦Â·Ã Â¦Â¾ Ã Â¦Â®Ã Â§ÂÃ Â¦â€ºÃ Â¦Â¤Ã Â§â€¡', 'eliminar el lenguaje', 'Ã˜Â­Ã˜Â°Ã™Â Ã˜Â§Ã™â€žÃ™â€žÃ˜ÂºÃ˜Â©', 'verwijderen taal', 'Ã‘Æ’ÃÂ´ÃÂ°ÃÂ»ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘ÂÃÂ·Ã‘â€¹ÃÂº', 'Ã¥Ë†Â Ã©â„¢Â¤Ã¨Â¯Â­Ã¨Â¨â‚¬', 'dili silme', 'excluir lÃƒÂ­ngua', 'tÃƒÂ¶rlÃƒÂ©se nyelv', 'supprimer la langue', 'ÃŽÂ´ÃŽÂ¹ÃŽÂ±ÃŽÂ³ÃÂÃŽÂ±Ãâ€ ÃŽÂ® ÃŽÂ³ÃŽÂ»ÃÅ½ÃÆ’ÃÆ’ÃŽÂ±', 'Sprache lÃƒÂ¶schen', 'eliminare lingua', 'Ã Â¸Â¥Ã Â¸Å¡Ã Â¸Â Ã Â¸Â²Ã Â¸Â©Ã Â¸Â²', 'Ã˜Â²Ã˜Â¨Ã˜Â§Ã™â€  ÃšÂ©Ã™Ë† Ã˜Â®Ã˜Â§Ã˜Â±Ã˜Â¬ ÃšÂ©Ã˜Â± Ã˜Â¯Ã›Å’ÃšÂº', 'Ã Â¤Â­Ã Â¤Â¾Ã Â¤Â·Ã Â¤Â¾ Ã Â¤â€¢Ã Â¥â€¹ Ã Â¤Â¹Ã Â¤Å¸Ã Â¤Â¾Ã Â¤Â¨Ã Â¤Â¾', 'linguam turpis', 'menghapus bahasa', 'Ã¨Â¨â‚¬Ã¨ÂªÅ¾Ã£â€šâ€™Ã¥â€°Å Ã©â„¢Â¤Ã£Ââ„¢Ã£â€šâ€¹', 'Ã¬â€“Â¸Ã¬â€“Â´Ã«Â¥Â¼ Ã¬â€šÂ­Ã¬Â Å“'),
(211, 'settings_updated', 'settings updated', 'Ã Â¦Â¸Ã Â§â€¡Ã Â¦Å¸Ã Â¦Â¿Ã Â¦â€šÃ Â¦Â¸ Ã Â¦â€ Ã Â¦ÂªÃ Â¦Â¡Ã Â§â€¡Ã Â¦Å¸', 'configuraciÃƒÂ³n actualizado', 'Ã˜Â§Ã™â€žÃ˜Â¥Ã˜Â¹Ã˜Â¯Ã˜Â§Ã˜Â¯Ã˜Â§Ã˜Âª Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â­Ã˜Â¯Ã˜Â«Ã˜Â©', 'instellingen bijgewerkt', 'ÃÂÃÂ°Ã‘ÂÃ‘â€šÃ‘â‚¬ÃÂ¾ÃÂ¹ÃÂºÃÂ¸ ÃÂ¾ÃÂ±ÃÂ½ÃÂ¾ÃÂ²ÃÂ»ÃÂµÃÂ½Ã‘â€¹', 'Ã¨Â®Â¾Ã§Â½Â®Ã¦â€ºÂ´Ã¦â€“Â°', 'ayarlarÃ„Â± gÃƒÂ¼ncellendi', 'definiÃƒÂ§ÃƒÂµes atualizadas', 'beÃƒÂ¡llÃƒÂ­tÃƒÂ¡sok frissÃƒÂ­tve', 'paramÃƒÂ¨tres mis ÃƒÂ  jour', 'ÃŽÂ¡Ãâ€¦ÃŽÂ¸ÃŽÂ¼ÃŽÂ¯ÃÆ’ÃŽÂµÃŽÂ¹Ãâ€š ÃŽÂµÃŽÂ½ÃŽÂ·ÃŽÂ¼ÃŽÂ­ÃÂÃâ€°ÃÆ’ÃŽÂ·', 'Einstellungen aktualisiert', 'impostazioni aggiornate', 'Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€¢Ã Â¸Â±Ã Â¹â€°Ã Â¸â€¡Ã Â¸â€žÃ Â¹Ë†Ã Â¸Â²Ã Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â±Ã Â¸Å¡Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â¸Ã Â¸â€¡', 'Ã˜ÂªÃ˜Â±Ã˜ÂªÃ›Å’Ã˜Â¨Ã˜Â§Ã˜Âª ÃšÂ©Ã›Å’ Ã˜ÂªÃ˜Â§Ã˜Â²Ã›Â ÃšÂ©Ã˜Â§Ã˜Â±Ã›Å’', 'Ã Â¤Â¸Ã Â¥â€¡Ã Â¤Å¸Ã Â¤Â¿Ã Â¤â€šÃ Â¤â€”Ã Â¥ÂÃ Â¤Â¸ Ã Â¤â€¦Ã Â¤Â¦Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¤Ã Â¤Â¨', 'venenatis eu', 'pengaturan diperbarui', 'Ã¨Â¨Â­Ã¥Â®Å¡Ã£ÂÅ’Ã¦â€ºÂ´Ã¦â€“Â°', 'Ã¬â€žÂ¤Ã¬Â â€¢Ã¬ÂÂ´ Ã¬â€”â€¦Ã«ÂÂ°Ã¬ÂÂ´Ã­Å Â¸'),
(212, 'update_phrase', 'update phrase', 'Ã Â¦â€ Ã Â¦ÂªÃ Â¦Â¡Ã Â§â€¡Ã Â¦Å¸ Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Å“', 'actualizaciÃƒÂ³n de la frase', 'Ã˜ÂªÃ˜Â­Ã˜Â¯Ã™Å Ã˜Â« Ã˜Â§Ã™â€žÃ˜Â¹Ã˜Â¨Ã˜Â§Ã˜Â±Ã˜Â©', 'Update zin', 'ÃÂ¾ÃÂ±ÃÂ½ÃÂ¾ÃÂ²ÃÂ»ÃÂµÃÂ½ÃÂ¸ÃÂµ Ã‘â€žÃ‘â‚¬ÃÂ°ÃÂ·ÃÂ°', 'Ã¦â€ºÂ´Ã¦â€“Â°Ã§Å¸Â­Ã¨Â¯Â­', 'gÃƒÂ¼ncelleme ifade', 'atualizaÃƒÂ§ÃƒÂ£o frase', 'frissÃƒÂ­tÃƒÂ©st kifejezÃƒÂ©s', 'mise ÃƒÂ  jour phrase', 'ÃŽÂµÃŽÂ½ÃŽÂ·ÃŽÂ¼ÃŽÂ­ÃÂÃâ€°ÃÆ’ÃŽÂ· Ãâ€ ÃÂÃŽÂ¬ÃÆ’ÃŽÂ·', 'Update Begriff', 'aggiornamento frase', 'Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â±Ã Â¸Å¡Ã Â¸â€ºÃ Â¸Â£Ã Â¸Â¸Ã Â¸â€¡Ã Â¸Â§Ã Â¸Â¥Ã Â¸Âµ', 'Ã˜Â§Ã™Â¾ ÃšË†Ã›Å’Ã™Â¹ Ã˜Â¬Ã™â€¦Ã™â€žÃ›Â', 'Ã Â¤â€¦Ã Â¤Â¦Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¤Ã Â¤Â¨ Ã Â¤ÂµÃ Â¤Â¾Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾Ã Â¤â€šÃ Â¤Â¶', 'eget dictum', 'frase pembaruan', 'Ã¦â€ºÂ´Ã¦â€“Â°Ã£Æ’â€¢Ã£Æ’Â¬Ã£Æ’Â¼Ã£â€šÂº', 'Ã¬â€”â€¦Ã«ÂÂ°Ã¬ÂÂ´Ã­Å Â¸ ÃªÂµÂ¬Ã«Â¬Â¸'),
(213, 'login_failed', 'login failed', 'Ã Â¦Â²Ã Â¦â€”Ã Â¦â€¡Ã Â¦Â¨ Ã Â¦Â¬Ã Â§ÂÃ Â¦Â¯Ã Â¦Â°Ã Â§ÂÃ Â¦Â¥ Ã Â¦Â¹Ã Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦â€ºÃ Â§â€¡', 'Error de acceso', 'Ã™ÂÃ˜Â´Ã™â€ž Ã˜ÂªÃ˜Â³Ã˜Â¬Ã™Å Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â¯Ã˜Â®Ã™Ë†Ã™â€ž', 'inloggen is mislukt', 'ÃÅ¾Ã‘Ë†ÃÂ¸ÃÂ±ÃÂºÃÂ° ÃÂ²Ã‘â€¦ÃÂ¾ÃÂ´ÃÂ°', 'Ã§â„¢Â»Ã¥Â½â€¢Ã¥Â¤Â±Ã¨Â´Â¥', 'giriÃ…Å¸ baÃ…Å¸arÃ„Â±sÃ„Â±z oldu', 'Falha no login', 'bejelentkezÃƒÂ©s sikertelen', 'Ãƒâ€°chec de la connexion', 'ÃŽâ€¢ÃŽÂ¯ÃÆ’ÃŽÂ¿ÃŽÂ´ÃŽÂ¿Ãâ€š ÃŽÂ±Ãâ‚¬ÃŽÂ­Ãâ€žÃâ€¦Ãâ€¡ÃŽÂµ', 'Fehler bei der Anmeldung', 'Accesso non riuscito', 'Ã Â¹â‚¬Ã Â¸â€šÃ Â¹â€°Ã Â¸Â²Ã Â¸ÂªÃ Â¸Â¹Ã Â¹Ë†Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡Ã Â¸Â¥Ã Â¹â€°Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â«Ã Â¸Â¥Ã Â¸Â§', 'Ã™â€žÃ˜Â§ÃšÂ¯ Ã˜Â§Ã™â€  Ã™â€ Ã˜Â§ÃšÂ©Ã˜Â§Ã™â€¦', 'Ã Â¤Â²Ã Â¥â€°Ã Â¤â€”Ã Â¤Â¿Ã Â¤Â¨ Ã Â¤ÂµÃ Â¤Â¿Ã Â¤Â«Ã Â¤Â²', 'tincidunt defecit', 'Login gagal', 'Ã£Æ’Â­Ã£â€šÂ°Ã£â€šÂ¤Ã£Æ’Â³Ã£ÂÂ«Ã¥Â¤Â±Ã¦â€¢â€”Ã£Ââ€”Ã£ÂÂ¾Ã£Ââ€”Ã£ÂÅ¸', 'Ã«Â¡Å“ÃªÂ·Â¸Ã¬ÂÂ¸ Ã¬â€¹Â¤Ã­Å’Â¨'),
(214, 'live_chat', 'live chat', 'Ã Â¦Â²Ã Â¦Â¾Ã Â¦â€¡Ã Â¦Â­ Ã Â¦Å¡Ã Â§ÂÃ Â¦Â¯Ã Â¦Â¾Ã Â¦Å¸', 'chat en vivo', 'Ã˜Â§Ã™â€žÃ˜Â¯Ã˜Â±Ã˜Â¯Ã˜Â´Ã˜Â© Ã˜Â§Ã™â€žÃ˜Â­Ã™Å Ã˜Â©', 'live chat', 'ÃÅ¾ÃÂ½ÃÂ»ÃÂ°ÃÂ¹ÃÂ½-Ã‘â€¡ÃÂ°Ã‘â€š', 'Ã¥ÂÂ³Ã¦â€”Â¶Ã¨ÂÅ Ã¥Â¤Â©', 'canlÃ„Â± sohbet', 'chat ao vivo', 'ÃƒÂ©lÃ…â€˜ chat', 'chat en direct', 'live chat', 'Live-Chat', 'live chat', 'Ã Â¸Â­Ã Â¸Â¢Ã Â¸Â¹Ã Â¹Ë†Ã Â¸ÂªÃ Â¸â„¢Ã Â¸â€”Ã Â¸â„¢Ã Â¸Â²', 'Ã™â€žÃ˜Â§Ã˜Â¦Ã›Å’Ã™Ë† Ãšâ€ Ã›Å’Ã™Â¹', 'Ã Â¤Â²Ã Â¤Â¾Ã Â¤â€¡Ã Â¤Âµ Ã Â¤Å¡Ã Â¥Ë†Ã Â¤Å¸', 'Vivamus nibh', 'live chat', 'Ã£Æ’Â©Ã£â€šÂ¤Ã£Æ’â€“Ã£Æ’ÂÃ£Æ’Â£Ã£Æ’Æ’Ã£Æ’Ë†', 'Ã«ÂÂ¼Ã¬ÂÂ´Ã«Â¸Å’ Ã¬Â±â€žÃ­Å’â€¦'),
(215, 'client 1', 'client 1', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â²Ã Â¦Â¾Ã Â¦Â¯Ã Â¦Â¼Ã Â§â€¡Ã Â¦Â¨Ã Â§ÂÃ Â¦Å¸Ã Â§â€¡Ã Â¦Â° 1', 'cliente 1', 'Ã˜Â§Ã™â€žÃ˜Â¹Ã™â€¦Ã™Å Ã™â€ž 1', 'client 1', 'ÃÅ¡ÃÂ»ÃÂ¸ÃÂµÃÂ½Ã‘â€š 1', 'Ã¥Â®Â¢Ã¦Ë†Â·Ã§Â«Â¯1', 'istemcisi 1', 'cliente 1', 'ÃƒÂ¼gyfÃƒÂ©l 1', 'client 1', 'Ãâ‚¬ÃŽÂµÃŽÂ»ÃŽÂ¬Ãâ€žÃŽÂ· 1', 'Client 1', 'client 1', 'Ã Â¸Â¥Ã Â¸Â¹Ã Â¸ÂÃ Â¸â€žÃ Â¹â€°Ã Â¸Â² 1', 'ÃšÂ©Ã™â€žÃ˜Â§Ã˜Â¦Ã™â€ Ã™Â¹ 1', 'Ã Â¤â€”Ã Â¥ÂÃ Â¤Â°Ã Â¤Â¾Ã Â¤Â¹Ã Â¤â€¢ 1', 'I huius', 'client 1', 'Ã£â€šÂ¯Ã£Æ’Â©Ã£â€šÂ¤Ã£â€šÂ¢Ã£Æ’Â³Ã£Æ’Ë†1', 'Ã­ÂÂ´Ã«ÂÂ¼Ã¬ÂÂ´Ã¬â€“Â¸Ã­Å Â¸ 1'),
(216, 'buyer', 'buyer', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Â¤Ã Â¦Â¾', 'comprador', 'Ã™â€¦Ã˜Â´Ã˜ÂªÃ˜Â±', 'koper', 'ÃÂ¿ÃÂ¾ÃÂºÃ‘Æ’ÃÂ¿ÃÂ°Ã‘â€šÃÂµÃÂ»Ã‘Å’', 'Ã¤Â¹Â°Ã¦â€“Â¹', 'alÃ„Â±cÃ„Â±', 'comprador', 'vevÃ…â€˜', 'acheteur', 'ÃŽÂ±ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ±ÃÆ’Ãâ€žÃŽÂ®Ãâ€š', 'KÃƒÂ¤ufer', 'compratore', 'Ã Â¸Å“Ã Â¸Â¹Ã Â¹â€°Ã Â¸â€¹Ã Â¸Â·Ã Â¹â€°Ã Â¸Â­', 'Ã˜Â®Ã˜Â±Ã›Å’Ã˜Â¯Ã˜Â§Ã˜Â±', 'Ã Â¤â€“Ã Â¤Â°Ã Â¥â‚¬Ã Â¤Â¦Ã Â¤Â¦Ã Â¤Â¾Ã Â¤Â°', 'qui emit,', 'pembeli', 'Ã£Æ’ÂÃ£â€šÂ¤Ã£Æ’Â¤Ã£Æ’Â¼', 'ÃªÂµÂ¬Ã«Â§Â¤Ã¬Å¾Â'),
(217, 'purchase_code', 'purchase code', 'Ã Â¦â€¢Ã Â§ÂÃ Â¦Â°Ã Â¦Â¯Ã Â¦Â¼ Ã Â¦â€¢Ã Â§â€¹Ã Â¦Â¡', 'cÃƒÂ³digo de compra', 'Ã™Æ’Ã™Ë†Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â´Ã˜Â±Ã˜Â§Ã˜Â¡', 'aankoop code', 'ÃÂ¿ÃÂ¾ÃÂºÃ‘Æ’ÃÂ¿ÃÂºÃÂ° ÃÂºÃÂ¾ÃÂ´', 'Ã§â€Â³Ã¨Â´Â­Ã¤Â»Â£Ã§Â Â', 'satÃ„Â±n alma kodu', 'cÃƒÂ³digo de compra', 'vÃƒÂ¡sÃƒÂ¡rlÃƒÂ¡si kÃƒÂ³dot', 'code d''achat', 'ÃŽÅ¡Ãâ€°ÃŽÂ´ÃŽÂ¹ÃŽÂºÃÅ’Ãâ€š ÃŽÂ±ÃŽÂ³ÃŽÂ¿ÃÂÃŽÂ¬', 'Kauf-Code', 'codice di acquisto', 'Ã Â¸Â£Ã Â¸Â«Ã Â¸Â±Ã Â¸ÂªÃ Â¸ÂÃ Â¸Â²Ã Â¸Â£Ã Â¸ÂªÃ Â¸Â±Ã Â¹Ë†Ã Â¸â€¡Ã Â¸â€¹Ã Â¸Â·Ã Â¹â€°Ã Â¸Â­', 'Ã˜Â®Ã˜Â±Ã›Å’Ã˜Â¯Ã˜Â§Ã˜Â±Ã›Å’ ÃšÂ©Ã›â€™ ÃšÂ©Ã™Ë†ÃšË†', 'Ã Â¤â€“Ã Â¤Â°Ã Â¥â‚¬Ã Â¤Â¦ Ã Â¤â€¢Ã Â¥â€¹Ã Â¤Â¡', 'Mauris euismod', 'kode pembelian', 'Ã¨Â³Â¼Ã¥â€¦Â¥Ã£â€šÂ³Ã£Æ’Â¼Ã£Æ’â€°', 'ÃªÂµÂ¬Ã«Â§Â¤ Ã¬Â½â€Ã«â€œÅ“'),
(218, 'system_email', 'system email', 'Ã Â¦Â¸Ã Â¦Â¿Ã Â¦Â¸Ã Â§ÂÃ Â¦Å¸Ã Â§â€¡Ã Â¦Â® Ã Â¦â€¡Ã Â¦Â®Ã Â§â€¡Ã Â¦â€¡Ã Â¦Â²', 'correo electrÃƒÂ³nico del sistema', 'Ã™â€ Ã˜Â¸Ã˜Â§Ã™â€¦ Ã˜Â§Ã™â€žÃ˜Â¨Ã˜Â±Ã™Å Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â¥Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â±Ã™Ë†Ã™â€ Ã™Å ', 'systeem e-mail', 'Ã‘ÂÃÂ¸Ã‘ÂÃ‘â€šÃÂµÃÂ¼ÃÂ° Ã‘ÂÃÂ»ÃÂµÃÂºÃ‘â€šÃ‘â‚¬ÃÂ¾ÃÂ½ÃÂ½ÃÂ¾ÃÂ¹ ÃÂ¿ÃÂ¾Ã‘â€¡Ã‘â€šÃ‘â€¹', 'Ã©â€šÂ®Ã¤Â»Â¶Ã§Â³Â»Ã§Â»Å¸', 'sistem e-posta', 'e-mail do sistema', 'a rendszer az e-mail', 'email de systÃƒÂ¨me', 'e-mail ÃÆ’Ãâ€¦ÃÆ’Ãâ€žÃŽÂ®ÃŽÂ¼ÃŽÂ±Ãâ€žÃŽÂ¿Ãâ€š', 'E-Mail-System', 'email sistema', 'Ã Â¸Â­Ã Â¸ÂµÃ Â¹â‚¬Ã Â¸Â¡Ã Â¸Â¥Ã Â¹Å’Ã Â¸Â£Ã Â¸Â°Ã Â¸Å¡Ã Â¸Å¡', 'Ã™â€ Ã˜Â¸Ã˜Â§Ã™â€¦ ÃšÂ©Ã›Å’ Ã˜Â§Ã›Å’ Ã™â€¦Ã›Å’Ã™â€ž', 'Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â°Ã Â¤Â£Ã Â¤Â¾Ã Â¤Â²Ã Â¥â‚¬ Ã Â¤Ë†Ã Â¤Â®Ã Â¥â€¡Ã Â¤Â²', 'Praesent sit amet', 'email sistem', 'Ã£â€šÂ·Ã£â€šÂ¹Ã£Æ’â€ Ã£Æ’Â Ã£ÂÂ®Ã©â€ºÂ»Ã¥Â­ÂÃ£Æ’Â¡Ã£Æ’Â¼Ã£Æ’Â«', 'Ã¬â€¹Å“Ã¬Å Â¤Ã­â€¦Å“ Ã¬Â â€žÃ¬Å¾Â Ã«Â©â€Ã¬ÂÂ¼'),
(219, 'option', 'option', 'Ã Â¦Â¬Ã Â¦Â¿Ã Â¦â€¢Ã Â¦Â²Ã Â§ÂÃ Â¦Âª', 'opciÃƒÂ³n', 'Ã˜Â®Ã™Å Ã˜Â§Ã˜Â±', 'optie', 'ÃÂ²ÃÂ°Ã‘â‚¬ÃÂ¸ÃÂ°ÃÂ½Ã‘â€š', 'Ã©â‚¬â€°Ã©Â¡Â¹', 'seÃƒÂ§enek', 'opÃƒÂ§ÃƒÂ£o', 'opciÃƒÂ³', 'option', 'ÃŽÂµÃâ‚¬ÃŽÂ¹ÃŽÂ»ÃŽÂ¿ÃŽÂ³ÃŽÂ®', 'Option', 'opzione', 'Ã Â¸â€¢Ã Â¸Â±Ã Â¸Â§Ã Â¹â‚¬Ã Â¸Â¥Ã Â¸Â·Ã Â¸Â­Ã Â¸ÂÃ Â¸â€”Ã Â¸ÂµÃ Â¹Ë†', 'Ã˜Â¢Ã™Â¾Ã˜Â´Ã™â€ ', 'Ã Â¤ÂµÃ Â¤Â¿Ã Â¤â€¢Ã Â¤Â²Ã Â¥ÂÃ Â¤Âª', 'optio', 'pilihan', 'Ã£â€šÂªÃ£Æ’â€”Ã£â€šÂ·Ã£Æ’Â§Ã£Æ’Â³', 'Ã¬â€žÂ Ã­Æ’ÂÃªÂ¶Å’'),
(220, 'edit_phrase', 'edit phrase', 'Ã Â¦Â¸Ã Â¦Â®Ã Â§ÂÃ Â¦ÂªÃ Â¦Â¾Ã Â¦Â¦Ã Â¦Â¨Ã Â¦Â¾ Ã Â¦Â«Ã Â§ÂÃ Â¦Â°Ã Â§â€¡Ã Â¦Å“', 'edit frase', 'Ã˜ÂªÃ˜Â­Ã˜Â±Ã™Å Ã˜Â± Ã˜Â§Ã™â€žÃ˜Â¹Ã˜Â¨Ã˜Â§Ã˜Â±Ã˜Â©', 'bewerk zin', 'ÃÂ¿Ã‘â‚¬ÃÂ°ÃÂ²ÃÂ¸Ã‘â€šÃ‘Å’ Ã‘â€žÃ‘â‚¬ÃÂ°ÃÂ·ÃÂ°', 'Ã§Â¼â€“Ã¨Â¾â€˜Ã¨Â¯Â­', 'edit ifade', 'ediÃƒÂ§ÃƒÂ£o frase', 'szerkesztÃƒÂ©s kifejezÃƒÂ©s', 'modifier phrase', 'edit Ãâ€ ÃÂÃŽÂ¬ÃÆ’ÃŽÂ·', 'edit Begriff', 'modifica frase', 'Ã Â¹ÂÃ Â¸ÂÃ Â¹â€°Ã Â¹â€žÃ Â¸â€šÃ Â¸Â§Ã Â¸Â¥Ã Â¸Âµ', 'Ã˜ÂªÃ˜Â±Ã™â€¦Ã›Å’Ã™â€¦ ÃšÂ©Ã›â€™ Ã˜Â¬Ã™â€¦Ã™â€žÃ›Â', 'Ã Â¤Â¸Ã Â¤â€šÃ Â¤ÂªÃ Â¤Â¾Ã Â¤Â¦Ã Â¤Â¿Ã Â¤Â¤ Ã Â¤ÂµÃ Â¤Â¾Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â¯Ã Â¤Â¾Ã Â¤â€šÃ Â¤Â¶', 'edit phrase', 'mengedit frase', 'Ã§Â·Â¨Ã©â€ºâ€ Ã£Æ’â€¢Ã£Æ’Â¬Ã£Æ’Â¼Ã£â€šÂº', 'Ã­Å½Â¸Ã¬Â§â€˜ ÃªÂµÂ¬'),
(221, 'forgot_your_password', 'Forgot Your Password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, 'forgot_password', 'Forgot Password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(223, 'back_to_login', 'Back To Login', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(224, 'return_to_login_page', 'Return to Login Page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(225, 'admit_student', 'Admit Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, 'admit_bulk_student', 'Admit Bulk Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(227, 'student_information', 'Student Information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, 'student_marksheet', 'Student Mark Sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, 'daily_attendance', 'Daily Attendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(230, 'exam_grades', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(231, 'message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(232, 'general_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(233, 'language_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(234, 'edit_profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(235, 'event_schedule', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(236, 'cancel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(237, 'addmission_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(238, 'value_required', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(239, 'select', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(240, 'gender', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(241, 'add_bulk_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(242, 'student_bulk_add_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 'select_excel_file', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(244, 'upload_and_import', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(245, 'manage_classes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 'manage_sections', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 'add_new_teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(248, 'section_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, 'nick_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(250, 'add_new_section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 'add_section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 'update', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, 'section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(254, 'select_class_first', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 'parent_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, 'relation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 'add_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, 'all_parents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, 'parents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(260, 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(261, 'add_new_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(262, 'all_students', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(263, 'view_marksheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(264, 'text_align', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(265, 'clickatell_username', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(266, 'clickatell_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(267, 'clickatell_api_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(268, 'sms_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, 'data_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(270, 'data_added_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(271, 'edit_notice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(272, 'private_messaging', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(273, 'messages', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(274, 'new_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(275, 'write_new_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(276, 'recipient', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(277, 'select_a_user', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(278, 'write_your_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(279, 'send', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(280, 'current_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(281, 'exam_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(282, 'marks_obtained', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(283, 'total_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(284, 'comments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(285, 'theme_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(286, 'select_theme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 'theme_selected', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(288, 'language_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(289, 'payment_cancelled', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(290, 'study_material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(291, 'download', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(292, 'select_a_theme_to_make_changes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(293, 'manage_daily_attendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(294, 'select_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(295, 'select_month', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(296, 'select_year', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(297, 'manage_attendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(298, 'twilio_account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(299, 'authentication_token', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(300, 'registered_phone_number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(301, 'select_a_service', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(302, 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 'disable_sms_service', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(304, 'not_selected', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(305, 'disabled', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(306, 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(307, 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(308, 'accounting', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 'income', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 'expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 'incomes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(312, 'invoice_informations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(313, 'payment_informations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(314, 'total', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(315, 'enter_total_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 'enter_payment_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(317, 'payment_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(318, 'method', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(319, 'cash', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(320, 'check', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(321, 'card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(322, 'data_deleted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(323, 'total_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 'take_payment', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(325, 'payment_history', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(326, 'amount_paid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(327, 'due', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(328, 'payment_successfull', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 'creation_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(330, 'invoice_entries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(331, 'paid_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(332, 'send_sms_to_all', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(333, 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 'no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 'activated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(336, 'sms_service_not_activated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(337, 'add_study_material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(338, 'file', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(339, 'file_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(340, 'select_file_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(341, 'image', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(342, 'doc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(343, 'pdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(344, 'excel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 'other', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(346, 'expenses', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(347, 'add_new_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 'add_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 'edit_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(350, 'total_mark', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(351, 'send_marks_by_sms', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(352, 'send_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 'select_receiver', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(354, 'students', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(355, 'marks_of', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 'for', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(357, 'message_sent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(358, 'expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(359, 'add_new_expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(360, 'add_expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(361, 'category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(362, 'select_expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(363, 'message_sent!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(364, 'reply_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(365, 'account_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(366, 'upload_logo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(367, 'upload', 'Upload', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(368, 'study_material_info_saved_successfuly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(369, 'edit_study_material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(370, 'default_theme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(371, 'default', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(372, 'tabulation_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(373, 'create_student_payment', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(374, 'student_payments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(375, 'update_product', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(376, 'install_update', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(377, 'transport_route', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(378, 'hour', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(379, 'minutes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(380, 'password_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(381, 'attendance_report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(382, 'select_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(383, 'manage_session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(384, 'academic_syllabus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(385, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(386, 'librarians', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(387, 'manage_alumni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(388, 'manage_media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(389, 'all_enquiries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(390, 'manage_loan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(391, 'manage_loan_applicants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(392, 'manage_loan_approvals', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(393, 'enquiry_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(394, 'accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(395, 'hostel_manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(396, 'generate_ID_cards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(397, 'subjects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(398, 'classs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(399, 'class_routines', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(400, 'school_clubs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(401, 'manage_circular', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(402, 'task_manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(403, 'study_materials', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(404, 'daily_attendances', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(405, 'manage_CBT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(406, 'add_exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(407, 'list_exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(408, 'view_result', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(409, 'exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(410, 'manage_exam_questions', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(411, 'assignments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(412, 'libraries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(413, 'transports', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(414, 'dormitories', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(415, 'noticeboards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(416, 'manage_holiday', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(417, 'manage_thoughts', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(418, 'front_end_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(419, 'manage_banners', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(420, 'system_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(421, 'news_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(422, 'manage_help_link', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(423, 'manage_help_desks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(424, 'manage_account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(425, 'librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(426, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(427, 'all_enquries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(428, 'all_messages', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, 'Charts', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(430, 'transportations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(431, 'syllabus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(432, 'all_news', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(433, 'exam_question', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(434, 'thoughts', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(435, 'all_invoice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(436, 'help_desk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(437, 'results', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(438, 'enquiry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(439, 'media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(440, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(441, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(442, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(443, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(444, 'marks_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(445, 'update_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(446, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(447, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(448, 'view_tabulation_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(449, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(450, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(451, 'class score', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(452, 'exam score', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(453, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(454, 'TOTALS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(455, 'print_tabulation_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(456, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(457, 'TOTALS: ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(458, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(459, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(460, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(461, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(462, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(463, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(464, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(465, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(466, 'manage_librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(467, 'librarian_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(468, 'add_new_librarian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(469, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(470, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(471, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(472, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(473, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(474, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(475, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(476, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(477, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(478, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(479, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(480, 'generate_mass_report_card_for_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(481, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(482, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(483, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(484, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(485, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(486, 'grade_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(487, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(488, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(489, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(490, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(491, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(492, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(493, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(494, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(495, 'academic_syllabus_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(496, 'add_academic_syllabus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(497, 'uploader', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(498, 'date_submitted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(499, 'file_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(500, 'download_document', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(501, 'teacher_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(502, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(503, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(504, 'student_promotion', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(505, 'ID Card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(506, 'Accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(507, 'all_enquiry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(508, 'all_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(509, 'New_Students', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(510, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(511, 'Submit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(512, 'student_id_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(513, 'staff_id_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(514, 'manage_hostel_id_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(515, 'ID_card_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(516, 'add_new_hostel_manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(517, 'genereate_ID_cards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(518, 'delete_hostel_manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(519, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(520, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(521, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(522, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(523, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(524, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(525, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(526, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(527, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(528, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(529, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(530, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(531, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(532, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(533, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(534, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(535, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(536, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(537, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(538, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(539, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(540, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(541, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(542, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(543, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(544, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(545, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(546, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(547, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(548, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(549, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(550, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(551, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(552, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(553, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(554, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(555, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(556, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(557, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(558, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(559, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(560, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(561, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(562, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(563, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(564, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(565, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(566, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(567, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(568, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(569, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(570, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(571, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(572, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(573, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(574, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(575, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(576, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(577, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(578, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(579, 'photo_added_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(580, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(581, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(582, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(583, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(584, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(585, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(586, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(587, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(588, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(589, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(590, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(591, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(592, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(593, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(594, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(595, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(596, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(597, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(598, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(599, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(600, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(601, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(602, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(603, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(604, 'staff_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(605, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(606, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(607, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(608, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(609, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(610, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(611, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(612, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(613, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(614, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(615, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(616, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(617, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(618, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(619, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(620, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(621, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(622, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(623, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(624, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(625, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(626, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(627, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(628, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(629, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(630, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(631, 'manage_hostel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(632, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(633, 'hestel_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(634, 'add_new_hostel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(635, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(636, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(637, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(638, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(639, 'save_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(640, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(641, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(642, 'student_promotion_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(643, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(644, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(645, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(646, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(647, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(648, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(649, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(650, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(651, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(652, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(653, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(654, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(655, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(656, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(657, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(658, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(659, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(660, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(661, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(662, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(663, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(664, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(665, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(666, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(667, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(668, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(669, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(670, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(671, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(672, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(673, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(674, 'exam_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(675, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(676, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(677, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(678, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(679, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(680, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(681, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(682, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(683, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(684, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(685, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(686, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(687, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(688, 'manage_enquiries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(689, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(690, 'enquiry_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(691, 'mobile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(692, 'purpose', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(693, 'who_to_visit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(694, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(695, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(696, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(697, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(698, 'student_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(699, 'mark_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(700, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(701, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(702, 'manage_session_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(703, 'session_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(704, 'add_session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(705, 'session_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(706, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(707, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(708, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(709, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(710, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(711, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(712, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(713, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(714, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(715, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(716, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(717, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(718, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(719, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(720, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(721, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(722, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(723, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(724, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(725, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(726, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(727, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(728, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(729, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(730, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(731, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(732, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(733, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(734, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(735, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(736, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(737, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(738, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(739, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(740, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(741, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(742, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(743, 'teacher_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(744, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(745, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(746, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(747, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(748, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(749, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(750, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(751, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(752, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(753, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(754, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(755, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(756, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(757, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(758, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(759, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(760, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(761, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(762, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(763, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(764, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(765, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(766, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(767, 'hostel_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(768, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(769, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(770, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(771, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(772, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(773, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(774, 'accountant_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(775, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(776, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(777, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(778, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(779, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(780, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(781, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(782, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(783, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(784, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(785, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(786, 'manage_accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(787, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(788, 'accountant_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(789, 'add_new_accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(790, 'edit_accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(791, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(792, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(793, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(794, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(795, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(796, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(797, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(798, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(799, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(800, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(801, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(802, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(803, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(804, 'librarian_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(805, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(806, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(807, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(808, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(809, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(810, 'exam_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(811, 'exam_class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(812, 'exam_subject', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(813, 'exam_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(814, 'session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(815, 'question_count', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(816, 'exam_duration', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(817, 'continue', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(818, 'ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(819, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(820, 'LIBRARIAN ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(821, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(822, 'ACCOUNTANT ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(823, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(824, 'HOSTEL MANAGER ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(825, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(826, 'STUDENT ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(827, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(828, 'TEACHER ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(829, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(830, 'LIBRARIAN"S ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(831, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(832, 'LIBRARIANS ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(833, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(834, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(835, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(836, 'book_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(837, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(838, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(839, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(840, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(841, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(842, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(843, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(844, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(845, 'alumni_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(846, 'add_new_alumni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(847, 'graduation_year', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(848, 'school_club', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(849, 'add_alumni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(850, 'marital_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(851, 'graduation_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(852, 'hobbies', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(853, 'HOSTEL MANAGERS ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(854, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(855, 'STUDENTS ID CARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(856, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(857, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(858, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(859, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(860, 'manage_club', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(861, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(862, 'parent_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(863, 'club_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(864, 'add_club', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(865, 'club_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(866, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(867, 'list_all_exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(868, 'duration', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(869, 'exam_result', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(870, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(871, 'marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(872, 'view_detail', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(873, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(874, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(875, 'manage_loan_approval', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(876, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(877, 'loan_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(878, 'add_loan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(879, 'staff_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(880, 'loan_duration', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(881, 'mode_of_payment', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(882, 'guarantor_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(883, 'number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(884, 'collateral_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(885, 'colateral_value', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(886, 'download_files', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(887, 'update_loan_approval', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(888, 'Approved', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(889, 'Disapproved', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(890, 'Pending', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(891, 'update_loan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(892, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(893, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(894, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(895, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(896, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(897, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(898, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(899, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(900, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(901, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(902, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(903, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(904, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(905, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(906, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(907, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(908, 'payment_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(909, 'create_single_invoice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(910, 'create_mass_invoice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(911, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(912, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(913, 'marksheet_for', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(914, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(915, 'average_grade_point', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(916, 'print_marksheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(917, 'online_CBT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(918, 'my_CBT_results', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(919, 'view_media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(920, 'view_news', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(921, 'todays_thought', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(922, 'holiday', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(923, 'helpful_link', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(924, 'help_desks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(925, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(926, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(927, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(928, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(929, 'media_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(930, 'add_media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(931, 'watch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(932, 'edit_media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(933, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(934, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(935, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(936, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(937, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(938, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(939, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(940, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(941, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(942, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(943, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(944, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(945, 'Preview Image', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(946, 'media_link', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(947, 'Video', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(948, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(949, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(950, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(951, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(952, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(953, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(954, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(955, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(956, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(957, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(958, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(959, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(960, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(961, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(962, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(963, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(964, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(965, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(966, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(967, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(968, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(969, 'Watching', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(970, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(971, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(972, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(973, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(974, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(975, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(976, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(977, 'Watching_media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(978, 'all_media_images_and_videos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(979, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(980, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(981, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(982, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(983, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(984, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(985, 'hostel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(986, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(987, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(988, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(989, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(990, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(991, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(992, 'holidays', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(993, 'submit_exam_questions', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(994, 'apply_for_loan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(995, 'loan_approval_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(996, 'loan_application', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(997, 'attendance_information_page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(998, 'save_changes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(999, 'loan_applicant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1000, 'loan_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1001, 'payment_mode', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1002, 'relationship', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1003, 'guarantor_number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1004, 'guarantor_address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1005, 'guanrator_country', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1006, 'collaral_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1007, 'collaral_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1008, 'collaral_model', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1009, 'collaral_make', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1010, 'serial_number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1011, 'collateral_value', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1012, 'condition', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1013, 'collateral_documents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1014, 'apply_now', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1015, 'loan_application_submitted_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1016, 'hostel_dashboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1017, 'hostel_managers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1018, 'manage_hostels', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1019, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1020, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1021, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1022, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1023, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1024, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1025, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1026, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1027, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1028, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1029, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1030, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1031, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1032, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1033, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1034, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1035, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1036, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1037, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1038, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1039, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1040, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1041, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1042, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1043, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1044, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1045, 'news', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1046, 'helpful_links', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1047, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1048, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1049, 'librarian_dashboard', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1050, 'manage_books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1051, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1052, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1053, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1054, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1055, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1056, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1057, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1058, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1059, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1060, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1061, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1062, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1063, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1064, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1065, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1066, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1067, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1068, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1069, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1070, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1071, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1072, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1073, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1074, 'Accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1075, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1076, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1077, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1078, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1079, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1080, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1081, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1082, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1083, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1084, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1085, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1086, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1087, 'accountant', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1088, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1089, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1090, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1091, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1092, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1093, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1094, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1095, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1096, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1097, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1098, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1099, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1100, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1101, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1102, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1103, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1104, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1105, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1106, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1107, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1108, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1109, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1110, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1111, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1112, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1113, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1114, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1115, 'SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1116, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1117, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1118, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1119, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1120, 'running_session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1121, 'system_footer', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1122, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1123, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1124, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1125, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1126, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1127, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1128, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1129, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1130, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1131, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1132, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1133, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE IF NOT EXISTS `librarian` (
  `librarian_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`librarian_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES
(2, 'LIBRARIAN', '07/09/2018', 'male', '', '', 'federal college of education', '08033527716', 'librarian@librarian.com', 'librarian', ''),
(4, 'AKINADE AYODEJI AYOTUNDE', '06/09/2014', 'male', '', '', 'federal college of education', '08033527716', 'segun@gmail.com', 'segun', '');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `l_duration` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mop` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_relationship` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_country` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `make` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `serial_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `condition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `staff_name`, `amount`, `purpose`, `l_duration`, `mop`, `g_name`, `g_relationship`, `g_number`, `g_address`, `g_country`, `c_name`, `c_type`, `model`, `make`, `serial_number`, `value`, `condition`, `date`, `status`, `file_name`) VALUES
(3, 'teacher 2', '1000', 'I WANT TO USE TO PAY FOR MY SCHOOL CHILDREN SCHOOL FEES', 'Daily', 'MODE OF PAYMENT HERE', 'MR OPTIMUMLINKUP', 'FAMILY', 'NUMBER', 'G ADDRESS', 'G COUNTRY', 'COLLATERAL NAME', 'C TYPE', 'C MODEL', 'C MAKE', 'C SERIAL NYMEBNER', '6', 'Daily', 'Fri, 07 July 2017', 'Pending', ''),
(5, 'teacher', '1000000', 'FOR WEDDING CEREMONY', 'Eight Months', 'Yearly', 'OMOLOLU', 'FAMILY', '081789644', 'G ADDRESS', 'COUNTRY', 'c name', 'c type', 'C MOD', 'C MAKE', 'C SERIAL NYMEBNER', '700000', 'Monthly', 'Wed, 12 July 2017', 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`, `class_score`) VALUES
(1, 8, 6, 3, 1, 45, 100, '', 29),
(2, 9, 6, 3, 1, 70, 100, '', 19),
(3, 10, 6, 3, 1, 0, 100, '', 9),
(4, 12, 6, 3, 1, 0, 100, '', 8),
(5, 14, 6, 3, 1, 70, 100, '', 10),
(6, 5, 1, 2, 1, 70, 100, 'good', 30),
(7, 11, 1, 2, 1, 70, 100, '', 25),
(8, 13, 1, 2, 1, 70, 100, '', 4),
(9, 5, 2, 2, 2, 45, 100, '', 12),
(10, 11, 2, 2, 2, 10, 100, '', 24),
(11, 13, 2, 2, 2, 20, 100, '', 5),
(12, 15, 2, 2, 2, 8, 100, '', 5),
(14, 5, 1, 2, 2, 12, 100, '', 21),
(15, 11, 1, 2, 2, 45, 100, '', 23),
(16, 13, 1, 2, 2, 36, 100, '', 5),
(17, 15, 1, 2, 2, 70, 100, '', 5),
(18, 5, 4, 2, 2, 69, 100, '', 7),
(19, 11, 4, 2, 2, 68, 100, '', 7),
(20, 13, 4, 2, 2, 45, 100, '', 7),
(21, 15, 4, 2, 2, 45, 100, '', 9),
(22, 8, 5, 3, 1, 63, 100, '', 10),
(23, 8, 5, 3, 2, 45, 100, '', 23),
(24, 8, 6, 3, 2, 65, 100, '', 7),
(25, 5, 2, 2, 1, 60, 100, 'keep it up', 29),
(26, 5, 4, 2, 1, 70, 100, 'good', 22),
(27, 2, 1, 2, 1, 78, 100, '', 12),
(28, 2, 2, 2, 1, 23, 100, '', 23),
(29, 2, 4, 2, 1, 12, 100, '', 7),
(30, 11, 2, 2, 1, 12, 100, '', 30),
(31, 11, 4, 2, 1, 65, 100, '', 30),
(32, 13, 2, 2, 1, 45, 100, '', 5),
(33, 13, 4, 2, 1, 45, 100, '', 17),
(34, 14, 5, 3, 1, 70, 100, '', 30),
(35, 8, 4, 2, 1, 78, 100, '', 18),
(36, 15, 1, 2, 1, 56, 100, '', 12),
(37, 15, 2, 2, 1, 56, 100, '', 12),
(38, 15, 4, 2, 1, 45, 100, '', 23),
(39, 9, 5, 3, 2, 56, 100, '', 25),
(40, 9, 6, 3, 2, 45, 100, '', 28),
(41, 9, 5, 3, 1, 45, 100, '', 30),
(42, 14, 5, 3, 2, 45, 100, '', 12),
(43, 14, 6, 3, 2, 54, 100, '', 14);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mlink` longtext NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `title`, `description`, `file_name`, `file_type`, `mlink`, `class_id`, `teacher_id`, `timestamp`) VALUES
(3, 'Youtube Video', 'THIS IS THE END PARTY SHOW FOR ALL CLASSES', 'a.jpg', '', '', '3', '', 'Wed, 13 September 2017');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE IF NOT EXISTS `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `date`, `news_content`) VALUES
(3, 'INFORMATION ABOUT OMOLOU ESTHER IS CORRECT THAT SHE LOVES SEGUN', '23:12:12 PM', 'MARO RARA SHE IS JUST PRETENDING OOOOO');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'hi', 'today', 1495065600),
(2, 'Holiday', 'We are going on holidays soon', 1498867200);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES
(1, 'parent', 'parent@parent.com', 'parent', '08033527716', 'federal college of education', 'Lecturer', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `timestamp`) VALUES
(1, 0, 'PAYMENT FOR SCHOOL FEES', 'income', 1, 5, '2', 'PAYMENT FOR SCHOOL FEES', '500000', '1499472000'),
(2, 5, 'PURCHASE OF SCHOOL CHALK', 'expense', 0, 0, '1', 'WE ARE HAVE JUST PURCHASE SCHOO CHALK NOW', '4000', '1499458620'),
(4, 0, 'SCHOOL FEES REPORT', 'income', 2, 15, '3', 'PAYMENT SCHOOL FEES REPORT', '4000', '1504224000');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `question_count` int(11) DEFAULT NULL,
  `duration` int(5) DEFAULT NULL,
  `question` text,
  `correct_answers` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(1, 'FIRST', 'TERM', 1, 2),
(2, 'FIRST TERM', 'FIRST TERM', 2, 2),
(3, 'FIRST TERM', 'FIRST TERM', 3, 4),
(4, 'SECOND TERM', '2ND TERM', 3, 2),
(5, '2015-2016', 'Current Session', 4, 2),
(6, 'SECON TERM', 'SECON TERM', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `name`) VALUES
(3, '2016-2017'),
(4, '2017-2018'),
(5, '2018-2019'),
(6, '2019-2020'),
(7, '2020-2021'),
(8, '2021-2022'),
(9, '2022-2023'),
(10, '2023-2024'),
(11, '2024-2025'),
(12, '2025-2026'),
(13, '2026-2027'),
(14, '2027-2028'),
(15, '2028-2029'),
(16, '2029-2030');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'OPTIMUM LINKUP SCHOOL SYSTEMS'),
(2, 'system_title', 'OPTIMUM SCHOOL SYSTEM'),
(3, 'address', '546, SILICON VALLEY TORONTO, CANADA'),
(4, 'phone', '+1564783934'),
(5, 'paypal_email', 'optimumproblemsolver@gmail.com'),
(6, 'currency', '$'),
(7, 'system_email', 'optimumproblemsolver@gmail.com'),
(20, 'active_sms_service', 'twilio'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(13, 'clickatell_user', ''),
(14, 'clickatell_password', ''),
(15, 'clickatell_api_id', ''),
(16, 'skin_colour', 'default'),
(17, 'twilio_account_sid', ''),
(18, 'twilio_auth_token', ''),
(19, 'twilio_sender_phone_number', ''),
(21, 'session', '2016-2017'),
(22, 'footer', 'Developed by Optimum Linkup Computers. All Right Reserved (2017)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`) VALUES
(5, 'TUNDE ALOWO A', '06/20/2014', 'female', '', '', 'IJEBU ODE OGUN STATE', '08033527716', 'tunde@tunde.com', 'tunde', '', '', '2', 2, 1, 'ROLL', 1, 1, '', ''),
(8, 'Royce Miller', '06/06/2018', 'female', '', '', 'FEDERAL COLLEGE OF EDUCATION, OSIELE ABEOKUTA OGUN STATE', '08033527716', 'royce@gmail.com', 'royce', '', '', '3', 3, 1, 'ROLL', 1, 3, '', ''),
(9, 'ADE', '06/11/2014', 'male', '', '', 'FEDERALCOLLEGE OFE', '080', 'segtism@gmat.omc', 'iuhkj,', '', '', '3', 4, 1, '', 1, 1, '', ''),
(11, 'kemi', '09/18/2017', 'female', '', '', 'FEDERALCOLLEGE OFE', '08054544545', 'kemi@kemi.com', 'kemi', '', '', '2', 2, 1, 'roll', 1, 1, '', ''),
(12, 'kemi', '07/15/2015', 'male', '', '', 'FEDERALCOLLEGE OFE', '08054544545', 'kemi2@kem2i.com', 'kemi', '', '', '4', 5, 1, '', 1, 1, '', ''),
(13, 'test', '06/10/2014', 'male', '', '', 'FEDERALCOLLEGE OFE', '08054544545', 'test@test.com', 'test', '', '', '2', 2, 1, '', 0, 1, '', ''),
(14, 'segun', '06/17/2014', '', '', '', 'FEDERALCOLLEGE OFE', '08054544545', 'segun@segun.com', 'segun', '', '', '3', 3, 1, '', 0, 0, '', ''),
(15, 'Student', '09/12/2017', 'male', '', '', 'Student Address', '08054544545', 'student@student.com', 'student', '', '', '2', 2, 1, '', 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'Mathematics', 2, 2),
(2, 'Economics', 2, 2),
(4, 'Social Studies', 2, 2),
(5, 'Science', 3, 2),
(6, 'Mathematics', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `task_manager`
--

CREATE TABLE IF NOT EXISTS `task_manager` (
  `task_manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `priority` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`task_manager_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `task_manager`
--

INSERT INTO `task_manager` (`task_manager_id`, `name`, `description`, `priority`, `date`, `user`, `status`) VALUES
(1, 'CLEANING OF TOILET TODAY', 'YOU HAVE BEEN ASSIGNMENT OF WATCH THE STAFF TOILET TODAY', 'Normal', 'Fri, 14 July 2017', 'parent-OMMOLOLU ESTHER ', 'Open'),
(3, 'THIS IS ANOTHER ONE', 'YOU ARE EXPECTED TO HAVE UNDERSTOOD THE INFOMATION I SENT EARLIER', 'Low', 'Thu, 13 July 2017', 'parent-AKINADE AYODEJI AYOTUNDE', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES
(2, 'teacher', '08/28/2018', 'male', '', '', '2, ABUJA STREE, OSIELE ABOEKUTA OGUN STATE. I LOVE THIS PLATFORM. THIS IS COOL FOREVER', '08033527716', 'teacher@teacher.com', 'teacher', ''),
(4, 'Optimum', '06/03/2014', 'female', '', '', 'TORONTO, CANADA', '+1564783934', 'canada@gmail..com', 'canada', ''),
(5, 'man', '09/04/2017', 'male', '', '', 'man', '0803357716', 'man@man.com', 'man', '');

-- --------------------------------------------------------

--
-- Table structure for table `todays_thought`
--

CREATE TABLE IF NOT EXISTS `todays_thought` (
  `tthought_id` int(11) NOT NULL AUTO_INCREMENT,
  `thought` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tthought_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `todays_thought`
--

INSERT INTO `todays_thought` (`tthought_id`, `thought`, `date`) VALUES
(1, 'be yourself alwatys', '2017-07-18 17:19:35'),
(2, 'You will sure make it if your believ', '2017-07-05 17:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `route_name`, `number_of_vehicle`, `description`, `route_fare`) VALUES
(1, 'Lagos', '400GL', 'Long Distance', '500');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
