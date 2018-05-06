-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 09:47 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allegro`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_ID` int(11) NOT NULL,
  `postcode` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `street` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `house_no` int(11) NOT NULL,
  `flat_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_ID`, `postcode`, `city`, `street`, `house_no`, `flat_no`) VALUES
(104, '51-143', 'Warszawa', 'Jaruzelska', 34, 3),
(105, '64-100', 'Leszno', 'Grzybowa', 23, 2),
(106, '60-101', 'Rawicz', 'Cicha', 12, 0),
(107, '80-007', 'Gdynia', 'Mickiewicza', 8, 0),
(108, '50-021', 'Brzeg', 'Choinkowa', 11, 0),
(109, '64-200', 'Wolsztyn', 'Basztowa', 32, 5),
(110, '80-007', 'Gda?sk', 'Mickiewicza', 8, 0),
(111, '70-004', 'Szczecin', 'Agrestowa', 43, 0),
(112, '20-001', 'Lublin', '3 Maja', 83, 3);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `NIP` varchar(13) COLLATE utf8_polish_ci NOT NULL,
  `company_name` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`NIP`, `company_name`) VALUES
('111-11-11-111', 'Ero'),
('222-22-22-222', 'Fly'),
('333-33-33-333', 'More');

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `ID` int(11) NOT NULL,
  `NIP` varchar(13) COLLATE utf8_polish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `company_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `tel1` int(11) NOT NULL,
  `tel2` int(11) NOT NULL,
  `postcode` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `street` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `house_no` int(11) NOT NULL,
  `flat_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`ID`, `NIP`, `first_name`, `surname`, `company_name`, `login`, `email`, `tel1`, `tel2`, `postcode`, `city`, `street`, `house_no`, `flat_no`) VALUES
(14, '222-22-22-222', 'Adam', 'Wilk', 'Fly', 'aWilkFly', 'a.wilk@fly.com', 609844635, 509358821, '20-001', 'Lublin', '3 Maja', 83, 3),
(15, '222-22-22-222', 'Adrianna', 'Wolna', 'Fly', 'aWolnaFly', 'a.wolna@fly.com', 654332109, 509358821, '20-001', 'Lublin', '3 Maja', 83, 3),
(12, '333-33-33-333', 'Daria', 'Glik', 'More', 'dGlikMore', 'd.glik@more.com', 680983077, 578932043, '64-200', 'Wolsztyn', 'Basztowa', 32, 5),
(8, '', 'Maria', 'Milik', '', 'doubleM', 'mariamilik@wp.pl', 698739500, 598300389, '50-021', 'Brzeg', 'Choinkowa', 11, 0),
(6, '', 'Filip', 'Kasprzak', '', 'dziku', 'filipkasprzak@wp.pl', 673984883, 580922434, '60-101', 'Rawicz', 'Cicha', 12, 0),
(3, '111-11-11-111', 'Kinga', 'Baran', 'Ero', 'kBaranEro', 'kbaran@ero.com', 647388345, 653667738, '51-143', 'Warszawa', 'Jaruzelska', 34, 3),
(13, '333-33-33-333', 'Kasia', 'Kobiera', 'More', 'kKobieraMore', 'k.kobiera@more.com', 698722103, 578932043, '64-200', 'Wolsztyn', 'Basztowa', 32, 5),
(7, '', 'Marek', 'Kaczmarek', '', 'micool', 'micool@gmail.com', 604980322, 698733920, '80-007', 'Gdynia', 'Mickiewicza', 8, 0),
(10, '', 'Marek', 'Kaczmarek', '', 'micool2', 'micool@gmail.com', 604980322, 698733920, '80-007', 'Gdańsk', 'Mickiewicza', 8, 0),
(5, '', 'Maciej', 'Wierny', '', 'miki123', 'miki123@gmail.com', 577798002, 349888203, '64-100', 'Leszno', 'Grzybowa', 23, 2),
(2, '111-11-11-111', 'Mateusz', 'Kos', 'Ero', 'mKosEro', 'mkos@ero.com', 664352261, 542678856, '51-143', 'Warszawa', 'Jaruzelska', 34, 3),
(4, '111-11-11-111', 'Marcin', 'Kowalski', 'Ero', 'mKowalskiEro', 'mkowalski@ero.com', 653366234, 653667738, '51-143', 'Warszawa', 'Jaruzelska', 34, 3),
(9, '333-33-33-333', 'Piotr', 'Wielki', 'More', 'pWielkiMore', 'p.wielki@more.com', 609589993, 894830058, '64-200', 'Wolsztyn', 'Basztowa', 32, 5),
(11, '', 'Krzysztof', 'Jarzyna', '', 'szefWszystkich', 'szef@gmail.com', 601786222, 678224412, '70-004', 'Szczecin', 'Agrestowa', 43, 0),
(1, '111-11-11-111', 'Tom', 'Deep', 'Ero', 'tDeepEro', 'tdeep@ero.com', 553250012, 542678856, '51-143', 'Warszawa', 'Jaruzelska', 34, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email_outdated` int(11) NOT NULL,
  `tel1` int(11) NOT NULL,
  `tel2` int(11) NOT NULL,
  `NIP` varchar(13) COLLATE utf8_polish_ci NOT NULL,
  `address_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `first_name`, `surname`, `login`, `email`, `email_outdated`, `tel1`, `tel2`, `NIP`, `address_ID`) VALUES
