-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2025 at 05:20 AM
-- Server version: 10.11.10-MariaDB-cll-lve
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpqjhlgm_`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'piyush@gmail.com', '$2y$12$Q2JA7j.BmGlfPG07yt6xPuuHC.HTdTXlRY.UJesHtl2XkVpl1rUdO', NULL, NULL, 0, '2025-03-21 11:17:27', '2025-03-21 08:37:46', '2025-03-21 11:17:27'),
(5, 1, 'access_token', '123Piy26Adake', '6e2daff8ed93ee4e5d1e75b0250b998818e1e800161a631e80e8d2078a048dd7', NULL, NULL, 'a:1:{i:0;s:1:\"*\";}', 0, '2025-03-21 10:50:29', '2025-03-21 10:50:12', '2025-03-21 10:50:29'),
(6, 1, 'access_token', '123Piy26Adake', '4ddfb99edc41f7d6b8823419c1bfbd0c856a1300ad3da31bede0cef6573ddd1b', NULL, NULL, 'a:1:{i:0;s:1:\"*\";}', 0, '2025-03-21 11:17:55', '2025-03-21 11:17:27', '2025-03-21 11:17:55'),
(7, 2, 'email_password', NULL, 'Shree@gmail.com', '$2y$12$p4UyYp/kBs3Qs2sqSWijM.Oku5ntLgRBqcmbHsRWCvjC6k/QTBVh2', NULL, NULL, 0, NULL, '2025-03-24 05:43:35', '2025-03-24 05:43:35'),
(10, 4, 'email_password', NULL, 'Swagger@gmail.com', '$2y$12$kctz2G4u5Mpb1RYhon.NKu0FE50MWU6CToH2vYJTULihID.nyttxW', NULL, NULL, 0, '2025-03-24 09:23:44', '2025-03-24 09:23:08', '2025-03-24 09:23:44'),
(21, 20, 'email_password', NULL, 'Sam@gmail.com', '$2y$12$Jj3GSbho1iM8DMchB6/rtOX9DLhjk1PfOHpjk6xw8sM8ugSpImXH2', NULL, NULL, 0, '2025-04-03 07:51:24', '2025-04-03 07:50:48', '2025-04-03 07:51:24'),
(22, 20, 'access_token', '123Piy26Adake', '47e16bee75000962e3fd99e0275acae211e47536f773f5d1f033e2dec9b7ca3b', NULL, NULL, 'a:1:{i:0;s:1:\"*\";}', 0, '2025-04-03 09:52:21', '2025-04-03 07:51:24', '2025-04-03 09:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'PostmanRuntime/7.43.2', 'email_password', 'piyush@gmail.com', 1, '2025-03-21 09:32:58', 1),
(2, '::1', 'PostmanRuntime/7.43.2', 'email_password', 'piyush@gmail.com', 1, '2025-03-21 10:41:39', 1),
(3, '::1', 'PostmanRuntime/7.43.2', 'email_password', 'piyush@gmail.com', 1, '2025-03-21 10:50:12', 1),
(4, '::1', 'PostmanRuntime/7.43.2', 'email_password', 'piyush@gmail.com', 1, '2025-03-21 11:17:27', 1),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Swagger@gmail.com', 3, '2025-03-24 06:43:59', 1),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-03-24 09:19:00', 0),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-03-24 09:19:57', 0),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-03-24 09:20:17', 0),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-03-24 09:21:11', 0),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-03-24 09:22:21', 0),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Swagger@gmail.com', 4, '2025-03-24 09:23:44', 1),
(12, '2401:4900:57a0:74d0:1196:b933:7a7:bc66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'email_password', 'Host@gmail.com', 5, '2025-03-30 20:11:17', 1),
(13, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-03-30 20:33:06', 0),
(14, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'email_password', 'Host@gmail.com', 5, '2025-03-30 20:33:39', 1),
(15, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-02 06:50:33', 0),
(16, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-02 06:59:03', 0),
(17, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-02 07:03:10', 0),
(18, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-02 07:22:34', 0),
(19, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-02 07:22:52', 0),
(20, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'ss@gmail.com', 9, '2025-04-02 07:26:21', 1),
(21, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'ss@gmail.com', 9, '2025-04-02 07:41:19', 1),
(22, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-03 07:47:29', 0),
(23, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Piyush@gmail.com', NULL, '2025-04-03 07:47:59', 0),
(24, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Cors@gmail.com', NULL, '2025-04-03 07:48:14', 0),
(25, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Test@gmail.com', NULL, '2025-04-03 07:49:01', 0),
(26, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'email_password', 'Sam@gmail.com', 20, '2025-04-03 07:51:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_token_logins`
--

