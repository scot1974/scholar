-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 11:39 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accidentrecord`
--
CREATE DATABASE IF NOT EXISTS `accidentrecord` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `accidentrecord`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(9) NOT NULL,
  `ad_username` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `ad_password` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_username`, `ad_password`) VALUES
(1, 'admin', 'admin'),
(2, 'donbok', 'donbok');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `r_id` int(9) NOT NULL,
  `type` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `place` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `dt` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `kill` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `wound` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `v_type` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `v_number` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `reason` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`r_id`, `type`, `place`, `dt`, `kill`, `wound`, `v_type`, `v_number`, `reason`) VALUES
(1, 'Minor', 'Umiam', '02/01/2018 10:02:18:PM', '2', '20', '2', 'ML05D 4392', 'Flat Tire Bumb to electrict Post'),
(2, 'Major', 'Damsait', '11/23/2018 10:10:56 AM', '19', '9', '2', 'AS09D 4938', 'Direct Hit with a Dumper'),
(3, 'Minor', 'Ray Field Road Jos', '02/11/2019 03 04 06 PM', '5', '12', 'Bus', 'JOSDMS 2019', 'High Speed'),
(4, 'Major', 'Old Airport Junction Hwolshe', '02/12/2019 0104 06 PM', '2', '5', 'Truck', 'GOM234 534', 'Flat Tire due to high speed');

-- --------------------------------------------------------

--
-- Table structure for table `staff_record1`
--

