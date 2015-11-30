-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2015 at 06:14 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diagnostic_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`) VALUES
('103');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
`idDoctor` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `NID` int(11) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `DOB` datetime NOT NULL,
  `CellNO` int(11) NOT NULL,
  `Comssion` int(11) NOT NULL,
  `Specialization` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10021 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`idDoctor`, `First_Name`, `Middle_Name`, `Last_Name`, `NID`, `Gender`, `DOB`, `CellNO`, `Comssion`, `Specialization`) VALUES
(10001, 'Judith', 'Melyssa', 'Demetria', 73257255, 'Male', '2014-10-17 08:55:32', 57, 10, 'Pediatrician'),
(10002, 'Lara', 'Evelyn', 'Lillith', 82561897, 'Male', '2015-04-11 06:11:30', 26, 10, 'Pathologist'),
(10003, 'Elmo', 'Dante', 'Rose', 57851253, 'Male', '2016-03-24 01:24:09', 24, 10, 'ENT'),
(10004, 'Magee', 'Nolan', 'Hamish', 13843663, 'Male', '2014-07-03 17:43:31', 72, 10, 'Hepatologist'),
(10005, 'Chaney', 'Randall', 'Clio', 57097182, 'Female', '2015-09-21 02:32:18', 90, 10, 'Gyno'),
(10006, 'Brenda', 'Ina', 'Drew', 83183099, 'Male', '2015-02-10 07:25:18', 43, 10, 'Hepatologist'),
(10007, 'Larissa', 'Charde', 'Hilel', 88736615, 'Female', '2015-05-16 17:59:32', 34, 10, 'Gyno'),
(10008, 'Holmes', 'Dieter', 'Tashya', 10548560, 'Male', '2014-07-21 20:48:58', 64, 10, 'Cardiologist'),
(10009, 'Amir', 'Kamal', 'Lucy', 88509072, 'Female', '2015-06-25 01:45:51', 97, 10, 'Urologist'),
(10010, 'Kamal', 'Zorita', 'Todd', 10191467, 'Female', '2015-05-01 09:46:31', 42, 10, 'Pediatrician'),
(10011, 'Jordan', 'Orson', 'Gisela', 29065628, 'Male', '2016-03-26 02:40:03', 91, 10, 'Orthopedist'),
(10012, 'Jaden', 'Montana', 'Natalie', 62175388, 'Female', '2015-09-22 01:21:29', 83, 10, 'Hematologist'),
(10013, 'Julian', 'Brandon', 'Darrel', 70865213, 'Male', '2014-09-02 17:14:42', 74, 10, 'Cardiologist'),
(10014, 'Bianca', 'Ria', 'Edan', 26215541, 'Male', '2015-06-20 14:42:40', 19, 10, 'Hematologist'),
(10015, 'Iola', 'Illana', 'Hedy', 27801760, 'Female', '2015-09-07 11:13:18', 87, 10, 'Neurologist'),
(10016, 'Hiram', 'Kylan', 'Jermaine', 54524717, 'Female', '2014-07-14 05:39:42', 89, 10, 'ENT'),
(10017, 'Stella', 'Unity', 'Victor', 63967456, 'Male', '2015-06-29 22:05:25', 82, 10, 'Orthopedist'),
(10018, 'Julian', 'Clarke', 'Susan', 10660354, 'Male', '2014-05-25 19:58:24', 89, 10, 'Oncologist'),
(10019, 'Audra', 'William', 'Calvin', 10046597, 'Male', '2015-06-25 04:11:20', 7, 10, 'Internist'),
(10020, 'Maya', 'Ina', 'Baker', 49481258, 'Male', '2015-03-15 20:32:52', 35, 10, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_has_invoicetest`
--

