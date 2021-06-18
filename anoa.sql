SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET GLOBAL storage_engine ="InnoDb";
SET GLOBAL innodb_large_prefix = on;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'CD/DVD', '2020-07-07 06:35:21', '2020-07-08 03:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telpon`, `created_at`, `updated_at`) VALUES
(1, 8576783743901, 'Dzul', 'Pasar segar, depok', '085767837439', '2020-07-08 03:22:56', '2020-07-08 03:25:57'),
(2, 8171719741002, 'Uca', 'komp. depag A 23 RT/RW 01/015 pabuaran bojong gede, citayam', '081717197410', '2020-07-08 03:25:22', '2020-07-08 03:26:26'),
(3, 8569221542303, 'Tria', 'Beji Depok', '085692215423', '2020-07-08 03:29:58', '2020-07-08 03:29:58'),
(4, 8131464277404, 'Mamat', 'Jalan Haji Nawi Raya No 74, Gandaria Utara, Jakarta Selatan', '08131464277404', '2020-07-08 03:33:46', '2020-07-08 03:35:04'),
(5, 89533604954805, 'Maya', 'Jalan Dewata VI no 22 Sidakarya, Denpasar Selatan, Bali', '0895336049548', '2020-07-08 03:34:51', '2020-07-08 03:34:51'),
(6, 8592115912606, 'Wafie', 'Kalibata Utara II / 12, Jakarta Selatan', '085921159126', '2020-07-08 03:37:09', '2020-07-08 03:37:09'),
(7, 8129608472007, 'Tony', 'Jalan K.H. Ahmad Dahlan No.39 (d/h No: 26), RT 005, RW 005, Kelurahan Kukusan, Kecamatan Beji, Kota Depok', '081296084720', '2020-07-08 03:38:23', '2020-07-08 03:38:23'),
(8, 8128376321008, 'Yuda', 'Jl. Ampera Raya, Gang Sawo 2 No. 121 RT/RW 04/10, Kel. Ragunan, Kec. Pasar Minggu, Jakarta Selatan', '081283763210', '2020-07-08 03:39:32', '2020-07-08 03:39:32'),
(9, 812955851809, 'Faki', 'Janur Kuning VII WM2 no 22, Kelapa Gading', '0812.9558518', '2020-07-08 03:40:26', '2020-07-08 03:40:26'),
(10, 8221155755010, 'Cibe', 'Jl. Asia Baru Blok ii No. 40A Rt. 005/004, Kel. Duri Kepa, Kec. Kebon Jeruk 11510', '082211557550', '2020-07-08 03:42:09', '2020-07-08 03:42:09'),
(11, 817698823911, 'jaka', 'Jl. Perdana D8, Kelurahan Wijaya Kusuma, Kecamatan Grogol Petamburan, Jakarta Barat', '08176988239', '2020-07-08 03:43:39', '2020-07-08 03:43:39'),
(12, 8131539759912, 'Syfia', 'Jalan Tanah Abang IV No.49, RT.8/RW.4, Petojo Selatan, Gambir, RT.8/RW.4, Petojo Sel., Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10160', '081315397599', '2020-07-08 03:45:56', '2020-07-08 03:45:56'),
(13, 8778006960113, 'Pabio', 'Jl. Banjarsari 2 No.5 . RT 02 RW 08. Kelurahan Cilandak Barat (dekat Jl. Raya Fatmawati). Kecamatan Cilandak', '087780069601', '2020-07-08 03:46:52', '2020-07-08 03:46:52'),
(14, 82216258273014, 'Okto', 'Jl Lenteng Agung Raya No. 14, Kecamatan Jagakarsa, Kelurahan Pasar Minggu', '0822162582730', '2020-07-08 03:47:47', '2020-07-08 03:47:47'),
(15, 8180781737715, 'Agung', 'Gang Delima II no. 36, RT/RW 005/005, Tanjung Duren Selatan, Grogol Petamburan, Jakarta Barat 11470', '081807817377', '2020-07-08 03:49:07', '2020-07-08 03:49:07'),
(16, 8193856573416, 'Danu', 'Jl. Utama Selatan 25 D Rt.03/Rw.03, Kel. Cengkareng Barat, Kec. Cengkareng, Jakarta Barat', '081938565734', '2020-07-08 03:50:20', '2020-07-08 03:50:20'),
(17, 811880238317, 'Dwan', 'Jl. Mangga Besar IVE No.21, Taman Sari, Jakarta Barat 11150', '08118802383', '2020-07-08 03:51:20', '2020-07-08 03:51:20'),
(18, 8131539759918, 'Guntur', 'Jalan Tanah Abang IV No.49, RT.8/RW.4, Petojo Selatan, Gambir, RT.8/RW.4, Petojo Sel., Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10160', '081315397599', '2020-07-08 03:52:22', '2020-07-08 03:52:22'),
(19, 8128395561419, 'Akbar', 'Jl. Dr. Susilo 6/6, Grogol', '081283955614', '2020-07-08 03:53:01', '2020-07-08 03:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2017_05_17_231123_buat_tabel_kategori', 1),
(18, '2017_05_18_000802_buat_tabel_produk', 1),
(19, '2017_05_18_103204_buat_tabel_supplier', 1),
(20, '2017_05_18_103438_buat_tabel_member', 1),
(21, '2017_05_18_103716_buat_tabel_pembelian', 1),
(22, '2017_05_18_104108_buat_tabel_pembelian_detail', 1),
(23, '2017_05_18_104505_buat_tabel_penjualan', 1),
(24, '2017_05_18_110941_buat_tabel_penjualan_detail', 1),
(25, '2017_05_18_111512_buat_tabel_pengeluaran', 1),
(26, '2017_05_18_111942_buat_tabel_setting', 1),
(27, '2017_05_18_112540_ubah_tabel_users', 1),
(28, '2020_04_30_121540_create_cache_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `total_item` int(10) UNSIGNED NOT NULL,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `bayar` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `kode_produk` bigint(20) UNSIGNED NOT NULL,
  `harga_beli` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `sub_total` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `jenis_pengeluaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `kode_member` bigint(20) UNSIGNED NOT NULL,
  `total_item` int(10) UNSIGNED NOT NULL,
  `total_harga` bigint(20) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `bayar` bigint(20) UNSIGNED NOT NULL,
  `diterima` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `kode_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 75000, 0, 75000, 80000, 2, '2020-07-08 03:55:13', '2020-07-08 06:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `kode_produk` bigint(20) UNSIGNED NOT NULL,
  `harga_jual` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `sub_total` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `kode_produk`, `harga_jual`, `jumlah`, `diskon`, `sub_total`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 75000, 1, 30, 52500, '2020-07-08 06:10:55', '2020-07-08 06:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `kode_produk` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_band` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` bigint(20) UNSIGNED NOT NULL,
  `diskon` int(10) UNSIGNED NOT NULL,
  `harga_jual` bigint(20) UNSIGNED NOT NULL,
  `stok` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `id_kategori`, `nama_produk`, `nama_band`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Fantastic June - Dancing with the Flowers', 'Fantastic June', 72115, 30, 75000, 3, '2020-07-07 13:08:58', '2020-07-08 06:11:17'),
(2, 2, 1, 'Sharesprings - Paraparlor', 'Sharesprings', 78317, 30, 80000, 12, '2020-07-07 13:10:56', '2020-07-07 13:10:56'),
(3, 3, 1, 'Damascus - Painted Road', 'Damascus', 5000, 30, 5000, 12, '2020-07-08 00:37:04', '2020-07-08 00:37:04'),
(4, 4, 1, 'Barefood - EP', 'Barefood', 33053, 30, 35000, 12, '2020-07-08 00:39:48', '2020-07-08 00:39:48'),
(5, 5, 1, 'T_A_M - Silk​/​Sweat', 'T_A_M', 57736, 30, 60000, 12, '2020-07-08 00:43:14', '2020-07-08 00:43:14'),
(6, 6, 1, 'BEESWAX - Growing Up Late', 'BEESWAX', 72170, 30, 75000, 12, '2020-07-08 00:45:21', '2020-07-08 00:45:21'),
(7, 7, 1, 'Jesu - Conqueror', 'Jesu', 101038, 30, 110000, 12, '2020-07-08 00:46:53', '2020-07-08 00:46:53'),
(8, 8, 1, 'My Favorite  - Love At Absolute Zero​/​Death In Suburbia (BELIEVERS EDITION)', 'My Favorite', 144196, 30, 145000, 12, '2020-07-08 00:49:24', '2020-07-08 00:49:24'),
(9, 9, 1, 'Negative Lovers - Faster Lover EP', 'Negative Lovers', 173208, 30, 175000, 12, '2020-07-08 00:52:43', '2020-07-08 00:52:43'),
(10, 10, 1, 'Gulp - Game Love', 'Gulp', 22805, 30, 25000, 12, '2020-07-08 00:54:56', '2020-07-08 00:54:56'),
(11, 11, 1, 'Lilies On Mars - Dot To Dot', 'Lilies On Mars', 129762, 30, 130000, 12, '2020-07-08 00:56:24', '2020-07-08 00:56:24'),
(12, 12, 1, 'Negative Lovers - .38 Loves Me 10\"', 'Negative Lovers', 28868, 30, 30000, 12, '2020-07-08 00:58:22', '2020-07-08 00:58:22'),
(13, 13, 1, 'Obedient Wives Club - Murder Kill Baby', 'Obedient Wives Club', 28868, 30, 30000, 12, '2020-07-08 01:00:57', '2020-07-08 01:00:57'),
(14, 14, 1, 'Little Smoke - On Holidays EP', 'Little Smoke', 14434, 30, 15000, 12, '2020-07-08 01:02:20', '2020-07-08 01:02:20'),
(15, 15, 1, 'Pocketbooks - Carousel', 'Pocketbooks', 72170, 30, 75000, 12, '2020-07-08 01:04:28', '2020-07-08 01:04:28'),
(16, 16, 1, 'When Nalda became punk - A farewell to youth', 'When Nalda became punk', 115472, 30, 120000, 12, '2020-07-08 01:06:03', '2020-07-08 01:06:03'),
(17, 17, 1, 'Panda Riot - Northern Automatic Music', 'Panda Riot', 129762, 30, 130000, 12, '2020-07-08 01:07:15', '2020-07-08 01:07:15'),
(18, 18, 1, 'FEAR OF MEN - \'Mosaic\' Single', 'FEAR OF MEN', 21651, 30, 25000, 12, '2020-07-08 01:10:07', '2020-07-08 01:10:07'),
(19, 19, 1, 'Curve - Perish Single', 'Curve', 43302, 30, 45000, 12, '2020-07-08 01:11:34', '2020-07-08 01:11:34'),
(20, 20, 1, 'Pia Fraus - Wonder What It\'s Like', 'Pia Fraus', 115472, 30, 120000, 12, '2020-07-08 01:15:45', '2020-07-08 01:15:45'),
(21, 21, 1, 'Pia Fraus - In Solarium', 'Pia Fraus', 115472, 30, 120000, 12, '2020-07-08 01:17:13', '2020-07-08 01:17:13'),
(22, 22, 1, 'Fleeting Joys - Kiss a Girl In Black (single)', 'Fleeting Joys', 14434, 30, 15000, 12, '2020-07-08 01:18:45', '2020-07-08 01:18:45'),
(23, 23, 1, 'The Bang Girl Group Revue - Soul Shangri​-​La', 'The Bang Girl Group Revue', 101038, 30, 110000, 12, '2020-07-08 01:19:52', '2020-07-08 01:19:52'),
(24, 24, 1, 'ミツメ / mitsume - fly me to the mars', 'ミツメ / mitsume', 72115, 30, 75000, 12, '2020-07-08 01:21:09', '2020-07-08 01:21:09'),
(25, 25, 1, 'Lightfoils - Lightfoils', 'Lightfoils', 57158, 30, 60000, 12, '2020-07-08 01:22:30', '2020-07-08 01:22:30'),
(26, 26, 1, 'the Killjoys - Ruby (Remastered)', 'the Killjoys', 129906, 30, 130000, 12, '2020-07-08 01:24:36', '2020-07-08 01:24:36'),
(27, 27, 1, 'The Vandelles - Del Black Aloha', 'The Vandelles', 101038, 30, 110000, 12, '2020-07-08 02:40:05', '2020-07-08 02:40:05'),
(28, 28, 1, 'Broken Water - Peripheral Star', 'Broken Water', 72170, 30, 75000, 12, '2020-07-08 02:41:54', '2020-07-08 02:41:54'),
(29, 29, 1, 'Household - Items', 'Household', 43302, 30, 45000, 12, '2020-07-08 02:43:20', '2020-07-08 02:43:20'),
(30, 30, 1, 'WHITE LUNG - Sorry', 'WHITE LUNG', 115472, 30, 120000, 12, '2020-07-08 02:45:01', '2020-07-08 02:45:01'),
(31, 31, 1, 'Dream Diary - You Are The Beat', 'Dream Diary', 187498, 30, 190000, 12, '2020-07-08 02:46:29', '2020-07-08 02:46:29'),
(32, 32, 1, 'Ferns - On Botany', 'Ferns', 28868, 30, 30000, 12, '2020-07-08 02:48:14', '2020-07-08 02:48:14'),
(33, 33, 1, 'Sad Day For Puppets - Just Like A Ghost EP', 'Sad Day For Puppets', 144340, 30, 145000, 12, '2020-07-08 02:49:21', '2020-07-08 02:49:21'),
(34, 34, 1, 'Sad Day For Puppets - Unknown Colors', 'Sad Day For Puppets', 158774, 30, 160000, 12, '2020-07-08 02:50:25', '2020-07-08 02:50:25'),
(35, 35, 1, 'Allo Darlin\' - Allo Darlin\'', 'Allo Darlin\'', 115472, 30, 120000, 12, '2020-07-08 02:52:18', '2020-07-08 02:52:18'),
(36, 36, 1, 'Black Tambourine - OneTwoThreeFour', 'Black Tambourine', 50519, 30, 55000, 12, '2020-07-08 02:53:34', '2020-07-08 02:53:34'),
(37, 37, 1, 'Echo Lake - Young Silence', 'Echo Lake', 14434, 30, 15000, 12, '2020-07-08 02:54:39', '2020-07-08 02:54:39'),
(38, 38, 1, 'Echo Lake - Everything Is Real', 'Echo Lake', 14434, 30, 15000, 12, '2020-07-08 02:55:47', '2020-07-08 02:55:47'),
(39, 39, 1, 'the Rose Mary\'s - Freedom Riders', 'the Rose Mary\'s', 43302, 30, 45000, 12, '2020-07-08 02:57:13', '2020-07-08 02:57:13'),
(40, 40, 1, 'A Place To Bury Strangers - A Place To Bury Strangers', 'A Place To Bury Strangers', 144340, 30, 145000, 12, '2020-07-08 02:58:29', '2020-07-08 02:58:29'),
(41, 41, 1, 'Magicrpm - C44', 'Magicrpm', 5000, 30, 7000, 12, '2020-07-08 02:59:25', '2020-07-08 02:59:25'),
(42, 42, 1, 'Hari and Aino - Hari and Aino', 'Hari and Aino', 72170, 30, 75000, 12, '2020-07-08 03:00:29', '2020-07-08 03:00:29'),
(43, 43, 1, 'Pinkshinyultrablast - Happy Songs For Happy Zombies', 'Pinkshinyultrablast', 72170, 30, 75000, 12, '2020-07-08 03:01:59', '2020-07-08 03:01:59'),
(44, 44, 1, 'Various Artists - Indietracks Compilation 2012', 'Various Artists', 57736, 30, 60000, 12, '2020-07-08 03:02:51', '2020-07-08 03:02:51'),
(45, 45, 1, 'charity cover compilation - Just Like Honey', 'charity cover compilation', 10000, 30, 12000, 12, '2020-07-08 03:04:14', '2020-07-08 03:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartu_member` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon_member` int(10) UNSIGNED NOT NULL,
  `tipe_nota` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `logo`, `kartu_member`, `diskon_member`, `tipe_nota`, `created_at`, `updated_at`) VALUES
(1, 'Anoa Records', 'Jakarta, Indonesia. 12170', '085777809080', 'anoa.jpg', 'card.png', 10, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telpon`, `created_at`, `updated_at`) VALUES
(1, 'Tokosy', 'Karangtengah, Kota Tangerang, 15159', '085692215428', '2020-07-08 03:09:44', '2020-07-08 03:09:44'),
(2, 'Snapy Kemang', 'Jl. Kemang Raya No.90, RT.10/RW.2, Bangka, Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12730', '0217193205', '2020-07-08 03:11:45', '2020-07-08 03:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `foto`, `level`) VALUES
(1, 'Danil', 'danil@yeahbutstill.world', '$2y$10$/6Dt2BOK7qNLgDSo78dqw.KdrkNFC35euxns5fsQMo9vn3HUN8TdW', 'lbgRNGFfqNWfKXBg69ImXM3Y0HJGn55bANkKnn0KvgmBXhUp9tWoMa8idzoI', NULL, NULL, 'user.png', 1),
(2, 'Yulisma', 'yulisma@yeahbutstill.world', '$2y$10$9zYZYPuTtpkmEiF1RlVDjOngoKSZGA1VipCJ1InPjweh9K/wTtQpi', NULL, NULL, NULL, 'user.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
