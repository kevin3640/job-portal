-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 02:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id8579446_jobbooth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptedapplier`
--

CREATE TABLE `acceptedapplier` (
  `id` int(20) NOT NULL,
  `compemail` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `jobemail` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appliers`
--

CREATE TABLE `appliers` (
  `appliersid` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no` int(15) NOT NULL,
  `skill` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `compemail` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `compimg` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `compname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `accept` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `seen` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appliers`
--

INSERT INTO `appliers` (`appliersid`, `title`, `img`, `name`, `email`, `no`, `skill`, `compemail`, `compimg`, `compname`, `accept`, `seen`) VALUES
(1, 'Android developer', '15042019215824.jpg', 'Akshit', 'a@gmail.com', 2147483647, '', 't@gmail.com', '15042019110301.jpg', 'Tata co.', 'false', 'true'),
(2, 'Bridge construction', '15042019223323.jpg', 'Sidharth', 'sid@gmail.com', 997646179, '', 't@gmail.com', '15042019110301.jpg', 'Tata co.', 'true', 'true'),
(4, 'Bridge construction', '15042019215824.jpg', 'Akshit', 'a@gmail.com', 2147483647, '', 't@gmail.com', '15042019110301.jpg', 'Tata co.', 'false', 'true'),
(5, 'Android developer', '15042019215824.jpg', 'Akshit', 'a@gmail.com', 2147483647, '', '', '', '', 'false', 'true'),
(6, 'Android developer', '', 'gita', 'gita@gmail.com', 2147483647, '', 't@gmail.com', '15042019110301.jpg', 'Tata co.', 'true', 'true'),
(12, 'Android developer', '15042019215824.jpg', 'Akshit', 'a@gmail.com', 2147483647, '', '', '', '', 'false', 'true'),
(13, 'Android developer', '15042019215824.jpg', 'Akshit', 'a@gmail.com', 2147483647, '', '', '', '', 'false', 'true'),
(14, 'Bridge construction', '15042019215824.jpg', 'Akshit', 'a@gmail.com', 2147483647, '', '', '', '', '', ''),
(15, 'PHP Developer', '11102019100305.jpg', 'Akshit', 'akshit@gmail.com', 2147483647, '', '', '', '', '', 'true'),
(16, 'PHP Developer', '14102019115736.jpg', 'Akshit Zatakia', 'akzata@gmail.com', 2147483647, '', 'tata@gmail.com', '15042019110301.jpg', 'Tata co.', 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(10) NOT NULL,
  `catname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `catimage` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `catimage`) VALUES
