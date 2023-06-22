-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 05:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onprint`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residential_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `unit_no`, `street_name`, `residential_area`, `postal_code`, `city_id`, `state_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '91', 'Jalan 4P', 'Kampung Permai', 32305, 20, 1, '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(2, '1-1', 'Jln 2/85H', 'Medan Razak', 81109, 7, 1, '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(3, 'G-66-01', 'Lorong Bellamy', 'PJS49', 9610, 2, 1, '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(4, '95', 'Jln Sentul 2/54T', 'PJS54', 94246, 4, 1, '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(5, '46', 'Lorong Dang Wangi 9', 'USJ 2', 83608, 8, 1, '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(7, '32', 'Jalan', 'Taman', 43200, 30, 1, NULL, NULL, NULL),
(8, 'b1', 'kampung', 'permatang', 17500, 30, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'UMP Pekan', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(2, 'UMP Gambang', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Comb Bind Notebook', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(2, 'Tape Bind Notebook', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(3, 'Certificate Printing', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(4, 'Thesis Hard Cover', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(5, 'Poster', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Balok', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(2, 'Bandar Bera', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(3, 'Bandar Pusat Jengka', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(4, 'Bandar Tun Abdul Razak', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(5, 'Benta', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(6, 'Bentong', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(7, 'Brinchang', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(8, 'Bukit Fraser', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(9, 'Bukit Goh', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(10, 'Bukit Kuin', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(11, 'Chenor', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(12, 'Chini', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(13, 'Damak', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(14, 'Dong', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(15, 'Gambang', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(16, 'Genting Highlands', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(17, 'Jerantut', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(18, 'Karak', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(19, 'Kemayan', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(20, 'Kuala Krau', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(21, 'Kuala Lipis', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(22, 'Kuala Rompin', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(23, 'Kuantan', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(24, 'Lanchang', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(25, 'Lurah Bilut', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(26, 'Maran', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(27, 'Mentakab', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(28, 'Muadzam Shah', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(29, 'Padang Tengku', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(30, 'Pekan', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(31, 'Raub', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(32, 'Ringlet', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(33, 'Sega', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(34, 'Sungai Koyan', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(35, 'Sungai Lembing', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(36, 'Tanah Rata', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(37, 'Temerloh', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(38, 'Triang', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','resolved','reopened','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `date_received` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `delivery_id`, `description`, `status`, `date_received`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Laudantium quidem consectetur aperiam dolor modi. Non ut minima odio qui. Ullam saepe ex excepturi illum voluptatem. Quibusdam enim odit dolor ea. Consequatur excepturi omnis ipsam sed modi.', 'open', '2023-01-31 16:09:49', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(2, 5, 'Consequuntur assumenda dolore sint nam laborum. Deserunt qui molestiae officiis consequatur qui. Maxime quam ducimus maxime vitae. Voluptatum consequatur vel possimus autem quas.', 'resolved', '2023-01-14 12:28:41', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(3, 1, 'Facilis quis autem est labore aperiam. Impedit voluptatum voluptatibus debitis quia. Facilis consequatur amet exercitationem optio. Eos sed placeat illo.', 'resolved', '2023-01-14 13:29:19', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(5, 1, 'Corrupti consequatur quis dolores consectetur. Ea tenetur sint est facere consequatur nam. Quas rerum quaerat consectetur hic illo delectus odio. Neque distinctio dolores facere neque. Consequatur rerum ea id voluptatibus quos quia velit.', 'open', '2023-01-14 13:11:21', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_id` bigint(20) UNSIGNED NOT NULL,
  `rider_id` bigint(20) UNSIGNED NOT NULL,
  `commission_fee` double(8,2) NOT NULL,
  `delivered_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `receipt_id`, `rider_id`, `commission_fee`, `delivered_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, 25.18, '1996-02-19 06:20:26', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(2, 3, 4, 28.98, '1985-10-26 12:32:21', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(3, 4, 4, 25.72, '1995-08-16 10:21:17', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(5, 5, 2, 16.16, '2023-01-12 12:31:28', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_options`
--

CREATE TABLE `delivery_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_options`
--

INSERT INTO `delivery_options` (`id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'delivery', 5.00, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(2, 'self-pick up', 2.50, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL);

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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `complaint_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 3, 'Aut autem assumenda magnam fugiat aperiam ut. Corrupti saepe laborum sunt vel. Dolor qui aspernatur ut dolorem aut necessitatibus eos.', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(5, 2, 'Et omnis aspernatur quis ut soluta amet. Iste incidunt et aliquid et totam natus a. Accusantium modi eaque similique et suscipit. Amet et voluptatem autem quo. Vel nesciunt nam fuga et facere.', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A4 paper', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(2, 'ink bottle', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(3, 'binder', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(4, 'lamination paper', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(5, 'solvent', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_outlet`
--

CREATE TABLE `inventory_outlet` (
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_21_000000_create_addresses_table', 1),
(6, '2022_12_21_000001_create_campuses_table', 1),
(7, '2022_12_21_000002_create_categories_table', 1),
(8, '2022_12_21_000003_create_cities_table', 1),
(9, '2022_12_21_000004_create_complaints_table', 1),
(10, '2022_12_21_000005_create_deliveries_table', 1),
(11, '2022_12_21_000006_create_delivery_options_table', 1),
(12, '2022_12_21_000007_create_feedbacks_table', 1),
(13, '2022_12_21_000008_create_inventories_table', 1),
(14, '2022_12_21_000009_create_inventory_outlet_table', 1),
(15, '2022_12_21_000010_create_orders_table', 1),
(16, '2022_12_21_000011_create_outlets_table', 1),
(17, '2022_12_21_000012_create_packages_table', 1),
(18, '2022_12_21_000013_create_payment_methods_table', 1),
(19, '2022_12_21_000014_create_receipts_table', 1),
(20, '2022_12_21_000015_create_riders_table', 1),
(21, '2022_12_21_000017_create_states_table', 1),
(22, '2022_12_21_009001_add_foreigns_to_addresses_table', 1),
(23, '2022_12_21_009002_add_foreigns_to_complaints_table', 1),
(24, '2022_12_21_009003_add_foreigns_to_deliveries_table', 1),
(25, '2022_12_21_009004_add_foreigns_to_feedbacks_table', 1),
(26, '2022_12_21_009005_add_foreigns_to_inventory_outlet_table', 1),
(27, '2022_12_21_009006_add_foreigns_to_orders_table', 1),
(28, '2022_12_21_009007_add_foreigns_to_outlets_table', 1),
(29, '2022_12_21_009008_add_foreigns_to_packages_table', 1),
(30, '2022_12_21_009009_add_foreigns_to_receipts_table', 1),
(31, '2022_12_21_009010_add_foreigns_to_riders_table', 1),
(32, '2022_12_21_009011_add_foreigns_to_users_table', 1),
(33, '2023_01_04_153743_create_sessions_table', 1),
(34, '2023_01_07_064538_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_option_id` bigint(20) UNSIGNED NOT NULL,
  `document_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `point` int(11) NOT NULL,
  `status` enum('pending','ordered','prepared','picked up','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `qr_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `outlet_id`, `package_id`, `delivery_option_id`, `document_file`, `quantity`, `total_price`, `point`, `status`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 3, 2, 'b267dee6-7dda-3a5c-a058-2c7f7e48a0a7.pdf', 62, 98.72, 64, 'prepared', '0', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(2, 5, 2, 1, '66119e6e-92cd-390d-b3f5-bb9349d0a23f.pdf', 70, 34.72, 53, 'prepared', '0', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(3, 2, 4, 2, '908f1fe1-57f2-3680-b97c-64196d612b23.pdf', 52, 42.17, 41, 'picked up', '0', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(4, 4, 5, 1, '0942661f-64e1-3e59-80fb-cac203757f66.pdf', 21, 37.88, 8, 'completed', '0', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(5, 1, 1, 1, 'c1727b27-03a6-39ab-aadc-97f19cfbd3f8.pdf', 62, 12.00, 97, 'completed', '0', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `campus_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cooperative Ltd', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(2, 1, 'Red Cafe', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(3, 1, 'Pekan Library', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(4, 2, 'The Machines', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(5, 2, 'Gambang Library', '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `price_rate` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `category_id`, `name`, `min_quantity`, `price_rate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'tenetur', 55, 850.95, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(2, 2, 'et', 84, 914.62, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(3, 1, 'minima', 2, 416.24, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(4, 1, 'et', 65, 347.43, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(5, 4, 'quia', 30, 262.76, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL);

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'online', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(2, 'cash', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'list addresses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(2, 'view addresses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(3, 'create addresses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(4, 'update addresses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(5, 'delete addresses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(6, 'list campuses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(7, 'view campuses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(8, 'create campuses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(9, 'update campuses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(10, 'delete campuses', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(11, 'list categories', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(12, 'view categories', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(13, 'create categories', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(14, 'update categories', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(15, 'delete categories', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(16, 'list cities', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(17, 'view cities', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(18, 'create cities', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(19, 'update cities', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(20, 'delete cities', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(21, 'list complaints', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(22, 'view complaints', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(23, 'create complaints', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(24, 'update complaints', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(25, 'delete complaints', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(26, 'list deliveries', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(27, 'view deliveries', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(28, 'create deliveries', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(29, 'update deliveries', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(30, 'delete deliveries', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(31, 'list deliveryoptions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(32, 'view deliveryoptions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(33, 'create deliveryoptions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(34, 'update deliveryoptions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(35, 'delete deliveryoptions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(36, 'list feedbacks', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(37, 'view feedbacks', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(38, 'create feedbacks', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(39, 'update feedbacks', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(40, 'delete feedbacks', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(41, 'list inventories', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(42, 'view inventories', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(43, 'create inventories', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(44, 'update inventories', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(45, 'delete inventories', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(46, 'list orders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(47, 'view orders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(48, 'create orders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(49, 'update orders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(50, 'delete orders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(51, 'list outlets', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(52, 'view outlets', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(53, 'create outlets', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(54, 'update outlets', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(55, 'delete outlets', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(56, 'list packages', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(57, 'view packages', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(58, 'create packages', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(59, 'update packages', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(60, 'delete packages', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(61, 'list paymentmethods', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(62, 'view paymentmethods', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(63, 'create paymentmethods', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(64, 'update paymentmethods', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(65, 'delete paymentmethods', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(66, 'list receipts', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(67, 'view receipts', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(68, 'create receipts', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(69, 'update receipts', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(70, 'delete receipts', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(71, 'list riders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(72, 'view riders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(73, 'create riders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(74, 'update riders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(75, 'delete riders', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(76, 'list states', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(77, 'view states', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(78, 'create states', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(79, 'update states', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(80, 'delete states', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(81, 'list roles', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(82, 'view roles', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(83, 'create roles', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(84, 'update roles', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(85, 'delete roles', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(86, 'list permissions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(87, 'view permissions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(88, 'create permissions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(89, 'update permissions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(90, 'delete permissions', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(91, 'list users', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(92, 'view users', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(93, 'create users', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(94, 'update users', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(95, 'delete users', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('successful','cancelled','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'successful',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `user_id`, `address_id`, `payment_method_id`, `order_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 1, 2, 3, 'successful', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(3, 3, 3, 2, 4, 'successful', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(4, 4, 3, 2, 1, 'successful', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL),
(5, 5, 5, 1, 2, 'successful', '2023-01-07 17:25:21', '2023-01-07 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

CREATE TABLE `riders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_commission` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`id`, `user_id`, `total_commission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1200.95, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(2, 2, 96.21, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(3, 3, 5.21, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(4, 4, 70.88, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL),
(5, 5, 33.09, '2023-01-07 17:25:18', '2023-01-07 17:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'rider', 'web', '2023-01-07 17:25:16', '2023-01-07 17:25:16'),
(2, 'member', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17'),
(3, 'admin', 'web', '2023-01-07 17:25:17', '2023-01-07 17:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(7, 2),
(7, 3),
(8, 2),
(8, 3),
(9, 2),
(9, 3),
(10, 2),
(10, 3),
(11, 2),
(11, 3),
(12, 2),
(12, 3),
(13, 2),
(13, 3),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 2),
(17, 3),
(18, 2),
(18, 3),
(19, 2),
(19, 3),
(20, 2),
(20, 3),
(21, 2),
(21, 3),
(22, 2),
(22, 3),
(23, 2),
(23, 3),
(24, 2),
(24, 3),
(25, 2),
(25, 3),
(26, 2),
(26, 3),
(27, 2),
(27, 3),
(28, 2),
(28, 3),
(29, 2),
(29, 3),
(30, 2),
(30, 3),
(31, 2),
(31, 3),
(32, 2),
(32, 3),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(35, 3),
(36, 2),
(36, 3),
(37, 2),
(37, 3),
(38, 2),
(38, 3),
(39, 2),
(39, 3),
(40, 2),
(40, 3),
(41, 2),
(41, 3),
(42, 2),
(42, 3),
(43, 2),
(43, 3),
(44, 2),
(44, 3),
(45, 2),
(45, 3),
(46, 2),
(46, 3),
(47, 2),
(47, 3),
(48, 2),
(48, 3),
(49, 2),
(49, 3),
(50, 2),
(50, 3),
(51, 2),
(51, 3),
(52, 2),
(52, 3),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(65, 2),
(65, 3),
(66, 2),
(66, 3),
(67, 2),
(67, 3),
(68, 2),
(68, 3),
(69, 2),
(69, 3),
(70, 2),
(70, 3),
(71, 2),
(71, 3),
(72, 2),
(72, 3),
(73, 2),
(73, 3),
(74, 2),
(74, 3),
(75, 2),
(75, 3),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(79, 2),
(79, 3),
(80, 2),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pahang', '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `is_rider` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `username`, `password`, `mobile_no`, `address_id`, `is_rider`, `remember_token`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Quek Siam Jeng', 'admin@admin.com', '2023-01-07 17:25:16', 'dolorem', '$2y$10$WfiMcXbixDLqZLF.02.3X.i8Z32jPHPWIw2s1239vTQqlWtMRf0zO', '60148700040', 3, 1, 'mU5w0GMdT8', NULL, NULL, NULL, NULL, NULL, '2023-01-07 17:25:16', '2023-01-07 17:25:16', NULL),
(2, 1, 'Mohammed Basirin Nazmi', 'enavarednam@hotmail.com', '2023-01-07 17:25:21', 'nemo', '$2y$10$BiAl3iXAO9aYZcyeI0535.Zcg.DYIQ4IjD6dIGZAugWUMlFGFbD0W', '60182493012', 5, 1, 'Ab7raQeczg', NULL, NULL, NULL, NULL, NULL, '2023-01-07 17:25:22', '2023-01-07 17:25:22', NULL),
(3, 2, 'D. S. Pushpa', 'dairiam.quenler@suppiah.biz', '2023-01-07 17:25:21', 'in', '$2y$10$q0meXqWekluip0Adn81JNetSVX96BsVTL7VtKC9QDpHaMaMMZKbCO', '60179727037', 2, 1, 'Gdsu67cdty', NULL, NULL, NULL, NULL, NULL, '2023-01-07 17:25:22', '2023-01-07 17:25:22', NULL),
(4, 2, 'Alyaa binti Che Adnan', 'crishyakaran@gmail.com', '2023-01-07 17:25:21', 'mollitia', '$2y$10$wCSv7hKf/IO1b1pCyP5tPumOJoWii8kh9PAvgu/8uY0sd4mWP3lK2', '60103353507', 2, 1, 'ysPJf14aPi', NULL, NULL, NULL, NULL, NULL, '2023-01-07 17:25:22', '2023-01-07 17:25:22', NULL),
(5, 3, 'Nisrina Hanif binti Isyrafi', 'hphang@wahbillah.com', '2023-01-07 17:25:21', 'mollitia', '$2y$10$9zRW4h/9A5WPlndoF2do7uOaVLzlK54XA3nHWiW.YfxWfDlIMAzzy', '60192134568', 3, 0, 'Kax3WvrgJ0', NULL, NULL, NULL, NULL, NULL, '2023-01-07 17:25:22', '2023-01-07 17:25:22', NULL),
(6, 2, 'Nur Hjh Izatul binti Haffizi Yanis', 'harris.rifhan@hotmail.com', '2023-01-07 17:25:21', 'debitis', '$2y$10$4lu9bXzpi2KRWDEH9APKHuM2HXgGyWbI1CIVcNdmdaxx3G.mpLzjq', '60176187182', 4, 1, 'pWfn0uFkRn', NULL, NULL, NULL, NULL, NULL, '2023-01-07 17:25:22', '2023-01-07 17:25:22', NULL),
(15, 1, 'Zhafran', 'zhafranzainal11@gmail.com', NULL, 'zhafranzainal', '123', '0172923450', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_state_id_foreign` (`state_id`);

--
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_delivery_id_foreign` (`delivery_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_receipt_id_foreign` (`receipt_id`),
  ADD KEY `deliveries_rider_id_foreign` (`rider_id`);

--
-- Indexes for table `delivery_options`
--
ALTER TABLE `delivery_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_complaint_id_foreign` (`complaint_id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_outlet`
--
ALTER TABLE `inventory_outlet`
  ADD KEY `inventory_outlet_outlet_id_foreign` (`outlet_id`),
  ADD KEY `inventory_outlet_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_outlet_id_foreign` (`outlet_id`),
  ADD KEY `orders_package_id_foreign` (`package_id`),
  ADD KEY `orders_delivery_option_id_foreign` (`delivery_option_id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outlets_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_user_id_foreign` (`user_id`),
  ADD KEY `receipts_address_id_foreign` (`address_id`),
  ADD KEY `receipts_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `receipts_order_id_foreign` (`order_id`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riders_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_address_id_foreign` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_options`
--
ALTER TABLE `delivery_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `riders`
--
ALTER TABLE `riders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deliveries_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `riders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_complaint_id_foreign` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_outlet`
--
ALTER TABLE `inventory_outlet`
  ADD CONSTRAINT `inventory_outlet_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventory_outlet_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_option_id_foreign` FOREIGN KEY (`delivery_option_id`) REFERENCES `delivery_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `outlets`
--
ALTER TABLE `outlets`
  ADD CONSTRAINT `outlets_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receipts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receipts_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riders`
--
ALTER TABLE `riders`
  ADD CONSTRAINT `riders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
