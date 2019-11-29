-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 29. 11 2019 kl. 08:33:03
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
-- Database: `firm databse`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `departments`
--

CREATE TABLE `departments` (
  `department_ID` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE koi8u_general_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `departments`
--

INSERT INTO `departments` (`department_ID`, `department_name`) VALUES
(1, 'department_1'),
(2, 'department_2'),
(3, 'department_3');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `department_1`
--

CREATE TABLE `department_1` (
  `department_manager` int(11) DEFAULT NULL,
  `department_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `department_1`
--

INSERT INTO `department_1` (`department_manager`, `department_employee`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `department_2`
--

CREATE TABLE `department_2` (
  `department_manager` int(11) DEFAULT NULL,
  `department_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `department_2`
--

INSERT INTO `department_2` (`department_manager`, `department_employee`) VALUES
(3, 4);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `department_3`
--

CREATE TABLE `department_3` (
  `department_manager` int(11) DEFAULT NULL,
  `department_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `department_3`
--

INSERT INTO `department_3` (`department_manager`, `department_employee`) VALUES
(5, 6);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `department_employees`
--

CREATE TABLE `department_employees` (
  `department_ID` int(11) DEFAULT NULL,
  `department_employees` varchar(255) COLLATE koi8u_general_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `department_employees`
--

INSERT INTO `department_employees` (`department_ID`, `department_employees`) VALUES
(1, '2'),
(2, '2'),
(3, '2');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `employee`
--

CREATE TABLE `employee` (
  `employee_ID` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE koi8u_general_nopad_ci DEFAULT NULL,
  `email` varchar(255) COLLATE koi8u_general_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `employee`
--

INSERT INTO `employee` (`employee_ID`, `full_name`, `email`) VALUES
(1, 'Jeppe Vad', 'jeppevad@gmail.com'),
(2, 'Mathias Holst', 'mathiasholst@gmail.com'),
(3, 'Magnus Bj?rn', 'magnusbj?rn@gmail.com'),
(4, 'Ching Chong', 'chingchong@gmail.com'),
(5, 'Mark Klausen', 'markklausen@gmail.com'),
(6, 'Ole Henriksen', 'olehenriksen@gmail.com');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `salaries`
--

CREATE TABLE `salaries` (
  `employee_ID` int(11) DEFAULT NULL,
  `salary` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `salaries`
--

INSERT INTO `salaries` (`employee_ID`, `salary`) VALUES
(1, '1500'),
(2, '1000'),
(3, '1500'),
(4, '1000'),
(5, '1500'),
(6, '1000');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `titles`
--

CREATE TABLE `titles` (
  `employee_ID` int(11) DEFAULT NULL,
  `title_name` varchar(255) COLLATE koi8u_general_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COLLATE=koi8u_general_nopad_ci;

--
-- Data dump for tabellen `titles`
--

INSERT INTO `titles` (`employee_ID`, `title_name`) VALUES
(1, 'Department manager'),
(2, 'Employee'),
(3, 'Department manager'),
(4, 'Employee'),
(5, 'Department manager'),
(6, 'Employee');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_ID`);

--
-- Indeks for tabel `department_1`
--
ALTER TABLE `department_1`
  ADD KEY `department_manager` (`department_manager`),
  ADD KEY `department_employee` (`department_employee`);

--
-- Indeks for tabel `department_2`
--
ALTER TABLE `department_2`
  ADD KEY `department_manager` (`department_manager`),
  ADD KEY `department_employee` (`department_employee`);

--
-- Indeks for tabel `department_3`
--
ALTER TABLE `department_3`
  ADD KEY `department_manager` (`department_manager`),
  ADD KEY `department_employee` (`department_employee`);

--
-- Indeks for tabel `department_employees`
--
ALTER TABLE `department_employees`
  ADD KEY `department_ID` (`department_ID`);

--
-- Indeks for tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indeks for tabel `salaries`
--
ALTER TABLE `salaries`
  ADD KEY `employee_ID` (`employee_ID`);

--
-- Indeks for tabel `titles`
--
ALTER TABLE `titles`
  ADD KEY `employee_ID` (`employee_ID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `department_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `department_1`
--
ALTER TABLE `department_1`
  ADD CONSTRAINT `department_1_ibfk_1` FOREIGN KEY (`department_manager`) REFERENCES `employee` (`employee_ID`),
  ADD CONSTRAINT `department_1_ibfk_2` FOREIGN KEY (`department_employee`) REFERENCES `employee` (`employee_ID`);

--
-- Begrænsninger for tabel `department_2`
--
ALTER TABLE `department_2`
  ADD CONSTRAINT `department_2_ibfk_1` FOREIGN KEY (`department_manager`) REFERENCES `employee` (`employee_ID`),
  ADD CONSTRAINT `department_2_ibfk_2` FOREIGN KEY (`department_employee`) REFERENCES `employee` (`employee_ID`);

--
-- Begrænsninger for tabel `department_3`
--
ALTER TABLE `department_3`
  ADD CONSTRAINT `department_3_ibfk_1` FOREIGN KEY (`department_manager`) REFERENCES `employee` (`employee_ID`),
  ADD CONSTRAINT `department_3_ibfk_2` FOREIGN KEY (`department_employee`) REFERENCES `employee` (`employee_ID`);

--
-- Begrænsninger for tabel `department_employees`
--
ALTER TABLE `department_employees`
  ADD CONSTRAINT `department_employees_ibfk_1` FOREIGN KEY (`department_ID`) REFERENCES `departments` (`department_ID`);

--
-- Begrænsninger for tabel `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);

--
-- Begrænsninger for tabel `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
