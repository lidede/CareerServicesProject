-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-01 21:29:55
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `student_form`
--

CREATE TABLE `student_form` (
  `ID` varchar(255) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Phone_Number` varchar(12) NOT NULL,
  `Arrival` varchar(6) NOT NULL,
  `VisitType` varchar(15) NOT NULL,
  `EnrollmentTime` varchar(15) NOT NULL,
  `EnrollmentStatus` varchar(15) NOT NULL,
  `Career_Counseling` varchar(255) DEFAULT NULL,
  `Job_Searching` varchar(255) DEFAULT NULL,
  `Resume` varchar(255) DEFAULT NULL,
  `Cover_Letter` varchar(255) DEFAULT NULL,
  `Mock_Interview` varchar(255) DEFAULT NULL,
  `Internship_Information` varchar(255) DEFAULT NULL,
  `Transition_to_Kean` varchar(255) DEFAULT NULL,
  `Sophmore_Seminar` varchar(255) DEFAULT NULL,
  `Junior_Seminar` varchar(255) DEFAULT NULL,
  `Senior_Seminar` varchar(255) DEFAULT NULL,
  `Career` varchar(255) DEFAULT NULL,
  `Cops_Test` varchar(255) DEFAULT NULL,
  `Myers_Briggs` varchar(255) DEFAULT NULL,
  `Approved` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `student_form`
--

INSERT INTO `student_form` (`ID`, `Name`, `Email`, `Phone_Number`, `Arrival`, `VisitType`, `EnrollmentTime`, `EnrollmentStatus`, `Career_Counseling`, `Job_Searching`, `Resume`, `Cover_Letter`, `Mock_Interview`, `Internship_Information`, `Transition_to_Kean`, `Sophmore_Seminar`, `Junior_Seminar`, `Senior_Seminar`, `Career`, `Cops_Test`, `Myers_Briggs`, `Approved`) VALUES
('262', '32632', '346256', '3246236', '322323', 'dfbsbd', 'zdsbdzbd', 'zdsbdfzb', 'Career Counseling', 'Job Searching', 'Resume', 'Cover Letter', 'Mock Interview', 'Internship Information', 'Transition To Kean', 'Sophomore Seminar', 'Junior Seminar', 'Senior Seminar', 'Career', 'Cops Test', 'Myers Briggs', NULL),
('0856786', 'Vanessa', '555555555', '11:15', 'fdhsdh', 'sgsfdshfsd', 'sfgsdagda', 'edfhdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0856786', 'Vanessa', '555555555', '11:15', 'fdhsdh', 'sgsfdshfsd', 'sfgsdagda', 'edfhdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0856786', 'Vanessa', '555555555', '11:15', 'fdhsdh', 'sgsfdshfsd', 'sfgsdagda', 'edfhdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0856786', 'Charlie', '555555555', '11:15', 'fdhsdh', 'sgsfdshfsd', 'sfgsdagda', 'edfhdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0856786', 'Charlie3', '555555555', '11:15', 'fdhsdh', 'sgsfdshfsd', 'sfgsdagda', 'edfhdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0856786', 'Charlie87', '555555555', '11:15', 'fdhsdh', 'sgsfdshfsd', 'sfgsdagda', 'edfhdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('asdfas', 'asides', 'sadfasa', 'asfasd', '500', 'class', 'fullTime', 'sophomore', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'False'),
('0922298', 'David Veloso', 'velosoda@kean.edu', '9083136146', '500', 'class', 'fullTime', 'senior', NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, 'False'),
('0922298', 'David Veloso', 'velosoda@kean.edu', '9083136146', '500', 'appointment', 'fullTime', 'senior', NULL, NULL, '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'False'),
('0922298', 'David Veloso', 'velosoda@kean.edu', '9083136146', '500', 'appointment', 'fullTime', 'senior', NULL, NULL, 'True', 'True', NULL, NULL, NULL, NULL, NULL, 'True', NULL, NULL, NULL, 'False'),
('0922298', 'David Veloso', 'velosoda@kean.edu', '9081241212', '500', 'appointment', 'partTime', 'senior', NULL, 'Job Searching', 'Resume', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Career', NULL, NULL, 'False'),
('14514134', 'David', 'fasfasdfsdf', 'sadfasdfa', '500', 'Walk In', 'Full Time', 'Senior', NULL, NULL, NULL, 'Cover Letter', NULL, 'Internship Information', NULL, 'Sophomore Seminar', NULL, NULL, NULL, NULL, NULL, 'False');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
