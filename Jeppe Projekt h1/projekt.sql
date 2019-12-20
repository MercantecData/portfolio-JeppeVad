-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 20. 12 2019 kl. 10:33:09
-- Serverversion: 10.3.16-MariaDB
-- PHP-version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `brugere`
--

CREATE TABLE `brugere` (
  `ID` int(11) NOT NULL,
  `Brugernavn` varchar(20) DEFAULT NULL,
  `PSW` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u;

--
-- Data dump for tabellen `brugere`
--

INSERT INTO `brugere` (`ID`, `Brugernavn`, `PSW`) VALUES
(1, 'hej', 'asd'),
(2, 'KarlSmart', 'hejsa'),
(3, 'Mathias', '321');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `brugere`
--
ALTER TABLE `brugere`
  ADD PRIMARY KEY (`ID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `brugere`
--
ALTER TABLE `brugere`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
