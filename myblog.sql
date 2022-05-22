-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 01:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `my_id` int(11) NOT NULL,
  `name_1` varchar(20) NOT NULL DEFAULT 'Muhido',
  `name_2` varchar(50) NOT NULL DEFAULT 'Lysias Nathan',
  `age` int(2) NOT NULL DEFAULT 24,
  `civil_status` varchar(50) NOT NULL DEFAULT 'Single',
  `country` varchar(50) NOT NULL DEFAULT 'RDC',
  `city` varchar(50) NOT NULL DEFAULT 'Goma',
  `address` varchar(200) NOT NULL DEFAULT 'Q:Himbi--C:de Goma',
  `gmail` varchar(100) NOT NULL DEFAULT 'mlysiasnathan@gmail.com',
  `tel_1` varchar(20) NOT NULL DEFAULT '+243 976 742 676',
  `yeah` int(4) NOT NULL DEFAULT 2022,
  `avatar` varchar(10) NOT NULL DEFAULT 'me.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`my_id`, `name_1`, `name_2`, `age`, `civil_status`, `country`, `city`, `address`, `gmail`, `tel_1`, `yeah`, `avatar`) VALUES
(1, 'Muhido', 'Lysias Nathan', 24, 'Single', 'RDC', 'Goma', 'Q:Himbi--C:de Goma', 'mlysiasnathan@gmail.com', '+243 976 742 676', 2022, 'me.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `competences`
--

CREATE TABLE `competences` (
  `comp_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` int(3) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `competences`
--

INSERT INTO `competences` (`comp_id`, `name`, `level`) VALUES
(1, 'HTML', 95);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `exp_id` int(11) NOT NULL,
  `course` varchar(200) NOT NULL,
  `start` varchar(4) NOT NULL DEFAULT '2009',
  `end` varchar(4) NOT NULL DEFAULT '2009',
  `level` varchar(10) NOT NULL DEFAULT 'Not Bad',
  `legend` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`exp_id`, `course`, `start`, `end`, `level`, `legend`) VALUES
(1, 'English', '2018', '2018', 'Good', 'nsns,nfms,nf,snfm,snnhzxbcz');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `mes_id` int(11) NOT NULL,
  `sender_id` int(200) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `mes_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`mes_id`, `sender_id`, `sender_email`, `mes_content`) VALUES
(0, 1, 'user@g.c', 'saldhsadlsakdlsccdhscs'),
(0, 1, 'user@g.c', 'haDHkahdjkaHDAJDKhdkH');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `proj_id` int(11) NOT NULL,
  `proj_name` varchar(50) NOT NULL,
  `proj_url` varchar(200) NOT NULL,
  `proj_category` varchar(10) NOT NULL,
  `proj_client` varchar(20) NOT NULL,
  `proj_detail` mediumtext NOT NULL,
  `land_1` varchar(50) NOT NULL,
  `land_2` varchar(50) NOT NULL,
  `land_3` varchar(50) NOT NULL,
  `port_1` varchar(50) NOT NULL,
  `port_2` varchar(50) NOT NULL,
  `port_3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_names` varchar(200) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_names`, `user_email`, `user_pass`) VALUES
(1, 'LysNath', 'user@g.com', '$2y$10$KUrCqGQ6Eks7WmH66TE64uTI3tEWD7EjjX5gVcFtB6YM5Lmo0Vid.'),
(2, 'LysiasNathan', 'userr@gm.com', '$2y$10$82gY9c.Zq5JxgJdChFrjCepZtVu1yepGVteMqHystR7JQVGPegKrW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`my_id`);

--
-- Indexes for table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `my_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competences`
--
ALTER TABLE `competences`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `proj_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
