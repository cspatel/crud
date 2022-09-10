-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2022 at 10:30 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iiht`
--
CREATE DATABASE IF NOT EXISTS `iiht` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `iiht`;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `emp_lname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`emp_id`, `emp_fname`, `emp_lname`, `dept_id`, `designation`) VALUES
(1, 'David', 'Miller', 2, 'Engineer'),
(2, 'Peter', 'Watson', 3, 'Manger'),
(3, 'Mark', 'Boucher', 1, 'Scientist'),
(2, 'Peter', 'Watdon', 3, 'BDE'),
(1, 'David', 'Miller', 2, 'Developer'),
(4, 'Adam ', 'Warner', 4, 'Receptionist'),
(3, 'Mark', 'Boucher', 1, 'Engineer'),
(4, 'Adam', 'Warner', 4, 'Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `occupation` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `working_date` date DEFAULT NULL,
  `working_hours` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `occupation`, `working_date`, `working_hours`) VALUES
('Robin', 'Scientist', '2020-10-04', '12'),
('Warner', 'Engineer', '2020-10-04', '10'),
('Peter', 'Actor', '2020-10-04', '13'),
('Marco', 'Doctor', '2020-10-04', '14'),
('Brayden', 'Teacher', '2020-10-04', '12'),
('Antonio', 'Business', '2020-10-04', '11'),
('Petson', 'Doctor', '2022-07-11', '22'),
('Ronald', 'Business', '2022-07-01', '23');

-- --------------------------------------------------------

--
-- Table structure for table `sample_data`
--

CREATE TABLE `sample_data` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sample_data`
--

INSERT INTO `sample_data` (`id`, `first_name`, `last_name`, `age`, `gender`) VALUES
(1, 'Henil', 'Patel', 30, 'Male'),
(2, 'Chandrakant', 'Patel', 52, 'Male'),
(3, 'Nirali', 'Bhatt', 30, 'Female'),
(4, 'Dr. Mittal', 'Patel', 30, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`id`, `name`, `address`, `city`, `pincode`, `age`, `sex`, `email`) VALUES
(1, 'Prem', 'Adajan', 'Surat', '395009', 22, 'Male', 'premvaidya521@gmail.com'),
(2, 'Nirmal', 'Olpad', 'Surat', '395005', 19, 'Male', NULL),
(3, 'Nishi', 'Adajan', 'Surat', '395009', 20, 'Female', NULL),
(4, 'Rishi', 'Katargam', 'Surat', '395006', 19, 'Male', NULL),
(5, 'Rajesh', 'Vesu', 'Surat', '395006', 22, 'Male', NULL),
(6, 'Tushar', 'Vesu', 'Vapi', '395006', 23, 'Male', NULL),
(7, 'Ketki', 'Station road', 'Vapi', '395006', 22, 'Female', NULL),
(8, 'Twinkle', 'LPSavani road', 'Surat', '395009', 25, 'Female', NULL),
(9, 'Alfiya', 'Rampura', 'Surat', '395005', 20, 'Female', NULL),
(10, 'Vidhi', 'Station road', 'Vapi', '394007', 24, 'Female', NULL),
(11, 'Prem vaidya', 'Adajan', 'Surat', '395009', 21, 'Male', 'Premxyz@gmail.com'),
(12, 'Nidhi', 'adajan', 'Surat', '395009', 20, 'Female', 'nidhi123@gmail.com'),
(13, 'Nirma', 'adajan', 'vapi', '395009', 19, 'Female', 'nidhi123@gmail.com'),
(15, 'Rishi', 'Santanagar Udhna', 'Surat', '394221', 19, 'Male', 'rishi@gmail.com'),
(16, 'Anand', 'Mahadev nagar Udhna', 'Surat', '394221', 19, 'Male', 'anand@gmail.com'),
(18, 'Vijay', 'Mahadev nagar Udhna', 'Surat', '394221', 19, 'Male', 'anand@gmail.com'),
(19, 'Dirgh', 'Katargam', 'Surat', '395008', 18, 'Male', 'dirgh@gmail.com'),
(20, 'Mittal', 'Palanpur Canalroad', 'Surat', '395008', 32, 'Female', 'mittal@gmail.com');

--
-- Triggers `stu`
--
DELIMITER $$
CREATE TRIGGER `before_insert_stu` BEFORE INSERT ON `stu` FOR EACH ROW IF NEW.age < 18 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'student must be older than 18.';
END IF
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sample_data`
--
ALTER TABLE `sample_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sample_data`
--
ALTER TABLE `sample_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stu`
--
ALTER TABLE `stu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
