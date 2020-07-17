-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 07:36 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lat_concert_ticketing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas_tiket`
--

CREATE TABLE `kelas_tiket` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_tiket`
--

INSERT INTO `kelas_tiket` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Reguler'),
(2, 'VIP'),
(3, 'VVIP');

-- --------------------------------------------------------

--
-- Table structure for table `konser`
--

CREATE TABLE `konser` (
  `id_konser` int(11) NOT NULL,
  `nama_konser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konser`
--

INSERT INTO `konser` (`id_konser`, `nama_konser`) VALUES
(1, 'Selalu Happpy - Band'),
(2, 'Muhammad Randi Noor - Solo'),
(3, 'Musix - DJ');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli_tiket`
--

CREATE TABLE `pembeli_tiket` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` text NOT NULL,
  `id_konser` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `pembeli_tiket`
--
DELIMITER $$
CREATE TRIGGER `Pembelian_Tiket` AFTER INSERT ON `pembeli_tiket` FOR EACH ROW BEGIN
	IF (NEW.id_konser = 1 AND NEW.id_kelas = 1) THEN
	 	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 1 AND tiket.id_kelas = 1;
   	ELSEIF (NEW.id_konser = 2 AND NEW.id_kelas = 1) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 2 AND tiket.id_kelas = 1;
    ELSEIF (NEW.id_konser = 3 AND NEW.id_kelas = 1) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 3 AND tiket.id_kelas = 1;
	ELSEIF (NEW.id_konser = 1 AND NEW.id_kelas = 2) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 1 AND tiket.id_kelas = 2;
    ELSEIF (NEW.id_konser = 2 AND NEW.id_kelas = 2) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 2 AND tiket.id_kelas = 2;
    ELSEIF (NEW.id_konser = 3 AND NEW.id_kelas = 2) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 3 AND tiket.id_kelas = 2;
    ELSEIF (NEW.id_konser = 1 AND NEW.id_kelas = 3) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 1 AND tiket.id_kelas = 3;
    ELSEIF (NEW.id_konser = 2 AND NEW.id_kelas = 3) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 2 AND tiket.id_kelas = 3;
    ELSEIF (NEW.id_konser = 3 AND NEW.id_kelas = 3) THEN
    	UPDATE tiket
    	SET tiket.jumlah_tiket = tiket.jumlah_tiket - 1
   	 	WHERE tiket.id_konser = 3 AND tiket.id_kelas = 3;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_konser` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `jumlah_tiket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_konser`, `id_kelas`, `jumlah_tiket`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(1, 2, 1),
(2, 2, 1),
(3, 2, 1),
(1, 3, 1),
(2, 3, 1),
(3, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas_tiket`
--
ALTER TABLE `kelas_tiket`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `konser`
--
ALTER TABLE `konser`
  ADD PRIMARY KEY (`id_konser`);

--
-- Indexes for table `pembeli_tiket`
--
ALTER TABLE `pembeli_tiket`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_konser` (`id_konser`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD KEY `id_konser` (`id_konser`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembeli_tiket`
--
ALTER TABLE `pembeli_tiket`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembeli_tiket`
--
ALTER TABLE `pembeli_tiket`
  ADD CONSTRAINT `pembeli_tiket_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas_tiket` (`id_kelas`),
  ADD CONSTRAINT `pembeli_tiket_ibfk_3` FOREIGN KEY (`id_konser`) REFERENCES `konser` (`id_konser`) ON DELETE CASCADE;

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`id_konser`) REFERENCES `konser` (`id_konser`),
  ADD CONSTRAINT `tiket_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas_tiket` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
