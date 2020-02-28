-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 11:21 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basisdata2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kd_kelas` varchar(11) DEFAULT NULL,
  `nama_kelas` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kd_kelas`, `nama_kelas`) VALUES
('KL001', 'kelas 1'),
('KL002', 'kelas 2'),
('KL003', 'kelas 3');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_pelajaran`
--

CREATE TABLE `kelas_pelajaran` (
  `kd_kelas_pelajaran` varchar(11) DEFAULT NULL,
  `kd_pelajaran` varchar(11) DEFAULT NULL,
  `kd_kelas` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_pelajaran`
--

INSERT INTO `kelas_pelajaran` (`kd_kelas_pelajaran`, `kd_pelajaran`, `kd_kelas`) VALUES
('KP001', 'PL002', 'KL001'),
('KP001', 'PL001', 'KL002'),
('KP001', 'PL001', 'KL001');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `kd_kelas_siswa` varchar(11) DEFAULT NULL,
  `kd_siswa` varchar(11) DEFAULT NULL,
  `kd_kelas` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`kd_kelas_siswa`, `kd_siswa`, `kd_kelas`) VALUES
('KS001', 'IS002', 'KL001'),
('KL002', 'IS001', 'KL002'),
('KS003', 'IS003', 'KL002');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `kd_pelajaran` varchar(11) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `kd_pengajar` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`kd_pelajaran`, `nama`, `kd_pengajar`) VALUES
('PL001', 'Matematika', 'PE001'),
('PL002', 'B.inggris', 'PE002'),
('PL003', 'Agama', 'PE003');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `kd_pengajar` varchar(11) DEFAULT NULL,
  `nama_pengajar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`kd_pengajar`, `nama_pengajar`) VALUES
('PE001', 'Markasim'),
('PE003', 'Sa\'dullah'),
('PE002', 'Mardiani');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `kd_siswa` varchar(11) NOT NULL,
  `nama_siswa` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`kd_siswa`, `nama_siswa`) VALUES
('IS001', 'Eko'),
('IS002', 'Mega'),
('IS003', 'Doni');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`kd_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