CREATE TABLE IF NOT EXISTS `doctor_has_invoicetest` (
  `doctor_idDoctor` int(11) NOT NULL,
  `InvoiceTest_Invoice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_has_invoicetest`
--

INSERT INTO `doctor_has_invoicetest` (`doctor_idDoctor`, `InvoiceTest_Invoice`) VALUES
(10016, 100001),
(10017, 100002),
(10003, 100003),
(10008, 100003),
(10013, 100004),
(10014, 100006),
(10010, 100009),
(10015, 100009),
(10020, 100009),
(10017, 100010),
(10002, 100012),
(10009, 100012),
(10010, 100012),
(10002, 100013),
(10006, 100013),
(10010, 100013),
(10006, 100014),
(10014, 100015),
(10015, 100015),
(10020, 100015),
(10013, 100016),
(10016, 100016),
(10005, 100017),
(10020, 100017),
(10018, 100018),
(10006, 100019),
(10008, 100019),
(10012, 100019),
(10015, 100021),
(10008, 100022),
(10005, 100023),
(10017, 100024),
(10013, 100026),
(10010, 100027),
(10002, 100028),
(10006, 100029),
(10006, 100030),
(10001, 100031),
(10017, 100034),
(10006, 100035),
(10007, 100035),
(10002, 100037),
(10014, 100037),
(10009, 100039),
(10010, 100041),
(10016, 100041),
(10012, 100044),
(10009, 100047),
(10002, 100048),
(10002, 100051),
(10014, 100051),
(10003, 100052),
(10006, 100052),
(10008, 100055),
(10012, 100055),
(10015, 100055),
(10002, 100058),
(10004, 100058),
(10015, 100058),
(10011, 100059),
(10019, 100059),
(10001, 100060),
(10003, 100060),
(10004, 100061),
(10002, 100065),
(10009, 100068),
(10013, 100069),
(10015, 100070),
(10008, 100071),
(10008, 100072),
(10002, 100073),
(10008, 100073),
(10019, 100073),
(10018, 100075),
(10011, 100076),
(10017, 100076),
(10001, 100077),
(10014, 100077),
(10004, 100078),
(10019, 100078),
(10009, 100082),
(10020, 100082),
(10004, 100083),
(10019, 100084),
(10020, 100085),
(10010, 100086),
(10014, 100086),
(10016, 100086),
(10007, 100089),
(10016, 100090),
(10008, 100091),
(10013, 100091),
(10014, 100091),
(10002, 100093),
(10001, 100095),
(10003, 100095),
(10009, 100095),
(10015, 100095),
(10004, 100099),
(10017, 100099);

-- --------------------------------------------------------

--
-- Table structure for table `dr_degree`
--

CREATE TABLE IF NOT EXISTS `dr_degree` (
  `degree_name` varchar(45) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `DID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoicetest`
--

CREATE TABLE IF NOT EXISTS `invoicetest` (
  `Test_Status` varchar(45) DEFAULT NULL,
  `Test_Date` datetime DEFAULT NULL,
  `TestID` int(11) DEFAULT NULL,
`Invoice` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicetest`
--

INSERT INTO `invoicetest` (`Test_Status`, `Test_Date`, `TestID`, `Invoice`) VALUES
('OK', '2015-08-12 23:55:21', 5, 100000),
('OK', '2015-10-30 08:26:46', 9, 100001),
('DELIVERED', '2015-05-26 20:17:52', 2, 100002),
('DELIVERED', '2014-09-22 03:08:50', 10, 100003),
('OK', '2014-11-14 18:38:05', 1, 100004),
('PENDING', '2015-12-31 19:53:29', 3, 100005),
('OK', '2015-01-05 17:35:29', 4, 100006),
('DELIVERED', '2015-12-04 19:04:16', 3, 100007),
('DELIVERED', '2014-05-24 06:25:39', 9, 100008),
('DELIVERED', '2015-02-23 10:04:31', 5, 100009),
('DELIVERED', '2014-11-22 14:23:47', 3, 100010),
('OK', '2015-07-27 01:36:08', 7, 100011),
('OK', '2015-06-11 19:22:01', 1, 100012),
('DELIVERED', '2016-01-08 01:13:57', 1, 100013),
('OK', '2015-12-20 11:42:49', 5, 100014),
('OK', '2015-07-11 11:08:57', 6, 100015),
('PENDING', '2015-10-10 16:39:18', 3, 100016),
('PENDING', '2016-02-24 12:57:12', 4, 100017),
('OK', '2015-12-30 12:53:47', 2, 100018),
('OK', '2014-04-17 15:03:39', 7, 100019),
('OK', '2015-06-28 08:48:41', 8, 100020),
('DELIVERED', '2015-02-02 05:52:14', 6, 100021),
('PENDING', '2015-11-29 21:30:38', 5, 100022),
('OK', '2014-12-14 11:53:03', 4, 100023),
('DELIVERED', '2015-01-29 08:20:59', 7, 100024),
('OK', '2015-11-12 21:42:22', 7, 100025),
('PENDING', '2015-02-12 14:32:42', 3, 100026),
('PENDING', '2014-07-21 20:03:30', 8, 100027),
('OK', '2015-01-23 13:23:27', 9, 100028),
('DELIVERED', '2014-07-30 09:53:12', 6, 100029),
('PENDING', '2015-06-03 00:58:31', 6, 100030),
('OK', '2014-05-22 12:04:04', 10, 100031),
('OK', '2015-04-03 12:01:24', 7, 100032),
('PENDING', '2014-10-15 06:55:25', 10, 100033),
('OK', '2014-11-21 15:25:30', 9, 100034),
('OK', '2015-05-22 19:12:22', 1, 100035),
('DELIVERED', '2014-12-10 01:14:07', 9, 100036),
('OK', '2014-06-12 18:51:22', 5, 100037),
('PENDING', '2015-08-02 04:39:47', 8, 100038),
('PENDING', '2014-07-03 06:54:03', 10, 100039),
('OK', '2015-08-16 10:00:38', 10, 100040),
('DELIVERED', '2015-01-08 09:21:03', 2, 100041),
('OK', '2014-12-31 14:04:43', 6, 100042),
('OK', '2014-04-24 04:54:05', 1, 100043),
('DELIVERED', '2015-11-10 01:51:40', 8, 100044),
('DELIVERED', '2015-11-09 20:36:54', 4, 100045),
('DELIVERED', '2015-07-22 11:48:52', 10, 100046),
('PENDING', '2014-09-17 02:13:32', 9, 100047),
('DELIVERED', '2014-12-11 10:19:52', 7, 100048),
('DELIVERED', '2015-12-02 13:47:16', 7, 100049),
('DELIVERED', '2015-04-12 22:39:49', 3, 100050),
('OK', '2014-10-18 09:43:45', 7, 100051),
('OK', '2015-03-20 11:09:28', 5, 100052),
('OK', '2014-10-12 03:55:23', 2, 100053),
('DELIVERED', '2014-08-22 01:14:56', 10, 100054),
('PENDING', '2014-04-25 01:21:14', 10, 100055),
('PENDING', '2015-04-10 01:25:49', 9, 100056),
('PENDING', '2014-12-04 17:55:40', 4, 100057),
('PENDING', '2015-08-29 11:06:47', 4, 100058),
('PENDING', '2015-10-20 10:46:50', 10, 100059),
('OK', '2015-09-26 19:12:02', 3, 100060),
('OK', '2014-11-07 14:28:32', 1, 100061),
('DELIVERED', '2015-06-10 18:33:17', 3, 100062),
('DELIVERED', '2014-06-24 11:05:31', 3, 100063),
('OK', '2015-10-09 10:39:58', 9, 100064),
('OK', '2014-05-21 21:37:42', 1, 100065),
('PENDING', '2016-03-27 16:34:51', 8, 100066),
('OK', '2015-09-14 12:09:19', 8, 100067),
('PENDING', '2015-02-17 03:42:31', 2, 100068),
('PENDING', '2015-06-24 18:08:11', 5, 100069),
('PENDING', '2015-09-06 12:44:24', 6, 100070),
('OK', '2014-09-05 15:21:21', 10, 100071),
('PENDING', '2015-03-15 05:42:50', 9, 100072),
('PENDING', '2015-09-28 00:49:56', 7, 100073),
('PENDING', '2014-11-18 07:12:03', 10, 100074),
('OK', '2015-07-10 18:54:49', 7, 100075),
('DELIVERED', '2014-06-26 22:53:13', 2, 100076),
('DELIVERED', '2014-07-20 14:45:15', 6, 100077),
('OK', '2014-10-18 04:05:51', 7, 100078),
('DELIVERED', '2014-06-27 23:38:32', 5, 100079),
('PENDING', '2014-05-02 09:08:39', 4, 100080),
('DELIVERED', '2016-03-13 05:45:08', 9, 100081),
('OK', '2015-06-07 03:43:26', 2, 100082),
('DELIVERED', '2015-07-05 23:02:16', 9, 100083),
('DELIVERED', '2014-11-30 20:50:52', 5, 100084),
('DELIVERED', '2015-03-06 14:49:49', 4, 100085),
('DELIVERED', '2014-05-19 23:36:52', 4, 100086),
('DELIVERED', '2014-09-29 11:53:40', 3, 100087),
('DELIVERED', '2015-02-15 04:40:07', 3, 100088),
('PENDING', '2016-01-29 19:42:12', 5, 100089),
('OK', '2015-10-03 21:40:07', 6, 100090),
('DELIVERED', '2015-03-10 11:11:48', 6, 100091),
('PENDING', '2016-02-25 03:27:14', 9, 100092),
('OK', '2016-02-10 18:00:28', 3, 100093),
('PENDING', '2015-01-25 02:56:24', 6, 100094),
('PENDING', '2015-07-16 02:09:16', 5, 100095),
('DELIVERED', '2016-02-20 13:46:20', 9, 100096),
('OK', '2015-05-04 02:14:58', 2, 100097),
('OK', '2015-09-26 19:41:19', 2, 100098),
('DELIVERED', '2014-12-07 21:04:45', 2, 100099);

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE IF NOT EXISTS `laboratory` (
  `type` varchar(45) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `labtechID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`type`, `status`, `labtechID`) VALUES
('XRAY', 'Online', '104'),
('Hematology', 'Online', '105'),
('HIV', 'Online', '106'),
('Blood', 'Online', '107'),
('Lipid', 'Online', '108'),
('Colonoscopy', 'Online', '109'),
('Cancer', 'Online', '110'),
('NGOgram', 'Online', '111'),
('Urine', 'Offline', '112'),
('Stool', 'Offline', '113');

-- --------------------------------------------------------

--
-- Table structure for table `labtech`
--

CREATE TABLE IF NOT EXISTS `labtech` (
  `idlabtech` varchar(15) NOT NULL,
  `stuff_idStuff` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labtech`
--

INSERT INTO `labtech` (`idlabtech`, `stuff_idStuff`) VALUES
('104', '104'),
('105', '105'),
('106', '106'),
('107', '107'),
('108', '108'),
('109', '109'),
('110', '110'),
('111', '111'),
('112', '112'),
('113', '113');

-- --------------------------------------------------------

--
-- Table structure for table `lab_details`
--

CREATE TABLE IF NOT EXISTS `lab_details` (
  `machines` varchar(45) NOT NULL,
  `lab_detailscol` varchar(45) DEFAULT NULL,
  `machine_no` int(11) DEFAULT NULL,
  `machine_status` enum('online','under maintanence') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
`idPatient` int(11) NOT NULL,
  `NID` int(11) DEFAULT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `CellPhone` int(11) DEFAULT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `reciptionist_idreciptionist` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`idPatient`, `NID`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `Address`, `CellPhone`, `DOB`, `reciptionist_idreciptionist`) VALUES
(1001, 71685885, 'Michelle', 'Zephania', 'Gretchen', 'FEMALE', '8049 Curae; Road', 71, '2015-10-11 23:50:37', '102'),
(1002, 36898564, 'Amos', 'Rinah', 'Hayden', 'FEMALE', 'P.O. Box 723, 6015 Felis. Rd.', 13, '2015-08-12 12:20:32', '102'),
(1003, 16923643, 'Orlando', 'Lucas', 'Alma', 'MALE', '8498 Nisi. St.', 55, '2015-08-20 13:45:36', '102'),
(1004, 21507802, 'Ignatius', 'Orson', 'Olivia', 'FEMALE', '4375 Sodales Rd.', 19, '2016-02-22 20:42:45', '102'),
(1005, 71744281, 'Kimberly', 'Chastity', 'Keane', 'MALE', 'Ap #445-215 Pede. Road', 64, '2015-12-14 11:54:13', '102'),
(1006, 98819641, 'Donna', 'Mufutau', 'Keith', 'FEMALE', 'Ap #151-9532 Ante. Avenue', 20, '2015-07-09 16:18:29', '102'),
(1007, 35215090, 'Elvis', 'Pearl', 'Zorita', 'FEMALE', '2906 Neque St.', 18, '2015-02-26 07:49:05', '102'),
(1008, 88553685, 'Howard', 'Myra', 'Quentin', 'MALE', 'P.O. Box 411, 8737 Felis Street', 48, '2014-04-05 12:31:23', '102'),
(1009, 84752962, 'Jolie', 'Emily', 'Brianna', 'MALE', '652-4217 Lectus Av.', 29, '2015-02-03 18:20:47', '102'),
(1010, 70038325, 'Hedwig', 'Denton', 'Farrah', 'MALE', 'P.O. Box 566, 1996 Duis St.', 25, '2015-06-04 06:40:26', '102'),
(1011, 66514888, 'Haley', 'Yoko', 'Alana', 'MALE', 'P.O. Box 238, 6122 Urna. Street', 64, '2015-02-16 18:52:31', '102'),
(1012, 13616353, 'Rahim', 'Eve', 'Peter', 'FEMALE', '9954 Vel Road', 78, '2014-11-24 15:51:14', '102'),
(1013, 89241239, 'Gretchen', 'Christopher', 'Erica', 'MALE', '566-9591 Malesuada Ave', 98, '2015-04-09 09:34:45', '102'),
(1014, 69727756, 'Reed', 'Althea', 'Rafael', 'FEMALE', 'Ap #140-4124 Nunc Rd.', 12, '2015-03-09 01:14:53', '102'),
(1015, 94672145, 'Echo', 'Diana', 'Gavin', 'FEMALE', '9509 Aliquet, Road', 76, '2015-06-02 06:56:29', '102'),
(1016, 39003635, 'Ulric', 'Kalia', 'Abdul', 'FEMALE', '5635 Malesuada Road', 53, '2015-04-03 17:08:03', '102'),
(1017, 89090677, 'Hall', 'Deacon', 'Wing', 'FEMALE', '710-4689 Integer St.', 92, '2014-10-27 11:09:57', '102'),
(1018, 47878762, 'Jackson', 'Nigel', 'Dacey', 'FEMALE', '135-1612 Enim Rd.', 50, '2016-02-15 22:41:06', '102'),
(1019, 81878720, 'Nina', 'Ivan', 'Adria', 'MALE', 'P.O. Box 671, 8194 Lorem Rd.', 68, '2015-12-18 03:30:43', '102'),
(1020, 29888957, 'Hector', 'Herrod', 'Reece', 'FEMALE', 'P.O. Box 165, 3333 Litora St.', 31, '2014-08-25 16:16:52', '102'),
(1021, 12074262, 'Lysandra', 'Shelley', 'Ifeoma', 'FEMALE', '7499 Eget, Road', 71, '2015-05-13 03:20:59', '102'),
(1022, 29744353, 'Liberty', 'Naomi', 'Natalie', 'MALE', '190-5814 Sit Rd.', 17, '2016-01-14 19:50:01', '102'),
(1023, 46814180, 'Randall', 'Tobias', 'Lev', 'FEMALE', '510-1415 Nostra, Rd.', 58, '2014-07-01 00:14:27', '102'),
(1024, 10997991, 'Dominique', 'Lacey', 'Bruce', 'MALE', '787 Blandit Road', 85, '2016-01-07 07:01:41', '102'),
(1025, 73785690, 'Jaden', 'Breanna', 'Shellie', 'MALE', '9108 At, Rd.', 68, '2015-11-17 19:24:22', '102'),
(1026, 11539608, 'Charles', 'Giselle', 'Hyacinth', 'MALE', '137-7534 Libero Ave', 62, '2015-07-21 16:53:34', '102'),
(1027, 65663712, 'Hillary', 'Cody', 'Tallulah', 'FEMALE', '7702 Iaculis Av.', 76, '2014-10-28 16:23:05', '102'),
(1028, 83948102, 'Megan', 'Helen', 'Yolanda', 'FEMALE', '6408 Eget Rd.', 48, '2016-03-30 13:31:54', '102'),
(1029, 50465857, 'Emi', 'Marsden', 'Nero', 'FEMALE', '458-3300 Cursus. St.', 75, '2016-03-15 12:54:54', '102'),
(1030, 47641189, 'Blossom', 'Harrison', 'Iola', 'FEMALE', 'Ap #795-6327 Semper St.', 66, '2015-05-04 16:41:14', '101'),
(1031, 88175929, 'Dylan', 'Maxwell', 'Rajah', 'FEMALE', '7469 Mus. Road', 51, '2015-05-04 10:22:11', '101'),
(1032, 37719972, 'Sophia', 'Chanda', 'Alexis', 'MALE', '264-9139 Mauris Av.', 93, '2014-09-12 02:55:57', '101'),
(1033, 79534320, 'Priscilla', 'Isabelle', 'Alisa', 'FEMALE', '316-5849 Diam. St.', 58, '2015-12-14 23:20:45', '101'),
(1034, 96318120, 'Regina', 'Georgia', 'Hilda', 'MALE', '790-4304 Integer St.', 37, '2015-01-10 14:19:01', '101'),
(1035, 13023108, 'Charlotte', 'Camden', 'Brody', 'FEMALE', 'P.O. Box 761, 9926 Gravida. St.', 58, '2015-07-22 16:40:54', '101'),
(1036, 21795212, 'Raven', 'Simone', 'Ignacia', 'FEMALE', 'P.O. Box 112, 3894 Adipiscing St.', 67, '2014-09-17 02:05:46', '101'),
(1037, 23310648, 'Sade', 'Lara', 'Ria', 'MALE', 'P.O. Box 893, 5867 Lobortis. Rd.', 12, '2015-02-01 07:42:40', '101'),
(1038, 80980528, 'Michelle', 'Yeo', 'Shaine', 'FEMALE', '701-1286 Etiam Street', 9, '2014-08-18 17:29:00', '101'),
(1039, 91397239, 'Elvis', 'Demetria', 'Justina', 'FEMALE', 'P.O. Box 412, 8528 Fringilla Avenue', 44, '2014-12-24 09:52:47', '101'),
(1040, 53562960, 'Noah', 'Raphael', 'Inez', 'MALE', '863-2385 Hymenaeos. St.', 37, '2014-11-30 08:05:51', '101'),
(1041, 33445670, 'Melvin', 'Patrick', 'Vladimir', 'FEMALE', '1537 Arcu Avenue', 13, '2015-02-25 16:33:10', '101'),
(1042, 90593856, 'Tanisha', 'Chloe', 'Joseph', 'FEMALE', 'Ap #836-2091 Malesuada. St.', 96, '2016-03-26 09:45:24', '101'),
(1043, 14065850, 'Hiram', 'Donna', 'Yetta', 'FEMALE', '646 Neque Rd.', 23, '2015-01-27 21:56:17', '101'),
(1044, 86428609, 'Lysandra', 'Burke', 'Chaim', 'FEMALE', '384-7031 Montes, Rd.', 87, '2015-12-31 03:21:17', '101'),
(1045, 36292128, 'Olivia', 'Steel', 'Coby', 'MALE', 'P.O. Box 680, 4197 Quis, St.', 25, '2014-12-11 16:52:28', '101'),
(1046, 42667889, 'Jana', 'Brenda', 'Marvin', 'FEMALE', '664-5928 Pede. St.', 7, '2014-05-24 19:45:35', '101'),
(1047, 35248724, 'Gloria', 'Ross', 'Fiona', 'FEMALE', '871-4274 Fermentum Av.', 66, '2014-09-21 14:32:57', '101'),
(1048, 86956806, 'Mona', 'August', 'Deirdre', 'MALE', 'Ap #716-5439 Ipsum Av.', 35, '2016-03-05 22:00:45', '101'),
(1049, 59276525, 'Ursula', 'Cassandra', 'Macon', 'MALE', 'P.O. Box 169, 7122 Proin Ave', 64, '2015-06-06 20:53:40', '101'),
(1050, 18815202, 'Eaton', 'Hedwig', 'Garrison', 'FEMALE', '936-3344 Imperdiet St.', 59, '2014-08-10 21:27:24', '101'),
(1051, 78320680, 'Sydnee', 'Zoe', 'Cassidy', 'MALE', '517-6630 Ac St.', 68, '2015-11-21 19:29:48', '101'),
(1052, 64634838, 'Fredericka', 'Dane', 'Rashad', 'FEMALE', '748-9713 Mauris Avenue', 33, '2014-05-02 13:18:50', '101'),
(1053, 18846161, 'Mechelle', 'Dolan', 'Ariana', 'FEMALE', 'Ap #493-8914 Egestas St.', 58, '2015-04-12 17:27:27', '101'),
(1054, 10274082, 'Whitney', 'Harriet', 'Bell', 'MALE', '943-6311 Magnis Avenue', 24, '2015-11-01 17:28:47', '101'),
(1055, 10830745, 'Damian', 'Vladimir', 'Cora', 'FEMALE', 'Ap #692-4460 Dis Road', 95, '2015-10-04 09:45:39', '101'),
(1056, 85264836, 'Carolyn', 'Alisa', 'Carter', 'MALE', '944 Iaculis Ave', 25, '2015-07-09 04:01:50', '101'),
(1057, 17686519, 'Nita', 'Kai', 'Nash', 'FEMALE', '791 Non Street', 98, '2015-07-25 20:28:30', '101'),
(1058, 23056310, 'Jenette', 'Jaquelyn', 'Judith', 'FEMALE', 'P.O. Box 844, 2294 Montes, St.', 43, '2016-01-06 01:45:29', '101'),
(1059, 22269359, 'Kai', 'Leroy', 'Hayes', 'MALE', '512-6562 Suspendisse Road', 18, '2015-08-26 14:37:22', '101'),
(1060, 98984514, 'Zenaida', 'Thane', 'Ryan', 'MALE', '3754 Ut Ave', 79, '2015-10-19 11:34:43', '101');

-- --------------------------------------------------------

--
-- Table structure for table `patient_has_invoicetest`
--

CREATE TABLE IF NOT EXISTS `patient_has_invoicetest` (
  `patient_idPaitient` int(11) NOT NULL,
  `InvoiceTest_Invoice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_has_invoicetest`
--

INSERT INTO `patient_has_invoicetest` (`patient_idPaitient`, `InvoiceTest_Invoice`) VALUES
(1002, 100002),
(1053, 100002),
(1032, 100003),
(1045, 100003),
(1003, 100004),
(1045, 100004),
(1003, 100005),
(1039, 100005),
(1056, 100005),
(1033, 100007),
(1051, 100007),
(1007, 100009),
(1039, 100009),
(1039, 100010),
(1047, 100010),
(1026, 100011),
(1047, 100011),
(1029, 100012),
(1031, 100012),
(1047, 100014),
(1040, 100015),
(1026, 100016),
(1038, 100016),
(1019, 100017),
(1024, 100017),
(1034, 100017),
(1018, 100018),
(1018, 100019),
(1030, 100019),
(1021, 100020),
(1031, 100020),
(1022, 100023),
(1048, 100023),
(1010, 100026),
(1030, 100027),
(1049, 100027),
(1028, 100028),
(1041, 100029),
(1031, 100030),
(1027, 100031),
(1001, 100032),
(1040, 100033),
(1008, 100034),
(1034, 100035),
(1060, 100035),
(1009, 100039),
(1018, 100044),
(1019, 100045),
(1001, 100046),
(1017, 100046),
(1018, 100046),
(1045, 100048),
(1056, 100048),
(1020, 100049),
(1031, 100050),
(1026, 100051),
(1029, 100053),
(1038, 100053),
(1011, 100054),
(1047, 100054),
(1004, 100055),
(1010, 100055),
(1027, 100056),
(1045, 100057),
(1046, 100057),
(1027, 100058),
(1052, 100058),
(1008, 100059),
(1024, 100059),
(1025, 100062),
(1041, 100063),
(1047, 100063),
(1030, 100067),
(1032, 100068),
(1038, 100068),
(1044, 100070),
(1057, 100071),
(1028, 100073),
(1034, 100073),
(1050, 100074),
(1060, 100074),
(1010, 100075),
(1014, 100080),
(1037, 100082),
(1058, 100082),
(1053, 100083),
(1048, 100084),
(1056, 100085),
(1013, 100086),
(1008, 100087),
(1018, 100087),
(1007, 100088),
(1027, 100088),
(1028, 100089),
(1025, 100090),
(1010, 100091),
(1032, 100091),
(1029, 100096),
(1056, 100097),
(1057, 100097);

-- --------------------------------------------------------

--
-- Table structure for table `reciptionist`
--

CREATE TABLE IF NOT EXISTS `reciptionist` (
  `idreciptionist` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reciptionist`
--

INSERT INTO `reciptionist` (`idreciptionist`) VALUES
('101'),
('102');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE IF NOT EXISTS `security` (
  `idSecurity` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`idSecurity`) VALUES
('114'),
('115'),
('116'),
('117');

-- --------------------------------------------------------

--
-- Table structure for table `stuff`
--

CREATE TABLE IF NOT EXISTS `stuff` (
  `idStuff` varchar(15) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `DOB` datetime NOT NULL,
  `Joning_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Present_Address` varchar(255) NOT NULL,
  `Permament_Address` varchar(255) NOT NULL,
  `Shift` varchar(45) DEFAULT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `NID` int(11) DEFAULT NULL,
  `Cell_no` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuff`
--

INSERT INTO `stuff` (`idStuff`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `DOB`, `Joning_Date`, `Present_Address`, `Permament_Address`, `Shift`, `Salary`, `NID`, `Cell_no`, `pass`) VALUES
('101', 'Jordan', 'Emily', 'Justine', 'Female', '2015-10-20 15:01:17', '2014-12-22 00:40:10', '1522 Pellentesque Av.', 'Ham-sur-Heure', 'Day', 'BDT10 689', 38871, '072-94400567', 'YTN85NWV7WC'),
('102', 'Rosalyn', 'Quinn', 'Garth', 'Female', '2014-04-25 21:00:09', '2015-08-09 09:32:50', 'Ap #972-4938 Proin Road', 'Swansea', 'Day', 'BDT14 472', 33012, '084-82282744', 'LCG48KVX9LT'),
('103', 'Melodie', 'Blythe', 'Chelsea', 'Female', '2015-02-21 23:39:40', '2015-03-05 18:00:09', 'P.O. Box 941, 9149 Quis, Av.', 'Caruaru', 'Day', 'BDT10 692', 99564, '059-82346607', 'EOC06UXK0RO'),
('104', 'Zachary', 'Nash', 'Ramona', 'Male', '2015-10-30 07:53:52', '2015-08-06 15:45:25', '545-9789 Nunc St.', 'Hay River', 'Day', 'BDT15 186', 59935, '052-00122398', 'LKL48JEV9CQ'),
('105', 'Kane', 'Daniel', 'Cassidy', 'Male', '2014-11-19 06:45:56', '2014-08-23 07:06:59', 'Ap #221-9157 Maecenas St.', 'Wardha', 'Morning', 'BDT16 410', 81725, '051-00742669', 'IDI14FTO5VU'),
('106', 'Barry', 'Velma', 'Ciaran', 'Male', '2016-03-18 18:02:13', '2014-05-31 22:41:12', '6798 Neque Av.', 'Kailua', 'Morning', 'BDT5 779', 31155, '002-82068445', 'PCD02KDS8NI'),
('107', 'Farrah', 'Samson', 'Leslie', 'Female', '2016-03-17 02:49:25', '2015-09-24 18:32:22', 'Ap #844-3736 Adipiscing St.', 'Dipignano', 'Day', 'BDT9 943', 37938, '057-44441544', 'DRI81HKD8PR'),
('108', 'Kirby', 'Tana', 'Carly', 'Male', '2015-11-19 08:00:07', '2014-04-06 07:15:19', 'P.O. Box 717, 8940 Sapien. Rd.', 'Helensburgh', 'Day', 'BDT15 375', 54532, '076-33181466', 'QKQ64HZN2BJ'),
('109', 'William', 'Merritt', 'Alana', 'Female', '2015-10-08 07:05:45', '2014-05-10 03:27:35', 'P.O. Box 237, 9144 Mauris Av.', 'Le Grand-Quevilly', 'Day', 'BDT6 716', 35924, '099-63795402', 'EBH21MPN0YR'),
('110', 'Colleen', 'Dai', 'Elizabeth', 'Male', '2015-11-07 00:38:47', '2015-02-23 05:00:15', '9288 Sagittis St.', 'Jabbeke', 'Day', 'BDT14 944', 16488, '027-67674325', 'JAA49XKG6PL'),
('111', 'Avram', 'Delilah', 'Bree', 'Female', '2014-09-17 04:58:44', '2015-09-27 21:45:43', 'P.O. Box 922, 5559 Orci, Av.', 'Columbia', 'Morning', 'BDT10 492', 10121, '028-33655512', 'OIK95DYB6FS'),
('112', 'Martin', 'Edan', 'Renee', 'Male', '2016-02-18 05:44:17', '2015-03-27 23:21:39', '3316 Aliquet St.', 'Pietracatella', 'Morning', 'BDT8 164', 88501, '065-66513170', 'FVB01IRJ4XB'),
('113', 'Kimberley', 'Colton', 'Priscilla', 'Male', '2015-08-29 19:50:26', '2016-01-03 12:50:23', 'P.O. Box 673, 9050 Purus, St.', 'Monte San Savino', 'Day', 'BDT15 659', 96729, '056-27823888', 'GZN63JCY1QP'),
('114', 'Nash', 'Caesar', 'Daria', 'Female', '2015-04-02 09:37:25', '2016-02-19 23:58:25', 'P.O. Box 155, 6264 Sem Rd.', 'Welland', 'Morning', 'BDT8 736', 12958, '044-06428114', 'PCD57MXJ0JX'),
('115', 'Jameson', 'Laura', 'Clayton', 'Female', '2016-01-15 22:36:46', '2015-12-30 18:59:51', '298-9320 Bibendum Av.', 'Timaru', 'Day', 'BDT12 422', 43077, '044-74652929', 'YYK73SMP3RO'),
('116', 'Lysandra', 'Bo', 'Merrill', 'Male', '2015-11-05 08:17:50', '2014-12-07 11:06:09', 'Ap #801-3624 Elementum Road', 'Gijzegem', 'Day', 'BDT11 984', 24659, '083-14717344', 'QQP73ZZV9ZN'),
('117', 'Roanna', 'Renee', 'Sawyer', 'Female', '2016-03-29 11:46:42', '2015-05-10 17:57:17', '5993 Egestas St.', 'Forgaria nel Friuli', 'Morning', 'BDT18 329', 79532, '048-12049682', 'IOU01VVP2YP');

-- --------------------------------------------------------

--
-- Table structure for table `testname`
--

CREATE TABLE IF NOT EXISTS `testname` (
  `Name` varchar(45) DEFAULT NULL,
  `idtestName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testname`
--

INSERT INTO `testname` (`Name`, `idtestName`) VALUES
('XRAY', 1),
('Hematology', 2),
('HIV', 3),
('Blood', 4),
('Lipid', 5),
('Colonoscopy', 6),
('Cancer', 7),
('NGOgram', 8),
('Urine', 9),
('Stool', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`idDoctor`);

--
-- Indexes for table `doctor_has_invoicetest`
--
ALTER TABLE `doctor_has_invoicetest`
 ADD PRIMARY KEY (`doctor_idDoctor`,`InvoiceTest_Invoice`), ADD KEY `fk_doctor_has_InvoiceTest_InvoiceTest1_idx` (`InvoiceTest_Invoice`), ADD KEY `fk_doctor_has_InvoiceTest_doctor1_idx` (`doctor_idDoctor`);

--
-- Indexes for table `dr_degree`
--
ALTER TABLE `dr_degree`
 ADD PRIMARY KEY (`degree_name`,`DID`), ADD KEY `fk_dr_degree_doctor1_idx` (`DID`);

--
-- Indexes for table `invoicetest`
--
ALTER TABLE `invoicetest`
 ADD PRIMARY KEY (`Invoice`), ADD KEY `fk_Test_testName1` (`TestID`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
 ADD KEY `fk_laboratory_labtech1_idx` (`labtechID`);

--
-- Indexes for table `labtech`
--
ALTER TABLE `labtech`
 ADD PRIMARY KEY (`idlabtech`,`stuff_idStuff`), ADD KEY `fk_labtech_stuff2_idx` (`stuff_idStuff`);

--
-- Indexes for table `lab_details`
--
ALTER TABLE `lab_details`
 ADD PRIMARY KEY (`machines`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`idPatient`), ADD KEY `fk_paitient_reciptionist1_idx` (`reciptionist_idreciptionist`);

--
-- Indexes for table `patient_has_invoicetest`
--
ALTER TABLE `patient_has_invoicetest`
 ADD PRIMARY KEY (`patient_idPaitient`,`InvoiceTest_Invoice`), ADD KEY `fk_patient_has_InvoiceTest_InvoiceTest1_idx` (`InvoiceTest_Invoice`), ADD KEY `fk_patient_has_InvoiceTest_patient1_idx` (`patient_idPaitient`);

--
-- Indexes for table `reciptionist`
--
ALTER TABLE `reciptionist`
 ADD PRIMARY KEY (`idreciptionist`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
 ADD PRIMARY KEY (`idSecurity`);

--
-- Indexes for table `stuff`
--
ALTER TABLE `stuff`
 ADD PRIMARY KEY (`idStuff`);

--
-- Indexes for table `testname`
--
ALTER TABLE `testname`
 ADD PRIMARY KEY (`idtestName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
MODIFY `idDoctor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10021;
--
-- AUTO_INCREMENT for table `invoicetest`
--
ALTER TABLE `invoicetest`
MODIFY `Invoice` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100100;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
MODIFY `idPatient` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1061;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
ADD CONSTRAINT `fk_admin_stuff2` FOREIGN KEY (`idAdmin`) REFERENCES `stuff` (`idStuff`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `doctor_has_invoicetest`
--
ALTER TABLE `doctor_has_invoicetest`
ADD CONSTRAINT `fk_doctor_has_InvoiceTest_InvoiceTest1` FOREIGN KEY (`InvoiceTest_Invoice`) REFERENCES `invoicetest` (`Invoice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_doctor_has_InvoiceTest_doctor1` FOREIGN KEY (`doctor_idDoctor`) REFERENCES `doctor` (`idDoctor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dr_degree`
--
ALTER TABLE `dr_degree`
ADD CONSTRAINT `fk_dr_degree_doctor1` FOREIGN KEY (`DID`) REFERENCES `doctor` (`idDoctor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoicetest`
--
ALTER TABLE `invoicetest`
ADD CONSTRAINT `fk_Test_testName1` FOREIGN KEY (`TestID`) REFERENCES `testname` (`idtestName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `laboratory`
--
ALTER TABLE `laboratory`
ADD CONSTRAINT `fk_laboratory_labtech1` FOREIGN KEY (`labtechID`) REFERENCES `labtech` (`idlabtech`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `labtech`
--
ALTER TABLE `labtech`
ADD CONSTRAINT `fk_labtech_stuff1` FOREIGN KEY (`idlabtech`) REFERENCES `stuff` (`idStuff`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_labtech_stuff2` FOREIGN KEY (`stuff_idStuff`) REFERENCES `stuff` (`idStuff`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
ADD CONSTRAINT `fk_paitient_reciptionist1` FOREIGN KEY (`reciptionist_idreciptionist`) REFERENCES `reciptionist` (`idreciptionist`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patient_has_invoicetest`
--
ALTER TABLE `patient_has_invoicetest`
ADD CONSTRAINT `fk_patient_has_InvoiceTest_InvoiceTest1` FOREIGN KEY (`InvoiceTest_Invoice`) REFERENCES `invoicetest` (`Invoice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_patient_has_InvoiceTest_patient1` FOREIGN KEY (`patient_idPaitient`) REFERENCES `patient` (`idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reciptionist`
--
ALTER TABLE `reciptionist`
ADD CONSTRAINT `fk_reciptionist_stuff1` FOREIGN KEY (`idreciptionist`) REFERENCES `stuff` (`idStuff`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `security`
--
ALTER TABLE `security`
ADD CONSTRAINT `fk_security_stuff1` FOREIGN KEY (`idSecurity`) REFERENCES `stuff` (`idStuff`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
