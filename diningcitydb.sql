-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 04:45 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diningcitydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_address`
--

CREATE TABLE IF NOT EXISTS `t_address` (
  `addId` int(10) NOT NULL AUTO_INCREMENT,
  `add_details` varchar(255) NOT NULL,
  `locId` int(10) NOT NULL,
  PRIMARY KEY (`addId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `t_address`
--

INSERT INTO `t_address` (`addId`, `add_details`, `locId`) VALUES
(1, 'Hotel Basera, 45-46', 1),
(2, 'Hotel Swarna, Janpath', 1),
(3, 'Rajmahal Square', 1),
(5, 'BMC Keshari Mall', 1),
(6, 'Rajmahal Square', 1),
(7, 'The Royale Midtown,Janpath', 1),
(8, 'BMC Keshari Mall, Unit 2', 1),
(9, '126/B, Janpath', 1),
(10, 'Hotel Sambit Palace,Rajmahal Square', 1),
(11, 'Hotel Sambit Palace, 25', 1),
(12, 'KIIT Road, Opposite SBI', 15),
(13, '2nd Floor, SJ Complex, Near SBI Bank, KIIT Road', 15),
(14, 'Mayfair Lagoon, 8-B', 9),
(15, 'Plot 12-13/557, 3rd Floor, Mauza Samantapuri,Gajapati Nagar', 5),
(16, '3, Infocity Road', 15),
(17, 'A/30-1', 12),
(18, '797, Near Shivam Honda Showroom', 17),
(19, 'Near Big Bazaar, Opposite HDFC Bank, Nandan Kanan Road', 15),
(20, '3, Infocity Road, Near Infocity Square', 15),
(21, 'Venus Inn, 217', 3),
(22, 'ITER Square', 8),
(23, 'Mayfair Lagoon, 8-B', 9),
(24, 'Near Big Bazzar, Nandankanan Road', 15),
(25, 'Above AXIS Bank, KIIT Road', 15),
(26, 'Nalco Square, Near Kalinga Hospital', 5),
(27, '6, Opposite Ram Mandir, Janpath', 12);

-- --------------------------------------------------------

--
-- Table structure for table `t_city`
--

