-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2023 at 03:49 AM
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
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `datasetID` int(11) NOT NULL,
  `datasetName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Event_Definition`
--

CREATE TABLE `Event_Definition` (
  `eventDefinition_ID` int(11) NOT NULL,
  `EventListID` int(11) DEFAULT NULL,
  `VariableDefinitionID` int(11) DEFAULT NULL,
  `eventDefinitionColumnName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Event_list`
--

CREATE TABLE `Event_list` (
  `eventListID` int(11) NOT NULL,
  `event_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `raw_name`
--

CREATE TABLE `raw_name` (
  `rawNameID` int(11) NOT NULL,
  `datasetID` int(11) DEFAULT NULL,
  `column_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `standrd_name`
--

CREATE TABLE `standrd_name` (
  `standrd_name_id` int(11) NOT NULL,
  `variableDefinitionID` int(11) NOT NULL,
  `eventDefinitionID` int(11) NOT NULL,
  `DATASET` varchar(255) DEFAULT NULL,
  `CLIN_DSET_DESCR` varchar(255) DEFAULT NULL,
  `CLIN_DSET_NAME` varchar(255) DEFAULT NULL,
  `PK` varchar(255) DEFAULT NULL,
  `PATIENT_ID` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `HEIGHT` varchar(255) DEFAULT NULL,
  `WEIGHT` varchar(255) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `PK_ORIGIN` varchar(255) DEFAULT NULL,
  `BOC_EVENT` varchar(255) DEFAULT NULL,
  `CLOSEST_DATE` varchar(255) DEFAULT NULL,
  `CLOSEST_DATE_EVENT` varchar(255) DEFAULT NULL,
  `HB` varchar(255) DEFAULT NULL,
  `HCT` varchar(255) DEFAULT NULL,
  `RCC` varchar(255) DEFAULT NULL,
  `MCV` varchar(255) DEFAULT NULL,
  `RETIC` varchar(255) DEFAULT NULL,
  `PRBC` varchar(255) DEFAULT NULL,
  `HAEMOSTAT_INTERVENE` varchar(255) DEFAULT NULL,
  `ON_PUMP` varchar(255) DEFAULT NULL,
  `PRIMARY_OPERATION` varchar(255) DEFAULT NULL,
  `CS_URGENCY` varchar(255) DEFAULT NULL,
  `DIAGNOSIS` varchar(255) DEFAULT NULL,
  `TREATMENT` varchar(255) DEFAULT NULL,
  `RAW_DATA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `standrd_name`
--

INSERT INTO `standrd_name` (`standrd_name_id`, `variableDefinitionID`, `eventDefinitionID`, `DATASET`, `CLIN_DSET_DESCR`, `CLIN_DSET_NAME`, `PK`, `PATIENT_ID`, `DOB`, `SEX`, `HEIGHT`, `WEIGHT`, `COMMENT`, `PK_ORIGIN`, `BOC_EVENT`, `CLOSEST_DATE`, `CLOSEST_DATE_EVENT`, `HB`, `HCT`, `RCC`, `MCV`, `RETIC`, `PRBC`, `HAEMOSTAT_INTERVENE`, `ON_PUMP`, `PRIMARY_OPERATION`, `CS_URGENCY`, `DIAGNOSIS`, `TREATMENT`, `RAW_DATA`) VALUES
(1, 0, 0, 'Dataset 1', 'Clinical Dataset Description 1', 'Clinical Dataset Name 1', NULL, 'Patient ID 1', '1990-01-01', 'Male', '175', '70', 'Comment 1', 'Origin 1', 'Event 1', '2022-01-01', 'Event 1', '12.5', '42', '4.5', '90', '2.1', '2', 'Intervention 1', 'Yes', 'Operation 1', 'Urgency 1', 'Diagnosis 1', 'Treatment 1', 'Raw Data 1'),
(2, 0, 0, 'Dataset 2', 'Clinical Dataset Description 2', 'Clinical Dataset Name 2', NULL, 'Patient ID 2', '1985-05-10', 'Female', '160', '55', 'Comment 2', 'Origin 2', 'Event 2', '2022-02-15', 'Event 2', '13.2', '40', '4.8', '92', '2.5', '3', 'Intervention 2', 'No', 'Operation 2', 'Urgency 2', 'Diagnosis 2', 'Treatment 2', 'Raw Data 2');

-- --------------------------------------------------------

--
-- Table structure for table `standrd_raw_name`
--

CREATE TABLE `standrd_raw_name` (
  `rawNameID` int(11) DEFAULT NULL,
  `standrd_name_id` int(11) DEFAULT NULL,
  `rowID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Variable_Definition`
--

CREATE TABLE `Variable_Definition` (
  `variableDefinitionID` int(11) NOT NULL,
  `variableColumnName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`datasetID`);

--
-- Indexes for table `Event_Definition`
--
ALTER TABLE `Event_Definition`
  ADD PRIMARY KEY (`eventDefinition_ID`),
  ADD KEY `fk_variabledefinitionID` (`EventListID`);

--
-- Indexes for table `Event_list`
--
ALTER TABLE `Event_list`
  ADD PRIMARY KEY (`eventListID`);

--
-- Indexes for table `raw_name`
--
ALTER TABLE `raw_name`
  ADD PRIMARY KEY (`rawNameID`);

--
-- Indexes for table `standrd_name`
--
ALTER TABLE `standrd_name`
  ADD PRIMARY KEY (`standrd_name_id`);

--
-- Indexes for table `Variable_Definition`
--
ALTER TABLE `Variable_Definition`
  ADD PRIMARY KEY (`variableDefinitionID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Event_Definition`
--
ALTER TABLE `Event_Definition`
  ADD CONSTRAINT `fk_variabledefinitionID` FOREIGN KEY (`EventListID`) REFERENCES `Variable_Definition` (`variableDefinitionID`);

--
-- Constraints for table `standrd_raw_name`
--
ALTER TABLE `standrd_raw_name`
  ADD CONSTRAINT `standrd_raw_name_ibfk_1` FOREIGN KEY (`rawNameID`) REFERENCES `DS7E` (`Primary_Key`),
  ADD CONSTRAINT `standrd_raw_name_ibfk_2` FOREIGN KEY (`standrd_name_id`) REFERENCES `standrd_name` (`standrd_name_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
