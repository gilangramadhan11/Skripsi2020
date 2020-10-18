-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2020 at 06:42 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gexpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(250) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_level` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `email`, `id_level`) VALUES
(4, 'Gilang Ramadhan', 'admingexpress', '$2y$10$tgILlp1K2CXBmvNUS6GbtujspRkgW83UczGLlEcqe4nz0BqG.w/Zu', 'gilangramadan1519@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_resi` int(250) NOT NULL,
  `nama_pengirim` varchar(128) NOT NULL,
  `nohp_pengirim` varchar(128) NOT NULL,
  `alamat_pengirim` varchar(250) NOT NULL,
  `nama_penerima` varchar(128) NOT NULL,
  `nohp_penerima` varchar(50) NOT NULL,
  `id_lokasi` varchar(128) NOT NULL,
  `alamat_penerima` varchar(250) NOT NULL,
  `nomor_resi` varchar(128) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `id_kemasan` int(128) NOT NULL,
  `id_berat` varchar(128) NOT NULL,
  `id_paket` varchar(128) NOT NULL,
  `harga_total` double NOT NULL,
  `id_pembayaran` varchar(128) NOT NULL,
  `id_status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_resi`, `nama_pengirim`, `nohp_pengirim`, `alamat_pengirim`, `nama_penerima`, `nohp_penerima`, `id_lokasi`, `alamat_penerima`, `nomor_resi`, `nama_barang`, `id_kemasan`, `id_berat`, `id_paket`, `harga_total`, `id_pembayaran`, `id_status`) VALUES
