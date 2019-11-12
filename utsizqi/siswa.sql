-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Nov 2019 pada 03.50
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nim` varchar(20) NOT NULL COMMENT 'primary key',
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL COMMENT 'primary key'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nim`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('11123456', 'aubdu', 'Perempuan', '1324345', 'ufufuf'),
('112233', 'lalala', 'Perempuan', '334125', 'lamping'),
('161240000490', 'rizqi effendi', 'Laki-laki', '0986535', 'ngeling'),
('223344', 'opoelas', 'Laki-laki', '09765', 'malang'),
('445566', 'mana', 'Laki-laki', '0754321', 'kalia');

--
-- Trigger `siswa`
--
DELIMITER $$
CREATE TRIGGER `ganti_nomor` AFTER UPDATE ON `siswa` FOR EACH ROW begin
insert into ganti_1 set
nim = OLD.nim,
telp_lama = old.telp,
telp_baru = new.telp,
waktu = now();
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
