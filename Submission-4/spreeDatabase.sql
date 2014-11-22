-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2014 at 06:49 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spree`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `account` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `account`) VALUES
(1, 'admin1', 'admin1', 19900);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`id` int(11) NOT NULL,
  `registrationFee` float NOT NULL,
  `eventHead` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eventmanager`
--

CREATE TABLE IF NOT EXISTS `eventmanager` (
`id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `sport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_fixture`
--

CREATE TABLE IF NOT EXISTS `event_fixture` (
`id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `FixtureId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fixture`
--

CREATE TABLE IF NOT EXISTS `fixture` (
`id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL DEFAULT 'TBA',
  `date` varchar(255) DEFAULT NULL,
  `sport` int(11) DEFAULT NULL,
  `team1` int(11) DEFAULT NULL,
  `team2` int(11) DEFAULT NULL,
  `result` text NOT NULL,
  `score` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fixture`
--

INSERT INTO `fixture` (`id`, `location`, `date`, `sport`, `team1`, `team2`, `result`, `score`) VALUES
(1, 'TBA', '2014-11-27', 1, 2, 1, 'Won by 1000 runs', '1234/1'),
(2, 'TBA', '2014-11-29', 2, 1, 2, 'Team 1 won.', '123');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE IF NOT EXISTS `participant` (
`id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `details` int(11) DEFAULT NULL,
  `event` int(11) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `fixtures` int(11) DEFAULT NULL,
  `isCaptain` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id`, `username`, `password`, `details`, `event`, `team`, `fixtures`, `isCaptain`) VALUES
(1, 'participant1', 'participant1', 1, 1, NULL, NULL, 0),
(2, 'qwert', 'asdfghjkl', 2, NULL, NULL, NULL, 0),
(3, 'qwertyy', 'qwertyuiop', 3, NULL, 4, NULL, 0),
(4, 'mvgogate', 'a', 4, NULL, 5, NULL, 0),
(5, '', '', 5, NULL, 6, NULL, 0),
(6, 'mvg', 'mandar123', 6, NULL, 7, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
`id` int(11) NOT NULL,
  `ageLimit` int(11) DEFAULT NULL,
  `minNoOfPlayers` int(11) NOT NULL,
  `maxNoOfPlayers` int(11) NOT NULL,
  `minNoOfTeams` int(11) NOT NULL,
  `maxNoOfTeams` int(11) NOT NULL,
  `rulesDescription` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `ageLimit`, `minNoOfPlayers`, `maxNoOfPlayers`, `minNoOfTeams`, `maxNoOfTeams`, `rulesDescription`) VALUES
(1, 20, 11, 11, 2, 10, 'Cricket rules.'),
(2, 20, 11, 11, 2, 10, 'Football Rules.');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE IF NOT EXISTS `sport` (
`id` int(11) NOT NULL,
  `registrationFee` int(11) NOT NULL,
  `eventHead` int(11) NOT NULL,
  `sportName` text NOT NULL,
  `rules` int(11) NOT NULL,
  `rounds` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `registrationFee`, `eventHead`, `sportName`, `rules`, `rounds`) VALUES
(1, 100, 1, 'Cricket', 1, 3),
(2, 100, 2, 'Football', 2, 3),
(3, 100, 3, 'Carrom', 3, 3),
(4, 100, 4, 'Chess', 4, 3),
(5, 100, 5, 'Volleyball', 5, 3),
(6, 100, 6, 'Tennis', 6, 3),
(7, 100, 7, 'Table Tennis', 7, 3),
(8, 100, 8, 'Basketball', 8, 3),
(9, 100, 9, 'Badminton', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sport_fixture`
--

CREATE TABLE IF NOT EXISTS `sport_fixture` (
`id` int(11) NOT NULL,
  `sportId` int(11) NOT NULL,
  `fixtureId` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sport_fixture`
--

INSERT INTO `sport_fixture` (`id`, `sportId`, `fixtureId`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sport_team`
--

CREATE TABLE IF NOT EXISTS `sport_team` (
`id` int(11) NOT NULL,
  `sportId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sport_team`
--

INSERT INTO `sport_team` (`id`, `sportId`, `teamId`) VALUES
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, -1, 6),
(6, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `studentdetail`
--

CREATE TABLE IF NOT EXISTS `studentdetail` (
`id` int(11) NOT NULL,
  `studentID` text NOT NULL,
  `studentName` text NOT NULL,
  `collegeName` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `studentdetail`
--

INSERT INTO `studentdetail` (`id`, `studentID`, `studentName`, `collegeName`, `email`) VALUES
(1, '1', 'Participant1', 'College1', 'participant1@spree.org'),
(2, '749', 'Mandar', 'BITS PILANI', 'Mandar.Gogate'),
(3, 'aa', 'aa', 'aa', 'Mandar.Gogate'),
(4, '123', 'aa', 'aaa', 'aa'),
(5, 'm', 'm', 'm', 'm'),
(6, 'm', 'm', 'm', 'mvg@gmail.com'),
(7, 'e', 'h', 'fd', 'mvg@gmail.com'),
(8, 'rg', 'ghf', 'hgfh', 'mvg@gmail.com'),
(9, 'rg', 'ghf', 'hgfh', 'mvg@gmail.com'),
(10, 'v', 'mvgogate', 'mvgogate', 'mvg@gmail.com'),
(11, '', '', '', ''),
(12, 'm', 'Mandar', 'mvgogate', 'mvg@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
`id` int(11) NOT NULL,
  `sport` int(11) NOT NULL,
  `teamHead` int(11) NOT NULL,
  `teamName` text NOT NULL,
  `collegeName` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `sport`, `teamHead`, `teamName`, `collegeName`) VALUES
(1, 1, 1, 'Team1', 'College1'),
(2, 1, 2, 'Team2', 'College2'),
(3, 1, 2, 'bb', 'hgfh'),
(4, 1, 3, 'bb', 'hgfh'),
(5, 1, 4, 'MVG', 'mvgogate'),
(6, -1, 5, '', ''),
(7, 3, 6, '', 'mvgogate');

-- --------------------------------------------------------

--
-- Table structure for table `team_participant`
--

CREATE TABLE IF NOT EXISTS `team_participant` (
`id` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `participantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventmanager`
--
ALTER TABLE `eventmanager`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_fixture`
--
ALTER TABLE `event_fixture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixture`
--
ALTER TABLE `fixture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport_fixture`
--
ALTER TABLE `sport_fixture`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport_team`
--
ALTER TABLE `sport_team`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdetail`
--
ALTER TABLE `studentdetail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_participant`
--
ALTER TABLE `team_participant`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eventmanager`
--
ALTER TABLE `eventmanager`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_fixture`
--
ALTER TABLE `event_fixture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fixture`
--
ALTER TABLE `fixture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sport_fixture`
--
ALTER TABLE `sport_fixture`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sport_team`
--
ALTER TABLE `sport_team`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `studentdetail`
--
ALTER TABLE `studentdetail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `team_participant`
--
ALTER TABLE `team_participant`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