CREATE TABLE `staff_record1` (
  `r_id` int(11) NOT NULL,
  `dfa` varchar(50) NOT NULL,
  `pfa` varchar(50) NOT NULL,
  `cdfa` varchar(50) NOT NULL,
  `entrygradelevel` varchar(50) NOT NULL,
  `designationfa` varchar(50) NOT NULL,
  `AppStatusFirstEmp` varchar(50) NOT NULL,
  `dla` varchar(50) NOT NULL,
  `CurrentGradeLevel` varchar(50) NOT NULL,
  `CurrentStep` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `CurrentDesignationCadre` varchar(50) NOT NULL,
  `SalaryStructure` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `otherame` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `maritalStatus` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `lga_of_Origin` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_records`
--

CREATE TABLE `staff_records` (
  `date_of_first_appt` date NOT NULL,
  `pfa` varchar(200) NOT NULL,
  `CDOFA` date NOT NULL,
  `entry_grade_level` varchar(50) NOT NULL,
  `desig_of_first_appt` varchar(150) NOT NULL,
  `appt_status` varchar(150) NOT NULL,
  `DOLA` date NOT NULL,
  `current_grade_level` int(20) NOT NULL,
  `current_step` int(20) NOT NULL,
  `Dept` varchar(200) NOT NULL,
  `current_desig_cadre` varchar(200) NOT NULL,
  `salary_structure` varchar(250) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `othername` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `state_of_origin` varchar(50) NOT NULL,
  `lga_of_origin` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_records`
--

INSERT INTO `staff_records` (`date_of_first_appt`, `pfa`, `CDOFA`, `entry_grade_level`, `desig_of_first_appt`, `appt_status`, `DOLA`, `current_grade_level`, `current_step`, `Dept`, `current_desig_cadre`, `salary_structure`, `surname`, `firstname`, `othername`, `dob`, `gender`, `marital_status`, `state_of_origin`, `lga_of_origin`, `address`, `phone_number`, `email`) VALUES
('2018-09-22', 'Elimtop Hotel Jos', '2018-09-22', '4', 'Director', 'Permanent', '2024-12-31', 8, 5, 'Procurrement and Supplies', 'Managing Director', '45000', 'Yusuf', 'Sule', 'Yusuf', '1994-10-12', 'Male', 'Single', 'Taraba', 'Wukari', 'No 1 GRA Airstrip Road', '07065499404', 'captain@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `vehicle_number` varchar(11) NOT NULL,
  `place_of_accident` varchar(50) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `t_id` int(9) NOT NULL,
  `type` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`t_id`, `type`) VALUES
(1, 'Major'),
(2, 'Minor');

-- --------------------------------------------------------

--
-- Table structure for table `v_type`
--

CREATE TABLE `v_type` (
  `v_id` int(9) NOT NULL,
  `v_type` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `v_type`
--

INSERT INTO `v_type` (`v_id`, `v_type`) VALUES
(1, 'Truck'),
(2, 'Bus'),
(3, 'Pickup'),
(4, 'Mini Van'),
(5, 'Car '),
(6, 'Auto'),
(7, 'Two Wheeler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `v_type`
--
ALTER TABLE `v_type`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `r_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `t_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `v_type`
--
ALTER TABLE `v_type`
  MODIFY `v_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `ambulance`
--
CREATE DATABASE IF NOT EXISTS `ambulance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ambulance`;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `name`, `location`, `description`, `created_at`, `status`) VALUES
(8, 'A1', 'old airport junction, jos', 'Flat tire due to high speed...', '2019-04-04 23:32:09', 1),
(9, 'A2', 'along plateau state university', 'Direct Hit With A Dumper.', '2019-04-04 23:36:17', 1),
(10, 'A3', 'old airport junction, hwolshe no: 24', 'Fire Our Break Due To Full Electric Voltage...', '2019-04-04 23:39:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `id` int(11) NOT NULL,
  `dispatcher_id` int(11) NOT NULL,
  `ambulance_id` varchar(20) NOT NULL,
  `caller_name` varchar(150) NOT NULL,
  `caller_phone` varchar(12) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `emg_type` varchar(150) NOT NULL,
  `injured` int(11) NOT NULL,
  `amb_required` int(11) NOT NULL,
  `address` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`id`, `dispatcher_id`, `ambulance_id`, `caller_name`, `caller_phone`, `relationship`, `emg_type`, `injured`, `amb_required`, `address`, `notes`, `status`, `created_at`) VALUES
(1, 1, '4', 'Mike Steve', '08067764455', 'self', 'Fire', 3, 2, 'federal lowcost', '-1 Burnt Person\r\n-Two survivors', 1, '2019-03-23 20:09:10'),
(2, 1, '5', 'James Scort', '08045543223', 'self', 'Building fall', 4, 1, 'Bolari', '- Injdkbduhsvkbdijkvbfd\r\n- jdbvdijsvkbnfdjkndfjivknfd', 2, '2019-03-24 06:00:29'),
(3, 1, '6,1', 'Test Test', '08088888333', 'other', 'Knee Test', 3, 3, 'jalingo', 'asbdfdsigdsbuivkfdsgvfd', 1, '2019-03-24 19:28:42'),
(4, 4, '7,1', 'Mike Steve', '08067764455', 'self', 'Building fall', 3, 2, 'maitama', 'wjkdfgbuydisjfkgbuwdosifhwiodslk', 1, '2019-04-02 07:53:31'),
(5, 4, '9', 'Laguma Ephraim', '07065499404', 'self', 'Accident', 5, 0, 'Along Plateau State University', 'Flat Tire Due To High Speed', 1, '2019-04-04 23:45:24'),
(6, 4, 'No_Ambulance', 'Laguma Ephraim', '07065499404', 'self', 'Fire Out Break', 5, 0, 'Laguma Compound Behind Hwolshe Primary School', 'Fire Out Break', 2, '2019-04-04 23:48:04'),
(7, 4, 'No_Ambulance', 'Laguma Ephraim', '07065499404', 'sibling', 'Accident', 5, 0, 'British Junction', 'Needed fast', 0, '2019-04-08 15:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `active`) VALUES
(1, 'John Doe', 1),
(2, 'Mark Smith', 1),
(3, 'Test Test', 1),
(4, 'Dispatcher John Doe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `usergroup` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profileid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `password`, `usergroup`, `created_at`, `profileid`) VALUES
(1, 'admin', '97ece0fcf2255215495adaa8e1c6891627d69261', 123, '2019-03-21 18:08:52', 0),
(2, 'johndoe', '97ece0fcf2255215495adaa8e1c6891627d69261', 321, '2019-03-22 20:21:58', 1),
(3, 'marksmith', '97ece0fcf2255215495adaa8e1c6891627d69261', 321, '2019-03-22 20:23:48', 2),
(4, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 321, '2019-03-22 20:33:01', 3),
(5, 'dispatcher', '97ece0fcf2255215495adaa8e1c6891627d69261', 321, '2019-04-02 07:51:22', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `emergency`
--
ALTER TABLE `emergency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `emergency`
--
ALTER TABLE `emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `apfsystem`
--
CREATE DATABASE IF NOT EXISTS `apfsystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `apfsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `crop_cat`
--

CREATE TABLE `crop_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_cat`
--

INSERT INTO `crop_cat` (`id`, `name`) VALUES
(1, 'Uncategorized'),
(2, 'Cassava'),
(3, 'Rice'),
(4, 'Yam'),
(5, 'Corn');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(256) NOT NULL DEFAULT 'No description',
  `in_stock` int(11) NOT NULL DEFAULT '1',
  `units_in_stock` int(11) NOT NULL DEFAULT '5',
  `date_produced` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_url` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `cat_id`, `name`, `unit_id`, `price`, `description`, `in_stock`, `units_in_stock`, `date_produced`, `created_at`, `img_url`) VALUES
(1, 4, 'Water Yam', 2, 100, '                                                                Freshly harvested                                                ', 1, 200, '2018-09-23 23:12:44', '2018-09-23 23:12:44', NULL),
(2, 3, 'Irrigation Rice', 1, 5000, '                Home grown rice            ', 1, 100, '2018-09-23 23:48:03', '2018-09-23 23:48:03', NULL),
(3, 2, 'New Cassava', 2, 200, 'No description          ', 1, 50, '2018-09-24 01:41:00', '2018-09-24 01:41:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit`) VALUES
(1, 'Bag'),
(2, 'Tuber'),
(3, 'Basket'),
(4, 'Drum');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `first_name` varchar(16) DEFAULT NULL,
  `last_name` varchar(16) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role_id`, `first_name`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'someuser', 1, NULL, NULL, 'someemail@email.com', '$2y$12$kzET2I0jYrEZaV7q8I8NMeX9lLugTH/0wRCtjS2nTOxSiXXV2hko2', '2018-09-18 15:30:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crop_cat`
--
ALTER TABLE `crop_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crop_cat`
--
ALTER TABLE `crop_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `attendance_system`
--
CREATE DATABASE IF NOT EXISTS `attendance_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attendance_system`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttID` int(20) NOT NULL,
  `EmpID` int(10) NOT NULL,
  `Prensent` int(1) NOT NULL,
  `AttDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AttID`, `EmpID`, `Prensent`, `AttDate`) VALUES
(1495, 23, 1, '2013-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `employee_detail`
--

CREATE TABLE `employee_detail` (
  `EmpID` int(10) NOT NULL,
  `EmpName` varchar(255) NOT NULL,
  `EmpAddress` text NOT NULL,
  `EmpMobile` varchar(15) NOT NULL,
  `EmpEmail` varchar(50) NOT NULL,
  `EmpBirthdate` date NOT NULL,
  `EmpBloodGroup` varchar(5) NOT NULL,
  `EmpTechnology` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_detail`
--

INSERT INTO `employee_detail` (`EmpID`, `EmpName`, `EmpAddress`, `EmpMobile`, `EmpEmail`, `EmpBirthdate`, `EmpBloodGroup`, `EmpTechnology`) VALUES
(23, 'jayvik kashipara', 'rajkot', '9426666226', 'info@kashipara.in', '2013-05-23', 'A+', 'php');

-- --------------------------------------------------------

--
-- Table structure for table `increment_detail`
--

CREATE TABLE `increment_detail` (
  `IncID` int(20) NOT NULL,
  `EmpID` int(20) NOT NULL,
  `Salary` int(20) NOT NULL,
  `IncrementDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_detail`
--

CREATE TABLE `salary_detail` (
  `SalaryID` int(20) NOT NULL,
  `EmpID` int(20) NOT NULL,
  `JoinDate` date NOT NULL,
  `EmpType` varchar(20) NOT NULL,
  `CurrentSalary` int(10) NOT NULL,
  `IncrementAmount` int(10) NOT NULL,
  `IncrementAfter` int(5) NOT NULL,
  `IncrementDate` date NOT NULL,
  `LastSalary` int(10) NOT NULL,
  `LastIncrement` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`) VALUES
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`AttID`),
  ADD KEY `EmpID` (`EmpID`);

--
-- Indexes for table `employee_detail`
--
ALTER TABLE `employee_detail`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `increment_detail`
--
ALTER TABLE `increment_detail`
  ADD PRIMARY KEY (`IncID`),
  ADD KEY `EmpID` (`EmpID`),
  ADD KEY `EmpID_2` (`EmpID`);

--
-- Indexes for table `salary_detail`
--
ALTER TABLE `salary_detail`
  ADD PRIMARY KEY (`SalaryID`),
  ADD KEY `EmpID` (`EmpID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `AttID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1496;
--
-- AUTO_INCREMENT for table `employee_detail`
--
ALTER TABLE `employee_detail`
  MODIFY `EmpID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `increment_detail`
--
ALTER TABLE `increment_detail`
  MODIFY `IncID` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary_detail`
--
ALTER TABLE `salary_detail`
  MODIFY `SalaryID` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_detail` (`EmpID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `increment_detail`
--
ALTER TABLE `increment_detail`
  ADD CONSTRAINT `increment_detail_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_detail` (`EmpID`) ON DELETE CASCADE;

--
-- Constraints for table `salary_detail`
--
ALTER TABLE `salary_detail`
  ADD CONSTRAINT `salary_detail_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_detail` (`EmpID`) ON DELETE CASCADE;
--
-- Database: `bbms`
--
CREATE DATABASE IF NOT EXISTS `bbms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bbms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(30) NOT NULL,
  `adminpass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `adminpass`) VALUES
('jinat', 'ji12345');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id` int(250) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `bloodgrp` text NOT NULL,
  `phone` text NOT NULL,
  `dob` text NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`username`, `password`, `email`, `id`, `fullname`, `Address`, `bloodgrp`, `phone`, `dob`, `gender`) VALUES
('batman', '654321', 'bob@gmail.com', 12, 'James', 'Jos South, Plateau State', 'A+', '07065499404', '2018-12-31', 'male'),
('taylor', '654321', 'taylor@taylor.com', 14, 'Taylor', 'Los Angels bla bla bla\r\n@blaaa', 'AB+', '4234354', '2017-03-15', 'male'),
('john', '123456', 'john@john.com', 15, 'John Smith', 'hollwood,\r\nUSA', 'B+', '3245465643', '2017-03-22', ''),
('Scotino', 'scot2018', 'scotjnr@gmail.com', 17, 'Scott Ezra Jnr', 'No: 1 Ray Field, Atiku Street, Jos', 'A+', '07065499404', '2018-10-27', 'male'),
('scott', 'scot123', 'scotjnr@gmail.com', 18, 'Timark Jnr', 'NO 11 Old Airport Junction, Plateau State', 'A+', '08110461009', '2000-12-01', 'male'),
('Marylynn', 'mary2019', 'marylynn@gmail.com', 19, 'Mary James', 'No: 15 GRA Jos, Plateau State', 'B+', '07065499404', '2019-02-14', 'female'),
('Blessing', 'blessing', 'blessingdave@gmail.c', 20, 'Blessing David', 'NO: 10 Tudunwada Jos, Plateau State', 'O+', '07065499404', '2018-12-05', 'female'),
('Barry', 'barry2019', 'barry2018@gmail.com', 21, 'Barry Ezra ', 'NO: 11 Bauchi Ring Road Jos, Plateau State ', 'O+', '07065499404', '2018-08-12', 'male'),
('maryjames', 'maryjames', 'maryjames@gmail.com', 22, 'Mary James', 'Behind Abattoir Market, Jos Plateau State', 'A+', '08162277279', '2019-04-16', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;--
-- Database: `bookshop`
--
CREATE DATABASE IF NOT EXISTS `bookshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookshop`;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `name`, `desc`, `regdate`) VALUES
(1, 'Plain papers', 'They are printing papers in reams', '2016-05-18 17:50:39'),
(2, 'Pen', 'Sharp point', '2016-05-22 17:14:22'),
(5, 'Mark pens', 'Mark pens', '2016-05-22 17:15:55'),
(6, 'Pencil', 'Pencil big', '2016-05-22 17:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `myitems`
--

CREATE TABLE `myitems` (
  `myid` int(15) NOT NULL,
  `suppid` varchar(50) DEFAULT NULL,
  `itemid` int(15) DEFAULT NULL,
  `quantity` int(15) DEFAULT NULL,
  `amount` int(15) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myitems`
--

INSERT INTO `myitems` (`myid`, `suppid`, `itemid`, `quantity`, `amount`, `desc`, `regdate`) VALUES
(1, 'Supplier1', 1, 20, 1000000, 'They are printing papers in reams', '2016-05-19 18:48:52'),
(2, 'Supplier1', 2, 1000, 10, 'Sharp point', '2016-05-22 17:43:51'),
(3, 'Supplier1', 4, 1000, 10, 'Pencils', '2016-05-22 17:43:57'),
(4, 'Supplier1', 6, 1000, 2, 'Pencil big', '2016-05-22 17:46:28'),
(5, 'david', 7, 2, 2000, 'tjkahchlbcblabclasblaksbalkabclcajas;cjchachlajcas;js;ajs;ajss;a;caasc;acacjbjbca', '2019-06-04 20:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbbook`
--

CREATE TABLE `tbbook` (
  `bookid` int(15) NOT NULL,
  `myid` int(15) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `quantity` int(15) DEFAULT NULL,
  `amount` int(15) DEFAULT NULL,
  `status` enum('Pending','Approved','Delivered','Cancelled','Declined') DEFAULT 'Pending',
  `desc` varchar(200) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbook`
--

INSERT INTO `tbbook` (`bookid`, `myid`, `userid`, `quantity`, `amount`, `status`, `desc`, `regdate`) VALUES
(1, 1, 'Shop1', 20, 1000000, 'Delivered', 'They are printing papers in reams', '2016-05-22 18:15:18'),
(2, 1, 'Shop1', 20, 1000000, 'Delivered', 'They are printing papers in reams', '2016-05-22 18:14:58'),
(3, 4, 'Shop1', 10, 2, 'Cancelled', 'Pencil big', '2016-05-22 18:15:51'),
(4, 2, 'Shop1', 10, 10, 'Cancelled', 'Sharp point', '2016-05-22 18:13:08'),
(5, 4, 'Shop1', 10, 2, 'Approved', 'Pencil big', '2016-05-22 18:18:44'),
(6, 2, 'Shop1', 10, 10, 'Approved', 'Sharp point', '2016-05-22 18:18:36'),
(7, 1, 'Shop1', 2, 1000000, 'Declined', 'They are printing papers in reams', '2016-05-22 18:18:18'),
(8, 2, 'Shop1', 10, 10, 'Declined', 'Sharp point', '2016-05-22 18:18:11'),
(9, 4, 'Shop1', 5, 2, 'Pending', 'Pencil big', '2016-05-22 18:19:59'),
(10, 4, 'scotino', 1000, 2, 'Pending', 'Pencil big', '2019-06-04 17:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbsupplier`
--

CREATE TABLE `tbsupplier` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsupplier`
--

INSERT INTO `tbsupplier` (`fname`, `lname`, `email`, `address`, `phone`, `username`, `password`, `regdate`) VALUES
('James', 'David ', 'david@gmail.com', 'Taraba', '07010461009', 'david', 'david2019', '2019-06-04 20:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`fname`, `lname`, `email`, `address`, `phone`, `username`, `password`, `regdate`) VALUES
('David', 'Ezra', 'ezra@gmail.com', 'Gombe', '07065499404', 'scotino', 'scot1974', '2019-06-04 17:22:39'),
('F name', 'L name', 'shop@shop.com', 'My location', '0723334542', 'Shop1', 'Shop1', '2016-05-22 10:04:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `myitems`
--
ALTER TABLE `myitems`
  ADD PRIMARY KEY (`myid`);

--
-- Indexes for table `tbbook`
--
ALTER TABLE `tbbook`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `tbsupplier`
--
ALTER TABLE `tbsupplier`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `myitems`
--
ALTER TABLE `myitems`
  MODIFY `myid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbbook`
--
ALTER TABLE `tbbook`
  MODIFY `bookid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `cs192upsms`
--
CREATE DATABASE IF NOT EXISTS `cs192upsms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs192upsms`;

-- --------------------------------------------------------

--
-- Table structure for table `acceptedapps`
--

CREATE TABLE `acceptedapps` (
  `appID` int(11) NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acceptedapps`
--

INSERT INTO `acceptedapps` (`appID`, `startDate`) VALUES
(20, '2016-04-17 18:10:53'),
(30, '2016-04-17 18:18:16'),
(25, '2016-04-17 19:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `upMail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `upMail`, `password`, `firstName`, `middleName`, `lastName`) VALUES
(1, 'admin1@up.edu.ph', '$2y$10$mLC7.EDdiQUvKUZbFJOdHOLcDAHa0cyRXzJQU7RhULtBhAJFSLmCC', 'Ruby', 'Von', 'Rails'),
(2, 'admin2@up.edu.ph', '$2y$10$O8ht25FBho9kyuGcgWA6DOONEftwtzfVQykMsc1MfDHlYTCDfVBbC', 'Sa', 'Shi', 'Mii');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `applicationID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `scholarshipID` int(11) NOT NULL,
  `appDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  `verifiedByAdmin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`applicationID`, `studentID`, `scholarshipID`, `appDate`, `status`, `verifiedByAdmin`) VALUES
(20, 1, 1, '2016-04-03 11:10:03', 1, 0),
(21, 1, 2, '2016-04-08 15:33:27', 1, 0),
(22, 1, 1, '2016-04-14 07:04:40', 1, 0),
(23, 2, 1, '2016-04-17 18:17:59', 1, 0),
(24, 3, 1, '2016-04-14 07:06:06', 1, 0),
(25, 4, 1, '2016-04-14 07:06:06', 1, 0),
(26, 1, 1, '2016-04-15 10:08:23', 1, 0),
(27, 1, 3, '2016-04-15 12:23:15', 1, 0),
(28, 2, 5, '2016-04-17 18:17:59', 1, 0),
(29, 1, 2, '2016-04-17 18:16:34', 1, 0),
(30, 2, 2, '2016-04-17 18:17:59', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `applicationform`
--

CREATE TABLE `applicationform` (
  `formID` int(11) NOT NULL,
  `scholarshipID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `collegeID` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`collegeID`, `name`) VALUES
(1, 'College of Architecture'),
(2, 'College of Arts and Letters'),
(3, 'Asian Center'),
(4, 'Asian Institute of Tourism'),
(5, 'Cesar E.A. Virata School of Business'),
(6, 'School of Economics'),
(7, 'College of Education'),
(8, 'College of Engineering'),
(9, 'College of Fine Arts'),
(10, 'College of Home Economics'),
(11, 'College of Human Kinetics'),
(12, 'Institute of Islamic Studies'),
(13, 'School of Labor and Industrial Relations'),
(14, 'College of Law'),
(15, 'School of Library and Information Studies'),
(16, 'College of Mass Communication'),
(17, 'College of Music'),
(18, 'National College of Public Administration and Governance'),
(19, 'College of Science'),
(20, 'College of Social Sciences and Philosophy'),
(21, 'College of Social Work and Community Development'),
(22, 'School of Statistics'),
(23, 'School of Urban and Regional Planning'),
(24, 'UP Diliman Extension Program in Olongapo'),
(25, 'UP Diliman Extension Program in Pampanga'),
(26, 'Archaeological Studies Program'),
(27, 'Technology Management Center');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptID` int(11) NOT NULL,
  `collegeID` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptID`, `collegeID`, `name`) VALUES
(1, 1, 'N/A'),
(2, 2, 'Department of Art Studies'),
(3, 2, 'Department of English and Comparative Literature'),
(4, 2, 'Department of European Languages'),
(5, 2, 'Departamento ng Filipino at Panitikan ng Pilipinas'),
(6, 2, 'Department of Speech Communication and Theatre Arts'),
(7, 3, 'N/A'),
(8, 4, 'N/A'),
(9, 5, 'Department of Business Administration'),
(10, 5, 'Department of Accounting and Finance'),
(11, 6, 'N/A'),
(12, 7, 'N/A'),
(13, 8, 'Institute of Civil Engineering'),
(14, 8, 'Department of Chemical Engineering'),
(15, 8, 'Department of Computer Science'),
(16, 8, 'Institute of Electrical and Electronics Engineering'),
(17, 8, 'Department of Geodetic Engineering'),
(18, 8, 'Department of Industrial Engineering and Operations Research'),
(19, 8, 'Department of Mechanical Engineering'),
(20, 8, 'Department of Mining, Metallurgical, and Materials Engineering'),
(21, 8, 'Energy Engineering Program'),
(22, 8, 'Environmental Engineering Program'),
(23, 9, 'Department of Studio Arts'),
(24, 9, 'Department of Theory'),
(25, 9, 'Department of Visual Communication'),
(26, 9, 'CFA Graduate Program'),
(27, 10, 'Department of Clothing, Textiles and Interior Design'),
(28, 10, 'Department of Family Life and Child Development'),
(29, 10, 'Department of Food Science and Nutrition'),
(30, 10, 'Department of Home Economics Education'),
(31, 10, 'Department of Hotel, Restaurant and Institution Management'),
(32, 11, 'Department of Physical Education'),
(33, 11, 'Department of Sports Science'),
(34, 11, 'Graduate Studies Program'),
(35, 12, 'N/A'),
(36, 13, 'N/A'),
(37, 14, 'N/A'),
(38, 15, 'N/A'),
(39, 16, 'Department of Broadcast Communication'),
(40, 16, 'Department of Communication Research'),
(41, 16, 'Film Institute'),
(42, 16, 'Department of Journalism'),
(43, 16, 'Department of Graduate Studies'),
(44, 17, 'N/A'),
(45, 18, 'N/A'),
(46, 19, 'Institute of Biology'),
(47, 19, 'Institute of Chemistry'),
(48, 19, 'Institute of Environmental Science and Meteorology'),
(49, 19, 'Institute of Mathematics'),
(50, 19, 'National Institute of Molecular Biology and Biotechnology'),
(51, 19, 'Marine Science Institute'),
(52, 19, 'National Institute of Geological Sciences'),
(53, 19, 'National Institute of Physics'),
(54, 19, 'Materials Science and Engineering Program'),
(55, 20, 'Department of Anthropology'),
(56, 20, 'Department of Geography'),
(57, 20, 'Departamento ng Kasaysayan'),
(58, 20, 'Departamento ng Linggwistiks'),
(59, 20, 'Department of Philosophy'),
(60, 20, 'Department of Political Science'),
(61, 20, 'Department of Psychology'),
(62, 20, 'Department of Sociology'),
(63, 20, 'Population Institute'),
(64, 21, 'Department of Community Development'),
(65, 21, 'Department of Social Work'),
(66, 21, 'Department of Women and Development Studies'),
(67, 21, 'Doctor of Social Development Program'),
(68, 22, 'N/A'),
(69, 23, 'N/A'),
(70, 24, 'N/A'),
(71, 25, 'N/A'),
(72, 26, 'N/A'),
(73, 27, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `fieldname` varchar(255) NOT NULL,
  `formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rejectedapps`
--

CREATE TABLE `rejectedapps` (
  `appID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rejectedapps`
--

INSERT INTO `rejectedapps` (`appID`) VALUES
(22),
(26),
(28);

-- --------------------------------------------------------

--
-- Table structure for table `released`
--

CREATE TABLE `released` (
  `appID` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `released`
--

INSERT INTO `released` (`appID`, `status`) VALUES
(20, 1),
(30, 1),
(22, 0),
(25, 1),
(28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `scholarshipID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `benefactor` varchar(255) NOT NULL,
  `appDeadline` date NOT NULL,
  `numofGrantees` int(11) NOT NULL,
  `signatoryOrder` varchar(255) NOT NULL,
  `description` varchar(4095) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`scholarshipID`, `name`, `benefactor`, `appDeadline`, `numofGrantees`, `signatoryOrder`, `description`) VALUES
(1, 'COOPERATE', 'OIL', '2016-02-05', 5, '1,2,3,4', 'Donec ut pellentesque quam. Proin tincidunt vehicula nisi ut euismod. Praesent molestie accumsan turpis quis gravida. In turpis mauris, pharetra rutrum dapibus id, pellentesque vitae quam. Curabitur ornare, justo quis auctor aliquam, massa augue semper massa, sagittis consectetur turpis odio in augue.'),
(2, 'MOVE UP', 'OIL', '2016-02-05', 10, '2,4', 'In scelerisque magna nunc, id lacinia lacus porta blandit. Etiam id mollis magna. Sed vitae eros feugiat, lacinia lectus at, bibendum turpis. Fusce auctor massa in enim lacinia, iaculis pharetra elit tempor.'),
(3, 'Research/Creative Work Presentation in International Conferences', 'OIL', '2016-02-05', 6, '2,3,4', 'Nunc eu placerat sem. Mauris tellus metus, aliquam a mi et, gravida tincidunt enim. Mauris mollis tellus ipsum, eget cursus diam interdum sit amet.'),
(4, '', '', '0000-00-00', 0, '', 'Integer ac tellus velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam convallis sem eget velit porttitor interdum.'),
(5, 'World Experts Lecture Series', 'OIL', '2016-02-05', 15, '2,4', 'Duis sed gravida justo. Donec posuere dictum eros vel scelerisque. Nullam quis congue ligula.'),
(12, 'JASSO', 'OILD-OVCAA', '2016-03-31', 15, '2,3,1', 'Aliquam vel eros nec erat porttitor lobortis sed ac purus. Maecenas suscipit ultrices aliquam. Sed aliquam, est id dictum pretium, ipsum lorem varius sapien, at porta dolor nisi vel lorem.'),
(13, 'RUSSE', 'OILD', '2016-03-30', 10, '1,3,5,8,10,6', 'Donec tempus eros arcu, nec blandit lorem tincidunt vitae. Curabitur consectetur porta faucibus. Aenean aliquam velit et tellus maximus pulvinar.'),
(14, 'FREES', 'OIL', '2016-03-23', 10, '3,6,9,4', 'Etiam non tincidunt sapien. Pellentesque tempor porttitor sem, et malesuada neque mattis aliquet. Vivamus egestas, velit at molestie maximus, nisi nunc rhoncus metus, nec suscipit metus quam a tellus.');

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipsig`
--

CREATE TABLE `scholarshipsig` (
  `sigID` int(11) NOT NULL,
  `scholarshipID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signatory`
--

CREATE TABLE `signatory` (
  `sigID` int(11) NOT NULL,
  `upMail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signatory`
--

INSERT INTO `signatory` (`sigID`, `upMail`, `password`, `firstName`, `middleName`, `lastName`, `position`) VALUES
(1, 'rvazanza@up.edu.ph', '$2y$10$5l7zH/fsluykrbzsJaiyE.1Q50C9UxzJMalSy8MDQTZN36fo4qbyq', 'Rhodora', 'V', 'Azanza', 'Assistant Vice-President for Academic Affairs and Director, OIL'),
(2, 'gpconcepcion@up.edu.ph', '$2y$10$Lge6w8PhcEmkcKGjMtlQNeyIrnpIvw3k24jgtsETqcndBvZ1thoN.', 'Gisela', 'P', 'Concepcion', 'Vice-President for Academic Affairs'),
(3, 'aepascual@up.edu.ph', '$2y$10$yqghqBcF436lDKMDjEiMRu3HKaPKlrDpI4Zedpcu1H7i6Yu1KHZbu', 'Alfredo', 'E', 'Pascual', 'President'),
(4, 'acmatias@up.edu.ph', '$2y$10$1trYzYng631T5wM4OKOxkOmT7srm8CWNB22sD4SU0yuyRRvF9XvlG', 'Aura', 'C', 'Matias', 'Dean, College of Engineering'),
(5, 'dlconcepcion@up.edu.ph', '$2y$10$JpXDxn/aNjlynmzk8SXBIexLQWiagNvwtVLgOtcHaSju6YqI0rxnq', 'Danilo', 'L', 'Concepcion', 'Dean, College of Law'),
(6, 'jsbuenconsejo@up.edu.ph', '$2y$10$388OK514LsmZkJqnjEUV/OHHhMW24CMQwFjlB9QiXlO.NH/bVH6yy', 'Jose', 'S', 'Buenconsejo', 'Dean, College of Music'),
(7, 'mvmendoza@up.edu.ph', '$2y$10$xnDJLSu8jAwDO2lu/xcib.BwE6FFdVl4E49Wy.K/akQ5lAG3lDQBq', 'Maria Fe', 'Villamejor', 'Mendoza', 'Dean, National College of Public Administration and Governance'),
(8, 'jpsale@up.edu.ph', '$2y$10$jjbzJaueF4d79IW3kLjZj.RwnaqGA4B6C0NW2Pu5jQToJzEtl1Cy6', 'Jonathan', 'P', 'Sale', 'Dean, School of Labor and Industrial Relations'),
(9, 'kbobile@up.edu.ph', '$2y$10$tIkQeNOZZDW4.e0.xE.EPepMaIE5odTHRk1zk8HQ6SM12AwgHDGTq', 'Kathleen Lourdes', 'B', 'Obile', 'Dean, School of Library and Information Studies'),
(10, 'ocsolon@up.edu.ph', '$2y$10$0GdhEQ.AQESzhHtGbrmeCuCENTBc6lmSbx.OUC3YXDaKc4e0n.qfC', 'Orville', 'C', 'Solon', 'Dean, School of Economics');

-- --------------------------------------------------------

--
-- Table structure for table `sigreturn`
--

CREATE TABLE `sigreturn` (
  `appID` int(11) NOT NULL,
  `returnedBy` int(11) NOT NULL,
  `returnedTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sigstatus`
--

CREATE TABLE `sigstatus` (
  `sigID` int(11) NOT NULL,
  `applicationID` int(11) NOT NULL,
  `sStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sigstatus`
--

INSERT INTO `sigstatus` (`sigID`, `applicationID`, `sStatus`) VALUES
(1, 20, 1),
(2, 20, 1),
(2, 21, 1),
(4, 21, 0),
(1, 26, 1),
(1, 22, 1),
(2, 27, 1),
(3, 27, 1),
(4, 27, 1),
(3, 20, 1),
(4, 20, 1),
(2, 22, 0),
(2, 26, 0),
(1, 24, 1),
(2, 24, 1),
(3, 24, 1),
(4, 24, 1),
(2, 29, 1),
(4, 29, 1),
(2, 30, 1),
(4, 30, 1),
(1, 25, 1),
(2, 25, 1),
(3, 25, 1),
(4, 25, 1),
(2, 28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `upMail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `birthPlace` varchar(255) DEFAULT NULL,
  `presStreetAddr` varchar(255) DEFAULT NULL,
  `presMunBrgy` varchar(255) DEFAULT NULL,
  `presProvCity` varchar(255) DEFAULT NULL,
  `presRegion` varchar(255) DEFAULT NULL,
  `permStreetAddr` varchar(255) DEFAULT NULL,
  `permMunBrgy` varchar(255) DEFAULT NULL,
  `permProvCity` varchar(255) DEFAULT NULL,
  `permRegion` varchar(255) DEFAULT NULL,
  `contactNo` int(20) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `upMail`, `password`, `firstName`, `middleName`, `lastName`, `nationality`, `gender`, `birthDate`, `birthPlace`, `presStreetAddr`, `presMunBrgy`, `presProvCity`, `presRegion`, `permStreetAddr`, `permMunBrgy`, `permProvCity`, `permRegion`, `contactNo`, `dept`, `college`) VALUES
(1, 'gggryffindor', '$2y$10$exXHDn2t/KOr3gFGgxApduw8TS.T/jMlQBTu5GtPB/UpoULIzm532', 'Cyan', 'G', 'Gryffindor', 'Filipino', 'Male', '1986-01-14', 'Manila', '123 ABC Street', 'DEF ', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 123456, 'Department of Computer Science ', 'College of Engineering '),
(2, 'ptregarde@up.edu.ph', '$2y$10$U57Dlt742pJ504DmkVIuZurVAjmClBQ6mIGvcaPvitey4/9E/h0jm', 'Patricia Ann', 'Torres', 'Regarde', 'Filipino', 'Female', '1997-06-05', 'Manila', '6132 Osias Street', 'Poblacion', 'Makati City', 'NCR', 'same', 'same', 'same', 'same', 123456, 'Department of Computer Science ', 'College of Engineering'),
(3, 'hhhufflepuff@up.edu.ph', '$2y$10$mEDnq1oGVI1s.Eelp.9xDe/rqJEJvJIsAqC/eHvYSRLATxfcPmwt6', 'Helga', 'H', 'Hufflepuff', 'Filipino', 'Female', '1992-09-02', 'Manila', '123 ABC Street', 'DEF', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 123456, 'Department of Computer Science', 'College of Engineering'),
(4, 'rrravenclaw@up.edu.ph', '$2y$10$sla8w/GTYg9c/cZVc7/g2uHgzATxfw5F7V3.YlKuVZDGUIR1WoXky', 'Rowena', 'R', 'Ravenclaw', 'Filipino', 'Female', '1995-07-19', 'Manila', '123 ABC Street', 'DEF', 'GHI City', 'JKL', '456 MNO Street ', 'PQR', 'STU City', 'VWX', 1234567, 'Institute of Civil Engineering', 'College of Engineering'),
(5, 'ssslytherin@up.edu.ph', '$2y$10$zZQeUxXYNPWQgv2z0TxnYuFkpfqA/BClISGArFiafz4aOFwkQZ8Mm', 'Salazar', 'S', 'Slytherin', 'Filipino', 'Male', '1986-06-28', 'Manila', '123 ABC Street', 'DEF', 'GHI City', 'JKL', 'same ', 'same', 'same', 'same', 123456, 'Electrical and Electronics Engineering Institute', 'College of Engineering'),
(6, 'ssnape@up.edu.ph', '$2y$10$7DpJ0aY2PL.zcF6fxAKmAu6RWeN/.FEV12nSSL7qi1LGcVyGcNtry', 'Severus', '', 'Snape', 'Filipino', 'Male', '1992-10-02', 'Manila', '123 ABC Street', 'DEF ', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 123456, 'Department of Industrial Engineering and Operations Research', 'College of Engineering'),
(7, 'nscamander@up.edu.ph', '$2y$10$MP8GocRrtGxYyxVO8A/udOgus8JfdRK8vHKh1/Xt5vJcgBY7.VaRq', 'Newt', '', 'Scamander', 'Filipino', 'Male', '1995-07-19', 'Manila', '123 ABC Street', 'DEF ', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 1234567, 'Department of Industrial Engineering and Operations Research', 'College of Engineering'),
(8, 'sblack@up.edu.ph', '$2y$10$HKxB1cyLdJT2g41OIIjeUO0NIHokAz119ZEPZQN2io6UI8AfN1R3K', 'Sirius', '', 'Black', 'Filipino', 'Male', '1989-08-26', 'Manila', '123 ABC Street', 'DEF', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 1234567, 'Department of Mechanical Engineering', 'College of Engineering'),
(9, 'llovegood@up.edu.ph', '$2y$10$jmodR6ON20YQFzb6UBgVP.vEtMqXFy8mR4WAAb6PEBZe4X.JdYpdS', 'Luna', '', 'Lovegood', 'Filipino', 'Female', '1994-01-05', 'Manila', '123 ABC Street', 'DEF', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 1234567, 'Department of Mechanical Engineering', 'College of Engineering'),
(10, 'mmcgonagall', '$2y$10$2C2vP5XidXK9mc1wOuF9AeIZwGG3Z23jif8Mb2u4l0Z04ABUXH55S', 'Minerva', '', 'McGonagall', 'Filipino', 'Female', '1980-06-27', 'Manila', '123 ABC Street', 'DEF', 'GHI City', 'JKL', 'same', 'same', 'same', 'same', 1234567, 'Department of Mining, Metallurgical and Materials Engineering', 'College of Engineering'),
(16, 'peter@up.edu.ph', '$2y$10$d60RWDF5FP4fp.xzHtDeU.NwWyuLN.yeCZ/c9lYydGV.UDaTkHEzm', 'Peter', 'Lol', 'Vee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Electrical and Electronics Engineering', 'College of Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `studentscholarship`
--

CREATE TABLE `studentscholarship` (
  `ssID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `scholarshipID` int(11) NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentscholarship`
--

INSERT INTO `studentscholarship` (`ssID`, `studentID`, `scholarshipID`, `startDate`, `endDate`) VALUES
(1, 2, 1, '2016-02-19 10:50:23', '2017-02-19 10:50:23'),
(2, 9, 5, '2016-02-19 11:34:26', '2017-02-19 11:34:26'),
(3, 9, 5, '2016-02-19 11:34:26', '2017-02-19 11:34:26'),
(4, 1, 1, '2016-02-28 19:23:19', '2017-02-28 19:23:19'),
(5, 3, 1, '2016-02-28 19:24:06', '2017-02-28 19:24:06'),
(6, 5, 3, '2016-03-01 07:37:45', '2017-03-01 07:37:45'),
(7, 4, 4, '2016-03-01 07:37:46', '2017-03-01 07:37:46'),
(8, 1, 1, '2016-03-05 22:43:18', '2017-03-05 22:43:18'),
(9, 1, 4, '2016-03-05 22:47:44', '2017-03-05 22:47:44'),
(10, 1, 4, '2016-03-05 22:47:44', '2017-03-05 22:47:44'),
(11, 3, 1, '2016-03-18 06:49:43', '2017-03-18 06:49:43'),
(12, 1, 4, '2016-03-18 12:21:30', '2017-03-18 12:21:30'),
(13, 1, 4, '2016-03-18 12:21:30', '2017-03-18 12:21:30'),
(14, 1, 4, '2016-03-18 12:21:30', '2017-03-18 12:21:30'),
(15, 1, 4, '2016-03-18 12:21:30', '2017-03-18 12:21:30'),
(16, 1, 1, '2016-03-31 21:01:28', '2017-03-31 21:01:28'),
(17, 1, 2, '2016-04-03 06:42:03', '2017-04-03 06:42:03'),
(18, 1, 2, '2016-04-03 06:42:03', '2017-04-03 06:42:03'),
(19, 1, 2, '2016-04-03 07:17:43', '2017-04-03 07:17:43'),
(20, 1, 2, '2016-04-03 07:17:43', '2017-04-03 07:17:43'),
(21, 1, 2, '2016-04-03 07:17:43', '2017-04-03 07:17:43'),
(22, 1, 4, '2016-04-03 09:52:55', '2017-04-03 09:52:55'),
(23, 1, 4, '2016-04-03 09:52:55', '2017-04-03 09:52:55'),
(24, 1, 4, '2016-04-03 09:52:55', '2017-04-03 09:52:55'),
(25, 1, 4, '2016-04-03 09:52:55', '2017-04-03 09:52:55'),
(26, 1, 4, '2016-04-03 09:52:55', '2017-04-03 09:52:55'),
(27, 1, 5, '2016-04-03 09:54:06', '2017-04-03 09:54:06'),
(28, 1, 5, '2016-04-03 09:54:06', '2017-04-03 09:54:06'),
(29, 1, 5, '2016-04-03 09:54:06', '2017-04-03 09:54:06'),
(30, 1, 5, '2016-04-03 09:54:06', '2017-04-03 09:54:06'),
(31, 1, 5, '2016-04-03 09:54:06', '2017-04-03 09:54:06'),
(32, 1, 5, '2016-04-03 09:54:06', '2017-04-03 09:54:06'),
(33, 1, 1, '2016-04-03 11:10:03', '2017-04-03 11:10:03'),
(34, 1, 2, '2016-04-08 15:33:28', '2017-04-08 15:33:28'),
(35, 1, 2, '2016-04-08 15:33:28', '2017-04-08 15:33:28'),
(36, 1, 1, '2016-04-14 07:04:41', '2017-04-14 07:04:41'),
(37, 1, 1, '2016-04-14 07:04:41', '2017-04-14 07:04:41'),
(38, 1, 1, '2016-04-14 07:04:41', '2017-04-14 07:04:41'),
(39, 2, 1, '2016-04-14 07:06:06', '2017-04-14 07:06:06'),
(40, 3, 1, '2016-04-14 07:06:06', '2017-04-14 07:06:06'),
(41, 4, 1, '2016-04-14 07:06:06', '2017-04-14 07:06:06'),
(42, 1, 1, '2016-04-15 10:08:23', '2017-04-15 10:08:23'),
(43, 1, 1, '2016-04-15 10:08:23', '2017-04-15 10:08:23'),
(44, 1, 1, '2016-04-15 10:08:23', '2017-04-15 10:08:23'),
(45, 1, 1, '2016-04-15 10:08:23', '2017-04-15 10:08:23'),
(46, 1, 3, '2016-04-15 12:23:15', '2017-04-15 12:23:15'),
(47, 1, 3, '2016-04-15 12:23:15', '2017-04-15 12:23:15'),
(48, 1, 3, '2016-04-15 12:23:15', '2017-04-15 12:23:15'),
(49, 1, 3, '2016-04-15 12:23:15', '2017-04-15 12:23:15'),
(50, 1, 3, '2016-04-15 12:23:15', '2017-04-15 12:23:15'),
(51, 1, 2, '2016-04-17 18:16:34', '2017-04-17 18:16:34'),
(52, 1, 2, '2016-04-17 18:16:34', '2017-04-17 18:16:34'),
(53, 1, 2, '2016-04-17 18:16:34', '2017-04-17 18:16:34'),
(54, 1, 2, '2016-04-17 18:16:34', '2017-04-17 18:16:34'),
(55, 1, 2, '2016-04-17 18:16:34', '2017-04-17 18:16:34'),
(56, 1, 2, '2016-04-17 18:16:34', '2017-04-17 18:16:34'),
(57, 2, 2, '2016-04-17 18:17:59', '2017-04-17 18:17:59'),
(58, 2, 2, '2016-04-17 18:17:59', '2017-04-17 18:17:59'),
(59, 2, 2, '2016-04-17 18:17:59', '2017-04-17 18:17:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`applicationID`);

--
-- Indexes for table `applicationform`
--
ALTER TABLE `applicationform`
  ADD PRIMARY KEY (`formID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`collegeID`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`deptID`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`scholarshipID`);

--
-- Indexes for table `signatory`
--
ALTER TABLE `signatory`
  ADD PRIMARY KEY (`sigID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `studentscholarship`
--
ALTER TABLE `studentscholarship`
  ADD PRIMARY KEY (`ssID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `applicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `applicationform`
--
ALTER TABLE `applicationform`
  MODIFY `formID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `collegeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `deptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `scholarshipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `signatory`
--
ALTER TABLE `signatory`
  MODIFY `sigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `studentscholarship`
--
ALTER TABLE `studentscholarship`
  MODIFY `ssID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;--
-- Database: `cybercrimedatabase`
--
CREATE DATABASE IF NOT EXISTS `cybercrimedatabase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cybercrimedatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` varchar(10) NOT NULL,
  `category` varchar(36) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `url` varchar(100) NOT NULL,
  `social_media` varchar(40) NOT NULL,
  `datetime` date NOT NULL,
  `suspect` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'NEW',
  `priority` varchar(20) NOT NULL DEFAULT 'MEDIUM',
  `bureau_notes` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `category`, `subject`, `details`, `url`, `social_media`, `datetime`, `suspect`, `area`, `status`, `priority`, `bureau_notes`) VALUES
('C006', 'E-Commerce Scam', 'Amazon Refund', 'Refund is not processed but website says it is processed.', 'www.amazon.in', '', '2018-12-23', 'Identity theft', 'Nasik', 'NEW', '', ''),
('C118', 'Identity Theft', 'My username/password stolen for bank', 'I have seen an unauthorized login in my Citibank online account.', 'www.citibank.co.in', '', '2018-11-23', 'Chinese hackers', 'Mysore', 'CLOSED', 'HIGH', 'Getting in touch with the bank.'),
('C480', 'Cyberbullying', 'Bullying on Facebook', 'Offensive messages and images posted on my timeline', 'www.fb.com', 'fb', '2018-02-12', 'alex', 'bangalore', 'INPROGRESS', 'LOW', 'Contacting suspect Alex for details'),
('C898', 'Hacking and Viruses', 'My computer is hacked', 'Got an email from someone to download a file.', 'www.gmail.com', 'Gmail', '2018-11-24', 'Russian hackers', 'Nashik', 'INPROGRESS', 'MEDIUM', 'Checking the email.');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `police_id` varchar(8) NOT NULL,
  `name` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `specialization` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`police_id`, `name`, `password`, `phone`, `gender`, `address`, `specialization`) VALUES
('alex', 'alex', '1234', '1111', 'female', 'london', 'Cyberbullying'),
('amit', 'amit', '1234', '9971559931', 'male', 'Nagpur', 'Hacking and Viruses'),
('shinde', 'shinde', '1234', '8807559719', 'female', 'Chandigarh', 'Identity Theft');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `specialization` varchar(40) NOT NULL,
  `s_desc` varchar(200) NOT NULL,
  `s_location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`specialization`, `s_desc`, `s_location`) VALUES
('Bank Account Fraud', 'Bank account fraud has occurred if transactions you haven’t made show up on your bank statement.', 'Mumbai'),
('Child Pornography', 'Child pornography is pornography that exploits children for sexual stimulation.', 'Chennai'),
('Cyberbullying', 'Cyberbullying is when someone, typically teens, bully or harass others on social media sites.', 'Bengaluru'),
('E-Commerce Scam', 'E-Commerce fraud includes credit card, refund, merchant, authenticity and friendly fraud.', 'Kolkata'),
('Email or Phone Call Scam', 'A fraud company or person emails or calls up a victim to get personal or bank information for financial benefits.', 'Pune'),
('Hacking and Viruses', 'Computer hacking involves violation on the privacy of others by invading their network security and causing damage to the software.', 'Jaipur'),
('Identity Theft', 'Identity theft is the deliberate use of someone else identity, usually as a method to gain a financial advantage or obtain credit and other benefits in the other persons name.', 'Hyderabad'),
('Social Media Crime', 'Crime that happens on social media platforms such as facebook, twitter to send offensive messages, videos or pictures.', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status`, `description`) VALUES
('CLOSED', 'Complaint has been closed with appropriate details.'),
('INPROGRESS', 'Complaint has been assigned to someone and is in progress.'),
('INVALID', 'Complaint does not comply with the minimum cyber crime standards.'),
('NEW', 'New complaint raised and is yet to be processed.'),
('VERIFICATION', 'Complaint has been solved but yet to be closed and is in scrutinization.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` varchar(8) NOT NULL,
  `email` varchar(36) NOT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `address`, `pincode`, `email`, `phone`, `gender`) VALUES
('alex', '1234', 'alex', 'mumbai', '422221', 'alex@gmail.com', '44444', 'female'),
('david', '1234', 'david', 'pune', '456789', 'david1234@gmail.com', '9971559931', 'male'),
('david1234', '1234', 'david', 'delhi', '110010', 'david@gmail.com', '', 'male'),
('michael', '1234', 'michael', 'bangalore', '560048', 'sb@gmail.com', '1234', 'Male'),
('peter', '1234', 'peter', 'chennai', '632014', 'peter@gmail.com', '99898', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`police_id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`specialization`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;
--
-- Database: `ecommerce-mary`
--
CREATE DATABASE IF NOT EXISTS `ecommerce-mary` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerce-mary`;

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `name`, `iban`, `bank`, `bic`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(1, '0823agriculture.jpg', 'Tomatoes_1', 1536030315),
(2, 'yam2.jpg', 'Yam_2', 1537028434),
(3, 'rice_beans_market.jpg', 'Bean_3', 1537028531),
(4, 'rice-packaging-bag-250x250.jpg', 'Rice_4', 1537293960),
(5, 'bags-of-Maize-grown-by-one-farmer.jpg', 'Maize_5', 1537294321);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(1, 'Tomatoes', '<p>Order for your fresh tomatoes affordable price&nbsp;</p>\r\n', 'en', 1),
(2, 'Yam ', '<p>Hundred pieces of yam cost N10,000</p>\r\n', 'en', 2),
(3, 'Bean', '<p>One bag of bean cost N7,000</p>\r\n', 'en', 3),
(4, 'Rice', '<p>Order for your bag of rice at 10,000</p>\r\n', 'en', 4),
(5, 'Maize', '<p>Order for your bag of maize at 7,0000</p>\r\n', 'en', 5);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chatbo`
--

CREATE TABLE `chatbo` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbo`
--

INSERT INTO `chatbo` (`id`, `question`, `answer`) VALUES
(1, 'what is your name?', 'Abseejp'),
(4, 'name', 'Abraham'),
(5, 'what is an eye? ', ' it is one of the five sense organs in the body and it is used for sight......'),
(6, 'who is an opthalmologist', ' opthalmologists are doctors who specializes in treating eye diseases'),
(7, 'who is an opthalmologist', ' opthalmologists are doctors who specializes in treating eye diseases'),
(8, 'who is a programmer? ', ' someone who codes ');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `question`, `answer`) VALUES
(1, 'what is your name?', 'Abseejp'),
(4, 'name', 'Abraham'),
(5, 'what is an eye? ', ' it is one of the five sense organs in the body and it is used for sight......'),
(6, 'who is an opthalmologist', ' opthalmologists are doctors who specializes in treating eye diseases'),
(7, 'who is an opthalmologist', ' opthalmologists are doctors who specializes in treating eye diseases'),
(8, 'who is a programmer? ', ' someone who codes ');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, '4f5ed2e6b6f742a8bc6b044c548ca6c7', 1234),
(2, 'f384cccc0cf336dd93ed7389852deb73', 1235);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pnumber` varchar(15) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `pnumber`, `message`) VALUES
(4, 'abraham', 'enyoone3@gmail.com', '08163815935', 'i need help'),
(5, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'i want to see you'),
(6, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'welcomeeeeeee'),
(7, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'welcome'),
(8, 'hallo', 'enyoone3@gmail.com', '08163815935', 'how far'),
(9, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'okay'),
(10, 'enyo@gmail.com', 'enyoone3@gmail.com', '8163815935', 'f'),
(11, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'you doing good sir.......'),
(12, 'Abraham Musa', 'vivianahmed8@gmail.c', '8163815935', 'i love Jesus'),
(13, 'Abraham Musa', 'vivianahmed8@gmail.c', '8163815935', 'i love Jesus'),
(14, 'Abraham Musa', 'wolesoyinka@gmail.co', '8163815935', 'aa'),
(15, 'Abraham Musa', 'vivian@gmail.com', '08163815935', 'hello'),
(16, 'Abraham Musa', 'isaacishaya73@gmail.', '08163815935', 'i love JESUS');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law`
--

INSERT INTO `cookie_law` (`id`, `link`, `theme`, `visibility`) VALUES
(1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law_translations`
--

INSERT INTO `cookie_law_translations` (`id`, `message`, `button_text`, `learn_more`, `abbr`, `for_id`) VALUES
(1, '', '', '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `valid_from_date`, `valid_to_date`, `status`) VALUES
(1, 'percent', 'HCU6DG', '10', 1537221600, 1537221600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `disease` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `disease`) VALUES
(1, 'CONJUCTIVITIES'),
(2, 'CATARACT'),
(3, 'GLAUCOMA'),
(4, 'MYOPIA'),
(5, 'OCULAR ALLERGY');

-- --------------------------------------------------------

--
-- Table structure for table `forecast_summary`
--

CREATE TABLE `forecast_summary` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `month` varchar(16) NOT NULL,
  `year` datetime NOT NULL,
  `price` double NOT NULL,
  `baseline` double NOT NULL DEFAULT '100',
  `target` double NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forecast_summary`
--

INSERT INTO `forecast_summary` (`id`, `product_id`, `month`, `year`, `price`, `baseline`, `target`) VALUES
(1, 1, 'January', '2018-09-11 00:00:00', 400, 100, 500),
(2, 1, 'February', '2018-09-25 00:00:00', 350, 100, 500),
(3, 1, 'March', '2018-09-27 00:00:00', 450, 100, 500),
(4, 1, 'April', '2018-09-26 00:00:00', 500, 100, 500),
(5, 1, 'May', '2018-09-12 00:00:00', 550, 100, 500),
(6, 1, 'June', '2018-09-11 00:00:00', 700, 100, 500),
(7, 1, 'July', '2018-09-10 00:00:00', 400, 100, 500),
(8, 1, 'August', '2018-09-30 00:00:00', 350, 100, 500),
(9, 1, 'September', '2018-09-18 00:00:00', 300, 100, 500),
(10, 1, 'October', '2018-09-26 00:00:00', 250, 100, 500),
(11, 1, 'November', '2018-09-18 00:00:00', 350, 100, 500),
(12, 1, 'December', '2018-09-24 00:00:00', 400, 100, 500);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(2, 'en', 'english', 'N', 'USD', 'en.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, NULL, 'a:2:{i:1;s:1:"1";i:2;s:1:"1";}', 1537306104, 'http://localhost/ecommerce-mary/', 'localhost', 'cashOnDelivery', NULL, 1, 1, 0, ''),
(2, 1235, NULL, 'a:2:{i:3;s:1:"4";i:4;s:1:"3";}', 1537822484, 'http://localhost/ecommerce-mary/', 'localhost', 'cashOnDelivery', NULL, 1, 1, 0, '2222222');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'Mary', 'Shishi', 'maryshishi@gmail.com', '07065499404', 'Atoshi street wukari, Taraba State', 'Wukari', '123443', 'Pls i need this order in time.', 1),
(2, 'Mary', 'Shishi', 'maryshishi@gmail.com', '07065499404', 'akuuka palace', 'Wukari', '123443', 'i want this within three days', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(1, 1537029161, 'yam3.jpg', 1537029332, 1537761602, 1, 5, 4, 1, 1, 'Rice_1', '', NULL, 3, 0),
(3, 1537305268, 'images.jpg', 1537305769, 0, 1, 6, 2, 4, 1, 'FRESH_TOMATOES_3', '', NULL, 4, 0),
(4, 1537419041, 'Groundnut-Farming1.jpg', 1537419247, 1537762385, 1, 3, -1, 3, 1, 'Yam_4', '', NULL, 2, 0),
(5, 1537761865, 'bags-of-Maize-grown-by-one-farmer.jpg', 1537762029, 0, 1, 4, 10, 0, 1, 'Maize_5', '', NULL, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(1, 'Yam ', '<p>Order for Yam now!!!!</p>\r\n', '<p><span style="font-size:14px;"><span style="font-family:times new roman,times,serif;">Order for &nbsp;yam&nbsp;at negotaitable&nbsp;price</span></span></p>\r\n', '10000', '7,000', 'en', 1),
(3, 'FRESH TOMATOES', '<p>FRESH TOMATOES AT THE PRICE 1500</p>\r\n', '<p>ORDER FOR YOUR FRESH TOMATEOS</p>\r\n', '1500', '500', 'en', 3),
(4, 'GROUNDNUTS', '<p>ORDER NOW!!</p>\r\n', '<p>YOU CAN ORDER FOR YOU BAG OF GROUNDNUT</p>\r\n', '7000', '5500', 'en', 4),
(5, 'Maize', '<p>BAG OF MAIZE AT NEGOTIATABLE PRICE</p>\r\n', '<p>ORDER FOR YOUR BAG OF MAIZE NOW&nbsp;</p>\r\n', '10000', '7,000', 'en', 5);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(8, 0, 5),
(7, 8, 6),
(3, 0, 4),
(4, 0, 3),
(5, 0, 1),
(6, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(3, 'GROUNDNUT', 'en', 3),
(4, 'MAIZE', 'en', 4),
(5, 'YAM', 'en', 5),
(6, 'RICE', 'en', 6),
(7, 'TOMATOES', 'en', 7),
(8, 'Pepper', 'en', 8);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `article_id` int(11) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1531400734),
(2, 'scott', '21f63c6e971cd913a9c147e8652ca659', 'scotteazra@gmail.com', 0, 1540320802),
(3, 'mary', 'b8e7be5dfa2ce0714d21dcfc7d72382c', '', 0, 1557717405);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_public`
--

INSERT INTO `users_public` (`id`, `name`, `email`, `phone`, `password`, `created`) VALUES
(1, 'Mary', 'maryshishi@gmail.com', '08110461009', 'c1df7f4bacdf40612260c7dfd068136b', '2018-09-17 21:43:40'),
(2, 'Mary', 'ezrajnr01@gmail.com', '08110461009', 'c1df7f4bacdf40612260c7dfd068136b', '2018-09-17 22:48:22'),
(3, 'Ezra David', 'ezradavid997@gmail.com', '08162277279', '4c7c65c99667ab31f2c1cdf0313a0279', '2019-05-13 03:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'logo.jpg'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Powered by Faith Philemon'),
(4, 'contactspage', 'Hello dear client'),
(5, 'footerContactAddr', ''),
(6, 'footerContactEmail', 'philemonfaith@gmail.com'),
(7, 'footerContactPhone', ''),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ''),
(10, 'footerSocialFacebook', ''),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', ''),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', 'contacts@maryshishi.com'),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '0'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '1'),
(22, 'publicDateAdded', '1'),
(23, 'googleApi', ''),
(24, 'template', 'greenlabel'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '1'),
(27, 'showInSlider', '1'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '1'),
(30, 'multiVendor', '1'),
(31, 'outOfStock', '0'),
(32, 'moreInfoBtn', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecast_summary`
--
ALTER TABLE `forecast_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `forecast_summary`
--
ALTER TABLE `forecast_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `elimtop`
--
CREATE DATABASE IF NOT EXISTS `elimtop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elimtop`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_tbl`
--

CREATE TABLE `admin_login_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login_tbl`
--

INSERT INTO `admin_login_tbl` (`id`, `username`, `password`, `admin_name`) VALUES
(1, 'Admin', 'admin', 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `cash_receipt`
--

CREATE TABLE `cash_receipt` (
  `ID` int(50) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `Year` int(5) NOT NULL,
  `Receipt_number` varchar(200) NOT NULL,
  `Customer_name` varchar(200) NOT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Paid_for` varchar(200) NOT NULL,
  `Unit_price` varchar(50) DEFAULT NULL,
  `Qty` int(50) DEFAULT NULL,
  `Total` int(200) NOT NULL,
  `SignedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_receipt`
--

INSERT INTO `cash_receipt` (`ID`, `Day`, `Month`, `Year`, `Receipt_number`, `Customer_name`, `Address`, `Paid_for`, `Unit_price`, `Qty`, `Total`, `SignedBy`) VALUES
(1, '17', 'July', 2019, 'EGW|48801', 'David Ezra', ' GRA WUKARI', 'Laptop', '250000', 2, 500000, 'Miss. Juliet Uzo'),
(2, '01', 'January', 2019, 'EGW|8356', 'James Vegas', ' Addakenjo Estate', 'Car', '1000000', 1, 1000000, 'Miss. Juliet Uzo');

-- --------------------------------------------------------

--
-- Table structure for table `cashier_login_tbl`
--

CREATE TABLE `cashier_login_tbl` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier_login_tbl`
--

INSERT INTO `cashier_login_tbl` (`id`, `username`, `password`, `admin_name`) VALUES
(1, 'cashier', 'password', 'Miss. Juliet Uzo');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure_receipt`
--

CREATE TABLE `expenditure_receipt` (
  `ID` int(50) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `Year` int(5) NOT NULL,
  `Receipt_number` varchar(200) NOT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Paid_To` varchar(200) NOT NULL,
  `Payment_For` varchar(200) NOT NULL,
  `Unit_price` varchar(50) DEFAULT NULL,
  `Qty` int(50) DEFAULT NULL,
  `Total` int(200) NOT NULL,
  `SignedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditure_receipt`
--

INSERT INTO `expenditure_receipt` (`ID`, `Day`, `Month`, `Year`, `Receipt_number`, `Address`, `Paid_To`, `Payment_For`, `Unit_price`, `Qty`, `Total`, `SignedBy`) VALUES
(1, '', '', 0, 'EGW|8509', 'Behind Elimtop Garden Abuja ', 'Favour Markus', 'Two Bed Room Flat', '500000', 1, 500000, 'Miss. Juliet Uzo');

-- --------------------------------------------------------

--
-- Table structure for table `incoming_inventories`
--

CREATE TABLE `incoming_inventories` (
  `id` int(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL,
  `Equipment_ID` varchar(50) NOT NULL,
  `Equipment_name` varchar(200) NOT NULL,
  `Manufacturer` varchar(200) DEFAULT NULL,
  `Model_number` varchar(100) DEFAULT NULL,
  `Expected_lifespan` int(10) DEFAULT NULL,
  `Unit_price` int(200) NOT NULL,
  `Qty` int(200) NOT NULL,
  `Total_Cost` varchar(200) NOT NULL,
  `Supplier_name` varchar(200) NOT NULL,
  `Supplier_address` varchar(200) DEFAULT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `SignedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_inventories`
--

CREATE TABLE `outgoing_inventories` (
  `id` int(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL,
  `Equipment_ID` varchar(50) NOT NULL,
  `Equipment_name` varchar(200) NOT NULL,
  `Qty` int(200) NOT NULL,
  `SignedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_tbl`
--

CREATE TABLE `pin_tbl` (
  `id` int(20) NOT NULL,
  `PIN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_tbl`
--

INSERT INTO `pin_tbl` (`id`, `PIN`) VALUES
(1, 'EGW277527'),
(2, 'EGW283417'),
(3, 'EGW534791'),
(4, 'EGW356354'),
(5, 'EGW891175'),
(6, 'EGW483490'),
(7, 'EGW405274'),
(8, 'EGW51545'),
(9, 'EGW229432'),
(10, 'EGW665986'),
(11, 'EGW359742'),
(12, 'EGW901032'),
(13, 'EGW386048'),
(14, 'EGW49653'),
(15, 'EGW241944'),
(16, 'EGW873566'),
(17, 'EGW954773'),
(18, 'EGW353241'),
(19, 'EGW395630'),
(20, 'EGW437897'),
(21, 'EGW29358'),
(22, 'EGW795502'),
(23, 'EGW664551'),
(24, 'EGW562775'),
(25, 'EGW203553'),
(26, 'EGW95185'),
(27, 'EGW392457'),
(28, 'EGW716950'),
(29, 'EGW571106'),
(30, 'EGW471039'),
(31, 'EGW423096'),
(32, 'EGW869172'),
(33, 'EGW725770'),
(34, 'EGW641816'),
(35, 'EGW100220'),
(36, 'EGW488190'),
(37, 'EGW761292'),
(38, 'EGW826264'),
(39, 'EGW267579'),
(40, 'EGW542756'),
(41, 'EGW271424'),
(42, 'EGW743134'),
(43, 'EGW268921'),
(44, 'EGW501618'),
(45, 'EGW349915'),
(46, 'EGW611176'),
(47, 'EGW947999'),
(48, 'EGW333527'),
(49, 'EGW590516'),
(50, 'EGW149140'),
(51, 'EGW648560'),
(52, 'EGW507233'),
(53, 'EGW86976'),
(54, 'EGW575776'),
(55, 'EGW214356'),
(56, 'EGW991486'),
(57, 'EGW433045'),
(58, 'EGW609833'),
(59, 'EGW989136'),
(60, 'EGW255036'),
(61, 'EGW722474'),
(62, 'EGW470063'),
(63, 'EGW816651'),
(64, 'EGW266633'),
(65, 'EGW549012'),
(66, 'EGW875214'),
(67, 'EGW40650'),
(68, 'EGW495026'),
(69, 'EGW6409'),
(70, 'EGW44037'),
(71, 'EGW504883'),
(72, 'EGW908967'),
(73, 'EGW688416'),
(74, 'EGW695282'),
(75, 'EGW553101'),
(76, 'EGW977204'),
(77, 'EGW688782'),
(78, 'EGW47699'),
(79, 'EGW29053'),
(80, 'EGW668488'),
(81, 'EGW601258'),
(82, 'EGW820038'),
(83, 'EGW276490'),
(84, 'EGW451569'),
(85, 'EGW519593'),
(86, 'EGW231049'),
(87, 'EGW139161'),
(88, 'EGW295197'),
(89, 'EGW37537'),
(90, 'EGW999482'),
(91, 'EGW960816'),
(92, 'EGW668122'),
(93, 'EGW248841'),
(94, 'EGW344086'),
(95, 'EGW585206'),
(96, 'EGW539094'),
(97, 'EGW747254'),
(98, 'EGW983613'),
(99, 'EGW356080'),
(100, 'EGW376862'),
(101, 'EGW626526'),
(102, 'EGW136811'),
(103, 'EGW117188'),
(104, 'EGW150178'),
(105, 'EGW480408'),
(106, 'EGW522431'),
(107, 'EGW212281'),
(108, 'EGW327790'),
(109, 'EGW402649'),
(110, 'EGW359223'),
(111, 'EGW485108'),
(112, 'EGW878449'),
(113, 'EGW987000'),
(114, 'EGW365937'),
(115, 'EGW279419'),
(116, 'EGW270905'),
(117, 'EGW327210'),
(118, 'EGW761323'),
(119, 'EGW438965'),
(120, 'EGW473908'),
(121, 'EGW17029'),
(122, 'EGW264130'),
(123, 'EGW307496'),
(124, 'EGW956208'),
(125, 'EGW150208'),
(126, 'EGW93110'),
(127, 'EGW728760'),
(128, 'EGW686554'),
(129, 'EGW320496'),
(130, 'EGW967011'),
(131, 'EGW46509'),
(132, 'EGW133698'),
(133, 'EGW621644'),
(134, 'EGW104584'),
(135, 'EGW104493'),
(136, 'EGW266388'),
(137, 'EGW647400'),
(138, 'EGW224579'),
(139, 'EGW246460'),
(140, 'EGW553376'),
(141, 'EGW491517'),
(142, 'EGW545746'),
(143, 'EGW316163'),
(144, 'EGW963410'),
(145, 'EGW747742'),
(146, 'EGW786835'),
(147, 'EGW657349'),
(148, 'EGW965241'),
(149, 'EGW509827'),
(150, 'EGW166596'),
(151, 'EGW113770'),
(152, 'EGW527619'),
(153, 'EGW371521'),
(154, 'EGW403779'),
(155, 'EGW29175'),
(156, 'EGW119294'),
(157, 'EGW426575'),
(158, 'EGW717133'),
(159, 'EGW247315'),
(160, 'EGW709015'),
(161, 'EGW268738'),
(162, 'EGW825409'),
(163, 'EGW111939'),
(164, 'EGW765534'),
(165, 'EGW991761'),
(166, 'EGW947358'),
(167, 'EGW466797'),
(168, 'EGW257599'),
(169, 'EGW189393'),
(170, 'EGW801728'),
(171, 'EGW655640'),
(172, 'EGW653962'),
(173, 'EGW955384'),
(174, 'EGW607270'),
(175, 'EGW522217'),
(176, 'EGW923371'),
(177, 'EGW883484'),
(178, 'EGW82734'),
(179, 'EGW410279'),
(180, 'EGW534577'),
(181, 'EGW67444'),
(182, 'EGW446869'),
(183, 'EGW163575'),
(184, 'EGW456330'),
(185, 'EGW101014'),
(186, 'EGW418427'),
(187, 'EGW125855'),
(188, 'EGW157380'),
(189, 'EGW77942'),
(190, 'EGW216157'),
(191, 'EGW140870'),
(192, 'EGW606476'),
(193, 'EGW591980'),
(194, 'EGW558808'),
(195, 'EGW552369'),
(196, 'EGW272370'),
(197, 'EGW736878'),
(198, 'EGW665131'),
(199, 'EGW204102'),
(200, 'EGW123810'),
(201, 'EGW106385'),
(202, 'EGW253876'),
(203, 'EGW439820'),
(204, 'EGW629548'),
(205, 'EGW794251'),
(206, 'EGW543793'),
(207, 'EGW103272'),
(208, 'EGW758332'),
(209, 'EGW394227'),
(210, 'EGW253632'),
(211, 'EGW538209'),
(212, 'EGW978913'),
(213, 'EGW62'),
(214, 'EGW602143'),
(215, 'EGW588379'),
(216, 'EGW260041'),
(217, 'EGW205506'),
(218, 'EGW308075'),
(219, 'EGW597535'),
(220, 'EGW70466'),
(221, 'EGW104310'),
(222, 'EGW590180'),
(223, 'EGW409424'),
(224, 'EGW378937'),
(225, 'EGW290223'),
(226, 'EGW167206'),
(227, 'EGW367798'),
(228, 'EGW654206'),
(229, 'EGW856995'),
(230, 'EGW257905'),
(231, 'EGW316407'),
(232, 'EGW865021'),
(233, 'EGW398377'),
(234, 'EGW581025'),
(235, 'EGW599000'),
(236, 'EGW480134'),
(237, 'EGW8118'),
(238, 'EGW355317'),
(239, 'EGW59327'),
(240, 'EGW468293'),
(241, 'EGW279969'),
(242, 'EGW299531'),
(243, 'EGW41138'),
(244, 'EGW298249'),
(245, 'EGW307679'),
(246, 'EGW632416'),
(247, 'EGW388184'),
(248, 'EGW938752'),
(249, 'EGW684998'),
(250, 'EGW72724'),
(251, 'EGW444214'),
(252, 'EGW858552'),
(253, 'EGW505677'),
(254, 'EGW839203'),
(255, 'EGW52979'),
(256, 'EGW26398'),
(257, 'EGW363465'),
(258, 'EGW650605'),
(259, 'EGW558228'),
(260, 'EGW911042'),
(261, 'EGW352112'),
(262, 'EGW725678'),
(263, 'EGW803711'),
(264, 'EGW481232'),
(265, 'EGW65369'),
(266, 'EGW783173'),
(267, 'EGW133179'),
(268, 'EGW205719'),
(269, 'EGW596985'),
(270, 'EGW41840'),
(271, 'EGW390381'),
(272, 'EGW53254'),
(273, 'EGW540711'),
(274, 'EGW220429'),
(275, 'EGW919068'),
(276, 'EGW492585'),
(277, 'EGW990296'),
(278, 'EGW537690'),
(279, 'EGW562989'),
(280, 'EGW492463'),
(281, 'EGW539490'),
(282, 'EGW712372'),
(283, 'EGW665894'),
(284, 'EGW521637'),
(285, 'EGW282044'),
(286, 'EGW963227'),
(287, 'EGW71534'),
(288, 'EGW548859'),
(289, 'EGW811707'),
(290, 'EGW9003'),
(291, 'EGW123658'),
(292, 'EGW42878'),
(293, 'EGW222230'),
(294, 'EGW68451'),
(295, 'EGW666016'),
(296, 'EGW972443'),
(297, 'EGW107361'),
(298, 'EGW860322'),
(299, 'EGW42359'),
(300, 'EGW806305'),
(301, 'EGW560853'),
(302, 'EGW603364'),
(303, 'EGW96436'),
(304, 'EGW513215'),
(305, 'EGW176453'),
(306, 'EGW16327'),
(307, 'EGW171998'),
(308, 'EGW561921'),
(309, 'EGW47913'),
(310, 'EGW317963'),
(311, 'EGW112793'),
(312, 'EGW921174'),
(313, 'EGW768982'),
(314, 'EGW227021'),
(315, 'EGW262574'),
(316, 'EGW59723'),
(317, 'EGW433411'),
(318, 'EGW962250'),
(319, 'EGW465088'),
(320, 'EGW946320'),
(321, 'EGW634949'),
(322, 'EGW242402'),
(323, 'EGW64087'),
(324, 'EGW49714'),
(325, 'EGW467347'),
(326, 'EGW286225'),
(327, 'EGW903321'),
(328, 'EGW338654'),
(329, 'EGW524354'),
(330, 'EGW812470'),
(331, 'EGW326539'),
(332, 'EGW281891'),
(333, 'EGW899720'),
(334, 'EGW39887'),
(335, 'EGW177491'),
(336, 'EGW848176'),
(337, 'EGW187195'),
(338, 'EGW687226'),
(339, 'EGW799927'),
(340, 'EGW506257'),
(341, 'EGW480530'),
(342, 'EGW973237'),
(343, 'EGW37598'),
(344, 'EGW224885'),
(345, 'EGW373475'),
(346, 'EGW616669'),
(347, 'EGW234253'),
(348, 'EGW472809'),
(349, 'EGW959778'),
(350, 'EGW836274'),
(351, 'EGW233643'),
(352, 'EGW218781'),
(353, 'EGW833191'),
(354, 'EGW350800'),
(355, 'EGW379517'),
(356, 'EGW931550'),
(357, 'EGW87464'),
(358, 'EGW378998'),
(359, 'EGW515626'),
(360, 'EGW579865'),
(361, 'EGW316346'),
(362, 'EGW639618'),
(363, 'EGW985718'),
(364, 'EGW632477'),
(365, 'EGW613587'),
(366, 'EGW351410'),
(367, 'EGW633545'),
(368, 'EGW58136'),
(369, 'EGW572938'),
(370, 'EGW233124'),
(371, 'EGW802857'),
(372, 'EGW325593'),
(373, 'EGW288147'),
(374, 'EGW503510'),
(375, 'EGW337403'),
(376, 'EGW403595'),
(377, 'EGW352967'),
(378, 'EGW881318'),
(379, 'EGW580933'),
(380, 'EGW760895'),
(381, 'EGW861146'),
(382, 'EGW585297'),
(383, 'EGW377198'),
(384, 'EGW366242'),
(385, 'EGW406434'),
(386, 'EGW334198'),
(387, 'EGW69947'),
(388, 'EGW688386'),
(389, 'EGW82581'),
(390, 'EGW346772'),
(391, 'EGW502930'),
(392, 'EGW696076'),
(393, 'EGW483338'),
(394, 'EGW341767'),
(395, 'EGW19898'),
(396, 'EGW858063'),
(397, 'EGW702454'),
(398, 'EGW537934'),
(399, 'EGW464600'),
(400, 'EGW143097'),
(401, 'EGW333680'),
(402, 'EGW654023'),
(403, 'EGW180787'),
(404, 'EGW19928'),
(405, 'EGW470765'),
(406, 'EGW908783'),
(407, 'EGW12208'),
(408, 'EGW457306'),
(409, 'EGW707459'),
(410, 'EGW20966'),
(411, 'EGW302613'),
(412, 'EGW923981'),
(413, 'EGW137513'),
(414, 'EGW209321'),
(415, 'EGW895752'),
(416, 'EGW388703'),
(417, 'EGW354676'),
(418, 'EGW192597'),
(419, 'EGW135376'),
(420, 'EGW320221'),
(421, 'EGW452698'),
(422, 'EGW189545'),
(423, 'EGW865235'),
(424, 'EGW687287'),
(425, 'EGW25330'),
(426, 'EGW918915'),
(427, 'EGW429078'),
(428, 'EGW958649'),
(429, 'EGW166321'),
(430, 'EGW599457'),
(431, 'EGW670655'),
(432, 'EGW103058'),
(433, 'EGW469422'),
(434, 'EGW949921'),
(435, 'EGW933716'),
(436, 'EGW589264'),
(437, 'EGW28382'),
(438, 'EGW189057'),
(439, 'EGW62012'),
(440, 'EGW386017'),
(441, 'EGW436951'),
(442, 'EGW35615'),
(443, 'EGW399292'),
(444, 'EGW962067'),
(445, 'EGW788880'),
(446, 'EGW708344'),
(447, 'EGW789307'),
(448, 'EGW286164'),
(449, 'EGW677918'),
(450, 'EGW925995'),
(451, 'EGW575806'),
(452, 'EGW827057'),
(453, 'EGW197815'),
(454, 'EGW907319'),
(455, 'EGW602540'),
(456, 'EGW553498'),
(457, 'EGW942322'),
(458, 'EGW371064'),
(459, 'EGW213257'),
(460, 'EGW934235'),
(461, 'EGW5188'),
(462, 'EGW535981'),
(463, 'EGW251709'),
(464, 'EGW938019'),
(465, 'EGW980164'),
(466, 'EGW120820'),
(467, 'EGW61646'),
(468, 'EGW33600'),
(469, 'EGW960999'),
(470, 'EGW344330'),
(471, 'EGW486817'),
(472, 'EGW189728'),
(473, 'EGW541443'),
(474, 'EGW925263'),
(475, 'EGW870972'),
(476, 'EGW875153'),
(477, 'EGW815247'),
(478, 'EGW82367'),
(479, 'EGW57862'),
(480, 'EGW58625'),
(481, 'EGW376160'),
(482, 'EGW534394'),
(483, 'EGW391236'),
(484, 'EGW208893'),
(485, 'EGW317933'),
(486, 'EGW500092'),
(487, 'EGW714844'),
(488, 'EGW294709'),
(489, 'EGW234314'),
(490, 'EGW698212'),
(491, 'EGW372437'),
(492, 'EGW784821'),
(493, 'EGW219056'),
(494, 'EGW347504'),
(495, 'EGW207764'),
(496, 'EGW647980'),
(497, 'EGW865906'),
(498, 'EGW166718'),
(499, 'EGW564576'),
(500, 'EGW352936'),
(501, 'EGW268616'),
(502, 'EGW374604'),
(503, 'EGW286622'),
(504, 'EGW868439'),
(505, 'EGW20936'),
(506, 'EGW689911'),
(507, 'EGW717652'),
(508, 'EGW663239'),
(509, 'EGW216614'),
(510, 'EGW331391'),
(511, 'EGW701417'),
(512, 'EGW706086');

-- --------------------------------------------------------

--
-- Table structure for table `staff_academic_records`
--

CREATE TABLE `staff_academic_records` (
  `psn` varchar(20) NOT NULL,
  `prim_sch_name` varchar(100) NOT NULL,
  `prim_sch_year_start` varchar(20) NOT NULL,
  `prim_sch_year_end` varchar(20) NOT NULL,
  `prim_sch_cert` varchar(100) NOT NULL,
  `sec_sch_name` varchar(100) NOT NULL,
  `sec_sch_year_start` varchar(20) NOT NULL,
  `sec_sch_year_end` varchar(20) NOT NULL,
  `sec_sch_cert` varchar(100) NOT NULL,
  `typeOfSSCE` varchar(20) NOT NULL,
  `examNumber` varchar(25) NOT NULL,
  `tertiary_inst_name` varchar(100) DEFAULT NULL,
  `tertiary_inst_year_start` varchar(20) DEFAULT NULL,
  `tertiary_inst_year_end` varchar(20) DEFAULT NULL,
  `tertiary_inst_cert` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_records`
--

CREATE TABLE `staff_records` (
  `date_of_first_appt` date NOT NULL,
  `pfa` varchar(200) NOT NULL,
  `CDOFA` date NOT NULL,
  `entry_grade_level` varchar(50) NOT NULL,
  `desig_of_first_appt` varchar(150) NOT NULL,
  `appt_status` varchar(150) NOT NULL,
  `DOLA` date NOT NULL,
  `current_grade_level` int(20) NOT NULL,
  `current_step` int(20) NOT NULL,
  `Dept` varchar(200) NOT NULL,
  `current_desig_cadre` varchar(200) NOT NULL,
  `salary_structure` varchar(250) NOT NULL,
  `psn` varchar(20) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `othername` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `state_of_origin` varchar(50) NOT NULL,
  `lga_of_origin` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passport` varchar(200) NOT NULL,
  `nkfullname` varchar(50) NOT NULL,
  `nkrelationship` varchar(50) NOT NULL,
  `nkaddress` varchar(250) NOT NULL,
  `nkphone_number` varchar(50) NOT NULL,
  `nkpassport` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_login_tbl`
--

CREATE TABLE `store_login_tbl` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_login_tbl`
--

INSERT INTO `store_login_tbl` (`id`, `username`, `password`, `admin_name`) VALUES
(1, 'store', 'password', 'Andokari Peter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login_tbl`
--
ALTER TABLE `admin_login_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_receipt`
--
ALTER TABLE `cash_receipt`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cashier_login_tbl`
--
ALTER TABLE `cashier_login_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditure_receipt`
--
ALTER TABLE `expenditure_receipt`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `incoming_inventories`
--
ALTER TABLE `incoming_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outgoing_inventories`
--
ALTER TABLE `outgoing_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_tbl`
--
ALTER TABLE `pin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_academic_records`
--
ALTER TABLE `staff_academic_records`
  ADD PRIMARY KEY (`psn`);

--
-- Indexes for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD PRIMARY KEY (`psn`);

--
-- Indexes for table `store_login_tbl`
--
ALTER TABLE `store_login_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login_tbl`
--
ALTER TABLE `admin_login_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cash_receipt`
--
ALTER TABLE `cash_receipt`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cashier_login_tbl`
--
ALTER TABLE `cashier_login_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenditure_receipt`
--
ALTER TABLE `expenditure_receipt`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `incoming_inventories`
--
ALTER TABLE `incoming_inventories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `outgoing_inventories`
--
ALTER TABLE `outgoing_inventories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pin_tbl`
--
ALTER TABLE `pin_tbl`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;
--
-- AUTO_INCREMENT for table `store_login_tbl`
--
ALTER TABLE `store_login_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `expert`
--
CREATE DATABASE IF NOT EXISTS `expert` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `expert`;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pnumber` varchar(15) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `pnumber`, `message`) VALUES
(17, 'Job Joshua', 'Khenqjoe@gmail.com', '07066175450', 'I love this software.');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `disease` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `email`, `phone`, `address`, `age`, `gender`, `password`, `cpassword`) VALUES
(13, 'Joshua', 'Job', 'Khenqjoe@gmail.com', '07066175450', 'No 1 GRA Airstrip Road wukari Taraba State', 15, 'Male', 'khing6969', 'khing6969'),
(14, 'Joshua', 'Job', 'Khenqjoe@gmail.com', '07066175450', 'Abattoir street along Fire Service Road Wukari, Ta', 25, 'Male', 'khing6969', 'khing6969'),
(15, 'Joshua', 'Job', 'Khenqjoe@gmail.com', '07066175450', 'Abattoir street along Fire Service Road Wukari, Ta', 25, 'Male', 'khing6969', 'khing6969');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;--
-- Database: `expert2018`
--
CREATE DATABASE IF NOT EXISTS `expert2018` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `expert2018`;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `question`, `answer`) VALUES
(1, 'what is your name?', 'Abseejp'),
(4, 'name', 'Abraham'),
(5, 'what is an eye? ', ' it is one of the five sense organs in the body and it is used for sight......'),
(6, 'who is an opthalmologist', ' opthalmologists are doctors who specializes in treating eye diseases'),
(7, 'who is an opthalmologist', ' opthalmologists are doctors who specializes in treating eye diseases'),
(8, 'who is a programmer? ', ' someone who codes ');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pnumber` varchar(15) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `pnumber`, `message`) VALUES
(4, 'abraham', 'enyoone3@gmail.com', '08163815935', 'i need help'),
(5, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'i want to see you'),
(6, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'welcomeeeeeee'),
(7, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'welcome'),
(8, 'hallo', 'enyoone3@gmail.com', '08163815935', 'how far'),
(9, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'okay'),
(10, 'enyo@gmail.com', 'enyoone3@gmail.com', '8163815935', 'f'),
(11, 'Abraham Musa', 'enyoone3@gmail.com', '8163815935', 'you doing good sir.......'),
(12, 'Abraham Musa', 'vivianahmed8@gmail.c', '8163815935', 'i love Jesus'),
(13, 'Abraham Musa', 'vivianahmed8@gmail.c', '8163815935', 'i love Jesus'),
(14, 'Abraham Musa', 'wolesoyinka@gmail.co', '8163815935', 'aa'),
(15, 'Abraham Musa', 'vivian@gmail.com', '08163815935', 'hello'),
(16, 'Abraham Musa', 'isaacishaya73@gmail.', '08163815935', 'i love JESUS');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `disease` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `disease`) VALUES
(1, 'CONJUCTIVITIES'),
(2, 'CATARACT'),
(3, 'GLAUCOMA'),
(4, 'MYOPIA'),
(5, 'OCULAR ALLERGY'),
(6, 'BLEPHARITIS'),
(8, 'Accomodative Disorder'),
(9, 'ASTIGMATISM'),
(10, 'OCULAR MIGRANE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `email`, `phone`, `address`, `age`, `gender`, `password`, `cpassword`) VALUES
(1, 'Abraham', 'Musa', 'enyoone3@gmail.com', '8163815935', 'Adankolo, Lokoja Kogi State', 22, 'Male', 'aaa', 'aaa'),
(10, 'martha', 'Musa', 'vivianahmed8@gmail.c', '08103228734', 'Adankolo, Lokoja Kogi State', 35, 'Female', 'aaa', 'aaa'),
(11, 'Vivian', 'Ahmed', 'vivian@gmail.com', '08103228734', 'Kogi  State', 21, 'Female', 'aaa', 'aaa'),
(12, 'Vivian', 'Ahmed', 'vivianahmed8@gmail.c', '08163815935', 'Adankolo, Lokoja Kogi State', 333, 'Male', 'aaa', 'aaa'),
(13, 'Vivian', 'Ahmed', 'vivian@gmail.com', '08060206662', 'Lokoja', 222, 'Male', 'aaa', 'aaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;--
-- Database: `frsc_database`
--
CREATE DATABASE IF NOT EXISTS `frsc_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `frsc_database`;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `transaction_id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `tellerno` varchar(25) NOT NULL,
  `bank` varchar(25) NOT NULL,
  `dop` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`transaction_id`, `sname`, `fname`, `amount`, `tellerno`, `bank`, `dop`) VALUES
(1, 'Barry', 'David', '15,000', '12345', 'zenith', '12/05/2019'),
(2, 'Scot', 'John', '23,000', 'UBA2019', 'uba', '11/05/2019'),
(4, 'John', 'Scot', '5,000', 'ECO243', 'ecobank', '09/05/2019'),
(5, 'John', 'Joy', '5,000', 'UN2019', 'union', '13/05/2019'),
(6, 'Micheal', 'Joyce', '5,000', 'UN2019', 'union', '05/05/2019');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin@12');

-- --------------------------------------------------------

--
-- Table structure for table `offender`
--

CREATE TABLE `offender` (
  `offender_id` int(11) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `platenum` varchar(40) NOT NULL,
  `color` varchar(40) NOT NULL,
  `offence` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `sex` varchar(40) NOT NULL,
  `age` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offender`
--

INSERT INTO `offender` (`offender_id`, `sname`, `fname`, `platenum`, `color`, `offence`, `address`, `contact`, `sex`, `age`) VALUES
(1, 'John', 'Scot', 'GM/18C/2019', 'Black', 'attempting to corrupt marshal on duty', 'No: 22 Federal low-cost Opposite MTN Off', '07065499404', 'M', '21'),
(2, 'Barry', 'David', 'GM/19A/2019', 'White', 'Traffic Violation', 'GRA Wukari', '07065499404', 'M', '25'),
(3, 'Barry', 'David', 'GM/19A/2019', 'White', 'Traffic Violation', 'GRA Wukari', '07065499404', 'M', '25'),
(4, 'James', 'Ama', 'GM/19B/2019', 'Blue', 'Driving Under Alcohol/Drug Influence', 'Opposite Federal University Wukari', '07010461009', 'M', '24'),
(5, 'Micheal', 'Joyce', 'TR/16A/2019', 'Orange', 'Driving Under Aged.', 'No: 1 Bokkos Street', '08065499404', 'F', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `offender`
--
ALTER TABLE `offender`
  ADD PRIMARY KEY (`offender_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `offender`
--
ALTER TABLE `offender`
  MODIFY `offender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `frscdb`
--
CREATE DATABASE IF NOT EXISTS `frscdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `frscdb`;

-- --------------------------------------------------------

--
-- Table structure for table `billgen`
--

CREATE TABLE `billgen` (
  `gen_id` int(25) NOT NULL,
  `unique_id` varchar(200) NOT NULL,
  `names` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `age` varchar(25) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(50) NOT NULL,
  `dt` varchar(25) NOT NULL,
  `offence` varchar(200) NOT NULL,
  `fee` varchar(250) NOT NULL,
  `arrestingofficer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logintb`
--

CREATE TABLE `logintb` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintb`
--

INSERT INTO `logintb` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `offence_sheet`
--

CREATE TABLE `offence_sheet` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(50) NOT NULL,
  `names` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `offence` varchar(500) NOT NULL,
  `number` varchar(50) NOT NULL,
  `dateissued` varchar(50) NOT NULL,
  `renewaldt` varchar(50) NOT NULL,
  `expiry` varchar(50) NOT NULL,
  `issuing` varchar(50) NOT NULL,
  `confistication` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offence_sheet`
--

INSERT INTO `offence_sheet` (`id`, `unique_id`, `names`, `address`, `age`, `gender`, `telephone`, `regno`, `color`, `type`, `make`, `offence`, `number`, `dateissued`, `renewaldt`, `expiry`, `issuing`, `confistication`, `payment`) VALUES
(1, 'FRS001', 'John Paul', 'Behind Elim Top Suite, Abuja', '21', 'Male', '06065499404', 'ABJ|02|2019', 'Black', 'Highlander', 'Toyota', 'Dangerous Driving.. Penality  10,000', 'ABJ|2F4|2019', '01-07-2019', '01-07-2020', '31-06-2019', 'Abuja', 'Driver Licence', 'Paid'),
(2, 'FRS002', 'Camila James', 'Behind Investment House, Gombe', '15', 'Female', '09065499403', 'GM|02|2019', 'Golden', 'Ferrari', 'Poche', 'Under Age Driving/Riding N20,000', 'DR|GM|01|2019', '01-08-2019', '01-08-2020', '31-07-2019', 'Gombe', 'Vehicle Key', 'Paid'),
(3, 'FRS003', 'James Vegas', 'GRA Wukari', '33', 'Male', '09065499403', 'LAG|42|2019', 'Black', 'Highlander', 'Toyota', 'Driverâ€™s License Violation.. Penality  N5,000', 'ABJ|2F4|2019', '01-07-2019', '01-08-2020', '31-06-2019', 'Abuja', 'Vehicle Key', 'Not Paid'),
(4, 'FRSC|64115', 'Amakai Johnson', 'No: 22 Federal low-cost Opposite MTN Office ', '25', 'Male', '09065499404', 'JOS|PLS|2019', 'Orange', 'Accord', 'Toyota', 'Driving Under Alcohol/Drug Influence.. Penality  N8,000', 'JOS|BOK|0012', '29-07-2019', '31-07-2020', '01-08-2021', 'Plateau', 'Vehicle Key', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `offendertb`
--

CREATE TABLE `offendertb` (
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `platenumber` varchar(25) NOT NULL,
  `offence` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sex` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `payment` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offendertb`
--

INSERT INTO `offendertb` (`fname`, `lname`, `contact`, `platenumber`, `offence`, `address`, `sex`, `age`, `payment`) VALUES
('David', 'Hwanvyon', '08100000001', 'TR|02A|2018', 'Traffic Violation', 'No: 22 Federal low-cost O', 'M', '21', 'Paid'),
('Scot', 'Ezra', '08100000002', 'AB|12K|2019', 'Driving Under Aged.', 'Behind Elim Top Suite, Ab', 'M', '15', 'Not Paid'),
('Joy', 'Amakai', '08100000003', 'GM|14W|2019', 'Attempting To Corrupt Mar', 'Adjacent Investment Quart', 'F', '20', 'Paid'),
('Amayindi', 'James', '08100000004', 'GM|16B|2016', 'Attempting To Corrupt Mar', 'Old Airport Junction,Jos', 'M', '20', 'Paid'),
('Joyce', 'Deo', '08100000005', 'EG|O3E|2019', 'Attempting To Corrupt Mar', 'Adjacent Investment Quarters, Jalingo ', 'F', '21', 'Not Paid'),
('David', 'James', '08100000006', 'FG|42B|2019', 'Attempting To Corrupt Marshal On Duty', 'No: 22 Federal low-cost Opposite MTN Office ', 'M', '50', 'Not Paid'),
('Joyce', 'Deo', '08100000007', 'AB|12K|2019', 'Drivers Licence Violation', 'GRA', 'F', '20', 'Not Paid'),
('Camila ', 'James', '08100000009', 'TEXAS|E20|2019', 'Attempting To Corrupt Marshal On Duty', 'Behind Investment House, Gombe', 'F', '25', 'Paid'),
('David', 'Deo', '07065499404', 'AB|12K|2019', 'attempting to corrupt marshal on duty', 'GRA Wukari', 'M', '33', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `offenses`
--

CREATE TABLE `offenses` (
  `offender_name` varchar(255) NOT NULL,
  `list_of_offense` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `quantidade` varchar(255) NOT NULL,
  `resultado` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offenses`
--

INSERT INTO `offenses` (`offender_name`, `list_of_offense`, `preco`, `quantidade`, `resultado`, `paid`, `payment_type`, `created`) VALUES
('John Paul', 'attempting to corrupt marshal on duty', '10000', '2', '20000', '20000', 'card', '0000-00-00 00:00:00'),
('Camila James', 'assaulting marshal on duty', '5000', '3', '15000', '15000', 'cash', '2019-09-22 00:00:00'),
('James Vegas', 'dangerous driving', '7000', '2', '14000', '14000', 'draft', '2019-09-22 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billgen`
--
ALTER TABLE `billgen`
  ADD PRIMARY KEY (`gen_id`);

--
-- Indexes for table `logintb`
--
ALTER TABLE `logintb`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `offence_sheet`
--
ALTER TABLE `offence_sheet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billgen`
--
ALTER TABLE `billgen`
  MODIFY `gen_id` int(25) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offence_sheet`
--
ALTER TABLE `offence_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `health`
--
CREATE DATABASE IF NOT EXISTS `health` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `health`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pnumber` varchar(10) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `pnumber`, `feedback`) VALUES
('abraham', 'enyoone3@gmail.com`', '0803333333', 'i am coming'),
('abraham', 'enyoone3@gmail.com`', '0803333333', 'i am coming'),
('abraham', 'enyoone3@gmail.com`', '0803333333', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_regcode` varchar(20) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `spec` text NOT NULL,
  `gender` varchar(11) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` text NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_regcode`, `first`, `last`, `email`, `password`, `spec`, `gender`, `age`, `phone`, `address`) VALUES
(2, 'DOC98440', 'Mark', 'Zuckerberg', 'markzuckerberg@gmail.com', '12345678', 'Dentist', 'Male', 70, '09091234567', 'Kogi'),
(3, 'DOC30393', 'Wole', 'Soyinka', 'wolesoyinka@gmail.com', '12345678', 'Optician', 'Female', 62, '07000000000', 'Omala'),
(5, 'DOC77789', 'Emmanuel', 'Enna', 'emmy@gmail.com', 'emmanuel', 'Surgeon', 'Male', 200, '08103228734', 'Lafia'),
(6, 'DOC11111', 'Abseejp', 'Abseejp', 'absee@gmail.com', 'absee', 'Surgeon', 'Male', 20, '30', 'jos'),
(7, 'vivi1000', 'Vivivan', 'Ahmed', 'vivianahmed8@gmail.com', '1997', 'Gynealcologist', 'Female', 100, '08103228734', 'Mashoka, Felele'),
(8, 'doc222', 'Blessing', 'Osadare', 'blessing@gmail.com', 'bleessing@gmail.com', 'Optician', 'Female', 22, '08163815935', '30n ogbomosho');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `drug_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `treatment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`drug_id`, `drug_name`, `treatment`) VALUES
(1, 'paracetamol', 'Treatment of headache, body pain etc'),
(2, 'Tetracycline', 'Treatment of purging system, running stomach, curing of wound.'),
(3, 'Panadol', 'Treatment of headache, body pain etc.'),
(4, 'Amalar', 'Treating of malaria, fever etc'),
(5, 'Ibruprofen', 'Treatment of all kinds of body pain, back ache, headache, building body calcium.'),
(6, 'Ibucap', 'Pains of the neck and ears'),
(8, 'Chloroquin', 'Treating of body aches of all sort.'),
(9, 'anointing oil', 'for spiritual growth and sensitivity'),
(10, 'mustard seed', 'mental disorder'),
(11, 'bitter kola', 'used for treatment of insomnia'),
(12, 'garri', 'treatment of TDB hunger');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nurse_id` int(11) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nurse_id`, `first`, `last`, `email`, `password`, `age`, `gender`, `phone`, `address`) VALUES
(1, 'badmus', 'memunat', 'badmusmemunat@gmail.com', '12345678', 20, 'Female', '08034229879', 'Ejinrin road, Ijebu Ode.'),
(2, 'Isreal ', 'akowe', 'isreal@gmail.com', 'isreal@gmail.comm', 23, 'Male', '08034229879', 'Ogomboso');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `first` varchar(30) NOT NULL,
  `last` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `age` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `r_code` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `first`, `last`, `email`, `password`, `age`, `gender`, `phone`, `address`, `r_code`) VALUES
(2, 'Sule', 'Olanrewaju', 'suleolanrewaju@yahoo.com', 'password', '35', 'Male', '08028977141', 'Iyana Ipaja', 'Z2n3kWifoi'),
(3, 'Kasim', 'Femi', 'freesoul4sure@gmail.com', '12345678', '37', 'Male', '08034356079', 'Kemfat road, Ajah', 'y2cAE5GksU'),
(14, 'Rebecca', 'Musa', 'Rebecca@gmail.com', 'Rebecca', '50', 'Female', '08060206662', 'Omala', 'aaxYT2SNwHS'),
(15, 'abraham', 'musa', 'enyoone3@gmail.com', 'abraham', '30', 'Male', '08103228734', 'jos', 'gQ0z4JUVmc2'),
(16, 'Ezekiel', 'Olugbami', 'ezekiel@gmail.com', 'ezekiel@gmail.com', '23', 'Male', '08060206662', 'Ogomboshoooooooooooooooo', 'MYCn8amM0Kd');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `pharm_id` int(11) NOT NULL,
  `first` varchar(50) NOT NULL,
  `last` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`pharm_id`, `first`, `last`, `email`, `password`, `age`, `gender`, `phone`, `address`) VALUES
(1, 'Ejiro', 'Kasim', 'kasimodunayo2016@gmail.com', '12345678', 55, 'Female', '08124368092', 'Adeola road, Ijebu Ode'),
(2, 'jerry', 'akoh', 'jerry@gmail.com', 'jerry@gmail.com', 22, 'male', '08022334455', 'lokoja');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `complaint` text NOT NULL,
  `drug` text NOT NULL,
  `usage_desc` text NOT NULL,
  `patient_id` text NOT NULL,
  `doctor_id` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_sent` date NOT NULL,
  `approval` varchar(50) NOT NULL,
  `approved_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `complaint`, `drug`, `usage_desc`, `patient_id`, `doctor_id`, `status`, `date_sent`, `approval`, `approved_date`) VALUES
(2, 'i want to see Abraham Enyoone Musa', 'Chloroquin', 'go and pray okay', '14', '6', 'Assigned', '2017-08-29', 'Approved', '2017-08-29'),
(3, '', '', '', '14', '6', 'Assigned', '2017-08-29', 'Approved', '2017-09-07'),
(4, 'i have back pain', '', '', '15', '7', 'Assigned', '2017-08-29', 'Approved', '2017-09-07'),
(12, 'Hello Doctor, i am having some increased pulse rate', 'anointing oil', 'take it 100 times a day', '15', '7', 'Assigned', '2017-09-21', 'Approved', '2017-11-23'),
(13, 'i want to see the doctor.....................', 'anointing oil', 'take it 100 times a day', '15', '7', 'Assigned', '2017-11-22', 'Approved', '2017-11-23'),
(14, 'i want to know why i sleep too much', 'anointing oil', 'take it 100 times a day', '15', '7', 'Assigned', '2017-11-23', 'Approved', '2017-11-23'),
(15, 'My Doctor Please i used to dream and see revelations. what capsules should i take', 'mustard seed', 'eat 10 carton daily', '16', '5', 'Assigned', '2017-11-24', 'Approved', '2017-11-24'),
(16, 'answer me fast', 'mustard seed', 'eat 10 carton daily', '16', '5', 'Assigned', '2017-11-24', 'Approved', '2017-11-24'),
(17, 'please help me solution', 'mustard seed', 'eat 10 carton daily', '16', '5', 'Assigned', '2017-11-24', 'Approved', '2017-11-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurse_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`pharm_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nurse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `pharm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;--
-- Database: `hmsdb`
--
CREATE DATABASE IF NOT EXISTS `hmsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `fname` varchar(80) NOT NULL,
  `lname` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `contact` varchar(80) NOT NULL,
  `doctor` varchar(80) NOT NULL,
  `payment` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`fname`, `lname`, `email`, `contact`, `doctor`, `payment`) VALUES
('jdsnk', 'kjndk', 'jkdnk', 'kjdfn', 'Dr. Punam Shaw', ''),
('dsskj', 'dkjn', 'dnkjn', 'kjdn', 'Dr. Ashok Goyal', ''),
('sdkjn', 'dskjnk', 'kfdjnkjn', 'jndkjn', 'Dr. Ashok Goyal', 'Pay later'),
('provat', 'dutta', 'pd@gmail.com', '9474764197', 'Dr. Ashok Goyal', 'Pay later'),
('sample1', 'sample1', 'sample1@gmail.com', '1982272721', 'Dr. Punam Shaw', 'Paid'),
('Prithwiraj', 'Dutta', 'duttaprithwiraj9@gmail.com', '+917586827481', 'Dr. Ashok Goyal', 'Pay later'),
('rohit', 'sharma', 'rs@yahoo.com', '2838393923', 'Dr. Punam Shaw', 'Paid'),
('dexter', 'dutta', 'dd@yahoo.com', '327262728', 'Dr. Ashok Goyal', 'paid'),
('David', 'Ezra', 'ezradavid997@gmail.com', '07065499404', '', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`name`) VALUES
('Dr. Ashok Kumar'),
('Dr. Pravin Malotra'),
('Dr. Prithwiraj Dutta'),
('Dr. Rohit Mehta');

-- --------------------------------------------------------

--
-- Table structure for table `logintb`
--

CREATE TABLE `logintb` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintb`
--

INSERT INTO `logintb` (`username`, `password`) VALUES
('admin', 'admin123');
--
-- Database: `hostel_management_system`
--
CREATE DATABASE IF NOT EXISTS `hostel_management_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hostel_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(1, 'B160497CS', 1, 1, NULL, 'I am a handicapped, so I would like to have a room at ground floor ');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'A', NULL, '400', NULL),
(2, 'B', NULL, '400', NULL),
(3, 'C', NULL, '400', NULL),
(4, 'D', NULL, '400', NULL),
(5, 'E', NULL, '400', NULL),
(6, 'F', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(1, 'B160497CS', '3', 1, 'Ground Floor Request', 'sfdbfbdf', '2018-10-27', '09:14 PM'),
(2, '3', 'B160497CS', 1, 'DVDSG', 'DDSCSDV', '2018-10-27', '09:15PM'),
(3, '3', 'B160497CS', 1, 'wddwd', 'xssss', '2018-10-28', '09-16 PM'),
(4, 'B160498EE', '1', 3, 'ROOM NEAR TOILET', 'I would like to change my room as it is near toilet', '2018-10-27', '10:06 PM'),
(5, '1', 'B160498EE', 3, 'Room Near Toilet', 'cdsdgdfhdfh', '2018-10-27', '10:48 PM');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('B160497CS', 'Prajwal', 'Ghoradkar', '09757318791', 'CSE', '3', '$2y$10$hGFfPexHXi.Ec.WVp3qK4.RG8yajZeO31LQ/aOeF6iRU9fk3IFrkq', NULL, NULL),
('UR201400067', 'David', 'Ezra', '07065499404', 'Computer Science', '4', '$2y$10$zvjROj/nOTowqSHrgenODewerbsFbjwNEhU16Cmi9CegnanRBJNbS', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);
--
-- Database: `intprof`
--
CREATE DATABASE IF NOT EXISTS `intprof` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `intprof`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `student_id` int(15) NOT NULL,
  `attended` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `course_id`, `student_id`, `attended`, `date`) VALUES
(1, 12, 120, 'yes', '2018-08-14 18:00:00'),
(2, 12, 120, 'yes', '2018-08-14 18:00:00'),
(3, 12, 121, 'yes', '2018-08-14 18:00:00'),
(4, 12, 120, 'yes', '2018-08-29 18:00:00'),
(5, 12, 121, 'yes', '2018-08-29 18:00:00'),
(6, 12, 120, 'no', '2018-08-29 18:00:00'),
(7, 12, 121, 'yes', '2018-08-29 18:00:00'),
(8, 12, 120, 'no', '2018-08-30 16:00:22'),
(9, 12, 121, 'no', '2018-08-30 16:00:22'),
(10, 12, 120, 'yes', '2018-08-30 16:02:11'),
(11, 12, 121, 'yes', '2018-08-30 16:02:11'),
(12, 12, 120, 'yes', '2018-08-30 16:02:38'),
(13, 12, 121, 'yes', '2018-08-30 16:02:38'),
(14, 12, 120, 'yes', '2018-08-30 16:03:37'),
(15, 12, 121, 'yes', '2018-08-30 16:03:37'),
(16, 12, 120, 'yes', '2018-08-30 16:05:04'),
(17, 12, 121, 'yes', '2018-08-30 16:05:04'),
(18, 12, 120, 'yes', '2018-08-30 16:05:30'),
(19, 12, 121, 'no', '2018-08-30 16:05:30'),
(20, 12, 120, 'yes', '2018-08-30 16:08:39'),
(21, 12, 121, 'no', '2018-08-30 16:08:39'),
(22, 12, 120, 'yes', '2018-08-30 16:09:40'),
(23, 12, 121, 'no', '2018-08-30 16:09:40'),
(24, 12, 120, 'yes', '2018-08-30 16:09:58'),
(25, 12, 121, 'no', '2018-08-30 16:09:58'),
(26, 12, 120, 'yes', '2018-08-30 16:10:04'),
(27, 12, 121, 'no', '2018-08-30 16:10:04'),
(28, 10, 120, 'no', '2018-08-30 19:24:47'),
(29, 10, 120, 'no', '2018-08-30 19:34:56'),
(30, 10, 120, 'yes', '2018-08-30 19:41:38'),
(31, 10, 120, 'yes', '2018-08-30 19:42:51'),
(32, 10, 120, 'yes', '2018-08-30 19:43:24'),
(33, 10, 120, 'no', '2018-08-30 19:52:58'),
(34, 10, 120, 'yes', '2018-08-30 20:08:15'),
(35, 10, 120, 'yes', '2018-08-30 20:09:01'),
(36, 13, 123, 'yes', '2019-03-06 17:42:31'),
(37, 13, 123, 'yes', '2019-03-06 17:50:33'),
(38, 13, 124, 'yes', '2019-03-06 17:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `comment_votes` int(4) NOT NULL,
  `comment_teacher_flag` tinyint(1) NOT NULL,
  `comment_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_user_id`, `thread_id`, `comment`, `comment_votes`, `comment_teacher_flag`, `comment_created_on`) VALUES
(1, 120, 17, 'ok sir', 2, 0, '2018-08-29 13:25:06'),
(2, 107, 17, 'Hmmm', 0, 0, '2018-08-29 13:17:01'),
(3, 120, 18, 'ok\r\n', 0, 0, '2018-08-29 13:25:35'),
(4, 122, 19, 'Name: Ali Adda\r\nAccording to the father of Artificial Intelligence John McCarthy, it is “The science and\r\nengineering of making intelligent machines, especially intelligent computer\r\nprograms”.', 0, 0, '2019-03-06 17:41:01'),
(5, 122, 19, 'That''s great work keep it up!', 0, 0, '2019-03-06 17:41:58'),
(6, 124, 19, 'According to the father of Artificial Intelligence John McCarthy, it is “The science and\r\nengineering of making intelligent machines, especially intelligent computer\r\nprograms”.', 0, 0, '2019-03-06 17:48:53'),
(7, 122, 20, 'Next week Monday before 2pm in the afternoon.', 0, 0, '2019-03-07 20:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(11) NOT NULL,
  `course_name` varchar(25) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `activation_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `teacher_id`, `course_name`, `course_title`, `description`, `activation_code`) VALUES
(10, '107', 'CSE327', 'Software Engineering', 'Welcome to Software Engineering', '83715'),
(11, '107', 'CSE425', 'Principles of PL', 'none', '36949'),
(12, '107', 'CSE115', 'Pl1', 'ASDAFAF', '29786'),
(13, '122', 'CSC402', 'ARTIFICIAL INTELLIGENCE', 'INTRODUCTION TO AI', '56917'),
(14, '122', 'CSC400', 'PROJECT WORK', 'INTRODUCTION TO PROJECT WORK', '98335'),
(15, '122', 'CSC412', 'DATA COMMUNICATION', 'INTRODUCTION TO DATA COMMUNICATION', '17171'),
(16, '122', 'CSC406', 'PERFORMANCE EVALUATION', 'INTRODUCTION TO PERFORMANCE EVALUATION', '22612');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`id`, `course_id`, `teacher_id`, `student_id`, `grade`, `updated_on`) VALUES
(1, '10', '107', '120', NULL, '2018-08-30 21:42:02'),
(2, '12', '107', '120', NULL, '2018-08-30 21:42:02'),
(3, '12', '107', '121', NULL, '2018-08-30 22:27:57'),
(4, '12', '107', '119', NULL, '2018-08-30 21:42:02'),
(5, '10', '107', '119', NULL, '2018-08-30 21:42:29'),
(6, 'sd', '132', '34', 'A', '2018-09-01 07:46:57'),
(12, '12', '', '119', 'A-', '2018-09-01 08:13:51'),
(13, '12', '', '119', 'A-', '2018-09-01 08:14:13'),
(14, '13', '122', '123', NULL, '2019-03-06 11:42:04'),
(15, '13', '122', '124', NULL, '2019-03-06 17:48:13'),
(16, '15', '122', '123', NULL, '2019-03-07 20:15:46'),
(17, '16', '122', '123', NULL, '2019-03-07 20:16:10'),
(18, '14', '122', '123', NULL, '2019-03-07 20:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(5) NOT NULL,
  `like_user_id` int(5) NOT NULL,
  `like_comment_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `like_user_id`, `like_comment_id`) VALUES
(1, 107, 1),
(2, 107, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livelinks`
--

CREATE TABLE `livelinks` (
  `id` int(10) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `posted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livelinks`
--

INSERT INTO `livelinks` (`id`, `link`, `posted_on`) VALUES
(1, 'llll', '2018-09-01 15:54:55'),
(2, 'link', '2018-08-31 19:57:10'),
(3, 'dasdas', '2018-08-31 20:00:27'),
(4, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:07:38'),
(5, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:07:45'),
(6, '', '2018-08-31 20:37:40'),
(7, '999', '2018-08-31 20:37:45'),
(8, 'ldasld', '2018-08-31 20:37:53'),
(9, 'ldasld', '2018-08-31 20:39:16'),
(10, 'hello', '2018-08-31 20:39:22'),
(11, 'lol', '2018-08-31 20:39:31'),
(12, 'lol', '2018-08-31 20:41:19'),
(13, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:41:39'),
(14, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:41:46'),
(15, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:41:50'),
(16, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:42:17'),
(17, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:42:43'),
(18, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:48:22'),
(19, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:50:41'),
(20, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-08-31 20:50:52'),
(21, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-09-01 08:37:16'),
(22, 'https://www.youtube.com/watch?v=N1UCViygC1Q', '2018-09-01 08:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `post` varchar(500) NOT NULL,
  `votes` int(11) NOT NULL,
  `teacher_flag` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`id`, `user_id`, `course_id`, `subject`, `post`, `votes`, `teacher_flag`, `created_on`) VALUES
(1, 102, '9', 'About Baaal', 'baler course akta!!!', 0, 0, '2016-11-26 10:23:01'),
(2, 102, '9', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the ', 0, 0, '2016-11-26 10:23:01'),
(3, 102, '9', 'werf', 'werf', 0, 0, '2016-11-26 10:23:01'),
(4, 102, '9', 'Another question', 'function save_course($data) {\r\n\r\n		if ($this -> db -> insert(''course'', $data)) {\r\n\r\n			return TRUE;\r\n		}\r\n	} ', 0, 0, '2016-11-26 10:23:01'),
(5, 102, '9', 'wer', 'wer', 0, 0, '2016-11-26 10:23:01'),
(6, 102, '9', 'klkgfgdj', 'jhgb', 0, 0, '2016-11-26 10:23:01'),
(7, 102, '9', 'skjdbvkjsd', 'slnvkljfsdbv', 0, 0, '2016-11-26 10:23:01'),
(8, 102, '9', 'timestamp check', 'asdfsfgdvsfdv', 0, 0, '0000-00-00 00:00:00'),
(9, 102, '9', 'timestamp check2', 'AJKHXcgbgaysdc', 0, 0, '0000-00-00 00:00:00'),
(10, 102, '9', 'timestamp check3', 'asdcvsdv', 0, 0, '0000-00-00 00:00:00'),
(11, 102, '9', 'sdvasfdb', 'zdfbsdfgbdfgs', 0, 0, '2016-11-26 10:39:59'),
(12, 102, '9', 'desc check', 'sdvfsvsfabvsf', 0, 0, '2016-11-26 10:55:53'),
(13, 102, '9', 'Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?', 'If you still want to delete it then it is always better to use higher level Q2A functions than using plain SQL as they take care of things that just one DELETE statement won''t (e.g., what happens with posts of that user, votes, etc). I''d recommend just running this', 0, 0, '2016-11-26 10:23:01'),
(14, 102, '9', 'Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?', 'Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?', 0, 0, '2016-11-26 12:51:10'),
(15, 102, '9', 'Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?', 'Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?Who can illustrate how to delete and re-enter my account super administrator in phpmyadmin into my sql table?', 0, 0, '2016-12-04 16:52:13'),
(16, 107, '11', 'QuiZ 1', 'Quiz 1 on nextr class.. Cheers!', 0, 0, '2018-08-29 13:07:13'),
(17, 107, '12', 'quiz 2', 'quiz 2 on next class', 0, 0, '2018-08-29 13:08:10'),
(18, 107, '12', 'mid 1', 'mid 1 next week', 0, 0, '2018-08-29 13:24:54'),
(19, 122, '13', 'CSC402', '1) What is Artificial Intelligence?\r\n2) What are the characteristic of an AI?\r\n3) Define Expert System?\r\n4) Do machine thinks like human being?', 0, 0, '2019-03-06 11:38:23'),
(20, 123, '13', 'CSC402', 'When are we suppose to submit the assignment?', 0, 0, '2019-03-07 20:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `sequrity_question` varchar(40) NOT NULL,
  `sequrity_question_answer` varchar(40) NOT NULL,
  `user_type` text NOT NULL,
  `is_active` enum('yes','no') NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `birth_date`, `gender`, `username`, `password`, `contact`, `email`, `designation`, `sequrity_question`, `sequrity_question_answer`, `user_type`, `is_active`, `created_on`) VALUES
(102, 'Admin', 'Admin', '0000-00-00', 'male', 'admin', '21232f297a57a5a743894a0e4a801fc3', '01737372722', 'admin@admin.com', 'admin', '', '', '1', 'yes', '0000-00-00 00:00:00'),
(107, 'Nabeel', 'Mohammed', '0000-00-00', 'male', 'nbm', '141daacd408ca680bde2093f3d000d0f', '016777777777', 'nabeel.mohammed@northsouth.edu', 'Assistant Professor', '', '', '1', 'yes', '0000-00-00 00:00:00'),
(117, 'Arshad M', 'Chowdhury', '0000-00-00', 'male', 'amc', '3654b34017508a963ccce2426e91e4cd', '01777777777', 'arshad.chowdhury@northsouth.edu', 'Professor', '', '', '1', 'yes', '0000-00-00 00:00:00'),
(118, 'Tanjila', 'Farah', '0000-00-00', 'female', 'tnf', 'ab9bc7ce433266ca5b4543e538aeed73', '0181831231', 'tnf@gmail.com', 'Lecturer', '', '', '1', 'yes', '0000-00-00 00:00:00'),
(119, 'Kazi Sakib', 'Ahmad', '0000-00-00', 'male', 'kazi.sakib', 'fe04fc6045533c8da744110fc9b7323d', '01676451865', 'sakibahmad24@gmail.com', 'Student', '', '', '2', 'yes', '0000-00-00 00:00:00'),
(120, 'Sadia Afroz', 'Silvia', '0000-00-00', 'female', 'silvia', 'e5cb7c411f1d9a67f68deff4a954cfbc', '01678377658', 'sadia.silvia@northsouth.edu', 'Student', '', '', '2', 'yes', '2018-08-18 18:37:44'),
(121, 'Mahdi', 'Shehab', '0000-00-00', 'male', 'mahdi', 'f9c24b8f961d48841a9838cca5274d8d', '01777737123', 'mahdi@gmail.com', 'Student', '', '', '2', 'yes', '0000-00-00 00:00:00'),
(122, 'David', 'Ezra', '0000-00-00', 'male', 'scot1974', '4c7c65c99667ab31f2c1cdf0313a0279', '07065499404', 'ezradavid997@gmail.com', 'lecturer', '', '', '1', 'yes', '0000-00-00 00:00:00'),
(123, 'Ali ', 'Adda', '0000-00-00', 'male', 'ali2019', 'e59bf056604c8148a5a93a00eab5f41f', '07065499404', 'barry2018@gmail.com', 'Student', '', '', '2', 'yes', '0000-00-00 00:00:00'),
(124, 'Favor ', 'Markus', '0000-00-00', 'female', 'favor2019', '21f0826212175fb548bb59b74fc0ea4f', '07010461009', 'favor2018@gmail.com', 'Student', '', '', '2', 'yes', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activation_code` (`activation_code`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livelinks`
--
ALTER TABLE `livelinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `livelinks`
--
ALTER TABLE `livelinks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;--
-- Database: `inv_project_db`
--
CREATE DATABASE IF NOT EXISTS `inv_project_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inv_project_db`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'Samsung ', '1'),
(3, 'Adobe', '1'),
(4, 'Hauwei', '1'),
(5, 'Microsoft', '1'),
(6, 'HP', '1'),
(7, 'DELL', '1'),
(8, 'Apple', '1'),
(9, 'LG', '1'),
(10, 'Sony', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, 7, 'Laptop', '1'),
(2, 4, 'Mobile', '1'),
(3, 5, 'Software', '1'),
(4, 0, 'Gadgets', '1'),
(5, 0, 'Antivirus', '1'),
(7, 0, 'Electronics', '1'),
(9, 7, 'CCTV Camera', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(1, 2, 1, 'Samsung Galaxy S9', 90000, 1000, '2019-09-22', '1'),
(2, 3, 3, 'Photoshop CS6', 50000, 1500, '2019-09-20', '1'),
(3, 1, 6, 'Pavillion', 200000, 5000, '2019-09-23', '1'),
(4, 2, 8, 'iPhone 11 Pro', 350000, 1000, '2019-09-23', '1'),
(5, 1, 8, 'Apple Laptop', 500000, 1500, '2019-09-23', '1'),
(6, 1, 6, 'HP Pavilion', 250000, 3000, '2019-09-23', '1'),
(7, 7, 1, 'Samsung LED Smart TV', 120000, 2000, '2019-09-23', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_seen` datetime NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_seen`, `notes`) VALUES
(1, 'Scott ', 'scot@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Admin', '2019-09-24', '2019-09-24 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);
--
-- Database: `lmsdb`
--
CREATE DATABASE IF NOT EXISTS `lmsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('library/mit/admin/1', 'pass123'),
('library/mit/admin/2', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `booktb`
--

CREATE TABLE `booktb` (
  `book_Id` int(11) NOT NULL,
  `book_Title` varchar(60) NOT NULL,
  `author_Name` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `book_Quantity` int(11) NOT NULL,
  `number_of_Books_issued` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktb`
--

INSERT INTO `booktb` (`book_Id`, `book_Title`, `author_Name`, `Category`, `book_Quantity`, `number_of_Books_issued`) VALUES
(1, 'OOPL', 'Balagrusamy', 'IT', 4, 1),
(2, 'Electrical circuit analysis', 'Alexander', 'EEE', 1, 0),
(5, 'CPP', 'unknown', 'IT', 4, 0),
(6, 'ECA', 'Alexander', 'EEE', 3, 0),
(7, 'The last sin', 'unknown', 'EEE', 1, 0),
(8, 'OOPL', 'balagrusamy', 'IT', 3, 0),
(9, 'Discrete', 'rosen', 'IT', 2, 0),
(10, 'Signal', 'TBA', 'CSE', 1, 0),
(11, 'C++ programming', 'Unknown', 'IT', 2, 0),
(12, 'ECA', 'unknown', 'EEE', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `commenttb`
--

CREATE TABLE `commenttb` (
  `username` varchar(20) NOT NULL,
  `who` varchar(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commenttb`
--

INSERT INTO `commenttb` (`username`, `who`, `comment`) VALUES
('library/mit/4', 'user', 'this application is helpful.'),
('library/mit/6', 'user', 'best application.'),
('library/mit/5', 'user', 'wow the best app.\r\n'),
('library/mit/2', 'user', 'this app is helpful to the institute.'),
('library/mit/3', 'user', 'wwwwwwwwwwoooooooooooooooooowwwwwwwwwwwwwwwww'),
('library/mit/7', 'user', 'wooooowwww'),
('library/mit/admin/2', 'admin', 'it is ........from admin');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooktb`
--

CREATE TABLE `issuebooktb` (
  `date_Of_Issue` date NOT NULL,
  `book_Id` int(11) NOT NULL,
  `book_Title` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `first_Name` varchar(30) NOT NULL,
  `last_Name` varchar(30) NOT NULL,
  `date_Of_Return` varchar(20) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuebooktb`
--

INSERT INTO `issuebooktb` (`date_Of_Issue`, `book_Id`, `book_Title`, `username`, `first_Name`, `last_Name`, `date_Of_Return`) VALUES
('2018-04-21', 1, 'OOPL', 'library/mit/2', 'Goytom', 'Alemu', '2018-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `studenttb`
--

CREATE TABLE `studenttb` (
  `id` int(11) NOT NULL,
  `first_Name` varchar(40) NOT NULL,
  `last_Name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `number_of_Books_issued` int(11) NOT NULL,
  `punishment_In_Birr` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttb`
--

INSERT INTO `studenttb` (`id`, `first_Name`, `last_Name`, `username`, `password`, `number_of_Books_issued`, `punishment_In_Birr`) VALUES
(1, 'Halefom', 'Alemu', 'library/mit/1', '1234asdf', 0, 0),
(2, 'Goytom', 'Alemu', 'library/mit/2', 'asdf', 1, 0),
(3, 'haben', 'mehary', 'library/mit/3', 'qwerty', 0, 28),
(4, 'Haftu', 'Eyassu', 'library/mit/4', 'qwerty', 0, 12),
(5, 'Hafte', 'Desta', 'library/mit/5', '1234', 0, 0),
(6, 'Redae', 'Berihu', 'library/mit/6', 'qwerty', 0, 0),
(7, 'Kiflom', 'Tesfay', 'library/mit/7', '24', 0, 0),
(8, 'Dawit', 'Seged', 'library/mit/8', 'asdf', 0, 2),
(9, 'Haftu', 'Mesele', 'library/mit/9', '1234', 0, 0),
(10, 'XXX', 'YYYY', 'library/mit/10', 'asdf', 0, 0),
(11, 'jjjjjj', 'kkkk', 'library/mit/11', 'asdf1234', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booktb`
--
ALTER TABLE `booktb`
  ADD PRIMARY KEY (`book_Id`);

--
-- Indexes for table `studenttb`
--
ALTER TABLE `studenttb`
  ADD PRIMARY KEY (`id`);
--
-- Database: `nafdac`
--
CREATE DATABASE IF NOT EXISTS `nafdac` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nafdac`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `registercompany`
--

CREATE TABLE `registercompany` (
  `id` int(11) NOT NULL,
  `company` varchar(200) NOT NULL,
  `TIN` varchar(200) NOT NULL,
  `CompanyAddress` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `drugName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registercompany`
--

INSERT INTO `registercompany` (`id`, `company`, `TIN`, `CompanyAddress`, `date`, `drugName`) VALUES
(3, 'NNPC', '2121', 'Kaduna', '2019-04-10', 'Cool bear bokkos');

-- --------------------------------------------------------

--
-- Table structure for table `registerdrug`
--

CREATE TABLE `registerdrug` (
  `id` int(11) NOT NULL,
  `drugName` varchar(200) NOT NULL,
  `companyName` varchar(200) NOT NULL,
  `tradeMark` varchar(200) NOT NULL,
  `nafdacNo` varchar(200) NOT NULL,
  `productState` varchar(200) NOT NULL,
  `drugImprint` varchar(200) NOT NULL,
  `productionDate` varchar(200) NOT NULL,
  `expirationDate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerdrug`
--

INSERT INTO `registerdrug` (`id`, `drugName`, `companyName`, `tradeMark`, `nafdacNo`, `productState`, `drugImprint`, `productionDate`, `expirationDate`) VALUES
(5, 'Cool bear success', 'NNPC', '20210', '5050', 'Kaduna', '2018', '2019-04-10', '2019-04-10'),
(6, 'Cool bear success', '24233', 'nasco', '5050', 'Katsina', '222', '2019-04-17', '2019-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`) VALUES
(1, 'John Dimas', 'john', '111'),
(2, 'Geezy francis', 'geez', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registercompany`
--
ALTER TABLE `registercompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerdrug`
--
ALTER TABLE `registerdrug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registercompany`
--
ALTER TABLE `registercompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `registerdrug`
--
ALTER TABLE `registerdrug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `pending`
--
CREATE DATABASE IF NOT EXISTS `pending` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pending`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `type` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `firstname`, `lastname`, `email`, `type`, `password`) VALUES
(1, 'joe', 'labajo', 'joe@joe.com', 'admin', 'joe'),
(4, 'Jeremy', 'Ruta', 'jeremyruta@isda.com', 'user', 'jeremy');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'staff_records', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(3, 'root', 'table', 'staff_record', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"tssmsdb","table":"users"},{"db":"tssmsdb","table":"bankdetails"},{"db":"tssmsdb","table":"notification"},{"db":"project_inv","table":"user"},{"db":"inv_project_db","table":"invoice"},{"db":"inv_project_db","table":"user"},{"db":"project_inv","table":"invoice"},{"db":"project_inv","table":"invoice_details"},{"db":"inv_project_db","table":"invoice_details"},{"db":"frscdb","table":"offenses"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'tssmsdb', 'application', '{"CREATE_TIME":"2019-08-14 11:16:27","col_visib":["1","1","1","1","1","1","1","1","1","1","1","1","1"]}', '2019-08-20 00:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-09-15 16:04:40', '{"Import\\/allow_interrupt":false,"Server\\/hide_db":"","Server\\/only_db":"","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `project_inv`
--
CREATE DATABASE IF NOT EXISTS `project_inv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project_inv`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'Samsung', '1'),
(13, 'HP', '1'),
(14, 'Huawei', '1'),
(15, 'Microsoft Corporation', '1'),
(16, 'Adobe', '1'),
(17, 'Apple', '1'),
(18, 'Avira', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, 0, 'Electronics', '1'),
(2, 0, 'Software', '1'),
(5, 1, 'Mobiles', '1'),
(7, 1, 'Laptop', '1'),
(9, 2, 'Antivirus', '1'),
(10, 0, 'Gadgets', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `customer_name`, `order_date`, `sub_total`, `gst`, `discount`, `net_total`, `paid`, `due`, `payment_type`) VALUES
(24, 'Rizwan', '0000-00-00', 445000, 80100, 1000, 524100, 445000, 79100, 'Cash'),
(25, 'MMM', '0000-00-00', 60000, 10800, 500, 70300, 70300, 0, 'Cash'),
(26, 'ggg', '0000-00-00', 300000, 54000, 2500, 351500, 351500, 0, 'Cash'),
(27, 'Rdfgacs ', '0000-00-00', 300000, 54000, 54000, 300000, 300000, 0, 'Cash'),
(28, '', '0000-00-00', 300000, 54000, 54000, 300000, 300000, 0, 'Cash'),
(29, 'Rizwan', '2018-11-02', 60000, 10800, 12, 70788, 70788, 0, 'Cash'),
(30, 'I am Cus', '2018-11-02', 65000, 11700, 500, 76200, 76200, 0, 'Cash'),
(31, '', '2018-01-03', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(32, 'Arjun', '2018-01-03', 29000, 5220, 55, 34165, 34165, 0, 'Cash'),
(33, '', '2018-01-03', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(34, 'Rizwan', '2018-01-03', 94500, 17010, 1500, 110010, 110010, 0, 'Cash'),
(35, 'Rizwan', '2018-01-03', 154000, 27720, 550, 181170, 181170, 0, 'Cash'),
(36, 'Rizwan', '2018-01-03', 154500, 27810, 2500, 179810, 179810, 0, 'Cash'),
(37, 'Tyson', '2018-01-03', 90000, 16200, 25.5, 106174.5, 106174.5, 0, 'Cash'),
(38, 'Rajdhani', '2018-01-03', 89500, 16110, 750.5, 104859.5, 104859.5, 0, 'Cash'),
(39, 'Kapoor & Son', '2018-01-03', 89500, 16110, 25, 105585, 105585, 0, 'Cash'),
(40, 'Ajay', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(41, 'Jayanta', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(42, 'Ajay Kant', '2018-01-03', 65500, 11790, 0, 77290, 77290, 0, 'Cash'),
(43, 'Egjdks', '2018-01-03', 125500, 22590, 5000, 143090, 143090, 0, 'Cash'),
(44, 'Tyson', '2018-01-03', 275000, 49500, 4950, 319550, 319550, 0, 'Cash'),
(45, 'Hndksks', '2018-01-03', 59000, 10620, 0, 69620, 69620, 0, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_no`, `product_name`, `price`, `qty`) VALUES
(1, 25, 'Samsung Galaxy S8', 60000, 1),
(2, 28, 'Samsung Galaxy S8', 60000, 5),
(3, 29, 'Samsung Galaxy S8', 60000, 1),
(4, 30, 'Iphone 8', 65000, 1),
(5, 31, 'Samsung Galaxy S8', 60000, 1),
(6, 32, 'Honor 9i', 29000, 1),
(7, 33, 'Samsung Galaxy S8', 60000, 1),
(8, 34, 'Avira Antivirus', 500, 1),
(9, 34, 'Iphone 8', 65000, 1),
(10, 34, 'Honor 9i', 29000, 1),
(11, 35, 'Samsung Galaxy S8', 60000, 1),
(12, 35, 'Honor 9i', 29000, 1),
(13, 35, 'Iphone 8', 65000, 1),
(14, 36, 'Samsung Galaxy S8', 60000, 1),
(15, 36, 'Honor 9i', 29000, 1),
(16, 36, 'Iphone 8', 65000, 1),
(17, 36, 'Avira Antivirus', 500, 1),
(18, 37, 'Samsung Galaxy S8', 60000, 1),
(19, 37, 'Honor 9i', 29000, 1),
(20, 37, 'Avira Antivirus', 500, 2),
(21, 38, 'Samsung Galaxy S8', 60000, 1),
(22, 38, 'Honor 9i', 29000, 1),
(23, 38, 'Avira Antivirus', 500, 1),
(24, 39, 'Samsung Galaxy S8', 60000, 1),
(25, 39, 'Honor 9i', 29000, 1),
(26, 39, 'Avira Antivirus', 500, 1),
(27, 40, 'Samsung Galaxy S8', 60000, 1),
(28, 40, 'Honor 9i', 29000, 1),
(29, 41, 'Samsung Galaxy S8', 60000, 1),
(30, 41, 'Honor 9i', 29000, 1),
(31, 42, 'Iphone 8', 65000, 1),
(32, 42, 'Avira Antivirus', 500, 1),
(33, 43, 'Samsung Galaxy S8', 60000, 1),
(34, 43, 'Avira Antivirus', 500, 1),
(35, 43, 'Iphone 8', 65000, 1),
(36, 44, 'Honor 9i', 29000, 5),
(37, 44, 'Iphone 8', 65000, 2),
(38, 45, 'Honor 9i', 29000, 2),
(39, 45, 'Avira Antivirus', 500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(15, 5, 1, 'Samsung Galaxy S8', 60000, 984, '2018-01-31', '1'),
(16, 5, 14, 'Honor 9i', 29000, 4984, '2018-01-31', '1'),
(17, 5, 17, 'Iphone 8', 65000, 1192, '2018-01-31', '1'),
(18, 9, 18, 'Avira Antivirus', 500, 2990, '2018-01-31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(1, 'Rizwan', 'rizwan@gmail.com', '$2y$08$s11k9wKZWc4v6apSODUdveJufFxbE2Be7rP./uS49et7NrlhteFgK', 'Admin', '2017-12-23', '2018-03-01 04:03:17', ''),
(2, 'Test', 'rizwan1@gmail.com', '$2y$08$8j4aTDZiPZBb3rif4RV/teRFYx2Xv0p9F8CTW3blSafkEhXkMfaV6', 'Admin', '2017-12-23', '2017-12-24 11:12:57', ''),
(3, 'Rizwan', 'rizwankhan.august16@gmail.com', '$2y$08$NmqD7p7Qn7QkEG0/6Sa8v.YhNGo.J2zqfRRGrGRzg1EUlV.9O.M42', 'Admin', '2017-12-24', '2017-12-26 05:12:07', ''),
(4, 'Rizwan', 'rizwankhan@gmail.com', '$2y$08$FsjstZZh5dBNUf.5cZta3e.jZAyfK8pCFaO9AR0jIpQCswNR1bJve', 'Admin', '2017-12-24', '2017-12-25 06:12:18', ''),
(5, 'Imran Khan', 'imran@gmail.com', '$2y$08$KCqI3w9Q1kXFX0W.HDnIYODpMceE6AAbJgygBSQ3au8yZotMyXnCC', 'Admin', '2017-12-25', '2017-12-25 00:00:00', ''),
(6, 'Khan', 'khan@gmail.com', '$2y$08$/4PDGZrGbDPGPEYisj3HBOcaMxRRIBQ1UzHjHKdbzpVMDJJRLry6m', 'Admin', '2017-12-26', '2018-01-15 08:01:14', ''),
(7, 'John Smith', 'john.smith@gmail.com', '$2y$08$cTcxbttxHGTzy0FD3AVjr.m.aNL7p735YRplRiyKZB0kHAOpB9WI2', 'Admin', '2018-02-16', '2018-02-16 05:02:41', ''),
(8, 'Scott', 'scott123@gmail.com', '1234567890', 'Admin', '2019-09-10', '2019-09-23 03:18:37', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);
--
-- Database: `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_category` varchar(50) NOT NULL,
  `fee_collected` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_category`, `fee_collected`) VALUES
('staff', 50),
('student', 50),
('total', 100);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_no` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_no`, `name`, `phone_no`, `location`, `position`, `address`) VALUES
('A32150', 'Rafidah Hani Binti Hassan Basri', '0165437760', 'Language And Islamic Studies Center', 'Lecturer', 'LADANG JENTAYU, BT 8, JLN JENIANG, 08300 GURUN KEDAH'),
('A32456', 'Nur Rasyidah Binti Mohd Ghalil', '054012225', 'FKM', 'Lecturer', 'No 10, Lorong Bendahara 20, Taman Sentosa Utama, 41000 Klang, Selangor'),
('A44123', 'Muhd Jasri Bin Abdul Rais', '0178120191', 'Language And Islamic Studies Center', 'Lecturer', '73A, Jalan BBP1, Taman Batu Berendam Putera, 75350 Bukit Beruang, Melaka'),
('C01213', 'Mohd Razali Bin Rashdi', '0125078910', 'FTMK', 'Driver', '370 Jalan Melaka Raya 4, Taman Melaka Raya, 75000 Melaka'),
('D01122', 'Azizan Awang Bin Kamaruddin', '0124456078', 'Language And Islamic Studies Center', 'Driver', 'NO.77, JALAN MERANTI 6C/3 FASA 3, BANDAR UTAMA BATANG KALI, SELANGOR'),
('D01291', 'Noor Jamilah Binti Hassan', '0186675020', 'FKE', 'Lab Assistant', 'No 33, PRI 7, Taman Paya Rumput Indah 76450 Melaka'),
('D10291', 'Azizah Bin Rahman', '0132234050', 'FTMK', 'Lab Assistant', 'RM 345, Taman Bukit Rumbia, 78000 Alor Gajah, Melaka Tel: 06 4'),
('D11101', 'Nur Azimah Binti Mohd Khairul', '0142235670', 'FTMK', 'Lab Assistant', '541A, Jalan Merdeka, Taman Melaka Raya 75000 Melaka'),
('D12435', 'Azman Hasni Bin Rahman', '0142122010', 'FKE', 'Driver', 'JB 760, Jalan balkis 2, Taman Balkis, Jalan Bukit Tembakau Umbai, 77300 Merlimau, Melaka'),
('D12810', 'Muhd Azma Azmin Binti Khusairi', '0198721062', 'FTMK', 'Driver', '104-1, Jalan Mutiara 1, Taman Mutiara Melaka, 75350 Batu Berendam, Melaka'),
('D20191', 'Syuib Adnan Bin Suhaimi', '0126651029', 'FKE', 'Driver', '27 PERSIARAN BLM3 , BNDR LAGUNA, 08000 KEDAH'),
('D45312', 'Mohd Fazmi Bin Hadi', '052015662', 'FKE', 'Driver', 'NO 7 PERSIARAN PERPADUAN 7, TAMAN PERPADUAN, 31150 ULU KINTA, PERAK'),
('dsf', 'test', 'dfsas', 'Chancellery', 'Lab Assistant', 'fasdf'),
('F09678', 'Mohd Izhar Tajuddin Bin Kamal', '0165541029', 'Sport Center', 'Driver', '20 JLN 3/16A, BANDAR BARU SELAYANG, 68100 BT CAVE, SELANGOR'),
('F10112', 'Muhd Razali Bin Hamdan', '0192018871', 'Sport Center', 'Driver', 'LADANG JENTAYU, BT 8, JLN JENIANG, 08300 GURUN KEDAH'),
('F105431', 'Abdul  Jalil Bin Mohd Julali', '0141125069', 'Sport Center', 'Driver', '175 JLN TUJU/3A SEK 7, 43650 BANDAR BARU BANGI, SELANGOR.'),
('F76890', 'Jamaludin Hamdan Bin Khalid', '0143356078', 'Sport Center', 'Driver', 'JB 853, Jalan Tbu 12, Taman Bemban Utama, 77200 Jasin, Melaka'),
('F98123', 'Akmal Baharudin Bin Azizul Rahman', '0196674321', 'Sport Center', 'Driver', 'RM 345, Taman Bukit Rumbia, 78000 Alor Gajah, Melaka'),
('GM/18C/1978', 'Ezra David', '0706549940', 'Postgraduate Center', 'Lecturer', 'GRA');

-- --------------------------------------------------------

--
-- Table structure for table `staff_license`
--

CREATE TABLE `staff_license` (
  `staff_no` varchar(30) NOT NULL,
  `license_no` varchar(30) NOT NULL,
  `license_valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_license`
--

INSERT INTO `staff_license` (`staff_no`, `license_no`, `license_valid`) VALUES
('A10229', '00192812', '0000-00-00'),
('A12556', '00212456', '2018-07-12'),
('A32145', '22131445', '0000-00-00'),
('A32150', '00321039', '0000-00-00'),
('A32456', '09102969', '2017-02-08'),
('A33152', '001211301', '2016-12-23'),
('A44123', '00124598', '2017-01-25'),
('C01213', '00192867', '0000-00-00'),
('D01122', '00124120', '0000-00-00'),
('D01291', '02112050', '0000-00-00'),
('D10291', '00978659', '0000-00-00'),
('D11101', '01221807', '0000-00-00'),
('D12435', '01110210', '0000-00-00'),
('D12810', '00192867', '0000-00-00'),
('D20191', '10112406', '0000-00-00'),
('D45312', '012210102', '0000-00-00'),
('dsf', 'fsadf', '2016-12-13'),
('F09678', '07403392', '0000-00-00'),
('F10112', '00876959', '0000-00-00'),
('F105431', '00454567', '0000-00-00'),
('F76890', '00665678', '0000-00-00'),
('F98123', '01221019', '0000-00-00'),
('GM/18C/1978', 'TR/1234', '2019-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `staff_registration`
--

CREATE TABLE `staff_registration` (
  `staff_no` varchar(50) NOT NULL,
  `vehicle_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_registration`
--

INSERT INTO `staff_registration` (`staff_no`, `vehicle_no`) VALUES
('A10229', 'MDF 1000'),
('A12556', 'PDX 6005'),
('A32145', 'WTP 1233'),
('A32150', 'MDM 5006'),
('A32456', 'BHG 1022'),
('A33152', 'WTX 5862'),
('A44123', 'MBA 8990'),
('C01213', 'MDA 2212'),
('D01122', 'MCN 785'),
('D01291', 'JDA 3012'),
('D10291', 'MCA 1991'),
('D11101', 'AFA 5605'),
('D12435', 'MCS 7877'),
('D12810', 'MDM 1121'),
('D20191', 'MAD 6766'),
('D45312', 'MDM 9011'),
('dsf', 'fsdaf'),
('F09678', 'MAC 2678'),
('F10112', 'MBC 5421'),
('F105431', 'MAF 3567'),
('F76890', 'MDE 8778'),
('F98123', 'MCS 9978'),
('GM/18C/1978', 'GM-435-ADC');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `matric_no` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `applicant` varchar(50) NOT NULL,
  `resident` varchar(50) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `matric_no`, `faculty`, `address`, `phone_number`, `applicant`, `resident`, `Time`) VALUES
('Mohd Jamal Azri Bin Razman', 'B031410004', 'FKP', '69 JLN CECAWI 6/27, KOTA DAMANSARA, 47810 P JAYA, SELANGOR', '0125089910', 'College Student Residence', 'Kenanga', '2016-11-22 13:24:31'),
('Nur Fatihah Binti Mohd Syukor', 'B031410222', 'FKP', 'NO.15, JLN. 3/4, TMN. SRI INDAH, 43200, BALAKONG,SELANGOR.', '0135456010', 'College Student Residence', 'Kemboja', '2016-11-22 13:17:45'),
('Nur Zahidah Bin Ramlan', 'B031410561', 'FKM', '15 LORONG 2, TAMAN BKT MAS, 34000 TAIPING', '0123449810', 'College Student Residence', 'Kemboja', '2016-11-22 13:14:58'),
('Muhd Zaidi Bin Kamsar', 'B031501118', 'FKE', '1112 LRG SERAI SETIA 2/5, TMN SERAI SETIA, 09400 PDG SERAI, KEDAH', '0147780192', 'College Student Residence', 'Kenanga', '2016-11-22 13:19:56'),
('Mohd Fazlie Bin Yahya', 'B031510001', 'FTMK', '27 PERSIARAN BLM3 , BNDR LAGUNA, 08000 KEDAH', '0167728890', 'College Student Residence', 'Kemboja', '2016-11-22 12:44:37'),
('Muhammad Izzat Syakir Bin Suhaimi', 'B031510003', 'FKM', 'NO 19, TAMAN SERI TENGGARA, 34200 PARIT BUNTAR', '0125009074', 'College Student Residence', 'Melati', '2016-11-22 13:05:12'),
('Nur Aqilah Binti Musa', 'B031510005', 'FKE', '27 LALUAN TASIK TIMUR, 16A GERBANG BERCHAM SELAMAT, 31400 IPOH, PERAK', '0196765510', 'College Student Residence', 'Melati', '2016-11-22 13:13:17'),
('Nadiatul Akmar Binti Azman', 'B031510016', 'FKP', 'NO 7 PERSIARAN PERPADUAN 7, TAMAN PERPADUAN, 31150 ULU KINTA, PERAK', '0132445678', 'College Student Residence', 'Melati', '2016-11-22 13:10:48'),
('Nur Safirah Binti Suhaimi', 'B031510101', 'FPTT', 'NO 131072, JALAN SRI DESA 11, TANAH HITAM ,31200 CHEMOR, PERAK', '0125850268', 'College Student Residence', 'Kemboja', '2016-11-22 13:03:17'),
('Fakhri Muizzudin Bin Rasdi', 'B031510111', 'FTMK', 'NO 4, 7/5 JALAN KESUMA, FASA 3A, BANDAR TASIK KESUMA, 43700 BERANANG, SELANGOR', '0128888100', 'College Student Residence', 'Kemboja', '2016-11-22 12:39:37'),
('Abdul Halim Bin Kassim', 'B031510211', 'FTMK', 'PT 2627, KAMPUNG TERSUSUN, KELEDANG UTAMA FASA 1,31100 SG. SIPUT(U), PERAK', '0135467708', 'College Student Residence', 'Kenanga', '2016-11-22 12:35:15'),
('Nor Ain Athirah Binti Zulkifli', 'B031510232', 'FKM', 'PLOT 110, KG TERSUSUN SG ARA, 11900 P PINANG', '0187601232', 'College Student Residence', 'Kenanga', '2016-11-22 13:22:06'),
('Zulhilmi Zaim Bin Mohd Razali', 'B031510240', 'FTMK', 'BATU 18 3/4 LORONG HAJAH TIAH MANAN, KAMPUNG LEKOK, 78300 MASJID TANAH, MELAKA', '0123310012', 'College Student Residence', 'Melati', '2016-11-22 12:37:12'),
('Muhammad Haziq Bin Muhd Zulkifli', 'B031510272', 'FTMK', '79 LG 29, TAMAN PATANI JAYA, 08000 SG PETANI, KEDAH', '0167782110', 'College Student Residence', 'Kemboja', '2016-11-22 12:42:51'),
('Muhamad Asyraf Bin Suhaimi', 'B031510274', 'FTMK', 'No 131072, Jalan Sri Desa 11, Tanah Hitam ,31200 Chemor , Perak', '0134265214', 'College Student Residence', 'Kenanga', '2016-11-22 12:31:03'),
('Khairunnisa Nasirah Binti Nasir', 'B031510282', 'FKP', 'NO 2, LRG MACHANG BUBUK 4,TAMAN MACHANG BUBUK,14020 BUKIT MERTAJAM, SEBERANG PERAI', '0186795050', 'College Student Residence', 'Sri Emas', '2016-11-22 13:01:30'),
('Nur Haliza Binti Kamaruddin', 'B031510400', 'FKP', '105, JLN LEGENDA 14,LAGENDA HEIGHTS, S.PETANI', '0176650912', 'College Student Residence', 'Melati', '2016-11-22 12:48:44'),
('Nur Syarifah Suhaila Binti Idrus', 'B031620109', 'FPTT', '6, JALAN MADRASAH, RAPAT SETIA, 31350 IPOH, PERAK', '014225067', 'College Student Residence', 'Kemboja', '2016-11-22 13:08:42'),
('Muhd Syafiq Bin Mohd Bani', 'B031710800', 'FTK', 'C-6 FASA 1D1,  32040 SERI MANJONG,  PERAK', '0125541029', 'College Student Residence', 'Kenanga', '2016-11-22 13:06:52'),
('Muhd Khairi Bin Junaidi', 'B041210100', 'FKE', '17 JLN CERDIK 5, TAMAN UNIVERSITI, 43000 BANGI, SELANGOR', '0176540019', 'College Student Residence', 'Sri Emas', '2016-11-22 13:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_license`
--

CREATE TABLE `student_license` (
  `matric_no` varchar(50) NOT NULL,
  `license_no` varchar(50) NOT NULL,
  `license_valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_license`
--

INSERT INTO `student_license` (`matric_no`, `license_no`, `license_valid`) VALUES
('B031410004', '00125645', '2016-12-23'),
('B031410222', '00323675', '0000-00-00'),
('B031410561', '00345121', '0000-00-00'),
('B031501118', '00197867', '0000-00-00'),
('B031510001', '23432134', '0000-00-00'),
('B031510003', '00897657', '0000-00-00'),
('B031510005', '00675345', '0000-00-00'),
('B031510016', '02976682', '0000-00-00'),
('B031510101', '67546578', '0000-00-00'),
('B031510111', '22134256', '0000-00-00'),
('B031510211', '34325654', '0000-00-00'),
('B031510232', '00765487', '0000-00-00'),
('B031510240', '54367654', '0000-00-00'),
('B031510272', '65786540', '0000-00-00'),
('B031510274', '99765467', '0000-00-00'),
('B031510282', '13432156', '0000-00-00'),
('B031510400', '32445675', '2018-12-04'),
('B031620109', '00897221', '0000-00-00'),
('B031710800', '33245437', '0000-00-00'),
('B041210100', '02112176', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `matric_no` varchar(50) NOT NULL,
  `vehicle_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`matric_no`, `vehicle_number`) VALUES
('B031410004', 'BJK 1211'),
('B031410222', 'BHJ 6540'),
('B031410561', 'AGH 1111'),
('B031501118', 'KED 6767'),
('B031510001', 'JLJ 6708'),
('B031510003', 'AKM 9595'),
('B031510005', 'AJE 7610'),
('B031510016', 'AKN 6709'),
('B031510101', 'AJM 4520'),
('B031510111', 'WQQ 9286'),
('B031510211', 'AFK 1201'),
('B031510232', 'PFK 1012'),
('B031510240', 'MBS 4220'),
('B031510272', 'MCM 7860'),
('B031510274', 'WTX 5862'),
('B031510282', 'PFL 3211'),
('B031510400', 'KFJ 3211'),
('B031620109', 'AEF 3443'),
('B031710800', 'AJK 2210'),
('B041210100', 'BGH 1091');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user`, `password`) VALUES
('asyraf', '12345'),
('user', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id_no` varchar(30) NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `road_tax` varchar(50) NOT NULL,
  `vehicle_ownership` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_staff`
--

CREATE TABLE `vehicle_staff` (
  `staff_no` varchar(30) NOT NULL,
  `vehicle_no` varchar(30) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `vehicle_ownership` varchar(30) NOT NULL,
  `road_tax` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_staff`
--

INSERT INTO `vehicle_staff` (`staff_no`, `vehicle_no`, `vehicle_type`, `vehicle_ownership`, `road_tax`) VALUES
('A32150', 'MDM 5006', 'Car', 'University Vehicle Officer', '0000-00-00'),
('A32456', 'BHG 1022', 'Car', 'Private', '2017-01-19'),
('A44123', 'MBA 8990', 'Motorcycle', 'Private', '2017-12-13'),
('asdfaadf', 'fasdasdf', 'Car', 'University Vehicle', '2016-12-14'),
('C01213', 'MDA 2212', 'Van', 'University Vehicle', '0000-00-00'),
('D01122', 'MCN 785', 'Car', 'University Vehicle', '0000-00-00'),
('D01291', 'JDA 3012', 'Motorcycle', 'Private', '0000-00-00'),
('D10291', 'MCA 1991', 'Car', 'Private', '0000-00-00'),
('D11101', 'AFA 5605', 'Motorcycle', 'Private', '0000-00-00'),
('D12435', 'MCS 7877', 'Van', 'University Vehicle', '0000-00-00'),
('D12810', 'MDM 1121', 'Van', 'University Vehicle', '0000-00-00'),
('D20191', 'MAD 6766', 'Van', 'University Vehicle', '0000-00-00'),
('D45312', 'MDM 9011', 'Van', 'University Vehicle', '0000-00-00'),
('dsf', 'fsdaf', 'Van', 'University Vehicle Officer', '2016-11-30'),
('F09678', 'MAC 2678', 'Bus', 'University Vehicle', '0000-00-00'),
('F10112', 'MBC 5421', 'Bus', 'University Vehicle', '0000-00-00'),
('F105431', 'MAF 3567', 'Bus', 'University Vehicle', '0000-00-00'),
('F76890', 'MDE 8778', 'Bus', 'University Vehicle', '0000-00-00'),
('F98123', 'MCS 9978', 'Bus', 'University Vehicle', '0000-00-00'),
('GM/18C/1978', 'GM-435-ADC', 'Car', 'Private', '2019-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_student`
--

CREATE TABLE `vehicle_student` (
  `matric_no` varchar(30) NOT NULL,
  `vehicle_no` varchar(30) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `vehicle_ownership` varchar(30) NOT NULL,
  `road_tax` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_student`
--

INSERT INTO `vehicle_student` (`matric_no`, `vehicle_no`, `vehicle_type`, `vehicle_ownership`, `road_tax`) VALUES
('B031410004', 'BJK 1211', 'Car', 'Private', '2017-01-19'),
('B031410222', 'BHJ 6540', 'Car', 'Private', '0000-00-00'),
('B031410561', 'AGH 1111', 'Motorcycle', 'Private', '0000-00-00'),
('B031501118', 'KED 6767', 'Motorcycle', 'Private', '0000-00-00'),
('B031510001', 'JLJ 6708', 'Motorcycle', 'Private', '0000-00-00'),
('B031510003', 'AKM 9595', 'Car', 'Private', '0000-00-00'),
('B031510005', 'AJE 7610', 'Motorcycle', 'Private', '0000-00-00'),
('B031510016', 'AKN 6709', 'Motorcycle', 'Private', '0000-00-00'),
('B031510101', 'AJM 4520', 'Car', 'Private', '0000-00-00'),
('B031510111', 'WQQ 9286', 'Car', 'Private', '0000-00-00'),
('B031510211', 'AFK 1201', 'Motorcycle', 'Private', '0000-00-00'),
('B031510232', 'PFK 1012', 'Motorcycle', 'Private', '0000-00-00'),
('B031510240', 'MBS 4220', 'Motorcycle', 'Private', '0000-00-00'),
('B031510272', 'MCM 7860', 'Motorcycle', 'Private', '0000-00-00'),
('B031510274', 'WTX 5862', 'Car', 'Private', '0000-00-00'),
('B031510282', 'PFL 3211', 'Motorcycle', 'Private', '0000-00-00'),
('B031510400', 'KFJ 3211', 'Car', 'Private', '2017-08-08'),
('B031620109', 'AEF 3443', 'Motorcycle', 'Private', '0000-00-00'),
('B031710800', 'AJK 2210', 'Motorcycle', 'Private', '0000-00-00'),
('B041210100', 'BGH 1091', 'Motorcycle', 'Private', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_category`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_no`);

--
-- Indexes for table `staff_license`
--
ALTER TABLE `staff_license`
  ADD PRIMARY KEY (`staff_no`);

--
-- Indexes for table `staff_registration`
--
ALTER TABLE `staff_registration`
  ADD PRIMARY KEY (`staff_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`matric_no`);

--
-- Indexes for table `student_license`
--
ALTER TABLE `student_license`
  ADD PRIMARY KEY (`matric_no`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`matric_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `vehicle_staff`
--
ALTER TABLE `vehicle_staff`
  ADD PRIMARY KEY (`staff_no`);

--
-- Indexes for table `vehicle_student`
--
ALTER TABLE `vehicle_student`
  ADD PRIMARY KEY (`matric_no`);
--
-- Database: `scheduling`
--
CREATE DATABASE IF NOT EXISTS `scheduling` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scheduling`;

-- --------------------------------------------------------

--
-- Table structure for table `cys`
--

CREATE TABLE `cys` (
  `cys_id` int(11) NOT NULL,
  `cys` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`) VALUES
(1, 'BSED 1A'),
(2, 'BEED 1A'),
(3, 'BEED 1B');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_name`) VALUES
(8, 'CAS', 'School of Arts and Sciences'),
(7, 'COED ', 'College of Education');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(67, 'Faculty'),
(66, 'Dean');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sched`
--

CREATE TABLE `exam_sched` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `cys1` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `encoded_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_sched`
--

INSERT INTO `exam_sched` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `cys1`, `term`, `encoded_by`) VALUES
(1, 41, 'first', 27, 'ENG1', 'BEED 1B', '103', '(Hello exams start now)', 12, '', 'Midterm', 27),
(2, 41, 'first', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(3, 54, 'first', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(4, 56, 'first', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(5, 51, 'second', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(6, 53, 'second', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(7, 55, 'second', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(8, 52, 'third', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(9, 54, 'third', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27),
(10, 58, 'third', 27, 'ENG1', 'BEED 1B', '102', '(Booked)', 13, '', 'Midterm', 27);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(30) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_rank` varchar(50) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_rank`, `member_salut`, `dept_code`, `designation_id`, `program_code`, `username`, `password`, `status`) VALUES
(27, 'Admin', 'Admin', 'Assistant Professor I', 'Mrs', 'CIT', 5, '', 'admin', 'admin', 'admin'),
(177, 'Rizal', 'Jose', 'Assistant Professor I', 'Dr', 'CAS', 66, '', 'josecas', 'rizal', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(6, 'BSPsych ', 'Bachelor of Science in Psychology'),
(13, 'BSED', 'Bachelor of Science in Secondary Education'),
(14, 'BEED', 'Bachelor of Science in Elementary Education');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`) VALUES
(1, 'Instructor I'),
(4, 'Instructor II'),
(6, 'Assistant Professor I'),
(5, 'Instructor III'),
(7, 'Assistant Professor II'),
(8, 'Assistant Professor III'),
(9, 'Assistant Professor IV'),
(10, 'Associate Professor I'),
(11, 'Associate Professor II'),
(12, 'Associate Professor III'),
(13, 'Associate Professor IV'),
(14, 'Professor I'),
(15, 'Professor II'),
(16, 'Professor III'),
(17, 'Professor IV'),
(18, 'College Professor '),
(19, 'University Professor ');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room`) VALUES
(1, '101'),
(2, '102'),
(3, '103');

-- --------------------------------------------------------

--
-- Table structure for table `salut`
--

CREATE TABLE `salut` (
  `salut_id` int(11) NOT NULL,
  `salut` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salut`
--

INSERT INTO `salut` (`salut_id`, `salut`) VALUES
(1, 'Ms'),
(2, 'Mrs'),
(3, 'Mr'),
(5, 'Dr'),
(6, 'Prof'),
(7, 'Engr');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `encoded_by` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`) VALUES
(1, 4, 'm', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(2, 4, 'w', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(3, 4, 'f', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(4, 7, 'm', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(5, 7, 'w', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(6, 7, 'f', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(7, 19, 't', 177, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(8, 19, 'th', 177, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(9, 5, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(10, 6, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(11, 8, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(12, 9, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(13, 10, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(14, 11, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(15, 12, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(16, 13, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(17, 14, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(18, 15, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(19, 37, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(15, '', '1st', '2017-2018', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `sign_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `seq` int(2) NOT NULL,
  `set_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `member_id`) VALUES
(1, 'ENG1', 'English 1', 27),
(2, 'ALG', 'Algebra', 27),
(3, 'COMPLIT', 'Computer Literacy', 27),
(4, 'SOCSCI', 'Social Science', 27);

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(1, '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(4, '07:30:00', '08:30:00', 'mwf'),
(5, '08:30:00', '09:30:00', 'mwf'),
(6, '09:30:00', '10:30:00', 'mwf'),
(7, '10:30:00', '11:30:00', 'mwf'),
(8, '11:30:00', '12:30:00', 'mwf'),
(9, '12:30:00', '13:30:00', 'mwf'),
(10, '13:30:00', '14:30:00', 'mwf'),
(11, '14:30:00', '15:30:00', 'mwf'),
(12, '15:30:00', '16:30:00', 'mwf'),
(13, '16:30:00', '17:30:00', 'mwf'),
(14, '17:30:00', '18:30:00', 'mwf'),
(15, '18:30:00', '19:30:00', 'mwf'),
(18, '07:30:00', '09:00:00', 'tth'),
(19, '09:00:00', '10:30:00', 'tth'),
(20, '10:30:00', '12:00:00', 'tth'),
(21, '12:00:00', '13:30:00', 'tth'),
(22, '13:30:00', '15:00:00', 'tth'),
(23, '15:00:00', '16:30:00', 'tth'),
(24, '16:30:00', '18:00:00', 'tth'),
(25, '18:00:00', '19:30:00', 'tth'),
(37, '19:30:00', '20:30:00', 'mwf'),
(56, '15:00:00', '16:00:00', 'fst'),
(52, '10:00:00', '11:00:00', 'fst'),
(51, '09:00:00', '10:00:00', 'fst'),
(41, '08:00:00', '09:00:00', 'fst'),
(55, '14:00:00', '15:00:00', 'fst'),
(54, '13:00:00', '14:00:00', 'fst'),
(53, '11:00:00', '12:00:00', 'fst'),
(57, '16:00:00', '17:00:00', 'fst'),
(58, '17:00:00', '18:00:00', 'fst');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `program`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql3fefa44509901fc42790757c7a77d3c9', 'Admin', 'active', 'all');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cys`
--
ALTER TABLE `cys`
  ADD PRIMARY KEY (`cys_id`),
  ADD UNIQUE KEY `cys` (`cys`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `exam_sched`
--
ALTER TABLE `exam_sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `salut`
--
ALTER TABLE `salut`
  ADD PRIMARY KEY (`salut_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`sign_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cys`
--
ALTER TABLE `cys`
  MODIFY `cys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `exam_sched`
--
ALTER TABLE `exam_sched`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salut`
--
ALTER TABLE `salut`
  MODIFY `salut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `scholardb`
--
CREATE DATABASE IF NOT EXISTS `scholardb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scholardb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `mail` text NOT NULL,
  `password` text NOT NULL,
  `dob` text NOT NULL,
  `img` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `scholarship`
--
CREATE DATABASE IF NOT EXISTS `scholarship` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scholarship`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_name` varchar(25) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
('1cr15cs047', 'Tarun Daga', 'data15cs@cmrit.ac.in', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `user_id` varchar(10) NOT NULL,
  `scholarship_id` int(11) NOT NULL,
  `current_cgpa` float DEFAULT NULL,
  `app_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`user_id`, `scholarship_id`, `current_cgpa`, `app_date`) VALUES
('1cr15cs001', 123, 7.52, '2018-11-26 16:52:03'),
('1cr15cs047', 1, 8.25, '2018-12-01 15:52:52'),
('1cr15cs047', 2, 8.25, '2018-12-01 15:51:06'),
('1cr15cs047', 3, 8.25, '2018-12-01 16:07:46'),
('1cr15cs047', 123, 8.25, '2018-11-26 16:52:03'),
('UR20150006', 1, NULL, '2019-07-22 05:22:44'),
('UR20150006', 2, NULL, '2019-07-24 12:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `applicationID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lga` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `matricNo` varchar(50) NOT NULL,
  `year` varchar(25) NOT NULL,
  `cgpa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `Sch_id` int(11) NOT NULL,
  `Sch_name` varchar(25) DEFAULT NULL,
  `Sch_year_eligibility` int(11) DEFAULT NULL,
  `Sch_AdminUnit` varchar(10) DEFAULT NULL,
  `Sch_Donor` varchar(20) DEFAULT NULL,
  `Sch_DonorEmail` varchar(50) DEFAULT NULL,
  `Sch_Amount` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `sch_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`Sch_id`, `Sch_name`, `Sch_year_eligibility`, `Sch_AdminUnit`, `Sch_Donor`, `Sch_DonorEmail`, `Sch_Amount`, `active`, `sch_time`) VALUES
(1, 'Leadership Award', 4, '1cr15cs047', 'CMRU', 'cmru@gmail.com', 10000, 1, '2018-12-01 13:14:16'),
(2, 'Genius', 2, '1cr15cs047', 'CMRIT', 'cmru@gmail.com', 5000, 1, '2018-12-01 15:30:54'),
(3, 'ABC', 3, '1cr15cs047', 'CMRIT', 'cmru@gmail.com', 6000, 1, '2018-12-01 16:07:38'),
(123, 'Huawei', 4, '1cr15cs047', 'Huawei', 'abc@gmail.com', 50000, 0, '2018-11-25 19:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Curr_Year` int(11) DEFAULT NULL,
  `First_Name` varchar(15) DEFAULT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  `App_Gender` char(1) DEFAULT NULL,
  `App_Email` varchar(30) DEFAULT NULL,
  `App_Address` varchar(50) DEFAULT NULL,
  `App_City` varchar(10) DEFAULT NULL,
  `App_State` varchar(10) DEFAULT NULL,
  `App_zipcode` varchar(6) DEFAULT NULL,
  `Curr_cgpa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `password`, `Curr_Year`, `First_Name`, `Last_Name`, `App_Gender`, `App_Email`, `App_Address`, `App_City`, `App_State`, `App_zipcode`, `Curr_cgpa`) VALUES
('1cr15cs001', 'abcd', 3, 'abc', 'ajsda', 'F', 'askdjadskasdk', 'ajsfasfajsfhalsfh', 'bangalore', 'karnataka', '560066', 7.25),
('1cr15cs047', 'tdrocks', 4, 'Tarun', 'Daga', 'M', 'tarundaga@ymail.com', 'AECS', 'Bangalore', 'Karnataka', '560066', 8.25),
('UR20150006', '12345', 3, 'David', 'Scott', 'M', 'scot@gmail.com', 'Behind Elim Top Suite, Abuja', 'Wukari', 'Taraba', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`user_id`,`scholarship_id`),
  ADD KEY `scholarship_id` (`scholarship_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`Sch_id`),
  ADD KEY `Sch_AdminUnit` (`Sch_AdminUnit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `applicant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicant_ibfk_2` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarship` (`Sch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`Sch_AdminUnit`) REFERENCES `admin` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `scholarshipdb`
--
CREATE DATABASE IF NOT EXISTS `scholarshipdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scholarshipdb`;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_profile`
--

CREATE TABLE `applicant_profile` (
  `id` int(25) NOT NULL,
  `applicant_ID` varchar(250) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pob` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `lga` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `school` varchar(200) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `facculty` varchar(200) NOT NULL,
  `matricNo` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `cgpa` varchar(100) NOT NULL,
  `scholarship` varchar(250) NOT NULL,
  `sch_status` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant_profile`
--

INSERT INTO `applicant_profile` (`id`, `applicant_ID`, `sname`, `fname`, `address`, `gender`, `telephone`, `email`, `pob`, `dob`, `lga`, `state`, `school`, `dept`, `facculty`, `matricNo`, `level`, `cgpa`, `scholarship`, `sch_status`, `created`) VALUES
(7, 'TSSB|001', 'Samuel', 'Faith', 'Behind Investment Quarters, Jalingo', 'Female', '081654994224', 'faith@gmail.com', 'Jalingo', '24-03-1999', 'Jalingo', 'Taraba', 'Taraba State University', 'Economics', 'Management and Social Science', 'TSU|ECO|2018', '300 level', '3.96', 'Fully Founded Genius Scholarship ', '', '2019-07-30 01:37:49'),
(8, 'TSSB|002', 'Scott', 'David', 'Behind Elim Top Suite, Wukari', 'Male', '09065499404', 'scott@gmail.com', 'Jalingo', '12-08-1990', 'Wuakri', 'Taraba', 'Kwararafa University Wukari', 'Computer Science', 'Pure and Applied Science', 'Kuw|CSC|2019', '200 Level', '3.50', 'Scholarship for Post-Graduate Study', '', '2019-07-30 01:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(50) NOT NULL,
  `sch_id` varchar(250) NOT NULL,
  `schName` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `schAmount` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `sch_id`, `schName`, `status`, `schAmount`, `created`) VALUES
(1, 'TSSB|1234', 'Fully Founded Genius Scholarship ', 'Ongoing', 'N100,000', '2019-07-29 06:57:18'),
(2, 'TSSB|001', 'Needy Based Scholarship', 'Ongoing', 'N200,000', '2019-07-29 07:02:45'),
(3, 'TSSB|002', 'Scholarship for Post-Graduate Study', 'Ongoing', 'N500,000', '2019-07-29 07:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`id`, `username`, `password`, `email`, `created`) VALUES
(2, 'admin', '1234', '', '2019-07-26 11:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `student_signup`
--

CREATE TABLE `student_signup` (
  `username` varchar(11) NOT NULL,
  `password` varchar(25) NOT NULL,
  `password2` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_signup`
--

INSERT INTO `student_signup` (`username`, `password`, `password2`, `email`, `created`) VALUES
('Scott', 'scot', 'scot', 'scot@gmail.com', '2019-07-26 11:21:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(10) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  `b_pdf` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`, `b_pdf`) VALUES
(1, 'A Dictionary of Architecture ', '1', 'Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume', 'THE BOOK SHOP', '2007', '89564636 ', 200, 500, 'upload_image/ARC9.jpg', 'upload_ebook/arc.txt'),
(2, 'Elephant Kingdom : Sculptures from Indian Architecture ', '1', 'Elephants occupy a special place in the life and art of India. Since ancient times, they have been treasured and pampered as the ultimate beasts of burden, venerated as the vehicles of gods and kings and even worshipped in their own right. Their legendary attributes of strength, intelligence, nobility and longevity are eulogized in myth, epic and popular literature. In the figural and decorative arts, elephants provide an enduring fascination. Elephant Kingdom traces the myriad stories and symbolisms behind India''s much-loved animal, through its depictions in architectural sculpture. At the heart of the study is a collection of over 60 colour photographs from a diversity of antique settings-many of them in remote parts of the subcontinent. At centuries-old temples, monasteries, forts and palaces, elephants flank ceremonial entrances, enrich columns and capitals, form balustrades to stairways or stand as enigmatic sentinels of vast courtyards. Some are legendary characters in tales of dreams and salvation; others enact scenes from a faithfully observed natural history. Some transport kings and heroes into battle and the hunt; others are celestial messengers of rain, fertility and good fortune. From monumental freestanding sculptures to finely-worked narrative friezes, the warmth and energy of these depictions bear testimony to the achievements of countless anonymous artisans. ', 'Vikramjit Ram', '2006', '81-88204-6', 250, 1000, 'upload_image/ARC8.jpg', 'upload_ebook/arc2.txt'),
(3, 'Close to Events-Works of Bikash Bhattacharjee', '2', 'Launching his creative career in the late ?50s, Bikash Bhattacharjee stood out among his contemporaries by making hard-edged chiseled realism the core appeal of his canvases when realism or naturalism of every shade was considered a retrograde trend. Bikash?s strengths were his exceptional technical mastery and his power to charge the tangible appearance of the surface with the reality of the depth beneath. He was admired not merely for the near-illusionist evocation of realistic details, but for the obvious or subtle distortions in his imagery as a key to their complex multi-layered meanings. His realistic idiom is fascinatingly robust and compulsive, laced with rich irony, strong-veined allegory and lush visual metaphors. His portrait-based images enact the artist?s own experience of our time with all its dark social and moral tones and textures. Close to Events: Works of Bikash Bhattacharjee deals with Bikash?s early life in an old North Calcutta locality, the urban social ambience that shaped his creative personality and explores why he chose to remain ?close to events? and free from the dominant trends in post-Independence Indian art. It also analyses the technical and stylistic development of art with detailed exposition of some of the themes and subjects in the major series of his paintings. ', 'Manasij Majumder', '2008', '978818973', 250, 2000, 'upload_image/ART6.JPG', 'upload_ebook/art1.docx'),
(4, 'A Social History of Indian Architecture ', '1', 'Studies in Indian architecture have been confined to those exploring the building techniques of palaces, temples, and tombs. Little attention has traditionally been paid by scholars to the patterns and influences involved in the making of domestic residences, market places, inns, community halls, courts, and other ''lesser'' buildings. The result is the emergence of a very partial picture of what constitutes architecture in India. This volume se eks to overcome this inadequacy by examining the geographical, historical, and functional aspects of architecture in India. Looking beyond the point of view of dynasties, periods or religions, the book traces the various social and historical developments in the field. Following a multi-disciplinary approach that emphasizes sociological aspects, the volume examines in detail, settlement patterns, the architecture of individual houses and chaityas, as also structural materials used for their construction, in addition to those of palaces, funerary monuments, temples, mosques, and monasteries. While examining the planning and design orientation of peoples and architectural techniques across India, the volume pays special attention to that of western India especially Gujarat and Rajasthan. The author also addresses rural and urban patterns of setlement and the linkages between the two. He explains regional and period-specific phenomena, while also quoting from ancient accounts of towns. These vary from the typical urban and rural houses to the Muslim aristocratic residences and Rajput palaces. Based on extensive fieldwork, the author also documents family histories, lifestyles and usage of space to provide a comprehensive social history of Indian architecture. Complemented by over eighty figures including photographs, plans, and detailed diagrams, this book will interest scholars of architecture, history, sociology, and the informed lay reader', 'V.S. Pramar ', '2007', '87558769 ', 300, 1000, 'upload_image/ARC10.jpg', 'upload_ebook/arc3.txt'),
(5, 'YOGIS, DESTINY & THE WHEEL OF TIME ', '5', 'Contents: Dedication; Acknowledgements; About the author; Preface; Preface to the 2nd edition; 1. That great guru; 2. Profile of a guru''s life; 3. Prabhu bejoy Krishna Goswami; 4. I meet my guru; 5. Awakened kundalini; 6. Astrological instruction; 7. Pre-destination: The negative side; 8. Rokadia Hanuman Baba; 9. My Jyotish guru-1; 10. My Jyotish guru-2; 11. Pre-destination & divine bliss; 12. Nagari Das Baba; 13. Ranga Avadhoot; 14. Religion of yogis; 15. Caution & warning; 16. Ecstasies spring from fire-1; 17. Ecstasies spring from fire-2; 18. Ecstasies spring from fire-3; 19. Ecstasies spring from fire-4; 20. Ecstasies spring from fire-5; 21. Ecstasies spring from fire-6; 22. The seers; 23. Astrology, when it is an illumination; 24. Memory glows; 25. Why astrology at all?; 26. Poetical guidance; 27. Bliss & confusion; Index.', 'K.N. Rao', '2005', '2589697 ', 285, 300, 'upload_image/ASTRO1.jpg', 'upload_ebook/ASTR1.doc'),
(6, 'You Deserve, We Conserve A Biotechnological Approach to Wild', '3', 'There is a tremendous wealth of mega-biodiversity in the world. But the very existence of this wealth is under threat due to habitat destruction, pushing animals towards inbreeding depression and thereby paving way for their extinction. This has made essential human intervention and assisted reproductive technologies. Thus, the issues of conservation of wildlife and biodiversity have become the need of the hour, especially in terms of policy making at the government level. You deserve, We Conserve: A Biotechnological Approach to Wildlife Conservation contains 16 articles by scientists engaged in research on the conservation of wildlife, role of reproductive technologies and modern approaches being followed in wildlife conservation. It also deals with various techniques used in field conditions such as chemical capture, molecular genetics, ultrasonography, cryopreservation, wildlife forensics, etc. The present book will be of special interest to professionals engaged in forest and environment related activities, particularly wildlife conservationists, students pursuing their career in veterinary discipline of wild animals and policy makers. It will also be useful for nature enthusiasts, who have an interest in wildlif', 'M W Pandit / S Shivaji', '2006', '9788189866', 160, 659, 'upload_image/forest.jpg', 'upload_ebook/forest.docx'),
(7, 'Visual Basic 2005', '17', '''VB connectivity''', 'Pearson', '2009', 'VB111', 350, 120, 'upload_image/comp8.jpg', 'upload_ebook/read.pdf'),
(8, 'Java & Xml', '17', '''Complete Reference''', 'TATA Mcgerw Hill', '2010', 'JJ123', 1800, 500, 'upload_image/comp9.jpg', 'upload_ebook/java.pdf'),
(9, 'Microsoft Windows Powershell Step By Step', '29', '''Learn Microsoft Windows PowerShell step by step with hands-on instruction from a leading Microsoft scripting trainer. This guide features self-paced labs, timesaving tips, and dozens of sample scripts', 'Wilson', '2006', '9788120332', 755, 295, 'upload_image/comp6.jpg', 'upload_ebook/wave.doc'),
(10, 'C# Programming', '17', '''C# is platform independent,includes namespace,garbage collection,automatic memory management', 'Pearson', '1999', 'c#abd', 450, 300, 'upload_image/1861004877.jpg', 'upload_ebook/intro_C#.pdf'),
(11, 'Java Server Programming', '17', '''jsp uses  html tags and run on java platform''', 'BPB Prakashan', '2000', 'jsp123', 1800, 560, 'upload_image/1861004656.jpg', 'upload_ebook/Java_2_5th-www.netbks.com.pdf'),
(12, 'Programming with Perl', '17', 'Perl is programming langauge which is not comfortable to handle.', 'Wrox', '1995', 'perl123', 560, 450, 'upload_image/0596000278.jpg', 'upload_ebook/perl.docx'),
(13, 'HTML for world wide web', '19', 'html uses tags,it''''s  not case sensitive,work with own html tagswhich must be enclosed.', 'Elizabeth', '2005', 'htmlabc12', 560, 400, 'upload_image/0201354934.jpg', 'upload_ebook/html.pdf'),
(14, 'ASP Server Pages 3.0', '17', 'Active server pages uses xml files ,it run on internet explorer or other browser..', 'Microsoft', '1995', 'asp123', 1150, 950, 'upload_image/1861003382.jpg', 'upload_ebook/asp.doc'),
(15, 'Perl and CGI', '17', 'CGI for graphics purpose', 'Pearson', '1999', 'pc2343', 450, 300, 'upload_image/020135358X.gif', 'upload_ebook/perl1.pdf'),
(16, 'A Biological Survey for the Nation', '27', 'The National Biological Survey will produce the map we need to avoid the\\r\\neconomic and environmental "train wrecks" we see scattered across the country.\\r\\nNBS will provide the scientific knowledge America needs to balance the\\r\\ncompatible goals of ecosystem protection and economic progress', 'National Research Council', '1994', '0-309-5860', 224, 450, 'upload_image/biology.gif', 'upload_ebook/g.pdf'),
(17, 'Book of Tea', '23', 'The Philosophy of Tea is not mere aestheticism in the ordinary acceptance of the term, for it expresses conjointly with ethics and religion our whole point of view about man and nature. It is hygiene, for it enforces cleanliness.It represents the true spirit of Eastern democracy by making all its votaries aristocrats in taste. (from "The Book of Tea")', 'Kakuzo Okakura', '2008', 'tea1', 80, 100, 'upload_image/bookoftea.jpg', 'upload_ebook/tea.docx'),
(18, 'Coffee : Scrumptious Drinks', '23', 'Every day, millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please \\r\\nanyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'Chronicle Books', '2007', 'cofee1', 96, 100, 'upload_image/cofee.jpg', 'upload_ebook/cofee.docx'),
(19, 'Stone Soup', '24', 'A hungry traveler tricks a little old lady into cooking him soup starting with a stone.', 'Marcia Brown', '1970', 'soup45', 120, 350, 'upload_image/stonesoup.jpg', 'upload_ebook/soup.docx'),
(20, 'Pasta Perfection', '22', 'This new series will help you get back into the kitchen and experience the fun of creating sensationalmouth-watering meals thought he simplicity of easy-to-read, step-by-step ...', 'Belina Jeffer', '2004', 'p12', 80, 100, 'upload_image/pasta1.jpg', 'upload_ebook/pasta1.docx'),
(21, 'Bhartiya Vynjano ka khajana', '25', 'Vyanjan made by Sanjeev kapoor,he makes very sweet and delicious dishes', 'Sanjeev Kapoor', '2009', 'vya12', 120, 350, 'upload_image/bhartiya.jpg', 'upload_ebook/Vyanjan.docx'),
(22, 'Descriptious du Cafeier', '23', 'millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please anyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'International resource institute', '1996', 'caffee2', 96, 100, 'upload_image/cofee2.jpg', 'upload_ebook/Coffee1.docx'),
(23, 'Your Income-Tax 2010', '8', 'A guide to income tax returns provides information on the most recent tax legislation, tax-filing tips, advice on how to reduce tax liabilities, helpful financial advice, and sample tax forms, worksheets,', 'J K Lasser Institute', '2009', 'it-3433', 848, 1000, 'upload_image/tax1.jpg', 'upload_ebook/Income Tax.pptx'),
(24, 'Your Income-Tax Professional Edition', '8', 'Provides information about filing requirements, exemptions, income, deductions, tax credits, shelters, and tax law.', 'J K Lasser Institute', '2009', 'it-121', 1024, 120, 'upload_image/tax2.jpg', 'upload_ebook/itax2.pptx'),
(25, 'J K Lesser''s Tax Savings in your Pocket', '8', '*  Save more for your child education now!\r\n   * Increase your retirement savings\r\n   * New deductions, tax breaks, and planning tips', 'John Wiley and Sons', '2002', 'it-122', 212, 300, 'upload_image/tax3.jpg', 'upload_ebook/Saving.pptx'),
(26, 'On Liberty', '8', 'the liberal tradition, revered for his defense of liberal principles and expansive personal liberty.', 'Princeton University Press', '2001', 'li-11', 264, 300, 'upload_image/li1.jpg', 'upload_ebook/lib1.docx'),
(27, 'On Liberty in Focus', '8', 'his book gathers together for the first time J.S. Mill''''s On Liberty and a selection of importantessays by the eminent scholars Isaiah Berlin, Alan Ryan, John Rees C.L. Ten''', 'John Stuart Mill', '2002', 'li-22', 296, 350, 'upload_image/li2.jpg', 'upload_ebook/lib2.docx'),
(28, 'Debugging Microsoft .NET 2.0 Applications', '17', 'Get hands-on instruction for using the tools in Microsoft Visual Studio? 2005 to debug, tune, and test applications. This guide features practical advice and code samples for developers at all levels from a leading authority on improving code. Traditionally, tools for performance tuning, testing applications, and debugging code have been expensive, hard to learn, and difficult to use. While previous versions of Microsoft Visual Studio? have included debuggers and other code-improvement tools, Visual Studio 2005 presents developers with robust and useful tools and processes to help ensure top-quality code. In this guide, an expert on improving code, John Robbins, steps back from the expert-level information that characterized his previous debugging books to present hands-on, practical advice for working developers on how to use the debugging, testing, and tuning features in Visual Studio 2005', 'John Robbins (Wintellect)', '2006', 'net-1', 464, 699, 'upload_image/comp2.jpg', 'upload_ebook/net2005.docx'),
(29, 'The Mad, Mad World of Cricket', '4', 'The funny side of the gentleman?s game?captured by a master cartoonist In India cricket is more than a game; it is a national obsession. And with a World Cup always around the corner, there is no better way to prepare for the excitement of seeing the men in blue in action than with renowned cartoonist Sudhir Dar?s creations.', 'Sudhir Dar', '2005', '0143101846', 96, 125, 'upload_image/c1.jpg', 'upload_ebook/cricket1.pptx'),
(30, 'Dream Team India: The Best World Cup Squad Ever !', '4', 'Are you one of those who just knows India will win the match the moment the game starts? Do you drown yourself in cricket and cricket-related trivia every four years and dream of seeing India win the World Cup? If the answer is ?yes? to any of the above, here is the team that will bring home the Cup for you. ', 'Book shop', '2007', '014333015', 147, 200, 'upload_image/c2.jpg', 'upload_ebook/cricket2.docx'),
(31, 'HOW TO PREPARE FOR QUANTITATIVE APTITUDE FOR CAT', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'Arun Sharma', '2006', '0070483493', 310, 325, 'upload_image/COMPETITIVE8.jpg', 'upload_ebook/cat1.docx'),
(32, 'Physics', '26', 'Get all you need to know with Super Reviews! Each Super Review is packed with in-depth, student-friendly topic reviews that fully explain everything about the subject.', 'Unknown', '1995', '08', 1000, 495, 'upload_image/p2.jpg', 'upload_ebook/pysics1.pptx'),
(33, 'Thermal Physics', '26', 'The book presents a lucid and systematic exposition of the fundamental principles of Thermal Physics.', 'S.C.Garg', '2001', '0074601342', 412, 163, 'upload_image/p6.jpg', 'upload_ebook/thermal.pptx'),
(34, 'The Rough Guide to the Earth?', '2', 'From the opening and closing of oceans over millions of years to the overnight reshaping of landscapes by volcanoes, the Earth beneath our feet is constantly changing. The Rough Guide to the Earth explores all aspects of our dynamic planet, from the planet?s origins and evolution and the seasons and tides to melting ice caps, glaciers and climate change. Featuring many spectacular images and helpful diagrams, this Rough Guide provides a fascinating and accessible introduction to Earth science.', 'Martin Ince', '2006', '1843535890', 320, 650, 'upload_image/ART3.JPG', 'upload_ebook/Earth science.pptx'),
(35, 'A TEXTBOOK OF COST AND MANAGEMENT ACCOUNTING 8th ed.', '6', ' Student friendly and examination oriented approach # Innovative, comprehensive and systematic presentation of the subject matter # Use of diagrams and exhibits to help students understand concepts easily and clearly # Around 500 solved problems and illustrations with working notes # Solved and unsolved practical questions from various university and professional examinations like BCom, MCom, CA, CS, ICWA, etc. # Objective type questions and select theory questions # Ideal for self study.', 'M N ARORA', '2006', '812910945', 400, 395, 'upload_image/busi7.jpg', 'upload_ebook/cost_a_c.pptx'),
(36, 'Computer Networks, 4th Ed', '20', '(38, ''Computer Networks, 4th Ed'', ''46'', ''updated, this classic bestseller, now in its fourth edition, reflects the newest and most important networking technologies with a special emphasis on wireless networking. The material on wireless networks includes detailed coverage of 802.11, wireless local loops, 2G and 3G cellular networks, BluetoothTM, WAP, i-mode, and others. It prepares students to work with wireless technologies in networks of all sizes-both local and wide area networks. There is also lots of new material on applications, including the Web, Internet radio, voice over IP, and video on demand. Finally, an entirely new chapter is devoted exclusively to security to help students deal with one of the most crucial topics in networking today. Despite a large amount of material added on wireless networks, fixed networks have not been ignored-topics covered include ADLS, Internet over cable, gigabit Ethernet, peer-to-peer networks, NAT, and MPLS. Each chapter follows a consistent approach. The author first presents the key principles-underlying hardware at the physical layer up through the top-level application layer-and then illustrates them utilizing real-world examples drawn from the Internet and wireless networks, all in Tanenbaum''''s classic entertaining style.', 'ANDREW S.TANENBAUM', '2007', '8120321758', 912, 325, 'upload_image/comp7.jpg', 'upload_ebook/SLIP and PPP.docx'),
(37, 'Investing for Beginners', '6', 'Investment Risks and Rewards: How to overcome the fear of investment risk and how taking a few risks can reap long-term benefits. Your Starting Point: How to assess your investment goals. Diversification: How to allocate your money among various investment avenues for safety, steady income and capital growth. How to Pick Stocks: How to use fundamental indicators of value to pick good stocks. Investing in Bonds: Why you need bonds in your portfolio and which bonds to choose. Mutual Funds Primer: What they are and how to select the ones that suit your needs. Disinvesting: How to figure out when it''''s time to get out of an investment. Keeping in Touch: How to understand financial information. Keeping Track of Your Investments: Simple record-keeping tricks.', 'Kathy Kristof', '2006', '8170944821', 140, 195, 'upload_image/business.jpg', 'upload_ebook/Investment.docx'),
(38, 'Games Lawyers need to Play - Moot Court Problems ', '8', 'The Raj Anand Moot Court Competition was initiated in 1998 with its focus centrally on Intellectual Property law. Over the years the scope of the Competition has widened though Intellectual Property remains the core area. One of its primary aims is to sharpen the skills of ?mooting? among aspiring lawyers. Games Lawyers Need to Play brings together the Problems and ten of the finest Memorials of the Competition. Each chapter deals with a specific year beginning with 2004 and going back to 1998. The problems deal with various aspects of Intellectual Property but are ?out of ordinary?, to enable participants to combine good quality research with creativity and originality. The book has a foreword by Judge Michael Fysh, QC, SC. The Introduction is written by Pravin Anand.', 'Raj Anand Moot Court Competition ', '2006', '818028025X', 424, 595, 'upload_image/lawyer.jpg', 'upload_ebook/lawyer.doc'),
(39, 'An ABC of Indian Culture : A Personal Padayatra of Half a Ce', '2', 'An authentic interpretation of over 400 Indian concepts and practices derived from a personal exploration of India over a period of 50 years. Arranged alphabetically, these range from key traditional ones such as ''dharma'' to more contemporary ones such as ''secularism'' and ''democracy'' to popular ones such as Indian films! ''Padayatra'' is a journey on foot and each selected concept and practice is treated as a stepping-stone in a journey to understanding what India is all about. Descriptions are based on personal experience maturing over half a century, and written in cultural essays that present the essence of the Indian tradition. Malformations of the tradition are explained but without polemics. The book is a sensitive, cultured and sophisticated introduction to India for an intelligent and serious readership, and will be invaluable also as a handy reference text for libraries, cultural exchange agencies, business orientation courses especially for those anticipating an extended interaction with India, and the like.', 'Peggy Holroyde', '2005', '818820417X', 480, 595, 'upload_image/cul1.jpg', 'upload_ebook/culture1.docx'),
(40, 'HOW TO PREPARE FOR THE CAT, 2/E ', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'MUNEER, MUHAMED', '2006', '0070528462', 380, 499, 'upload_image/CAT.jpg', 'upload_ebook/cat2.docx'),
(41, 'Safe and Simple Steps to Fruitful Meditation', '10', 'Meditation has been widely accepted as a tested method to reduce mental tensions and achieve inner peace and tranquillity, leading to spiritual growth. In this book, various techniques are presented in an easy step-by-step manner, starting with simple techniques that can be practised for just a few minutes', 'Dr. N. K. Srinivasan', '2003', '8122308910', 150, 80, 'upload_image/yoga1.jpg', 'upload_ebook/yoga1.docx'),
(42, 'STATISTICS FOR BUSINESS AND ECONOMICS', '7', 'This book covers various aspects of the field of statistics in 20 chapters, making each topic relevant and useful. A unique feature of this book is the inclusion of databases to be utilized by computers and software statistical packages. Contents - Introduction ? Statistical Terms and Concepts ? Data Collection ? Data Presentation ? Data Characteristics: Descriptive Measures ? Basic Concepts of Probability ? Probability Distribution ? Sampling Distribution ? Statistical Inference: Estimation ? Hypothesis Testing I ? Hypothesis Testing II ? Hypothesis Testing III ? Hypothesis Testing IV (Comparing Several Proportions Chi Square Test) ? Hypothesis Testing V(Comparing Several Population Means) One-Way Analysis of Variance (ANOVA) ? Regression and Correlation Analysis ? Multiple Regression ? Non-Parametric Statistics ? Time Series Analysis ? Statistical Decision Making ? Statistical Quality.', 'J S CHANDAN ', '2007', '8125904182', 212, 372, 'upload_image/9062999.jpg', 'upload_ebook/maths.doc'),
(43, 'Himalayan Vignettes : The Garhwal and Sikkim Treks', '14', 'In the 1950s Himalayan trekking was not as popular as it is now. The network of roads deep into the Himalayas did not exist and the hills were more pristine and undeveloped.', 'Kekoo Naoroji ', '2004', '8188204234', 300, 2000, 'upload_image/1445.jpg', 'upload_ebook/track1.txt'),
(44, 'Insight Guide Iceland', '9', 'A travel series unlike any other, Insight Guides go beyond the sights and into reality.', 'Perrottet, Tony (Edt)', '0887291767', '0887291767', 300, 935, 'upload_image/t2.jpg', 'upload_ebook/tour1.txt'),
(45, 'SPIDER MAN', '16', 'second 100 issues as May Mayday Parker learns that she can''t escape her great responsibilities! Featuring the original Hobgoblin, the Black Tarantula and more! Plus: the saga of Spider-Girl! Collects Amazing Spider-Girl #0-6. ', 'Marvel Comics ', '2001', '0785123415', 160, 606, 'upload_image/comic1.jpg', 'upload_ebook/spider.doc'),
(46, 'The Missing ', '15', 'The woman missing for five years. The Crime Scene Investigator who finds her. And the serial killer who wants them both dead? When Boston CSI Darby McCormick finds a raving and emaciated woman hiding at the scene of a violent kidnap, she runs a DNA search to identify the Jane Doe. The result confirms that the woman was abducted five years earlier and has somehow managed to escape from the dungeon in which she?s been caged. With a teenage couple also missing and the Jane Doe seriously ill, the clock is ticking for Darby as she hunts for the dungeon before anyone else disappears or dies. And when the FBI takes over the investigation, it becomes clear that a sadistic serial killer has been on the prowl for decades ? and is poised to strike again at any moment. A killer with links to horrors that Darby has desperately tried to bury in her past?\r\n\r\n', 'Chris Mooning ', '2006', '0141030852', 416, 240, 'upload_image/fic1.jpg', 'upload_ebook/fiction1.docx'),
(47, 'Bhagavata Purana ', '11', 'Even after he has composed the awesome Mahabharata, the Maharishi Vyasa finds no peace.', 'Ramesh Menon ', '2004', '8129109956', 1500, 995, 'upload_image/re7.jpg', 'upload_ebook/bagvad.txt'),
(48, 'Bill and Dave: How Hewlett and Packard Built the World`s Gre', '12', 'This is not a history of the Hewlett-Packard Company, or a book of business theory, or a definitive biography of William Hewlett and David Packard. I have chosen to write this book this way because of the desperate need the business world has right now for an archetype of enlightened management, enduring quality, and perpetual innovation. It is not enough to simply tell the story of Hewlett, Packard and their company. What are needed are the why? and the how?? The most momentous first meeting in modern business history took place in the unlikely setting of a bench beside a football field, between two Stanford University students in pads and helmets. A few years later, in 1938, Bill Hewlett and Dave Packard were working in a small garage in Palo Alto, California, building their first product, an audio oscillator. It was the start not only of a legendary company but also of an entire way of life in Silicon Valley?and, ultimately, of our modern digital age. Acclaimed journalist Michael S. Malone is the first to get the full story, based on unlimited and exclusive access to corporate and private archives, along with hundreds of employee interviews. He draws on new material to show how some of the most influential products of our time were invented and how a culture of innovation led HP to unparalleled success for decades. Malone also shows what was really behind the groundbreaking management philosophy??the HP way??that put people ahead of products or profits. Bill and Dave, at its heart, is a character study of two amazing men who revealed their character in how they structured their business, in the men and women they hired, and, most of all, in the power they entrusted to even the lowliest HP employee. Their story is something of a miracle?one from which we can never stop learning.', 'Michael S. Malone ', '2005', '0143102397', 345, 500, 'upload_image/MANAGEMENT2.jpg', 'upload_ebook/mgmt1.pptx'),
(49, 'PAKISTAN`S DRIFT INTO EXTREMISM', '13', 'The book studies the rise of religious extremism in pakistan and analyses its connection to the pakistani army policies and fluctuating US - Pakistani Relationship. It is a book which readers as well as students of Political Science and history will enjoy thoroughly.', 'Hassan Abbas ', '2001', '8182741580', 350, 600, 'upload_image/terr2.jpg', 'upload_ebook/terror1.txt'),
(50, 'Learning SQL on SQL Server 2005 : The Simplest Way', '18', 'Anyone who interacts with today?s modern databases needs to know SQL (Structured Query Language), the standard language for generating, manipulating, and retrieving database information. In recent years, the dramatic rise in the popularity of relational databases and multiuser databases has fueled a healthy demand for application devel?opers and others who can write SQL code efficiently and correctly. If you?re new to databases or need a SQL refresher, Learning SQL on SQL Server 2005 is an ideal step-by-step introduction to this database query tool, with everything you need for programming SQL using Microsoft?s SQL Server 2005?one of the most powerful and popular database engines used today. Plenty of books explain database theory. This guide lets you apply the theory as you learn SQL. You don?t need prior database knowledge, or even prior computer knowledge. Based on a popular university-level course designed by authors Sikha Saha Bagui and Richard Walsh Earp, Learning SQL on SQL Server 2005 starts with very simple SQL concepts, and slowly builds into more complex query development. Every topic, concept, and idea comes with examples of code and output, along with exercises to help you gain proficiency in SQL and SQL Server 2005. With this book, you?ll learn: * Beginning SQL commands, such as how and where to type an SQL query, and how to create, populate, alter, and delete tables * How to customize SQL Server 2005?s settings and about SQL Server 2005?s functions * About joins, a common database mechanism for combining tables * Query development, the use of views and other derived structures, and simple set operations * Subqueries, aggregate functions, and correlated subqueries, as well as indexes and constraints that can be added to tables in SQL Server 2005 Whether you?re a self-learner who has access to the new Microsoft database, working on SQL Server with access at your company, or a computer science student or MIS student, Learning SQL on SQL Server 2005 will get you up to speed on SQL in no time.\r\n\r\n', 'Sikha Saha Bagui, Richard Walsh Earp ', '2005', '9788184040', 360, 350, 'upload_image/comp10.jpg', 'upload_ebook/sql1.docx'),
(53, 'rrhhh', '1', 'descriptions', 'dff', '43', '2', 766, 200, 'upload_image/ag - Copy.jpg', 'upload_ebook/Successive Approximation ADC - Copy.pdf'),
(54, 'kjihyf', '1', 'jhgj', 'jg', '43', '2', 576, 987, 'upload_image/ag - Copy - Copy.jpg', 'upload_ebook/[1] Data Mining - Concepts and Techniques (3rd Ed) - Copy.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Architecture'),
(2, 'Art And Culture'),
(3, 'Forest'),
(4, 'Sports'),
(5, 'Astrology'),
(6, 'Business'),
(7, 'Economics'),
(8, 'Low Books'),
(9, 'Tourism'),
(10, 'Yoga'),
(11, 'Religion'),
(12, 'Management'),
(13, 'Terrorism'),
(14, 'Tracking'),
(15, 'Fiction'),
(16, 'Comics'),
(17, 'Computer'),
(18, 'Cooking'),
(19, 'Science'),
(20, 'Compititive Exam'),
(21, 'Operating System');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(4) NOT NULL,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(12, 'orin', 'orinazam@gmail.com', 'ai 2 '),
(9, 'Abir', 'abir_sayeed@yahoo.com', 'batman arkham knight'),
(11, 'Sabbir', 'sabbir@yahoo.com', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `sell_info`
--

CREATE TABLE `sell_info` (
  `id` int(11) NOT NULL,
  `pcat` varchar(200) NOT NULL,
  `product` varchar(200) NOT NULL,
  `qty` int(20) NOT NULL,
  `rate` int(20) NOT NULL,
  `tk` int(35) NOT NULL,
  `billSystem` varchar(50) NOT NULL,
  `cus_id` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell_info`
--

INSERT INTO `sell_info` (`id`, `pcat`, `product`, `qty`, `rate`, `tk`, `billSystem`, `cus_id`) VALUES
(9, 'Architecture', 'A Dictionary of Architecture ', 1, 500, 500, 'Cash on Delivery', 6);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Architecture'),
(2, 2, 'Art And Culture'),
(3, 3, 'Forest'),
(4, 4, 'Sports'),
(5, 5, 'Astrology'),
(6, 6, 'Business'),
(7, 7, 'Economics'),
(8, 8, 'Low Books'),
(9, 9, 'Tourism'),
(10, 10, 'Yoga'),
(11, 11, 'Religion'),
(12, 12, 'Management'),
(13, 13, 'Terrorism'),
(14, 14, 'Tracking'),
(15, 15, 'Fiction'),
(16, 16, 'Comics'),
(17, 17, 'Programming'),
(18, 17, 'Database'),
(19, 17, 'Web-Design'),
(20, 17, 'Networking'),
(22, 18, 'Pasta'),
(23, 18, 'Tea - Coffee'),
(24, 18, 'Soup - Sauce'),
(25, 18, 'Vegetarian Item'),
(26, 19, 'Physics'),
(27, 19, 'Biology'),
(28, 19, 'Medical'),
(29, 17, 'O.S.'),
(33, 20, 'CAT'),
(31, 20, 'GMAT'),
(32, 20, 'MBA'),
(34, 16, 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(6, 'Kazi Ashraful Azam', 'korin', '1234', 'Male', 'korin@yahoo.com', '017*********', 'Dhaka'),
(7, 'Kazi Ashraful Azam', 'korin11', '1234', 'Male', 'korin@yahoo.com', '017*********', 'Dhaka'),
(9, 'ananta', 'Ananta Shadhin', '11111', 'Male', 'ananta.shadhin@hotmail.com', '-01675******', 'Dhaka'),
(10, 'admin', 'admin', 'admin123', 'Male', 'orin@gmai.com', '01720000000', 'Kushtia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `sell_info`
--
ALTER TABLE `sell_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sell_info`
--
ALTER TABLE `sell_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sell_info`
--
ALTER TABLE `sell_info`
  ADD CONSTRAINT `sell_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE;
--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `upMail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `upMail`, `password`, `firstName`, `middleName`, `lastName`, `contact`, `status`) VALUES
(2, 'admin@gmail.com', '$2y$10$iox6BT09JzfhnxQHSDvqruZfsso8dC9G6dKZLE3s9fKLSHAt7mFl6', 'Rahul', 'C', 'Bindrani', '', 'active'),
(3, 'admin@gmail.com', 'admin', 'David', 'Scott', 'James', '09065499404', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `applicationID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `sigID` int(11) DEFAULT NULL,
  `scholarshipID` int(11) NOT NULL,
  `appDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `appstatus` varchar(20) NOT NULL DEFAULT 'Pending',
  `verifiedBySignatory` varchar(20) NOT NULL DEFAULT 'Pending',
  `previous_appstatus` varchar(20) NOT NULL,
  `previous_verifiedBySignatory` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`applicationID`, `studentID`, `sigID`, `scholarshipID`, `appDate`, `appstatus`, `verifiedBySignatory`, `previous_appstatus`, `previous_verifiedBySignatory`) VALUES
(38, 43, 8, 22, '2019-06-06 13:58:58', 'inactive', 'currently blocked', 'Rejected', 'Rejected'),
(39, 43, 8, 23, '2019-06-06 13:40:15', 'Processing', 'Approved', 'Processing', 'Approved'),
(40, 43, 8, 25, '2019-06-06 11:20:19', 'Pending', 'Pending', 'Pending', 'Pending'),
(41, 43, 7, 31, '2019-06-07 16:17:26', 'Pending', 'Pending', 'Pending', 'Pending'),
(42, 43, 8, 30, '2019-06-07 16:16:50', 'Pending', 'Pending', 'Pending', 'Pending'),
(43, 43, 8, 26, '2019-06-07 08:51:11', 'Pending', 'Pending', '', ''),
(44, 44, 8, 23, '2019-06-07 11:20:22', 'Pending', 'Pending', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `upMail` varchar(255) NOT NULL,
  `num` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`upMail`, `num`) VALUES
('dishantd999@gmail.com', 744014),
('dishantd999@gmail.com', 287736),
('dishantd999@gmail.com', 851718),
('dishantd999@gmail.com', 517402),
('dishantd999@gmail.com', 979640);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `scholarshipID` int(11) NOT NULL,
  `sigID` int(11) NOT NULL,
  `schname` varchar(255) NOT NULL,
  `schlocation` varchar(255) NOT NULL,
  `schlocationfrom` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `religion` varchar(55) NOT NULL,
  `sch` varchar(30) NOT NULL,
  `appDeadline` date NOT NULL,
  `granteesNum` int(11) NOT NULL,
  `funding` varchar(20) NOT NULL,
  `description` varchar(4095) NOT NULL,
  `eligibility` varchar(4095) NOT NULL,
  `benefits` varchar(4095) NOT NULL,
  `apply` varchar(4095) NOT NULL,
  `links` varchar(1024) NOT NULL,
  `contact` varchar(1024) NOT NULL,
  `adminapproval` varchar(20) NOT NULL,
  `previous_adminapproval` varchar(20) NOT NULL,
  `schstatus` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`scholarshipID`, `sigID`, `schname`, `schlocation`, `schlocationfrom`, `degree`, `gender`, `religion`, `sch`, `appDeadline`, `granteesNum`, `funding`, `description`, `eligibility`, `benefits`, `apply`, `links`, `contact`, `adminapproval`, `previous_adminapproval`, `schstatus`) VALUES
(22, 8, 'abc', 'abcccc', 'abccccccc', 'graduation', 'male', 'christian', 'select', '2019-06-30', 12, '1200', 'rahul', 'abc', 'OKKKK', 'abc', 'abc', 'xyz', 'Pending', 'Approved', 'active'),
(23, 8, 'india', 'india', 'india', 'class8', 'male+female', 'Parsi, ', 'visual_art', '2019-07-20', 12, '1200', 'india', 'india', 'india', 'india', 'india', 'india', 'Approved', 'Approved', 'active'),
(24, 8, 'xyz', 'xyz', 'xyz', 'phd', 'male+female', 'Muslim', 'sports_talent', '2019-06-30', 12, '1200', 'xyzxyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'Pending', 'Pending', 'active'),
(25, 8, 'pqr', 'pqr', 'pqr', 'postgraduation', 'female', 'Sikh', 'science_maths_based', '2019-06-29', 12, '1200', 'pqr', 'pqr', 'pqr', 'pqr', 'pqr', 'pqr', 'Approved', 'Approved', 'active'),
(26, 8, 'def', 'def', 'def', 'class12passed', 'male+female', 'jain, ', 'means_based', '2019-06-22', 12, '1200', 'def', 'def', 'def', 'def', 'def', 'def', 'Approved', 'Approved', 'active'),
(27, 8, 'my', 'my', 'my', 'class1', 'male+female', 'jain<br/>', 'merit_based', '2019-06-23', 12, '1200', 'my', 'my', 'my', 'myu', 'my', 'my', 'Rejected', 'Rejected', 'active'),
(28, 8, 'ok', 'ok', 'ok', 'class1', 'male', 'hindu, ', 'merit_based', '2019-06-23', 12, '1200', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'Approved', 'Pending', 'active'),
(29, 8, 'ppp', 'ppp', 'ppp', 'class1', 'male+female', 'buddhism,christian,Muslim', 'merit_based', '2019-06-30', 12, '1200', 'ppp', 'ppp', 'ppp', 'ppp', 'ppp', 'ppp', 'Approved', 'Pending', 'active'),
(30, 8, 'dish', 'dish', 'dish', 'class1', 'female', 'buddhism,christian,hindu', 'merit_based', '2019-06-16', 100, '1500', 'dish <a href="https://www.google.com/">click here</a>', 'dish', 'dish', 'dish', 'dish', 'dish', 'Approved', 'Approved', 'active'),
(31, 7, 'University of Bradford Half Free Academic Excellence Scholarship 2019 ', 'Gujarat', 'Gujarat', 'postgraduation', 'male+female', 'buddhism,christian,hindu,jain,Muslim,Parsi,Sikh', 'merit_based', '2019-07-06', 100, '50% of the fees', 'The University of Bradford, UK invites applications for the Half Free Academic Excellence Scholarship 2019 from undergraduate and postgraduate applicants. These scholarships are generated with an objective to celebrate the academic excellence of talented students. The selected scholars will have the opportunity to avail a scholarship worth half of the tuition fee. A total of 10 scholarships will be provided.', 'The following applicants are eligible to apply for the scholarship program:\r\n1. Should enter the respective programme in Year 0 (Foundation) or Year 1\r\n2. Must be applying for a full-time degree either undergraduate or postgraduate taught (not research)\r\n3. Must have been made an offer to study at the University of Bradford from September 2019\r\n4. Must score the equivalent of AAA in A-levels (for undergraduate study) or a first-class honours degree (for postgraduate study)\r\n5. Must be paying the tuition fee without any external financial aidOnly open to students whose courses will be based in Bradford\r\nNote: Any external or distance learning courses are not eligible for this award.', 'The selected scholars will be eligible for a scholarship worth half of the tuition fee.\r\nNote: The scholarship will be paid in subsequent years if progressing with an average of 60% or above.', 'Follow the steps to apply: \r\nStep 1: Download the application form by visiting the scholarship page. \r\nStep 2: Fill in the form with the required details. \r\nStep 3: Attach the necessary documents. \r\nStep 4: Submit the application form to the below address before the deadline (3 June 2019): Fees and Finance Team\r\nThe Hub\r\nStudent Registry Services\r\nUniversity of Bradford\r\nRichmond Road\r\nBradford\r\nBD7 1DP\r\nStep 5: Alternatively, the duly filled application can also be sent by email to scholarships@bradford.ac.uk with the subject HALF FEE ACADEMIC SCHOLARSHIPS.', 'Original website\r\n\r\nApply online link', 'University of Bradford,\r\nRichmond Road,\r\nBradford BD7 1DP, UK\r\n\r\nPhone: 01274 236637\r\nEmail: scholarships@bradford.ac.uk', 'Approved', 'Approved', 'active'),
(32, 7, 'abc abc abc abc', 'abc', 'abc', 'class3', 'female', 'buddhism,christian,hindu', 'merit_based', '2019-06-30', 100, '1000', 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 'Approved', 'Pending', 'active'),
(33, 8, 'ok', 'ok', 'ok', 'class5', 'male', 'buddhism,christian,hindu,jain,Muslim', 'means_based', '2019-06-29', 12, '2000', 'ok', 'ok', 'ok', 'ook', 'ok', 'ok', 'Approved', '', 'active'),
(34, 9, 'World Bank Graduate Program 2019', 'All the 36 States', 'Citizens of all African nations are eligible to apply', 'postgraduation', 'male+female', 'christian', 'merit_based', '2019-07-29', 200, '$500', 'World Bank Scholarship 2019', 'Graduate', 'Free visa', 'online', 'www.worldbank.com', '08065499404', 'Approved', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `signatory`
--

CREATE TABLE `signatory` (
  `sigID` int(11) NOT NULL,
  `upMail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `organization/university` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signatory`
--

INSERT INTO `signatory` (`sigID`, `upMail`, `password`, `firstName`, `middleName`, `lastName`, `organization/university`, `position`, `contact`, `status`) VALUES
(7, 'rahul.bindrani.poorna@gmail.com', '$2y$10$D151khT07zy3cx7BAgvkUu84zY5icZZ3tAqvsD6V/iXzPXL/.b6CK', 'Rahul', 'C', 'Bindrani', '', 'Manager', '', 'active'),
(8, 'arjunbd7@gmail.com', '$2y$10$Fjlsx3FEEunWm1dfwODvYeFhzNhAoMkaDq6iBHgGLaT62ebnRq4zO', 'Arjun', 'Chandraprakash', 'Bindrani', '', 'CEO', '', 'active'),
(9, 'signatory@gmail.com', '$2y$10$mH/bAJEn3AJ3ZQ4/5uhf9OTF.hYdn00Zy9q8t.05ui/rUAfG60Zdm', '', '', '', '', '', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `upMail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `birthPlace` varchar(255) DEFAULT NULL,
  `presStreetAddr` varchar(255) DEFAULT NULL,
  `presProvCity` varchar(255) DEFAULT NULL,
  `presRegion` varchar(255) DEFAULT NULL,
  `permStreetAddr` varchar(255) DEFAULT NULL,
  `permProvCity` varchar(255) DEFAULT NULL,
  `permRegion` varchar(255) DEFAULT NULL,
  `contactNo` varchar(20) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `upMail`, `password`, `firstName`, `middleName`, `lastName`, `nationality`, `gender`, `birthDate`, `birthPlace`, `presStreetAddr`, `presProvCity`, `presRegion`, `permStreetAddr`, `permProvCity`, `permRegion`, `contactNo`, `dept`, `college`, `status`) VALUES
(43, 'bindrani.rb7@gmail.com', '$2y$10$kaD0yN3fRZu9es6to1nVp.OK.dFE9Wp0peeHiEOVntlGH7EjKCi/i', 'Rahul', 'Chandraprakash', 'Bindrani', 'India', 'Male', '0000-00-00', 'Ahmedabad', '', '', '', '', '', '', '', '', '', 'active'),
(44, 'dishantd999@gmail.com', '$2y$10$fvzm.tlEs2VAqCph0Sr3TuQnp.2PjPW2LUYtxBdHdkhz4C7/FRuWu', 'Dishant', '', 'doshi', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', 'active'),
(45, 'rahulbindrani123@gmail.com', '$2y$10$RTrzzwxxBQU3LP5M4HmlHuYqSFWUhJpOiQNiwG3NNGabBQyxQ2cqm', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'active'),
(47, 'internwithicon@internshala.com', '$2y$10$RTJSf0Mzp8s5rsqNXWhZyuwRoGkoE3/2j3Gw5BRIexlxCQITwKmdq', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'active'),
(48, 'user@gmail.com', '$2y$10$qc4oWjYD43r2v3BR0lQhNO8g/j0kQSAegiOUCvmBDSQvQjUgZTfuu', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `verify_signup`
--

CREATE TABLE `verify_signup` (
  `upMail` varchar(255) NOT NULL,
  `action` int(2) NOT NULL DEFAULT '0',
  `num` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify_signup`
--

INSERT INTO `verify_signup` (`upMail`, `action`, `num`) VALUES
('bindrani.rb7@gmail.com', 1, 637939),
('dishantd999@gmail.com', 1, 501750),
('rahulbindrani123@gmail.com', 1, 327349),
('rahul.bindrani.poorna@gmail.com', 1, 421896),
('arjunbd7@gmail.com', 1, 868906),
('internwithicon@internshala.com', 0, 133692),
('user@gmail.com', 1, 596482),
('signatory@gmail.com', 1, 526433);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`applicationID`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`scholarshipID`);

--
-- Indexes for table `signatory`
--
ALTER TABLE `signatory`
  ADD PRIMARY KEY (`sigID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `applicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `scholarshipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `signatory`
--
ALTER TABLE `signatory`
  MODIFY `sigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;--
-- Database: `tssmsdb`
--
CREATE DATABASE IF NOT EXISTS `tssmsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tssmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(100) NOT NULL,
  `sname` text NOT NULL,
  `fname` text NOT NULL,
  `app_id` text NOT NULL,
  `mail` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `school` text NOT NULL,
  `dept` text NOT NULL,
  `level` text NOT NULL,
  `cgpa` text NOT NULL,
  `scholarship` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `sname`, `fname`, `app_id`, `mail`, `dob`, `gender`, `school`, `dept`, `level`, `cgpa`, `scholarship`, `status`) VALUES
(1, 'Kefas', 'Davidson', 'TSSB|01', 'davidson@gmail.com', '2019-08-13', 'Male', 'Kwararafa University Wukari', 'Computer Science', '300 level', '3.78', 'Scholarship for Post-Graduate Study', 'Approved'),
(2, 'James', 'Alison', 'TSSB|02', 'alison@gmail.com', '2019-09-07', 'Male', 'Taraba State University, Jalingo', 'Chemistry', '200 Level', '3.50', 'Fully Founded Genius Scholarship ', 'Pedding');

-- --------------------------------------------------------

--
-- Table structure for table `bankdetails`
--

CREATE TABLE `bankdetails` (
  `id` int(11) NOT NULL,
  `acctName` text NOT NULL,
  `acctNumber` text NOT NULL,
  `bankName` text NOT NULL,
  `acctType` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankdetails`
--

INSERT INTO `bankdetails` (`id`, `acctName`, `acctNumber`, `bankName`, `acctType`, `status`) VALUES
(1, 'Kefas Davidson', '2067767997', 'Zenith Bank', 'savings', 'Not paid');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`message`) VALUES
('Your application for Scholarship for Post-Graduate Study has been approved.');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `email` text NOT NULL,
  `gender` text NOT NULL,
  `school` text NOT NULL,
  `department` text NOT NULL,
  `faculty1` text NOT NULL,
  `matricNo` text NOT NULL,
  `level` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`email`, `gender`, `school`, `department`, `faculty1`, `matricNo`, `level`, `created`) VALUES
('scot@gmail.com', 'Male', 'Kwararafa University Wukari', 'Biochemistry', 'Pure and Applied Sciences', 'Kuw|CSC|2019', '300 level', '2019-08-07 07:44:54'),
('alison@gmail.com', 'Male', 'Federal University Wukari', 'Computer Science', 'Pure and Applied Sciences', 'UR201900267', '400 level', '2019-08-07 07:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(11) NOT NULL,
  `sch_id` varchar(50) NOT NULL,
  `schName` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `schAmount` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `sch_id`, `schName`, `status`, `schAmount`, `created`) VALUES
(2, 'TSSB|002', 'Scholarship for Post-Graduate Study', 'Ongoing', 'N200,000', '2019-08-09 15:35:02'),
(3, 'TSSB|002', 'Fully Founded Genius Scholarship ', 'Ongoing', 'N100,000', '2019-08-09 20:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `mail` text NOT NULL,
  `password` text NOT NULL,
  `dob` text NOT NULL,
  `lga` text NOT NULL,
  `state` text NOT NULL,
  `school` text NOT NULL,
  `dept` text NOT NULL,
  `level` text NOT NULL,
  `img` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mail`, `password`, `dob`, `lga`, `state`, `school`, `dept`, `level`, `img`, `created`) VALUES
(17, 'Davidson', 'Kefas', 'davidson@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-13', 'Wukari', 'Taraba', '', 'Computer Science', '300 level', '2491831565725690.jpg', '2019-08-13 19:48:10'),
(20, 'Alison', 'Terry', 'alison@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-09-25', 'Jalingo', 'Taraba', 'Kwararafa University Wukari', 'Computer Science', '400 level', '7467711569453457.jpg', '2019-09-25 23:17:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankdetails`
--
ALTER TABLE `bankdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bankdetails`
--
ALTER TABLE `bankdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
