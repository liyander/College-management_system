-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2024 at 01:04 PM
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
-- Database: `AttendanceManagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `academic_year_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`academic_year_id`, `name`, `type`, `status`) VALUES
(1, '2024-2025', 'ODD', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `session_id` int(11) NOT NULL,
  `register_no` bigint(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `remark` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`session_id`, `register_no`, `status`, `remark`) VALUES
(1, 714022107001, '1', ''),
(2, 714022107001, '1', ''),
(3, 714023107002, '1', ''),
(3, 714023107003, '1', ''),
(3, 714023107004, '1', ''),
(3, 714023107005, '1', ''),
(3, 714023107006, '1', ''),
(3, 714023107007, '1', ''),
(3, 714023107008, '1', ''),
(3, 714023107009, '1', ''),
(3, 714023107010, '1', ''),
(3, 714023107011, '1', ''),
(3, 714023107012, '1', ''),
(3, 714023107013, '1', ''),
(3, 714023107014, '1', ''),
(3, 714023107015, '1', ''),
(3, 714023107016, '1', ''),
(3, 714023107017, '1', ''),
(3, 714023107018, '1', ''),
(3, 714023107019, '1', ''),
(3, 714023107020, '1', ''),
(3, 714023107021, '1', ''),
(3, 714023107024, '1', ''),
(3, 714023107025, '1', ''),
(3, 714023107026, '1', ''),
(3, 714023107027, '1', ''),
(3, 714023107028, '1', ''),
(3, 714023107029, '1', ''),
(3, 714023107030, '1', ''),
(3, 714023107031, '1', ''),
(3, 714023107032, '1', ''),
(3, 714023107033, '1', ''),
(3, 714023107034, '1', ''),
(3, 714023107035, '1', ''),
(3, 714023107036, '1', ''),
(3, 714023107038, '1', ''),
(3, 714023107039, '1', ''),
(3, 714023107040, '1', ''),
(3, 714023107041, '1', ''),
(3, 714023107042, '1', ''),
(3, 714023107043, '1', ''),
(3, 714023107044, '1', ''),
(3, 714023107045, '1', ''),
(3, 714023107046, '1', ''),
(3, 714023107047, '1', ''),
(3, 714023107048, '1', ''),
(3, 714023107049, '1', ''),
(3, 714023107050, '1', ''),
(3, 714023107051, '1', ''),
(3, 714023107052, '1', ''),
(3, 714023107053, '1', ''),
(3, 714023107054, '1', ''),
(3, 714023107055, '0', ''),
(3, 714023107056, '1', ''),
(3, 714023107057, '1', ''),
(3, 714023107058, '1', ''),
(3, 714023107059, '0', ''),
(3, 714023107060, '1', ''),
(4, 714023107002, '1', ''),
(4, 714023107003, '1', ''),
(4, 714023107004, '1', ''),
(4, 714023107005, '1', ''),
(4, 714023107006, '1', ''),
(4, 714023107007, '1', ''),
(4, 714023107008, '1', ''),
(4, 714023107009, '1', ''),
(4, 714023107010, '1', ''),
(4, 714023107011, '1', ''),
(4, 714023107012, '1', ''),
(4, 714023107013, '1', ''),
(4, 714023107014, '1', ''),
(4, 714023107015, '1', ''),
(4, 714023107016, '1', ''),
(4, 714023107017, '1', ''),
(4, 714023107018, '1', ''),
(4, 714023107019, '1', ''),
(4, 714023107020, '1', ''),
(4, 714023107021, '1', ''),
(4, 714023107024, '1', ''),
(4, 714023107025, '1', ''),
(4, 714023107026, '1', ''),
(4, 714023107027, '1', ''),
(4, 714023107028, '1', ''),
(4, 714023107029, '1', ''),
(4, 714023107030, '1', ''),
(4, 714023107031, '1', ''),
(4, 714023107032, '1', ''),
(4, 714023107033, '1', ''),
(4, 714023107034, '1', ''),
(4, 714023107035, '1', ''),
(4, 714023107036, '1', ''),
(4, 714023107038, '1', ''),
(4, 714023107039, '1', ''),
(4, 714023107040, '1', ''),
(4, 714023107041, '1', ''),
(4, 714023107042, '1', ''),
(4, 714023107043, '1', ''),
(4, 714023107044, '1', ''),
(4, 714023107045, '1', ''),
(4, 714023107046, '1', ''),
(4, 714023107047, '1', ''),
(4, 714023107048, '1', ''),
(4, 714023107049, '1', ''),
(4, 714023107050, '1', ''),
(4, 714023107051, '1', ''),
(4, 714023107052, '1', ''),
(4, 714023107053, '1', ''),
(4, 714023107054, '1', ''),
(4, 714023107055, '0', ''),
(4, 714023107056, '1', ''),
(4, 714023107057, '1', ''),
(4, 714023107058, '1', ''),
(4, 714023107059, '0', ''),
(4, 714023107060, '1', ''),
(5, 714023107002, '0', ''),
(5, 714023107003, '0', ''),
(5, 714023107004, '0', ''),
(5, 714023107005, '1', ''),
(5, 714023107006, '1', ''),
(5, 714023107007, '1', ''),
(5, 714023107008, '1', ''),
(5, 714023107009, '1', ''),
(5, 714023107010, '1', ''),
(5, 714023107011, '1', ''),
(5, 714023107012, '1', ''),
(5, 714023107013, '1', ''),
(5, 714023107014, '1', ''),
(5, 714023107015, '1', ''),
(5, 714023107016, '1', ''),
(5, 714023107017, '1', ''),
(5, 714023107018, '1', ''),
(5, 714023107019, '1', ''),
(5, 714023107020, '1', ''),
(5, 714023107021, '1', ''),
(5, 714023107024, '1', ''),
(5, 714023107025, '1', ''),
(5, 714023107026, '1', ''),
(5, 714023107027, '1', ''),
(5, 714023107028, '1', ''),
(5, 714023107029, '1', ''),
(5, 714023107030, '1', ''),
(5, 714023107031, '1', ''),
(5, 714023107032, '1', ''),
(5, 714023107033, '1', ''),
(5, 714023107034, '1', ''),
(5, 714023107035, '1', ''),
(5, 714023107036, '1', ''),
(5, 714023107038, '1', ''),
(5, 714023107039, '1', ''),
(5, 714023107040, '1', ''),
(5, 714023107041, '1', ''),
(5, 714023107042, '1', ''),
(5, 714023107043, '1', ''),
(5, 714023107044, '1', ''),
(5, 714023107045, '1', ''),
(5, 714023107046, '1', ''),
(5, 714023107047, '1', ''),
(5, 714023107048, '1', ''),
(5, 714023107049, '1', ''),
(5, 714023107050, '1', ''),
(5, 714023107051, '1', ''),
(5, 714023107052, '1', ''),
(5, 714023107053, '1', ''),
(5, 714023107054, '1', ''),
(5, 714023107055, '1', ''),
(5, 714023107056, '1', ''),
(5, 714023107057, '1', ''),
(5, 714023107058, '1', ''),
(5, 714023107059, '1', ''),
(5, 714023107060, '1', ''),
(6, 714023107002, '1', ''),
(6, 714023107003, '0', ''),
(6, 714023107004, '0', ''),
(6, 714023107005, '1', ''),
(6, 714023107006, '1', ''),
(6, 714023107007, '1', ''),
(6, 714023107008, '1', ''),
(6, 714023107009, '1', ''),
(6, 714023107010, '1', ''),
(6, 714023107011, '1', ''),
(6, 714023107012, '1', ''),
(6, 714023107013, '1', ''),
(6, 714023107014, '1', ''),
(6, 714023107015, '1', ''),
(6, 714023107016, '1', ''),
(6, 714023107017, '1', ''),
(6, 714023107018, '1', ''),
(6, 714023107019, '1', ''),
(6, 714023107020, '1', ''),
(6, 714023107021, '1', ''),
(6, 714023107024, '1', ''),
(6, 714023107025, '1', ''),
(6, 714023107026, '1', ''),
(6, 714023107027, '1', ''),
(6, 714023107028, '1', ''),
(6, 714023107029, '1', ''),
(6, 714023107030, '1', ''),
(6, 714023107031, '1', ''),
(6, 714023107032, '1', ''),
(6, 714023107033, '1', ''),
(6, 714023107034, '1', ''),
(6, 714023107035, '1', ''),
(6, 714023107036, '1', ''),
(6, 714023107038, '1', ''),
(6, 714023107039, '1', ''),
(6, 714023107040, '1', ''),
(6, 714023107041, '1', ''),
(6, 714023107042, '1', ''),
(6, 714023107043, '1', ''),
(6, 714023107044, '1', ''),
(6, 714023107045, '1', ''),
(6, 714023107046, '1', ''),
(6, 714023107047, '1', ''),
(6, 714023107048, '1', ''),
(6, 714023107049, '1', ''),
(6, 714023107050, '1', ''),
(6, 714023107051, '1', ''),
(6, 714023107052, '1', ''),
(6, 714023107053, '1', ''),
(6, 714023107054, '1', ''),
(6, 714023107055, '1', ''),
(6, 714023107056, '1', ''),
(6, 714023107057, '1', ''),
(6, 714023107058, '1', ''),
(6, 714023107059, '1', ''),
(6, 714023107060, '1', ''),
(7, 714022107001, '1', ''),
(8, 714022107001, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_type`
--

CREATE TABLE `attendance_type` (
  `type_id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_type`
--

INSERT INTO `attendance_type` (`type_id`, `description`, `value`) VALUES
(1, 'Present', 1),
(2, 'Absent', 0),
(3, 'On Duty', -1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(10) NOT NULL,
  `current_semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_name`, `current_semester`) VALUES
(2, '2022-2026', 5),
(3, '2023-2027', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `name`, `type_id`) VALUES
('21CY301', 'Operating Systems and Security', 1),
('21CY502', 'Network Security', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`type_id`, `type`) VALUES
(1, 'Theory'),
(2, 'Laboratory'),
(3, 'Project'),
(4, 'Blended');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`) VALUES
(104, 'Computer Science and Engineering'),
(107, 'Computer Science and Engineering(Cyber Security)');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `email_id`, `name`, `department_id`, `gender`, `designation`, `password`) VALUES
(1, 'rkarthiban@siet.ac.in', 'Karthiban R', 104, 'M', 'Assistant Professor', '*A4B6157319038724E3560894F7F932C8886EBFCF');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_course_department_batch`
--

CREATE TABLE `mapping_course_department_batch` (
  `course_mapping_id` int(11) NOT NULL,
  `course_id` varchar(15) DEFAULT NULL,
  `mapping_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapping_course_department_batch`
--

INSERT INTO `mapping_course_department_batch` (`course_mapping_id`, `course_id`, `mapping_id`, `batch_id`, `semester`) VALUES
(1, '21CY301', 1, 3, 3),
(2, '21CY502', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_program_department`
--

