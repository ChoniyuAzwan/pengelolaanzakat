-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 04:24 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengelolaanzakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenisprogram`
--

CREATE TABLE `jenisprogram` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenisprogram`
--

INSERT INTO `jenisprogram` (`id`, `nama`) VALUES
(1, 'Depok Sehat'),
(2, 'Depok Cerdas'),
(3, 'Depok Peduli'),
(4, 'Depok Takwa'),
(5, 'Depok Berkah');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`) VALUES
(9, 'Beji'),
(2, 'Bojongsari'),
(6, 'Cilodong'),
(7, 'Cimanggis'),
(11, 'Cinere'),
(4, 'Cipayung'),
(10, 'Limo'),
(3, 'Pancoran Mas'),
(1, 'Sawangan'),
(5, 'Sukma Jaya'),
(8, 'Tapos');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama`, `idkecamatan`) VALUES
(1, 'Pengasinan', 1),
(2, 'Bedahan', 1),
(3, 'Pasir Putih', 1),
(4, 'Sawangan Baru', 1),
(5, 'Sawangan Lama', 1),
(6, 'Kedaung', 1),
(7, 'Cinangka', 1),
(8, 'Duren Seribu', 2),
(9, 'Duren Mekar', 2),
(10, 'Bojongsari Lama', 2),
(11, 'Bojongsari Baru', 2),
(12, 'Pondok Petir', 2),
(13, 'Serua', 2),
(14, 'Curug', 2),
(15, 'Rangkapan Jaya Baru', 3),
(16, 'Rangkapan Jaya', 3),
(17, 'Mampang', 3),
(18, 'Pancoran Mas', 3),
(19, 'Depok Jaya', 3),
(20, 'Depok', 3),
(21, 'Pondok Ranggon', 4),
(22, 'Cilangkap', 4),
(23, 'Cipayung', 4),
(24, 'Bambu Apus', 4),
(25, 'Lubang Buaya', 4),
(26, 'Sukmajaya', 5),
(27, 'Tirtajaya', 5),
(28, 'Mekar Jaya', 5),
(29, 'Abadijaya', 5),
(30, 'Bakti Jaya', 5),
(31, 'Cisalak', 5),
(32, 'Kalimulya', 6),
(33, 'Jatimulya', 6),
(34, 'Kalibaru', 6),
(35, 'Cilodong', 6),
(36, 'Sukamaju', 6),
(37, 'Harjamukti', 7),
(38, 'Cisalak Pasar', 7),
(39, 'Mekarsari', 7),
(40, 'Pasir Gunung Selatan', 7),
(41, 'Curug', 7),
(42, 'Tugu', 7),
(43, 'Cilangkap', 8),
(44, 'Cimpaeun', 8),
(45, 'Tapos', 8),
(46, 'Leuwinaggung', 8),
(47, 'Jatijajar', 8),
(48, 'Sukamaju Baru', 8),
(49, 'Sukatani', 8),
(50, 'Beji', 9),
(51, 'Beji Timur', 9),
(52, 'Kemirimuka', 9),
(53, 'Pondok Cina', 9),
(54, 'Kukusan', 9),
(55, 'Tanah Baru', 9),
(56, 'Grogol', 10),
(57, 'Limo', 10),
(58, 'Meruyung', 10),
(59, 'Krukut', 10),
(60, 'Cinere', 11),
(61, 'Gandul', 11),
(62, 'Pangkalan Jati Baru', 11),
(63, 'Pangkalan Jati Lama', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mustahik`
--

CREATE TABLE `mustahik` (
  `id` int(11) NOT NULL,
  `nik` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jeniskelamin` varchar(45) DEFAULT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tanggallahir` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL,
  `idkelurahan` int(11) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mustahik`
--

INSERT INTO `mustahik` (`id`, `nik`, `nama`, `jeniskelamin`, `tempatlahir`, `tanggallahir`, `idkecamatan`, `idkelurahan`, `alamat`, `foto`) VALUES
(1, '', 'a', '', '', '', 2, 3, '', ''),
(3, '2', 's', 'Pria', '', '', 2, 3, '', ''),
(4, '1', 'd', '', '', '2018-11-09', 1, 1, '', ''),
(5, '4', 'f', 'Wanita', '', '', 6, 4, '', ''),
(6, '5', 'g', 'Pria', '', '2018-10-08', 7, 6, '', ''),
(7, '11', 'h', 'Pria', '', '2018-11-12', 7, 6, '', ''),
(8, '12', 'j', 'Pria', '', '2018-11-12', 7, 6, '', ''),
(9, '13', 'k', '', '', '', 11, 3, '', NULL),
(10, '131', 'l', '', '', '', 11, 3, '', '131.jpg'),
(11, '55', 'q', NULL, NULL, NULL, 3, 18, NULL, NULL),
(66, NULL, 'w', NULL, NULL, NULL, 4, 18, NULL, NULL),
(67, '77', 'e', NULL, NULL, NULL, 5, 3, NULL, NULL),
(68, '88', 'r', NULL, NULL, NULL, 8, 5, NULL, NULL),
(69, '99', 't', NULL, '', NULL, 9, 7, NULL, NULL),
(70, '00', NULL, NULL, NULL, NULL, 10, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `muzaki`
--

CREATE TABLE `muzaki` (
  `id` int(11) NOT NULL,
  `nik` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jeniskelamin` varchar(45) DEFAULT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tanggallahir` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL,
  `idkelurahan` int(11) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pengumpulan`
--

CREATE TABLE `pengumpulan` (
  `id` int(11) NOT NULL,
  `idmuzaki` int(11) NOT NULL,
  `idupz` int(11) NOT NULL,
  `keterangan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `penyaluran`
--

CREATE TABLE `penyaluran` (
  `id` int(11) NOT NULL,
  `idmustahik` int(11) NOT NULL,
  `idjenisprogram` int(11) NOT NULL,
  `keterangan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penyaluran`
--

INSERT INTO `penyaluran` (`id`, `idmustahik`, `idjenisprogram`, `keterangan`) VALUES
(1, 6, 3, NULL),
(2, 8, 2, NULL),
(3, 4, 1, NULL),
(4, 67, 5, NULL),
(5, 10, 1, ''),
(6, 11, 3, NULL),
(7, 4, 2, NULL),
(8, 3, 1, NULL),
(9, 4, 5, NULL),
(10, 3, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `upz`
--

CREATE TABLE `upz` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL,
  `idkelurahan` int(11) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenisprogram`
--
ALTER TABLE `jenisprogram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelurahan_kecamatan_idx` (`idkecamatan`);

--
-- Indexes for table `mustahik`
--
ALTER TABLE `mustahik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mustahik_kelurahan1_idx` (`idkelurahan`),
  ADD KEY `fk_mustahik_kecamatan1_idx` (`idkecamatan`);

--
-- Indexes for table `muzaki`
--
ALTER TABLE `muzaki`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik_UNIQUE` (`nik`),
  ADD KEY `fk_mustahik_kelurahan1_idx` (`idkelurahan`),
  ADD KEY `fk_mustahik_kecamatan1_idx` (`idkecamatan`);

--
-- Indexes for table `pengumpulan`
--
ALTER TABLE `pengumpulan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengumpulan_upz1_idx` (`idupz`),
  ADD KEY `fk_pengumpulan_muzaki1_idx` (`idmuzaki`);

--
-- Indexes for table `penyaluran`
--
ALTER TABLE `penyaluran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembagian_jenisprogram1_idx` (`idjenisprogram`),
  ADD KEY `fk_pembagian_mustahik1_idx` (`idmustahik`);

--
-- Indexes for table `upz`
--
ALTER TABLE `upz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_upz_kelurahan1_idx` (`idkelurahan`),
  ADD KEY `fk_upz_kecamatan1_idx` (`idkecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenisprogram`
--
ALTER TABLE `jenisprogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `mustahik`
--
ALTER TABLE `mustahik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `muzaki`
--
ALTER TABLE `muzaki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengumpulan`
--
ALTER TABLE `pengumpulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penyaluran`
--
ALTER TABLE `penyaluran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `upz`
--
ALTER TABLE `upz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD CONSTRAINT `fk_kelurahan_kecamatan` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mustahik`
--
ALTER TABLE `mustahik`
  ADD CONSTRAINT `fk_mustahik_kecamatan1` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mustahik_kelurahan1` FOREIGN KEY (`idkelurahan`) REFERENCES `kelurahan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `muzaki`
--
ALTER TABLE `muzaki`
  ADD CONSTRAINT `fk_mustahik_kecamatan10` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mustahik_kelurahan10` FOREIGN KEY (`idkelurahan`) REFERENCES `kelurahan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pengumpulan`
--
ALTER TABLE `pengumpulan`
  ADD CONSTRAINT `fk_pengumpulan_muzaki1` FOREIGN KEY (`idmuzaki`) REFERENCES `muzaki` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pengumpulan_upz1` FOREIGN KEY (`idupz`) REFERENCES `upz` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `penyaluran`
--
ALTER TABLE `penyaluran`
  ADD CONSTRAINT `fk_pembagian_jenisprogram1` FOREIGN KEY (`idjenisprogram`) REFERENCES `jenisprogram` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pembagian_mustahik1` FOREIGN KEY (`idmustahik`) REFERENCES `mustahik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `upz`
--
ALTER TABLE `upz`
  ADD CONSTRAINT `fk_upz_kecamatan1` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_upz_kelurahan1` FOREIGN KEY (`idkelurahan`) REFERENCES `kelurahan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
