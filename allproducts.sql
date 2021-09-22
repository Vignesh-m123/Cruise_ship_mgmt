-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 07:13 AM
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
-- Table structure for table `allproducts`
--

CREATE TABLE IF NOT EXISTS `allproducts` (
`id` int(100) NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(500) COLLATE utf8_bin NOT NULL,
  `category` varchar(500) COLLATE utf8_bin NOT NULL,
  `amount` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `allproducts`
--

INSERT INTO `allproducts` (`id`, `type`, `name`, `category`, `amount`, `field_1`) VALUES
(2, 'Catering', 'test', 'Starters', 'Rs.250', 'http://localhost/projects/cruise_ship/web/uploads/paneer-butter-masala-paneer-makhani-500x500.jpg'),
(3, 'Catering', 'Bhuna Chicken Kebab Masala', 'Starters', 'Rs.225', 'http://localhost/projects/cruise_ship/web/uploads/Bhuna_Murgh_.jpg'),
(4, 'Catering', 'Hyderabadi Chicken Kebab', 'Starters', 'Rs.249', ''),
(5, 'Catering', 'Spicy Veg. Parantha Roll', 'Rolls', 'Rs.100', ''),
(6, 'Catering', 'Chicken 65 Tikka Kebab Roll', 'Rolls', 'Rs.149', ''),
(7, 'Catering', 'Bhuna Chicken Kebab Roll', 'Rolls', 'Rs.139', ''),
(8, 'Catering', 'Chatpata Aloo 65 Roll', 'Rolls', 'Rs.99', ''),
(9, 'Catering', 'Veg. Biryani', 'Biryani', 'Rs.198', ''),
(10, 'Catering', 'Peshawari Murg Biryani', 'Biryani', 'Rs.200', ''),
(11, 'Catering', 'Chicken Biryani Boneless', 'Biryani', 'Rs.247', ''),
(12, 'Catering', 'Veg. Kebab Biryani', 'Biryani', 'Rs.219', ''),
(13, 'Stationary', 'Reynolds Ball Pen', 'Pens', 'Rs.53.99', ''),
(14, 'Stationary', 'Parker Classic Gold', 'Pens', 'Rs.359.96', ''),
(15, 'Stationary', 'Noris Mechanical Pencil', 'Pencils & Erasers', 'Rs.50.89', ''),
(16, 'Stationary', 'FABER CASTLE PENCIL (Box)', 'Pencils & Erasers', 'Rs.25', ''),
(17, 'Stationary', 'Document File Bag', 'File', 'Rs.28', ''),
(18, 'Stationary', 'Plastic Stic File', 'File', 'Rs.100', ''),
(19, 'Stationary', 'Disney Friends Forever', 'Bags', 'Rs.1599', ''),
(20, 'Stationary', 'Fastrack Shoulder Bag', 'Bags', 'Rs.1625', ''),
(21, 'Stationary', 'Kangaro Stapler', 'Stapler', 'Rs.34.2', ''),
(22, 'Stationary', 'ELM Stapler', 'Stapler', 'Rs.1926', ''),
(23, 'Stationary', 'Casio Calculators', 'Calculators', 'Rs.382.2', ''),
(24, 'Stationary', 'Wilson Gold Scissors', 'Scissors', 'Rs.11.76', ''),
(25, 'Movie', 'Aranmanai 2', 'Comedy', 'Rs.120', ''),
(26, 'Movie', 'Jil Jung Juk', 'Action', 'Rs.120', ''),
(27, 'Movie', 'Irudhi Suttru', 'Sports', 'Rs.154', ''),
(28, 'Movie', 'Star Wars: The Force Awakens', 'Action', 'Rs.250', ''),
(29, 'Movie', 'Rajini Murugan', 'Romance', 'Rs.140', ''),
(30, 'Movie', 'Rajini Murugan', 'Drama', 'Rs.150', ''),
(31, 'Movie', 'Bangalore Naatkal', 'Drama', 'Rs.120', ''),
(32, 'Movie', 'Visaaranai', 'Thriller', 'Rs.149', ''),
(33, 'Movie', 'Vil Ambu', 'Thriller', 'Rs.220', ''),
(34, 'Movie', 'Action Hero Biju', 'Action', 'Rs.160', ''),
(35, 'Movie', 'Maheshinte Prathikaram', 'Comedy', 'Rs.180', ''),
(36, 'Movie', 'Krish Gaadi Veera Prema Gaadha', 'Romance', 'Rs.150', ''),
(37, 'Salon', 'test', 'test', '100', ''),
(38, 'Stationary', 'test', 'test', '100', ''),
(39, 'Resort', 'test', 'test', 'Rs.150', ''),
(40, 'Fitness', 'test', 'test', 'Rs.150', 'http://localhost/projects/cruise_ship/web/uploads/paneer-butter-masala-paneer-makhani-500x500.jpg'),
(41, 'Hall', 'test', 'test', 'Rs.150', 'http://localhost/projects/cruise_ship/web/uploads/paneer-butter-masala-paneer-makhani-500x500.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allproducts`
--
ALTER TABLE `allproducts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allproducts`
--
ALTER TABLE `allproducts`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
