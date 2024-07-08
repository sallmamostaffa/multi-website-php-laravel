-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 07:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multisite`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `isRead` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `email`, `subject`, `message`, `isRead`, `created_at`, `updated_at`) VALUES
(6, 'Rana', 'rana@gmail.com', 'Course', 'When does the course begin?', 1, '2024-02-03 22:31:57', '2024-02-03 22:32:21'),
(8, 'Mostafa', 'mostafa@gmail.com', 'Welcome', 'hiii', 1, '2024-02-07 15:09:09', '2024-02-07 15:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loginName` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `token` varchar(555) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `loginName`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$N3phEbOEKfRCTKfEf2yAhOjLfpkWxlyToNh2bLIzuG5KHu0xpGOwu', '$2y$12$pV6IHFCG0K6NSnypL6Vx8.BgeGpMM5vbCIHRFVjZVhI4muWkmv5rq', '2024-02-05 21:39:33', '2024-02-07 14:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `mainbanners`
--

CREATE TABLE `mainbanners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `description_fr` varchar(255) NOT NULL,
  `description_ar` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text NOT NULL DEFAULT 'z'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mainbanners`
--

INSERT INTO `mainbanners` (`id`, `title_en`, `title_fr`, `title_ar`, `description_en`, `description_fr`, `description_ar`, `photo`, `price`, `created_at`, `updated_at`, `link`) VALUES
(1, 't en 01', 't fr 01', 't ar 01', 'd en 01', 'd fr 01', 'd ar 01', '1706969925bg1.jpg', 0.00, '2024-02-03 11:18:45', '2024-02-03 11:18:45', 'z'),
(3, 't en 02', 't fr 02', 't ar 02', 'd en 02', 'd fr 02', 'd ar 02', '1706970081bg2.jpg', 0.00, '2024-02-03 11:21:21', '2024-02-03 11:21:21', 'z'),
(9, 't en 03', 't fr 03', 't ar 03', 'd en 03', 'd fr 03', 'd ar 03', '17073302561707330160cta2-bg.jpg', 0.00, '2024-02-05 16:37:23', '2024-02-07 15:24:16', 'z');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_03_125507_create_mainbanners_table', 1),
(6, '2024_02_03_130352_add_link_banner', 2),
(7, '2024_02_03_232124_create_contact_forms_table', 3),
(8, '2024_02_05_110142_create_categories_table', 4),
(9, '2024_02_05_110519_create_projecs_table', 5),
(10, '2024_02_05_110854_create_catproj_table', 6),
(11, '2024_02_05_213505_create_logins_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workcategories`
--

CREATE TABLE `workcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workcategories`
--

INSERT INTO `workcategories` (`id`, `categoryName`, `created_at`, `updated_at`) VALUES
(1, 'creative', NULL, NULL),
(2, 'corporate', NULL, NULL),
(3, 'portfolio', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workcatproj`
--

CREATE TABLE `workcatproj` (
  `catId` int(11) NOT NULL,
  `projId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workcatproj`
--

INSERT INTO `workcatproj` (`catId`, `projId`) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 7),
(2, 2),
(2, 4),
(2, 6),
(2, 8),
(3, 2),
(3, 5),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `workprojects`
--

CREATE TABLE `workprojects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workprojects`
--

INSERT INTO `workprojects` (`id`, `title`, `description`, `photo`) VALUES
(1, 'Portfolio item 1', 'Lorem Ipsum Dolor Sit', '01.jpg'),
(2, 'Portfolio item 2', 'Lorem Ipsum Dolor Sit', '02.jpg'),
(3, 'Portfolio item 3', 'Lorem Ipsum Dolor Sit', '03.jpg'),
(4, 'Portfolio item 4', 'Lorem Ipsum Dolor Sit', '04.jpg'),
(5, 'Portfolio item 5', 'Lorem Ipsum Dolor Sit', '05.jpg'),
(6, 'Portfolio item 6', 'Lorem Ipsum Dolor Sit', '06.jpg'),
(7, 'Portfolio item 7', 'Lorem Ipsum Dolor Sit', '07.jpg'),
(8, 'Portfolio item 8', 'Lorem Ipsum Dolor Sit', '08.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainbanners`
--
ALTER TABLE `mainbanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workcategories`
--
ALTER TABLE `workcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workprojects`
--
ALTER TABLE `workprojects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainbanners`
--
ALTER TABLE `mainbanners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workcategories`
--
ALTER TABLE `workcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `workprojects`
--
ALTER TABLE `workprojects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
