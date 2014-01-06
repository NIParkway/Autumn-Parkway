# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.15
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2011-11-28 19:38:25
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for parkway
CREATE DATABASE IF NOT EXISTS `parkway` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `parkway`;


# Dumping structure for table parkway.competitions
CREATE TABLE IF NOT EXISTS `competitions` (
  `CompIndex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CompName` tinytext COLLATE latin1_general_ci NOT NULL,
  `StartTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Duration` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`CompIndex`),
  UNIQUE KEY `CompName` (`CompName`(10))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.competitions: ~3 rows (approximately)
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT IGNORE INTO `competitions` (`CompIndex`, `CompName`, `StartTime`, `Duration`) VALUES
	(21, 'Comp0', '2011-10-09 17:42:08', 2),
	(22, 'Comp1', '2011-10-18 00:00:00', 1),
	(28, 'Comp\'Tition', '2011-10-25 17:33:50', 1);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;


# Dumping structure for table parkway.divcomps
CREATE TABLE IF NOT EXISTS `divcomps` (
  `CompIndex` int(10) unsigned NOT NULL,
  `DivIndex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DivName` tinytext COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`DivIndex`),
  UNIQUE KEY `DivName` (`DivName`(10),`CompIndex`),
  KEY `FK_divcomps_competitions` (`CompIndex`),
  CONSTRAINT `FK_divcomps_competitions` FOREIGN KEY (`CompIndex`) REFERENCES `competitions` (`CompIndex`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.divcomps: ~3 rows (approximately)
/*!40000 ALTER TABLE `divcomps` DISABLE KEYS */;
INSERT IGNORE INTO `divcomps` (`CompIndex`, `DivIndex`, `DivName`) VALUES
	(21, 1, 'Div0'),
	(22, 3, 'div99'),
	(21, 12, 'myDiv');
/*!40000 ALTER TABLE `divcomps` ENABLE KEYS */;


# Dumping structure for table parkway.divisions
CREATE TABLE IF NOT EXISTS `divisions` (
  `DivIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `TeamNumber` int(10) unsigned NOT NULL,
  UNIQUE KEY `DivIndex` (`DivIndex`,`TeamNumber`),
  KEY `FK_divisions_teams` (`TeamNumber`),
  CONSTRAINT `FK_divisions_divcomps` FOREIGN KEY (`DivIndex`) REFERENCES `divcomps` (`DivIndex`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_divisions_teams` FOREIGN KEY (`TeamNumber`) REFERENCES `teams` (`TeamNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.divisions: ~3 rows (approximately)
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT IGNORE INTO `divisions` (`DivIndex`, `TeamNumber`) VALUES
	(3, 2),
	(1, 63),
	(12, 555);
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;


# Dumping structure for table parkway.log
CREATE TABLE IF NOT EXISTS `log` (
  `msg` text COLLATE latin1_general_ci,
  `ErrorText` text COLLATE latin1_general_ci,
  `time entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.log: ~5 rows (approximately)
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT IGNORE INTO `log` (`msg`, `ErrorText`, `time entered`) VALUES
	('Unknown Error', 'Status TRUE Code 9999 Source SQL Connection Lost', '2011-11-26 17:23:46'),
	('Unknown Error', 'Status TRUE Code 9999 Source SQL Connection Lost', '2011-11-27 10:03:48'),
	('Unknown Error', 'Status TRUE Code 9999 Source SQL Connection Lost', '2011-11-28 10:13:51'),
	('Unknown Error', 'Status TRUE Code 9999 Source SQL Connection Lost', '2011-11-28 11:53:53'),
	('Unknown Error', 'Status TRUE Code 9999 Source SQL Connection Lost', '2011-11-28 13:33:52');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;


# Dumping structure for table parkway.notes
CREATE TABLE IF NOT EXISTS `notes` (
  `ReqNumber` int(10) unsigned DEFAULT NULL,
  `NoteIndex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NoteText` tinytext COLLATE latin1_general_ci,
  `TimeEntered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Author` tinytext COLLATE latin1_general_ci,
  `Solution` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`NoteIndex`),
  KEY `FK_Notes_requests` (`ReqNumber`),
  CONSTRAINT `FK_Notes_requests` FOREIGN KEY (`ReqNumber`) REFERENCES `requests` (`ReqNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=239757 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.notes: ~3 rows (approximately)
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT IGNORE INTO `notes` (`ReqNumber`, `NoteIndex`, `NoteText`, `TimeEntered`, `Author`, `Solution`) VALUES
	(5994, 1, 'gfds', '2011-10-17 23:46:55', 'sdf', 'N'),
	(5994, 2, 'note for test', '2011-10-11 18:16:06', 'ad', 'N'),
	(48596, 239756, 'Craptastic', '2011-11-09 18:06:11', 'Batman', 'N');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;


# Dumping structure for table parkway.requests
CREATE TABLE IF NOT EXISTS `requests` (
  `TeamNumber` int(10) unsigned NOT NULL,
  `ReqNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Description` tinytext COLLATE latin1_general_ci NOT NULL,
  `Status` enum('Open','In Work','Closed') COLLATE latin1_general_ci NOT NULL DEFAULT 'Open',
  `OpenDate` timestamp NULL DEFAULT NULL,
  `LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CloseDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ReqNumber`),
  KEY `FK_requests_teams` (`TeamNumber`,`Status`),
  CONSTRAINT `FK_requests_teams` FOREIGN KEY (`TeamNumber`) REFERENCES `teams` (`TeamNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48719 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.requests: ~116 rows (approximately)
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT IGNORE INTO `requests` (`TeamNumber`, `ReqNumber`, `Description`, `Status`, `OpenDate`, `LastUpdate`, `CloseDate`) VALUES
	(2, 5988, 'fsdfcjkl', 'Open', '2011-10-09 17:42:08', '2011-11-18 14:26:06', NULL),
	(2, 5990, 'fsdfcjkl', 'In Work', '2011-10-09 17:42:08', '2011-11-08 09:39:43', NULL),
	(2, 5991, 'fsdfcjklf', 'Open', '2011-10-09 17:42:09', '2011-11-22 19:18:07', NULL),
	(2, 5992, 'fsdfcjkl', 'Closed', '2011-10-18 18:00:00', '2011-11-08 09:39:43', NULL),
	(2, 5993, 'fsdfcjkl', 'In Work', '2011-10-09 17:42:09', '2011-11-08 09:39:43', NULL),
	(2, 5994, 'desc 5994', 'Closed', '2011-10-09 17:42:09', '2011-11-08 09:39:43', NULL),
	(2, 5996, 'fsdfcjkl', 'In Work', '2011-10-09 17:42:09', '2011-11-08 09:39:43', NULL),
	(2, 47984, '43f', 'Open', '2011-10-16 21:32:18', '2011-11-22 19:17:50', NULL),
	(2, 47986, 'New Request Post', 'Closed', '2011-10-22 18:00:00', '2011-11-08 09:39:43', NULL),
	(2, 48500, 'test', 'Open', '2011-10-18 18:18:27', '2011-11-08 09:39:43', NULL),
	(2, 48525, 'Test', 'Open', '2011-10-25 15:31:29', '2011-11-08 09:39:43', NULL),
	(2, 48530, 'test again', 'Open', '2011-10-25 16:41:11', '2011-11-08 09:39:43', NULL),
	(2, 48531, 'that\'s crap;edhjksahe', 'Open', '2011-10-25 16:59:26', '2011-11-08 09:39:43', NULL),
	(2, 48534, 'Full Test 3', 'Closed', '2011-10-25 17:17:08', '2011-11-08 09:39:43', NULL),
	(2, 48535, 'Hey Annie, you\'re a fish"lady" jerk', 'Open', '2011-10-25 17:23:48', '2011-11-08 09:39:43', NULL),
	(2, 48536, 'its okay TJ', 'Open', '2011-10-25 17:31:57', '2011-11-08 09:39:43', NULL),
	(2, 48537, 'working on assigner', 'Open', '2011-10-25 17:43:14', '2011-11-08 09:39:43', NULL),
	(2, 48538, 'TJ description', 'Open', '2011-10-25 18:33:39', '2011-11-08 09:39:43', NULL),
	(2, 48551, 'New read test', 'Open', '2011-10-26 13:20:58', '2011-11-08 09:39:43', NULL),
	(63, 48552, 'Could we please be in alpha', 'Open', '2011-10-26 13:51:43', '2011-11-08 09:39:43', NULL),
	(63, 48553, 'Could we please be in alpha', 'Open', '2011-10-26 13:52:22', '2011-11-08 09:39:43', NULL),
	(2, 48555, 'redirect test', 'Open', '2011-10-26 13:59:39', '2011-11-08 09:39:43', NULL),
	(63, 48556, 'Test for Mark', 'Open', '2011-10-26 14:47:14', '2011-11-08 09:39:43', NULL),
	(63, 48557, 'Redirect should work', 'Open', '2011-10-26 15:12:22', '2011-11-08 09:39:43', NULL),
	(63, 48558, 'Redirect should work', 'Open', '2011-10-26 15:12:41', '2011-11-08 09:39:43', NULL),
	(2, 48559, 'Test redirect theory', 'Open', '2011-10-26 15:24:06', '2011-11-08 09:39:43', NULL),
	(2, 48560, 'Test that we\'re back', 'Open', '2011-10-26 15:28:56', '2011-11-08 09:39:43', NULL),
	(63, 48561, 'Test on assigner', 'Open', '2011-10-26 17:02:53', '2011-11-08 09:39:43', NULL),
	(2, 48562, 'Test again', 'Open', '2011-10-26 17:04:59', '2011-11-08 09:39:43', NULL),
	(2, 48563, 'xml test', 'Open', '2011-10-26 17:06:10', '2011-11-08 09:39:43', NULL),
	(63, 48564, 'Test again?', 'Open', '2011-10-26 17:10:13', '2011-11-08 09:39:43', NULL),
	(2, 48565, 'Testing it out from my desk!', 'Open', '2011-10-26 17:34:48', '2011-11-08 09:39:43', NULL),
	(2, 48567, 'request', 'Open', '2011-10-26 17:35:25', '2011-11-08 09:39:43', NULL),
	(2, 48568, 'Testing it out from my desk!', 'Open', '2011-10-26 17:37:31', '2011-11-08 09:39:43', NULL),
	(63, 48569, 'Again!', 'Open', '2011-10-27 08:28:27', '2011-11-08 09:39:43', NULL),
	(63, 48570, 'This is a new test', 'Open', '2011-10-27 14:50:12', '2011-11-08 09:39:43', NULL),
	(2, 48571, 'I\'m testing from my computer', 'Open', '2011-10-27 14:59:52', '2011-11-08 09:39:43', NULL),
	(2, 48572, 'lkjhlkjhljk', 'Open', '2011-10-27 15:46:28', '2011-11-08 09:39:43', NULL),
	(63, 48573, 'Test', 'Open', '2011-10-28 12:18:26', '2011-11-08 09:39:43', NULL),
	(2, 48574, 'Redirect test', 'Open', '2011-10-28 12:21:46', '2011-11-08 09:39:43', NULL),
	(2, 48575, 'It\'s working! It\'s working! -Anakin Skywalker', 'Open', '2011-10-28 13:24:14', '2011-11-08 09:39:43', NULL),
	(2, 48576, 'What the hell scott?', 'Open', '2011-10-28 14:11:48', '2011-11-08 09:39:43', NULL),
	(2, 48577, 'Free energy from Thunderclouds!!!', 'Open', '2011-10-28 15:32:51', '2011-11-08 09:39:43', NULL),
	(2, 48578, 'Test again\r\n', 'Open', '2011-10-28 15:36:07', '2011-11-08 09:39:43', NULL),
	(2, 48579, 'Test again\r\n', 'Open', '2011-10-28 15:36:11', '2011-11-08 09:39:43', NULL),
	(2, 48580, 'Test again\r\n', 'Open', '2011-10-28 15:36:13', '2011-11-08 09:39:43', NULL),
	(2, 48581, 'duh', 'Open', '2011-10-28 15:36:30', '2011-11-08 09:39:43', NULL),
	(2, 48596, 'again', 'Open', '2011-10-28 15:38:36', '2011-11-08 09:39:43', NULL),
	(2, 48599, 'testing', 'Open', '2011-10-28 15:40:28', '2011-11-08 09:39:43', NULL),
	(2, 48600, 'please work', 'Open', '2011-10-28 15:44:50', '2011-11-08 09:39:43', NULL),
	(2, 48601, 'Still work?', 'Open', '2011-10-28 16:20:10', '2011-11-08 09:39:43', NULL),
	(59, 48602, 'Test on new team', 'Closed', '2011-10-31 09:22:24', '2011-11-08 09:39:43', NULL),
	(59, 48603, 'Test for TJ', 'Open', '2011-10-31 09:40:22', '2011-11-08 09:39:43', NULL),
	(59, 48604, 'validating bug', 'Open', '2011-10-31 09:49:32', '2011-11-08 09:39:43', NULL),
	(63, 48605, 'this is another test\r\n', 'Open', '2011-11-01 11:47:40', '2011-11-08 09:39:43', NULL),
	(63, 48606, 'this is another test\r\n', 'Open', '2011-11-01 11:57:16', '2011-11-08 09:39:43', NULL),
	(63, 48607, 'this is another test\r\n', 'Open', '2011-11-01 11:59:21', '2011-11-08 09:39:43', NULL),
	(2, 48608, 'asdf;lkj', 'Open', '2011-11-01 13:29:08', '2011-11-08 09:39:43', NULL),
	(59, 48609, 'new request is teh sux!', 'Open', '2011-11-01 13:41:35', '2011-11-08 09:39:43', NULL),
	(63, 48610, 'asdfasdfasdfasdf', 'Open', '2011-11-01 14:09:22', '2011-11-08 09:39:43', NULL),
	(7, 48611, 'asd;flkjasdf', 'Open', '2011-11-01 14:50:48', '2011-11-08 09:39:43', NULL),
	(59, 48614, 'this is a description', 'Open', '2011-11-01 16:21:55', '2011-11-08 09:39:43', NULL),
	(59, 48615, 'This is a really tough issue...', 'Open', '2011-11-01 16:44:45', '2011-11-08 09:39:43', NULL),
	(2, 48616, 'new test', 'Open', '2011-11-01 17:13:48', '2011-11-08 09:39:43', NULL),
	(59, 48617, 'this is a test', 'Open', '2011-11-02 16:48:23', '2011-11-08 09:39:43', NULL),
	(59, 48618, 'this is another test for chris', 'Open', '2011-11-02 16:50:20', '2011-11-08 09:39:43', NULL),
	(59, 48619, 'My request', 'Open', '2011-11-03 15:27:52', '2011-11-08 09:39:43', NULL),
	(7, 48620, 'This a request from my computer', 'Open', '2011-11-03 15:28:25', '2011-11-08 09:39:43', NULL),
	(2, 48621, 'new', 'Open', '2011-11-03 15:47:22', '2011-11-08 09:39:43', NULL),
	(2, 48622, 'test', 'Open', '2011-11-03 15:48:23', '2011-11-08 09:39:43', NULL),
	(2, 48623, 'will you redirect?', 'Open', '2011-11-03 15:54:24', '2011-11-08 09:39:43', NULL),
	(2, 48624, 'Does this work?', 'Open', '2011-11-03 16:51:38', '2011-11-08 09:39:43', NULL),
	(2, 48625, 'This is my next\r\n\r\n', 'Open', '2011-11-03 20:47:33', '2011-11-08 09:39:43', NULL),
	(2, 48626, 'This is my First\r\nRequest \r\n', 'Open', '2011-11-03 20:48:28', '2011-11-08 09:39:43', NULL),
	(63, 48627, 'Can\'t view my other requests?', 'Open', '2011-11-03 20:51:54', '2011-11-08 09:39:43', NULL),
	(2, 48628, 'testing', 'Open', '2011-11-04 10:18:14', '2011-11-08 10:04:19', '2011-11-08 10:04:18'),
	(59, 48629, 'This is a new request for team 59...', 'Open', '2011-11-09 08:46:24', '2011-11-09 08:46:24', NULL),
	(555, 48630, 'This is a test of the cool new css stuff', 'Open', '2011-11-09 13:07:19', '2011-11-09 13:07:19', NULL),
	(555, 48631, 'this is a new request that I will add a comment to.', 'Open', '2011-11-09 13:07:48', '2011-11-09 13:07:48', NULL),
	(7, 48632, 'This is my next test', 'Open', '2011-11-09 13:10:59', '2011-11-09 13:10:59', NULL),
	(7, 48633, 'oh', 'Open', '2011-11-09 13:11:56', '2011-11-09 13:11:56', NULL),
	(63, 48634, 'this is a new issue for team 63...', 'Open', '2011-11-09 13:14:54', '2011-11-09 13:14:54', NULL),
	(59, 48635, 'this is a new test...', 'Open', '2011-11-09 13:26:43', '2011-11-09 13:26:43', NULL),
	(63, 48636, 'This is a new issue again\r\n', 'Open', '2011-11-09 13:35:35', '2011-11-09 13:35:35', NULL),
	(7, 48637, 'This is a test', 'Open', '2011-11-09 13:37:53', '2011-11-09 13:37:53', NULL),
	(555, 48638, 'Testing location in header', 'Open', '2011-11-09 13:38:56', '2011-11-09 13:38:56', NULL),
	(2, 48639, 'blah', 'Open', '2011-11-09 15:58:56', '2011-11-09 15:58:56', NULL),
	(2, 48640, 'tsasdf\r\n', 'Open', '2011-11-09 16:03:09', '2011-11-09 16:03:09', NULL),
	(2, 48641, 'THis is another test issue', 'Open', '2011-11-09 16:35:14', '2011-11-09 16:35:14', NULL),
	(2, 48642, 'THis is another test issue', 'Open', '2011-11-09 16:36:04', '2011-11-09 16:36:04', NULL),
	(2, 48643, 'test 2', 'Open', '2011-11-09 16:37:43', '2011-11-09 16:37:43', NULL),
	(59, 48644, 'This is a new SR', 'Open', '2011-11-09 16:45:27', '2011-11-09 16:45:27', NULL),
	(59, 48645, 'This is a test. I should get redirected properly this time.', 'Open', '2011-11-09 16:54:09', '2011-11-09 16:54:09', NULL),
	(63, 48646, 'this is a test', 'Open', '2011-11-09 17:03:42', '2011-11-09 17:03:42', NULL),
	(59, 48648, 'Fishing is for happy happy people.', 'Open', '2011-11-10 12:54:44', '2011-11-10 12:54:44', NULL),
	(2, 48649, 'I\'m testing from my computer', 'Open', '2011-11-14 16:18:08', '2011-11-14 16:18:08', NULL),
	(2, 48650, 'Automated Testing', 'Open', '2011-11-14 16:19:08', '2011-11-14 16:19:08', NULL),
	(2, 48651, 'Automated Testing', 'Open', '2011-11-14 16:19:48', '2011-11-14 16:19:48', NULL),
	(2, 48652, 'Automated Testing', 'Open', '2011-11-14 16:20:51', '2011-11-14 16:20:51', NULL),
	(2, 48653, 'Automated Testing', 'Open', '2011-11-14 16:22:06', '2011-11-14 16:22:06', NULL),
	(2, 48654, 'Automated Testing', 'Open', '2011-11-14 16:22:39', '2011-11-14 16:22:39', NULL),
	(2, 48655, 'Automated Testing', 'Open', '2011-11-14 16:23:18', '2011-11-14 16:23:18', NULL),
	(2, 48656, 'Automated Testing', 'Open', '2011-11-14 16:23:41', '2011-11-14 16:23:41', NULL),
	(2, 48657, 'Automated Testing', 'Open', '2011-11-14 16:46:49', '2011-11-14 16:46:49', NULL),
	(2, 48658, 'Automated Testing', 'Open', '2011-11-14 16:47:15', '2011-11-14 16:47:15', NULL),
	(2, 48659, 'I\'m testing from my computer', 'Open', '2011-11-15 07:53:57', '2011-11-15 07:53:57', NULL),
	(2, 48660, 'Automated Testing', 'Open', '2011-11-15 07:54:16', '2011-11-15 07:54:16', NULL),
	(2, 48661, 'Automated Testing', 'Open', '2011-11-15 07:55:27', '2011-11-15 07:55:27', NULL),
	(2, 48662, 'Automated Testing', 'In Work', '2011-11-15 08:23:05', '2011-11-15 08:23:05', NULL),
	(2, 48688, 'Automated Testing', 'In Work', '2011-11-15 14:47:13', '2011-11-15 14:47:13', NULL),
	(2, 48690, 'I\'m testing from my computer', 'Open', '2011-11-15 14:49:40', '2011-11-15 14:49:40', NULL),
	(2, 48691, 'Automated Testing', 'In Work', '2011-11-15 14:52:41', '2011-11-15 14:52:41', NULL),
	(2, 48692, 'Automated Testing', 'In Work', '2011-11-15 14:54:06', '2011-11-15 14:54:06', NULL),
	(59, 48714, 'I am testing this again!', 'Open', '2011-11-16 12:48:05', '2011-11-16 12:48:05', NULL),
	(63, 48717, 'this is my next request \r\n1soidnosijdiosjfoso', 'Open', '2011-11-22 13:39:35', '2011-11-22 13:39:35', NULL),
	(2, 48718, 'ok HI', 'Open', '2011-11-22 13:42:24', '2011-11-22 13:42:24', NULL);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;


# Dumping structure for table parkway.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `TeamNumber` int(10) unsigned NOT NULL,
  `SoftwareType` enum('unknown','LabVIEW','Windriver, C++','JavaBeans','Other') COLLATE latin1_general_ci NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`TeamNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

# Dumping data for table parkway.teams: ~9 rows (approximately)
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT IGNORE INTO `teams` (`TeamNumber`, `SoftwareType`) VALUES
	(2, 'JavaBeans'),
	(3, 'LabVIEW'),
	(4, 'JavaBeans'),
	(7, 'unknown'),
	(9, 'JavaBeans'),
	(59, 'LabVIEW'),
	(63, 'LabVIEW'),
	(78, 'LabVIEW'),
	(555, 'LabVIEW');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;


# Dumping structure for table parkway.vlog_comp
CREATE TABLE IF NOT EXISTS `vlog_comp` (
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Action` enum('POST','PUT','DELETE') COLLATE latin1_general_ci NOT NULL,
  `CompName` tinytext COLLATE latin1_general_ci NOT NULL,
  `StartTimeOld` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `StartTimeNew` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DurationOld` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `DurationNew` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

# Dumping data for table parkway.vlog_comp: ~0 rows (approximately)
/*!40000 ALTER TABLE `vlog_comp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vlog_comp` ENABLE KEYS */;


# Dumping structure for table parkway.vlog_div
CREATE TABLE IF NOT EXISTS `vlog_div` (
  `CompName` tinytext COLLATE latin1_general_ci NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Action` enum('POST','PUT','PUTDELETE','DELETE') COLLATE latin1_general_ci NOT NULL,
  `DivName` tinytext COLLATE latin1_general_ci NOT NULL,
  `TeamNumber` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

# Dumping data for table parkway.vlog_div: ~1 rows (approximately)
/*!40000 ALTER TABLE `vlog_div` DISABLE KEYS */;
INSERT IGNORE INTO `vlog_div` (`CompName`, `Time`, `Action`, `DivName`, `TeamNumber`) VALUES
	('None', '2011-11-22 18:53:17', 'PUT', 'myDiv', 555);
/*!40000 ALTER TABLE `vlog_div` ENABLE KEYS */;


# Dumping structure for table parkway.vlog_notes
CREATE TABLE IF NOT EXISTS `vlog_notes` (
  `NoteIndex` int(10) unsigned NOT NULL,
  `Action` enum('POST','PUT','DELETE') COLLATE latin1_general_ci NOT NULL,
  `ReqNumber` int(10) unsigned NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SolutionOld` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `SolutionNew` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

# Dumping data for table parkway.vlog_notes: ~66 rows (approximately)
/*!40000 ALTER TABLE `vlog_notes` DISABLE KEYS */;
INSERT IGNORE INTO `vlog_notes` (`NoteIndex`, `Action`, `ReqNumber`, `Time`, `SolutionOld`, `SolutionNew`) VALUES
	(239757, 'POST', 48693, '2011-11-15 14:55:00', 'N', 'N'),
	(239757, 'PUT', 48693, '2011-11-15 14:55:00', 'N', 'Y'),
	(239757, 'DELETE', 48693, '2011-11-15 14:55:00', 'Y', 'Y'),
	(239758, 'POST', 48694, '2011-11-15 14:57:34', 'N', 'N'),
	(239758, 'PUT', 48694, '2011-11-15 14:57:34', 'N', 'Y'),
	(239758, 'DELETE', 48694, '2011-11-15 14:57:34', 'Y', 'Y'),
	(239759, 'POST', 48695, '2011-11-15 15:21:41', 'N', 'N'),
	(239759, 'PUT', 48695, '2011-11-15 15:21:41', 'N', 'Y'),
	(239759, 'DELETE', 48695, '2011-11-15 15:21:41', 'Y', 'Y'),
	(239760, 'POST', 48696, '2011-11-15 15:27:30', 'N', 'N'),
	(239760, 'PUT', 48696, '2011-11-15 15:27:30', 'N', 'Y'),
	(239760, 'DELETE', 48696, '2011-11-15 15:27:30', 'Y', 'Y'),
	(239761, 'POST', 48697, '2011-11-15 16:25:32', 'N', 'N'),
	(239761, 'PUT', 48697, '2011-11-15 16:25:33', 'N', 'Y'),
	(239761, 'DELETE', 48697, '2011-11-15 16:25:33', 'Y', 'Y'),
	(239762, 'POST', 48698, '2011-11-15 17:19:38', 'N', 'N'),
	(239762, 'PUT', 48698, '2011-11-15 17:19:38', 'N', 'Y'),
	(239762, 'DELETE', 48698, '2011-11-15 17:19:38', 'Y', 'Y'),
	(239763, 'POST', 48699, '2011-11-15 17:26:01', 'N', 'N'),
	(239763, 'PUT', 48699, '2011-11-15 17:26:01', 'N', 'Y'),
	(239763, 'DELETE', 48699, '2011-11-15 17:26:02', 'Y', 'Y'),
	(239764, 'POST', 48700, '2011-11-15 17:30:28', 'N', 'N'),
	(239764, 'PUT', 48700, '2011-11-15 17:30:28', 'N', 'Y'),
	(239764, 'DELETE', 48700, '2011-11-15 17:30:28', 'Y', 'Y'),
	(239765, 'POST', 48701, '2011-11-15 17:34:26', 'N', 'N'),
	(239765, 'PUT', 48701, '2011-11-15 17:34:26', 'N', 'Y'),
	(239765, 'DELETE', 48701, '2011-11-15 17:34:26', 'Y', 'Y'),
	(239766, 'POST', 48702, '2011-11-15 17:37:41', 'N', 'N'),
	(239766, 'PUT', 48702, '2011-11-15 17:37:42', 'N', 'Y'),
	(239766, 'DELETE', 48702, '2011-11-15 17:37:42', 'Y', 'Y'),
	(239767, 'POST', 48703, '2011-11-15 17:40:18', 'N', 'N'),
	(239767, 'PUT', 48703, '2011-11-15 17:40:18', 'N', 'Y'),
	(239767, 'DELETE', 48703, '2011-11-15 17:40:18', 'Y', 'Y'),
	(239768, 'POST', 48704, '2011-11-15 17:41:26', 'N', 'N'),
	(239768, 'PUT', 48704, '2011-11-15 17:41:26', 'N', 'Y'),
	(239768, 'DELETE', 48704, '2011-11-15 17:41:26', 'Y', 'Y'),
	(239769, 'POST', 48705, '2011-11-15 18:00:31', 'N', 'N'),
	(239769, 'PUT', 48705, '2011-11-15 18:00:31', 'N', 'Y'),
	(239769, 'DELETE', 48705, '2011-11-15 18:00:31', 'Y', 'Y'),
	(239770, 'POST', 48706, '2011-11-15 18:18:37', 'N', 'N'),
	(239770, 'PUT', 48706, '2011-11-15 18:18:37', 'N', 'Y'),
	(239770, 'DELETE', 48706, '2011-11-15 18:18:37', 'Y', 'Y'),
	(239771, 'POST', 48707, '2011-11-15 18:19:21', 'N', 'N'),
	(239771, 'PUT', 48707, '2011-11-15 18:19:21', 'N', 'Y'),
	(239771, 'DELETE', 48707, '2011-11-15 18:19:21', 'Y', 'Y'),
	(239772, 'POST', 48708, '2011-11-16 08:31:26', 'N', 'N'),
	(239772, 'PUT', 48708, '2011-11-16 08:31:26', 'N', 'Y'),
	(239772, 'DELETE', 48708, '2011-11-16 08:31:27', 'Y', 'Y'),
	(239773, 'POST', 48709, '2011-11-16 10:26:46', 'N', 'N'),
	(239773, 'PUT', 48709, '2011-11-16 10:26:46', 'N', 'Y'),
	(239773, 'DELETE', 48709, '2011-11-16 10:26:46', 'Y', 'Y'),
	(239774, 'POST', 48710, '2011-11-16 10:34:50', 'N', 'N'),
	(239774, 'PUT', 48710, '2011-11-16 10:34:50', 'N', 'Y'),
	(239774, 'DELETE', 48710, '2011-11-16 10:34:50', 'Y', 'Y'),
	(239775, 'POST', 48711, '2011-11-16 11:35:59', 'N', 'N'),
	(239775, 'PUT', 48711, '2011-11-16 11:36:00', 'N', 'Y'),
	(239775, 'DELETE', 48711, '2011-11-16 11:36:00', 'Y', 'Y'),
	(239776, 'POST', 48712, '2011-11-16 11:36:10', 'N', 'N'),
	(239776, 'PUT', 48712, '2011-11-16 11:36:11', 'N', 'Y'),
	(239776, 'DELETE', 48712, '2011-11-16 11:36:11', 'Y', 'Y'),
	(239777, 'POST', 48713, '2011-11-16 12:15:55', 'N', 'N'),
	(239777, 'PUT', 48713, '2011-11-16 12:15:55', 'N', 'Y'),
	(239777, 'DELETE', 48713, '2011-11-16 12:15:56', 'Y', 'Y'),
	(239778, 'POST', 48716, '2011-11-22 13:03:44', 'N', 'N'),
	(239778, 'PUT', 48716, '2011-11-22 13:03:45', 'N', 'Y'),
	(239778, 'DELETE', 48716, '2011-11-22 13:03:45', 'Y', 'Y');
/*!40000 ALTER TABLE `vlog_notes` ENABLE KEYS */;


# Dumping structure for table parkway.vlog_requests
CREATE TABLE IF NOT EXISTS `vlog_requests` (
  `ReqNumber` int(10) unsigned NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Action` enum('POST','PUT','DELETE') COLLATE latin1_general_ci NOT NULL,
  `TeamNumber` int(10) unsigned NOT NULL,
  `StatusOld` enum('Open','In Work','Closed') COLLATE latin1_general_ci NOT NULL,
  `StatusNew` enum('Open','In Work','Closed') COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

# Dumping data for table parkway.vlog_requests: ~152 rows (approximately)
/*!40000 ALTER TABLE `vlog_requests` DISABLE KEYS */;
INSERT IGNORE INTO `vlog_requests` (`ReqNumber`, `Time`, `Action`, `TeamNumber`, `StatusOld`, `StatusNew`) VALUES
	(48648, '2011-11-10 12:54:44', 'POST', 59, 'Open', 'Open'),
	(48649, '2011-11-14 16:18:08', 'POST', 2, 'Open', 'Open'),
	(48650, '2011-11-14 16:19:08', 'POST', 2, 'Open', 'Open'),
	(48651, '2011-11-14 16:19:48', 'POST', 2, 'Open', 'Open'),
	(48652, '2011-11-14 16:20:51', 'POST', 2, 'Open', 'Open'),
	(48653, '2011-11-14 16:22:06', 'POST', 2, 'Open', 'Open'),
	(48654, '2011-11-14 16:22:39', 'POST', 2, 'Open', 'Open'),
	(48655, '2011-11-14 16:23:18', 'POST', 2, 'Open', 'Open'),
	(48656, '2011-11-14 16:23:41', 'POST', 2, 'Open', 'Open'),
	(48657, '2011-11-14 16:46:49', 'POST', 2, 'Open', 'Open'),
	(48658, '2011-11-14 16:47:15', 'POST', 2, 'Open', 'Open'),
	(48659, '2011-11-15 07:53:57', 'POST', 2, 'Open', 'Open'),
	(48660, '2011-11-15 07:54:16', 'POST', 2, 'Open', 'Open'),
	(48661, '2011-11-15 07:55:27', 'POST', 2, 'Open', 'Open'),
	(48662, '2011-11-15 08:23:05', 'POST', 2, 'Open', 'Open'),
	(48662, '2011-11-15 08:23:05', 'PUT', 2, 'Open', 'In Work'),
	(48663, '2011-11-15 08:31:26', 'POST', 2, 'Open', 'Open'),
	(48663, '2011-11-15 08:31:26', 'PUT', 2, 'Open', 'In Work'),
	(48663, '2011-11-15 08:31:26', 'DELETE', 2, 'In Work', 'In Work'),
	(48664, '2011-11-15 08:31:56', 'POST', 2, 'Open', 'Open'),
	(48664, '2011-11-15 08:31:56', 'PUT', 2, 'Open', 'In Work'),
	(48664, '2011-11-15 08:31:57', 'DELETE', 2, 'In Work', 'In Work'),
	(48665, '2011-11-15 08:32:31', 'POST', 2, 'Open', 'Open'),
	(48665, '2011-11-15 08:32:31', 'PUT', 2, 'Open', 'In Work'),
	(48665, '2011-11-15 08:32:31', 'DELETE', 2, 'In Work', 'In Work'),
	(48666, '2011-11-15 09:16:46', 'POST', 2, 'Open', 'Open'),
	(48666, '2011-11-15 09:16:46', 'PUT', 2, 'Open', 'In Work'),
	(48666, '2011-11-15 09:16:47', 'DELETE', 2, 'In Work', 'In Work'),
	(48667, '2011-11-15 09:35:38', 'POST', 2, 'Open', 'Open'),
	(48667, '2011-11-15 09:35:38', 'PUT', 2, 'Open', 'In Work'),
	(48667, '2011-11-15 09:35:38', 'DELETE', 2, 'In Work', 'In Work'),
	(48668, '2011-11-15 10:00:56', 'POST', 2, 'Open', 'Open'),
	(48668, '2011-11-15 10:00:57', 'PUT', 2, 'Open', 'In Work'),
	(48668, '2011-11-15 10:00:57', 'DELETE', 2, 'In Work', 'In Work'),
	(48669, '2011-11-15 10:14:54', 'POST', 2, 'Open', 'Open'),
	(48669, '2011-11-15 10:14:54', 'PUT', 2, 'Open', 'In Work'),
	(48669, '2011-11-15 10:14:54', 'DELETE', 2, 'In Work', 'In Work'),
	(48670, '2011-11-15 10:15:29', 'POST', 2, 'Open', 'Open'),
	(48670, '2011-11-15 10:15:29', 'PUT', 2, 'Open', 'Closed'),
	(48670, '2011-11-15 10:15:29', 'DELETE', 2, 'Closed', 'Closed'),
	(48671, '2011-11-15 11:28:14', 'POST', 2, 'Open', 'Open'),
	(48671, '2011-11-15 11:28:14', 'PUT', 2, 'Open', 'In Work'),
	(48671, '2011-11-15 11:28:14', 'DELETE', 2, 'In Work', 'In Work'),
	(48672, '2011-11-15 11:33:40', 'POST', 2, 'Open', 'Open'),
	(48672, '2011-11-15 11:33:40', 'PUT', 2, 'Open', 'In Work'),
	(48672, '2011-11-15 11:33:40', 'DELETE', 2, 'In Work', 'In Work'),
	(48673, '2011-11-15 12:36:57', 'POST', 2, 'Open', 'Open'),
	(48673, '2011-11-15 12:36:57', 'PUT', 2, 'Open', 'In Work'),
	(48673, '2011-11-15 12:36:57', 'DELETE', 2, 'In Work', 'In Work'),
	(48674, '2011-11-15 12:54:22', 'POST', 2, 'Open', 'Open'),
	(48674, '2011-11-15 12:54:22', 'PUT', 2, 'Open', 'In Work'),
	(48674, '2011-11-15 12:54:22', 'DELETE', 2, 'In Work', 'In Work'),
	(48675, '2011-11-15 13:17:45', 'POST', 2, 'Open', 'Open'),
	(48675, '2011-11-15 13:17:45', 'PUT', 2, 'Open', 'In Work'),
	(48675, '2011-11-15 13:17:45', 'DELETE', 2, 'In Work', 'In Work'),
	(48676, '2011-11-15 13:20:11', 'POST', 2, 'Open', 'Open'),
	(48676, '2011-11-15 13:20:11', 'PUT', 2, 'Open', 'In Work'),
	(48676, '2011-11-15 13:20:12', 'DELETE', 2, 'In Work', 'In Work'),
	(48677, '2011-11-15 13:38:37', 'POST', 2, 'Open', 'Open'),
	(48677, '2011-11-15 13:38:38', 'PUT', 2, 'Open', 'In Work'),
	(48677, '2011-11-15 13:38:38', 'DELETE', 2, 'In Work', 'In Work'),
	(48678, '2011-11-15 14:05:33', 'POST', 2, 'Open', 'Open'),
	(48678, '2011-11-15 14:05:33', 'PUT', 2, 'Open', 'In Work'),
	(48678, '2011-11-15 14:05:33', 'DELETE', 2, 'In Work', 'In Work'),
	(48679, '2011-11-15 14:25:43', 'POST', 2, 'Open', 'Open'),
	(48679, '2011-11-15 14:25:43', 'PUT', 2, 'Open', 'In Work'),
	(48679, '2011-11-15 14:25:43', 'DELETE', 2, 'In Work', 'In Work'),
	(48688, '2011-11-15 14:47:13', 'POST', 2, 'Open', 'Open'),
	(48688, '2011-11-15 14:47:13', 'PUT', 2, 'Open', 'In Work'),
	(48689, '2011-11-15 14:48:58', 'POST', 2, 'Open', 'Open'),
	(48689, '2011-11-15 14:48:58', 'PUT', 2, 'Open', 'In Work'),
	(48689, '2011-11-15 14:48:58', 'DELETE', 2, 'In Work', 'In Work'),
	(48690, '2011-11-15 14:49:40', 'POST', 2, 'Open', 'Open'),
	(48691, '2011-11-15 14:52:41', 'POST', 2, 'Open', 'Open'),
	(48691, '2011-11-15 14:52:41', 'PUT', 2, 'Open', 'In Work'),
	(48692, '2011-11-15 14:54:06', 'POST', 2, 'Open', 'Open'),
	(48692, '2011-11-15 14:54:06', 'PUT', 2, 'Open', 'In Work'),
	(48693, '2011-11-15 14:54:53', 'POST', 2, 'Open', 'Open'),
	(48693, '2011-11-15 14:54:53', 'PUT', 2, 'Open', 'In Work'),
	(48693, '2011-11-15 14:55:01', 'DELETE', 2, 'In Work', 'In Work'),
	(48694, '2011-11-15 14:57:34', 'POST', 2, 'Open', 'Open'),
	(48694, '2011-11-15 14:57:34', 'PUT', 2, 'Open', 'In Work'),
	(48694, '2011-11-15 14:57:34', 'DELETE', 2, 'In Work', 'In Work'),
	(48695, '2011-11-15 15:21:41', 'POST', 2, 'Open', 'Open'),
	(48695, '2011-11-15 15:21:41', 'PUT', 2, 'Open', 'In Work'),
	(48695, '2011-11-15 15:21:41', 'DELETE', 2, 'In Work', 'In Work'),
	(48696, '2011-11-15 15:27:29', 'POST', 2, 'Open', 'Open'),
	(48696, '2011-11-15 15:27:30', 'PUT', 2, 'Open', 'In Work'),
	(48696, '2011-11-15 15:27:30', 'DELETE', 2, 'In Work', 'In Work'),
	(48697, '2011-11-15 16:25:32', 'POST', 2, 'Open', 'Open'),
	(48697, '2011-11-15 16:25:32', 'PUT', 2, 'Open', 'In Work'),
	(48697, '2011-11-15 16:25:33', 'DELETE', 2, 'In Work', 'In Work'),
	(48698, '2011-11-15 17:19:38', 'POST', 2, 'Open', 'Open'),
	(48698, '2011-11-15 17:19:38', 'PUT', 2, 'Open', 'In Work'),
	(48698, '2011-11-15 17:19:38', 'DELETE', 2, 'In Work', 'In Work'),
	(48699, '2011-11-15 17:26:01', 'POST', 2, 'Open', 'Open'),
	(48699, '2011-11-15 17:26:01', 'PUT', 2, 'Open', 'In Work'),
	(48699, '2011-11-15 17:26:02', 'DELETE', 2, 'In Work', 'In Work'),
	(48700, '2011-11-15 17:30:28', 'POST', 2, 'Open', 'Open'),
	(48700, '2011-11-15 17:30:28', 'PUT', 2, 'Open', 'In Work'),
	(48700, '2011-11-15 17:30:28', 'DELETE', 2, 'In Work', 'In Work'),
	(48701, '2011-11-15 17:34:25', 'POST', 2, 'Open', 'Open'),
	(48701, '2011-11-15 17:34:25', 'PUT', 2, 'Open', 'In Work'),
	(48701, '2011-11-15 17:34:26', 'DELETE', 2, 'In Work', 'In Work'),
	(48702, '2011-11-15 17:37:41', 'POST', 2, 'Open', 'Open'),
	(48702, '2011-11-15 17:37:41', 'PUT', 2, 'Open', 'In Work'),
	(48702, '2011-11-15 17:37:42', 'DELETE', 2, 'In Work', 'In Work'),
	(48703, '2011-11-15 17:40:18', 'POST', 2, 'Open', 'Open'),
	(48703, '2011-11-15 17:40:18', 'PUT', 2, 'Open', 'In Work'),
	(48703, '2011-11-15 17:40:18', 'DELETE', 2, 'In Work', 'In Work'),
	(48704, '2011-11-15 17:41:25', 'POST', 2, 'Open', 'Open'),
	(48704, '2011-11-15 17:41:25', 'PUT', 2, 'Open', 'In Work'),
	(48704, '2011-11-15 17:41:26', 'DELETE', 2, 'In Work', 'In Work'),
	(48705, '2011-11-15 18:00:31', 'POST', 2, 'Open', 'Open'),
	(48705, '2011-11-15 18:00:31', 'PUT', 2, 'Open', 'In Work'),
	(48705, '2011-11-15 18:00:32', 'DELETE', 2, 'In Work', 'In Work'),
	(48706, '2011-11-15 18:18:36', 'POST', 2, 'Open', 'Open'),
	(48706, '2011-11-15 18:18:37', 'PUT', 2, 'Open', 'In Work'),
	(48706, '2011-11-15 18:18:37', 'DELETE', 2, 'In Work', 'In Work'),
	(48707, '2011-11-15 18:19:21', 'POST', 2, 'Open', 'Open'),
	(48707, '2011-11-15 18:19:21', 'PUT', 2, 'Open', 'In Work'),
	(48707, '2011-11-15 18:19:21', 'DELETE', 2, 'In Work', 'In Work'),
	(48708, '2011-11-16 08:31:26', 'POST', 2, 'Open', 'Open'),
	(48708, '2011-11-16 08:31:26', 'PUT', 2, 'Open', 'In Work'),
	(48708, '2011-11-16 08:31:27', 'DELETE', 2, 'In Work', 'In Work'),
	(48709, '2011-11-16 10:26:45', 'POST', 2, 'Open', 'Open'),
	(48709, '2011-11-16 10:26:46', 'PUT', 2, 'Open', 'In Work'),
	(48709, '2011-11-16 10:26:46', 'DELETE', 2, 'In Work', 'In Work'),
	(48710, '2011-11-16 10:34:47', 'POST', 2, 'Open', 'Open'),
	(48710, '2011-11-16 10:34:47', 'PUT', 2, 'Open', 'In Work'),
	(48710, '2011-11-16 10:34:51', 'DELETE', 2, 'In Work', 'In Work'),
	(48711, '2011-11-16 11:35:59', 'POST', 2, 'Open', 'Open'),
	(48711, '2011-11-16 11:35:59', 'PUT', 2, 'Open', 'In Work'),
	(48711, '2011-11-16 11:36:00', 'DELETE', 2, 'In Work', 'In Work'),
	(48712, '2011-11-16 11:36:10', 'POST', 2, 'Open', 'Open'),
	(48712, '2011-11-16 11:36:10', 'PUT', 2, 'Open', 'In Work'),
	(48712, '2011-11-16 11:36:11', 'DELETE', 2, 'In Work', 'In Work'),
	(48713, '2011-11-16 12:15:55', 'POST', 2, 'Open', 'Open'),
	(48713, '2011-11-16 12:15:55', 'PUT', 2, 'Open', 'In Work'),
	(48713, '2011-11-16 12:15:56', 'DELETE', 2, 'In Work', 'In Work'),
	(48714, '2011-11-16 12:48:05', 'POST', 59, 'Open', 'Open'),
	(5988, '2011-11-18 14:25:56', 'PUT', 3, 'Open', 'Open'),
	(5988, '2011-11-18 14:26:06', 'PUT', 2, 'Open', 'Open'),
	(48715, '2011-11-21 22:32:35', 'POST', 2, 'Open', 'Open'),
	(48715, '2011-11-21 22:35:15', 'DELETE', 2, 'Open', 'Open'),
	(48716, '2011-11-22 13:03:44', 'POST', 2, 'Open', 'Open'),
	(48716, '2011-11-22 13:03:44', 'PUT', 2, 'Open', 'In Work'),
	(48716, '2011-11-22 13:03:45', 'DELETE', 2, 'In Work', 'In Work'),
	(48717, '2011-11-22 13:39:35', 'POST', 63, 'Open', 'Open'),
	(48718, '2011-11-22 13:42:24', 'POST', 2, 'Open', 'Open'),
	(47984, '2011-11-22 19:17:50', 'PUT', 2, 'Open', 'Open'),
	(5991, '2011-11-22 19:18:07', 'PUT', 2, 'Open', 'Open');
/*!40000 ALTER TABLE `vlog_requests` ENABLE KEYS */;


# Dumping structure for table parkway.vlog_teams
CREATE TABLE IF NOT EXISTS `vlog_teams` (
  `TeamNumber` int(10) unsigned NOT NULL,
  `Action` enum('POST','PUT','DELETE') COLLATE latin1_general_ci NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SoftwareTypeOld` enum('unknown','LabVIEW','Windriver, C++','JavaBeans','Other') COLLATE latin1_general_ci NOT NULL,
  `SoftwareTypeNew` enum('unknown','LabVIEW','Windriver, C++','JavaBeans','Other') COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

# Dumping data for table parkway.vlog_teams: ~46 rows (approximately)
/*!40000 ALTER TABLE `vlog_teams` DISABLE KEYS */;
INSERT IGNORE INTO `vlog_teams` (`TeamNumber`, `Action`, `Time`, `SoftwareTypeOld`, `SoftwareTypeNew`) VALUES
	(66666, 'POST', '2011-11-10 17:08:27', 'unknown', 'unknown'),
	(66666, 'PUT', '2011-11-10 17:08:33', 'unknown', 'JavaBeans'),
	(66666, 'DELETE', '2011-11-10 17:08:37', 'JavaBeans', 'JavaBeans'),
	(3, 'POST', '2011-11-14 16:00:37', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 17:34:24', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 17:34:24', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 17:34:25', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 17:37:40', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 17:37:40', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 17:37:40', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 17:40:17', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 17:40:17', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 17:40:17', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 17:41:25', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 17:41:25', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 17:41:25', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 18:00:31', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 18:00:31', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 18:00:31', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 18:18:36', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 18:18:37', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 18:18:37', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-15 18:19:21', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-15 18:19:21', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-15 18:19:21', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-16 08:31:26', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-16 08:31:26', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-16 08:31:26', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-16 10:26:45', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-16 10:26:46', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-16 10:26:46', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-16 10:34:50', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-16 10:34:50', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-16 10:34:50', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-16 11:35:59', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-16 11:35:59', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-16 11:35:59', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-16 11:36:10', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-16 11:36:10', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-16 11:36:10', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-16 12:15:55', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-16 12:15:55', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-16 12:15:55', 'LabVIEW', 'LabVIEW'),
	(101, 'POST', '2011-11-22 13:03:43', 'unknown', 'unknown'),
	(101, 'PUT', '2011-11-22 13:03:44', 'unknown', 'LabVIEW'),
	(101, 'DELETE', '2011-11-22 13:03:44', 'LabVIEW', 'LabVIEW');
/*!40000 ALTER TABLE `vlog_teams` ENABLE KEYS */;


# Dumping structure for trigger parkway.vLog_Comp_Del
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Comp_Del` AFTER DELETE ON `competitions` FOR EACH ROW BEGIN
INSERT INTO `vlog_comp` (`Action`, `CompName`, `StartTimeOld`, `StartTimeNew`, `DurationOld`, `DurationNew`) VALUES ('DELETE', OLD.CompName, OLD.StartTime, OLD.StartTime, OLD.Duration, OLD.duration);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Comp_Post
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Comp_Post` AFTER INSERT ON `competitions` FOR EACH ROW BEGIN
INSERT INTO `vlog_comp` (`Action`, `CompName`, `StartTimeOld`, `StartTimeNew`, `DurationOld`, `DurationNew`) VALUES ('POST', New.CompName, NEW.StartTime, NEW.StartTime, NEW.Duration, NEW.duration);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Comp_Put
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Comp_Put` AFTER UPDATE ON `competitions` FOR EACH ROW BEGIN
INSERT INTO `vlog_comp` (`Action`, `CompName`, `StartTimeOld`, `StartTimeNew`, `DurationOld`, `DurationNew`) VALUES ('PUT', OLD.CompName, OLD.StartTime, NEW.StartTime, OLD.Duration, NEW.duration);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Div_Del
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Div_Del` AFTER DELETE ON `divcomps` FOR EACH ROW BEGIN
INSERT INTO `vlog_div` (`CompName`, `Action`, `DivName`, `TeamNumber`) VALUES ((SELECT CompName FROM competitions WHERE CompIndex=OLD.CompIndex), 'DELETE', OLD.DivName, 0);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Div_Post
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Div_Post` AFTER INSERT ON `divcomps` FOR EACH ROW BEGIN
INSERT INTO `vlog_div` (`CompName`, `Action`, `DivName`, `TeamNumber`) VALUES ((SELECT CompName FROM competitions WHERE CompIndex=NEW.CompIndex), 'POST', NEW.DivName, 0);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Div_Put
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Div_Put` AFTER INSERT ON `divisions` FOR EACH ROW BEGIN
INSERT INTO `vlog_div` (`CompName`, `Action`, `DivName`, `TeamNumber`) VALUES ('None', 'PUT', (SELECT DivName FROM divcomps WHERE divindex=NEW.Divindex), NEW.TeamNumber);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Div_PutDel
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Div_PutDel` AFTER DELETE ON `divisions` FOR EACH ROW BEGIN
INSERT INTO `vlog_div` (`CompName`, `Action`, `DivName`, `TeamNumber`) VALUES ('None', 'PUTDELETE', (SELECT DivName FROM divcomps WHERE divindex=OLD.Divindex), OLD.TeamNumber);
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Notes_Del
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Notes_Del` AFTER DELETE ON `notes` FOR EACH ROW BEGIN
INSERT INTO `vlog_notes` (`NoteIndex`, `ReqNumber`, `SolutionOld`, `SolutionNew`, `Action`) VALUES (Old.NoteIndex, Old.ReqNumber, OLD.Solution, OLD.solution, 'DELETE');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Notes_Post
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Notes_Post` AFTER INSERT ON `notes` FOR EACH ROW BEGIN
INSERT INTO `vlog_notes` (`NoteIndex`, `ReqNumber`, `SolutionOld`, `SolutionNew`, `Action`) VALUES (NEW.NoteIndex, NEW.ReqNumber, NEW.Solution, NEW.solution, 'POST');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Notes_Put
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Notes_Put` AFTER UPDATE ON `notes` FOR EACH ROW BEGIN
INSERT INTO `vlog_notes` (`NoteIndex`, `ReqNumber`, `SolutionOld`, `SolutionNew`, `Action`) VALUES (NEW.NoteIndex, NEW.ReqNumber, OLD.Solution, NEW.solution, 'PUT');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Requests_Del
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Requests_Del` AFTER DELETE ON `requests` FOR EACH ROW BEGIN
INSERT INTO `vlog_requests` (`ReqNumber`, `TeamNumber`, `StatusOld`, `StatusNew`, `Action`) VALUES (OLD.ReqNumber, OLD.TeamNumber, OLD.Status, OLD.Status, 'DELETE');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Requests_Post
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Requests_Post` AFTER INSERT ON `requests` FOR EACH ROW BEGIN
INSERT INTO `vlog_requests` (`ReqNumber`, `TeamNumber`, `StatusOld`, `StatusNew`, `Action`) VALUES (NEW.ReqNumber, NEW.TeamNumber, NEW.Status, NEW.Status, 'POST');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Requests_Put
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Requests_Put` AFTER UPDATE ON `requests` FOR EACH ROW BEGIN
INSERT INTO `vlog_requests` (`ReqNumber`, `TeamNumber`, `StatusOld`, `StatusNew`, `Action`) VALUES (NEW.ReqNumber, NEW.TeamNumber, OLD.Status, NEW.Status, 'PUT');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Teams_Del
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Teams_Del` AFTER DELETE ON `teams` FOR EACH ROW BEGIN
INSERT INTO `vlog_teams` (`TeamNumber`, `SoftwareTypeOld`, `SoftwareTypeNew`, `Action`) VALUES (OLD.TeamNumber, OLD.SoftwareType, OLD.SoftwareType, 'DELETE');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Teams_Post
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Teams_Post` AFTER INSERT ON `teams` FOR EACH ROW BEGIN
INSERT INTO `vlog_teams` (`TeamNumber`, `SoftwareTypeOld`, `SoftwareTypeNew`, `Action`) VALUES (NEW.TeamNumber, New.SoftwareType, NEW.SoftwareType, 'POST');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger parkway.vLog_Teams_Put
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `vLog_Teams_Put` AFTER UPDATE ON `teams` FOR EACH ROW BEGIN
INSERT INTO `vlog_teams` (`TeamNumber`, `SoftwareTypeOld`, `SoftwareTypeNew`, `Action`) VALUES (NEW.TeamNumber, OLD.SoftwareType, NEW.SoftwareType, 'PUT');
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
