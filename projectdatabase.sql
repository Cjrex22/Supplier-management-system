-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2012 at 07:25 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_info`
--

CREATE TABLE IF NOT EXISTS `client_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_delivery` double(12,2) NOT NULL DEFAULT '0.00',
  `total_discount` double(12,2) NOT NULL DEFAULT '0.00',
  `total_paid_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `datee` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

-- (Empty table client_info)

-- --------------------------------------------------------

--
-- Table structure for table `collection_table`
--

CREATE TABLE IF NOT EXISTS `collection_table` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taka` double(12,2) NOT NULL,
  `total_taka` double(12,2) NOT NULL,
  `collection_date` date NOT NULL,
  `discount` double(12,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

-- (Empty table collection_table)

-- --------------------------------------------------------

--
-- Table structure for table `delivery_table`
--

CREATE TABLE IF NOT EXISTS `delivery_table` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loading_place` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `length` double(12,2) NOT NULL,
  `width` double(12,2) NOT NULL,
  `height` double(12,2) NOT NULL,
  `amount` double(12,3) NOT NULL,
  `rate` double(12,2) NOT NULL,
  `total_amount` double(12,2) NOT NULL,
  `total_dalivery` double(12,2) NOT NULL,
  `due_taka` double(12,2) NOT NULL,
  `advance` double(12,2) NOT NULL,
  `remarks` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

-- (Empty table delivery_table)

-- --------------------------------------------------------

--
-- Table structure for table `discount_table`
--

CREATE TABLE IF NOT EXISTS `discount_table` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(12,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_table`
--

CREATE TABLE IF NOT EXISTS `document_table` (
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- (Empty table document_table)

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE IF NOT EXISTS `login_table` (
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `variable_table`
--

CREATE TABLE IF NOT EXISTS `variable_table` (
  `max_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_table`
--

INSERT INTO `variable_table` (`max_id`) VALUES
(19);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
