-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2022 at 12:08 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbm_assesment`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_11_03_145042_create_orders', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1c60ea7f922e26d8b8c5c0b078b5fe188d0c6305702d90a86d806d6a4719ebbdad390e8d02cd5121', 1, 1, 'MyApp', '[]', 0, '2022-11-05 05:57:10', '2022-11-05 05:57:10', '2023-11-05 11:57:10'),
('50cb1793dd63a3d0f19eb4e4295b6fb051ee55a82eb61e2b68ac7956bb4c321fa1a3f1b417588ccd', 1, 1, 'MyApp', '[]', 0, '2022-11-05 05:51:16', '2022-11-05 05:51:16', '2023-11-05 11:51:16'),
('97cf900a794d9e368678d58d9be715f3ac32a6ba40b4c30bfcdd7866a2434e59a52f180a3d80dfe5', 1, 1, 'MyApp', '[]', 0, '2022-11-05 05:56:18', '2022-11-05 05:56:18', '2023-11-05 11:56:18'),
('9c3c50111d530a948baafa75f0905fa7774fa92e02a077b2b91bde7fb3f88d6202c22a02f773b5a2', 1, 1, 'MyApp', '[]', 0, '2022-11-05 05:51:34', '2022-11-05 05:51:34', '2023-11-05 11:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'fTKM9lSothHRLAkpqGFhSJ7Ch1jHR5Cql9gfHrmf', NULL, 'http://localhost', 1, 0, 0, '2022-11-05 05:51:05', '2022-11-05 05:51:05'),
(2, NULL, 'Laravel Password Grant Client', 'yLZSv92t1GEc4PK53JjxtqdMZ8YCqjBXscQi3At1', 'users', 'http://localhost', 0, 1, 0, '2022-11-05 05:51:05', '2022-11-05 05:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-05 05:51:05', '2022-11-05 05:51:05');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status` enum('PAID','PENDING','EXPIRED','FULFILLED','REFUND') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_street`, `customer_city`, `customer_state`, `customer_zipcode`, `customer_country`, `product_name`, `product_details`, `amount`, `payment_status`, `payment_url`, `status`, `created_at`, `updated_at`) VALUES
(1, '644157650', 'Ena Heaney', 'jacey.kiehn@example.com', '1-202-753-9905', '609', 'North Dinobury', 'Dahak', '86212-4589', 'BGD', 'Mrs. Emily Hyatt', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(2, '95', 'Mina Crist II', 'bonnie.walsh@example.com', '720-239-5197', '609', 'West Herminiomouth', 'Dahak', '79974-5926', 'BGD', 'Lew Weimann', 'Test', '9.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(3, '30255', 'Mrs. Christa Crona I', 'cartwright.rusty@example.net', '773-573-5685', '609', 'Pinkieland', 'Dahak', '63301-6112', 'BGD', 'Jonatan Rice', 'Test', '7.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(4, '51', 'Prof. Eldon Dicki PhD', 'zhaley@example.com', '+1-918-529-5520', '609', 'Valliefurt', 'Dahak', '61821', 'BGD', 'Cade Casper', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(5, '182074', 'Jalen Lind', 'ppacocha@example.com', '747.530.4899', '609', 'Sanfordchester', 'Dahak', '95267', 'BGD', 'Wilford Turner II', 'Test', '6.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(6, '6904', 'Nikita Borer', 'wellington12@example.org', '+1-641-283-7856', '609', 'Faytown', 'Dahak', '89843-4536', 'BGD', 'Reynold Waelchi', 'Test', '4.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(7, '1', 'Larissa Cassin', 'thea61@example.net', '(872) 414-9793', '609', 'Amieville', 'Dahak', '20382', 'BGD', 'Icie Prohaska', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(8, '482752', 'Molly Bashirian', 'rmccullough@example.org', '(225) 884-8418', '609', 'Nienowborough', 'Dahak', '15754-8828', 'BGD', 'Ms. Marilyne Turner', 'Test', '5.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(9, '75564', 'Novella Tremblay', 'murl06@example.com', '+1-949-461-4250', '609', 'Lake Keshawn', 'Dahak', '34721', 'BGD', 'Treva Rodriguez MD', 'Test', '1.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(10, '730994', 'Ollie Kirlin', 'lilian.daniel@example.com', '216-299-6601', '609', 'Hueltown', 'Dahak', '04085', 'BGD', 'Rhea Anderson', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(11, '26496055', 'Nellie Stoltenberg', 'archibald.windler@example.com', '352-328-9897', '609', 'North Margot', 'Dahak', '11594', 'BGD', 'Patrick Crist', 'Test', '3.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(12, '18106', 'Ryann Parisian', 'kevin14@example.net', '(430) 304-4924', '609', 'Cornellburgh', 'Dahak', '37380', 'BGD', 'Margarette Oberbrunner', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(13, '9067606', 'Ima Volkman DDS', 'giles33@example.net', '+17275169873', '609', 'Kshlerinshire', 'Dahak', '35825-5881', 'BGD', 'Prof. Sammy Hintz PhD', 'Test', '1.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(14, '71', 'Rafaela Simonis', 'msimonis@example.com', '1-828-895-3420', '609', 'East Lunamouth', 'Dahak', '92600-2944', 'BGD', 'Shanny Ortiz', 'Test', '3.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(15, '477431', 'Prof. Jordy Keeling', 'pete00@example.net', '+1-770-250-3788', '609', 'Nolanside', 'Dahak', '39209', 'BGD', 'Rafael Hilpert', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(16, '2142343', 'Mr. Alan Treutel III', 'gutkowski.lysanne@example.net', '(352) 999-1060', '609', 'Port Velvaton', 'Dahak', '12195', 'BGD', 'Prof. Jameson Hills PhD', 'Test', '4.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(17, '768315980', 'Octavia Erdman', 'okon.emmett@example.org', '1-629-213-0422', '609', 'Eldridgeland', 'Dahak', '68743-8350', 'BGD', 'Jermaine Roberts', 'Test', '3.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(18, '82778687', 'Kari Bahringer II', 'howell.jesse@example.org', '+1-559-244-8504', '609', 'Port Anahi', 'Dahak', '93764-3673', 'BGD', 'Miss Romaine Schmitt PhD', 'Test', '0.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(19, '1285154', 'Brooks Rath', 'price.berniece@example.net', '1-504-983-1775', '609', 'Christiansenhaven', 'Dahak', '32518', 'BGD', 'Veda Daugherty', 'Test', '2.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(20, '509', 'Mrs. Emmalee Hammes', 'mack23@example.com', '1-320-720-4674', '609', 'Mayrachester', 'Dahak', '88298-5609', 'BGD', 'Leonel Walker', 'Test', '6.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(21, '641059151', 'Mr. Vincenzo Wuckert', 'osatterfield@example.net', '(458) 302-0363', '609', 'North Retta', 'Dahak', '39347-3804', 'BGD', 'Magnolia Olson', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(22, '822', 'Mrs. Ebony Howell', 'zswaniawski@example.com', '+1-660-514-5354', '609', 'Zemlakton', 'Dahak', '00454-2232', 'BGD', 'Dolly Jaskolski', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(23, '325', 'Kenton Considine', 'taylor21@example.org', '(361) 566-7850', '609', 'Eldoraland', 'Dahak', '33972', 'BGD', 'Mr. Oswaldo Hill', 'Test', '3.00', 'PENDING', '', 0, '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(24, '75303619', 'Jason Abernathy', 'thompson.alisha@example.com', '+1-640-889-6612', '609', 'West Rahsaanmouth', 'Dahak', '18493-7604', 'BGD', 'Dr. Arlene Lehner', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(25, '8023', 'Prof. Rod Becker DVM', 'connor71@example.net', '650-747-0804', '609', 'New Lura', 'Dahak', '38239', 'BGD', 'Rodrigo Reichel', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(26, '182655', 'Prof. Alene Casper', 'ilene.mills@example.org', '(662) 786-4376', '609', 'Boyleborough', 'Dahak', '63871-6248', 'BGD', 'Dr. Helmer Pagac DVM', 'Test', '4.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(27, '2517052', 'Bailey Christiansen', 'esteban60@example.org', '1-539-613-1439', '609', 'Port Estellamouth', 'Dahak', '58575-9349', 'BGD', 'Connor Cummings', 'Test', '3.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(28, '952021', 'Deanna Lakin IV', 'kade.vandervort@example.net', '412-859-8072', '609', 'Lake Mireyamouth', 'Dahak', '54950', 'BGD', 'Shane Hickle', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(29, '6213', 'Cassie Gorczany', 'brent89@example.org', '+16783326654', '609', 'Lake Muhammad', 'Dahak', '12626-8836', 'BGD', 'Kristina Grimes', 'Test', '2.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(30, '519', 'Justus Lind V', 'marilou84@example.org', '445.507.2344', '609', 'South Gustaveton', 'Dahak', '95634-1034', 'BGD', 'Dr. Kyleigh Miller II', 'Test', '1.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(31, '332283', 'Lucinda Smitham', 'ykovacek@example.net', '+1-217-405-2977', '609', 'Danmouth', 'Dahak', '57792', 'BGD', 'Sarah Jacobs IV', 'Test', '0.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(32, '6770535', 'Estella Bartell', 'baylee79@example.com', '1-725-820-4743', '609', 'Koeppbury', 'Dahak', '14234-7118', 'BGD', 'Dr. Marcel Kautzer Sr.', 'Test', '4.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(33, '198763', 'Johnnie Harris', 'quinten.leuschke@example.com', '+1-424-425-0503', '609', 'East Maevechester', 'Dahak', '79298-3011', 'BGD', 'Rhea Trantow', 'Test', '6.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(34, '66369', 'Adonis Balistreri', 'hegmann.arlene@example.net', '804.644.1881', '609', 'Wilfridfurt', 'Dahak', '68070-7025', 'BGD', 'Joelle Paucek', 'Test', '7.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(35, '989', 'Evie Cummings', 'zskiles@example.com', '+1.989.204.7333', '609', 'Kunzestad', 'Dahak', '34301-9483', 'BGD', 'Aliza Franecki Sr.', 'Test', '0.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(36, '87858', 'Mr. Alex Quitzon II', 'hhermiston@example.org', '1-520-350-0450', '609', 'Alberthashire', 'Dahak', '75820', 'BGD', 'Mrs. Rafaela Watsica', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(37, '283', 'Jerel Glover', 'vallie.kirlin@example.net', '+1.440.555.9961', '609', 'New Berenice', 'Dahak', '10578', 'BGD', 'Kole Bins', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(38, '30274', 'Marge Ullrich', 'sgorczany@example.net', '1-310-621-8436', '609', 'West Luciennebury', 'Dahak', '12999', 'BGD', 'Oscar Terry', 'Test', '3.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(39, '92', 'Jimmy Jerde', 'jairo45@example.net', '470-345-4677', '609', 'Carleeport', 'Dahak', '93206-3809', 'BGD', 'Dr. Rickey Oberbrunner', 'Test', '4.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(40, '53', 'Ines Koelpin', 'wstamm@example.com', '(347) 357-7859', '609', 'Myrahaven', 'Dahak', '45228', 'BGD', 'Prof. Gerson Grady', 'Test', '0.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(41, '357262', 'Benton Dooley III', 'victor09@example.net', '+1 (628) 223-1505', '609', 'Leannonburgh', 'Dahak', '15202-8904', 'BGD', 'Rogelio Hoppe', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(42, '164', 'Domenic Mante', 'xsanford@example.org', '930-415-4375', '609', 'Botsfordton', 'Dahak', '89293', 'BGD', 'Sydni Collier', 'Test', '9.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(43, '830', 'Fernando Paucek', 'chasity.weimann@example.com', '+1-704-942-2083', '609', 'Tessstad', 'Dahak', '70480', 'BGD', 'Josue Dooley', 'Test', '7.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(44, '1046', 'Prof. Brenda Pouros I', 'schmeler.colleen@example.com', '(747) 877-5403', '609', 'Port Fannie', 'Dahak', '08075', 'BGD', 'Dr. Amelie Mitchell II', 'Test', '0.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(45, '64', 'Mrs. Zena Mosciski', 'ybrakus@example.net', '(716) 862-1681', '609', 'Leopoldport', 'Dahak', '46576-1060', 'BGD', 'Leone Wintheiser', 'Test', '3.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(46, '86630', 'Mr. Rashad Oberbrunner III', 'erin14@example.com', '+1-435-784-2293', '609', 'Jacobsonton', 'Dahak', '38740', 'BGD', 'Mateo Gottlieb I', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(47, '6448', 'Leone Johnson', 'rbatz@example.org', '+1.229.541.0341', '609', 'Port Deon', 'Dahak', '37062', 'BGD', 'Maryam Anderson', 'Test', '8.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(48, '346819612', 'Laurine Jacobi', 'jan.schamberger@example.com', '+1.445.249.0765', '609', 'Kubland', 'Dahak', '96238-2955', 'BGD', 'Enos Rice', 'Test', '6.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(49, '5450331', 'Willis Kiehn', 'kovacek.norene@example.com', '+16786609012', '609', 'Roelfurt', 'Dahak', '78192-8687', 'BGD', 'Aryanna Romaguera', 'Test', '6.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(50, '0', 'Dr. Carmine Torphy', 'miller.jovani@example.net', '320-992-3608', '609', 'Port Isabellahaven', 'Dahak', '56340-4753', 'BGD', 'Clint Rippin', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(51, '8', 'Sheldon Schuppe', 'vgreenholt@example.com', '+1-267-349-8747', '609', 'Pabloville', 'Dahak', '82220', 'BGD', 'Jana Jaskolski II', 'Test', '1.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(52, '45796', 'Leora Dare', 'jamarcus.emard@example.net', '+19475197476', '609', 'New Donnell', 'Dahak', '87303-6808', 'BGD', 'Seamus Flatley', 'Test', '0.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(53, '203476437', 'Gregoria Cummings', 'kuhn.jennifer@example.net', '1-531-485-2627', '609', 'Schultzport', 'Dahak', '81029-2879', 'BGD', 'Adolph Gusikowski', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(54, '7', 'Mr. Christian Erdman', 'jbrekke@example.org', '+1 (954) 672-1306', '609', 'Adelamouth', 'Dahak', '14382', 'BGD', 'Roma Carroll', 'Test', '8.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(55, '99932', 'Providenci Swift', 'noel.cruickshank@example.net', '517.488.2814', '609', 'Cristmouth', 'Dahak', '83009', 'BGD', 'Edyth D\'Amore', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(56, '26096261', 'Angelica Ward', 'ddicki@example.org', '(859) 243-6876', '609', 'Zemlakfort', 'Dahak', '86607', 'BGD', 'Mr. Oscar Metz', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(57, '5921', 'Mike Mitchell', 'nader.helena@example.com', '(309) 872-8097', '609', 'Dickimouth', 'Dahak', '42784-1999', 'BGD', 'Prof. Isaiah Crona', 'Test', '9.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(58, '7670968', 'Calista Trantow', 'angelo66@example.net', '+1.937.864.1901', '609', 'East Khalil', 'Dahak', '54378-2205', 'BGD', 'Mr. Uriah Willms', 'Test', '3.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(59, '3760', 'Zechariah Dickinson Sr.', 'pagac.joshua@example.com', '620-629-0693', '609', 'Raoulfort', 'Dahak', '74001', 'BGD', 'Joan McDermott', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(60, '820655', 'Carol Murray III', 'macejkovic.ernesto@example.com', '1-562-505-8430', '609', 'North Novellatown', 'Dahak', '57509', 'BGD', 'Dr. Hoyt Beier', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(61, '3', 'Matteo Satterfield', 'gay92@example.net', '(440) 724-3350', '609', 'Alejandrastad', 'Dahak', '41456', 'BGD', 'Dayna Rau', 'Test', '0.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(62, '249', 'Bernita Rohan', 'yrogahn@example.org', '+18204534235', '609', 'Starkstad', 'Dahak', '88484', 'BGD', 'Tremayne Volkman', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(63, '17436208', 'Mackenzie Vandervort', 'armstrong.cassandra@example.net', '+1-989-908-1105', '609', 'Willmouth', 'Dahak', '60995-9701', 'BGD', 'Francesco Osinski', 'Test', '2.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(64, '732012024', 'Dana Ruecker MD', 'runolfsdottir.julian@example.com', '610.568.2382', '609', 'Alantown', 'Dahak', '18273-8498', 'BGD', 'Jayme Tromp', 'Test', '8.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(65, '54666699', 'Mr. Ryley Schiller', 'grady.weimann@example.net', '(908) 614-5976', '609', 'South Rowland', 'Dahak', '82630', 'BGD', 'Dr. Johann Bernier Sr.', 'Test', '3.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(66, '64991', 'Vesta Thompson', 'nelson33@example.org', '+1.279.712.0587', '609', 'Marielleburgh', 'Dahak', '88635', 'BGD', 'Dr. Dario Monahan', 'Test', '9.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(67, '26', 'Elody Stamm', 'bruce49@example.com', '469-352-2601', '609', 'New Tyrelberg', 'Dahak', '57780-7987', 'BGD', 'Anjali Leannon', 'Test', '0.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(68, '393756116', 'Ricardo Sauer MD', 'kuhlman.trystan@example.org', '+12705137825', '609', 'Aurelieville', 'Dahak', '40208', 'BGD', 'Arvilla DuBuque', 'Test', '5.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(69, '23796', 'Dr. Vicente Fadel MD', 'ctowne@example.org', '951-489-5375', '609', 'Ervinbury', 'Dahak', '49444-1832', 'BGD', 'Vivianne Lang', 'Test', '3.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(70, '391790812', 'Dr. Roberto Jakubowski', 'mcglynn.shakira@example.org', '+1-585-633-5126', '609', 'Port Caleighton', 'Dahak', '27263', 'BGD', 'Dr. Aric Sanford', 'Test', '6.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(71, '7535189', 'Lupe Kuphal', 'qnikolaus@example.net', '(706) 828-1888', '609', 'West Erik', 'Dahak', '93277', 'BGD', 'Prof. Aric Mertz V', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(72, '9095734', 'Mrs. Karolann Gibson', 'jacklyn.stiedemann@example.net', '505.513.6142', '609', 'Morissettestad', 'Dahak', '17249-6317', 'BGD', 'Santiago Keeling PhD', 'Test', '2.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(73, '30575', 'Mr. Charley Braun', 'jack33@example.com', '308-638-5819', '609', 'Larsonview', 'Dahak', '60413', 'BGD', 'Gwen Kunze', 'Test', '2.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(74, '582170', 'Mrs. Lilian Champlin III', 'mercedes.cronin@example.org', '1-508-424-3547', '609', 'South Fernefort', 'Dahak', '17815-5235', 'BGD', 'Prof. Leonardo Kutch Sr.', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(75, '66', 'Prof. Kristoffer Gerlach DVM', 'llehner@example.com', '1-475-407-6080', '609', 'Clairburgh', 'Dahak', '73323', 'BGD', 'Cali Prohaska', 'Test', '8.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(76, '9', 'Blake Welch', 'geo.konopelski@example.org', '+1.914.741.4751', '609', 'West Randimouth', 'Dahak', '34641', 'BGD', 'Kaylee Larkin', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(77, '5170731', 'Ollie Armstrong', 'tyrique.stracke@example.net', '786.781.7113', '609', 'West Emma', 'Dahak', '87921-2309', 'BGD', 'Prof. Enos Douglas', 'Test', '4.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(78, '30', 'Dr. Edmund Runolfsson IV', 'berenice10@example.org', '(469) 907-3137', '609', 'South Vidal', 'Dahak', '92933-2999', 'BGD', 'Dr. Holden Hessel IV', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(79, '527076', 'Katherine Mohr', 'clay85@example.net', '870-312-9643', '609', 'Veronafurt', 'Dahak', '15026', 'BGD', 'Bettie Johnson Sr.', 'Test', '4.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(80, '3428950', 'Ora Mante', 'zreichert@example.com', '+1.660.412.1367', '609', 'Keenanborough', 'Dahak', '23737', 'BGD', 'Bessie Waelchi', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(81, '5326', 'Mrs. Madilyn Paucek PhD', 'gerlach.anahi@example.org', '+1-772-286-4605', '609', 'North Braulioton', 'Dahak', '90485-6293', 'BGD', 'Mrs. Sharon Olson', 'Test', '5.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(82, '69329', 'Ms. Maye Corkery', 'bode.keven@example.org', '+17573372828', '609', 'Abbigailberg', 'Dahak', '21331', 'BGD', 'Krystal Hane', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(83, '534', 'Ines Legros', 'heather38@example.org', '813.804.3086', '609', 'New Jailynfurt', 'Dahak', '98824-6222', 'BGD', 'Sabina Morar', 'Test', '0.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(84, '94738', 'Beulah Renner', 'lpagac@example.net', '1-614-848-5732', '609', 'Port Harry', 'Dahak', '99742', 'BGD', 'Jacinthe Skiles', 'Test', '2.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(85, '44705', 'Karianne Veum', 'dorothea40@example.org', '+1 (843) 987-4583', '609', 'Herthamouth', 'Dahak', '57570-0027', 'BGD', 'Destiney Hartmann', 'Test', '4.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(86, '761702613', 'Florencio Farrell', 'emarvin@example.org', '351.589.9654', '609', 'Port Marinaton', 'Dahak', '38301-9223', 'BGD', 'Lamar Langosh', 'Test', '1.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(87, '948949', 'Deion Mosciski', 'dominic83@example.com', '908-729-3681', '609', 'Port Isidroburgh', 'Dahak', '27950', 'BGD', 'Dr. Elenor Breitenberg I', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(88, '171604986', 'Carmen Abernathy', 'collier.sydney@example.org', '224-352-7406', '609', 'Port Isabellaport', 'Dahak', '72639', 'BGD', 'Mr. Isadore Kutch', 'Test', '4.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(89, '337', 'Angela Rowe', 'gutkowski.fanny@example.com', '+14849766239', '609', 'Carolport', 'Dahak', '75949-6749', 'BGD', 'Dovie Waters MD', 'Test', '5.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(90, '8', 'Dr. Devonte Wuckert', 'slesch@example.net', '401-866-0727', '609', 'Lakinmouth', 'Dahak', '93237', 'BGD', 'Mariana Feest', 'Test', '9.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(91, '38404974', 'Mr. Keyshawn Langworth', 'myles.carroll@example.com', '231.331.6308', '609', 'Cathrynborough', 'Dahak', '56776', 'BGD', 'Dr. Priscilla Nienow', 'Test', '1.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(92, '43311822', 'Dr. Otilia Flatley Sr.', 'hegmann.reilly@example.net', '1-678-793-2452', '609', 'East Lavadabury', 'Dahak', '53458', 'BGD', 'Claud Hammes', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(93, '7191', 'Ellie Spinka', 'kautzer.ervin@example.com', '+1.469.771.3392', '609', 'Aronmouth', 'Dahak', '98663-0149', 'BGD', 'Miss Lucie Runolfsdottir V', 'Test', '2.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(94, '105072', 'Frederique Stark MD', 'roberta12@example.org', '443-576-4066', '609', 'Dietrichburgh', 'Dahak', '59497', 'BGD', 'Harrison Cruickshank', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(95, '1601112', 'Prof. Royal Medhurst', 'nbarton@example.org', '254-865-2254', '609', 'Beattytown', 'Dahak', '26316-8990', 'BGD', 'Dr. Casandra Rippin MD', 'Test', '8.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(96, '2', 'Asa Veum', 'cornell.moore@example.org', '1-405-866-4140', '609', 'North Ariannaberg', 'Dahak', '73929', 'BGD', 'Durward Spencer Jr.', 'Test', '8.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(97, '2', 'Katelynn Walker PhD', 'ojohnston@example.com', '+1-929-203-9109', '609', 'Susanamouth', 'Dahak', '82264-9583', 'BGD', 'Dr. Raul Stokes', 'Test', '9.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(98, '42', 'Arch Robel', 'whammes@example.net', '(283) 207-3315', '609', 'Port Cedricktown', 'Dahak', '95701-3887', 'BGD', 'Ms. Yvonne Schumm Jr.', 'Test', '5.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(99, '5', 'Audie Littel', 'isabella14@example.net', '(906) 354-3542', '609', 'Hammesmouth', 'Dahak', '37928-9639', 'BGD', 'Laurie Marks', 'Test', '1.00', 'PENDING', '', 0, '2022-11-05 05:46:03', '2022-11-05 05:46:03'),
(100, '18', 'Allen Moen', 'cbeier@example.com', '325.853.3227', '609', 'Wilfredoview', 'Dahak', '89016', 'BGD', 'Burley Haag IV', 'Test', '7.00', 'PENDING', '', 1, '2022-11-05 05:46:03', '2022-11-05 05:46:03');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Emmet Steuber', 'nadia93@example.net', '2022-11-05 05:40:02', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'mNYkjEP4Fz', '2022-11-05 05:40:02', '2022-11-05 05:40:02'),
(2, 'Morton Beer', 'sbergstrom@example.net', '2022-11-05 05:40:02', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'BhGogEqJBN', '2022-11-05 05:40:02', '2022-11-05 05:40:02'),
(3, 'Lucie Trantow III', 'frami.destany@example.org', '2022-11-05 05:40:38', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'L9GggJySeY', '2022-11-05 05:40:38', '2022-11-05 05:40:38'),
(4, 'Idella Feil', 'grayce.lubowitz@example.net', '2022-11-05 05:40:38', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'OHPs51rekU', '2022-11-05 05:40:38', '2022-11-05 05:40:38'),
(5, 'Prof. Eve Kub', 'golda.swaniawski@example.org', '2022-11-05 05:43:54', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'HK5mWXCfDn', '2022-11-05 05:43:54', '2022-11-05 05:43:54'),
(6, 'Eunice Schoen', 'pfannerstill.pasquale@example.com', '2022-11-05 05:43:54', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'BvmyRNZUe4', '2022-11-05 05:43:54', '2022-11-05 05:43:54'),
(7, 'Yasmeen Ortiz', 'awilderman@example.net', '2022-11-05 05:44:29', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'JjHRYv0ltO', '2022-11-05 05:44:29', '2022-11-05 05:44:29'),
(8, 'Jeffry Senger', 'sophia58@example.net', '2022-11-05 05:44:29', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', '08fM6lNhb3', '2022-11-05 05:44:29', '2022-11-05 05:44:29'),
(9, 'Mr. Timothy Ratke', 'fhettinger@example.net', '2022-11-05 05:45:18', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'nWl2gaGU7l', '2022-11-05 05:45:18', '2022-11-05 05:45:18'),
(10, 'Dane Franecki', 'antonina73@example.org', '2022-11-05 05:45:18', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'rBygNBTyru', '2022-11-05 05:45:18', '2022-11-05 05:45:18'),
(11, 'Tyrese Leannon', 'marina.yundt@example.net', '2022-11-05 05:45:40', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', '1Xj6GwhF9N', '2022-11-05 05:45:40', '2022-11-05 05:45:40'),
(12, 'Astrid Lind', 'sim06@example.org', '2022-11-05 05:45:40', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'NtEwTsQ5p8', '2022-11-05 05:45:40', '2022-11-05 05:45:40'),
(13, 'Corrine Rempel', 'wanderson@example.net', '2022-11-05 05:46:02', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'nHlBOcceIS', '2022-11-05 05:46:02', '2022-11-05 05:46:02'),
(14, 'Britney Kihn', 'jbeahan@example.net', '2022-11-05 05:46:02', '$2y$10$kRy5jrRkcUmDGsxlGBcfKObrv0bjoWP9kbF2Ji4FRq9Tzp8sfT3zm', 'bid4JRM7d1', '2022-11-05 05:46:02', '2022-11-05 05:46:02');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