CREATE TABLE IF NOT EXISTS `t_city` (
  `cityId` int(10) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_city`
--

INSERT INTO `t_city` (`cityId`, `city_name`) VALUES
(1, 'Bhubaneswar'),
(2, 'Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `t_cuisines`
--

CREATE TABLE IF NOT EXISTS `t_cuisines` (
  `cuisineId` int(10) NOT NULL AUTO_INCREMENT,
  `cuisine_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cuisineId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `t_cuisines`
--

INSERT INTO `t_cuisines` (`cuisineId`, `cuisine_name`) VALUES
(1, 'North Indian'),
(2, 'Mughlai'),
(3, 'Cafe'),
(4, 'South Indian'),
(5, 'Tea'),
(6, 'Bakery'),
(7, 'Fast Food'),
(8, 'Chinese'),
(9, 'Desserts'),
(10, 'Asian'),
(11, 'Continental'),
(12, 'Bengali'),
(13, 'Mithai'),
(14, ' Seafood'),
(15, 'American'),
(16, 'Oriya'),
(17, 'Italian'),
(19, 'Rajasthani'),
(20, 'Mediterranean'),
(21, 'Arabian');

-- --------------------------------------------------------

--
-- Table structure for table `t_location`
--

CREATE TABLE IF NOT EXISTS `t_location` (
  `locId` int(10) NOT NULL AUTO_INCREMENT,
  `loc_name` varchar(255) NOT NULL,
  `cityId` int(10) NOT NULL,
  PRIMARY KEY (`locId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `t_location`
--

INSERT INTO `t_location` (`locId`, `loc_name`, `cityId`) VALUES
(1, 'Ashok Nagar', 1),
(2, 'BJB Nagar', 1),
(3, 'Bapuji Nagar', 1),
(4, 'Baramunda', 1),
(5, 'Chandrasekharpur', 1),
(6, 'Forest Park', 1),
(7, 'Gajapati Nagar', 1),
(8, 'Jagmohan Nagar', 1),
(9, 'Jayadev Vihar', 1),
(10, 'Kalinga Nagar', 1),
(11, 'Khandagiri', 1),
(12, 'Kharabela Nagar', 1),
(13, 'Lakshmi Sagar', 1),
(14, 'Nayapalli', 1),
(15, 'Patia', 1),
(16, 'Patrapada', 1),
(17, 'Sahid Nagar', 1),
(18, 'Satya Nagar', 1),
(19, 'Surya Nagar', 1),
(20, 'Unit 4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_search`
--

CREATE TABLE IF NOT EXISTS `t_search` (
  `searchId` int(10) NOT NULL AUTO_INCREMENT,
  `locId` int(10) NOT NULL,
  `addId` int(10) NOT NULL,
  `cityId` int(10) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `cuisineId` varchar(30) NOT NULL,
  `type` varchar(255) NOT NULL,
  `cost` int(50) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`searchId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `t_search`
--

INSERT INTO `t_search` (`searchId`, `locId`, `addId`, `cityId`, `res_name`, `cuisineId`, `type`, `cost`, `contact`, `status`) VALUES
(1, 1, 1, 1, 'Narula''s Restaurant', '1,2', '1', 600, '0674 2533686', 'Y'),
(2, 15, 12, 1, 'JUGAAD JN.', '1', '1', 300, '+91 7735545031', 'Y'),
(3, 15, 13, 1, 'Marwari Rasoi', '1', '2', 300, '+91 9040026651', 'Y'),
(4, 9, 14, 1, 'Nakli Dhaba - Mayfair Lagoon', '1', '3', 1600, '+91 9238413099', 'Y'),
(6, 5, 15, 1, 'Barbeque Nation', '10', '1', 1200, '+91 9090953064', 'Y'),
(7, 15, 16, 1, 'Brewberrys The Coffee Bar', '3', '4', 400, '0674 6598884', 'Y'),
(8, 12, 17, 1, 'Priya Restaurant', '4', '1', 350, '0674 2362323', 'Y'),
(9, 17, 18, 1, 'Cha cTea', '3', '3', 500, '+91 7735226655', 'Y'),
(10, 15, 19, 1, 'Paris Bakery', '6', '5', 350, '+91 8338003800', 'Y'),
(11, 15, 20, 1, 'Dosa Plaza', '4', '4', 400, '0674 6598884', 'Y'),
(12, 3, 21, 1, 'Venus Restaurant', '4', '1', 400, '0674 2597110', 'Y'),
(13, 8, 22, 1, 'Brewbakes', '9', '4', 300, '+91 9777777737', 'Y'),
(14, 9, 23, 1, 'Tea Pot - Mayfair Lagoon', '11', '4', 1900, '0674 6660101', 'Y'),
(15, 15, 24, 1, 'Brewbakes', '3', '4', 400, '0674 6006166', 'Y'),
(16, 15, 25, 1, 'Cafe Frespresso', '3', '4', 300, '+91 9437379867', 'Y'),
(17, 5, 26, 1, 'Fusion Cafe', '7', '2', 200, '+91 9040122012', 'Y'),
(18, 12, 27, 1, 'Cafe Coffee Day', '3', '4', 400, '0674 6510435', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `t_srch_cuis`
--

CREATE TABLE IF NOT EXISTS `t_srch_cuis` (
  `searchId` int(10) NOT NULL,
  `cuisineId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_srch_cuis`
--

INSERT INTO `t_srch_cuis` (`searchId`, `cuisineId`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_type`
--

CREATE TABLE IF NOT EXISTS `t_type` (
  `typeId` int(10) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `t_type`
--

INSERT INTO `t_type` (`typeId`, `type_name`) VALUES
(1, 'CASUAL DINING'),
(2, 'QUICK BITES'),
(3, 'FINE DINING'),
(4, 'CAFE'),
(5, 'BAKERY'),
(6, 'SWEET SHOP'),
(7, 'FOOD COURT'),
(8, 'DESSERT PARLOR');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `fname`, `email`, `password`) VALUES
(1, 'Pritam', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Tulsi', 'tulsi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Ishan', 'in@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
