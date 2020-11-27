-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 05:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `c_id` int(30) NOT NULL,
  `u_id` int(30) NOT NULL,
  `i_id` int(30) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `u_id`, `i_id`, `comment`) VALUES
(6, 19, 11, 'Testy one.');

-- --------------------------------------------------------

--
-- Table structure for table `food_experience`
--

CREATE TABLE `food_experience` (
  `f_id` int(30) NOT NULL,
  `u_id` int(30) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `f_about` varchar(100) NOT NULL,
  `r_location` varchar(100) NOT NULL,
  `f_exp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_experience`
--

INSERT INTO `food_experience` (`f_id`, `u_id`, `u_name`, `f_about`, `r_location`, `f_exp`) VALUES
(2, 19, 'New Member', 'Cafe shania', 'Kuril', 'food quality is very bad but they follow pay first.');

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `i_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `i_name` varchar(100) NOT NULL,
  `i_detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`i_id`, `r_id`, `i_name`, `i_detail`) VALUES
(18, 14, 'Singara', 'Singara is made from potato, onion, green chili etc.'),
(19, 14, 'Chomosa ', 'Chomosa is made from flour, onion, green chili etc'),
(20, 14, 'Chicken Kabab', 'Chicken Kabab is made of chicken.'),
(21, 14, 'Porata', 'Porata is made from flour.'),
(22, 14, 'Fried rice', 'Fried rice is made from rice and vegetable.');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `r_id` int(30) NOT NULL,
  `r_name` varchar(100) NOT NULL,
  `r_location` varchar(30) NOT NULL,
  `r_details` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`r_id`, `r_name`, `r_location`, `r_details`) VALUES
(14, 'Cha Ghor', 'Kuril', 'This is a low level restaurant where cheap food is available.');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `user_relationship_status` varchar(30) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_location` varchar(20) NOT NULL,
  `user_gender` varchar(8) NOT NULL,
  `user_dob` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`user_id`, `user_name`, `user_email`, `user_type`, `user_relationship_status`, `user_password`, `user_location`, `user_gender`, `user_dob`) VALUES
(18, 'Admin', 'admin@gmail.com', 'Admin', 'Single', '1234', 'Gulsan-1', 'Male', '12/08/1990'),
(19, 'Member', 'member@gmail.com', 'Member', 'Married', '1234', 'Banani', 'Male', '10/06/2000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `food_experience`
--
ALTER TABLE `food_experience`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `item_details`
--
ALTER TABLE `item_details`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `c_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_experience`
--
ALTER TABLE `food_experience`
  MODIFY `f_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_details`
--
ALTER TABLE `item_details`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `r_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
