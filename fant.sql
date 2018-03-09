-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Mar 2018, 12:25
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fant`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fant`
--

CREATE TABLE IF NOT EXISTS `fant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) NOT NULL,
  `cena` double NOT NULL,
  `opis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Zrzut danych tabeli `fant`
--

INSERT INTO `fant` (`id`, `nazwa`, `cena`, `opis`) VALUES
(1, 'dracena', 1000, 'Franek'),
(2, 'grubosz', 5, 'Gruby'),
(3, 'kot', 100, 'wiecznie Å¼ywy'),
(4, 'sok', 2, '100% pomaranczy'),
(5, 'sok', 2, '100% pomaranczy'),
(6, 'fant', 65, 'Super extra'),
(7, 'kapec', 12, 'Super wygodny'),
(8, 'ogorek', 7, 'Ukiszony w zalewie'),
(9, 'ksiÄ…Å¼ka', 40, 'Dan Brown-AnioÅ‚y i Demony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL,
  `wylosowany_nr` int(11) NOT NULL,
  `losowany_fant` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `imie`, `wylosowany_nr`, `losowany_fant`) VALUES
(1, 'Sandra', 313, 7),
(2, 'Krysia', 639, 9),
(3, 'Krysia', 475, 9),
(4, 'Sandra', 640, 8),
(5, 'Krysia', 541, 10),
(6, 'Krysia', 126, 10),
(7, 'Krysia', 984, 6),
(8, 'Krysia', 251, 6),
(9, 'Krysia', 283, 10),
(10, 'Kasia', 0, 6),
(11, 'Kasia', 279, 12);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
