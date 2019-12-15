-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2019 at 03:56 AM
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
  `Information` text NOT NULL,
  `Collaborate` text NOT NULL,
  `Video` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_work`
--

INSERT INTO `tbl_work` (`ID`, `Name`, `Category`, `Image`, `Description`, `Information`, `Collaborate`, `Video`) VALUES
(1, 'ThermoSecurity', 'Graphic Design', 'ThermoSecurity.jpg', 'HouseCom™️ ThermoSecurity™️ System GUI Concept', 'This is a school group project focusing on industrial design and promotion. I designed the specific functionality of the HouseCom™️ ThermoSecurity™️ System and its graphical user interface.\r\n\r\n', 'Collaborated with Collins Ilo, Melbin P. Jossy, and Arun Rohit Victor in modeling and web development. ', 'ThermoSecurity.mp4'),
(2, 'Monga', 'Graphic Design', 'Monga.jpg', 'Monga Takeout Menu Redesign', 'Monga is one of the famous Taiwanese fried chicken brands in Toronto. I took the chance to redesign their takeout menu. I recreated the layout and added several new products. By embedding geometric shapes, I maintain the overall brand impression in my design.', '', 'Monga.mp4'),
(3, 'DemoReel', '3D & VFX', 'DemoReel.jpg', '2019 3D Demo Reel', 'My 2019 Cinema 4D Demo Reel is based on the use of lights. It is important to always engage with different lighting settings to get a more realistic feeling.\r\nI also added plenty of flares in After Effects to enhance the lighting effects.', '', 'DemoReel.mp4'),
(4, 'SpringSushi', 'Graphic Design', 'SpringSushi.jpg', 'Spring Sushi Tuna Cutting Event Promotion', 'This is a roll-up banner for Spring Sushi\'s special tuna cutting event. I emphasized on the dark pink colour, whereas it not only connects to the brand logo but also can be related to the tuna sashimi picture.', '', 'SpringSushi.mp4'),
(5, 'Hatch', '3D & VFX', 'Hatch.jpg', 'Startup Agency Promotion Concept', 'This is a school group project for designing a startup advertising agency. I mainly focus on creating a brand consistent video with After Effects and Cinema 4D.\r\n', 'Collaborated with Alissar Arnaout, Syrrel Mae Cabiling, and Courtney Topping.', 'Hatch.mp4'),
(6, 'ChinesePerspectives', 'Video Production', 'ChinesePerspectives.jpg', 'London Chinese Perspective Radio Independent Film', 'This is a Chinese independent short film created by FM94.9 Chinese Perspectives Radio at Western University. I am one of the executive directors, and I also worked as an editor and visual effect artist.\r\n\r\n\r\n\r\n', 'Collaborated with Steven Lin, Lynn Zhou, and Kewen Yan.', 'ChinesePerspectives.mp4');

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