CREATE TABLE `mapping_program_department` (
  `mapping_id` int(11) NOT NULL,
  `programme_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapping_program_department`
--

INSERT INTO `mapping_program_department` (`mapping_id`, `programme_id`, `department_id`) VALUES
(1, 1, 107);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_teacher_course`
--

CREATE TABLE `mapping_teacher_course` (
  `new_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_mapping_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapping_teacher_course`
--

INSERT INTO `mapping_teacher_course` (`new_id`, `user_id`, `course_mapping_id`, `section_id`) VALUES
(0, 1, 1, 1),
(1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `programme_id` int(11) NOT NULL,
  `programme_name` varchar(50) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `no_of_semesters` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programme_id`, `programme_name`, `duration`, `no_of_semesters`) VALUES
(1, 'BE', 4, 8),
(2, 'ME', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_name` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `new_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `date_of_session` date NOT NULL,
  `period` int(11) NOT NULL,
  `topics_covered` varchar(100) DEFAULT NULL,
  `no_of_present` int(11) NOT NULL,
  `no_of_absent` int(11) NOT NULL,
  `no_of_od` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `new_id`, `academic_year_id`, `date_of_session`, `period`, `topics_covered`, `no_of_present`, `no_of_absent`, `no_of_od`) VALUES
(1, 1, 1, '2024-09-21', 1, 'period 1', 1, 0, 0),
(2, 1, 1, '2024-09-21', 2, 'period 2', 1, 0, 0),
(3, 0, 1, '2024-09-21', 1, 'period 1', 54, 2, 0),
(4, 0, 1, '2024-09-21', 2, 'period 2', 54, 2, 0),
(5, 0, 1, '2024-09-23', 1, 'day test 1', 53, 3, 0),
(6, 0, 1, '2024-09-23', 2, 'day test 2', 54, 2, 0),
(7, 1, 1, '2024-09-23', 2, 'test year_id', 1, 0, 0),
(8, 1, 1, '2024-09-24', 6, 'new section id test', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `register_no` bigint(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `gender` char(1) NOT NULL,
  `boarding_status` char(1) NOT NULL,
  `mapping_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`register_no`, `name`, `DOB`, `gender`, `boarding_status`, `mapping_id`, `batch_id`, `section_id`) VALUES
(714022107001, 'Yuvan', '2001-01-01', '', '', 1, 2, 1),
(714023107002, 'AATHAVAN M', '2006-03-27', '', '', 1, 3, 1),
(714023107003, 'ABISHEAK S', '2006-05-03', '', '', 1, 3, 1),
(714023107004, 'ADHITHYAN M', '2005-02-16', '', '', 1, 3, 1),
(714023107005, 'AKASH KUMARAN. T', '2005-11-16', '', '', 1, 3, 1),
(714023107006, 'AKASHSHANKAR M', '2005-11-16', '', '', 1, 3, 1),
(714023107007, 'ANISHA S', '2005-03-15', '', '', 1, 3, 1),
(714023107008, 'Archana S', '2005-05-27', '', '', 1, 3, 1),
(714023107009, 'ARUN R', '2005-02-11', '', '', 1, 3, 1),
(714023107010, 'ATHISHA L', '2005-11-17', '', '', 1, 3, 1),
(714023107011, 'BALASURYA G', '2005-03-29', '', '', 1, 3, 1),
(714023107012, 'BHADRIKA M K', '2005-12-23', '', '', 1, 3, 1),
(714023107013, 'BHARATH M ', '2006-02-24', '', '', 1, 3, 1),
(714023107014, 'BHAVAN K', '2005-12-20', '', '', 1, 3, 1),
(714023107015, 'CHRIST MICHAEL JENISTON S', '2005-07-06', '', '', 1, 3, 1),
(714023107016, 'DEEPAK S', '2005-07-10', '', '', 1, 3, 1),
(714023107017, 'DHARAN G K', '2005-11-08', '', '', 1, 3, 1),
(714023107018, 'DHARSAN N', '2004-11-16', '', '', 1, 3, 1),
(714023107019, 'DHEEPA MUTHU JOTHI V', '2005-09-17', '', '', 1, 3, 1),
(714023107020, 'Dinuvishruth N.V.', '2005-12-20', '', '', 1, 3, 1),
(714023107021, 'DIVYA SREE S', '2005-08-13', '', '', 1, 3, 1),
(714023107024, 'GOVARTHAN R', '2006-07-19', '', '', 1, 3, 1),
(714023107025, 'HAAKISH VP', '2005-08-07', '', '', 1, 3, 1),
(714023107026, 'HARIPRASATH S K', '2005-09-27', '', '', 1, 3, 1),
(714023107027, 'HARIPRIYA N U', '2006-10-02', '', '', 1, 3, 1),
(714023107028, 'HARISH M', '2005-12-17', '', '', 1, 3, 1),
(714023107029, 'HARISH KUMAR N', '2005-08-30', '', '', 1, 3, 1),
(714023107030, 'HARSHATKARTHII N T', '2006-06-28', '', '', 1, 3, 1),
(714023107031, 'INDUJA R', '2006-09-07', '', '', 1, 3, 1),
(714023107032, 'JEEVARANJAN V', '2006-05-18', '', '', 1, 3, 1),
(714023107033, 'JENISH C', '2006-05-02', '', '', 1, 3, 1),
(714023107034, 'KALPANA SRI K', '2006-03-25', '', '', 1, 3, 1),
(714023107035, 'Kaniga K', '2006-01-13', '', '', 1, 3, 1),
(714023107036, 'Kanishka R', '2005-12-23', '', '', 1, 3, 1),
(714023107038, 'Kathiresh A', '2005-10-31', '', '', 1, 3, 1),
(714023107039, 'KAVIN NANDHA M K', '2005-11-18', '', '', 1, 3, 1),
(714023107040, 'KAVISHREE S', '2006-01-05', '', '', 1, 3, 1),
(714023107041, 'Keerthana R', '2005-11-19', '', '', 1, 3, 1),
(714023107042, 'Keerthi Raghavan K', '2005-08-03', '', '', 1, 3, 1),
(714023107043, 'Keren R', '2006-06-11', '', '', 1, 3, 1),
(714023107044, 'Kishoak M', '2005-08-11', '', '', 1, 3, 1),
(714023107045, 'Kowshik T', '2006-05-26', '', '', 1, 3, 1),
(714023107046, 'KOWSHIKA M', '2005-08-07', '', '', 1, 3, 1),
(714023107047, 'LALITH KUMAR J', '2005-10-18', '', '', 1, 3, 1),
(714023107048, 'LIYANDER RISHWANTH L', '2004-05-10', '', '', 1, 3, 1),
(714023107049, 'Logha Surya N', '2005-08-25', '', '', 1, 3, 1),
(714023107050, 'LOHITH M.L', '2005-12-12', '', '', 1, 3, 1),
(714023107051, 'MADHANGI R', '2005-07-08', '', '', 1, 3, 1),
(714023107052, 'MAHALAKSHMI M', '2005-11-23', '', '', 1, 3, 1),
(714023107053, 'MANIKANDAN S', '2005-11-23', '', '', 1, 3, 1),
(714023107054, 'MANI SARMA D', '2005-08-19', '', '', 1, 3, 1),
(714023107055, 'MANOJ S (27-11-2004) S', '2004-11-27', '', '', 1, 3, 1),
(714023107056, 'MANOJ S (22-02-2006) S', '2006-02-22', '', '', 1, 3, 1),
(714023107057, 'Meena Abinaya M.G', '2005-01-12', '', '', 1, 3, 1),
(714023107058, 'MIHAASH DHARAN M', '2005-06-08', '', '', 1, 3, 1),
(714023107059, 'MOHAMED THOUFIQ M', '2006-01-23', '', '', 1, 3, 1),
(714023107060, 'MOHANRAJ V', '2004-09-14', '', '', 1, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`academic_year_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `attendance_type`
--
ALTER TABLE `attendance_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mapping_course_department_batch`
--
ALTER TABLE `mapping_course_department_batch`
  ADD PRIMARY KEY (`course_mapping_id`),
  ADD KEY `mapping_id` (`mapping_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `mapping_program_department`
--
ALTER TABLE `mapping_program_department`
  ADD PRIMARY KEY (`mapping_id`),
  ADD KEY `programme_id` (`programme_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `mapping_teacher_course`
--
ALTER TABLE `mapping_teacher_course`
  ADD PRIMARY KEY (`new_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_mapping_id` (`course_mapping_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`programme_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `new_id` (`new_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`register_no`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `mapping_id` (`mapping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mapping_course_department_batch`
--
ALTER TABLE `mapping_course_department_batch`
  MODIFY `course_mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapping_program_department`
--
ALTER TABLE `mapping_program_department`
  MODIFY `mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `programme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `course_type` (`type_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `mapping_course_department_batch`
--
ALTER TABLE `mapping_course_department_batch`
  ADD CONSTRAINT `mapping_course_department_batch_ibfk_1` FOREIGN KEY (`mapping_id`) REFERENCES `mapping_program_department` (`mapping_id`),
  ADD CONSTRAINT `mapping_course_department_batch_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`),
  ADD CONSTRAINT `mapping_course_department_batch_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `mapping_program_department`
--
ALTER TABLE `mapping_program_department`
  ADD CONSTRAINT `mapping_program_department_ibfk_1` FOREIGN KEY (`programme_id`) REFERENCES `programme` (`programme_id`),
  ADD CONSTRAINT `mapping_program_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `mapping_teacher_course`
--
ALTER TABLE `mapping_teacher_course`
  ADD CONSTRAINT `mapping_teacher_course_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  ADD CONSTRAINT `mapping_teacher_course_ibfk_2` FOREIGN KEY (`course_mapping_id`) REFERENCES `mapping_course_department_batch` (`course_mapping_id`),
  ADD CONSTRAINT `mapping_teacher_course_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`new_id`) REFERENCES `mapping_teacher_course` (`new_id`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_year` (`academic_year_id`);

--
-- Constraints for table `student_information`
--
ALTER TABLE `student_information`
  ADD CONSTRAINT `student_information_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`),
  ADD CONSTRAINT `student_information_ibfk_2` FOREIGN KEY (`mapping_id`) REFERENCES `mapping_program_department` (`mapping_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
