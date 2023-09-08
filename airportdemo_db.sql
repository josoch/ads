-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg51.eigbox.net
-- Generation Time: Jul 03, 2017 at 01:10 PM
-- Server version: 5.6.32
-- PHP Version: 4.4.9
-- 
-- Database: `airportdemo_db`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_airport`
-- 

CREATE TABLE `tbl_airport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `tbl_airport`
-- 

INSERT INTO `tbl_airport` VALUES (1, 'Benin Airport (powered by Arewa)');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_arr_dep`
-- 

CREATE TABLE `tbl_arr_dep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_to` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `flight_no` varchar(255) NOT NULL,
  `shed` time NOT NULL,
  `gate` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` char(1) NOT NULL COMMENT 'A[arrival],B[departure]',
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `tbl_arr_dep`
-- 

INSERT INTO `tbl_arr_dep` VALUES (8, 'Abuja', 'Chachangi', '722', '15:30:00', '4', 'Clearing Luggages', 'D', NULL);
INSERT INTO `tbl_arr_dep` VALUES (17, 'Lagos', 'Aero Contractor', '208', '18:02:00', '18', '', 'D', NULL);
INSERT INTO `tbl_arr_dep` VALUES (14, 'Accra', 'Arik', '654', '01:00:00', '654', '654', 'A', 'arik.jpg');
INSERT INTO `tbl_arr_dep` VALUES (15, 'Lagos', 'Arik ', '807', '17:00:00', '12', '888', 'A', 'arik.jpg');
INSERT INTO `tbl_arr_dep` VALUES (18, 'London', 'BA', '288', '02:00:00', '3', '48', 'A', NULL);
INSERT INTO `tbl_arr_dep` VALUES (20, 'To calabar', 'Airpeace', 'Jka45', '13:51:00', '1', '', 'D', NULL);
INSERT INTO `tbl_arr_dep` VALUES (19, 'London', 'KLM', '6lkm', '15:59:00', '6541', '', 'D', NULL);
INSERT INTO `tbl_arr_dep` VALUES (21, '', '', '', '00:00:00', '', 'Delay 1hr', 'D', NULL);
INSERT INTO `tbl_arr_dep` VALUES (22, 'Lagos', 'Airpeace', '', '12:53:00', '4', '', 'A', NULL);
INSERT INTO `tbl_arr_dep` VALUES (23, 'test location', 'test airline', '654654', '01:00:00', '5', '', 'A', NULL);
INSERT INTO `tbl_arr_dep` VALUES (24, 'test loc', 'image', '6516', '03:01:00', '6', '', 'A', 'logo.png');
INSERT INTO `tbl_arr_dep` VALUES (25, 'Lagos', '', '722', '13:10:00', '2', '46', 'A', 'arik.jpg');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_eve`
-- 

CREATE TABLE `tbl_eve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `event` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `tbl_eve`
-- 

INSERT INTO `tbl_eve` VALUES (15, '14:01:00', '16:01:00', 'PAGEVIEW', 'fgf');
INSERT INTO `tbl_eve` VALUES (14, '13:00:00', '01:00:00', 'event', 'loc');
INSERT INTO `tbl_eve` VALUES (13, '13:00:00', '01:00:00', 'eveent', 'loc');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_news`
-- 

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `tbl_news`
-- 

INSERT INTO `tbl_news` VALUES (16, 'BOARDING IS ONGOING! Arik Flight 722 (Benin to Abuja)');
INSERT INTO `tbl_news` VALUES (8, 'Gate 22 is now open for public use');
INSERT INTO `tbl_news` VALUES (11, 'BREAKING NEWS! Terminal 7 is close for the day.');
INSERT INTO `tbl_news` VALUES (13, 'There is delay for Peace Nation Airline. Arrival will now be 18:59');
INSERT INTO `tbl_news` VALUES (12, 'Sanitation at all FAAN open sites will be between 08:00 - 10:000.');
INSERT INTO `tbl_news` VALUES (17, 'Chachangi Airlines resumes flight from Benin to Lagos');
