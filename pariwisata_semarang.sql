-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2023 pada 16.48
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata_semarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata_semarang`
--

CREATE TABLE `wisata_semarang` (
  `id` int(11) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat_wisata` varchar(255) NOT NULL,
  `deskripsi_wisata` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wisata_semarang`
--

INSERT INTO `wisata_semarang` (`id`, `nama_wisata`, `alamat_wisata`, `deskripsi_wisata`) VALUES
(1, 'Wisata Lawang sewu', 'Jl. Pemuda, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', 'Inilah tempat wisata di Semarang yang ikonik banget. Bicara soal wisata Semarang, tentu aja harus menyebut Lawang Sewu! Merupakan bekas kantor pusat Perusahaan Kereta Hindia Belanda, gedung ini juga sempat dijadikan kantor Djawatan Kereta Api Repoeblik Indonesia dan Kantor Badan Prasarana Komando Da'),
(2, 'Dusun Semilir Eco Park', 'Jl. Soekarno - Hatta No.49, Ngemple, Bawen, Ngemplak, Semarang, Jawa Tengah 50661', 'Dusun Semilir Eco Park terhitung tempat wisata di Semarang yang baru karena dibuka pada awal 2019 lalu. Meski begitu, destinasi wisata Semarang yang satu ini langsung jadi salah satu yang terpopuler bagi warga Semarang dan sekitarnya karena bentuk eksterior dan interior bangunan yang unik!  \r\nYup, b'),
(3, 'Umbul sidomukti', 'Umbul Sidomukti, Manggung, Jimbaran, Bandungan, Semarang, Central Java 50661', 'Tempat wisata di Semarang yang satu ini terletak di kaki Gunung Ungaran, jadi kamu bisa menikmati udara yang segar dan juga panorama indah alam Semarang dari ketinggian. Punya berbagai aktivitas outbound yang seru, kolam renang dengan air yang sejuk khas pegunungan, serta kafe dengan pemandangan ind');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wisata_semarang`
--
ALTER TABLE `wisata_semarang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wisata_semarang`
--
ALTER TABLE `wisata_semarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
