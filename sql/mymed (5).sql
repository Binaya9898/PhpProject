-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 02:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymed`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttable`
--

CREATE TABLE `appointmenttable` (
  `appointid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `patientid` int(11) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `Concern` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointmenttable`
--

INSERT INTO `appointmenttable` (`appointid`, `docid`, `patientid`, `appointmentdate`, `appointmenttime`, `Concern`) VALUES
(1, 76, 82, '2023-07-15', '13:00:00', 'Stress or exhaustion'),
(2, 76, 78, '2023-07-15', '11:00:00', 'Ok Im sick from headache'),
(3, 83, 82, '2023-06-15', '15:00:00', 'gdrgdrgdrg'),
(4, 76, 80, '2023-07-15', '09:00:00', 'Weakened immune system'),
(5, 76, 82, '2023-08-15', '15:00:00', 'Exposure to toxins or pollutants'),
(8, 83, 82, '2023-06-17', '11:00:00', 'sefesfesfes'),
(9, 89, 82, '2023-06-14', '09:00:00', 'esfesfesfesf'),
(10, 76, 79, '2023-07-01', '14:00:00', 'Side effects from medication'),
(11, 83, 82, '2023-06-23', '13:00:00', 'esfesffsfs'),
(12, 83, 82, '2023-06-23', '15:00:00', 'sefesfesf'),
(13, 77, 82, '2023-06-23', '10:00:00', 'adsefesfsafs'),
(14, 86, 82, '2023-06-23', '10:00:00', 'AWDawdaWDad'),
(15, 77, 82, '2023-06-23', '13:00:00', 'I am suffering from common colkd from past 3 days.'),
(16, 76, 92, '2023-06-30', '14:00:00', 'suffering from common cold from past three days'),
(17, 77, 82, '2023-06-24', '09:00:00', 'dgfgdf'),
(18, 76, 82, '2023-06-30', '09:00:00', 'ui45uy54uyu5'),
(19, 77, 82, '2023-06-23', '14:00:00', 'help me'),
(20, 87, 82, '2023-06-24', '13:00:00', 'okkkk');

-- --------------------------------------------------------

--
-- Table structure for table `doctordetails`
--

CREATE TABLE `doctordetails` (
  `Did` int(11) NOT NULL,
  `LoginId` int(11) NOT NULL,
  `City` varchar(255) NOT NULL DEFAULT 'Pokhara',
  `State` varchar(255) NOT NULL DEFAULT 'Province3',
  `HouseNo` int(11) NOT NULL DEFAULT 0,
  `Specialization` varchar(255) NOT NULL DEFAULT 'General',
  `Mobile` bigint(11) NOT NULL DEFAULT 99999999,
  `ProfilePicture` varchar(255) NOT NULL DEFAULT 'PP1.png',
  `starttime` time NOT NULL DEFAULT '09:00:00',
  `endtime` time NOT NULL DEFAULT '17:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctordetails`
--

INSERT INTO `doctordetails` (`Did`, `LoginId`, `City`, `State`, `HouseNo`, `Specialization`, `Mobile`, `ProfilePicture`, `starttime`, `endtime`) VALUES
(2, 76, 'Pokhara', 'Province3', 0, 'Dental', 0, 'downdoc2.jpg', '08:00:00', '17:00:00'),
(3, 77, 'Pokhara', 'Province3', 0, 'Neurolosgist', 984658369, 'ppp.jpg', '09:00:00', '17:00:00'),
(4, 83, 'Pokhara', 'Province3', 5485, 'Neuro', 0, 'downdoc3.jpg', '10:00:00', '17:00:00'),
(5, 86, 'Pokhara', 'Province3', 0, 'General', 99999999, 'PP1.png', '09:00:00', '17:00:00'),
(6, 87, 'Pokhara', 'Province3', 0, 'General', 99999999, 'PP1.png', '09:00:00', '17:00:00'),
(7, 88, 'Pokhara', 'Province3', 0, 'General', 99999999, 'PP1.png', '09:00:00', '17:00:00'),
(8, 89, 'Pokhara', 'Province3', 0, 'General', 99999999, 'PP1.png', '09:00:00', '17:00:00'),
(9, 90, 'Pokhara', 'Province3', 0, 'General', 0, 'downdoc2.jpg', '09:00:00', '17:00:00'),
(10, 93, 'Pokhara', 'Province3', 0, 'General', 99999999, 'PP1.png', '09:00:00', '17:00:00'),
(11, 94, 'Pokhara', 'Province3', 0, 'General', 99999999, 'PP1.png', '09:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE `logintable` (
  `LoginId` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `D.O.B` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `AccountCreation` datetime NOT NULL DEFAULT current_timestamp(),
  `verificationcode` varchar(255) NOT NULL,
  `isverified` int(11) NOT NULL DEFAULT 0,
  `NMCno` varchar(255) NOT NULL,
  `certificate` varchar(300) NOT NULL,
  `verifieddoctor` int(11) NOT NULL DEFAULT 0,
  `userdelete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`LoginId`, `Username`, `Email`, `Password`, `D.O.B`, `Gender`, `Role`, `AccountCreation`, `verificationcode`, `isverified`, `NMCno`, `certificate`, `verifieddoctor`, `userdelete`) VALUES
(75, 'Suman', 'sumand@gmail.com', '$2y$10$hntgqS2//zcwdvH2QvJ6peM7g6AJRvHgh2VbrPT43oUVCMHpKdjZm', '2023-05-04', 'Male', 'Admin', '2023-05-14 19:14:53', '99c989991322bf6a75d1af13324fe9fe', 1, '', '', 1, 0),
(76, 'Suman Devkota', 'doctor@gmail.com', '$2y$10$tuWZ6DQ1LY83SQHunYjyjOU9aDHpktnlPywq2a1x3YKIk3SeDGy9i', '2023-06-06', 'Male', 'Doctor', '2023-06-04 01:11:17', '23dc0dd399860de59ecbace6d9336e82', 1, '254155', '2023-05-11-SumanDevkota-Unit3.pdf', 1, 0),
(77, 'Bhakti Thapa', 'sum@gmail.com', '$2y$10$yzNYXwcgqcMMzbTOs9zfAO6J1raB2Fta4Mj6xKXCHURqmsBCCZKym', '2023-06-06', 'Male', 'Doctor', '2023-06-04 01:19:59', '598f68444cc25ffac2f0f443bee91ee9', 1, '25656523', '', 1, 0),
(78, 'David Thomas', 'q@gmail.com', '$2y$10$wJJBvLJ2T..YPTHzKxawWeWMEuYUTM9xvgufHcxM/sRfRk4HaiFPa', '2023-06-13', 'Male', 'Patient', '2023-06-04 08:38:29', '15767e5c49726dfdd6d3d8b5276d6292', 1, '', '', 0, 0),
(79, 'John Rai', 'r@gmail.com', '$2y$10$RFYiCwTGhgAVRkYkyGV1DexQaVEVHLrJRL3c4My/yTDJX6rYVAomS', '2023-06-06', 'Male', 'Patient', '2023-06-04 08:42:47', '505a0b428dc8126a59b3c2d0ea21dd5d', 1, '', '', 0, 0),
(80, 'Harry Styles', 'dssuman@gmail.com', '$2y$10$/CaJGkAPimkovy7oCczgUODb14B6M0knYW3pzY6qJLmF8CbDMntte', '2023-06-08', 'Male', 'Patient', '2023-06-04 08:43:47', '4c6766f26fee4cd12dc24c670511a39f', 1, '', '', 0, 0),
(81, 'Mark Stones', 'sumandevkota75@gmail.com', '$2y$10$5ucEP30Gf0haiXZc9Hw.zeZG4mkrlTnJpOge2TUBk2DyckQKFi.O6', '2023-06-07', 'Male', 'Patient', '2023-06-04 09:11:57', '51cdf29c81a69dc7f173705f744de167', 1, '', '', 0, 0),
(82, 'Louis Beans', 'patient@gmail.com', '$2y$10$xu4WLb/r7cah8Fib6XSg8ODkyLx2Zo3bxlIlJXBGLuTn7OHSXi6ci', '2023-06-06', 'Male', 'Patient', '2023-06-04 09:13:44', '4b153aa4d31a265d8af87bafd69f3cc3', 1, '', '', 0, 0),
(83, 'Laxman Khadka', 'z@gmail.com', '$2y$10$FQ6KuwijhqHht.sOmjyW/u2Jc10LJcjf9Nlp0yUzGFv8LNveM2TP6', '2023-06-13', 'Male', 'Doctor', '2023-06-04 09:40:57', '1b3fd74f8f461b84a8eaf7723d0f01b0', 1, '125554', '2023-05-11-SumanDevkota-Unit3.pdf', 1, 0),
(84, 'Proth Thears', 'n@gmail.com', '$2y$10$S93J3bL/8UDsVQJS09yPkuAPKIvrQ6mZbBReQis./BFrnsjCGZ.oa', '2023-06-06', 'Male', 'Patient', '2023-06-04 09:44:11', '8a8f1c5dbc1ca3dc160a00aec7231006', 1, '', '2023-05-11-SumanDevkota-Unit3.pdf', 1, 1),
(85, 'admin', 'admin@gmail.com', '$2y$10$g0SkgNLaF56AEAjpqvEGAO4idWsM0EOh4b2N/XmLJn60AjLmM6yNS', '2023-06-05', 'Male', 'Admin', '2023-06-06 20:20:57', '43875232c6ee29f0bf271a3a19014d2b', 1, '', '', 0, 0),
(86, 'Sandip Magar', 'doctor2@gmail.com', '$2y$10$7uvV3/JRqkazIV/Ka.dKS.2ort7P/vVNyk5vEmablCCWCeAdb/2vy', '2020-02-11', 'Male', 'Doctor', '2023-06-12 04:11:47', 'ae8ce449147f44381608ce91138303fe', 1, '56555', '2023-06-08SumanDevkota-Hw.pdf', 1, 0),
(87, 'Hari Ram Poudel', 'doctor3@gmail.com', '$2y$10$bXdbzvcgj92BQXSEQPfxMuSmDJJuuLfs5GGqo3agGqrwd4plG47NC', '2021-01-06', 'Male', 'Doctor', '2023-06-12 04:12:57', '5d2fd47463cc7e865f469332167a109a', 1, '555212', '2023-06-08-SumanDevkota-Assignments.pdf', 1, 0),
(88, 'Tilak Acharaya', 'doctor4@gmail.com', '$2y$10$doMSKHbsajDHsQHCEgobOOzrSVCndcRuAsfxlnrfcsaK4Dz0N.yNa', '2023-06-21', 'Male', 'Doctor', '2023-06-12 04:14:47', 'dc143e9764b72cc9318dfe400f026b10', 1, '25454', '2023-06-08-SumanDevkota-Assignment.docx', 0, 0),
(89, 'Sanjan Saru Magar', 'doctor5@gmail.com', '$2y$10$RjvqLaG3EqSBqOBd8TVZzeBfmYUUGDm.GoSrUq99HUQ9yEtlO5r52', '2023-06-05', 'Male', 'Doctor', '2023-06-12 04:16:11', '83e1b732bc0de8d57424fd8ffb090625', 1, '125552', 'chapter3.docx', 1, 0),
(90, 'Sabin Gurung', 'doccheck@gmail.com', '$2y$10$ZvO2PKz2iGuOeGSzwWPULuSJrLtEEXqvkptF..e08rdGWXEa71VhS', '2023-06-05', 'Male', 'Doctor', '2023-06-16 12:30:42', 'ce35f1edc5939a6d5ace79bd59ed2f05', 1, '12345678', '2023-06-08SumanDevkota-Hw.pdf', 1, 0),
(92, 'Charlie Chairs', 'swd@gmail.com', '$2y$10$1/ivRErQCWFkwYLFq9bRO.2MWrZW7OleOBOwjqsDIgB2g.bkVMssm', '2023-06-06', 'Male', 'Patient', '2023-06-16 12:32:11', 'f5ab8c66a9e668ada892b472b1ae896e', 1, '', '', 1, 0),
(93, 'Ram Prasad Adhikari', 'ds525@gmail.com', '$2y$10$vk2P75vB1Oo5m7JC44w1wONiGJa8Ncp8QXvGxuIWtOdkOHg48SwZ6', '2023-06-07', 'Male', 'Doctor', '2023-06-18 00:27:59', 'b6b2b99ff720fd219c14dac57213631a', 0, '3214555', 'mymedschema.pdf', 0, 0),
(94, 'Okhal Dhungana', 'man525@gmail.com', '$2y$10$XTsNJB8NNAZX0fq/9sIzSe8Kn/an6es0ceHpqm9GfQt6ylzQkWe5O', '2023-06-08', 'Male', 'Doctor', '2023-06-18 00:30:38', 'ae442f0e94dfdd19d563479eff76b914', 1, '3214555', 'For-mid-defence-final.docx', 1, 0),
(95, 'Navina', 'navina@gmail.com', '$2y$10$CVbQtiSIyLidg79HO9vsk.AtOJAIly8FSmTAs1pJZtT3JUWcJB8KK', '2023-06-05', 'Female', 'Patient', '2023-06-18 06:37:32', '683440809762112fdc097744adc8d533', 1, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientdetails`
--

CREATE TABLE `patientdetails` (
  `PatientId` int(11) NOT NULL,
  `LoginId` int(11) NOT NULL,
  `PatientCity` varchar(255) NOT NULL DEFAULT 'XXXX',
  `PatientState` varchar(255) NOT NULL DEFAULT 'Province3',
  `PatientHouseNo` varchar(255) NOT NULL DEFAULT 'xxxx',
  `PatientBloodGroup` varchar(25) NOT NULL DEFAULT 'A+',
  `PatientMobile` bigint(20) NOT NULL DEFAULT 9876543210,
  `PatientProfilePicture` varchar(300) NOT NULL DEFAULT 'PP1.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientdetails`
--

INSERT INTO `patientdetails` (`PatientId`, `LoginId`, `PatientCity`, `PatientState`, `PatientHouseNo`, `PatientBloodGroup`, `PatientMobile`, `PatientProfilePicture`) VALUES
(1, 82, 'Pokhara', 'Province3', 'xxxx', 'A+', 9876543210, 'daad.jpg'),
(2, 92, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png'),
(3, 78, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png'),
(4, 79, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png'),
(5, 80, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png'),
(6, 81, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png'),
(7, 84, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png'),
(8, 95, 'XXXX', 'Province3', 'xxxx', 'A+', 9876543210, 'PP1.png');

-- --------------------------------------------------------

--
-- Table structure for table `slidertable`
--

CREATE TABLE `slidertable` (
  `sliderid` int(11) NOT NULL,
  `sliderheading` varchar(255) NOT NULL,
  `sliderparagraph` varchar(255) NOT NULL,
  `sliderimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slidertable`
--

INSERT INTO `slidertable` (`sliderid`, `sliderheading`, `sliderparagraph`, `sliderimage`) VALUES
(17, ' ', 'Healthcare facilities play a very important role in improving the quality of life of people.', 'doc3.jpg'),
(18, ' ', 'To provide high quality specialized medical care involving a range of health professionals and promote highly-advanced medical treatments', 'qwe.png'),
(19, '    ', 'Deliver the service that is responsive, efficient, courteous and helpful.', 'dctor.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  ADD PRIMARY KEY (`appointid`),
  ADD KEY `docid` (`docid`),
  ADD KEY `patientid` (`patientid`);

--
-- Indexes for table `doctordetails`
--
ALTER TABLE `doctordetails`
  ADD PRIMARY KEY (`Did`),
  ADD KEY `LoginId` (`LoginId`);

--
-- Indexes for table `logintable`
--
ALTER TABLE `logintable`
  ADD PRIMARY KEY (`LoginId`);

--
-- Indexes for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD PRIMARY KEY (`PatientId`),
  ADD KEY `LoginId` (`LoginId`);

--
-- Indexes for table `slidertable`
--
ALTER TABLE `slidertable`
  ADD PRIMARY KEY (`sliderid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  MODIFY `appointid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctordetails`
--
ALTER TABLE `doctordetails`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logintable`
--
ALTER TABLE `logintable`
  MODIFY `LoginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `patientdetails`
--
ALTER TABLE `patientdetails`
  MODIFY `PatientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slidertable`
--
ALTER TABLE `slidertable`
  MODIFY `sliderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  ADD CONSTRAINT `appointmenttable_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `logintable` (`LoginId`),
  ADD CONSTRAINT `appointmenttable_ibfk_2` FOREIGN KEY (`patientid`) REFERENCES `logintable` (`LoginId`);

--
-- Constraints for table `doctordetails`
--
ALTER TABLE `doctordetails`
  ADD CONSTRAINT `doctordetails_ibfk_1` FOREIGN KEY (`LoginId`) REFERENCES `logintable` (`LoginId`);

--
-- Constraints for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD CONSTRAINT `patientdetails_ibfk_1` FOREIGN KEY (`LoginId`) REFERENCES `logintable` (`LoginId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
