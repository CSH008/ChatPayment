-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2019 at 06:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyer`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatting`
--

CREATE TABLE `chatting` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` blob NOT NULL,
  `writer` enum('client','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_state` enum('new','old') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL DEFAULT '0.00',
  `paid_state` enum('unpaid','paid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_old_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatting`
--

INSERT INTO `chatting` (`id`, `userid`, `message`, `writer`, `read_state`, `cost`, `paid_state`, `file`, `file_old_name`, `created_at`, `updated_at`) VALUES
(10, '123', 0x48656c6c6f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-17 08:39:58', '2019-07-17 08:40:16'),
(24, '123', 0x66736466647366647366, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-18 16:38:13', '2019-07-29 08:39:27'),
(25, '123', 0x666473666473667364666466, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-18 16:38:19', '2019-07-29 08:39:27'),
(32, '123', 0x676466676466676667, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-19 00:53:41', '2019-07-29 08:39:27'),
(51, '123', 0x64646464, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-21 22:05:38', '2019-07-29 08:39:27'),
(52, '123', 0x313233, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-21 22:06:41', '2019-07-29 08:39:27'),
(53, '123', 0x313233, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-21 22:07:30', '2019-07-29 08:39:27'),
(54, 'Benjin21', 0x667364666466, 'admin', 'new', 0.00, 'unpaid', NULL, NULL, '2019-07-29 01:56:49', '2019-07-29 01:56:49'),
(55, '123', 0x616161, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 07:52:44', '2019-07-29 08:39:27'),
(56, '123', 0x737373, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 07:58:32', '2019-07-29 08:39:27'),
(57, '123', 0x6e6e6e, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 07:58:37', '2019-07-29 08:39:27'),
(58, '123', 0x7974727974, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:02:33', '2019-07-29 08:39:27'),
(59, 'Benjin21', 0x74657274657274, 'admin', 'new', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:11:26', '2019-07-29 08:11:26'),
(60, 'Benjin21', 0x74657274657274, 'admin', 'new', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:11:28', '2019-07-29 08:11:28'),
(61, 'Benjin21', 0x747265747265747274, 'admin', 'new', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:11:30', '2019-07-29 08:11:30'),
(62, 'Benjin21', 0x7472657465727472, 'admin', 'new', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:11:32', '2019-07-29 08:11:32'),
(63, 'Benjin21', 0x74726574726574, 'admin', 'new', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:11:34', '2019-07-29 08:11:34'),
(64, '15555215554', 0x48656c6c6f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:32:17', '2019-07-29 08:32:25'),
(65, '15555215554', 0x576861742061726520796f7520646f696e67206e6f773f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:32:36', '2019-07-29 08:32:40'),
(66, '15555215554', 0x333333333333333333333333, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:50:20', '2019-07-29 08:50:21'),
(67, '15555215554', 0x476f6f64, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 08:50:39', '2019-07-30 01:10:27'),
(68, '15555215554', 0x48692054686572653f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 13:21:38', '2019-07-29 13:22:04'),
(69, '15555215554', 0x414141, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 13:35:56', '2019-07-29 13:35:56'),
(70, '15555215554', 0x424242, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 13:36:55', '2019-07-29 13:36:55'),
(71, '15555215554', 0x707070, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 14:01:35', '2019-07-30 01:10:27'),
(72, '15555215554', 0x717171, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 14:02:19', '2019-07-30 01:10:27'),
(73, '15555215554', 0x54686572653f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 14:08:14', '2019-07-29 14:08:15'),
(74, '15555215554', 0x616161, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 10:00:50', '2019-07-30 01:10:27'),
(75, '15555215554', 0x626262, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 10:02:02', '2019-07-30 01:10:27'),
(76, '15555215554', 0x636363, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:02:15', '2019-07-30 01:10:27'),
(77, '15555215554', 0x626262, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:03:27', '2019-07-30 01:10:27'),
(78, '15555215554', 0x48656c6c6f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:14:37', '2019-07-29 17:14:38'),
(79, '15555215554', 0x4f6b6f6b, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:32:51', '2019-07-29 17:32:51'),
(80, '15555215554', 0x476f6f64, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:45:23', '2019-07-29 17:45:23'),
(81, '15555215554', 0x484848, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:50:57', '2019-07-29 17:50:57'),
(82, '15555215554', 0x51515151, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:51:00', '2019-07-29 17:51:00'),
(83, '15555215554', 0x4f4b4f4b, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:51:12', '2019-07-30 01:10:27'),
(84, '15555215554', 0x486f772061726520796f753f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:56:48', '2019-07-29 17:56:49'),
(85, '15555215554', 0x576861742061726520796f7520646f696e67206e6f773f3f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:57:01', '2019-07-29 17:57:01'),
(86, '15555215554', 0x416c6c20697320676f6f643f, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:57:06', '2019-07-29 17:57:06'),
(87, '15555215554', 0x4f6b2c20646f6e277420776f727279, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 17:57:14', '2019-07-30 01:10:27'),
(88, '15555215554', 0x49206e656564206d6f6e6579, 'admin', 'old', 2.50, 'unpaid', NULL, NULL, '2019-07-29 18:14:19', '2019-07-30 01:10:27'),
(89, '15555215554', 0x6465766963652d323031382d30312d31302d3135313731372e706e67, 'admin', 'old', 10.00, 'unpaid', '1564453265.png', 'device-2018-01-10-151717.png', '2019-07-29 18:21:05', '2019-07-30 01:10:27'),
(90, '15555215554', 0x6f6b6f6b6f6b, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-29 23:35:37', '2019-07-29 23:35:37'),
(91, '15555215554', 0x48656c6c6f2054686572653f, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-30 00:17:33', '2019-07-30 01:10:27'),
(92, '15555215554', 0x49742773206d652e2068686868, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-30 00:23:22', '2019-07-30 01:10:27'),
(93, '15555215554', 0x515151, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-30 00:50:31', '2019-07-30 01:10:27'),
(94, '15555215554', 0x717171, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-30 00:54:47', '2019-07-30 01:10:27'),
(95, '15555215554', 0x4f4b, 'admin', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-30 01:07:16', '2019-07-30 01:10:27'),
(96, '15555215554', 0x476f6f64, 'client', 'old', 0.00, 'unpaid', NULL, NULL, '2019-07-30 01:07:23', '2019-07-30 01:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `chatting_members`
--

CREATE TABLE `chatting_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_state` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatting_members`
--

INSERT INTO `chatting_members` (`id`, `name`, `userid`, `login_state`, `created_at`, `updated_at`) VALUES
(1, 'Benjin', 'Benjin21', 0, '2019-06-24 20:56:50', '2019-06-24 20:56:50'),
(5, 'Dolka', 'dk0202', 0, '2019-06-26 15:09:27', '2019-06-26 15:09:27'),
(7, 'Harison', 'hrs0101', 0, '2019-07-17 01:56:22', '2019-07-17 01:56:22'),
(9, 'John', '123', 0, '2019-07-19 00:37:43', '2019-07-19 00:37:43'),
(11, 'Suju', '15555215554', 0, '2019-07-25 12:31:49', '2019-07-25 12:31:49'),
(12, 'John', '1234', 0, '2019-07-29 08:16:37', '2019-07-29 08:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `userid`, `phone`, `address`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Benjin', 'Benjin21', '12345333', 'Street 9', '1', NULL, NULL, '2019-06-26 15:09:19'),
(2, 'Dolka', 'dk0202', '88098e4302q8', 'Street 6', '1', NULL, '2019-06-25 13:22:24', '2019-06-26 15:09:27'),
(3, 'Harison', 'hrs0101', '8509234850', 'Riverdale 93', '1', NULL, '2019-06-26 15:15:11', '2019-07-17 01:56:22'),
(4, 'John', '123', '123', 'Riverdale 98', '1', NULL, '2019-07-17 08:39:38', '2019-07-19 00:37:43'),
(5, 'suju', '15555215554', '15555215554', 'suju address', '1', NULL, '2019-07-25 02:56:51', '2019-07-25 12:53:31'),
(6, 'John', '1234', '1234', 'Riverdale 98', '1', NULL, '2019-07-29 08:16:37', '2019-07-29 08:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `info_content`
--

CREATE TABLE `info_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_menu`
--

CREATE TABLE `info_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_leaf` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_menu`
--

INSERT INTO `info_menu` (`id`, `menu`, `content`, `is_leaf`, `created_at`, `updated_at`) VALUES
(9, 'Menu', '1563381209.html', 1, '2019-07-17 08:33:29', '2019-07-17 08:33:29'),
(10, 'Menu1', NULL, 0, '2019-07-17 08:33:34', '2019-07-17 08:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `info_submenu`
--

CREATE TABLE `info_submenu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `submenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_submenu`
--

INSERT INTO `info_submenu` (`id`, `menu_id`, `submenu`, `content`, `created_at`, `updated_at`) VALUES
(1, 10, 'Submenu1', '1563381267.htm', '2019-07-17 08:34:27', '2019-07-17 08:34:27');

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
(1, '2014_10_12_000000_create_clients_table', 1),
(2, '2019_06_14_050214_create_sessions_table', 1),
(3, '2019_06_14_050850_create_users_table', 1),
(4, '2019_06_15_220916_create_info_menu_table', 2),
(5, '2019_06_15_220937_create_info_submenu_table', 2),
(6, '2019_06_17_040834_create_chatting_members_table', 2),
(7, '2019_06_17_040845_create_chatting_table', 2),
(8, '2019_06_19_024139_create_info_content_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `userid`, `phone`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lawyer', 'admin', '12345333', 'admin@admin.com', '$2y$10$OEidNNJxnwS4MiPh1od4/OvYOgGeXaWQw/3vdGwNwQc1YepqMYE9C', 'wCGIAW7VzpzIyjqRonUNRMyX6GLXoKBSLtmm8mV3hMpaxM7RTUatl7ywzpzi', NULL, '2019-07-17 02:03:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatting`
--
ALTER TABLE `chatting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatting_members`
--
ALTER TABLE `chatting_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_content`
--
ALTER TABLE `info_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_menu`
--
ALTER TABLE `info_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_submenu`
--
ALTER TABLE `info_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `chatting`
--
ALTER TABLE `chatting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `chatting_members`
--
ALTER TABLE `chatting_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `info_content`
--
ALTER TABLE `info_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_menu`
--
ALTER TABLE `info_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `info_submenu`
--
ALTER TABLE `info_submenu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