(1, 'Engineering', 'engineer.jpg'),
(2, 'Medical', 'medical.jpg'),
(3, 'Bank Jobs', 'bank.jpg'),
(4, 'Teaching', 'teach.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `companyfeedback`
--

CREATE TABLE `companyfeedback` (
  `id` int(10) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `feed` varchar(30) NOT NULL,
  `rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyfeedback`
--

INSERT INTO `companyfeedback` (`id`, `companyname`, `feed`, `rate`) VALUES
(1, 't@gmail.com', 'Superb', '4.0'),
(2, 't@gmail.com', '', '3.0'),
(3, 't@gmail.com', '', '5.0'),
(4, 't@gmail.com', 'nice Very Usefull ', '4.5');

-- --------------------------------------------------------

--
-- Table structure for table `dpcompany`
--

CREATE TABLE `dpcompany` (
  `id` int(20) NOT NULL,
  `image` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dpcompany`
--

INSERT INTO `dpcompany` (`id`, `image`, `email`, `title`) VALUES
(1, '15042019110301.jpg', 'tata@gmail.com', ''),
(2, '03052019001825.jpg', 'abc@gmail.com', ''),
(3, '11102019100450.jpg', 'tt@gmail.com', '');

--
-- Triggers `dpcompany`
--
DELIMITER $$
CREATE TRIGGER `updateimagetopost` AFTER UPDATE ON `dpcompany` FOR EACH ROW UPDATE post SET image=NEW.image WHERE email=NEW.email
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dpjob`
--

CREATE TABLE `dpjob` (
  `id` int(20) NOT NULL,
  `url` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dpjob`
--

INSERT INTO `dpjob` (`id`, `url`, `email`) VALUES
(1, '15042019215824.jpg', 'a@gmail.com'),
(2, '15042019223323.jpg', 'sid@gmail.com'),
(3, '11102019100305.jpg', 'akshit@gmail.com'),
(4, '14102019115736.jpg', 'akzata@gmail.com');

--
-- Triggers `dpjob`
--
DELIMITER $$
CREATE TRIGGER `updateimagetoappliers` AFTER UPDATE ON `dpjob` FOR EACH ROW UPDATE appliers SET img=NEW.url where email=NEW.email
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_registration_tbl`
--

CREATE TABLE `employee_registration_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ans` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_registration_tbl`
--

INSERT INTO `employee_registration_tbl` (`id`, `name`, `email`, `password`, `ans`) VALUES
(1, 'Tata co.', 'tata@gmail.com', '123', 't'),
(2, 'nirma', 'nirma@gmail.com', 'nirma', 'nirma'),
(3, 'abc', 'abc@gmail.com', 'abc', 'abc'),
(4, 'Tata', 'tt@gmail.com', 'tata123', 'tt');

-- --------------------------------------------------------

--
-- Table structure for table `jobfeedback`
--

CREATE TABLE `jobfeedback` (
  `id` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `feed` varchar(30) NOT NULL,
  `rate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobfeedback`
--

INSERT INTO `jobfeedback` (`id`, `email`, `feed`, `rate`) VALUES
(1, 'a@gmail.com', 'Excellent application', '2.5'),
(2, 'gita@gmail.com', '', '2.5'),
(3, 'gita@gmail.com', '', '5.0'),
(4, 'jaymehta@gmail.com', '', '3.0'),
(5, 'nrm@gmail.com', '', '3.0'),
(6, 'a@gmail.com', '', '3.0'),
(7, 'a@gmail.com', 'Excellent app', '4.5'),
(8, 'akzata@gmail.com', '', '5.0');

-- --------------------------------------------------------

--
-- Table structure for table `job_registration_tbl`
--

CREATE TABLE `job_registration_tbl` (
  `jid` int(10) NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `experince` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `catname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ans` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_registration_tbl`
--

INSERT INTO `job_registration_tbl` (`jid`, `email`, `password`, `name`, `mobile`, `gender`, `dob`, `experince`, `catname`, `subname`, `city`, `ans`) VALUES
(1, 'akshit@gmail.com', '123', 'Akshit', '9375126826', '', '27-4-2019', '2', '', '', 'Rajkot', 'a'),
(2, 'sid@gmail.com', 's', 'Sidharth', '997646179', '', '1-4-2019', '0', '', '', 'Ahmedabad', 's'),
(3, 'gita@gmail.com', 'gita', 'gita', '9997864505', '', '7-6-1969', '3', '', '', 'porbandar', 'gita'),
(5, 'nrm@gmail.com', 'er2', 'nrm', '9825147320', '', '14-7-1963', '30', '', '', 'pbr', 'nrm'),
(7, 'akzata@gmail.com', '123', 'Akshit Zatakia', '9375126826', '', '', '2', '', '', 'Rajkot', 'akshit');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(10) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `compname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `catname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salary` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `expert` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skill` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `postby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `seen` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `email`, `compname`, `catname`, `subname`, `title`, `salary`, `image`, `quantity`, `expert`, `skill`, `notes`, `postby`, `date`, `seen`) VALUES
(1, 't@gmail.com', 'Tata co.', 'engineering', 'mechanical', 'Bridge construction', '10000', '15042019110301.jpg', '5', 'na', 'na', 'na', 'Mr. Birla', '15-04-2019', 'true'),
(2, 't@gmail.com', 'Tata co.', 'Engineering', 'Computer', 'Android developer', '20000', '15042019110301.jpg', '5', 'na', 'na', 'na', 'Mr Brila', '15-04-2019', 'true'),
(3, 'tata@gmail.com', 'Tata co.', 'Engineering', 'Computer', 'PHP Developer', '50000', '15042019110301.jpg', '2', 'Php expert', 'Php expert', '', 'Mr. Chauhan', '14-10-2019', '');

--
-- Triggers `post`
--
DELIMITER $$
CREATE TRIGGER `deletefromapplier` BEFORE DELETE ON `post` FOR EACH ROW DELETE FROM appliers WHERE title=OLD.title
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `qid` int(11) NOT NULL,
  `pid` int(50) NOT NULL,
  `que` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `url` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `url`, `user`) VALUES
(1, '15042019223414.pdf', 'sid@gmail.com'),
(2, '15042019235238.pdf', 'a@gmail.com'),
(3, '15042019235323.pdf', 'a@gmail.com'),
(4, '03052019011559.pdf', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `subid` int(10) NOT NULL,
  `catname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subimage` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`subid`, `catname`, `subname`, `subimage`) VALUES
(1, 'Engineering', 'Mechanical', 'mechanical.jpg'),
(2, 'Engineering', 'Computer', 'computer.jpg'),
(3, 'Medical', 'Heart', 'heart.jpg'),
(4, 'Medical', 'Cancer', 'cancer.jpg'),
(5, 'Teaching', 'Science', 'scince.jpg'),
(6, 'Teaching', 'Maths', 'maths.jpg'),
(7, 'Bank Jobs', 'Accounting', 'account.jpg'),
(8, 'Engineering', 'Civil', 'civil.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptedapplier`
--
ALTER TABLE `acceptedapplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliers`
--
ALTER TABLE `appliers`
  ADD PRIMARY KEY (`appliersid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `companyfeedback`
--
ALTER TABLE `companyfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dpcompany`
--
ALTER TABLE `dpcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dpjob`
--
ALTER TABLE `dpjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_registration_tbl`
--
ALTER TABLE `employee_registration_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobfeedback`
--
ALTER TABLE `jobfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_registration_tbl`
--
ALTER TABLE `job_registration_tbl`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`subid`),
  ADD KEY `foreign` (`catname`),
  ADD KEY `cat-id` (`catname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptedapplier`
--
ALTER TABLE `acceptedapplier`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appliers`
--
ALTER TABLE `appliers`
  MODIFY `appliersid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companyfeedback`
--
ALTER TABLE `companyfeedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dpcompany`
--
ALTER TABLE `dpcompany`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dpjob`
--
ALTER TABLE `dpjob`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_registration_tbl`
--
ALTER TABLE `employee_registration_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobfeedback`
--
ALTER TABLE `jobfeedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_registration_tbl`
--
ALTER TABLE `job_registration_tbl`
  MODIFY `jid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `subid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