(1, 'Tom', 'Deep', 'tDeepEro', 'tdeep@ero.com', 0, 553250012, 542678856, '111-11-11-111', 104),
(2, 'Mateusz', 'Kos', 'mKosEro', 'mkos@ero.com', 0, 664352261, 542678856, '111-11-11-111', 104),
(3, 'Kinga', 'Baran', 'kBaranEro', 'kbaran@ero.com', 0, 647388345, 653667738, '111-11-11-111', 104),
(4, 'Marcin', 'Kowalski', 'mKowalskiEro', 'mkowalski@ero.com', 0, 653366234, 653667738, '111-11-11-111', 104),
(5, 'Maciej', 'Wierny', 'miki123', 'miki123@gmail.com', 0, 577798002, 349888203, '', 105),
(6, 'Filip', 'Kasprzak', 'dziku', 'filipkasprzak@wp.pl', 0, 673984883, 580922434, '', 106),
(7, 'Marek', 'Kaczmarek', 'micool', 'micool@gmail.com', 0, 604980322, 698733920, '', 107),
(8, 'Maria', 'Milik', 'doubleM', 'mariamilik@wp.pl', 0, 698739500, 598300389, '', 108),
(9, 'Piotr', 'Wielki', 'pWielkiMore', 'p.wielki@more.com', 0, 609589993, 894830058, '333-33-33-333', 109),
(10, 'Marek', 'Kaczmarek', 'micool2', 'micool@gmail.com', 1, 604980322, 698733920, '', 110),
(11, 'Krzysztof', 'Jarzyna', 'szefWszystkich', 'szef@gmail.com', 0, 601786222, 678224412, '', 111),
(12, 'Daria', 'Glik', 'dGlikMore', 'd.glik@more.com', 0, 680983077, 578932043, '333-33-33-333', 109),
(13, 'Kasia', 'Kobiera', 'kKobieraMore', 'k.kobiera@more.com', 0, 698722103, 578932043, '333-33-33-333', 109),
(14, 'Adam', 'Wilk', 'aWilkFly', 'a.wilk@fly.com', 0, 609844635, 509358821, '222-22-22-222', 112),
(15, 'Adrianna', 'Wolna', 'aWolnaFly', 'a.wolna@fly.com', 0, 654332109, 509358821, '222-22-22-222', 112);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_ID`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD UNIQUE KEY `NIP` (`NIP`);

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
