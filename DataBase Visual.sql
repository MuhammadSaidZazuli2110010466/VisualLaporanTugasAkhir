-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 01:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual10`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_berangkat`
--

CREATE TABLE `tabel_berangkat` (
  `id_berangkat` int(16) NOT NULL,
  `id_bus` int(11) DEFAULT NULL,
  `hari_berangkat` varchar(30) DEFAULT NULL,
  `tanggal_berangkat` varchar(30) DEFAULT NULL,
  `waktu_kumpul` varchar(30) DEFAULT NULL,
  `waktu_berangkat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_berangkat`
--

INSERT INTO `tabel_berangkat` (`id_berangkat`, `id_bus`, `hari_berangkat`, `tanggal_berangkat`, `waktu_kumpul`, `waktu_berangkat`) VALUES
(1, 1, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_bus`
--

CREATE TABLE `tabel_bus` (
  `kelas_bus` int(11) NOT NULL,
  `id_bus` int(16) DEFAULT NULL,
  `harga_tiket` varchar(30) DEFAULT NULL,
  `nama_supir` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_bus`
--

INSERT INTO `tabel_bus` (`kelas_bus`, `id_bus`, `harga_tiket`, `nama_supir`) VALUES
(1, 1, '500000', 'Cahyono');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_costumer`
--

CREATE TABLE `tabel_costumer` (
  `id_costumer` int(16) NOT NULL,
  `nama_costumer` varchar(30) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_costumer`
--

INSERT INTO `tabel_costumer` (`id_costumer`, `nama_costumer`, `tujuan`, `alamat`, `no_telepon`) VALUES
(1, 'Panjul', 'Berangas', 'Kapuas', '082115962191');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detail_tiket`
--

CREATE TABLE `tabel_detail_tiket` (
  `id_tiket` int(11) NOT NULL,
  `id_bus` int(11) DEFAULT NULL,
  `nomor_kursi` varchar(30) DEFAULT NULL,
  `harga_tiket` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_detail_tiket`
--

INSERT INTO `tabel_detail_tiket` (`id_tiket`, `id_bus`, `nomor_kursi`, `harga_tiket`) VALUES
(2, 1, 'A15', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int(16) NOT NULL,
  `id_costumer` int(16) DEFAULT NULL,
  `id_berangkat` int(16) DEFAULT NULL,
  `tgl_tiket` varchar(30) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `id_costumer`, `id_berangkat`, `tgl_tiket`, `keterangan`) VALUES
(1, 1, 1, '12 Januari 1999', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_berangkat`
--
ALTER TABLE `tabel_berangkat`
  ADD PRIMARY KEY (`id_berangkat`),
  ADD UNIQUE KEY `id_bus` (`id_bus`);

--
-- Indexes for table `tabel_bus`
--
ALTER TABLE `tabel_bus`
  ADD PRIMARY KEY (`kelas_bus`);

--
-- Indexes for table `tabel_costumer`
--
ALTER TABLE `tabel_costumer`
  ADD PRIMARY KEY (`id_costumer`);

--
-- Indexes for table `tabel_detail_tiket`
--
ALTER TABLE `tabel_detail_tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD UNIQUE KEY `id_bus` (`id_bus`);

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD UNIQUE KEY `id_costumer` (`id_costumer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_berangkat`
--
ALTER TABLE `tabel_berangkat`
  MODIFY `id_berangkat` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_bus`
--
ALTER TABLE `tabel_bus`
  MODIFY `kelas_bus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_costumer`
--
ALTER TABLE `tabel_costumer`
  MODIFY `id_costumer` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_detail_tiket`
--
ALTER TABLE `tabel_detail_tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
