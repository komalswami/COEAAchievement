-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 11:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatable`
--

CREATE TABLE `datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `filepath` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatable`
--

INSERT INTO `datatable` (`id`, `name`, `email`, `filepath`) VALUES
(7, 'Ms. Komal Shivraj Swami', 'komalsswami@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\specialization.pdf'),
(8, 'Ms. Komal Shivraj Swami', 'komalsswami@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\cretificate.jpg'),
(9, 'Ms. Komal Shivraj Swami', 'komalsswami@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\Coursera Q37NZ6RJTCF3.pdf'),
(10, 'Ms. Komal Shivraj Swami', 'komalsswami@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\Coursera Q37NZ6RJTCF3.pdf'),
(11, 'Ms. tanvi milind ghanpathi', 'tanvighanpathi@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\Screenshot (47).png'),
(12, 'Ms. tanvi milind ghanpathi', 'tanvighanpathi@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\Screenshot (47).png'),
(13, 'Mr. himalay Shivraj Swami', 'himalay@gmail.com', 'C:\\xampp\\tomcat\\webapps\\ROOT\\data\\Screenshot (53).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datatable`
--
ALTER TABLE `datatable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datatable`
--
ALTER TABLE `datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datatable`
--
ALTER TABLE `datatable`
  ADD CONSTRAINT `datatable_ibfk_1` FOREIGN KEY (`email`) REFERENCES `maintable` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
