-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 11:59 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Infinitio`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Best of Punjabi', 2, 1, 'assets/images/artwork/clearday.jpg'),
(2, 'EDM', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'International Artist', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'BollyWood', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Old is Gold', 1, 3, 'assets/images/artwork/popdance.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Sharry Maan'),
(2, 'Diljit Dosanjh'),
(3, 'Amrit Maan'),
(4, 'Homer'),
(5, 'Skrillex'),
(6, 'PegBoard Nerd'),
(7, 'Drake'),
(8, 'Linkin Park'),
(10, 'Jasmine Sanglar'),
(11, 'The ChainSmokers'),
(12, 'Diplo'),
(13, 'Marshmello'),
(14, 'Ayo & Teo'),
(15, 'Jasmine Sandlas'),
(16, 'Mohammed Rafi'),
(17, 'Kishore Kumar'),
(19, 'Movie Song');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Punjabi'),
(2, 'BollyWood'),
(3, 'Old is Gold'),
(4, 'EDM'),
(6, 'International Artist');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Gym Music', 'akhil', '2018-11-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 16, 1, 0),
(2, 34, 1, 1),
(3, 9, 1, 2),
(4, 19, 1, 3),
(5, 3, 1, 4),
(6, 35, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '3 Peg', 1, 1, 1, '4:06', 'assets/music/3 Peg.mp3', 1, 25),
(2, '5 Taara', 2, 1, 1, '3:09', 'assets/music/5 Taara.mp3', 2, 18),
(3, 'High End', 2, 1, 1, '3:02', 'assets/music/High End.mp3', 3, 19),
(7, 'Purple Lamborghini', 5, 2, 4, '3:35', 'assets/music/Purple Lamborghini.mp3', 2, 21),
(8, 'Try It Out', 5, 2, 4, '3:49', 'assets/music/Try It Out.mp3', 2, 29),
(9, 'Breakin\' a Sweat', 5, 2, 4, '8:03', 'assets/music/Break.mp3', 3, 29),
(10, 'Here It Comes', 6, 2, 4, '3:33', 'assets/music/Here It Comes.mp3', 3, 28),
(11, 'Bamb Jatt', 3, 1, 6, '2:50', 'assets/music/Bamb Jatt.mp3', 4, 28),
(13, 'Keke - Do You Love Me', 7, 3, 6, '3:36', 'assets/music/Keke.m4a', 5, 14),
(14, 'God\'s Plan', 7, 3, 6, '5:56', 'assets/music/gods.m4a', 4, 13),
(15, 'Started From the Bottom', 7, 3, 6, '2:53', 'assets/music/Started From the Bottom.mp3', 3, 15),
(16, 'Numb', 8, 3, 6, '3:07', 'assets/music/numb.mp3', 2, 21),
(19, 'Everybody Hates Me', 11, 2, 4, '3:45', 'assets/music/Everybody Hates Me.mp3', 4, 9),
(32, 'Summer', 12, 2, 4, '4:27', 'assets/music/summer.mp3', 4, 17),
(33, 'You Can cry', 13, 2, 4, '3:14', 'assets/music/you can cry.mp3', 4, 10),
(34, 'Rolexx', 14, 3, 6, '4:00', 'assets/music/rolex.mp3', 4, 13),
(35, 'Sip Sip', 15, 1, 1, '3:36', 'assets/music/sipsip.mp3', 4, 15),
(36, 'Badan Pe Sitare', 16, 5, 3, '3:36', 'assets/music/Badan Pe Sitare.mp3', 4, 14),
(37, 'Mere Sapno Ki Rani', 17, 5, 3, '4:12', 'assets/music/Mere Sapno Ki Rani.mp3', 4, 12),
(38, 'Jaane Ja Dhoondta Phir Raha', 17, 5, 3, '6:03', 'assets/music/Jaane Ja Dhoondta Phir Raha.mp3', 4, 11),
(39, 'Likhe jo Kath Tuje', 16, 5, 3, '6:03', 'assets/music/Likhe jo Khath Tuje.mp3', 4, 11),
(40, 'Dilli Wali Girlfriend', 19, 4, 2, '4:05', 'assets/music/Dilli Wali Girlfriend.mp3', 4, 12),
(41, 'Zingaat', 19, 4, 2, '4:04', 'assets/music/Zingaat.mp3', 4, 16),
(42, 'Samjhawan', 19, 4, 2, '3:34', 'assets/music/Samjhawan.mp3', 4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(3, 'Arpitsharma', 'Arpit', 'Sharma', 'Arpit.123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2018-07-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(10, 'akhil', 'Akhil', 'Sharma', 'Akhil.sharma12297@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2018-11-15 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(11, 'sukanya97', 'Sukanya', 'Balan', 'Bsukanya97@gmail.com', 'ec20b02342ea5e32336861ac39aa2752', '2018-11-19 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(12, 'arpit', 'Arpitsharma', 'Sharma', 'Arpit.sharma2502@gmail.com', '43bd06e14fe0e93937d75b36929587e6', '2018-11-25 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
