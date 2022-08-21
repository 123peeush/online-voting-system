-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2012 at 01:54 AM
-- Server version: 5.1.36-community-log
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `CandidateID` int(11) NOT NULL AUTO_INCREMENT,
  `abc` varchar(1) NOT NULL,
  `Position` varchar(200) NOT NULL,
  `Party` varchar(100) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Photo` varchar(200) NOT NULL,
  PRIMARY KEY (`CandidateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=191 ;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandidateID`, `abc`, `Position`, `Party`, `FirstName`, `LastName`, `MiddleName`, `Gender`, `Year`, `Photo`) VALUES
(101, 'c', '1st Year Representative', 'CS', 'Akshat', 'Yadav', '', 'Male', '1st year', 'upload/1.jpg'),
(102, 'c', '1st Year Representative', 'IT', 'Jahan', 'Khan', '', 'Male', '1st year', 'upload/2.jpg'),
(103, 'c', '1st Year Representative', 'ARTS', 'Peeush', 'Raj', '', 'Male', '1st year', 'upload/black.jpg'),
(95, 'a', 'Governor', 'CS', 'Satyam', 'Singh', '', 'Male', '2nd year', 'upload/satyam.jpg'),
(128, 'b', 'Vice-Governor', 'CS', 'Deepak', 'Pandey', '', 'Male', '2nd year', 'upload/captain.jpg'),
(129, 'b', 'Vice-Governor', 'IT', 'Sumit', 'Kumar', '', 'Male', '2nd year', 'upload/6.png'),
(152, 'd', '2nd Year Representative', 'CS', 'Ankita', 'Singh', '', 'FeMale', '2nd year', 'upload/7.png'),
(153, 'd', '2nd Year Representative', 'IT', 'Ankita', 'Kumari', '', 'FeMale', '2nd year', 'upload/8.png'),
(154, 'd', '2nd Year Representative', 'ARTS', 'Nishant', 'Singh', '', 'Male', '2nd year', 'upload/9.png'),
(155, 'e', '3rd Year Representative', 'CS', 'Muskan', 'Singh', '', 'FeMale', '3rd year', 'upload/darkness.jpg'),
(158, 'f', '3rd Year Representative', 'IT', 'Sudeep', 'Pandey', 'Sukhad', 'Male', '3rd year', 'upload/12.png'),
(159, 'e', '3rd Year Representative', 'ARTS', 'Sorabh', 'Patel', '', 'Male', '3rd year', 'upload/13.jpg'),
(173, 'e', '3rd Year Representative', 'H.M', 'Bhavishya', 'Chauhan', '', 'Male', '3rd year', 'upload/15.jpg'),
(162, 'f', '3rd Year Representative', 'CS', 'Nishtha', 'Sharma', '', 'FeMale', '3rd year', 'upload/16.jpg'),
(174, 'e', '3rd Year Representative', 'IT', 'Harsh', 'Singh', '', 'Male', '3rd year', 'upload/add.png'),
(183, 'f', '4th Year Representative', 'CS', 'Tanvi', 'Yadav', '', 'FeMale', '4th year', 'upload/avatar.png'),
(184, 'f', '4th Year Representative', 'IT', 'Sanya', 'Khan', '', 'FeMale', '4th year', 'upload/11.png'),
(185, 'f', '4th Year Representative', 'ARTS', 'Lakshay', 'Chikara', '', 'Male', '4th year', 'upload/p.jpg'),
(190, 'a', 'Governor', 'IT', 'Aman', 'Jha', '', 'Male', '2nd year', 'upload/5.png');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(30) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=569 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `data`, `action`, `date`, `user`) VALUES
(568, 'Satyam Singh', 'Login', '2022-04-22 09:46:23', 'admin'),
(567, 'Satyam Singh', 'Logout', '2022-04-22 09:45:59', 'admin'),
(566, 'Akshat Yadav', 'Login', '2022-04-22 09:44:41', 'admin'),
(565, 'Peeush Raj', 'Login', '2022-04-22 20:24:08', 'admin'),
(564, 'Jahan Khan', 'Deleted Voter', '04/22/2022 11:1:39', 'admin'),
(563, 'jahan Khan', 'Login', '2022-04-22 10:48:40', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `FirstName`, `LastName`, `UserName`, `Password`, `User_Type`) VALUES
(2, 'satyam', 'singh', 'admin', 'admin', 'admin'),
(3, 'akshat', 'yadav', 'abcsd','abcsd', 'admin'),
(4, 'peeush', 'raj', 'klmvn', 'klmvn', 'admin'),
(5, 'jahan', 'khan', 'wxyaz', 'wxyaz', 'admin');
-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `VoterID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`VoterID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`VoterID`, `FirstName`, `LastName`, `MiddleName`, `Username`, `Password`, `Year`, `Status`) VALUES
(24, 'Prakhyat', 'Pandit', '', '20100333', 'concon', '1st year', 'Unvoted'),
(23, 'Bhavya', 'Kumari', '', '20100222', 'raprap', '1st year', 'Unvoted'),
(17, 'Saurabh', 'Kumar', '', '20100323', 'may', '1st year', 'Unvoted'),
(18, 'Satyam', 'Kumar', '', '20100316', 'golda', '1st year', 'Unvoted'),
(19, 'Govind', 'Narayan', '', '20100968', 'shiera', '3rd year', 'Unvoted'),
(20, 'Meetali', 'Raj', '', '20100381', 'mary', '1st year', 'Unvoted'),
(21, 'Manshi', 'Singh', '', '20100412', 'kevin', '1st year', 'Unvoted'),
(22, 'Sakshi', 'Mishra', '', '20100111', 'denmark', '1st year', 'Unvoted'),
(16, 'Komal', 'Yadav', '', '20100349', 'zac', '3rd year', 'Unvoted');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CandidateID` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`ID`, `CandidateID`, `votes`) VALUES
(205, 0, 0),
(204, 0, 0),
(203, 153, 0),
(202, 129, 0),
(201, 95, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
