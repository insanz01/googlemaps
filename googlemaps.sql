-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 16.30
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `googlemaps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longtitude` varchar(50) NOT NULL,
  `url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_lokasi`, `latitude`, `longtitude`, `url`) VALUES
(1, 'Bank BCA KCP Banjar baru', '-3.4423428', '114.8188486', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.6195973392487!2d114.81884861417025!3d-3.4423428427472875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de68372821864d1%3A0xf30623d59f30fb42!2sBank%20BCA%20KCP%20Banjar%20Baru!5e0!3m2!1sid!2sid!4v1624888208162!5m2!1sid!2sid'),
(2, 'Bank Mandiri KCP Banjarbaru', '-3.4428798', '114.82037', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.6190525189163!2d114.82037001417024!3d-3.4424731427479354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de6810d518b1cf5%3A0x919cedb40fce6deb!2sBank%20Mandiri%20KCP%20Banjarbaru!5e0!3m2!1sid!2sid!4v1624888090874!5m2!1sid!2sid'),
(3, 'BNI Syariah Kantor Cabang Banjarbaru', '-3.4428369', '114.8162662', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.617812693693!2d114.83736141417022!3d-3.4427696427493872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de683c49123ae63%3A0xf477273e106dddc8!2sBNI%20Syariah%20Kantor%20Cabang%20Banjarbaru!5e0!3m2!1sid!2sid!4v1624888290023!5m2!1sid!2sid'),
(4, 'Bank BTPN Banjarbaru', '-3.4369526', '114.8458563', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.6421172056175!2d114.8458563141702!3d-3.436952642720917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de6810701ca50b1%3A0x163447405471a6b0!2sBank%20BTPN%20Banjarbaru!5e0!3m2!1sid!2sid!4v1624888354788!5m2!1sid!2sid'),
(5, 'Bank Kalsel Syariah', '-3.4405718', '114.8329026', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.6330135680937!2d114.84644331417014!3d-3.4391326427315843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de681069cd00dc3%3A0x774bd1656f868bb8!2sBank%20Kalsel%20Syariah!5e0!3m2!1sid!2sid!4v1624888415903!5m2!1sid!2sid');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
