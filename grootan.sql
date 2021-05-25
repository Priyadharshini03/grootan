-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 08:16 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grootan`
--
CREATE DATABASE IF NOT EXISTS `grootan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `grootan`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `address_line3` varchar(100) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `age`, `first_name`, `last_name`, `dob`, `address_line1`, `address_line2`, `address_line3`, `mobile`) VALUES
(1, 'Priyadharshini', 21, 'Priyadharshini', 'Ponnudurai', '1999-12-03', 'Grahamsland division', 'Munnar', 'Kerala', 949581368),
(2, 'malathy', 20, 'maltyu', 'pomughnv', '2021-05-22', 'derhhn', 'vghfcf', 'iyftyduhlj', 34568809),
(3, 'maha', 20, 'maltyu', 'pomughnv', '2021-05-22', 'derhhn', 'vghfcf', 'iyftyduhlj', 34568809),
(4, 'subbu', 34, 'subbu', 'lakshmi', '2008-06-25', 'arasur', 'coimbatore', 'tamilnadu', 34568809),
(5, 'kavitha', 34, 'kavitha', 'ramarpandi', '2021-05-05', 'mattupaty', 'munnar', 'kerala', 34568809);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
