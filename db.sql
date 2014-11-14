-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4792
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for restful
CREATE DATABASE IF NOT EXISTS `restful` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `restful`;


-- Dumping structure for table restful.candidates
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table restful.candidates: ~3 rows (approximately)
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` (`id`, `name`, `position`, `created_on`) VALUES
	(1, 'Ivan', 'PHP Developer', '2014-11-13 15:06:47'),
	(2, 'George', 'Java Developer', '2014-11-13 15:06:58'),
	(3, 'Petar ', 'JavaScript Developer', '2014-11-13 15:07:15');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;


-- Dumping structure for table restful.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table restful.jobs: ~3 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `position`, `description`, `created_on`) VALUES
	(1, 'Java Developer', 'Android, Swing ...', '2014-11-13 15:06:47'),
	(2, 'PHP Developer', 'Mysql, Apache ..etc', '2014-11-13 15:06:47'),
	(3, 'JavaScript Developer', 'jquery, nodejs ..etc', '2014-11-13 15:06:47');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
