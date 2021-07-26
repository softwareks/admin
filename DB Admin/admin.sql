-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 12:17 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('161e5fac5aca22f794ae9a8dfaffd788252a037ce5c8abc0aeade1bd829a2953f5a41f5d89e561b0', 6, 1, 'Password Grant to User Through Provider', '[]', 1, '2021-07-19 03:10:46', '2021-07-19 03:10:46', '2022-07-19 08:10:46'),
('1bd57ca73c2303f288ba99fea2e4b18b3b5eb1362f5fac26f8433552a4890b0b2f3a78df4d52315f', 13, 1, 'Password Grant to User Through Provider', '[]', 0, '2021-07-19 03:06:01', '2021-07-19 03:06:01', '2022-07-19 08:06:01'),
('225948f4a72ad9e5ab9955fd4f4c934ba777be09cf9c06a74eb8f5f1daaaf48f0b2dc9cc0ccea080', 3, 1, 'Laravel Password Grant Client', '[]', 1, '2021-07-16 06:54:28', '2021-07-16 06:54:28', '2022-07-16 11:54:28'),
('3546b9459fe2f6b4c5535391a89c5abb458769b4a359a9b97f32308b9ff97d6bde77cc93f29c0abe', 2, 1, 'Laravel Password Grant Client', '[]', 1, '2021-07-16 06:42:58', '2021-07-16 06:42:58', '2022-07-16 11:42:58'),
('4bd27f09e62ca29f11a606b7e736862d2f234add3899f47abaa2517997e182057d4cfc244092ceaa', 2, 1, 'Password Grant to User', '[]', 1, '2021-07-16 06:56:31', '2021-07-16 06:56:31', '2022-07-16 11:56:31'),
('96a398dc708d8bba48a4dc84d0b8988845dfa7abbd43f631f4113dfc6821aac9fea052db0646df7b', 13, 1, 'Password Grant to User Through Provider', '[]', 1, '2021-07-19 03:05:45', '2021-07-19 03:05:45', '2022-07-19 08:05:45'),
('aadc220fb730b304ed7fc04ccb7acc001681dcc70b96f8dd0e79607087372fa8de7cea527f0601be', 13, 1, 'Password Grant to User Through Provider', '[]', 1, '2021-07-19 03:04:31', '2021-07-19 03:04:31', '2022-07-19 08:04:31'),
('c3aba372644c236e88d10cd0428f1a08596f97e52959c0bb97c6036bb6c7629c94484699f4f067d3', 13, 1, 'Password Grant to User Through Provider', '[]', 1, '2021-07-19 03:04:54', '2021-07-19 03:04:54', '2022-07-19 08:04:54'),
('cbeec26ad196a75fc0a73dcf5ec89b343444abcbc63c42d55258354900a4b8847c33aca5533a95e7', 14, 1, 'Password Grant to User Through Provider', '[]', 1, '2021-07-19 03:06:42', '2021-07-19 03:06:42', '2022-07-19 08:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '3JmXnmtoScQPiJ5RARZrPrFqaU3gFpK9WOf87TRq', NULL, 'http://localhost', 1, 0, 0, '2021-07-16 06:02:51', '2021-07-16 06:02:51'),
(2, NULL, 'Laravel Password Grant Client', 'sLkb8eMp6PJw462MAOw1wBmnnpDAiLqvBYtjlBYc', 'users', 'http://localhost', 0, 1, 0, '2021-07-16 06:02:51', '2021-07-16 06:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-16 06:02:51', '2021-07-16 06:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'signup',
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_number`, `role`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'ks@softwarealliance.dk', NULL, 'admin', 'signup', NULL, '2021-07-16 07:16:37', '$2y$12$psElM.hjPFDBPvdSegzMk.dIU9g/ReyCvfh4dNoKGiftwhghtoCcS', NULL, '2021-07-16 07:17:38', '2021-07-16 07:17:43'),
(2, 'kaleem', 'kaleem@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$BLTyxxPRJB6GYJ86OdIJQeTDOLPUx7Qos.V2Q4IGnqRFegYysmVnS', NULL, '2021-07-16 06:37:35', '2021-07-16 06:37:35'),
(3, 'zain', 'zain@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$IUhKWzwWge4jz9Icb9Lpz.m0EV66fy3xZvm/J/W907NxAQds7nYqS', NULL, '2021-07-16 06:53:29', '2021-07-16 06:53:29'),
(4, 'waqaar', 'waqaar@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$zazHrz7uT2MUE8hV.7ozgeBVtpHz1pdsWSo4E8Kd0FT/4t8kV4dSa', NULL, '2021-07-16 07:51:58', '2021-07-16 07:51:58'),
(5, 'mueed', 'mueed@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$Q2F4QOrgiYNsCGr2iMXxSuOygTNlwMrx5Bsu9qtr5fp/q..tg3EkS', NULL, '2021-07-16 07:52:20', '2021-07-16 07:52:20'),
(6, 'test', 'test@gmail.com', NULL, 'user', 'signup', '345345342', NULL, '$2y$10$vRia8Ip1JEKUfxICTsRbc.01N1EBmUP2cnb0u5HzaCkltx3r2JncC', NULL, '2021-07-16 07:52:46', '2021-07-19 03:10:46'),
(7, 'haider', 'haider@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$DQDjkphHu01ZLvK4Woi6oeOAJcGX5VWcqZy29FyCodLgO850EqeV2', NULL, '2021-07-16 07:53:05', '2021-07-16 07:53:05'),
(8, 'waleed', 'waleed@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$ttww4lut.UlfT9q99oiaiO6.xF9TP9NnPqW.MYbDf1HKQTN3OaTra', NULL, '2021-07-16 07:53:13', '2021-07-16 07:53:13'),
(9, 'ali', 'ali@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$iseR47w205nbUJKfD2/dGOTW6McAn/MhwdfsR4ytqVOCRAnT9KWl.', NULL, '2021-07-16 07:53:36', '2021-07-16 07:53:36'),
(10, 'alaa', 'alaa@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$M5bLiGMHtkpsvrf0FP65Ru9IyavLwsBPanjC9WtU7Pa43OISh6iaS', NULL, '2021-07-16 07:53:47', '2021-07-16 07:53:47'),
(11, 'aslam', 'aslam@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$F2zv0sblVbr1gAtYTSSE4eE2yzOtQJDidS3mQ2qYgSOyhcpJoP/H.', NULL, '2021-07-16 07:53:57', '2021-07-16 07:53:57'),
(12, 'usman', 'usman@gmail.com', NULL, 'user', 'signup', NULL, NULL, '$2y$10$MaloEpkoP3.TSD9gFM.sKO.23pMg9Js0vFDIYzrTKme1JOV5QU.Q.', NULL, '2021-07-16 07:54:11', '2021-07-16 07:54:11'),
(13, 'facebook', 'facebook@gmail.com', NULL, 'user', 'facebook', '5746357836', NULL, NULL, NULL, '2021-07-19 02:57:58', '2021-07-19 02:57:58'),
(14, 'apple', 'apple@gmail.com', NULL, 'user', 'apple', '17463578236', NULL, NULL, NULL, '2021-07-19 03:06:42', '2021-07-19 03:06:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
