-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2023 at 08:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital2`
--

-- --------------------------------------------------------

--
-- Table structure for table `standrd_name`
--

CREATE TABLE `standrd_name` (
  `standrdNameID` int(11) NOT NULL,
  `variableColumnName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `standrd_name`
--

INSERT INTO `standrd_name` (`standrdNameID`, `variableColumnName`) VALUES
(1, 'DATASET'),
(2, 'CLIN.DSET.DESCR'),
(3, 'CLIN.DSET.NAME'),
(4, 'PK'),
(5, 'PATIENT.ID'),
(6, 'DOB'),
(7, 'SEX'),
(8, 'HEIGHT'),
(9, 'WEIGHT'),
(10, 'COMMENT'),
(11, 'PK.ORIGIN'),
(12, 'BOC.EVENT'),
(13, 'CLOSEST.DATE'),
(14, 'CLOSEST.DATE.EVENT'),
(15, 'HB'),
(16, 'HCT'),
(17, 'RCC'),
(18, 'MCV'),
(19, 'RETIC'),
(20, 'PRBC'),
(21, 'HAEMOSTAT.INTERVENE'),
(22, 'ON.PUMP'),
(23, 'PRIMARY.OPERATION'),
(24, 'CS.URGENCY'),
(25, 'DIAGNOSIS'),
(26, 'TREATMENT'),
(27, 'RAW.DATA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `standrd_name`
--
ALTER TABLE `standrd_name`
  ADD PRIMARY KEY (`standrdNameID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `standrd_name`
--
ALTER TABLE `standrd_name`
  MODIFY `standrdNameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
