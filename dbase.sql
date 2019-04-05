-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 09:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `idaut` int(11) NOT NULL,
  `useragent` int(11) NOT NULL,
  `opersystem` int(11) NOT NULL,
  `opersystemver` int(11) NOT NULL,
  `browser` int(11) NOT NULL,
  `browserver` int(11) NOT NULL,
  `colordep` int(11) NOT NULL,
  `resolution` int(11) NOT NULL,
  `timezone` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `mobodesk` int(11) NOT NULL,
  `touchcap` int(11) NOT NULL,
  `nameuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datagen`
--

CREATE TABLE `datagen` (
  `ID_DSP` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `USER_AGENT` text NOT NULL,
  `OS` varchar(45) NOT NULL,
  `OS_VER` varchar(45) NOT NULL,
  `BROWSER` varchar(45) NOT NULL,
  `BROWSER_VER` varchar(45) NOT NULL,
  `COLOR_DEPTH` int(20) NOT NULL,
  `RES_W` int(11) NOT NULL,
  `RES_H` int(11) NOT NULL,
  `TIMEZONE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LANG` varchar(25) NOT NULL,
  `MOB_DESK` varchar(15) NOT NULL,
  `TOUCH_CAP` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `so`
--

CREATE TABLE `so` (
  `SistemaOp` varchar(450) NOT NULL,
  `VersionSo` varchar(450) NOT NULL,
  `Navegador` varchar(450) NOT NULL,
  `VersionNaveg` varchar(450) NOT NULL,
  `Resoluc` varchar(450) NOT NULL,
  `Profundidadcol` varchar(450) NOT NULL,
  `Idioma` varchar(450) NOT NULL,
  `zonahor` varchar(450) NOT NULL,
  `orientac` varchar(450) NOT NULL,
  `TouchScr` varchar(450) NOT NULL,
  `TypeDis` varchar(450) NOT NULL,
  `Iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so`
--

INSERT INTO `so` (`SistemaOp`, `VersionSo`, `Navegador`, `VersionNaveg`, `Resoluc`, `Profundidadcol`, `Idioma`, `zonahor`, `orientac`, `TouchScr`, `TypeDis`, `Iduser`) VALUES
('Win32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Mozilla', '5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '1536864', '24', 'en', ' -6', '', '', '', 0),
('Win32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Mozilla', '5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '1536864', '24', 'en', ' -6', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `so1`
--

CREATE TABLE `so1` (
  `idso` int(11) NOT NULL,
  `SistemaOP` varchar(450) NOT NULL,
  `VersionSo` varchar(450) NOT NULL,
  `Navegador` varchar(450) NOT NULL,
  `VersionNaveg` varchar(450) NOT NULL,
  `Resoluc` varchar(450) NOT NULL,
  `Profundidadcol` varchar(450) NOT NULL,
  `Idioma` varchar(450) NOT NULL,
  `zonahor` varchar(450) NOT NULL,
  `orientac` varchar(450) NOT NULL,
  `TouchScr` varchar(450) NOT NULL,
  `TypeDis` varchar(450) NOT NULL,
  `Iduser` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so1`
--

INSERT INTO `so1` (`idso`, `SistemaOP`, `VersionSo`, `Navegador`, `VersionNaveg`, `Resoluc`, `Profundidadcol`, `Idioma`, `zonahor`, `orientac`, `TouchScr`, `TypeDis`, `Iduser`) VALUES
(5, 'Win32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Mozilla', '5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '1536 x 864', '24', 'en', ' -6', '', '', '', 'Marcos');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idus` int(11) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `name` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idus`, `pass`, `name`) VALUES
(1, '1234', 'Marcos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`idaut`);

--
-- Indexes for table `datagen`
--
ALTER TABLE `datagen`
  ADD PRIMARY KEY (`ID_DSP`);

--
-- Indexes for table `so1`
--
ALTER TABLE `so1`
  ADD PRIMARY KEY (`idso`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `idaut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datagen`
--
ALTER TABLE `datagen`
  MODIFY `ID_DSP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `so1`
--
ALTER TABLE `so1`
  MODIFY `idso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
