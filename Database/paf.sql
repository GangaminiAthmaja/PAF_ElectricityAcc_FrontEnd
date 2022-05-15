-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 04:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paf`
--

-- --------------------------------------------------------

--
-- Table structure for table `electricity_account`
--

CREATE TABLE `electricity_account` (
  `accountID` int(20) NOT NULL,
  `accName` varchar(50) NOT NULL,
  `accNumber` varchar(50) NOT NULL,
  `premisesID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electricity_account`
--

INSERT INTO `electricity_account` (`accountID`, `accName`, `accNumber`, `premisesID`) VALUES
(2, 'Home', '1652786536', 'HBF8765'),
(3, 'Office', '7653456783', 'OFC6354'),
(4, 'Institute', '4356893567', 'INT2389'),
(5, 'Home', '7826398367', 'HKM8392');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `electricity_account`
--
ALTER TABLE `electricity_account`
  ADD PRIMARY KEY (`accountID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `electricity_account`
--
ALTER TABLE `electricity_account`
  MODIFY `accountID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