INSERT INTO `auth_token_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:16:25', 0),
(2, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:16:26', 0),
(3, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:16:26', 0),
(4, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:24:20', 0),
(5, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:24:20', 0),
(6, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:24:20', 0),
(7, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 10:24:34', 0),
(8, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 10:24:34', 0),
(9, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 10:24:34', 0),
(10, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 10:24:37', 0),
(11, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 10:24:37', 0),
(12, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 10:24:37', 0),
(13, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:41:44', 0),
(14, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:41:44', 0),
(15, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:41:44', 0),
(16, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer project_description0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:10', 0),
(17, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer project_description0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:10', 0),
(18, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer project_description0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:10', 0),
(19, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:30', 0),
(20, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:30', 0),
(21, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:30', 0),
(22, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:36', 0),
(23, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:36', 0),
(24, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 0fe0d8a8b597944b591f54224f9c65b37d40cd67ad599ad005b3761e8d6edbf8', NULL, '2025-03-21 10:43:36', 0),
(25, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:49:46', 0),
(26, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:49:46', 0),
(27, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 10:49:46', 0),
(28, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 11:17:12', 0),
(29, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 11:17:12', 0),
(30, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer acd7a1c8ebca75f7d50ff624b30807f075cc233ab285eb259731030913aa7463', NULL, '2025-03-21 11:17:12', 0),
(31, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 11:17:50', 0),
(32, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 11:17:50', 0),
(33, '::1', 'PostmanRuntime/7.43.2', 'access_token', '', NULL, '2025-03-21 11:17:50', 0),
(34, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 4818f2bf6faaabd0838c62d70cb4400daf4aaffc04424000b14aa2e6ef880ea272c', NULL, '2025-03-21 11:18:06', 0),
(35, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 4818f2bf6faaabd0838c62d70cb4400daf4aaffc04424000b14aa2e6ef880ea272c', NULL, '2025-03-21 11:18:06', 0),
(36, '::1', 'PostmanRuntime/7.43.2', 'access_token', 'Bearer 4818f2bf6faaabd0838c62d70cb4400daf4aaffc04424000b14aa2e6ef880ea272c', NULL, '2025-03-21 11:18:06', 0),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-24 06:44:21', 0),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-24 06:44:21', 0),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-24 06:44:21', 0),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', 'Bearer b495d9e27da22b70a00a3d87560051a3bdc4f5dee1784477fcfca06525a64f6d', NULL, '2025-03-24 06:45:36', 0),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', 'Bearer b495d9e27da22b70a00a3d87560051a3bdc4f5dee1784477fcfca06525a64f6d', NULL, '2025-03-24 06:45:36', 0),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', 'Bearer b495d9e27da22b70a00a3d87560051a3bdc4f5dee1784477fcfca06525a64f6d', NULL, '2025-03-24 06:45:36', 0),
(43, '2401:4900:57a0:74d0:1196:b933:7a7:bc66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:11:38', 0),
(44, '2401:4900:57a0:74d0:1196:b933:7a7:bc66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:11:38', 0),
(45, '2401:4900:57a0:74d0:1196:b933:7a7:bc66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:11:38', 0),
(46, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:33:56', 0),
(47, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:33:56', 0),
(48, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:33:56', 0),
(49, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-30 20:35:32', 0),
(50, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-30 20:35:32', 0),
(51, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-30 20:35:32', 0),
(52, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-30 20:36:41', 0),
(53, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-30 20:36:41', 0),
(54, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-30 20:36:41', 0),
(55, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:08', 0),
(56, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:09', 0),
(57, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:09', 0),
(58, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:10', 0),
(59, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:11', 0),
(60, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:11', 0),
(61, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:16', 0),
(62, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:16', 0),
(63, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:16', 0),
(64, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:26', 0),
(65, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:26', 0),
(66, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:26', 0),
(67, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:26', 0),
(68, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:26', 0),
(69, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:26', 0),
(70, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:27', 0),
(71, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:27', 0),
(72, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:27', 0),
(73, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:27', 0),
(74, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:28', 0),
(75, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:28', 0),
(76, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:28', 0),
(77, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:28', 0),
(78, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:28', 0),
(79, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:33', 0),
(80, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:34', 0),
(81, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:34', 0),
(82, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:34', 0),
(83, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:34', 0),
(84, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:34', 0),
(85, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:35', 0),
(86, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:35', 0),
(87, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:35', 0),
(88, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:36', 0),
(89, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:36', 0),
(90, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:36', 0),
(91, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:36', 0),
(92, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:36', 0),
(93, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:36', 0),
(94, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:37', 0),
(95, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:37', 0),
(96, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:37', 0),
(97, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:38', 0),
(98, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:38', 0),
(99, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:38', 0),
(100, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:38', 0),
(101, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:39', 0),
(102, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:39', 0),
(103, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:43', 0),
(104, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:43', 0),
(105, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:37:43', 0),
(106, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'WhatsApp/2.23.20.0', 'access_token', '', NULL, '2025-03-30 20:38:02', 0),
(107, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'WhatsApp/2.23.20.0', 'access_token', '', NULL, '2025-03-30 20:38:02', 0),
(108, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'WhatsApp/2.23.20.0', 'access_token', '', NULL, '2025-03-30 20:38:02', 0),
(109, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:38:13', 0),
(110, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:38:13', 0),
(111, '2401:4900:57a0:74d0:9305:5c2f:e19e:96c7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:38:13', 0),
(112, '2402:3a80:18ce:3419:6867:78ff:fe4d:5e17', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:38:25', 0),
(113, '2402:3a80:18ce:3419:6867:78ff:fe4d:5e17', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:38:25', 0),
(114, '2402:3a80:18ce:3419:6867:78ff:fe4d:5e17', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:38:25', 0),
(115, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:49:46', 0),
(116, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:49:46', 0),
(117, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:49:46', 0),
(118, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:49:48', 0),
(119, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:49:48', 0),
(120, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:49:48', 0),
(121, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:50:08', 0),
(122, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:50:08', 0),
(123, '64.227.21.251', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'access_token', '', NULL, '2025-03-30 20:50:08', 0),
(124, '64.227.21.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 05:13:35', 0),
(125, '64.227.21.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 05:13:35', 0),
(126, '64.227.21.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 05:13:35', 0),
(127, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:12:15', 0),
(128, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:12:15', 0),
(129, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:12:15', 0),
(130, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:12:26', 0),
(131, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:12:26', 0),
(132, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:12:26', 0),
(133, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:48:55', 0),
(134, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:48:55', 0),
(135, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:48:55', 0),
(136, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:49:11', 0),
(137, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:49:11', 0),
(138, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:49:11', 0),
(139, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:50:43', 0),
(140, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:50:43', 0),
(141, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:50:43', 0),
(142, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:52:35', 0),
(143, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:52:35', 0),
(144, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:52:35', 0),
(145, '64.227.21.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:54:09', 0),
(146, '64.227.21.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:54:09', 0),
(147, '64.227.21.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 08:54:09', 0),
(148, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-31 09:18:08', 0),
(149, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-31 09:18:08', 0),
(150, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-03-31 09:18:08', 0),
(151, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 09:18:48', 0),
(152, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 09:18:48', 0),
(153, '103.226.170.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'access_token', '', NULL, '2025-03-31 09:18:48', 0),
(154, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-04-02 09:57:40', 0),
(155, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-04-02 09:57:41', 0),
(156, '2a06:98c0:3600::103', '', 'access_token', '', NULL, '2025-04-02 09:57:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1742455773, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1742455773, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1742455773, 1),
(4, '2025-03-20-084419', 'App\\Database\\Migrations\\CustomcolmMigration', 'default', 'App', 1742460624, 2),
(5, '2025-03-20-085124', 'App\\Database\\Migrations\\ProjecttableMigration', 'default', 'App', 1742461902, 3);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `Project_buget` varchar(100) NOT NULL,
  `project_description` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `project_name`, `Project_buget`, `project_description`, `created_at`) VALUES
(1, 1, 'API', '5000', 'Apiproject in postman', '2025-03-21 16:12:44'),
(2, 4, 'Project A', '10000', 'Description of Project A', '2025-03-24 14:54:40'),
(3, 5, 'Host Project', '5001', 'Description of Host Project', '2025-03-30 20:14:59'),
(4, 9, 'Project B', '80', 'Description of B', '2025-04-02 07:27:10'),
(5, 9, 'Cors Project', '9900', 'Cors Project', '2025-04-02 07:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `ph_no` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`, `gender`, `ph_no`) VALUES
(1, 'Piyush', NULL, NULL, 0, NULL, '2025-03-21 08:37:45', '2025-03-21 08:37:45', NULL, 'male', '7038001196'),
(2, 'Shree', NULL, NULL, 0, NULL, '2025-03-24 05:43:34', '2025-03-24 05:43:34', NULL, 'male', '0989876767'),
(4, 'Swagger', NULL, NULL, 0, NULL, '2025-03-24 09:23:08', '2025-03-24 09:23:08', NULL, 'male', '7038001197'),
(20, 'Sam', NULL, NULL, 0, NULL, '2025-04-03 07:50:46', '2025-04-03 07:50:46', NULL, 'male', '0038001198');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
