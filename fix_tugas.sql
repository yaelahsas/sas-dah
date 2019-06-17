-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 08:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fix_tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_12_042142_create_roles_table', 1),
(4, '2019_05_12_142034_add_photo_id_to_user', 1),
(5, '2019_05_12_150407_create_photos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, '1557717530sas.jpg', '2019-05-12 20:18:50', '2019-05-12 20:18:50'),
(2, '1557717801tra.jpg', '2019-05-12 20:23:21', '2019-05-12 20:23:21'),
(3, '1557717988sas.jpg', '2019-05-12 20:26:28', '2019-05-12 20:26:28'),
(4, '1557719535sas.jpg', '2019-05-12 20:52:15', '2019-05-12 20:52:15'),
(5, '1557719612tra.jpg', '2019-05-12 20:53:32', '2019-05-12 20:53:32'),
(6, '1557720202sas.jpg', '2019-05-12 21:03:22', '2019-05-12 21:03:22'),
(7, '20190513043552sas.jpg', '2019-05-12 21:35:52', '2019-05-12 21:35:52'),
(8, '20190513044328FB_IMG_14956384806452422.jpg', '2019-05-12 21:43:28', '2019-05-12 21:43:28'),
(9, '20190517142113l copy copy.png', '2019-05-17 07:21:13', '2019-05-17 07:21:13'),
(10, '20190517l copy.jpg', '2019-05-17 08:57:03', '2019-05-17 08:57:03'),
(11, '201905175055-200.png', '2019-05-17 09:07:26', '2019-05-17 09:07:26'),
(12, '201905180936055055-200.png', '2019-05-18 02:36:05', '2019-05-18 02:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL),
(2, 'author', NULL, NULL),
(3, 'subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(9, 3, 1, 'Ini sound', 'gjfcvsdfgsdfsdfgjf@ujyfifg.k', NULL, '$2y$10$A7fLzct1hgfeA5Vc8KIdJ.gZyh2Q.iHvyJ8QqXrkO0da.K62W3jre', NULL, '2019-05-12 21:35:53', '2019-05-18 02:39:34', '11'),
(10, 1, 1, 'Dhimas Panji Sastra', 'asfdh@aspkd.jhf', NULL, '$2y$10$37drfyNptQ4orHwUpsKzAeMgMzOCp2WcZ93gXYkYV9hNeiOqCCleq', NULL, '2019-05-12 21:43:28', '2019-05-12 21:43:28', '8'),
(11, 2, 0, 'kek sas', 'tumbaslig001@gmail.com', NULL, '$2y$10$4unXt1Ki5vZNcWX7CFfrY.zMFayWYb66w09keSiQRazuSXWhw2j2q', NULL, '2019-05-17 07:21:14', '2019-05-17 07:21:14', '9'),
(12, 3, 1, 'Edita baru dan FOto', 'tumbsalig001@gmail.com', NULL, '$2y$10$j3UreaGhmvpxVmLOASmGu.l4VZ7oUZx/1p3HhsdWNmCJt8o39EmCO', NULL, '2019-05-17 08:09:10', '2019-05-18 02:40:30', '10'),
(13, 1, 1, 'asdsadasdsadsadsad', 'tumbsadaslig001@gmail.com', NULL, '$2y$10$RPUqSjINyTN3SAKw.9OZQOh4atpEM63px3Tu0lTafciGy/OtXTmBu', NULL, '2019-05-18 02:36:07', '2019-05-18 02:36:07', '12'),
(15, 1, 1, 'asd', 'Sasstra@ganteng.loh', NULL, '$2y$10$3FiVO0givi0yxOS.Dxs/s.p.DXbVCbGuL7wjJAE00xj2hyVNT8MaK', NULL, '2019-05-18 21:08:52', '2019-05-18 21:08:52', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
