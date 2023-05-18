-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 18, 2023 at 07:08 AM
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
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `user_name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Message` varchar(500) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `Name`, `Email`, `Subject`, `Message`) VALUES
(7, 'John', 'j_brown34@icloud.com', 'Timing of  gym', 'Please, let me know about the time of gym.');

-- --------------------------------------------------------

--
-- Table structure for table `ds3b_cardiac_data_(1)`
--

DROP TABLE IF EXISTS `ds3b_cardiac_data_(1)`;
CREATE TABLE IF NOT EXISTS `ds3b_cardiac_data_(1)` (
  `PRIMARY_KEY` varchar(255) DEFAULT NULL,
  `Patient_ID` varchar(255) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `ADMISSION_DATE` varchar(255) DEFAULT NULL,
  `DISCHARGE_DATE` varchar(255) DEFAULT NULL,
  `SURGERY_DATE` varchar(255) DEFAULT NULL,
  `VERIFIED_COMMENT` varchar(255) DEFAULT NULL,
  `SMOKING_HISTORY` varchar(255) DEFAULT NULL,
  `CURRENT_SMOKER` varchar(255) DEFAULT NULL,
  `DIABETES` varchar(255) DEFAULT NULL,
  `DIABETES_CONTROL` varchar(255) DEFAULT NULL,
  `HYPERCHOLESTEROLAEMIA` varchar(255) DEFAULT NULL,
  `PRE_OP_HAEMOGLOBIN` varchar(255) DEFAULT NULL,
  `RENAL_DIALYSIS` varchar(255) DEFAULT NULL,
  `RENAL_TRANSPLANT` varchar(255) DEFAULT NULL,
  `CEREBROVASULAR_DISEASE` varchar(255) DEFAULT NULL,
  `CEREBROVASCULAR_DISEASE_TYPE` varchar(255) DEFAULT NULL,
  `HYPERTENSION` varchar(255) DEFAULT NULL,
  `INFECTIVE_ENDOCARDITIS` varchar(255) DEFAULT NULL,
  `INFECTIVE_ENDOCARDITIS_TYPE` varchar(255) DEFAULT NULL,
  `IMMUNOSUPPRESSIVE_THERAPY` varchar(255) DEFAULT NULL,
  `RESPIRATORY_DISEASE` varchar(255) DEFAULT NULL,
  `RESPIRATORY_DISEASE_TYPE` varchar(255) DEFAULT NULL,
  `EUROSCORE_2` varchar(255) DEFAULT NULL,
  `PERIPHERAL_VASCULAR_DISEASE` varchar(255) DEFAULT NULL,
  `CVA_CAROTID_TEST_RESULT` varchar(255) DEFAULT NULL,
  `CVA_WHEN` varchar(255) DEFAULT NULL,
  `PRE_OP_CREATININE` varchar(255) DEFAULT NULL,
  `ANGINA_FULL_DOSE_HEPARINOIDS` varchar(255) DEFAULT NULL,
  `ANGINA_IV_GTN` varchar(255) DEFAULT NULL,
  `ANGINA_IV_HEPARIN` varchar(255) DEFAULT NULL,
  `ARRHYTHMIA` varchar(255) DEFAULT NULL,
  `ARRHYTHMIA_ATRIAL` varchar(255) DEFAULT NULL,
  `ARRHYTHMIA_ATRIAL_TYPE` varchar(255) DEFAULT NULL,
  `ARRHYTHMIA_HEART_BLOCK` varchar(255) DEFAULT NULL,
  `ARRHYTHMIA_OTHER` varchar(255) DEFAULT NULL,
  `ARRHYTHMIA_VENTRICULAR` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_ABCIXIMAB` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_GLYCPRTN_INHIB` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_ASPIRIN` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_THIENOPYRIDINE` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_OTHER` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_TICAGRELOR` varchar(255) DEFAULT NULL,
  `MEDICATIONS_ANTICOAGULANT` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_GLYCPRTN_INHIB_WHEN` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_ABCIXIMAB_WHEN` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_ASPIRIN_WHEN` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_THIENOPYRIDINE_WHEN` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_OTHER_WHEN` varchar(255) DEFAULT NULL,
  `ANTIPLTLT_TICAGRELOR_WHEN` varchar(255) DEFAULT NULL,
  `MEDICA` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ds7e`
--

DROP TABLE IF EXISTS `ds7e`;
CREATE TABLE IF NOT EXISTS `ds7e` (
  `Primary Key` text,
  `Date referred to CNC` text,
  `Referred / Identified by (eg. OPD, GP, PREAC, DOA, SPAC)` text,
  `Follow up Date` text,
  `Patient ID` text,
  `DOB` text,
  `Gender` text,
  `Date of Contact` text,
  `Surgical Specialty (eg. Ortho, Card, Gen) / Consultant` text,
  `Surgical Category (1, 2, 3)` text,
  `Date Waitlisted` text,
  `Proposed Surgery Date` text,
  `Was Surgery Postponed due to anaemia.1` text,
  `Pathology Date` text,
  `Hb.1` text,
  `RCC .1` text,
  `MCV.1` text,
  `Ferritin.1` text,
  `Transferrin.1` text,
  `TIBC.1` text,
  `Tsat.1` text,
  `ESR.1` text,
  `CRP.1` text,
  `Creat.1` text,
  `eGFR.1` text,
  `ALT.1` text,
  `GGT.1` text,
  `B12 .1` text,
  `Fol.1` text,
  `TSH.1` text,
  `FOB.1` text,
  `Pathologist (eg. QHPS, QML, S&N).1` text,
  `Anaemia Type (eg. IDA, Unknown origin)` text,
  `Treatment (eg. Iron PO/ IV, EPO, GP / Specialist referral` text,
  `If Required - DUIT Appointment Date` text,
  `DUIT Booked` text,
  `Specialist Details (Type / Appt. Date)` text,
  `Follow-up Pathology Date` text,
  `Pathologist (eg. QHPS, QML, S&N).2` text,
  `Hb.2` text,
  `RCC .2` text,
  `MCV.2` text,
  `Retic` text,
  `DAT` text,
  `Ferritin.2` text,
  `Transferrin.2` text,
  `TIBC.2` text,
  `Tsat.2` text,
  `sTfr` text,
  `ESR.2` text,
  `CRP.2` text,
  `Creat.2` text,
  `eGFR.2` text,
  `ALT.2` text,
  `GGT.2` text,
  `B12 .2` text,
  `Fol.2` text,
  `TSH.2` text,
  `FOB.2` text,
  `Preadmission Clinic Date` text,
  `Surgery Date` text,
  `Was Surgery Postponed due to anaemia.2` text,
  `Date of Admission` text,
  `Date of Discharge` text,
  `Length of Stay` text,
  `Median LOS per SPI` text,
  `Preop Hb` text,
  `Postop Hb` text,
  `Lowest Post op Hb` text,
  `D/C Hb` text,
  `Preop RBC     (# of units)` text,
  `Intraop RBC      (# of units)` text,
  `0-48hrs RBC     (# of units)` text,
  `49hrs - D/C RBC (# of units)` text,
  `6 week post op ph Call date` text,
  `Notes / Q'naire completed` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ds7e`
--

INSERT INTO `ds7e` (`Primary Key`, `Date referred to CNC`, `Referred / Identified by (eg. OPD, GP, PREAC, DOA, SPAC)`, `Follow up Date`, `Patient ID`, `DOB`, `Gender`, `Date of Contact`, `Surgical Specialty (eg. Ortho, Card, Gen) / Consultant`, `Surgical Category (1, 2, 3)`, `Date Waitlisted`, `Proposed Surgery Date`, `Was Surgery Postponed due to anaemia.1`, `Pathology Date`, `Hb.1`, `RCC .1`, `MCV.1`, `Ferritin.1`, `Transferrin.1`, `TIBC.1`, `Tsat.1`, `ESR.1`, `CRP.1`, `Creat.1`, `eGFR.1`, `ALT.1`, `GGT.1`, `B12 .1`, `Fol.1`, `TSH.1`, `FOB.1`, `Pathologist (eg. QHPS, QML, S&N).1`, `Anaemia Type (eg. IDA, Unknown origin)`, `Treatment (eg. Iron PO/ IV, EPO, GP / Specialist referral`, `If Required - DUIT Appointment Date`, `DUIT Booked`, `Specialist Details (Type / Appt. Date)`, `Follow-up Pathology Date`, `Pathologist (eg. QHPS, QML, S&N).2`, `Hb.2`, `RCC .2`, `MCV.2`, `Retic`, `DAT`, `Ferritin.2`, `Transferrin.2`, `TIBC.2`, `Tsat.2`, `sTfr`, `ESR.2`, `CRP.2`, `Creat.2`, `eGFR.2`, `ALT.2`, `GGT.2`, `B12 .2`, `Fol.2`, `TSH.2`, `FOB.2`, `Preadmission Clinic Date`, `Surgery Date`, `Was Surgery Postponed due to anaemia.2`, `Date of Admission`, `Date of Discharge`, `Length of Stay`, `Median LOS per SPI`, `Preop Hb`, `Postop Hb`, `Lowest Post op Hb`, `D/C Hb`, `Preop RBC     (# of units)`, `Intraop RBC      (# of units)`, `0-48hrs RBC     (# of units)`, `49hrs - D/C RBC (# of units)`, `6 week post op ph Call date`, `Notes / Q'naire completed`) VALUES
('a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a\r');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`u_id`, `first_name`, `last_name`, `gender`, `age`, `phone_number`, `mail`, `password`, `address`) VALUES
(10, 'Sam', 'Shahh', 'Male', '23', '0452626425', 'Sam@icloud.com', '123456', '45 Elizabeth st'),
(11, 'Sam', 'Sumantha', 'Male', '23', '09977776898', 'Sam265@icloud.com', '17762576', 'Elizabeth st');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
