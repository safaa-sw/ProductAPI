-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2022 at 08:31 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_03_01_085855_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('51ac6ecc6e4802b18cc9cd2278f53c20e870759cf70a9b86d089ce2bccf0cef41ecf51b936b1dccf', 1, 1, 'safaa', '[]', 0, '2022-03-02 06:18:00', '2022-03-02 06:18:00', '2023-03-02 08:18:00'),
('9f7392187df5e0bc0bab966daa2a4121ecd54647e75b018c5bb3d965c307e03ada39f22991e616ca', 2, 1, 'safaa', '[]', 0, '2022-03-02 06:22:03', '2022-03-02 06:22:03', '2023-03-02 08:22:03'),
('d7e37245c038686e639b700fffa782af7db7997c320ffa972e47bb8fbd78d662a38c15dfa397d829', 3, 1, 'safaa', '[]', 0, '2022-03-02 06:23:10', '2022-03-02 06:23:10', '2023-03-02 08:23:10'),
('57144067f1ceb34271fd2a0d3300ae1433d2958e1126889fc6f9538a628d964eae2b82a5194dbd48', 4, 1, 'safaa', '[]', 0, '2022-03-02 06:32:26', '2022-03-02 06:32:26', '2023-03-02 08:32:26'),
('a750b80a825da4391f49aa63546a0d07e3a2b18dfc626ff8f6274e9ac857511de8547836a40b1e3c', 5, 1, 'safaa', '[]', 0, '2022-03-02 06:36:13', '2022-03-02 06:36:13', '2023-03-02 08:36:13'),
('42157a9b4a3dd7df7764ad5822a82935a301ab55496e9d0b97a8e44ad420e8af3d5a7891965e41a3', 4, 1, 'safaa', '[]', 0, '2022-03-02 07:22:05', '2022-03-02 07:22:05', '2023-03-02 09:22:05'),
('222c3161c79765315870e7d18e3c332e21850d33b2186d6b581d0ebb371c4900686a150fa0ffbab3', 5, 1, 'safaa', '[]', 0, '2022-03-02 07:28:34', '2022-03-02 07:28:34', '2023-03-02 09:28:34'),
('4a86f0ad7d9337ce6ea5257f226a7637411510675288f132a306b70739776f4e89df72df9fdc121f', 6, 1, 'safaa', '[]', 0, '2022-03-02 08:26:47', '2022-03-02 08:26:47', '2023-03-02 10:26:47'),
('ce77a4190c150f46001b02c230d5b3a09ca72464aed13f773233fa77ec06a8420f3051f8ea79556e', 6, 1, 'safaa', '[]', 0, '2022-03-02 08:28:33', '2022-03-02 08:28:33', '2023-03-02 10:28:33'),
('43eadb35b5e8ba777ce72e0c3f4be4f4d9e5e34869d3328ac0e1a59b4e51b162274ab290d1ff95d8', 6, 1, 'safaa', '[]', 0, '2022-03-02 08:50:13', '2022-03-02 08:50:13', '2023-03-02 10:50:13'),
('389c69426303e44dd7733f45bcb853f71a9810ba2b520ad38763e976dcaad039056625014b727c63', 6, 1, 'safaa', '[]', 0, '2022-03-02 09:15:38', '2022-03-02 09:15:38', '2023-03-02 11:15:38'),
('53f4fd5ea9c286376d5cce990051b8f705ebafe2312a51fedb327b4b1283b10d2ca65d61a2441c25', 7, 1, 'safaa', '[]', 0, '2022-03-02 09:35:10', '2022-03-02 09:35:10', '2023-03-02 11:35:10'),
('51e3383284fb2cf6dd201384b4d8070c32cdcde6b1a7e5e3cbaab351b41a110b26b59703f31701c4', 7, 1, 'safaa', '[]', 0, '2022-03-02 09:36:04', '2022-03-02 09:36:04', '2023-03-02 11:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'gnKYQqcmJxNFhRjk5Gf9eXjFuU1i8TMCKsWTCt6d', NULL, 'http://localhost', 1, 0, 0, '2022-03-01 06:40:03', '2022-03-01 06:40:03'),
(2, NULL, 'Laravel Password Grant Client', '2R0fuZSpjR0ytXU7cx5L9oPC3vT8ubenpZyRQOCY', 'users', 'http://localhost', 0, 1, 0, '2022-03-01 06:40:03', '2022-03-01 06:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-01 06:40:03', '2022-03-01 06:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `created_at`, `updated_at`) VALUES
(1, 'printer', 'printer description', 3500, '2022-03-02 09:42:55', '2022-03-02 09:42:55'),
(2, 'fax', 'fax just update description', 5050, '2022-03-02 09:44:17', '2022-03-02 09:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'amal', 'amal@test.com', NULL, '$2y$10$fMkvZLOQDUrs22vU0TeZtefiGstVK/ac/hSATFBeolrwMCM1J9xhO', NULL, '2022-03-02 09:35:10', '2022-03-02 09:35:10'),
(6, 'safaa', 'safaa@test.com', NULL, '$2y$10$IURAUmslZMRwu1hAIgax9uoNMOanfRW8S6u4X.E/l.G7tf4p4DimO', NULL, '2022-03-02 08:26:46', '2022-03-02 08:26:46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
