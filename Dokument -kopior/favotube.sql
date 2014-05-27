-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 21 maj 2014 kl 18:02
-- Serverversion: 5.6.15-log
-- PHP-version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `favotube`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `folder`
--

CREATE TABLE IF NOT EXISTS `folder` (
  `folderId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `Name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumpning av Data i tabell `folder`
--

INSERT INTO `folder` (`folderId`, `userId`, `name`) VALUES
(1, 1, 'Piano'),
(2, 1, 'Gitarr'),
(4, 1, 'Jazz'),
(13, 1, 'Kodaline');

-- --------------------------------------------------------

--
-- Tabellstruktur `foldergroup`
--

CREATE TABLE IF NOT EXISTS `foldergroup` (
  `fgroupid` int(11) NOT NULL AUTO_INCREMENT,
  `folderId` int(11) NOT NULL,
  `youtubeid` varchar(11) NOT NULL,
  PRIMARY KEY (`fgroupid`),
  KEY `youtubeid` (`youtubeid`),
  KEY `folderId` (`folderId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- RELATIONER FÖR TABELL `foldergroup`:
--   `youtubeid`
--       `youtubeid` -> `youtubeid`
--

--
-- Dumpning av Data i tabell `foldergroup`
--

INSERT INTO `foldergroup` (`fgroupid`, `folderId`, `youtubeid`) VALUES
(1, 1, 'MwpMEbgC7DA');

-- --------------------------------------------------------

--
-- Tabellstruktur `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `videoboardId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `LoginSession` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `user`
--

INSERT INTO `user` (`userId`, `videoboardId`, `username`, `password`, `firstname`, `lastname`, `email`, `LastLogin`, `LoginSession`) VALUES
(1, 1, 'miaaim', '$2y$10$OTEwYWU3MjM4N2JiZGQyMeBYEPV0LOgT.eRUGbP/R8f1HVzNsEYfS', '', '', '', '2014-05-13 14:23:26', 'vn2t2kloe5qke9et5mhb3uvr75'),
(2, 2, 'Lina', 'Lina', '', '', '', '0000-00-00 00:00:00', ''),
(3, 3, 'Annika', 'Annika', '', '', '', '0000-00-00 00:00:00', ''),
(4, 4, 'annie', 'annie', 'Annie', 'Sahlberg', 'test@hotmail.com', '2014-05-10 07:13:53', 'fbo6ahe8j5rfn29o845bn1djg5');

-- --------------------------------------------------------

--
-- Tabellstruktur `videoboard`
--

CREATE TABLE IF NOT EXISTS `videoboard` (
  `videoboardId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`videoboardId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `videoboard`
--

INSERT INTO `videoboard` (`videoboardId`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Tabellstruktur `videogroup`
--

CREATE TABLE IF NOT EXISTS `videogroup` (
  `videoid` int(11) NOT NULL AUTO_INCREMENT,
  `videoboardid` int(11) NOT NULL,
  `youtubeid` varchar(11) NOT NULL,
  `positionX` int(11) NOT NULL,
  `positionY` int(11) NOT NULL,
  PRIMARY KEY (`videoid`),
  KEY `youtubeid` (`youtubeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- RELATIONER FÖR TABELL `videogroup`:
--   `youtubeid`
--       `youtubeid` -> `youtubeid`
--

--
-- Dumpning av Data i tabell `videogroup`
--

INSERT INTO `videogroup` (`videoid`, `videoboardid`, `youtubeid`, `positionX`, `positionY`) VALUES
(1, 4, 'fSPq1j_Ny8s', 12, 12),
(49, 1, 'Array', 12, 12),
(50, 1, 'MwpMEbgC7DA', 12, 12),
(51, 1, 'E4povfmX144', 12, 12),
(63, 1, 'Yben17eHWsI', 12, 12),
(64, 1, '7HKoqNJtMTQ', 12, 12);

-- --------------------------------------------------------

--
-- Tabellstruktur `youtubeid`
--

CREATE TABLE IF NOT EXISTS `youtubeid` (
  `youtubeid` varchar(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`youtubeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `youtubeid`
--

INSERT INTO `youtubeid` (`youtubeid`, `title`) VALUES
('1zCZ1e6CkLw', 'The Overtones - Glory of Love (Acoustic)'),
('3CvBCMoFM8g', 'Create a Loading Circle Animation in Photoshop CS6 | Iceflow'),
('5XjNlpe7hII', 'Kimbra - "Good Intent" [Official Music Video]'),
('7HKoqNJtMTQ', 'ADELE - Skyfall'),
('7tJ6DPRctno', 'Kodaline - Pray (Audio)'),
('9xUo7g5CQbs', 'Esperanza Spalding - Precious (Live at Amoeba)'),
('AdYz0fYHdRc', 'Bob Schneider  - Bullets'),
('Aeuob9pXlQs', 'Relaxing Music.Calming Music.Soothing Music.10 min.'),
('Array', 'Esperanza Spalding - Precious (Live at Amoeba)'),
('Cgovv8jWETM', 'Coldplay - Paradise (Peponi) African Style (ft. guest artist, Alex Boye) - ThePianoGuys'),
('E4povfmX144', 'Kodaline - High Hopes'),
('es5NX9xNC44', 'Tom Law - never met you'),
('FCT8Juumglw', 'lewis watson - droplets featuring gabrielle aplin (official '),
('Fin1WPTWnNQ', '000webhost Tutorials - Creating, Importing and Exporting a D'),
('fSPq1j_Ny8s', 'Steven Hall - Britain''s Got Talent 2011'),
('hysbjX2r7GE', 'Feist - When I Was A Young Girl (Paris)'),
('i257ygpG4gA', 'Ellie Goulding - All I Want (Kodaline Cover)'),
('IBDrrhRO41c', 'Knäckebröddansen'),
('L_djta82BBc', 'Rizzle Kicks - Down With The Trumpets (Music Video)'),
('MwpMEbgC7DA', 'Tom Odell - Another Love'),
('P5jFuoKMQRA', 'Lucy Rose - All I''ve Got'),
('QFtnV6pMqvA', 'Rasmus Seebach - Natteravn'),
('Yben17eHWsI', 'Dance Pe Chance - Song -  Rab Ne Bana Di Jodi'),
('Yemmh3bSWfE', 'Kodaline - All My Friends');

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `foldergroup`
--
ALTER TABLE `foldergroup`
  ADD CONSTRAINT `folder_youtubeid` FOREIGN KEY (`youtubeid`) REFERENCES `youtubeid` (`youtubeid`);

--
-- Restriktioner för tabell `videogroup`
--
ALTER TABLE `videogroup`
  ADD CONSTRAINT `youtubeid_videogroup` FOREIGN KEY (`youtubeid`) REFERENCES `youtubeid` (`youtubeid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
