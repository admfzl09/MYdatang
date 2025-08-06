-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2025 at 05:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `passwordConfirmation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checklistpelajar`
--

CREATE TABLE `checklistpelajar` (
  `namaPelajar` text NOT NULL,
  `status` text NOT NULL,
  `kelas` text NOT NULL,
  `tarikh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checklistpelajar`
--

INSERT INTO `checklistpelajar` (`namaPelajar`, `status`, `kelas`, `tarikh`) VALUES
('Ammar Aqil', 'Hadir', '4 Ar-Razi', '05.08.2025'),
('Momen', 'Tidak Hadir', '4 Ibnu Khaldun', '06.08.2025');

-- --------------------------------------------------------

--
-- Table structure for table `checkliststaf`
--

CREATE TABLE `checkliststaf` (
  `namaStaf` text NOT NULL,
  `status` text NOT NULL,
  `masa` text NOT NULL,
  `tarikh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkliststaf`
--

INSERT INTO `checkliststaf` (`namaStaf`, `status`, `masa`, `tarikh`) VALUES
('Adam Mifzal', 'Hadir', '07:20', '05.08.2025');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `email` text NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `reason`) VALUES
('adamifzalgaming@gmail.com', 'test'),
('adamifzal85@gmail.com', 'test'),
('adamifzal1@gmail.com', 'test'),
('adamifzal85@gmail.com', 'test'),
('sonym5973@gmail.com', 'test'),
('m-10630699@moe-dl.edu.my', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `email` text NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
