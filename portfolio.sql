-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2019 at 10:20 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work`
--

CREATE TABLE `tbl_work` (
  `ID` int(11) NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Video` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_work`
--

INSERT INTO `tbl_work` (`ID`, `Name`, `Category`, `Image`, `Description`, `Video`) VALUES
(1, 'ThermoSecurity™️', 'Graphic Design', 'work1', 'HouseCom™️ ThermoSecurity™️ System GUI Concept', ''),
(2, 'Monga', 'Graphic Design', 'work2', 'Monga Takeout Menu Redesign', ''),
(3, 'Demo Reel', '3D & VFX', 'work3', '2019 3D Demo Reel', 'Demo Reel'),
(4, 'Spring Sushi', 'Graphic Design', 'work4', 'Spring Sushi Tuna Cutting Event Promotion', ''),
(5, 'Hatch', '3D & VFX', 'work5', 'Startup Agency Promotion Concept', 'Hatch'),
(6, 'Chinese Perspectives', 'Video Production', 'work6', 'London Chinese Perspective Radio Independent Film', 'Chinese Perspectives');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_work`
--
ALTER TABLE `tbl_work`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_work`
--
ALTER TABLE `tbl_work`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
