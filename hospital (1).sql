-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2023 at 05:57 AM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloumn_mapping`
--

CREATE TABLE `cloumn_mapping` (
  `event_id` int(11) NOT NULL,
  `event_list_id` int(11) NOT NULL,
  `variable_defination_id` int(11) NOT NULL,
  `dataset_column_id` int(11) NOT NULL,
  `eventdefination_column_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataset_column`
--

CREATE TABLE `dataset_column` (
  `dataset_cloumn_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `pk_blood_data` int(11) DEFAULT NULL,
  `pk_cardiacsurgery_data` int(11) DEFAULT NULL,
  `pk_cardiac_data` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_dm`
--

CREATE TABLE `detail_dm` (
  `dataset_id` int(11) NOT NULL,
  `detail_dm_columns` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DS3B`
--

CREATE TABLE `DS3B` (
  `pk_cardiac_data` int(11) NOT NULL,
  `Patient_ID` int(11) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `ADMISSION_DATE` date DEFAULT NULL,
  `DISCHARGE_DATE` date DEFAULT NULL,
  `SURGERY_DATE` date DEFAULT NULL,
  `VERIFIED_COMMENT` varchar(255) DEFAULT NULL,
  `SMOKING_HISTORY` varchar(50) DEFAULT NULL,
  `CURRENT_SMOKER` varchar(10) DEFAULT NULL,
  `DIABETES` varchar(10) DEFAULT NULL,
  `DIABETES_CONTROL` varchar(50) DEFAULT NULL,
  `HYPERCHOLESTEROLAEMIA` varchar(10) DEFAULT NULL,
  `PRE_OP_HAEMOGLOBIN` float DEFAULT NULL,
  `RENAL_DIALYSIS` varchar(10) DEFAULT NULL,
  `RENAL_TRANSPLANT` varchar(10) DEFAULT NULL,
  `CEREBROVASULAR_DISEASE` varchar(10) DEFAULT NULL,
  `CEREBROVASCULAR_DISEASE_TYPE` varchar(50) DEFAULT NULL,
  `HYPERTENSION` varchar(10) DEFAULT NULL,
  `INFECTIVE_ENDOCARDITIS` varchar(10) DEFAULT NULL,
  `INFECTIVE_ENDOCARDITIS_TYPE` varchar(50) DEFAULT NULL,
  `IMMUNOSUPPRESSIVE_THERAPY` varchar(10) DEFAULT NULL,
  `RESPIRATORY_DISEASE` varchar(10) DEFAULT NULL,
  `RESPIRATORY_DISEASE_TYPE` varchar(50) DEFAULT NULL,
  `EUROSCORE_2` float DEFAULT NULL,
  `PERIPHERAL_VASCULAR_DISEASE` varchar(10) DEFAULT NULL,
  `CVA_CAROTID_TEST_RESULT` varchar(50) DEFAULT NULL,
  `CVA_WHEN` date DEFAULT NULL,
  `PRE_OP_CREATININE` float DEFAULT NULL,
  `ANGINA_FULL_DOSE_HEPARINOIDS` varchar(10) DEFAULT NULL,
  `ANGINA_IV_GTN` varchar(10) DEFAULT NULL,
  `ANGINA_IV_HEPARIN` varchar(10) DEFAULT NULL,
  `ARRHYTHMIA` varchar(10) DEFAULT NULL,
  `ARRHYTHMIA_ATRIAL` varchar(10) DEFAULT NULL,
  `ARRHYTHMIA_ATRIAL_TYPE` varchar(50) DEFAULT NULL,
  `ARRHYTHMIA_HEART_BLOCK` varchar(10) DEFAULT NULL,
  `ARRHYTHMIA_OTHER` varchar(50) DEFAULT NULL,
  `ARRHYTHMIA_VENTRICULAR` varchar(10) DEFAULT NULL,
  `ANTIPLTLT_ABCIXIMAB` varchar(10) DEFAULT NULL,
  `ANTIPLTLT_GLYCPRTN_INHIB` varchar(10) DEFAULT NULL,
  `ANTIPLTLT_ASPIRIN` varchar(10) DEFAULT NULL,
  `ANTIPLTLT_THIENOPYRIDINE` varchar(10) DEFAULT NULL,
  `ANTIPLTLT_OTHER` varchar(50) DEFAULT NULL,
  `ANTIPLTLT_TICAGRELOR` varchar(10) DEFAULT NULL,
  `MEDICATIONS_ANTICOAGULANT` varchar(10) DEFAULT NULL,
  `ANTIPLTLT_GLYCPRTN_INHIB_WHEN` date DEFAULT NULL,
  `ANTIPLTLT_ABCIXIMAB_WHEN` date DEFAULT NULL,
  `ANTIPLTLT_ASPIRIN_WHEN` date DEFAULT NULL,
  `ANTIPLTLT_THIENOPYRIDINE_WHEN` date DEFAULT NULL,
  `ANTIPLTLT_OTHER_WHEN` date DEFAULT NULL,
  `ANTIPLTLT_TICAGRELOR_WHEN` date DEFAULT NULL,
  `MEDICATIONS_INOTROPE` varchar(10) DEFAULT NULL,
  `MEDICATIONS_IV_GTN` varchar(10) DEFAULT NULL,
  `MEDICATIONS_STEROID` varchar(10) DEFAULT NULL,
  `PRIOR_OPEN_CARDIAC_SURGERY` varchar(10) DEFAULT NULL,
  `PRIOR_LAA_OCCLUSION` varchar(10) DEFAULT NULL,
  `PRIOR_PERCUT_VALVULOPLASTY` varchar(10) DEFAULT NULL,
  `PRIOR_CABG` varchar(10) DEFAULT NULL,
  `PCI_ASD` varchar(10) DEFAULT NULL,
  `PCI_VSD` varchar(10) DEFAULT NULL,
  `PTMVR` varchar(10) DEFAULT NULL,
  `PRIOR_OTHER_CARDIAC_SURGERY` varchar(10) DEFAULT NULL,
  `PRIOR_PERCUTANEOUS_MV_REPAIR` varchar(10) DEFAULT NULL,
  `PRIOR_CTS_INTERVENT` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DS6B`
--

CREATE TABLE `DS6B` (
  `pk_blood_data` int(1) NOT NULL,
  `Patient_ID` int(11) DEFAULT NULL,
  `2017_Book_Number` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age_On_ICU_Adm` int(11) DEFAULT NULL,
  `ICU_Adm_Date_Time` datetime DEFAULT NULL,
  `Weight_kg` float DEFAULT NULL,
  `Height_cm` int(11) DEFAULT NULL,
  `Height_m` float DEFAULT NULL,
  `BMI` float DEFAULT NULL,
  `ICU_Adm_Source` varchar(50) DEFAULT NULL,
  `TLO` varchar(50) DEFAULT NULL,
  `OP_Date` date DEFAULT NULL,
  `Procedure` varchar(50) DEFAULT NULL,
  `YES` varchar(10) DEFAULT NULL,
  `REOPEN_Bleeding_DetailsY_N` varchar(10) DEFAULT NULL,
  `Re_Open_Date` date DEFAULT NULL,
  `Reopen_Location` varchar(50) DEFAULT NULL,
  `PRC` float DEFAULT NULL,
  `FFP` float DEFAULT NULL,
  `Plt` float DEFAULT NULL,
  `CRYO` float DEFAULT NULL,
  `CRYA` float DEFAULT NULL,
  `ELP` float DEFAULT NULL,
  `Vit_K` float DEFAULT NULL,
  `Factor_7` float DEFAULT NULL,
  `Prothrombinex` float DEFAULT NULL,
  `Thrombotrol` float DEFAULT NULL,
  `Fibrinogen_Dose` float DEFAULT NULL,
  `DDAVP` float DEFAULT NULL,
  `Other` varchar(50) DEFAULT NULL,
  `Approtonin` varchar(50) DEFAULT NULL,
  `TXA_dose` float DEFAULT NULL,
  `Protamine_MOT` varchar(50) DEFAULT NULL,
  `Blood_Loss_at_time_of_Reopen` float DEFAULT NULL,
  `Site` varchar(50) DEFAULT NULL,
  `Transf_Reaction_Y_N` varchar(10) DEFAULT NULL,
  `Bloods_Pre_Op_Hb` float DEFAULT NULL,
  `Bloods_Pre_Op_HCT` float DEFAULT NULL,
  `Bloods_Pre_Op_Plts` float DEFAULT NULL,
  `Bloods_Pre_Op_Fib_d` float DEFAULT NULL,
  `Bloods_Post_Op_Hb` float DEFAULT NULL,
  `Bloods_Post_Op_Plt` float DEFAULT NULL,
  `Bloods_Post_Op_Fib_d` float DEFAULT NULL,
  `Blood_Group` varchar(10) DEFAULT NULL,
  `Last_Hb` float DEFAULT NULL,
  `ICU_Obs_Blood_Loss_2_hrs` float DEFAULT NULL,
  `ICU_Obs_Blood_Loss_4hrs` float DEFAULT NULL,
  `ICU_Obs_Blood_Loss_12hrs` float DEFAULT NULL,
  `ICU_Obs_Blood_Loss_24hrs` float DEFAULT NULL,
  `Haemostasis_Mgt_MOT_RBC` float DEFAULT NULL,
  `FFP_2` float DEFAULT NULL,
  `Plt_2` float DEFAULT NULL,
  `CRYO_2` float DEFAULT NULL,
  `CRYA_2` float DEFAULT NULL,
  `ELP_2` float DEFAULT NULL,
  `Vit_K_2` float DEFAULT NULL,
  `Factor_7_2` float DEFAULT NULL,
  `Prothrombinex_2` float DEFAULT NULL,
  `Thrombotrol_2` float DEFAULT NULL,
  `Fibrinogen_Dose_2` float DEFAULT NULL,
  `DDAVP_2` float DEFAULT NULL,
  `Biostate` float DEFAULT NULL,
  `Haemostasis_Mgt_ICU_RBC` float DEFAULT NULL,
  `FFP_3` float DEFAULT NULL,
  `Plt_3` float DEFAULT NULL,
  `CRYO_3` float DEFAULT NULL,
  `CRYA_3` float DEFAULT NULL,
  `ELP_3` float DEFAULT NULL,
  `Vit_K_3` float DEFAULT NULL,
  `Factor_7_3` float DEFAULT NULL,
  `Prothrombinex_3` float DEFAULT NULL,
  `Fibrinogen_Dose_3` float DEFAULT NULL,
  `DDAVP_3` float DEFAULT NULL,
  `Other_2` varchar(50) DEFAULT NULL,
  `Haemostasis_Mgt_Ward_RBC` float DEFAULT NULL,
  `FFP_4` float DEFAULT NULL,
  `Plt_4` float DEFAULT NULL,
  `CRYO_4` float DEFAULT NULL,
  `CRYA_4` float DEFAULT NULL,
  `ELP_4` float DEFAULT NULL,
  `Vit_K_4` float DEFAULT NULL,
  `Fibrinogen_Dose_4` float DEFAULT NULL,
  `Prothrombinex_4` float DEFAULT NULL,
  `Other_3` varchar(50) DEFAULT NULL,
  `Approtonin_2` varchar(50) DEFAULT NULL,
  `TXA_dose_2` float DEFAULT NULL,
  `Protamine_MOT_2` varchar(50) DEFAULT NULL,
  `Protamine_ICU` varchar(50) DEFAULT NULL,
  `Multiplate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DS7E`
--

CREATE TABLE `DS7E` (
  `pk_cardiacsurgery_data` int(1) NOT NULL,
  `DateReferredToCNC` date DEFAULT NULL,
  `ReferredIdentifiedBy` varchar(50) DEFAULT NULL,
  `FollowUpDate` date DEFAULT NULL,
  `PatientID` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DateOfContact` date DEFAULT NULL,
  `SurgicalSpecialty` varchar(50) DEFAULT NULL,
  `SurgicalCategory` int(11) DEFAULT NULL,
  `DateWaitlisted` date DEFAULT NULL,
  `ProposedSurgeryDate` date DEFAULT NULL,
  `SurgeryPostponedDueToAnaemia` varchar(3) DEFAULT NULL,
  `PathologyDate` date DEFAULT NULL,
  `Hb` float DEFAULT NULL,
  `RCC` float DEFAULT NULL,
  `MCV` float DEFAULT NULL,
  `Ferritin` float DEFAULT NULL,
  `Transferrin` float DEFAULT NULL,
  `TIBC` float DEFAULT NULL,
  `Tsat` float DEFAULT NULL,
  `ESR` float DEFAULT NULL,
  `CRP` float DEFAULT NULL,
  `Creat` float DEFAULT NULL,
  `eGFR` float DEFAULT NULL,
  `ALT` float DEFAULT NULL,
  `GGT` float DEFAULT NULL,
  `B12` float DEFAULT NULL,
  `Fol` float DEFAULT NULL,
  `TSH` float DEFAULT NULL,
  `FOB` float DEFAULT NULL,
  `Pathologist` varchar(50) DEFAULT NULL,
  `AnaemiaType` varchar(50) DEFAULT NULL,
  `Treatment` varchar(100) DEFAULT NULL,
  `DUITAppointmentDate` date DEFAULT NULL,
  `DUITBooked` varchar(3) DEFAULT NULL,
  `SpecialistDetails` varchar(100) DEFAULT NULL,
  `FollowUpPathologyDate` date DEFAULT NULL,
  `Pathologist2` varchar(50) DEFAULT NULL,
  `Hb2` float DEFAULT NULL,
  `RCC2` float DEFAULT NULL,
  `MCV2` float DEFAULT NULL,
  `Retic` float DEFAULT NULL,
  `DAT` float DEFAULT NULL,
  `Ferritin2` float DEFAULT NULL,
  `Transferrin2` float DEFAULT NULL,
  `TIBC2` float DEFAULT NULL,
  `Tsat2` float DEFAULT NULL,
  `sTfr` float DEFAULT NULL,
  `ESR2` float DEFAULT NULL,
  `CRP2` float DEFAULT NULL,
  `Creat2` float DEFAULT NULL,
  `eGFR2` float DEFAULT NULL,
  `ALT2` float DEFAULT NULL,
  `GGT2` float DEFAULT NULL,
  `B122` float DEFAULT NULL,
  `Fol2` float DEFAULT NULL,
  `TSH2` float DEFAULT NULL,
  `FOB2` float DEFAULT NULL,
  `PreadmissionClinicDate` date DEFAULT NULL,
  `SurgeryDate` date DEFAULT NULL,
  `SurgeryPostponedDueToAnaemia2` varchar(3) DEFAULT NULL,
  `DateOfAdmission` date DEFAULT NULL,
  `DateOfDischarge` date DEFAULT NULL,
  `LengthOfStay` int(11) DEFAULT NULL,
  `MedianLOSPerSPI` float DEFAULT NULL,
  `PreopHb` float DEFAULT NULL,
  `PostopHb` float DEFAULT NULL,
  `LowestPostopHb` float DEFAULT NULL,
  `DCHb` float DEFAULT NULL,
  `PreopRBCUnits` int(11) DEFAULT NULL,
  `IntraopRBCUnits` int(11) DEFAULT NULL,
  `RBC0to48hrsUnits` int(11) DEFAULT NULL,
  `RBC49hrstoDCUnits` int(11) DEFAULT NULL,
  `SixWeekPostopPhCallDate` date DEFAULT NULL,
  `NotesQuestionnaireCompleted` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eventdefination_column`
--

CREATE TABLE `eventdefination_column` (
  `event_column_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_column_data`
--

CREATE TABLE `event_column_data` (
  `event_column_data_id` int(225) NOT NULL,
  `eventdefinition_column_id` int(225) NOT NULL,
  `eventcolumndata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_defination`
--

CREATE TABLE `event_defination` (
  `eventDefinition_id` int(225) NOT NULL,
  `event_list_id` int(11) NOT NULL,
  `variable_defination_id` int(11) NOT NULL,
  `DATASET` varchar(50) DEFAULT NULL,
  `PATIENT.ID` int(11) DEFAULT NULL,
  `EVENT` varchar(50) DEFAULT NULL,
  `CLOSEST.DATE` date DEFAULT NULL,
  `CLOSEST.DATE.EVENT` varchar(50) DEFAULT NULL,
  `HB` decimal(10,2) DEFAULT NULL,
  `HCT` decimal(10,2) DEFAULT NULL,
  `RCC` int(11) DEFAULT NULL,
  `MCV` decimal(10,2) DEFAULT NULL,
  `RETIC` decimal(10,2) DEFAULT NULL,
  `PRBC` decimal(10,2) DEFAULT NULL,
  `WEIGHT` decimal(10,2) DEFAULT NULL,
  `HAEMOSTAT.INTERVENE` varchar(50) DEFAULT NULL,
  `ON.PUMP` varchar(50) DEFAULT NULL,
  `PRIMARY.OPERATION` varchar(50) DEFAULT NULL,
  `CS.URGENCY` varchar(50) DEFAULT NULL,
  `DIAGNOSIS` varchar(50) DEFAULT NULL,
  `TREATMENT` varchar(50) DEFAULT NULL,
  `RAW.DATA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_defination`
--

INSERT INTO `event_defination` (`eventDefinition_id`, `event_list_id`, `variable_defination_id`, `DATASET`, `PATIENT.ID`, `EVENT`, `CLOSEST.DATE`, `CLOSEST.DATE.EVENT`, `HB`, `HCT`, `RCC`, `MCV`, `RETIC`, `PRBC`, `WEIGHT`, `HAEMOSTAT.INTERVENE`, `ON.PUMP`, `PRIMARY.OPERATION`, `CS.URGENCY`, `DIAGNOSIS`, `TREATMENT`, `RAW.DATA`) VALUES
(1, 1, 1, 'ds3b', 1001, 'Event1', '2023-01-01', 'ClosestEvent1', 12.30, 36.50, 4, 90.20, 2.10, 0.50, 65.70, 'Intervene1', 'OnPump1', 'Operation1', 'Urgency1', 'Diagnosis1', 'Treatment1', 'RawData1'),
(2, 2, 2, 'ds6b', 1002, 'Event2', '2023-02-01', 'ClosestEvent2', 11.80, 39.20, 5, 85.40, 1.80, 0.30, 71.20, 'Intervene2', 'OnPump2', 'Operation2', 'Urgency2', 'Diagnosis2', 'Treatment2', 'RawData2'),
(3, 3, 3, 'ds7e', 1003, 'Event3', '2023-03-01', 'ClosestEvent3', 13.10, 42.80, 3, 92.70, 2.50, 0.70, 70.10, 'Intervene3', 'OnPump3', 'Operation3', 'Urgency3', 'Diagnosis3', 'Treatment3', 'RawData3');

-- --------------------------------------------------------

--
-- Table structure for table `event_list`
--

CREATE TABLE `event_list` (
  `event_list_id` int(100) NOT NULL,
  `eventName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_list`
--

INSERT INTO `event_list` (`event_list_id`, `eventName`) VALUES
(135, 'EVENT'),
(136, 'PATHOLOGY'),
(137, 'PRBC'),
(138, 'SURGERY.WAITLIST'),
(139, 'PAM.ADMISSION'),
(140, 'PAM.INITIAL.CONTACT'),
(141, 'PAM.INITIAL.PATHOLOGY'),
(142, 'PAM.DIAGNOSIS'),
(143, 'PAM.TREATMENT'),
(144, 'PAM.FOLLOW.UP.PATHOLOGY'),
(145, 'PAM.TREATMENT.CURTAIL'),
(146, 'HOSP.PRE.ADMISSION'),
(147, 'HOSP.PRE.ADMISSION.PATHOLOGY'),
(148, 'HOSP.ADMISSION'),
(149, 'PREOPERATIVE.PATHOLOGY'),
(150, 'PREOPERATIVE.PRBC'),
(151, 'PREOPERATIVE.MORTALITY'),
(152, 'SURGERY.DIAGNOSIS'),
(153, 'SURGERY'),
(154, 'SURGERY.TREATMENT'),
(155, 'INTRAOPERATIVE.PATHOLOGY'),
(156, 'INTRAOPERATIVE.PRBC'),
(157, 'ICU.ADMISSION'),
(158, 'ICU.PATHOLOGY'),
(159, 'ICU.PRBC'),
(160, 'POSTOPERATIVE.PATHOLOGY'),
(161, 'POSTOPERATIVE.PRBC'),
(162, 'ICU.DISCHARGE'),
(163, 'WARD.PATHOLOGY'),
(164, 'WARD.PRBC'),
(165, 'HOSP.DISCHARGE'),
(166, 'FINAL.PATHOLOGY'),
(167, 'POSTOPERATIVE.MORTALITY');

-- --------------------------------------------------------

--
-- Table structure for table `raw_standard_column`
--

CREATE TABLE `raw_standard_column` (
  `rawColumnNameID` int(11) DEFAULT NULL,
  `variableColumnNameID` int(11) DEFAULT NULL,
  `RowID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variable_definitions`
--

CREATE TABLE `variable_definitions` (
  `variable_definition_id` int(11) NOT NULL,
  `variableColumnName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloumn_mapping`
--
ALTER TABLE `cloumn_mapping`
  ADD KEY `fk_event_id` (`event_id`),
  ADD KEY `fk_event_list_id` (`event_list_id`),
  ADD KEY `fk_variable_definition_id` (`variable_defination_id`),
  ADD KEY `fk_dataset_column_id` (`dataset_column_id`),
  ADD KEY `fk_eventdefinition_column_id` (`eventdefination_column_id`);

--
-- Indexes for table `dataset_column`
--
ALTER TABLE `dataset_column`
  ADD PRIMARY KEY (`dataset_cloumn_id`),
  ADD KEY `fk_bloos_data` (`pk_blood_data`),
  ADD KEY `fk_cardiacsurgery_data` (`pk_cardiacsurgery_data`),
  ADD KEY `fk_cardiac_data` (`pk_cardiac_data`),
  ADD KEY `fk_dataset_id` (`dataset_id`);

--
-- Indexes for table `detail_dm`
--
ALTER TABLE `detail_dm`
  ADD PRIMARY KEY (`dataset_id`);

--
-- Indexes for table `DS3B`
--
ALTER TABLE `DS3B`
  ADD PRIMARY KEY (`pk_cardiac_data`);

--
-- Indexes for table `DS6B`
--
ALTER TABLE `DS6B`
  ADD PRIMARY KEY (`pk_blood_data`);

--
-- Indexes for table `DS7E`
--
ALTER TABLE `DS7E`
  ADD PRIMARY KEY (`pk_cardiacsurgery_data`);

--
-- Indexes for table `eventdefination_column`
--
ALTER TABLE `eventdefination_column`
  ADD PRIMARY KEY (`event_column_id`),
  ADD KEY `fk_eventID` (`event_id`);

--
-- Indexes for table `event_column_data`
--
ALTER TABLE `event_column_data`
  ADD PRIMARY KEY (`event_column_data_id`),
  ADD KEY `fk_eventdefinition_coloumnID` (`eventdefinition_column_id`);

--
-- Indexes for table `event_defination`
--
ALTER TABLE `event_defination`
  ADD PRIMARY KEY (`eventDefinition_id`),
  ADD KEY `fk_event_list_id` (`event_list_id`),
  ADD KEY `fk_variable_definition_id` (`variable_defination_id`);

--
-- Indexes for table `event_list`
--
ALTER TABLE `event_list`
  ADD PRIMARY KEY (`event_list_id`);

--
-- Indexes for table `variable_definitions`
--
ALTER TABLE `variable_definitions`
  ADD PRIMARY KEY (`variable_definition_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DS3B`
--
ALTER TABLE `DS3B`
  MODIFY `pk_cardiac_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DS6B`
--
ALTER TABLE `DS6B`
  MODIFY `pk_blood_data` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DS7E`
--
ALTER TABLE `DS7E`
  MODIFY `pk_cardiacsurgery_data` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_defination`
--
ALTER TABLE `event_defination`
  MODIFY `eventDefinition_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_list`
--
ALTER TABLE `event_list`
  MODIFY `event_list_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cloumn_mapping`
--
ALTER TABLE `cloumn_mapping`
  ADD CONSTRAINT `fk_dataset_column_id` FOREIGN KEY (`dataset_column_id`) REFERENCES `dataset_column` (`dataset_cloumn_id`),
  ADD CONSTRAINT `fk_eventdefinition_column_id` FOREIGN KEY (`eventdefination_column_id`) REFERENCES `dataset_column` (`dataset_cloumn_id`);

--
-- Constraints for table `dataset_column`
--
ALTER TABLE `dataset_column`
  ADD CONSTRAINT `fk_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `detail_dm` (`dataset_id`);

--
-- Constraints for table `eventdefination_column`
--
ALTER TABLE `eventdefination_column`
  ADD CONSTRAINT `fk_eventID` FOREIGN KEY (`event_id`) REFERENCES `event_defination` (`eventDefinition_id`);

--
-- Constraints for table `event_column_data`
--
ALTER TABLE `event_column_data`
  ADD CONSTRAINT `fk_eventdefinition_coloumnID` FOREIGN KEY (`eventdefinition_column_id`) REFERENCES `eventdefination_column` (`event_column_id`);

--
-- Constraints for table `event_defination`
--
ALTER TABLE `event_defination`
  ADD CONSTRAINT `fk_event_list_id` FOREIGN KEY (`event_list_id`) REFERENCES `event_list` (`event_list_id`),
  ADD CONSTRAINT `fk_variable_definition_id` FOREIGN KEY (`variable_defination_id`) REFERENCES `variable_definitions` (`variable_definition_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
