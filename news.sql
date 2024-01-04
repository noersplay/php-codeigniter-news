-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 13, 2023 at 03:47 AM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5083020_sF_k4bar`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(128) NOT NULL,
  `category_desc` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_desc`) VALUES
(7, 'Berita Terbaru', ''),
(8, 'Prestasi', ''),
(9, 'Info Magang', ''),
(10, 'Teknik Informatika', ''),
(11, 'KOMEDI', 'HEHE..'),
(12, 'Pengetahuan', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) NOT NULL,
  `comment_parent` bigint(20) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_body` text NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_parent`, `comment_date`, `comment_body`, `post_id`, `user_id`) VALUES
(11, 0, '2023-07-12', 'Mantapp', 33, 6),
(12, 0, '2023-07-12', 'Sukses', 33, 7),
(13, 0, '2023-07-12', 'sehat selalu\r\n', 33, 1),
(14, 13, '2023-07-12', 'Amin', 33, 8);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL,
  `post_date` date NOT NULL,
  `post_title` varchar(256) NOT NULL,
  `post_body` longtext NOT NULL,
  `post_thumbnail` varchar(256) DEFAULT NULL,
  `post_slug` varchar(256) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_date`, `post_title`, `post_body`, `post_thumbnail`, `post_slug`, `category_id`, `user_id`) VALUES
(33, '2023-07-12', 'Wisuda dan Angkat Sumpah Profesi NERS Angkatan XIV Periode II 27 Juni 2023', '<p>Wisudawan dan wisudawati yang hadir berjumlah 12 orang beserta keluarga dan teman-teman seangkatan yang ingin mengucapkan selamat setelah seluruh acara wisuda dan angkat sumpah dii Aula ARS University selesai, seluruh wisudawan berfoto di area lingkungan kampus ARS University. Acara wisuda dan angkat sumpah dimulai pukul tepat 09.00 WIB dimana acara dilaksanakan setelah seluruh wisudawan dan 2 orang anggota keluarga hadir dan menempati tempat yang telah disediakan.<br></p>', 'e001acc95891444f695426de43ee2483.jpg', 'wisuda-dan-angkat-sumpah-profesi', 7, 1),
(34, '2023-07-12', 'Makin Jadi Idaman, Bintang PBSI Fajar Alfian Diam-diam Lanjutkan Studi S2', '<p>Bersinar dengan serangkaian prestasi yang ditorehkan sebagai bintang bulutangkis ganda putra Indonesia, Fajar Alfian, ternyata diam-diam lanjut Studi S2. Betapa populernya Fajar Alfian akhir-akhir ini. Bagaimana tidak. Selama beberapa waktu belakangan ini, partner Muhammad Rian Ardianto itu selalu menjadi tulang punggung Indonesia di berbagai kompetisi.<br></p>', '19485cbc2ec2c76038c6aff44d268156.jpg', 'mahasiswa-ars-university-juarai-melukis', 8, 1),
(35, '2023-07-12', 'PENELITI TEMUKAN BUKTI BAHWA KUCING DAPAT BERSUARA \"MEOWW\"', '<p style=\"margin-top: 1.25em; margin-bottom: 1.25em; white-space-collapse: preserve; border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(247, 247, 248);\">New York, AS - Sebuah penelitian baru-baru ini menggemparkan dunia ketika para ilmuwan mengumumkan penemuan luar biasa bahwa kucing memiliki kemampuan bersuara. Dalam serangkaian percobaan yang dilakukan di laboratorium rahasia, para peneliti mengamati kucing jalanan sebagai sarana bersuara \"MEOW\".</p><p style=\"margin-top: 1.25em; margin-bottom: 1.25em; white-space-collapse: preserve; border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(247, 247, 248);\">Dr. Whiskers, seorang ilmuwan terkemuka dalam bidang komunikasi interspesies, menjelaskan, \"Kami terkejut ketika kucing-kucing yang kami amati mulai berusara \"MEOW\". Mereka bersuara \"MEOW\" secara terus menerus sampai mereka kelelahan dan tertidur.\"</p><p style=\"margin-top: 1.25em; margin-bottom: 1.25em; white-space-collapse: preserve; border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(247, 247, 248);\">Penelitian ini telah menimbulkan kontroversi di komunitas ilmiah, dengan beberapa skeptis yang menyatakan bahwa ini adalah lelucon belaka. Namun, para peneliti bersikeras bahwa bukti mereka kuat dan berharap penemuan ini dapat membuka pintu bagi pemahaman baru tentang komunikasi antarspesies.</p>', 'f33822cc2f9058dafca8ef4a27223714.jpg', 'peneliti-temukan-bukti-bahwa-kucing', 12, 1),
(36, '2023-07-12', 'PRIA INI MENGUNDURKAN DIRI DARI KAMPUS, KENAPA YA??', 'Pria berinisial radika mirza ini diduga mengundurkan diri dari kampus tanpa alasan, pihak kampus pun menyetujuinya', 'ef68361fc60ce5cb44fcb58a8552041f.jpg', 'pria-ini-mengundurkan-diri-dari', 7, 1),
(37, '2023-07-12', 'DIDUGA!! SISWA JURUSAN TEKNIK BANGUNAN INI MASUK JURUSAN TEKNIK INFORMATIKA', '<p>Mahasiswa asal rancaekek ini SMK jurusan Teknik Bangunan dan ketika masuk Ars university masuk jurusan Teknik Informatika</p>', '37819aee73c64c0f52133fe5f57998f4.jpg', 'didugasiswa-jurusan-teknik-bangunan-ini', 8, 1),
(38, '2023-07-12', 'ARS UNIVERSITY ADALAH SALAH SATU UNIVERSITAS YANG BEKERJA SAMA DENGAN MSIB', '<p>Program MSIB adalah<font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\">&nbsp;<span style=\"font-size: 1rem; font-family: &quot;Google Sans&quot;, arial, sans-serif;\">program persiapan karier yang komprehensif dan memberikan kesempatan bagi Mahasiswa untuk belajar di luar program studi dengan jaminan konversi SKS yang diakui perguruan tinggi</span><span style=\"font-size: 1rem; font-family: &quot;Google Sans&quot;, arial, sans-serif;\">.</span></font></p>', '6e80aca5f9f1b1fe9d7c44713f1aaa71.jpg', 'ars-university-adalah-salah-satu', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `role` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `avatar`, `role`) VALUES
(1, 'bangfikri', '$2y$10$0OAcT33SnZu0nzOIDtr3JemPpkqt7oaTOnv39uZhK5yCV/JCwTS7i', 'Admin Bang Fikri', '080e721a5b45920bff2d7be9cb504e06.jpeg', 'admin'),
(5, 'user', '$2y$10$5aDqSSvd5G29ZZ2e3jXgXuuOkP/lnPHTjokrcpbTpFNHVDVneyMXK', 'user', NULL, 'member'),
(6, 'hari', '$2y$10$RBPi8wdjoz6hY6xHmOVPPO9E/NI47apomI.L27xu4JHiiXQwnzkCq', 'Kak Amel', '7bebed27b4a0d87c314619bb37b3b6a7.jpeg', 'member'),
(7, 'rehan', '$2y$10$ZbDv06AdXqHia5dSPKbg..Wyk8AUAxPR6Tzk802DL0O91Hq/aplBG', 'Bang Rehan', NULL, 'member'),
(8, 'amel', '$2y$10$7RtBA.swf2y3afDa1bLmGuCzymiDjd2wUvPTWh7k5qucBD4zIMuI2', 'Bang Hari', NULL, 'member'),
(9, 'Amlan', '$2y$10$U.cqQw0tdRHDUbO91lwKeuoK6YDMqrnX99Y/6IgrDTYi0jKHpUYda', 'Amel Anzani', NULL, 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
