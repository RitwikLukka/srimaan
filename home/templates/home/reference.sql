-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 01:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srimaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `name`) VALUES
(1, 'Health Camp'),
(2, 'Medical aid'),
(3, 'Yoga Camp'),
(4, 'Annadhanam'),
(5, 'Free food at srirangam'),
(6, 'Provisions for needy'),
(7, 'Organic farming'),
(8, 'Grukulam at srirangam'),
(9, 'Gurukulam at ayodhya'),
(10, 'Senior gurukulam'),
(11, 'Acharyah school for leaders'),
(12, 'Part time school'),
(13, 'Campus'),
(14, 'Library'),
(15, 'Online class'),
(16, 'Teachers and parents workshop'),
(17, 'Life work shopE'),
(18, 'Education village children'),
(19, 'Skills development'),
(20, 'Arts and fine arts'),
(21, 'Goshalai'),
(22, 'Cauvery cleaning'),
(23, 'Planting trees'),
(24, 'Awareness programme'),
(25, 'Construction of heritage'),
(26, 'Nithya homams'),
(27, 'We pray for you'),
(28, 'Veedhi pradhakshinams'),
(29, 'Parayanams'),
(30, 'Archanas'),
(31, 'Gramam thorum ramanjuar'),
(32, 'Temple services-temple cleaning parayanams'),
(33, 'For games it shoul go to srimaan infotech'),
(34, 'Kainkaryam book subscription'),
(35, 'Srimaan info diary'),
(36, 'Old age home'),
(37, 'Free stay at srirangam'),
(38, 'Clothes for needy'),
(39, 'Edu tours'),
(40, 'Exihibitions'),
(41, 'Marriage help'),
(42, 'Dharma upanayanam'),
(43, 'Divine discourses'),
(44, 'Honouring scholars'),
(45, 'Propagation of culture'),
(46, 'Women empowerment');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
