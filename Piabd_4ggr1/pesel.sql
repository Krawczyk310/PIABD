-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 13, 2026 at 12:01 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4ggr1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pesel`
--

CREATE TABLE `pesel` (
  `id` int(11) NOT NULL,
  `pesel` char(11) NOT NULL,
  `pracownik_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesel`
--

INSERT INTO `pesel` (`id`, `pesel`, `pracownik_id`) VALUES
(1, '85010112345', 1),
(2, '90020223456', 2),
(3, '88030334567', 3),
(4, '92040445678', 4),
(5, '87050556789', 5),
(6, '95060667890', 6),
(7, '89070778901', 7),
(8, '93080889012', 8),
(9, '91090990123', 9);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pesel`
--
ALTER TABLE `pesel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pracownik_id` (`pracownik_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesel`
--
ALTER TABLE `pesel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesel`
--
ALTER TABLE `pesel`
  ADD CONSTRAINT `pesel_ibfk_1` FOREIGN KEY (`pracownik_id`) REFERENCES `pracownicy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
