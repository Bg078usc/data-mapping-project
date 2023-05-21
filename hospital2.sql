-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2023 at 11:28 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `standrd_raw_name`
--

CREATE TABLE `standrd_raw_name` (
  `rawNameID` int(11) NOT NULL,
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
  ADD KEY `EventListID` (`EventListID`),
  ADD KEY `VariableDefinitionID` (`VariableDefinitionID`);

--
-- Indexes for table `Event_list`
--
ALTER TABLE `Event_list`
  ADD PRIMARY KEY (`eventListID`);

--
-- Indexes for table `raw_name`
--
ALTER TABLE `raw_name`
  ADD PRIMARY KEY (`rawNameID`),
  ADD KEY `datasetID` (`datasetID`);

--
-- Indexes for table `standrd_name`
--
ALTER TABLE `standrd_name`
  ADD PRIMARY KEY (`standrd_name_id`),
  ADD KEY `variableDefinitionID` (`variableDefinitionID`,`eventDefinitionID`),
  ADD KEY `eventDefinitionID` (`eventDefinitionID`);

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
  ADD CONSTRAINT `event_definition_ibfk_1` FOREIGN KEY (`EventListID`) REFERENCES `Event_list` (`eventListID`),
  ADD CONSTRAINT `event_definition_ibfk_2` FOREIGN KEY (`VariableDefinitionID`) REFERENCES `Variable_Definition` (`variableDefinitionID`);

--
-- Constraints for table `raw_name`
--
ALTER TABLE `raw_name`
  ADD CONSTRAINT `raw_name_ibfk_1` FOREIGN KEY (`datasetID`) REFERENCES `dataset` (`datasetID`);

--
-- Constraints for table `standrd_name`
--
ALTER TABLE `standrd_name`
  ADD CONSTRAINT `standrd_name_ibfk_1` FOREIGN KEY (`eventDefinitionID`) REFERENCES `Event_Definition` (`eventDefinition_ID`);

--
-- Constraints for table `Variable_Definition`
--
ALTER TABLE `Variable_Definition`
  ADD CONSTRAINT `variable_definition_ibfk_1` FOREIGN KEY (`variableDefinitionID`) REFERENCES `standrd_name` (`variableDefinitionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
