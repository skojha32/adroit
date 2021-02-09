-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 08:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adroit`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Sno` int(3) NOT NULL,
  `collgeName` varchar(150) NOT NULL,
  `teamName` varchar(150) NOT NULL,
  `teamMember1` varchar(256) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone1` varchar(10) NOT NULL,
  `Phone2` varchar(10) NOT NULL,
  `teamMember2` varchar(256) NOT NULL,
  `teamMember3` varchar(256) NOT NULL,
  `teamMember4` varchar(256) NOT NULL,
  `teamMember5` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Sno`, `collgeName`, `teamName`, `teamMember1`, `Email`, `Phone1`, `Phone2`, `teamMember2`, `teamMember3`, `teamMember4`, `teamMember5`) VALUES
(1, 'Lucknow University', 'Alpha', 'Anish', 'abhi@gmail.com', '9544565656', '9544565656', 'Anuj', 'Abhilash', 'Anikrishna', 'Abheek'),
(2, 'a', '', 'a', 'a@gmail.com', '8840999188', '8840999188', 'd', '', 'd', 'd'),
(3, 'a', 'a', 'a', 'a@gmail.com', '8840999188', '8840999188', 'd', 'd', 'd', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
