-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 26. 11 2019 kl. 14:16:23
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
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `adresse`
--

CREATE TABLE `adresse` (
  `adresseID` int(11) NOT NULL,
  `brugerID` int(11) DEFAULT NULL,
  `adresse` varchar(256) COLLATE latin1_danish_ci DEFAULT NULL,
  `by` varchar(256) COLLATE latin1_danish_ci NOT NULL,
  `postnummer` int(11) DEFAULT NULL,
  `land` varchar(256) COLLATE latin1_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

--
-- Data dump for tabellen `adresse`
--

INSERT INTO `adresse` (`adresseID`, `brugerID`, `adresse`, `by`, `postnummer`, `land`) VALUES
(1, 6, 'Odensesvej', 'Odense', 7890, 'Danmark'),
(2, 1, 'skovvej 31', 'Skals', 8832, 'Danmark'),
(3, 2, 'skovvej 33', 'Skals', 8832, 'Danmark'),
(4, 3, 'skovvej 56', 'Skals', 8832, 'Danmark'),
(5, 4, 'Fægteborgvej 53', 'Løgstrup', 8831, 'Danmark'),
(6, 5, 'Carlsvej 3', 'Viborg', 8800, 'Danmark'),
(7, 7, 'vinkelvej 32', 'Viborg', 8800, 'Danmark'),
(8, 8, 'Viborgvej 1', 'Aarhus', 8234, 'Danmark'),
(9, 9, 'Jomfru anegade 4', 'Aalborg', 8345, 'Danmark'),
(10, 10, 'Jomfru anegade 97', 'Aalborg', 8345, 'Danmark');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `brugertabel`
--

CREATE TABLE `brugertabel` (
  `brugerID` int(11) NOT NULL,
  `brugernavn` varchar(256) COLLATE latin1_danish_ci DEFAULT NULL,
  `email` varchar(256) COLLATE latin1_danish_ci DEFAULT NULL,
  `fornavn` varchar(256) COLLATE latin1_danish_ci NOT NULL,
  `efternavn` varchar(256) COLLATE latin1_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

--
-- Data dump for tabellen `brugertabel`
--

INSERT INTO `brugertabel` (`brugerID`, `brugernavn`, `email`, `fornavn`, `efternavn`) VALUES
(1, 'mark1', 'mark1@gmail.com', 'Mark', 'Carlsen'),
(2, 'Carl1', 'carl21@gmail.com', 'Carl', 'Kristensen'),
(3, 'jin', 'Chenchong@gmail.com', 'Chong', 'Ching'),
(4, 'allah88', 'mohammed88@gmail.com', 'Mohammed', 'Allah'),
(5, 'jhonn3', 'johnnyjam@gmail.com', 'Johnny', 'Jamster'),
(6, 'babatunde', 'sendwatarplz@gmail.com', 'Babatunde', 'Blackman'),
(7, 'noname', 'nomane@gmail.com', 'noname', 'noname'),
(8, 'Johnn', 'Johndoe@gmail.com', 'John', 'Doe'),
(9, 'Jane', 'Janedoe@gmail.com', 'Jane', 'Doe'),
(10, 'Jaaaey', 'Jaaaeys@gmail.com', 'Jaey', 'Johnson');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `ordretabel`
--

CREATE TABLE `ordretabel` (
  `ordreID` int(11) NOT NULL,
  `brugerID` int(11) DEFAULT NULL,
  `produktID` int(11) DEFAULT NULL,
  `adresseID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

--
-- Data dump for tabellen `ordretabel`
--

INSERT INTO `ordretabel` (`ordreID`, `brugerID`, `produktID`, `adresseID`) VALUES
(4, 2, 2, 2),
(6, 3, 5, 5),
(7, 8, 2, 3),
(8, 9, 4, 2),
(9, 6, 7, 3);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `produkttabel`
--

CREATE TABLE `produkttabel` (
  `produktID` int(11) NOT NULL,
  `produktnavn` varchar(256) COLLATE latin1_danish_ci DEFAULT NULL,
  `beskrivelse` varchar(256) COLLATE latin1_danish_ci NOT NULL,
  `lager` int(11) DEFAULT NULL,
  `pris` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_danish_ci;

--
-- Data dump for tabellen `produkttabel`
--

INSERT INTO `produkttabel` (`produktID`, `produktnavn`, `beskrivelse`, `lager`, `pris`) VALUES
(1, 'Rød cykel', 'Flot god rød cykel', 10, '999.99'),
(2, 'Sort cykel', 'Flot god sort cykel', 7, '1099.00'),
(3, 'Grøn cykel', 'Flot god grøn cykel', 11, '999.00'),
(4, 'Gul cykel', 'Flot god gul cykel', 15, '899.00'),
(5, 'Lilla cykel', 'Flot god lilla cykel', 3, '1199.00'),
(6, 'Lilla cykelhjelm', 'Justerbar cykelhjelm', 10, '299.00'),
(7, 'Grøn cykelhjelm', 'Justerbar cykelhjelm', 7, '299.00'),
(8, 'Sort og rød cykelhjelm', 'Justerbar cykelhjelm', 1, '399.00'),
(9, 'Rød cykelhjelm', 'Justerbar cykelhjelm', 3, '299.00'),
(10, 'Gul og grøn cykelhjelm', 'Justerbar cykelhjelm', 5, '399.00');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`adresseID`),
  ADD KEY `brugerID` (`brugerID`);

--
-- Indeks for tabel `brugertabel`
--
ALTER TABLE `brugertabel`
  ADD PRIMARY KEY (`brugerID`);

--
-- Indeks for tabel `ordretabel`
--
ALTER TABLE `ordretabel`
  ADD PRIMARY KEY (`ordreID`),
  ADD KEY `brugerID` (`brugerID`),
  ADD KEY `produktID` (`produktID`),
  ADD KEY `adresseID` (`adresseID`);

--
-- Indeks for tabel `produkttabel`
--
ALTER TABLE `produkttabel`
  ADD PRIMARY KEY (`produktID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `adresse`
--
ALTER TABLE `adresse`
  MODIFY `adresseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tilføj AUTO_INCREMENT i tabel `brugertabel`
--
ALTER TABLE `brugertabel`
  MODIFY `brugerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tilføj AUTO_INCREMENT i tabel `ordretabel`
--
ALTER TABLE `ordretabel`
  MODIFY `ordreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tilføj AUTO_INCREMENT i tabel `produkttabel`
--
ALTER TABLE `produkttabel`
  MODIFY `produktID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `adresse_ibfk_1` FOREIGN KEY (`brugerID`) REFERENCES `brugertabel` (`brugerID`);

--
-- Begrænsninger for tabel `ordretabel`
--
ALTER TABLE `ordretabel`
  ADD CONSTRAINT `ordretabel_ibfk_1` FOREIGN KEY (`brugerID`) REFERENCES `brugertabel` (`brugerID`),
  ADD CONSTRAINT `ordretabel_ibfk_2` FOREIGN KEY (`produktID`) REFERENCES `produkttabel` (`produktID`),
  ADD CONSTRAINT `ordretabel_ibfk_3` FOREIGN KEY (`adresseID`) REFERENCES `adresse` (`adresseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
