-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2023 at 06:10 PM
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
-- Database: `rguktn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `a_name` varchar(64) NOT NULL,
  `sub_name` varchar(64) NOT NULL,
  `tea_name` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `file` varchar(64) NOT NULL,
  `download` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `a_name`, `sub_name`, `tea_name`, `branch`, `file`, `download`, `date`) VALUES
(3, 'unit1', 'TEF', 'Manish Mukhija', 'Computer science', 'Aj101090.pdf', 'Download', '2017-10-07'),
(4, 'unit2', 'dbms', 'vinod', 'Computer science', 'Aj977643.pdf', 'Download', '2017-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(128) NOT NULL,
  `uname` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`, `uname`, `pass`) VALUES
(8, 'Computer science', 'csadmin', 'Y3NhZG1pbg=='),
(9, 'Electronics', 'ecadmin', 'ZWNhZG1pbg=='),
(10, 'Electrical', 'eeadmin', 'ZWVhZG1pbg=='),
(11, 'Civil', 'cadmin', 'Y2FkbWlu'),
(12, 'Mechanical', 'meadmin', 'bWVhZG1pbg=='),
(13, '', '', 'QzVNaVhTdGM4QVo5czVx'),
(14, '', '', 'QzVNaVhTdGM4QVo5czVx');

-- --------------------------------------------------------

--
-- Table structure for table `mocktest`
--

CREATE TABLE `mocktest` (
  `id` int(11) NOT NULL,
  `m_name` varchar(64) NOT NULL,
  `sub_name` varchar(64) NOT NULL,
  `tea_name` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `file` varchar(64) NOT NULL,
  `download` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mocktest`
--

INSERT INTO `mocktest` (`id`, `m_name`, `sub_name`, `tea_name`, `branch`, `file`, `download`, `date`) VALUES
(4, 'TEf test', 'TEF', 'Manish Mukhija', 'Computer science', 'arpit_offer_letter254176.pdf', 'Download', '2017-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `notice` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `date`) VALUES
(1, 'Computer Science 5th sem project presentaion at 7 oct 2017', '2017-10-07'),
(2, 'newsletter is finally made', '2017-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` varchar(64) NOT NULL,
  `uname` varchar(64) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone`, `dob`, `branch`, `image`, `status`, `uname`, `pass`) VALUES
(10, 'Arpit Jain', 'jarpit1298@gmail.com', '07877743167', '2017-10-10', 'Computer science', 'arpit653706.jpg', 'success', 'jarpit1298@gmail.com', 'stu366265'),
(11, 'divyank', 'div@gmail.com', '1234567890', '2017-10-13', 'Computer science', 'Ashok Sir 1.jpg', 'success', 'div@gmail.com', 'stu48520'),
(12, 'manish', 'naman12@gmail.com', '7976411430', '2017-10-10', 'Computer science', 'arpit925617.jpg', 'success', 'naman12@gmail.com', 'stu739781');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` varchar(64) NOT NULL,
  `uname` varchar(64) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `phone`, `dob`, `branch`, `image`, `status`, `uname`, `pass`) VALUES
(2, 'Manish Mukhija', 'mukija1298@gmail.com', '7976411430', '2017-10-02', 'Computer science', 'IMG_7045.JPG', 'success', 'mukija1298@gmail.com', 'tea358319'),
(3, 'meenal', 'meenal123@gmail.com', '123456', '2017-10-03', 'Computer science', 'Front.jpg', 'pending', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mocktest`
--
ALTER TABLE `mocktest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mocktest`
--
ALTER TABLE `mocktest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
