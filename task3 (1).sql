-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2023 at 08:47 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloumn_mapping`
--

DROP TABLE IF EXISTS `cloumn_mapping`;
CREATE TABLE IF NOT EXISTS `cloumn_mapping` (
  `event_id` int NOT NULL,
  `event_list_id` int NOT NULL,
  `variable_defination_id` int NOT NULL,
  `dataset_column_id` int NOT NULL,
  `eventdefination_column_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataset_column`
--

DROP TABLE IF EXISTS `dataset_column`;
CREATE TABLE IF NOT EXISTS `dataset_column` (
  `dataset_cloumn_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `dataset_id` int NOT NULL,
  `event_id` int NOT NULL,
  `datasetCloumnName` varchar(100) NOT NULL,
  PRIMARY KEY (`dataset_cloumn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_dm`
--

DROP TABLE IF EXISTS `detail_dm`;
CREATE TABLE IF NOT EXISTS `detail_dm` (
  `dataset_id` int NOT NULL,
  `PK_id` int NOT NULL,
  `details_dm_coloumns` varchar(100) NOT NULL,
  PRIMARY KEY (`dataset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eventdefination_column`
--

DROP TABLE IF EXISTS `eventdefination_column`;
CREATE TABLE IF NOT EXISTS `eventdefination_column` (
  `event_column_id` int NOT NULL,
  `event_id` int NOT NULL,
  `eventColumnName` varchar(100) NOT NULL,
  PRIMARY KEY (`event_column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_column_data`
--

DROP TABLE IF EXISTS `event_column_data`;
CREATE TABLE IF NOT EXISTS `event_column_data` (
  `event_column_data_id` int NOT NULL,
  `event_column_id` int NOT NULL,
  `event_column_data` varchar(100) NOT NULL,
  PRIMARY KEY (`event_column_data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_defination`
--

DROP TABLE IF EXISTS `event_defination`;
CREATE TABLE IF NOT EXISTS `event_defination` (
  `event_id` int NOT NULL,
  `event_list_id` int NOT NULL,
  `variable_defination_id` int NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_list`
--

DROP TABLE IF EXISTS `event_list`;
CREATE TABLE IF NOT EXISTS `event_list` (
  `event_list_id` int NOT NULL,
  `event_name` varchar(100) NOT NULL,
  PRIMARY KEY (`event_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variable_column_name`
--

DROP TABLE IF EXISTS `variable_column_name`;
CREATE TABLE IF NOT EXISTS `variable_column_name` (
  `variable_column_name_id` int NOT NULL,
  `variable_defination_id` int NOT NULL,
  `varColumnData` varchar(100) NOT NULL,
  PRIMARY KEY (`variable_column_name_id`),
  KEY `variable_column_name_id` (`variable_column_name_id`),
  KEY `variable_defination_id` (`variable_defination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variable_defination`
--

DROP TABLE IF EXISTS `variable_defination`;
CREATE TABLE IF NOT EXISTS `variable_defination` (
  `variable_defination_id` int NOT NULL AUTO_INCREMENT,
  `variable_ColumnName` varchar(100) NOT NULL,
  PRIMARY KEY (`variable_defination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `variable_column_name`
--
ALTER TABLE `variable_column_name`
  ADD CONSTRAINT `variable_column_name_ibfk_1` FOREIGN KEY (`variable_defination_id`) REFERENCES `variable_defination` (`variable_defination_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
