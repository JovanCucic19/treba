-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 12:03 AM
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
-- Table structure for table `vaucer_putovanje`
--

CREATE TABLE `vaucer_putovanje` (
  `v_putovanje_id` int(11) NOT NULL,
  `v_putovanje_naziv` varchar(100) NOT NULL,
  `v_putovanje_slika` varchar(300) NOT NULL,
  `v_putovanje_ponuda` varchar(500) NOT NULL,
  `v_putovanje_kolicina` int(2) NOT NULL,
  `v_putovanje_vrednost` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaucer_putovanje`
--

INSERT INTO `vaucer_putovanje` (`v_putovanje_id`, `v_putovanje_naziv`, `v_putovanje_slika`, `v_putovanje_ponuda`, `v_putovanje_kolicina`, `v_putovanje_vrednost`) VALUES
(1, 'Putovanje 1', 'Slika 1', 'Neka ponuda za putovanje 1', 4, '13000'),
(2, 'Putovanje 2', 'Slika 2', 'Neka ponuda za putovanje 2', 3, '7000');

-- --------------------------------------------------------

--
-- Table structure for table `vaucer_usluge`
--

CREATE TABLE `vaucer_usluge` (
  `v_usluge_id` int(11) NOT NULL,
  `v_usluge_naziv` varchar(100) NOT NULL,
  `v_usluge_slika` varchar(300) NOT NULL,
  `v_usluge_ponuda` varchar(500) NOT NULL,
  `v_usluge_kolicina` int(2) NOT NULL,
  `v_usluge_vrednost` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaucer_usluge`
--

INSERT INTO `vaucer_usluge` (`v_usluge_id`, `v_usluge_naziv`, `v_usluge_slika`, `v_usluge_ponuda`, `v_usluge_kolicina`, `v_usluge_vrednost`) VALUES
(1, 'Usluga 1', 'Slika 1', 'Ponuda usluge 1', 6, '300.00'),
(2, 'Usluga 2', 'Slika 2', 'Ponuda usluge 2', 13, '778.99');

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
-- Indexes for table `vaucer_putovanje`
--
ALTER TABLE `vaucer_putovanje`
  ADD PRIMARY KEY (`v_putovanje_id`);

--
-- Indexes for table `vaucer_usluge`
--
ALTER TABLE `vaucer_usluge`
  ADD PRIMARY KEY (`v_usluge_id`);

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
-- AUTO_INCREMENT for table `vaucer_putovanje`
--
ALTER TABLE `vaucer_putovanje`
  MODIFY `v_putovanje_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vaucer_usluge`
--
ALTER TABLE `vaucer_usluge`
  MODIFY `v_usluge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
