-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2014 at 04:46 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restful`
--
CREATE DATABASE IF NOT EXISTS `restful` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restful`;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `position`, `created_on`) VALUES
(1, 'Ivan', 'PHP Developer', '2014-11-13 15:06:47'),
(2, 'George', 'Java Developer', '2014-11-13 15:06:58'),
(3, 'Petar ', 'JavaScript Developer', '2014-11-13 15:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `position`, `description`, `created_on`) VALUES
(1, 'Java Developer', 'Android, Swing ...', '2014-11-13 15:06:47'),
(2, 'PHP Developer', 'Mysql, Apache ..etc', '2014-11-13 15:06:47'),
(3, 'JavaScript Developer', 'jquery, nodejs ..etc', '2014-11-13 15:06:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
