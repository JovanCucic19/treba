-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2016 at 12:46 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_ime` varchar(24) NOT NULL,
  `admin_prezime` varchar(20) NOT NULL,
  `admin_privilegije` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_ime`, `admin_prezime`, `admin_privilegije`) VALUES
(1, 'Jovan', 'Cucic', 0),
(2, 'Filip', 'Micic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `korisnik_id` int(11) NOT NULL,
  `korisnik_ime` varchar(24) NOT NULL,
  `korisnik_prezime` varchar(24) NOT NULL,
  `korisnik_email` varchar(34) NOT NULL,
  `korisnik_privilegije` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`korisnik_id`, `korisnik_ime`, `korisnik_prezime`, `korisnik_email`, `korisnik_privilegije`) VALUES
(1, 'Ime_jedan', 'Prezime_jedan', 'email_1@email.com', 1),
(2, 'Ime_dva', 'Prezime_dva', 'email_2@email.com', 2),
(3, 'Ime_tri', 'Prezime_tri', 'email_3@email.com', 1),
(4, 'Ime_cetiri', 'Prezime_cetiri', 'email_4@email.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reklame`
--

CREATE TABLE `reklame` (
  `reklama_id` int(11) NOT NULL,
  `reklama_naziv` varchar(50) NOT NULL,
  `reklama_opis` varchar(150) NOT NULL,
  `reklama_putanja` varchar(300) NOT NULL,
  `reklama_od` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reklama_do` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reklame`
--

INSERT INTO `reklame` (`reklama_id`, `reklama_naziv`, `reklama_opis`, `reklama_putanja`, `reklama_od`, `reklama_do`) VALUES
(1, 'prva reklama', 'opis prve reklame', 'putanja\\prve\\reklame', '2016-11-13 17:09:16', '2016-11-19 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vauceri`
--

CREATE TABLE `vauceri` (
  `v_id` int(11) NOT NULL,
  `v_naziv` varchar(100) NOT NULL,
  `v_slika` varchar(300) NOT NULL,
  `v_ponuda` varchar(300) NOT NULL,
  `v_kolicina` int(3) NOT NULL,
  `v_vrednost` decimal(8,2) NOT NULL,
  `v_tip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vauceri`
--

INSERT INTO `vauceri` (`v_id`, `v_naziv`, `v_slika`, `v_ponuda`, `v_kolicina`, `v_vrednost`, `v_tip`) VALUES
(1, 'Putovanje 1', '\\test\\resources\\img\\v_putovanja\\african-safari-scene_1048-118.jpg', 'Neka ponuda za putovanje 1', 4, '13000.00', 'v_putovanje'),
(2, 'Putovanje 2', '\\test\\resources\\img\\v_putovanja\\india_demo.jpg', 'Neka ponuda za putovanje 2', 3, '7000.00', 'v_putovanje'),
(3, 'Usluga 1', '\\test\\resources\\img\\v_usluge\\Majic-Carpet-Cleaning.jpg', 'Pranje tepiha', 6, '1299.99', 'v_usluge'),
(4, 'Usluga 2', '\\test\\resources\\img\\v_usluge\\lava-rapido-1.gif', 'Pranje kola', 10, '499.99', 'v_usluge');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`korisnik_id`);

--
-- Indexes for table `reklame`
--
ALTER TABLE `reklame`
  ADD PRIMARY KEY (`reklama_id`);

--
-- Indexes for table `vauceri`
--
ALTER TABLE `vauceri`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `korisnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reklame`
--
ALTER TABLE `reklame`
  MODIFY `reklama_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vauceri`
--
ALTER TABLE `vauceri`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
