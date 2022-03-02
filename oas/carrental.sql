-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 01:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(4, 'online1234@gmail.com', 'Elephanta caves\nAn unique world heritage site, magnificent and beautiful.  Also the 1.5 hour boat ride to the island is relaxing and enjoyable. A must visit while in Mumbai.', '2022-03-01 12:49:36', 1),
(5, 'online12345@gmail.com', 'This is one of the best tourist attraction in India\nIt not only attracts people from India but it also attracts people from all over the world.\nSo I personally request all of the who are reading this review to go there and enjoy.\nThere is even many boats which takes us to the sea for a ride which allows us to see the whole place.\n\n', '2022-03-01 12:53:29', 1),
(6, 'online123456@gmail.com', 'Super ride, Fun for everyone one.\r\nAll age group people can enjoy.\r\nGo and enjoy the water rides\r\nBeat the Heat !!\r\n', '2022-03-01 12:55:27', 1),
(7, 'online123@gmail.com', 'Jehangir Art Gallery: Visit this gallery for a taste of modern Indian painting and sculpture, and when you tire of walking around, settle into the comfort of Cafe Samovar with a steaming cup of tea. This is Mumbais most prestigious art gallery, which exhibits artwork by well-known Indian artists. There is also the plaza outside, where artists sell their paintings and also take on commissions for work. \n\n', '2022-03-01 12:57:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Richard', 'online123@gmail.com', '9ea5e6f10d48803ae38499c0d5e6d93f', '9594969192', NULL, NULL, NULL, NULL, '2022-03-01 12:39:10', NULL),
(6, 'Kevin', 'online1234@gmail.com', '9ea5e6f10d48803ae38499c0d5e6d93f', '9594969192', NULL, NULL, NULL, NULL, '2022-03-01 12:45:03', NULL),
(7, 'Soham', 'online12345@gmail.com', '9ea5e6f10d48803ae38499c0d5e6d93f', '9594969192', NULL, NULL, NULL, NULL, '2022-03-01 12:45:49', NULL),
(8, 'Suraj', 'online123456@gmail.com', '9ea5e6f10d48803ae38499c0d5e6d93f', '9594969192', NULL, NULL, NULL, NULL, '2022-03-01 12:46:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
