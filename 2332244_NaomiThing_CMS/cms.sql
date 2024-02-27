-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 10:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` varchar(500) NOT NULL,
  `CourseName` varchar(500) NOT NULL,
  `Seat` varchar(500) NOT NULL,
  `Duration` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`, `Seat`, `Duration`) VALUES
('NEO23', 'Bsc (Hons) Computer Science', '2000', '3 years');

-- --------------------------------------------------------

--
-- Table structure for table `createreportcard1`
--

CREATE TABLE `createreportcard1` (
  `StudentID` varchar(500) NOT NULL,
  `StudentName` varchar(500) NOT NULL,
  `Course` varchar(500) NOT NULL,
  `OODP` varchar(500) NOT NULL,
  `C` varchar(500) NOT NULL,
  `AI` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createreportcard1`
--

INSERT INTO `createreportcard1` (`StudentID`, `StudentName`, `Course`, `OODP`, `C`, `AI`) VALUES
('2332941', 'Tarang Regmi', 'Bsc (Hons) Computer Science', '66', '56', '76'),
('2332941', 'Tarang Regmi', 'Bsc (Hons) Computer Science', '67', '86', '57');

-- --------------------------------------------------------

--
-- Table structure for table `createreportcard2`
--

CREATE TABLE `createreportcard2` (
  `StudentID` varchar(500) NOT NULL,
  `StudentName` varchar(500) NOT NULL,
  `Course` varchar(500) NOT NULL,
  `BusinessStudies` varchar(500) NOT NULL,
  `Finance` varchar(500) NOT NULL,
  `HotelManagement` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createreportcard2`
--

INSERT INTO `createreportcard2` (`StudentID`, `StudentName`, `Course`, `BusinessStudies`, `Finance`, `HotelManagement`) VALUES
('2122223', 'Saksham Sharma', 'Bsc (Hons) International Business Management', '34', '45', '56');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `Firstname` varchar(500) NOT NULL,
  `Lastname` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Username` varchar(500) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Mode` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`Firstname`, `Lastname`, `Email`, `Username`, `Password`, `Mode`) VALUES
('Naomi', 'Thing', 'naomi121@gmail.com', 'nahyuhmeh_1', 'naomi@123', 'Admin'),
('Tarang ', 'Regmi', 'trgrtrg@reg.com', 'trgtrg121', 'trg123', 'Student'),
('Jenny', 'Rajak', 'jenny@hck.com', 'jennyjen', 'jennyjen12', 'Instructor'),
('Saksham', 'Sharma', 'saksam@sar.com', 'saksar1', 'saksar1', 'Student'),
('Shubham', 'Shrestha', 'shubs@2.com', 'hrishub', 'hrishub2', 'Student'),
('Viraj ', 'Subedi', 'viru@sube.com', 'virusube', 'virusube', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `CourseName` varchar(500) NOT NULL,
  `Module1` varchar(500) NOT NULL,
  `Module2` varchar(500) NOT NULL,
  `Module3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`CourseName`, `Module1`, `Module2`, `Module3`) VALUES
('Bsc (Hons) Computer Science', 'OODP', 'C ', 'AI'),
('Bsc (Hons) International Business Management', 'Business Studies', 'Finance', 'HM');

-- --------------------------------------------------------

--
-- Table structure for table `progressreport`
--

CREATE TABLE `progressreport` (
  `StudentID` varchar(500) NOT NULL,
  `StudentName` varchar(500) NOT NULL,
  `Course` varchar(500) NOT NULL,
  `Modules` varchar(500) NOT NULL,
  `MarksObtained` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progressreport`
--

INSERT INTO `progressreport` (`StudentID`, `StudentName`, `Course`, `Modules`, `MarksObtained`) VALUES
('2332941', 'Tarang Regmi', 'Bsc (Hons) Computer Science', 'C ', '90'),
('2122223', 'Saksham Sharma', 'Bsc (Hons) International Business Management', 'Business Studies', '46'),
('2332941', 'Tarang Regmi', 'Bsc (Hons) Computer Science', 'AI', '56');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` varchar(500) NOT NULL,
  `StudentName` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `PhoneNumber` varchar(500) NOT NULL,
  `Course` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `StudentName`, `Email`, `PhoneNumber`, `Course`) VALUES
('2332941', 'Tarang Regmi', 'trg@reg.com', '9800000000', 'Bsc (Hons) Computer Science'),
('2122223', 'Saksham Sharma', 'sak@sar.com', '9800000000', 'Bsc (Hons) International Business Management'),
('2122132', 'Shubham Shrestha', 'shubs@2.com', '9800000000', 'Bsc (Hons) Computer Science'),
('2329762', 'Viraj Subedi', 'viru@sube.com', '9800000000', 'Bsc (Hons) Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `TutorID` varchar(500) NOT NULL,
  `TutorName` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Module` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`TutorID`, `TutorName`, `Email`, `Module`) VALUES
('1234567', 'Jenny Rajak', 'jenny@hck.com', 'C'),
('7654321', 'Ronit Shrestha', 'ronit@hck.com', 'AI');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
