-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2016 at 04:09 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_login`
--

CREATE TABLE `db_login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_login`
--

INSERT INTO `db_login` (`username`, `password`) VALUES
('rosalebl', 'computer');

-- --------------------------------------------------------

--
-- Table structure for table `student_form`
--

CREATE TABLE `student_form` (
  `ID` int(9) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `Arrival` int(6) NOT NULL,
  `Walk_In` tinyint(1) NOT NULL,
  `Class` tinyint(1) NOT NULL,
  `Appointment` tinyint(1) NOT NULL,
  `Workshop` tinyint(1) NOT NULL,
  `Full_Time` tinyint(1) NOT NULL,
  `Part_Time` tinyint(1) NOT NULL,
  `Freshman` tinyint(1) NOT NULL,
  `Sophomore` tinyint(1) NOT NULL,
  `Junior` tinyint(1) NOT NULL,
  `Senior` tinyint(1) NOT NULL,
  `Alumni` tinyint(1) NOT NULL,
  `Potential_Student` tinyint(1) NOT NULL,
  `Career_Counseling` tinyint(1) NOT NULL,
  `Job_Searching` tinyint(1) NOT NULL,
  `Resume` tinyint(1) NOT NULL,
  `Cover_Letter` tinyint(1) NOT NULL,
  `Mock_Interview` tinyint(1) NOT NULL,
  `Internship_Information` tinyint(1) NOT NULL,
  `Transistion_to_Kean` tinyint(1) NOT NULL,
  `Sophomore_Seminar` tinyint(1) NOT NULL,
  `Junior_Seminar` tinyint(1) NOT NULL,
  `Senior_Seminar` tinyint(1) NOT NULL,
  `Career` tinyint(1) NOT NULL,
  `Cops_Test` tinyint(1) NOT NULL,
  `Myers_Briggs` tinyint(1) NOT NULL,
  `Approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_login`
--
ALTER TABLE `db_login`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `student_form`
--
ALTER TABLE `student_form`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `ID` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
