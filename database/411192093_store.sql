-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 10:29 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `411192093_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `stok_barang` int(11) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `created_by`, `kode_barang`, `nama_barang`, `deskripsi`, `stok_barang`, `harga_barang`) VALUES
(28, 'Aldiansyach', 'B3520', 'Mouse Gaming', 'Untuk Bermain Game', 20, 200000),
(33, 'Aldiansyach', 'B7573', 'Laptop', 'Laptop Gaming', 123, 810000),
(40, 'Admin', 'B7985', 'Gelas', 'Untuk Minum', 321, 2000),
(41, 'admin', 'A6317', 'Gelas', 'Untuk Minum', 200, 3040),
(42, 'Aldiansyach', 'A8653', 'Laptop Gaming', 'Untuk Main Game', 600, 700000),
(43, 'admin', 'B3262', 'Tas Kerja', 'Untuk membawa Barang', 5000, 800000);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(200) DEFAULT NULL,
  `alamat` text,
  `nama_kota` varchar(25) NOT NULL,
  `no_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode_pelanggan`, `nama_pelanggan`, `alamat`, `nama_kota`, `no_telepon`) VALUES
(12, 'P4087', 'Siti', 'Jakarta Selatan', 'Jakarta', '081231312423'),
(13, 'P2490', 'Aldi', 'Jakarta Barat', 'Jakarta', '08217312314');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pelanggan` varchar(25) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `tanggal`, `kode_pelanggan`, `kode_barang`, `jumlah_barang`, `harga_barang`) VALUES
(10, 'J5734', '2022-11-05', 'P9217', 'B3520', 300, 200000),
(11, 'J8448', '2023-01-16', 'P9217', 'B3520', 1000, 30000),
(12, 'S9407', '2023-01-17', 'P9217', 'B3520', 1000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `kode_supplier` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `nama_supplier` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_bin,
  `no_telepon` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aldiansyach', 'aldiansyach7@gmail.com', NULL, '$2y$10$oTjx3/DFXhSqomiARtDcW.dG9HvUPTQ6Bsrg48aSS0afnvXNH/bUO', 'zbEeVM5US4Ng40jLDfTzuqh2yfOedYYgCWkuDGOPNvAKt8j8nikrmiZhQBk9', '2023-01-14 10:24:47', '2023-01-14 10:24:47'),
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$jls2VPHICsyUULITJIvM.unHMiMrJA6fT5FFHD/D4SehKXVo1MvMq', NULL, '2023-01-16 22:17:24', '2023-01-16 22:17:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