(13, 'Andre', '08923748574', 'kp. ciriung', 'Sule', '082118457100', '3', 'kp. lembang', 'CEBY1X2U', 'HP Xiaomi', 1, '2', '12', 15000, '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `berat`
--

CREATE TABLE `berat` (
  `id_berat` int(128) NOT NULL,
  `nama_berat` varchar(128) NOT NULL,
  `harga_berat` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berat`
--

INSERT INTO `berat` (`id_berat`, `nama_berat`, `harga_berat`) VALUES
(2, '0 - 1.2', '5000'),
(3, '1.2 - 2.2', '10000'),
(4, '2.2 - 3.2', '15000'),
(5, '3.2 - 4.2', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengiriman`
--

CREATE TABLE `detail_pengiriman` (
  `id_pengiriman` int(128) NOT NULL,
  `nomor_resi` varchar(128) NOT NULL,
  `id_status` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `deskripsi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pengiriman`
--

INSERT INTO `detail_pengiriman` (`id_pengiriman`, `nomor_resi`, `id_status`, `tanggal`, `jam`, `deskripsi`) VALUES
(2, 'HP9G4NTS', '2', '2020-06-29', '17:10:51', 'barang dalam perjalanan majalaya baleendah'),
(3, 'A17CEYF9', '2', '2020-07-27', '16:51:36', 'majalaya');

-- --------------------------------------------------------

--
-- Table structure for table `kemasan`
--

CREATE TABLE `kemasan` (
  `id_kemasan` int(128) NOT NULL,
  `kemasan` varchar(128) NOT NULL,
  `harga_kemasan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kemasan`
--

INSERT INTO `kemasan` (`id_kemasan`, `kemasan`, `harga_kemasan`) VALUES
(1, 'Tidak Pakai', '0'),
(2, 'Packing Plastik', '2000'),
(3, 'Packing Buble Warp', '3000'),
(4, 'Packing Kardus', '5000'),
(5, 'Packing Kayu', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` int(50) NOT NULL,
  `nama_kurir` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telp_kurir` varchar(128) NOT NULL,
  `id_level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama_kurir`, `username`, `password`, `telp_kurir`, `id_level`) VALUES
(1, 'Desta Maharani', 'botuna', '$2y$10$eDoCuD5LrSbFmCkUsxN.jOl6xm9rmG.IluJ.L2DV/lPlfsuGXGVYe', '082117462523', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(128) NOT NULL,
  `lokasi` varchar(128) NOT NULL,
  `harga_jarak` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `lokasi`, `harga_jarak`) VALUES
(3, 'ARJASARI', '6000'),
(4, 'BALEENDAH', '6000'),
(5, 'BANJARAN', '6000'),
(6, 'BOJONGSOANG', '6000'),
(7, 'CANGKUANG', '7000'),
(8, 'CICALENGKA', '2000'),
(9, 'CIKANCUNG', '4000'),
(10, 'CILENGKRANG', '10000'),
(11, 'CILEUNYI', '6000'),
(12, 'CIMAUNG', '7000'),
(13, 'CIMENYAN', '10000'),
(14, 'CIPARAY', '4000'),
(15, 'CIWIDEY', '13000'),
(16, 'DAYEUHKOLOT', '6000'),
(17, 'IBUN', '2000'),
(18, 'KATAPANG', '6000'),
(19, 'KERTASARI', '8000'),
(20, 'KUTAWARINGIN', '9000'),
(21, 'MAJALAYA', '2000'),
(22, 'MARGAASIH', '8000'),
(23, 'MARGAHAYU', '8000'),
(24, 'NAGREG', '6000'),
(25, 'PACET', '4000'),
(26, 'PAMENGPEUK', '6000'),
(27, 'PANGALENGAN', '15000'),
(28, 'PASEH', '2000'),
(29, 'PASIRJAMBU', '7000'),
(30, 'RANCABALI', '15000'),
(31, 'RANCAEKEK', '4000'),
(32, 'SOLOKAN JERUK', '2000'),
(33, 'SOREANG', '7000');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(128) NOT NULL,
  `nama_member` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `alamat_email` varchar(128) NOT NULL,
  `id_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `username`, `password`, `alamat_email`, `id_level`) VALUES
(1, 'slamet jamet', 'slamet', '$2y$10$3fXh3d0ztXp3/xpg2iI00eFVS9lXyUP/x25mrqAn.wmvXZLi1olFS', 'slamet@gmail.com', '3');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(100) NOT NULL,
  `paket` varchar(250) NOT NULL,
  `harga` decimal(50,0) NOT NULL,
  `estimasi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `paket`, `harga`, `estimasi`) VALUES
(12, 'Standar', '4000', '2-3 Hari'),
(13, 'Reguler', '6000', '1-2 Hari');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(128) NOT NULL,
  `jenis_bayar` varchar(128) NOT NULL,
  `harga_bayar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `jenis_bayar`, `harga_bayar`) VALUES
(1, 'COD (Khusus Order)		\r\n		', '5000'),
(2, 'Tunai (Khusus Order)', '5000'),
(3, 'COD', '0'),
(4, 'Tunai', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_order` int(128) NOT NULL,
  `pemesan` varchar(128) NOT NULL,
  `telp_pemesan` varchar(128) NOT NULL,
  `alamat_pemesan` varchar(128) NOT NULL,
  `penerima` varchar(128) NOT NULL,
  `telp_penerima` varchar(128) NOT NULL,
  `alamat_pnrima` varchar(128) NOT NULL,
  `id_lokasi` varchar(128) NOT NULL,
  `desk_barang` varchar(128) NOT NULL,
  `id_berat` varchar(128) NOT NULL,
  `id_paket` varchar(128) NOT NULL,
  `biaya` decimal(11,0) NOT NULL,
  `id_pembayaran` varchar(50) NOT NULL,
  `id_member` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_order`, `pemesan`, `telp_pemesan`, `alamat_pemesan`, `penerima`, `telp_penerima`, `alamat_pnrima`, `id_lokasi`, `desk_barang`, `id_berat`, `id_paket`, `biaya`, `id_pembayaran`, `id_member`) VALUES
(4, 'Andre', '08923748574', 'kp. ciriung', 'Sule', '082261204293', 'kp. lembang', '8', 'HP Xiaomi', '1.2', '12', '13400', '1', '1'),
(5, 'Andre', '08923748574', 'kp. ciriung', 'Sule', '082261204293', 'kp. lembang', '12', 'HP Xiaomi', '1.2', '12', '18400', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(128) NOT NULL,
  `status_pengiriman` varchar(128) NOT NULL,
  `arti` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status_pengiriman`, `arti`) VALUES
(1, 'Manifested', 'Barang sudah dipihak G-Express'),
(2, 'Sending Process', 'Barang dalam proses pengiriman'),
(3, 'Delivered', 'Paket sudah diterima di alamat tujuan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_resi`),
  ADD KEY `id_lokasi` (`id_lokasi`) USING BTREE;

--
-- Indexes for table `berat`
--
ALTER TABLE `berat`
  ADD PRIMARY KEY (`id_berat`);

--
-- Indexes for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `kemasan`
--
ALTER TABLE `kemasan`
  ADD PRIMARY KEY (`id_kemasan`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_resi` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `berat`
--
ALTER TABLE `berat`
  MODIFY `id_berat` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  MODIFY `id_pengiriman` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kemasan`
--
ALTER TABLE `kemasan`
  MODIFY `id_kemasan` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_order` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
