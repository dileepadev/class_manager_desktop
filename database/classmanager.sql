-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 06:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(10) NOT NULL,
  `className` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `secQuestion` varchar(50) NOT NULL,
  `secAnswer` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fName`, `lName`, `age`, `email`, `mobile`, `className`, `password`, `secQuestion`, `secAnswer`) VALUES
(1, 'Admin', 'User', 24, 'adminuser@classmanagerlk.com', 123456789, '', 'adminuser1234', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `taskNo` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `taskTitle` varchar(100) NOT NULL,
  `taskDesc` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`taskNo`, `subject`, `date`, `taskTitle`, `taskDesc`) VALUES
(1, 'Test1Subject1', 'Fri Apr 03 00:00:00 IST 2020 ', 'Task1Title1', 'Task1 Description1');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) NOT NULL,
  `sub1` varchar(10) NOT NULL,
  `sub2` varchar(10) NOT NULL,
  `sub3` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `sub1`, `sub2`, `sub3`) VALUES
(1, 'Bio', 'Chemistry', 'Physics'),
(2, 'Maths', 'Physics', 'Chemistry'),
(3, 'Bio', 'Chemistry', 'Agri'),
(4, 'Maths', 'Physics', 'ICT');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `no` int(100) NOT NULL,
  `day1` varchar(100) NOT NULL,
  `day2` varchar(100) NOT NULL,
  `day3` varchar(100) NOT NULL,
  `day4` varchar(100) NOT NULL,
  `day5` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`no`, `day1`, `day2`, `day3`, `day4`, `day5`) VALUES
(1, 'TestDay1', 'TestDay2', 'TestDay3', 'TestDay4', 'TestDay5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`taskNo`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
