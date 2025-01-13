-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 13, 2025 at 05:30 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_nuochoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(26, '20', '5', 1, '2023-12-21 09:06:28', '2023-12-21 09:06:28'),
(64, '1', '7', 1, '2024-01-06 23:49:58', '2024-01-06 23:49:58'),
(65, '30', '14', 1, '2024-12-15 12:49:36', '2024-12-15 12:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `popular` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Nước Hoa Nam', 'nuochoanam', ' Mùi hương nam tính mạnh mẽ', 0, 1, '1702113207.avif', NULL, NULL, NULL, '2023-12-09 01:38:14', '2025-01-10 01:40:23'),
(2, 'Nước Hoa Nữ', 'nuochoanu', 'Hương thơm ngọt ngào, quyến rũ', 0, 1, '1736499008.jfif', NULL, NULL, NULL, '2023-12-09 01:40:20', '2025-01-10 01:50:08'),
(3, 'Nước Hoa Xuân Hè', 'bosuutapxuanhe2024', 'Hương thơm tươi mát, năng động', 0, 1, '1703563842.jpg', NULL, NULL, NULL, '2023-12-25 21:08:38', '2025-01-10 01:42:18'),
(4, 'Nước Hoa Unisex', 'nuochoaunisex', '  Mùi hương thiên hướng nhẹ nhàng, phù hợp cho cả nam và nữ  ', 0, 1, '1703564334.png', NULL, NULL, NULL, '2023-12-25 21:14:45', '2025-01-10 01:45:37'),
(7, 'Bodycare', 'body', 'Các sản phẩm chăm sóc cơ thể', 0, 0, '1736499252.jfif', NULL, NULL, NULL, '2025-01-10 01:54:12', '2025-01-10 01:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_08_004324_create_categories_table', 1),
(6, '2024_11_08_120637_create_products_table', 1),
(7, '2024_11_18_135430_create_carts_table', 1),
(8, '2024_11_26_075256_create_orders_table', 1),
(9, '2024_11_26_075657_create_order_items_table', 1),
(10, '2024_12_01_140252_create_wishlists_table', 1),
(11, '2024_12_12_012650_create_multiple_images_table', 1),
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2019_08_19_000000_create_failed_jobs_table', 1),
(48, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(49, '2024_11_08_004324_create_categories_table', 1),
(50, '2024_11_08_120637_create_products_table', 1),
(51, '2024_11_18_135430_create_carts_table', 1),
(52, '2024_11_26_075256_create_orders_table', 1),
(53, '2024_11_26_075657_create_order_items_table', 1),
(54, '2024_12_01_140252_create_wishlists_table', 1),
(55, '2024_12_11_110305_create_multiple_image_table', 2),
(56, '2024_12_11_110513_create_multiple_image_table', 3),
(57, '2024_12_12_012650_create_multiple_images_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `multiple_images`
--

CREATE TABLE `multiple_images` (
  `id` bigint UNSIGNED NOT NULL,
  `prod_id` int NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multiple_images`
--

INSERT INTO `multiple_images` (`id`, `prod_id`, `image_path`, `created_at`, `updated_at`) VALUES
(23, 1, '1_1703321432661.png', '2023-12-23 01:50:32', '2023-12-23 01:50:32'),
(24, 1, '1_1703321432363.jpg', '2023-12-23 01:50:32', '2023-12-23 01:50:32'),
(25, 1, '1_1703321432428.png', '2023-12-23 01:50:32', '2023-12-23 01:50:32'),
(26, 1, '1_1703321432505.webp', '2023-12-23 01:50:32', '2023-12-23 01:50:32'),
(27, 3, '3_170332148321.jpg', '2023-12-23 01:51:23', '2023-12-23 01:51:23'),
(28, 3, '3_170332148367.jpg', '2023-12-23 01:51:23', '2023-12-23 01:51:23'),
(29, 3, '3_1703321483675.png', '2023-12-23 01:51:23', '2023-12-23 01:51:23'),
(30, 3, '3_1703321483775.webp', '2023-12-23 01:51:23', '2023-12-23 01:51:23'),
(34, 6, '6_1703410633711.webp', '2023-12-24 02:37:13', '2023-12-24 02:37:13'),
(35, 6, '6_1703410633833.webp', '2023-12-24 02:37:13', '2023-12-24 02:37:13'),
(36, 6, '6_1703410633569.jpg', '2023-12-24 02:37:13', '2023-12-24 02:37:13'),
(37, 6, '6_1703410633638.webp', '2023-12-24 02:37:13', '2023-12-24 02:37:13'),
(38, 10, '10_1703564917308.jpg', '2023-12-25 21:28:37', '2023-12-25 21:28:37'),
(39, 10, '10_1703564917849.jpg', '2023-12-25 21:28:37', '2023-12-25 21:28:37'),
(40, 10, '10_1703564917965.jpg', '2023-12-25 21:28:37', '2023-12-25 21:28:37'),
(41, 10, '10_1703564917106.jpg', '2023-12-25 21:28:37', '2023-12-25 21:28:37'),
(42, 11, '11_1703565378235.jpg', '2023-12-25 21:36:18', '2023-12-25 21:36:18'),
(43, 11, '11_1703565378390.jpg', '2023-12-25 21:36:18', '2023-12-25 21:36:18'),
(44, 11, '11_170356537857.jpg', '2023-12-25 21:36:18', '2023-12-25 21:36:18'),
(45, 11, '11_1703565378328.jpg', '2023-12-25 21:36:18', '2023-12-25 21:36:18'),
(46, 12, '12_1703841933607.jpg', '2023-12-29 02:25:33', '2023-12-29 02:25:33'),
(47, 12, '12_1703841933869.webp', '2023-12-29 02:25:33', '2023-12-29 02:25:33'),
(48, 12, '12_1703841933801.jpg', '2023-12-29 02:25:33', '2023-12-29 02:25:33'),
(49, 12, '12_1703841933752.webp', '2023-12-29 02:25:33', '2023-12-29 02:25:33'),
(71, 5, '5_1736455332506.jpg', '2025-01-09 13:42:12', '2025-01-09 13:42:12'),
(72, 5, '5_173645533270.jpg', '2025-01-09 13:42:12', '2025-01-09 13:42:12'),
(73, 5, '5_1736455332237.jpg', '2025-01-09 13:42:12', '2025-01-09 13:42:12'),
(74, 5, '5_1736455332635.webp', '2025-01-09 13:42:12', '2025-01-09 13:42:12'),
(79, 17, '17_1736708164771.jpg', '2025-01-12 11:56:04', '2025-01-12 11:56:04'),
(80, 17, '17_1736708164320.jpg', '2025-01-12 11:56:04', '2025-01-12 11:56:04'),
(81, 17, '17_1736708164204.jpg', '2025-01-12 11:56:04', '2025-01-12 11:56:04'),
(82, 17, '17_1736708164565.jpg', '2025-01-12 11:56:04', '2025-01-12 11:56:04'),
(83, 18, '18_1736708868534.jpg', '2025-01-12 12:07:48', '2025-01-12 12:07:48'),
(84, 18, '18_1736708868573.jpg', '2025-01-12 12:07:48', '2025-01-12 12:07:48'),
(85, 18, '18_1736708868503.jpg', '2025-01-12 12:07:48', '2025-01-12 12:07:48'),
(86, 18, '18_1736708868744.jpg', '2025-01-12 12:07:48', '2025-01-12 12:07:48'),
(87, 2, '2_173671067436.jpg', '2025-01-12 12:37:54', '2025-01-12 12:37:54'),
(88, 2, '2_1736710674411.jpg', '2025-01-12 12:37:54', '2025-01-12 12:37:54'),
(89, 2, '2_1736710674359.jpg', '2025-01-12 12:37:54', '2025-01-12 12:37:54'),
(90, 19, '19_1736712080737.jpg', '2025-01-12 13:01:20', '2025-01-12 13:01:20'),
(91, 19, '19_1736712080383.jpg', '2025-01-12 13:01:20', '2025-01-12 13:01:20'),
(92, 19, '19_1736712080973.jpg', '2025-01-12 13:01:20', '2025-01-12 13:01:20'),
(93, 20, '20_1736712372394.jpg', '2025-01-12 13:06:12', '2025-01-12 13:06:12'),
(94, 20, '20_1736712372374.jpg', '2025-01-12 13:06:12', '2025-01-12 13:06:12'),
(95, 20, '20_1736712372161.jpg', '2025-01-12 13:06:12', '2025-01-12 13:06:12'),
(96, 21, '21_173671314666.jpg', '2025-01-12 13:19:06', '2025-01-12 13:19:06'),
(97, 21, '21_1736713146917.jpg', '2025-01-12 13:19:06', '2025-01-12 13:19:06'),
(98, 21, '21_1736713146161.jpg', '2025-01-12 13:19:06', '2025-01-12 13:19:06'),
(99, 22, '22_1736713709403.jpg', '2025-01-12 13:28:29', '2025-01-12 13:28:29'),
(100, 22, '22_1736713709454.jpg', '2025-01-12 13:28:29', '2025-01-12 13:28:29'),
(101, 22, '22_1736713709543.jpg', '2025-01-12 13:28:29', '2025-01-12 13:28:29'),
(102, 23, '23_1736714323216.jpg', '2025-01-12 13:38:43', '2025-01-12 13:38:43'),
(103, 23, '23_1736714323140.jpg', '2025-01-12 13:38:43', '2025-01-12 13:38:43'),
(104, 24, '24_1736714647631.jpg', '2025-01-12 13:44:07', '2025-01-12 13:44:07'),
(105, 24, '24_1736714647123.jpg', '2025-01-12 13:44:07', '2025-01-12 13:44:07'),
(106, 24, '24_1736714647365.jpg', '2025-01-12 13:44:07', '2025-01-12 13:44:07'),
(107, 26, '26_1736715839546.jpg', '2025-01-12 14:03:59', '2025-01-12 14:03:59'),
(108, 26, '26_1736715839361.jpg', '2025-01-12 14:03:59', '2025-01-12 14:03:59'),
(109, 26, '26_1736715839646.jpg', '2025-01-12 14:03:59', '2025-01-12 14:03:59'),
(110, 26, '26_1736715839250.jpg', '2025-01-12 14:03:59', '2025-01-12 14:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(30, '1', 'Trần', 'Trần', 'user@gmail.com', '0342903416', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 4600000, 2, 'VNP', 'user8593', '2024-12-25 01:11:08', '2025-01-10 02:40:14'),
(31, '1', 'Trần', 'Trần', 'user@gmail.com', '0342903416', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2550000, 2, 'VNP', '14273251', '2024-12-25 01:41:09', '2025-01-12 08:41:18'),
(32, '1', 'Trần', 'Trần', 'user@gmail.com', '0342903416', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 199000, 2, 'COD', 'user8357', '2024-12-25 04:10:50', '2024-12-25 04:11:15'),
(33, '1', 'Trần', 'Trần', 'user@gmail.com', '0342903416', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 70000, 2, 'VNP', '14273374', '2024-12-27 04:12:14', '2024-12-28 07:37:52'),
(34, '28', 'Nguyễn', 'test', 'user3@gmail.com', '0342903414', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2290000, 3, 'VNP', '14275995', '2024-12-27 23:50:43', '2024-12-27 23:50:43'),
(37, '31', 'Duy', 'Trần Khánh', 'trankhanhduy1409@gmail.com', '0123456789', 'Đâu dó ở Trà Vinh', 'Đâu dó ở Trà Vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 1790000, 2, 'COD', 'user9282', '2025-01-08 11:34:27', '2025-01-08 11:45:11'),
(38, '29', 'Tín', 'Tín', 'hztinle1006@gmail.com', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2300000, 2, 'COD', 'user9040', '2025-01-08 12:38:09', '2025-01-09 01:05:43'),
(39, '29', 'Tín', 'Tín', 'hztinle1006@gmail.com', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2300000, 1, 'COD', 'user9077', '2025-01-09 15:25:50', '2025-01-10 02:03:29'),
(40, '29', 'Lê', 'Tín', 'hztinle1006@gmail.com', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2440000, 1, 'COD', 'user9970', '2025-01-10 02:29:34', '2025-01-10 02:35:08'),
(41, '29', 'Tín', 'Tín', 'hztinle1006@gmail.com', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 1590000, 0, 'COD', 'user8675', '2025-01-10 02:41:12', '2025-01-10 02:41:12'),
(42, '29', 'Lê', 'Tín', 'hztinle1006@gmail.com', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2300000, -1, 'COD', 'user2827', '2025-01-12 10:39:53', '2025-01-12 10:40:43'),
(43, '29', 'Tín', 'Tín', 'hztinle1006@gmail.com', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 2300000, 3, 'VNP', '14790104', '2025-01-12 11:31:27', '2025-01-12 11:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(2, '1', '2', 1, 1590000, '2023-12-10 18:16:30', '2023-12-10 18:16:30'),
(3, '2', '2', 6, 1590000, '2023-12-12 01:03:13', '2023-12-12 01:03:13'),
(4, '2', '3', 1, 1400000, '2023-12-12 01:03:13', '2023-12-12 01:03:13'),
(5, '3', '5', 4, 1980000, '2023-12-16 21:16:01', '2023-12-16 21:16:01'),
(6, '3', '7', 1, 1790000, '2023-12-16 21:16:01', '2023-12-16 21:16:01'),
(7, '4', '6', 7, 2290000, '2023-12-16 22:13:40', '2023-12-16 22:13:40'),
(8, '4', '3', 3, 1400000, '2023-12-16 22:13:40', '2023-12-16 22:13:40'),
(9, '5', '2', 1, 1590000, '2023-12-17 00:40:26', '2023-12-17 00:40:26'),
(10, '6', '2', 1, 1590000, '2023-12-17 00:48:16', '2023-12-17 00:48:16'),
(11, '7', '7', 1, 1790000, '2023-12-17 20:21:50', '2023-12-17 20:21:50'),
(12, '8', '5', 1, 1980000, '2023-12-21 09:05:46', '2023-12-21 09:05:46'),
(13, '9', '2', 1, 1590000, '2023-12-24 02:46:57', '2023-12-24 02:46:57'),
(14, '10', '5', 4, 1980000, '2023-12-27 22:42:12', '2023-12-27 22:42:12'),
(15, '11', '5', 1, 1980000, '2024-01-01 19:22:04', '2024-01-01 19:22:04'),
(16, '11', '6', 1, 2290000, '2024-01-01 19:22:04', '2024-01-01 19:22:04'),
(17, '12', '1', 1, 2300000, '2024-01-01 19:52:31', '2024-01-01 19:52:31'),
(18, '13', '1', 1, 2300000, '2024-01-01 20:03:31', '2024-01-01 20:03:31'),
(19, '14', '1', 1, 2300000, '2024-01-01 20:04:32', '2024-01-01 20:04:32'),
(20, '15', '1', 1, 2300000, '2024-01-01 21:41:01', '2024-01-01 21:41:01'),
(21, '16', '1', 1, 2300000, '2024-01-01 21:41:44', '2024-01-01 21:41:44'),
(22, '17', '1', 1, 2300000, '2024-01-04 07:59:35', '2024-01-04 07:59:35'),
(23, '18', '3', 1, 1400000, '2024-01-04 23:03:27', '2024-01-04 23:03:27'),
(24, '21', '15', 2, 420000, '2024-01-05 06:47:47', '2024-01-05 06:47:47'),
(26, '23', '12', 1, 3100000, '2024-01-05 07:08:53', '2024-01-05 07:08:53'),
(27, '24', '14', 1, 70000, '2024-01-05 07:56:27', '2024-01-05 07:56:27'),
(28, '25', '15', 2, 420000, '2024-01-05 08:09:55', '2024-01-05 08:09:55'),
(29, '26', '13', 1, 199000, '2024-01-05 08:11:21', '2024-01-05 08:11:21'),
(30, '27', '1', 1, 2300000, '2024-01-05 09:44:18', '2024-01-05 09:44:18'),
(31, '28', '1', 1, 2300000, '2024-01-05 09:44:53', '2024-01-05 09:44:53'),
(32, '29', '12', 5, 3100000, '2024-01-05 18:25:10', '2024-01-05 18:25:10'),
(33, '29', '6', 1, 2290000, '2024-01-05 18:25:10', '2024-01-05 18:25:10'),
(34, '30', '1', 2, 2300000, '2024-01-06 01:11:08', '2024-01-06 01:11:08'),
(35, '31', '11', 3, 850000, '2024-01-06 01:41:09', '2024-01-06 01:41:09'),
(36, '32', '13', 1, 199000, '2024-01-06 04:10:50', '2024-01-06 04:10:50'),
(37, '33', '14', 1, 70000, '2024-01-06 04:12:14', '2024-01-06 04:12:14'),
(38, '34', '6', 1, 2290000, '2024-01-08 23:50:43', '2024-01-08 23:50:43'),
(39, '35', '15', 1, 420000, '2025-01-08 11:24:35', '2025-01-08 11:24:35'),
(40, '36', '13', 1, 199000, '2025-01-08 11:31:16', '2025-01-08 11:31:16'),
(41, '37', '7', 1, 1790000, '2025-01-08 11:34:27', '2025-01-08 11:34:27'),
(42, '38', '1', 1, 2300000, '2025-01-08 12:38:09', '2025-01-08 12:38:09'),
(43, '39', '1', 1, 2300000, '2025-01-09 15:25:50', '2025-01-09 15:25:50'),
(44, '40', '11', 1, 850000, '2025-01-10 02:29:34', '2025-01-10 02:29:34'),
(45, '40', '2', 1, 1590000, '2025-01-10 02:29:34', '2025-01-10 02:29:34'),
(46, '41', '2', 1, 1590000, '2025-01-10 02:41:12', '2025-01-10 02:41:12'),
(47, '42', '1', 1, 2300000, '2025-01-12 10:39:53', '2025-01-12 10:39:53'),
(48, '43', '1', 1, 2300000, '2025-01-12 11:31:27', '2025-01-12 11:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hztinle1006@gmail.com', '$2y$10$gS4EYd7TNtwdzIfbej7keeeqvolPCkTpIiOeK2yFRwtfR2FU7IQfW', '2025-01-10 04:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `cate_id` bigint NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `trending` tinyint NOT NULL,
  `view_count` int DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `view_count`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gucci Pour Homme Parfum', 'gucci pour home', 'Nhãn hiệu:	Gucci <br>\r\nGiới tính:	Nam <br>\r\nXuất xứ:	Ý <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương Gỗ Cay Nồng - Woody Spicy <br>\r\nPhong cách:	Nam tính, mạnh mẽ <br>', '<p><strong>Thương Hiệu: Gucci</strong></p>\r\n\r\n<p>Nồng nàn và mạnh mẽ hệt như một cơn lốc cuốn lấy mọi thứ,&nbsp;Nước Hoa Gucci chính là từ khóa khiến cánh mày râu “đăm chiêu” dạo gần đây. Sự kết hợp giữa những nốt trẻ trung, tươi mát của nhóm cam chanh hòa quyện cùng mùi hương ngào ngạt, quyến rũ đến từ hoắc hương và tuyết tùng giúp “nhào nặn” nên tính cách độc đáo đầy mới mẻ của chai nước hoa này.</p>\r\n\r\n<p><strong>Mùi hương đặc trưng</strong></p>\r\n\r\n<p>Hương đầu:&nbsp;Cam Bergamot, Hoa violet, Cây bách</p>\r\n\r\n<p>Hương giữa:&nbsp;Cây thuốc lá, Hoa nhài, Tiêu đen</p>\r\n\r\n<p>Hương cuối:&nbsp;Hoắc hương, Hổ phách, Trầm hương, Nhựa cây Elemi, Da thuộc, Gỗ tuyết tùng</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:&nbsp;</strong><br>\r\nXịt vào quần áo (tối màu) hoặc trên cơ thể ở những nơi có mạch đập &nbsp;(khuỷnh tay, cổ tay, sau gáy, trên ngực) không chà xát sau khi xịt<br>\r\nBảo quản: Lưu giữ hộp trong suốt quá trình sử dụng, để ở những nơi có nhiệt độ từ 18 độ C đến 25 độ C, tránh thay đổi đột ngột nhiệt độ nơi bảo quản nước hoa.</p>\r\n\r\n<p>&nbsp;</p>', 0, 2300000, '1702111716.webp', 5, NULL, 0, 1, 86, NULL, NULL, NULL, '2023-12-09 01:48:36', '2025-01-12 12:33:57'),
(2, 1, 'Giorgio Armani Acqua Di Gio', 'nuochoanamarmani', 'Nhãn hiệu:	Giorgio Armani <br>\r\nGiới tính:	Nam <br>\r\nXuất xứ:	Ý <br>\r\nNồng độ:	Eau de toilette <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương Thơm biển - Aromatic Aquatic <br>\r\nPhong cách:	Tươi mát, Nam tính, Tinh tế <br>', '<p><strong>Thương hiệu:&nbsp;</strong>Giorgio Armani</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Pháp</p>\r\n\r\n<p><strong>Năm phát hành:&nbsp;</strong>2022</p>\r\n\r\n<p><strong>Nhóm hương:&nbsp;</strong>Hương Biển, Hương Khoáng Chất, Quả Quýt Xanh</p>\r\n\r\n<p><strong>Phong cách:&nbsp;</strong>Nam tính, Hiện đại, Phóng khoáng</p>\r\n\r\n<p>Hương đầu: Hương Biển, Quýt xanh<br>\r\nHương giữa: Xô thơm, Oải hương, Chi Mỏ hạc<br>\r\nHương cuối: Hương Khoáng, Cỏ Hương bài, Hoắc hương<br>\r\n<br>\r\nMang trong mình hơi thở Thuỷ sinh, Giorgio Armani Acqua di Gio Eau de Parfum là vẻ đẹp của một người đàn ông cá tính, hiện đại và có đôi phần \"ướt át\". Ra mắt từ năm 2022, ấn phẩm đươc sự đón nhận nồng nhiệt của giới mộ điệu, bởi đây không chỉ là một sự kế thừa và phát huy DNA của Acqua di Gio nguyên bản, mà còn là một phiên bản hoàn chỉnh của sự giao thoa giữa giữa bản gốc và bản Essenza.<br>\r\n<br>\r\nẤn phẩm là sự mô tả về một không gian rộng lớn và vô tận như đang đắm mình vào biển cả, không giới hạn, không chút áp lực và không có sự hạn chế. Hương thơm của Khoáng chất kết hợp cùng Quýt xanh, dịu ngọt nhưng cực tươi mát, lại càng nhấn mạnh vẻ đẹp của biển cả. Càng về sau, hương thơm càng nồng ấm, hoang dại của Xô thơm lẫn trong cái kết cấu phức tạp của Chi Mỏ hạc, tạo nên cái trầm lắng bên trong mỗi quý ông.<br>\r\n<br>\r\nĐể rồi người đàn ông ấy quyến luyến mọi cô gái bằng sự phóng khoáng, lơ đãng của mình. Thoảng hoặc theo đó chút Cỏ Hương bài, chút Hoắc hương nồng đượm hương Gỗ đặc trưng. Những nốt hương trong Giorgio Armani Acqua di Gio EDP đan xen tựa hệt cảm xúc biến chuyển của một gã trai hiện đại, và bên trong họ là những phần tâm hồn tươi tắn, phóng khoáng.</p>', 1690000, 1590000, '1702113873.jpeg', 0, NULL, 0, 1, 53, NULL, NULL, NULL, '2023-12-09 02:24:33', '2025-01-12 14:24:49'),
(3, 1, 'Nautica Voyage N-83', 'nuochoanamnautica', 'Nước Hoa Nam Nautica', '<p>Thương Hiệu: Nautica</p>', 1600000, 1400000, '1702113957.webp', 0, NULL, 0, 1, 26, NULL, NULL, NULL, '2023-12-09 02:25:57', '2025-01-12 12:39:50'),
(5, 2, 'E.Arden White Tea', 'nuochoanue.arden', 'Nhãn hiệu:	Issey Miyake <br>\r\nGiới tính:	Nam <br>\r\nXuất xứ:	Nhật Bản <br>\r\nNồng độ:	Eau de toilette <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương gỗ biển - Woody Aquatic <br>\r\nPhong cách:	Phóng khoáng, Tươi mát, Hiện đại <br>', '<p><em style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Ba mươi năm sau khi ra mắt L’Eau D’Issey Pour Homme mang tính biểu tượng,&nbsp;<span style=\"font-weight: 700;\">Issey Miyake</span>&nbsp;một lần nữa lấy cảm hứng từ một yếu tố thiết yếu của thiên nhiên: MUỐI. Cùng khám phá&nbsp;<span style=\"font-weight: 700;\">Issey Miyake Le Sel D\'issey EDT</span>&nbsp;- một sự tôn vinh cho động lực và mong muốn sống mãnh liệt.</em></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">khởi đầu&nbsp;với&nbsp;mùi gừng ấm áp báo hiệu một ngày mới tràn đầy sức sống. Những ấn tượng ban đầu này tạo nên một&nbsp;hương vị đầy&nbsp;mê hoặc. Vị mằn mặn của muối biển được khéo léo thêm thắt vào, không khiến ta phải sốc mà từ từ len lỏi vào khứu giác.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Bên dưới đợt bùng nổ đầu tiên là bản chất của mùi hương, hé lộ sự pha trộn đích thực giữa hương đất của cỏ hương bài cùng hương thơm khô, dịu nhẹ của cát. Tương tự như khi đi dạo trên bờ biển đầy nắng — mỗi bước chân đều giải phóng mùi hương của đất; làn gió mặn hòa quyện với hương thơm thú vị tỏa ra từ đôi chân của bạn.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Cuối cùng, tinh chất của nước hoa nằm trong sự sâu thẳm, bí ẩn của gỗ tuyết tùng và rêu sồi. Hương cuối đóng vai trò là nền tảng cho hương thơm, giống như rễ cây của những khu rừng cổ đại.</p><p><br></p>', 2200000, 1980000, '1702292190.jpg', 0, NULL, 0, 1, 81, NULL, NULL, NULL, '2023-12-10 01:40:44', '2025-01-12 12:48:36'),
(6, 2, 'Chloé Signature EDP XM23', 'nuochoanuchloe', 'Nhãn hiệu:	Chloe <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Pháp <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương Hoa cỏ Phương đông - Oriental Floral <br>\r\nPhong cách:	Tươi mới, Quyến rũ, Tự tin <br>', '<p class=\"color-main\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></p><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"></p><ul><li>Hương đầu: Hoa mẫu đơn, Hoa lan Nam Phi, Quả vải.</li><li>Hương giữa: Hoa hồng, Hoa linh lan thung lũng, Hoa mộc lan.</li><li>Hương cuối: Hổ phách, Gỗ tuyết tùng Virginia.</li></ul><h1 style=\"font-family: &quot;utm avo&quot;; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 1.2em; text-transform: uppercase; text-align: justify;\"><span style=\"font-weight: 700;\">1.&nbsp;NƯỚC HOA CHLOE SIGNATURE EDP 50ML&nbsp;</span></h1><p></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Chloe khơi dậy mùi hương thuần khiết trong trẻo nhưng vô cùng trầm tĩnh quyến rũ đại diện cho cá tính tự tin sáng tạo của người phụ nữ ẩn chứa tâm hồn tự do và vẻ đẹp gợi cảm sang trọng thuần túy. Đây là dòng nước hoa hết sức linh hoạt với chủ đích sản xuất cho nhu cầu sử dụng hằng ngày hơn là trở thành hương thơm mang tính đại diện cho bất kì ai.</p><h4 style=\"font-family: &quot;utm avo&quot;; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 1.2em; text-transform: uppercase; text-align: justify;\"><span style=\"font-weight: 700;\">2. NƯỚC HOA MINI&nbsp;CHLOE SIGNATURE EDP 10ML</span></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Nước hoa mini Chloe&nbsp;Signature EDP 10ml mang&nbsp;hương thơm đặc trưng với sự tươi mát và nữ tính, thể hiện tính cách tự tin, tự do và sáng tạo&nbsp;nhưng không kém phần&nbsp;sang trọng cho nàng.</p>', 2500000, 2290000, '1702197942.webp', 0, NULL, 0, 1, 73, NULL, NULL, NULL, '2023-12-10 01:45:42', '2025-01-12 15:29:02'),
(7, 2, 'Lancôme La Vie Est Belle', 'nuochoanu_lancome', 'Nhãn hiệu:	Lancôme <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Pháp <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hoa cỏ Trái cây Thực phẩm - Floral Fruity Gourmand <br>\r\nPhong cách:	Nữ tính, tươi trẻ, ngọt ngào <br>', '<p class=\"color-main\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></p><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"></p><ul><li>Hương Đầu: Quả lý chua đen, Quả lê</li><li>Hương giữa: Hoa diên vĩ, Hoa nhài, Hoa cam</li><li>Hương cuối: Hoắc hương, Đậu Tonka, Vanilla, Kẹo hạt dẻ</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\">Nước hoa&nbsp;<span style=\"font-weight: 700;\">Lancôme La Vie Est Belle EDP</span>&nbsp;khởi đầu câu chuyện với những nốt hương đầy nữ tính của quả lý chua đen cùng Quả lê, cho ta cảm giác như đang thưởng thức một ly nước ép tươi mát với hương vị thảo mộc vương vấn xung quanh. Tầng hương giữa là sự hòa trộn thú vị của Hoa diên vĩ, hoa cam và nhài. Ở nốt hương này, hoa diên vĩ đóng vai trò là “nhân vật” chủ đạo, là mùi hương chi phối và tạo cảm hứng cho tổng thể chai nước hoa. Mùi hương thảo mộc vẫn lưu lại đến tận lớp nền, cho đến khi hương Vani bắt đầu tỏa sáng cùng đậu tonka chuyển thành một mùi thơm của kẹo hạt dẻ.</p><p><br></p><p></p>', 1900000, 1790000, '1702294089.jpg', 7, NULL, 0, 1, 52, NULL, NULL, NULL, '2023-12-11 04:28:09', '2025-01-12 12:54:20'),
(10, 3, 'Dior Miss Rose', 'nuochoanudiormissrose', 'Nước Hoa Nữ Dior Miss Rose', '<p>Nước Hoa Nữ Dior Miss Rose</p>', 2900000, 2700000, '1736457894.jpg', 10, NULL, 0, 1, 18, NULL, NULL, NULL, '2023-12-25 21:28:37', '2025-01-12 14:15:35'),
(11, 4, 'Calvin Klein be', 'nuochoaunisex', 'Unisex Calvin Klein', '<p>Nước Hoa Unisex Calvin Klein</p>', 0, 850000, '1703565378.jpg', 6, NULL, 0, 1, 31, NULL, NULL, NULL, '2023-12-25 21:36:18', '2025-01-12 15:22:59'),
(12, 3, 'Chance Chanel', 'nuochoanuchanel', 'Nước Hoa Nữ Chanel', '<p>Nước Hoa Nữ Chanel</p>', 3500000, 3100000, '1703841933.webp', 3, NULL, 0, 1, 17, NULL, NULL, NULL, '2023-12-29 02:25:33', '2025-01-12 15:30:18'),
(18, 1, 'YSL Y EDP', 'yedp', 'Nhãn hiệu:	Yves Saint Laurent <br>\r\nGiới tính:	Nam <br>\r\nXuất xứ:	Pháp <br> \r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương thơm Dương xỉ - Aromatic Fougere <br>\r\nPhong cách:	Nam tính, Thu hút, Hấp dẫn <br>', '<ul class=\"border-bottom\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 15px; border-bottom-style: dashed; border-bottom-color: rgb(199, 199, 199); font-family: &quot;open sans&quot;, sans-serif;\"><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 109.078px; font-weight: 700;\"></span><span style=\"display: table-cell; width: 293.938px; padding-left: 4px;\"><ul class=\"border-bottom\" style=\"font-size: 14px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 15px; border-bottom-style: dashed; border-bottom-color: rgb(199, 199, 199);\"><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 108.969px; font-weight: 700;\">Nhãn hiệu</span>:<span style=\"font-size: 15px; display: table-cell; width: 294.047px; padding-left: 4px;\">Yves Saint Laurent</span></li><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 108.938px; font-weight: 700;\">Giới tính</span>:<span style=\"font-size: 15px; display: table-cell; width: 294.078px; padding-left: 4px;\">Nam</span></li><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 108.969px; font-weight: 700;\">Xuất xứ</span>:<span style=\"font-size: 15px; display: table-cell; width: 294.047px; padding-left: 4px;\">Pháp</span></li><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 108.969px; font-weight: 700;\">Nồng độ</span>:<span style=\"font-size: 15px; display: table-cell; width: 294.047px; padding-left: 4px;\">Eau de parfum</span></li><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 109.016px; font-weight: 700;\">Nhà pha chế</span>:<span style=\"font-size: 15px; display: table-cell; width: 294px; padding-left: 4px;\"></span></li><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 109.031px; font-weight: 700;\">Nhóm hương</span>:<span style=\"font-size: 15px; display: table-cell; width: 293.984px; padding-left: 4px;\">Hương thơm Dương xỉ - Aromatic Fougere</span></li><li style=\"margin: 0px 0px 5px; padding: 0px; list-style: none; width: 406.703px; display: table;\"><span style=\"font-size: 15px; display: table-cell; width: 109.078px; font-weight: 700;\">Phong cách</span>:<span style=\"display: table-cell; width: 293.938px; padding-left: 4px;\"><span style=\"font-size: 15px;\">Nam tính, Thu hút, Hấp dẫn</span><br></span></li></ul></span></li><li style=\"\"><span style=\"font-size: 15px;\"><p class=\"color-main\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-size: 14px;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></p><p class=\"pb-20\" style=\"padding-bottom: 20px; font-size: 14px;\">Hương đầu: Quả táo, Gừng, Cam Bergamot.<br>Hương giữa: Xô thơm, Quả bách xù, Hoa phong lữ đỏ.<br>Hương cuối: Nhựa hương, Đậu Tonka, Gỗ tuyết tùng, Cỏ hương bài, Nhựa hương Olibanum.</p></span></li></ul>', 4590000, 4361000, '1736708868.jpg', 1, NULL, 0, 0, 4, NULL, NULL, NULL, '2025-01-12 12:07:48', '2025-01-12 12:45:34'),
(19, 2, 'Marc Jacobs Perfect Elixir EDP', 'marc jacob', 'Nhãn hiệu:	Marc Jacobs <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Mỹ <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương va-ni phương đông - Oriental Vanilla <br>\r\nPhong cách:	Sang trọng, quyến rũ và hiện đại <br>', '<p class=\"color-main\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></p><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"></p><ul><li>Hương đầu: Mật ong, mận và đại hoàng</li><li>Hương giữa: Hổ phách và hoa cam</li><li>Hương cuối: Nhựa cây, hoắc hương và vani</li></ul><p><span style=\"text-align: justify;\"><span style=\"font-weight: 700;\">Marc Jacobs Perfect Elixir EDP</span>&nbsp;là một phiên bản mới thuộc dòng nước hoa nổi tiếng Marc Jacobs Perfect, ra mắt vào năm 2024. Được sáng tạo bởi nhà chế tác nước hoa danh tiếng Domitille Michalon Bertier. Hương thơm này đại diện&nbsp;cho những người phụ nữ yêu thích sự sang trọng, quyến rũ và hiện đại.</span></p><p><span style=\"font-weight: 700; text-align: justify;\">Marc Jacobs Perfect Elixir EDP</span><span style=\"text-align: justify;\">&nbsp;mang đậm chất hoa cỏ – gỗ – phương Đông với các tầng hương phong phú. Lớp hương đầu mở ra với sự ngọt ngào và tươi mát của quả mận, mật ong và cây đại hoàng. Hương giữa là sự ấm áp, quyến rũ từ hổ phách và hoa cam, tạo nên sự hài hòa tuyệt đối. Cuối cùng, hương resin, vanilla và hoắc hương để lại dấu ấn sâu lắng, khiến mùi hương trở nên bền bỉ và đầy sức hút.</span></p><p></p>', 4280000, 3852000, '1736716433.jpg', 1, NULL, 0, 0, 1, NULL, NULL, NULL, '2025-01-12 13:01:20', '2025-01-12 14:13:53'),
(20, 2, 'Jean Paul Gaultier Absolu', 'jean paul', 'Nhãn hiệu:	Jean Paul Gaultier <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Pháp <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương Hoa Cỏ - Floral <br>\r\nPhong cách:	Ngọt Ngào, Cuốn Hút, Tinh Tế <br>', '<h4 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></h4><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"></p><ul><li>Hương đầu: Hoa huệ</li><li>Hương giữa: Quả sung</li><li>Hương cuối: Gỗ đàn hương</li></ul><p><span style=\"text-align: justify;\">Jean Paul Gaultier chưa bao giờ làm cộng đồng mùi hương hết bất ngờ này đến bất ngờ khác, và 2024 này có lẽ là năm bùng nổ khi hãng cho \"comeback\" cặp đôi Scandal nam và nữ, và trong bài viết này,&nbsp;</span><span style=\"font-weight: 700; text-align: justify;\">Scandal Absolu Her</span><span style=\"text-align: justify;\">&nbsp;chính là điểm nhấn.</span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\">Vẫn giữ cái phong thái đỏng đảnh và quyến rũ thường lệ, thế nhưng&nbsp;<span style=\"font-weight: 700;\">Scandal Absolu Her</span>&nbsp;lại rực rỡ và tỏa sáng hơn nhiều khi lựa Quả sung vào bổ trợ cho Hoa huệ. Huệ nồng nàn, xanh ngát, được bù thêm bởi một chút ngọt sữa từ Sung, tạo nên hợp hương ngọt ngào đủ đầy từ cả Hoa và Trái.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\">Không như những cô nàng Scandal trước - tạo ngọt bằng nốt hương như Caramel hay Vanilla, mà lại lựa chọn Gỗ đàn hương với vị ngọt ấm và có phần đĩnh đạc hơn. Có thể nói, đây là phiên bản đã \"trưởng thành\" so với Scandal bản gốc, dù đã bớt đi nét hoang dại thế nhưng phong cách cá tính và \"chịu chơi\" vẫn không hề suy suyển.</p><p><br></p><p></p>', 4850000, 4365000, '1736716499.jpg', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-01-12 13:06:12', '2025-01-12 14:15:23'),
(21, 3, 'LANCÔME IDOLE EDT', 'lancome idole', 'Nhãn hiệu:	Lancôme <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Pháp <br>\r\nNồng độ:	Eau de toilette <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương hoa cỏ Gỗ Xạ hương - Floral Woody Musk <br>\r\nPhong cách:	Thanh lịch, Tươi mới, Nữ tính <br>', '<h4 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></h4><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"><ul><li>Hương đầu: Cam Bergamot và Trà xanh</li><li>Hương giữa: Hoa hồng Damask và Nước hoa hồng</li><li>Hương cuối: Xạ hương, Cây hoắc hương, Gỗ tuyết tùng và Vani Bourbon.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\"><em>Nước hoa&nbsp;<span style=\"font-weight: 700;\">Lancôme Idole&nbsp;EDT</span>&nbsp;là sự kết hợp hoàn hảo giữa các nốt hương mạnh mẽ và sự tươi mát tinh tế, đáng ngạc nhiên. Cùng tìm hiểu hương thơm này có gì đặc biệt nhé!</em></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\"><span style=\"font-size: 0.875rem; font-weight: 700;\">Lancôme Idole&nbsp;EDT</span>&nbsp;mở đầu bằng hương trà shincha, loại trà đầu tiên của vụ thu hoạch, được giữ ở trạng thái hoàn hảo và mang đến sự kết hợp hấp dẫn của các loại hoa hồng được chiết xuất thông qua hai quy trình riêng biệt và thanh lịch. Được nâng cao nhờ nước hoa hồng, hỗn hợp này chứa ba loại cam bergamot khác nhau thu được thông qua quá trình chưng cất phân tử đông lạnh trong thời gian. Điều này tạo ra cảm giác đắng ngọt khiến chúng ta mong muốn nhiều hơn nữa.</p></p>', 3980000, 3781000, '1736713146.jpg', 1, NULL, 0, 0, 1, NULL, NULL, NULL, '2025-01-12 13:19:06', '2025-01-12 15:32:37'),
(23, 4, 'Bleu Nuit By Lomani', 'blue lomani', 'Nhãn hiệu:	Parour <br>\r\nGiới tính:	Unisex <br>\r\nXuất xứ:	Pháp <br>\r\nBộ sưu tập:	LOMANI <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương Hoa cỏ Phương đông - Oriental Floral <br>\r\nPhong cách:', '<h4 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></h4><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"><ul><li>Hương đầu: táo, thảo quả, bạch đàn</li><li>Hương giữa: Kim thông, phong lữ, gỗ Guaiac</li><li>Hương cuối: lãnh sam, hoắc hương, cistus</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\"><span style=\"font-weight: 700;\">Bleu Nuit By Lomani EDP là một trong những mùi hương mới nhất đến từ thương hiệu Parour. Bleu Nuit mang đến một vẻ đẹp sang trọng, lịch lãm và đầy lôi cuốn. Thuộc bộ sưu tập Lomani với những nốt hương tinh tế, Bleu Nuit rất được phái mạnh ưa thích bởi sự kết hợp táo bạo giữa nét hiện đại và nam tính.</span></p></p><h4 style=\"font-family: &quot;utm avo&quot;; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 1.2em; text-transform: uppercase; text-align: justify;\"><span style=\"font-weight: 700;\">1. BLEU NUIT BY LOMANI EDP - HIỆN ĐẠI VÀ NAM TÍNH</span><span style=\"font-weight: 700;\"><br></span></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Ở lớp hương đầu tiên, hương thơm mang đến sự tươi mát và tràn đầy năng lượng của quả táo giòn cùng cây quả thảo nồng cay và cây bạch đàn thơm, cung cấp nguồn năng lượng vô tận cho những trái tim hiện đại. Những nốt hương hoa phong lữ hòa quyện cùng hương kim thông thanh lịch và hương gỗ Guaiac. Ở tầng hương cuối, hương thơm gợi ra một nét duyên dáng độc đáo. Sự gợi cảm của cây hoắc hương và hoa Cistus làm thăng hoa sức quyến rũ của hương lãnh sam.</p><h4 style=\"font-family: &quot;utm avo&quot;; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 1.2em; text-transform: uppercase; text-align: justify;\"><span style=\"font-weight: 700;\">2. BLEU NUIT BY LOMANI - CUỐN HÚT CÙNG GAM MÀU XANH</span></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Bleu Nuit By Lomani được phủ lên mình chiếc áo màu xanh xám toát lên vẻ mạnh mẽ, nhưng cũng không kém phần sang trọng lịch lãm. Thiết kế đơn giản những vẫn tôn lên được đẳng cấp thương hiệu trứ danh nước Pháp.&nbsp;</p>', 2490000, 2190000, '1736714323.jpg', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-01-12 13:38:43', '2025-01-12 13:38:43'),
(25, 7, 'Muối tẩy tế bào chết', 'muoi', 'Hương sữa và mật ong <br><br>\r\nNhãn hiệu:	Minus 417 <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Israel <br>\r\nBộ sưu tập:	Serenity Legend Collection', '<h4><strong>CÔNG DỤNG</strong></h4><p><ul><li><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Tẩy tế bào chết dịu nhẹ với các hạt siêu nhỏ từ muối Biển Chết và Tinh dầu Tự nhiên.</span></li><li><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Nhẹ nhàng tẩy tế bào chết, tăng cường tái tạo da, làm giảm các dấu hiệu lão hóa và mang lại làn da tươi mới và làm mới da.</span></li><li><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Kết cấu da được cải thiện.</span></li><li><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Làn da tươi mới, mềm mại và mịn màng.</span></li></ul><h4 style=\"text-align: justify;\"><font face=\"open sans, sans-serif\"><strong>CÁCH SỬ DỤNG</strong></font></h4><p style=\"text-align: justify;\"><ul><li><span style=\"font-family: &quot;open sans&quot;, sans-serif; background-color: rgb(249, 249, 249);\">Mát xa trên da sạch và rửa lại với nước. Sử dụng từ 2-3 lần/tuần.</span></li></ul><h4><font face=\"open sans, sans-serif\">THÀNH PHẦN</font></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif;\"><p><span style=\"font-weight: 700; background-color: rgb(249, 249, 249);\">KHOÁNG CHẤT QUÝ HIẾM</span><br style=\"background-color: rgb(249, 249, 249);\"></p>Sự kết hợp giữa các Khoáng chất thiết yếu từ Biển Chết giàu các thành phần hoạt chất tự nhiên (các loại Vitamin và các Chiết xuất Thực vật độc đáo)<br>Duy trì độ ẩm bình thường cho da<br>Tăng cường hàng rào bảo vệ tự nhiên cho da<br>Thúc đẩy quá trình tái tạo da bằng cách hỗ trợ sự làm mới tế bào<br>Cải thiện kết cấu da cũng như điều kiện tóc &amp; da đầu</p></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-weight: 700;\">VITAMINS</span><br>Vitamin A: Giúp cải thiện sự xuất hiện của các nếp nhăn<br>Vitamin B: Tăng cường khả năng giữ nước tự nhiên cho da, cho da bóng khỏe hơn<br>Vitamin E: Chứa chất chống oxy hóa mạnh đẩy lùi sự hoạt động của các gốc tự do<br>Vitamin F: Còn được gọi là Axit béo Omega. Dưỡng ẩm cho da mịn màng và mềm mại hơn</p></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-weight: 700;\">TINH DẦU THIẾT YẾU</span><br>Mầm lúa mì, Hạnh nhân ngọt</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-weight: 700;\">CHIẾT XUẤT THỰC VẬT</span><br>Hạt dẻ ngựa</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><br></p>', 899000, 819000, '1736715259.jpg', 1, NULL, 0, 0, 1, NULL, NULL, NULL, '2025-01-12 13:54:19', '2025-01-12 13:54:43'),
(26, 7, 'Kem dưỡng chống lão hóa', 'kem duong', 'Nhãn hiệu:	Minus 417 <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Israel <br>\r\nBộ sưu tập:	Radiance See Collection', '<p><strong>CÔNG DỤNG</strong></p><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Kem cấp ẩm và dưỡng ẩm chuyên sâu dành cho da khô và da tuổi trung niên. Sử dụng cho cả ngày và đêm.</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Dưỡng ẩm, làm mềm, nuôi dưỡng cho làn da sáng và rạng rỡ hơn.<br></span><span style=\"font-weight: 700; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">CẢM NHẬN kết cấu da cải thiện kỳ diệu trên da<br></span><span style=\"font-weight: 700; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">NHÌN THẤY kết quả rõ ràng giàu dưỡng chất đặc biệt trên da:<br></span><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Da được cấp ẩm, được nuôi dưỡng và mềm mại<br></span><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Tông da đều màu và sáng hơn.</span></p><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">CÁCH SỬ DỤNG</span></p><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Sử dụng sáng và tối trên da sạch và khô ráo, dùng cho toàn vùng da mặt và cổ.</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Có thể sử dụng hàng&nbsp;ngày như kem đặc&nbsp;trị.</span></p></p><p><br></p>', 1945000, 1751000, '1736715839.jpg', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-01-12 14:03:59', '2025-01-12 14:03:59'),
(27, 7, 'Dầu xả khoáng chất', 'dau xa', 'Nhãn hiệu:	Minus 417 <br>\r\nGiới tính:	Nữ <br>\r\nXuất xứ:	Israel <br>\r\nBộ sưu tập:	Sensual Essence Collection', '<p><strong>CÔNG DỤNG</strong></p><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Kem xả dịu nhẹ cho tóc với công thức từ Khoáng chất quý giá của Biển Chết và các Vitamin.</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Tạo độ dày và chắc khỏe cho tóc mỏng và khô khỏi các tác nhân có hại, cấp ẩm và làm mượt tóc.</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Dưỡng ẩm và bổ sung khoáng chất cho tóc mềm mượt và bóng khỏe.</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">CẢM NHẬN kết cấu nhẹ trên tóc</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Hương thơm tự nhiên tươi mát</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">NHÌN THẤY kết quả rõ ràng trên tóc:</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Tóc mềm mượt và sáng bóng.</span><br style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Tóc đủ ẩm, dưỡng ẩm và bổ sung đầy đủ.&nbsp;</span></p><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">CÁCH SỬ DỤNG</span></p><p><span style=\"font-family: &quot;open sans&quot;, sans-serif; text-align: justify; background-color: rgb(249, 249, 249);\">Dùng trên tóc sạch và ẩm. Cho kem xả lên tóc và massage&nbsp;từ 1-2 phút sau đó rửa lại kỹ với nước trong 5 phút.</span></p>', 590000, 531000, '1736715974.jpg', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-01-12 14:06:14', '2025-01-12 14:06:14'),
(28, 7, 'Dầu gội khoáng chất', 'dau goi', 'Nhãn hiệu:	Minus 417 <br>\r\nGiới tính:	Unisex <br>\r\nXuất xứ:	Israel <br>\r\nBộ sưu tập:	Even More Collection <br>\r\nDung tích: 100ml', '<p>Dầu gội&nbsp;</p>', 250000, 225000, '1736716172.jpg', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-01-12 14:09:32', '2025-01-12 14:09:32'),
(30, 3, 'Jean Paul Gaultier Garden', 'jean paul garden', 'Nhãn hiệu:	Jean Paul Gaultier <br>\r\nGiới tính:	Nam <br>\r\nXuất xứ:	Pháp <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương thơm Dương xỉ - Aromatic Fougere <br>\r\nPhong cách:	Mạnh mẽ, mát mẻ, Phong cách <br>', '<h4 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></h4><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"></p><ul><li>Hương đầu: Bạc hà, Gừng, Hương nước, Hương xanh</li><li>Hương giữa: Dừa, Muối, Sung.</li><li>Hương cuối: Đậu Tonka, Gỗ đàn hương</li></ul><p><em style=\"text-align: justify;\"><span style=\"font-weight: 700;\">Jean Paul Gaultier Le Beau Paradise Garden EDP</span>&nbsp;là sản phẩm nước hoa dành cho nam giới, được lấy cảm hứng từ bộ sưu tập thời trang Thu Đông 2010-2011 của Jean Paul Gaultier.&nbsp;Người sáng tạo ra dòng nước hoa này là Quentin Bisch.</em></p><p>Từ hương đầu, làn sóng mát lạnh của Nước, sự tươi mới của Bạc hà tỏa ra mở đầu cho cuộc phiêu lưu nghệ thuật này. Hương Nước&nbsp;mang đến&nbsp;sự tinh tế và nhẹ nhàng, như là những giọt sương làm mềm dịu không khí. Bạc hà và gừng kết hợp tạo nên sự hứng khởi và tinh tế.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\">Đào sâu vào&nbsp;<span style=\"font-size: 0.875rem; font-weight: 700;\">Jean Paul Gaultier Le Beau Paradise Garden EDP</span>&nbsp;là hương dừa đầy quyến rũ. Dừa là biểu tượng của sự nồng nàn, tạo nên lớp màng bí mật. Muối với vị đậm đà của nó đã thêm vào sự độc đáo cho tổng thể. Vị ngọt của quả Sung như một nụ hôn dịu dàng tô điểm thêm cho hương giữa, làm cho mùi hương trở nên phức tạp và đằm chặt cảm xúc.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\">Tầng hương cuối của Le Beau Paradise Garden mang đến sự ấm áp và nồng nàn với Gỗ đàn hương đầy mê hoặc.</p><p></p>', 3380000, 3042000, '1736713709.jpg', 1, NULL, 0, 0, 1, NULL, NULL, NULL, '2025-01-12 16:32:29', '2025-01-12 16:59:02'),
(31, 1, 'YSL La Nuit de L’Homme EDT', 'ysl y edt', 'Nhãn hiệu:	Yves Saint Laurent <br>\r\nGiới tính: Nam <br>\r\nXuất xứ:	Pháp <br>\r\nNồng độ: Eau de toilette <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương Gỗ Cay Nồng - Woody Spicy <br>\r\nPhong cách:	Nam tính, Mạnh mẽ, Quyến rũ <br>', '<p class=\"color-main\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></p><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"><ul><li>Hương đầu: Bạch đậu khấu</li><li>Hương giữa: Cam Bergamot, Gỗ tuyết tùng Virginia, Hoa oải hương</li><li>Hương cuối: Cỏ hương bài, Thì là Ba Tư</li></ul><p><em style=\"text-align: justify;\"><span style=\"font-weight: 700;\">YSL La Nuit de L’Homme EDT</span>&nbsp;cho ra mắt năm 2009 và được sáng tạo bởi ba nhà pha chế Anne Flipo, Dominique Ropion, Pierre Wargnye vô cùng tài năng. Đây là một mùi hương nam tính, đầy sức ép và tính tương phản.</em></p><p><span style=\"text-align: justify;\">Mở màn cho nốt hương đầu tiên của&nbsp;</span><span style=\"font-weight: 700; text-align: justify;\">YSL&nbsp;La Nuit de L’Homme EDT</span><span style=\"text-align: justify;\">&nbsp;là hương bạch đậu khấu rực rỡ, ấn tượng. Chẳng giống như nhiều hương nước hoa khác, màn dạo đầu nhẹ nhàng, tươi mát, La Nuit de L’Homme EDT lại có gì đó gắt nhẹ, nồng nàn ngay từ cú chạm&nbsp;đầu tiên. Sau 5-10 phút thì hương thơm dịu đi, nhường chỗ cho khoảnh khắc&nbsp;cao trào. Vị ngọt của cam, gỗ tuyết tùng cùng hoa oải hương thơm nồng chính là giai điệu tạo nên điệp khúc ngọt ngào, lãng mạn không thể cưỡng lại. Cuối cùng, cái kết hoàn hảo, lưu luyến trong dư vị ấm áp của cỏ hương bài và thì là Ba Tư.</span></p></p>', 0, 3445000, '1736708164.jpg', 1, NULL, 0, 0, 8, NULL, NULL, NULL, '2025-01-12 11:45:31', '2025-01-12 12:42:51'),
(32, 4, 'CK EVERYONE EDP', 'ck edp', 'Nhãn hiệu:	Calvin Klein <br>\r\nGiới tính:	Unisex <br>\r\nXuất xứ:	Mỹ <br>\r\nPhát hành:	2020 <br>\r\nNồng độ:	Eau de parfum <br>\r\nNhà pha chế:	 <br>\r\nNhóm hương:	Hương cam chanh thực phẩm - Citrus Gourmand <br>\r\nPhong cách:	Tươi mới, Tinh tế, Nổi bật', '<h4 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; color: rgb(155, 14, 98); font-family: &quot;open sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">Hương đặc trưng</span></h4><p class=\"pb-20\" style=\"padding-bottom: 20px; font-family: &quot;open sans&quot;, sans-serif;\"></p><ul><li>Hương đầu: tinh dầu cam, gừng</li><li>Hương giữa: blue tea accord, watery notes</li><li>Hương cuối: Hoàng đàn, Hoắc hương và hổ phách</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; text-align: justify;\"><span style=\"font-weight: 700;\">Bên cạnh thời trang thì nước hoa của hãng Calvin Klein cũng được nhận được sự yêu thích đặc biệt từ khách hàng. Trong đó, dòng nước hoa unisex đã mang đến tên tuổi đình đám cho thương hiệu này. Cùng tìm hiểu về&nbsp;<a href=\"https://www.thegioinuochoa.com.vn/\" style=\"color: rgb(155, 14, 98); transition: color 0.3s;\">CK Everyone EDP</a>, phiên bản unisex mới với mùi hương mát mẻ, tự nhiên và thuần chay.&nbsp;&nbsp;&nbsp;</span></p><p></p><h4 style=\"font-family: &quot;utm avo&quot;; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 1.2em; text-transform: uppercase; text-align: justify;\"><span style=\"font-weight: 700;\">1. VẺ NGOÀI TINH KHIẾT CỦA CK EVERYONE EDP</span></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Điều gì tạo nên ấn tượng đầu tiên khi bắt gặp&nbsp;<span style=\"font-weight: 700;\"><a href=\"https://www.thegioinuochoa.com.vn/\" style=\"color: rgb(155, 14, 98); transition: color 0.3s;\">CK Everyone EDP</a></span>? Chắc hẳn là thiết kế như một chai nước suối tinh khiết.&nbsp;<em>Chai nước hoa CK Everyone EDP</em>&nbsp;được làm bằng thủy tinh trong suốt. Điểm nhấn là dây ruy băng buộc quanh chai, gợi nhắc đến thiết kế đã quá nổi tiếng của Calvin Klein. Thiết kế này của&nbsp;<span style=\"font-weight: 700;\"><a href=\"https://www.thegioinuochoa.com.vn/\" style=\"color: rgb(155, 14, 98); transition: color 0.3s;\">CK Everyone EDP</a></span>&nbsp;cũng rất tiện dụng và mang tinh thần bảo vệ môi trường vì nó có thể tái chế, hoặc bạn có thể dùng làm vật dụng trang trí, còn dây ruy băng có thể là dây đeo tay.&nbsp;</p><h4 style=\"font-family: &quot;utm avo&quot;; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; font-size: 1.2em; text-transform: uppercase; text-align: justify;\"><span style=\"font-weight: 700;\">2. HƠI THỞ CỦA THIÊN NHIÊN TỪ CK EVERYONE EDP</span></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; line-height: 25px; font-family: &quot;open sans&quot;, sans-serif; text-align: justify;\">Là phiên bản nước hoa thuần chay của Calvin Klein<span style=\"font-weight: 700;\">,&nbsp;<a href=\"https://www.thegioinuochoa.com.vn/calvin-klein\" style=\"color: rgb(155, 14, 98); transition: color 0.3s;\">CK EVERYONE EDP</a>&nbsp;</span>được cam kết không thử nghiệm trên động vật, được làm từ cồn có nguồn gốc tự nhiên và pha trộn với những nguyên liệu cũng có nguồn gốc tự nhiên. Mùi hương chính của nước hoa đến từ hương cam quýt và hương gỗ.&nbsp;</p>', 2960000, 1490000, '1736716239.jpg', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, '2025-01-12 13:44:07', '2025-01-12 14:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần', 'user@gmail.com', NULL, '$2y$10$VsAalPsQQ6zKwzjxXKC/ju0mFzvl5MYUPjgmdMtH1ApV/vY1iWzSu', 'Trần', '0342903416', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 0, '5Z0qllvBsy9wYdEI9mAOMWfCRKodnzYfPJXoFxHJZsVr0S0RRCDqXMDuHyLh', '2023-12-09 01:32:20', '2023-12-10 18:16:30'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$b39v9iMp9umXyBOTZ7FvLexBxZDYkA7YVi0MKs9cibZD6iYLlz4S2', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'hxepKOSZJCrWbzd2SOhfkq7poX27HLoasV3pwjMUGny7hxUNcyOV5QTZYK5c', '2023-12-09 01:36:25', '2023-12-09 01:36:25'),
(28, 'Nguyễn', 'user3@gmail.com', NULL, '$2y$10$H4YY4uXH7je71kp86pjhW.1Akpr661ScJdTuYuvfWrNqFmqfxAmNu', 'test', '0342903414', 'abc', 'xyz', 'Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 0, 'jv3KNgtLQkSM9iSEAtE14id4zbkgaZcCKTREdH0gBlcvq3QDYbLPz524aRpp', '2024-01-08 23:50:43', '2024-01-08 23:50:43'),
(29, 'Tín', 'hztinle1006@gmail.com', NULL, '$2y$10$5N78jG2rkHHUK1AIIJxlEusBiECych0pCdumSbnqMGyZAbcQB22pW', 'Lê Trực', '0949062229', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Hẻm 87, lê lợi khóm 4 phường 1 tp.trà vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 0, 'HWjoimg0YiqNcbfvJedQNgUrlIZqtIHYy7DT4EpBMyeWT4B8GKbCygq4EUV9', '2024-12-15 12:24:31', '2025-01-12 11:31:27'),
(30, 'admin1', 'admin@mail.com', NULL, '$2y$10$.bjzvQVv51XBDBN11oTwHegDOs0bKpA1kxcRsCH08GecNgyYttdzi', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-12-15 12:43:19', '2024-12-15 12:43:19'),
(31, 'Duy', 'trankhanhduy1409@gmail.com', NULL, '$2y$10$QbDVjFEmeNGeSuDzaFihTui7tB0R7wvS9FF06WlXTOFYaZnlTPryi', 'Trần Khánh', '0123456789', 'Đâu dó ở Trà Vinh', 'Đâu dó ở Trà Vinh', 'Thành phố Trà Vinh', 'Trà Vinh', 'Việt Nam', NULL, 0, NULL, '2025-01-08 11:33:07', '2025-01-08 11:34:27'),
(32, 'Xuyên', 'xuyen123@gmail.com', NULL, '$2y$10$zhHZDQ51pG8Xi88v33RXYOl.Gdzd8UhLbAamX2HinxbF20rk2syJG', 'Lê Thị Nguyễn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-01-12 15:15:41', '2025-01-12 15:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(6, '20', '5', '2023-12-21 09:06:25', '2023-12-21 09:06:25'),
(19, '15', '3', '2024-01-04 23:01:51', '2024-01-04 23:01:51'),
(30, '29', '1', '2025-01-10 04:20:50', '2025-01-10 04:20:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
