-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2019 at 04:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `bounty`
--

CREATE TABLE `bounty` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `captainjack`
--

CREATE TABLE `captainjack` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `davy`
--

CREATE TABLE `davy` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL,
  `name3` varchar(50) NOT NULL,
  `email_id3` varchar(50) NOT NULL,
  `number3` varchar(12) NOT NULL,
  `name4` varchar(50) NOT NULL,
  `email_id4` varchar(50) NOT NULL,
  `number4` varchar(12) NOT NULL,
  `name5` varchar(50) NOT NULL,
  `email_id5` varchar(50) NOT NULL,
  `number5` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dead`
--

CREATE TABLE `dead` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dominator`
--

CREATE TABLE `dominator` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fortune`
--

CREATE TABLE `fortune` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gold`
--

CREATE TABLE `gold` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maverick`
--

CREATE TABLE `maverick` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plank`
--

CREATE TABLE `plank` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plank`
--

INSERT INTO `plank` (`id`, `name`, `institution`, `email_id`, `number`, `name2`, `email_id2`, `number2`) VALUES
(2, 'vgb', 'Kristu jayanti College', 'skojha32@gmail.com', '7899284215', 'vgb', 'a@gmail.com', '7899284215');

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`id`, `name`, `institution`, `email_id`, `number`, `name2`, `email_id2`, `number2`) VALUES
(1, 'Sashi Kant Ojha', 'Kristu Jayanti College', 'skojha32@gmail.com', '7899284215', 'xavier', 'dshdvio@gmail.com', '7899284215');

-- --------------------------------------------------------

--
-- Table structure for table `spot`
--

CREATE TABLE `spot` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `email_id2` varchar(50) NOT NULL,
  `number2` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `number` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bounty`
--
ALTER TABLE `bounty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captainjack`
--
ALTER TABLE `captainjack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `davy`
--
ALTER TABLE `davy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dead`
--
ALTER TABLE `dead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fortune`
--
ALTER TABLE `fortune`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold`
--
ALTER TABLE `gold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maverick`
--
ALTER TABLE `maverick`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plank`
--
ALTER TABLE `plank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bounty`
--
ALTER TABLE `bounty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captainjack`
--
ALTER TABLE `captainjack`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `davy`
--
ALTER TABLE `davy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dead`
--
ALTER TABLE `dead`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fortune`
--
ALTER TABLE `fortune`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gold`
--
ALTER TABLE `gold`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maverick`
--
ALTER TABLE `maverick`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plank`
--
ALTER TABLE `plank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quest`
--
ALTER TABLE `quest`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot`
--
ALTER TABLE `spot`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
