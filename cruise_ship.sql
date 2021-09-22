-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 10:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cruise_ship`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `name`, `email`, `password`, `mobile`, `created_date`) VALUES
(2, 'Admin', 'admin@gmail.com', 'test', '09790675343', '2017-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `allorders`
--

CREATE TABLE IF NOT EXISTS `allorders` (
`booking_id` int(100) NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(500) COLLATE utf8_bin NOT NULL,
  `category` varchar(100) COLLATE utf8_bin NOT NULL,
  `quantity` int(100) NOT NULL,
  `amount` varchar(1000) COLLATE utf8_bin NOT NULL,
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `allorders`
--

INSERT INTO `allorders` (`booking_id`, `type`, `name`, `category`, `quantity`, `amount`, `user_email`, `date`) VALUES
(1, 'Catering', 'Chatpata Aloo', 'Starters', 10, '1490', 'user@gmail.com', '19-02-2016'),
(2, 'Catering', 'Bhuna Paneer Kebab Masala', 'Starters', 1, '215', 'user@gmail.com', '19-02-2016'),
(3, 'Stationary', 'Parker Classic Gold', 'Pens', 5, '1795', 'user@gmail.com', '19-02-2016'),
(6, 'Movie', 'Irudhi Suttru', 'Sports', 2, '308', 'user@gmail.com', '19-02-2016'),
(7, 'Movie', 'Aranmanai 2', 'Comedy', 4, '480', 'user@gmail.com', '19-02-2016'),
(8, 'Stationary', 'Fastrack Shoulder Bag', 'Bags', 1, '1625', 'user@gmail.com', '19-02-2016'),
(9, 'Catering', 'Spicy Veg. Parantha Roll', 'Rolls', 10, '990', 'user@gmail.com', '19-02-2016'),
(10, 'Stationary', 'Plastic Stic File', 'File', 5, '500', 'user@gmail.com', '19-02-2016'),
(11, 'Catering', 'Veg. Kebab Biryani', 'Biryani', 1, '219', 'user@gmail.com', '19-02-2016'),
(12, 'Catering', 'Chatpata Aloo', 'Starters', 2, '298', 'user@gmail.com', '23-02-2016'),
(13, 'Stationary', 'Plastic Stic File', 'File', 5, '500', 'user@gmail.com', '23-02-2016'),
(14, 'Resort', 'Luxary Resort', 'Beach', 5, '5000', 'user@gmail.com', '15-03-2016'),
(15, 'Catering', 'Chatpata Aloo', 'Starters', 0, '0', 'user@gmail.com', '30-03-2016'),
(16, 'Catering', 'Chatpata Aloo', 'Starters', 1, '149', 'user@gmail.com', '12-06-2020'),
(17, 'Catering', 'Chatpata Aloo', 'Starters', 1, '149', 'user@gmail.com', '12-06-2020');

-- --------------------------------------------------------

--
-- Table structure for table `allproducts`
--

CREATE TABLE IF NOT EXISTS `allproducts` (
`id` int(100) NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(500) COLLATE utf8_bin NOT NULL,
  `category` varchar(500) COLLATE utf8_bin NOT NULL,
  `amount` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `allproducts`
--

INSERT INTO `allproducts` (`id`, `type`, `name`, `category`, `amount`) VALUES
(2, 'Catering', 'Bhuna Paneer Kebab Masala', 'Starters', 'Rs.215'),
(3, 'Catering', 'Bhuna Chicken Kebab Masala', 'Starters', 'Rs.225'),
(4, 'Catering', 'Hyderabadi Chicken Kebab', 'Starters', 'Rs.249'),
(5, 'Catering', 'Spicy Veg. Parantha Roll', 'Rolls', 'Rs.100'),
(6, 'Catering', 'Chicken 65 Tikka Kebab Roll', 'Rolls', 'Rs.149'),
(7, 'Catering', 'Bhuna Chicken Kebab Roll', 'Rolls', 'Rs.139'),
(8, 'Catering', 'Chatpata Aloo 65 Roll', 'Rolls', 'Rs.99'),
(9, 'Catering', 'Veg. Biryani', 'Biryani', 'Rs.198'),
(10, 'Catering', 'Peshawari Murg Biryani', 'Biryani', 'Rs.200'),
(11, 'Catering', 'Chicken Biryani Boneless', 'Biryani', 'Rs.247'),
(12, 'Catering', 'Veg. Kebab Biryani', 'Biryani', 'Rs.219'),
(13, 'Stationary', 'Reynolds Ball Pen', 'Pens', 'Rs.53.99'),
(14, 'Stationary', 'Parker Classic Gold', 'Pens', 'Rs.359.96'),
(15, 'Stationary', 'Noris Mechanical Pencil', 'Pencils & Erasers', 'Rs.50.89'),
(16, 'Stationary', 'FABER CASTLE PENCIL (Box)', 'Pencils & Erasers', 'Rs.25'),
(17, 'Stationary', 'Document File Bag', 'File', 'Rs.28'),
(18, 'Stationary', 'Plastic Stic File', 'File', 'Rs.100'),
(19, 'Stationary', 'Disney Friends Forever', 'Bags', 'Rs.1599'),
(20, 'Stationary', 'Fastrack Shoulder Bag', 'Bags', 'Rs.1625'),
(21, 'Stationary', 'Kangaro Stapler', 'Stapler', 'Rs.34.2'),
(22, 'Stationary', 'ELM Stapler', 'Stapler', 'Rs.1926'),
(23, 'Stationary', 'Casio Calculators', 'Calculators', 'Rs.382.2'),
(24, 'Stationary', 'Wilson Gold Scissors', 'Scissors', 'Rs.11.76'),
(25, 'Movie', 'Aranmanai 2', 'Comedy', 'Rs.120'),
(26, 'Movie', 'Jil Jung Juk', 'Action', 'Rs.120'),
(27, 'Movie', 'Irudhi Suttru', 'Sports', 'Rs.154'),
(28, 'Movie', 'Star Wars: The Force Awakens', 'Action', 'Rs.250'),
(29, 'Movie', 'Rajini Murugan', 'Romance', 'Rs.140'),
(30, 'Movie', 'Rajini Murugan', 'Drama', 'Rs.150'),
(31, 'Movie', 'Bangalore Naatkal', 'Drama', 'Rs.120'),
(32, 'Movie', 'Visaaranai', 'Thriller', 'Rs.149'),
(33, 'Movie', 'Vil Ambu', 'Thriller', 'Rs.220'),
(34, 'Movie', 'Action Hero Biju', 'Action', 'Rs.160'),
(35, 'Movie', 'Maheshinte Prathikaram', 'Comedy', 'Rs.180'),
(36, 'Movie', 'Krish Gaadi Veera Prema Gaadha', 'Romance', 'Rs.150'),
(37, 'Salon', 'test', 'test', '100');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
`user_id` int(20) NOT NULL,
  `ticket_no` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `phone` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `ticket_no`, `name`, `email`, `password`, `phone`) VALUES
(1, 'ship_001', 'user', 'user@gmail.com', 'test', '9629560316'),
(2, 'ship_002', 'revathi', 'revathijramadoss@gmail.com', 'revathi', '9874563210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `allorders`
--
ALTER TABLE `allorders`
 ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `allproducts`
--
ALTER TABLE `allproducts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `allorders`
--
ALTER TABLE `allorders`
MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `allproducts`
--
ALTER TABLE `allproducts`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
