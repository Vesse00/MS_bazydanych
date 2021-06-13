-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 12:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testbazydanych`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategoria`
--

CREATE TABLE `kategoria` (
  `ID` int(11) NOT NULL,
  `kategoria` varchar(25) NOT NULL,
  `opis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategoria`
--

INSERT INTO `kategoria` (`ID`, `kategoria`, `opis`) VALUES
(1, 'teoria', ''),
(2, 'modyfikowanie tabeli', ''),
(3, 'dodawanie użytkownika', ''),
(4, 'dodawanie danych', '');

-- --------------------------------------------------------

--
-- Table structure for table `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `kategoria` int(20) NOT NULL,
  `pytanie` varchar(200) NOT NULL,
  `1` varchar(100) NOT NULL,
  `2` varchar(100) NOT NULL,
  `3` varchar(100) NOT NULL,
  `Correct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `1`, `2`, `3`, `Correct`) VALUES
(1, 2, 'Jakie polecenie pozwala modyfikowac tabele', 'ALEET TABLE', 'ALTER TABLE', 'EDIT TABLE', 2),
(2, 1, 'Ktore z podanych argumentow sortuje od A-Z ', 'DESC', 'ASC', 'ATZ SPZ', 2),
(3, 1, 'Ktory typ danych przechowuje tylko liczby calkowite', 'INT', 'STRING', 'DATA', 1),
(4, 3, 'Jakie polecenie nadaje uprawnienia urzytkownikowi', 'GRANT', 'ADD', 'GRAND', 1),
(5, 1, 'Gdzie uruchamiamy MySQL ', 'CMD', 'DOCKRR', 'XAMPP', 3),
(6, 1, 'jAKim poleceniem Stworzyc baze danych', 'CREATE TABLE', 'CREATE DATABASE', 'CREATE DB', 2),
(7, 1, 'jakim poleceniem  wlaczyc/wylaczyc transakcje w SQL', 'SET TRANSACTION', 'BANKING', 'ON/OFF TRANSACTION', 1),
(8, 1, 'co to SUM', 'Suma lciczb', 'srednia liczb', 'iloraz', 1),
(9, 1, 'jaka ma maksymalna dlugosc tiny INT', '255', '50', '256', 1),
(10, 1, 'Jak nadawac nazwy dla tabeli', 'FOR', 'NAME', 'AS', 3),
(11, 1, 'co to mysql', 'system do zarzadzania relacyjnych baz danych', 'tak', 'mysql', 1),
(12, 1, 'Co robi INSERT', 'wprowadza dane', 'wyswietla dane', 'usunie kolumne', 1),
(13, 1, 'Do czego sluzy COUNT', 'do sumowania', 'do wpisania rekordu', 'sluzy do szyfrowania', 1),
(14, 1, 'Funkcja CONCAT() sluzy do', 'spawania rekordow', 'laczenia tekstu', 'kolumna', 2),
(15, 1, 'Do czego sluzy phpMyAdmin', 'Do niczego', 'nie dziala', 'Do tworzenia tabeli', 3),
(16, 1, 'Kto teraz pracuje nad MySQL', 'Oracle', 'Valve', 'Microsf', 1),
(17, 1, 'Co to jest MySQL', 'język programowania', 'cos co wylaczy komputer', 'system zarządzania relacyjnymi bazami danych', 3),
(18, 1, 'Co to AVG', 'Srednia', 'jest null', 'szyfrowanie', 1),
(19, 1, 'Kto robi to zadanie', 'Ciul wi', 'Ja', 'Uzytkownik tego githuba https://bit.ly/3gj7X1N', 1),
(20, 1, 'Czy MYSQL moze grac muzyke?', 'Jak sie postarasz to tak', 'nie', 'nie wiem nawed', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `ID_uzytkownika` int(11) NOT NULL,
  `ID_pytania` int(11) NOT NULL,
  `ODP` int(11) NOT NULL,
  `pkt_za_odp` int(11) NOT NULL,
  `nr testu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ID`, `ID_uzytkownika`, `ID_pytania`, `ODP`, `pkt_za_odp`, `nr testu`) VALUES
(1, 1, 12, 1, 1, 1),
(2, 1, 14, 1, 1, 1),
(3, 1, 20, 3, 1, 1),
(4, 1, 19, 1, 1, 1),
(5, 1, 9, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `ID_osoby` int(11) NOT NULL,
  `nazwa` varchar(32) NOT NULL,
  `email` varchar(120) NOT NULL,
  `haslo` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` (`ID_osoby`, `nazwa`, `email`, `haslo`) VALUES
(1, 'Maciek', 'example@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoria` (`kategoria`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_uzytkownika` (`ID_uzytkownika`),
  ADD KEY `ID_pytania` (`ID_pytania`);

--
-- Indexes for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`ID_osoby`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2164;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `ID_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`kategoria`) REFERENCES `kategoria` (`ID`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`ID_uzytkownika`) REFERENCES `uzytkownik` (`ID_osoby`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`ID_pytania`) REFERENCES `pytania` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
