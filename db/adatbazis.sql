-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Aug 26. 13:50
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vendegkonyv`
--
CREATE DATABASE IF NOT EXISTS `vendegkonyv` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `vendegkonyv`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bejegyzes`
--

CREATE TABLE `bejegyzes` (
  `azon` int(4) NOT NULL,
  `becenev` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `bejegyzes` text COLLATE utf8_hungarian_ci NOT NULL,
  `idopont` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bejegyzes`
--
ALTER TABLE `bejegyzes`
  ADD PRIMARY KEY (`azon`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `bejegyzes`
--
ALTER TABLE `bejegyzes`
  MODIFY `azon` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
