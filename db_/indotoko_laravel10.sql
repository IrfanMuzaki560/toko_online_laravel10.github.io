-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2024 at 02:20 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indotoko_laravel10`
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
(19, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(20, '2014_10_12_100000_create_password_resets_table', 2),
(21, '2019_08_19_000000_create_failed_jobs_table', 2),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(23, '2024_10_25_235559_create_shop_tables', 2),
(24, '2024_11_01_133534_create_shop_entities', 2),
(25, '2024_12_28_024442_add_weight_products_table', 2),
(26, '2024_12_28_031049_add_to_weight_to_shop_carts_table', 2),
(27, '2024_12_28_133234_add_label_column_address_lable', 3);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_addresses`
--

CREATE TABLE `shop_addresses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_addresses`
--

INSERT INTO `shop_addresses` (`id`, `user_id`, `is_primary`, `label`, `first_name`, `last_name`, `address1`, `address2`, `phone`, `email`, `city`, `province`, `postcode`, `created_at`, `updated_at`) VALUES
('400f8112-022a-4a04-85e5-7b71c4b6feee', '9dcea28f-572c-40f0-9d78-d7efbbd59f77', 0, 'Rumah', 'Irfan', 'Muzaki', '47F3+33C, Jl. Salak, Pandan Laut, Purwahamba, Kec. Suradadi, Kabupaten Tegal, Jawa Tengah 52182', 'Kab Tegal', '082325246802', 'irfanmuzaki050903@gmail.com', '39', '5', NULL, NULL, NULL),
('9239a26f-7d64-4fba-bd9a-4cfea4a63dc5', '9dcea28f-572c-40f0-9d78-d7efbbd59f77', 1, 'Kantor', 'Irfan', 'Muzaki2', 'Jalan Sarwo Edi Wibowo N 0.58, Plamongan Sari, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50192', 'Kota Semarang', '082325246802', 'irfanmuzaki050903@gmail.com', '39', '4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_attributes`
--

CREATE TABLE `shop_attributes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation_rules` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_attributes`
--

INSERT INTO `shop_attributes` (`id`, `code`, `name`, `attribute_type`, `validation_rules`, `created_at`, `updated_at`) VALUES
('9dafde48-1754-42c0-8f9d-ed48598c858e', 'ATTR_WEIGHT', 'Berat', 'integer', NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-1927-45d5-ae6a-6fe0cc5ef3e9', 'ATTR_COLOR', 'Warna', 'select', NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-1a1d-451b-86b6-49371d61b3e1', 'ATTR_SIZE', 'Ukuran', 'select', NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-1af0-4b30-adc3-7caca213604d', 'ATTR_LENGTH', 'Panjang', 'integer', NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-1c29-48d5-8708-174ad1e6e898', 'ATTR_HEIGHT', 'Tinggi', 'integer', NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-1d60-4996-b2e1-631b4878b81b', 'ATTR_WIDTH', 'Lebar', 'integer', NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `shop_attribute_options`
--

CREATE TABLE `shop_attribute_options` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_carts`
--

CREATE TABLE `shop_carts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` datetime NOT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `total_weight` int NOT NULL DEFAULT '0',
  `tax_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_carts`
--

INSERT INTO `shop_carts` (`id`, `user_id`, `expired_at`, `base_total_price`, `total_weight`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `grand_total`, `deleted_at`, `created_at`, `updated_at`) VALUES
('4613b741-c381-11ef-b899-c01803cd0bb3', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '2024-12-26 12:01:11', 1616000.00, 0, 118800.00, 0.00, 536000.00, 0.00, 1198800.00, NULL, NULL, '2024-12-28 05:02:23'),
('9dd24e07-c370-4971-9769-1ae61f09196d', '9dcea28f-572c-40f0-9d78-d7efbbd59f77', '2025-01-03 02:16:18', 7328000.00, 0, 304920.00, 0.00, 4556000.00, 0.00, 3076920.00, NULL, '2024-12-26 19:16:18', '2024-12-28 19:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart_items`
--

CREATE TABLE `shop_cart_items` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_cart_items`
--

INSERT INTO `shop_cart_items` (`id`, `cart_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
('9dd3dd2a-980d-4a88-a47a-622c5ecdba79', '4613b741-c381-11ef-b899-c01803cd0bb3', '9dafde49-14d8-4906-975a-5464b680aca1', 4, '2024-12-27 13:52:22', '2024-12-28 05:02:23'),
('9dd3deb8-510f-4a09-a42c-cf20520e84a8', '4613b741-c381-11ef-b899-c01803cd0bb3', '9dafde49-85a1-4143-9644-dab75cf609a0', 3, '2024-12-27 13:56:42', '2024-12-28 01:01:23'),
('9dd4527e-b8c4-47b8-949f-bf1d353b270c', '9dd24e07-c370-4971-9769-1ae61f09196d', '9dafde49-85a1-4143-9644-dab75cf609a0', 10, '2024-12-27 19:20:26', '2024-12-27 19:39:04'),
('9dd4585d-ffb9-413f-89f2-9aa9dceb29b6', '9dd24e07-c370-4971-9769-1ae61f09196d', '9dafde49-6e24-483b-b0b6-9034d2edc546', 4, '2024-12-27 19:36:51', '2024-12-27 19:36:51'),
('9dd45948-a9d4-4ae5-a460-abdd46cb4919', '9dd24e07-c370-4971-9769-1ae61f09196d', '9dafde49-14d8-4906-975a-5464b680aca1', 34, '2024-12-27 19:39:25', '2024-12-28 19:43:14'),
('9dd52290-b7b2-4140-8c00-37bd508eec23', '4613b741-c381-11ef-b899-c01803cd0bb3', '9dafde49-6e24-483b-b0b6-9034d2edc546', 5, '2024-12-28 05:02:15', '2024-12-28 05:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `parent_id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
('9dafdcf4-f552-4cc9-a3a5-0a22d57f6781', NULL, 'quos-impedit-quibusdam', 'Quos impedit quibusdam.', '2024-12-09 16:21:59', '2024-12-09 16:21:59'),
('9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d', NULL, 'qui-expedita', 'Qui expedita.', '2024-12-09 16:21:59', '2024-12-09 16:21:59'),
('9dafdcf6-b00f-4df0-b4f4-a855bfdc3574', NULL, 'non-repellat', 'Non repellat.', '2024-12-09 16:21:59', '2024-12-09 16:21:59'),
('9dafdcf6-b0fd-4732-a3c4-5ad10abb6754', NULL, 'aut-omnis', 'Aut omnis.', '2024-12-09 16:21:59', '2024-12-09 16:21:59'),
('9dafdcf6-b1f9-4be8-9953-d96e1a12eead', NULL, 'qui-repellendus', 'Qui repellendus.', '2024-12-09 16:21:59', '2024-12-09 16:21:59'),
('9dafde48-1f62-44d6-af98-d08aa0206763', NULL, 'ratione-vero-velit', 'Ratione vero velit.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-2059-4ef3-b18c-eb7dcacc7435', NULL, 'aliquam-aperiam-in', 'Biscuit', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-2121-4569-b721-8531310eeb51', NULL, 'ipsa-expedita', 'Ipsa expedita.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-21f8-4c74-aea1-aa648ada56ac', NULL, 'debitis-architecto-ut', 'Debitis architecto ut.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-22f7-44de-899d-0557c26ae9af', NULL, 'placeat-vero', 'Permen Lunak', '2024-12-09 16:25:41', '2024-12-09 16:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_products`
--

CREATE TABLE `shop_categories_products` (
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_categories_products`
--

INSERT INTO `shop_categories_products` (`product_id`, `category_id`) VALUES
('9dafde49-14d8-4906-975a-5464b680aca1', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-690c-415b-8dd3-5a94d3b98e51', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-6e24-483b-b0b6-9034d2edc546', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-7337-434f-bcbc-d18667358960', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-79da-494b-b0bd-b8f6ba4023d0', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-805b-4c77-8422-5a2c7fd1caaf', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-85a1-4143-9644-dab75cf609a0', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-8bc0-4c59-a4df-6305856ba3a0', '9dafdcf4-f552-4cc9-a3a5-0a22d57f6781'),
('9dafde49-14d8-4906-975a-5464b680aca1', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-690c-415b-8dd3-5a94d3b98e51', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-6e24-483b-b0b6-9034d2edc546', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-7337-434f-bcbc-d18667358960', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-79da-494b-b0bd-b8f6ba4023d0', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-805b-4c77-8422-5a2c7fd1caaf', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-85a1-4143-9644-dab75cf609a0', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d'),
('9dafde49-8bc0-4c59-a4df-6305856ba3a0', '9dafdcf6-af2d-4ce0-98e4-4fd457bbaa0d');

-- --------------------------------------------------------

--
-- Table structure for table `shop_entities`
--

CREATE TABLE `shop_entities` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_orders`
--

CREATE TABLE `shop_orders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_postcode` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_items`
--

CREATE TABLE `shop_order_items` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `base_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_payments`
--

CREATE TABLE `shop_payments` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `rejected_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `rejection_note` text COLLATE utf8mb4_unicode_ci,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int NOT NULL DEFAULT '0',
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN_STOCK',
  `manage_stock` tinyint(1) NOT NULL DEFAULT '0',
  `publish_date` datetime DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `metas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`id`, `user_id`, `sku`, `type`, `parent_id`, `name`, `slug`, `price`, `sale_price`, `status`, `weight`, `stock_status`, `manage_stock`, `publish_date`, `excerpt`, `body`, `metas`, `featured_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
('9dafde49-14d8-4906-975a-5464b680aca1', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '9130429315', 'SIMPLE', NULL, 'HOLIGANS', 'HOLIGANS', 154000.00, 20000.00, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Ut dignissimos non sequi qui mollitia amet debitis. Esse adipisci eius in repellendus aut dolore est. Sunt expedita et sed sint impedit. Ad explicabo sit ex at in.', 'Ut et et ex sit. Id libero qui tempora ducimus asperiores ullam consequatur. Enim tempore a molestiae assumenda vel nesciunt.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-690c-415b-8dd3-5a94d3b98e51', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '296196525X', 'SIMPLE', NULL, 'AERO STREET', 'AERO STREET', 85000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Consequatur aut enim dolore impedit esse delectus est. Magni est quo nostrum omnis at at. Blanditiis dolorem adipisci dignissimos debitis voluptas eligendi.', 'Quis reiciendis aut nihil corrupti ducimus alias. Eos consequatur voluptate tenetur autem. Aliquid iusto officiis veniam dolor sunt aut ea. Libero id praesentium officia quis est.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-6e24-483b-b0b6-9034d2edc546', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '211730172X', 'SIMPLE', NULL, 'HUSH PUSH', 'HUSH PUSH', 98000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Dolor nesciunt occaecati velit deserunt. Quidem animi qui provident provident quasi eveniet velit. Minus esse est et perferendis cum facere.', 'Fuga facilis rerum commodi nulla non voluptate quas iusto. Rerum cumque eum enim architecto. Est voluptatem ut minus velit sit hic facere saepe.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-7337-434f-bcbc-d18667358960', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '7757388767', 'SIMPLE', NULL, 'PULL&BEAR', 'PULL&BEAR', 257000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Aliquam minima rerum non ipsum. Et dolor numquam aperiam laborum est. Magnam commodi porro nisi assumenda vero soluta quis suscipit. Aperiam aut quis et in aliquid est nihil.', 'Qui et fugit ratione illo aut qui quam. Tempore magni eligendi magni accusantium rerum. Quod nihil ut fugit.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-79da-494b-b0bd-b8f6ba4023d0', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '6837855328', 'SIMPLE', NULL, 'ERIGO', 'ERIGO', 193000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Ut repudiandae rerum sit. Architecto error saepe vero aut quos.', 'Occaecati optio enim quia rerum eos sunt. Dolorem omnis provident recusandae fuga provident. Et in reiciendis quo sit et omnis. Cum in ut velit possimus accusamus.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-805b-4c77-8422-5a2c7fd1caaf', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '0292793278', 'SIMPLE', NULL, '3SECOND', '3SECOND', 732000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Accusamus in hic vero vel deleniti. Velit ea facere vel in. Autem et deleniti ut harum possimus.', 'Suscipit ipsam at aliquam placeat alias qui et. Quo temporibus esse vero quis molestias fuga. Laboriosam eius provident ex amet maiores omnis aut.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-85a1-4143-9644-dab75cf609a0', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '2431493946', 'SIMPLE', NULL, 'BLOODS', 'BLOODS', 170000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Dicta voluptatem nobis et illum id consequatur. Soluta eum quos repellat consequatur molestias dolores. Sed delectus impedit nihil aut.', 'Et accusamus recusandae eos ut. Et voluptatem esse et doloremque. Sit libero magni qui dicta voluptas molestias laborum.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL),
('9dafde49-8bc0-4c59-a4df-6305856ba3a0', '9d488923-5812-4e75-94c4-abc3ffde7ec5', '2551527872', 'SIMPLE', NULL, 'UNIQLO', 'UNIQLO', 477000.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 100, '2024-12-09 23:25:41', 'Esse est unde beatae. Ut voluptate et id qui voluptas sint non. Iste repellat laborum omnis harum quibusdam alias.', 'Rerum magni sint facilis officiis culpa. Dolore rerum mollitia omnis pariatur voluptates fugit placeat. Corporis voluptatibus laboriosam aut quia. Nisi at eum dolores perferendis qui dicta.', NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_products_tags`
--

CREATE TABLE `shop_products_tags` (
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_products_tags`
--

INSERT INTO `shop_products_tags` (`product_id`, `tag_id`) VALUES
('9dafde49-14d8-4906-975a-5464b680aca1', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-690c-415b-8dd3-5a94d3b98e51', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-6e24-483b-b0b6-9034d2edc546', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-7337-434f-bcbc-d18667358960', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-79da-494b-b0bd-b8f6ba4023d0', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-805b-4c77-8422-5a2c7fd1caaf', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-85a1-4143-9644-dab75cf609a0', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-8bc0-4c59-a4df-6305856ba3a0', '9dafde48-3c3b-4938-9abb-36472ccb09c1'),
('9dafde49-14d8-4906-975a-5464b680aca1', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-690c-415b-8dd3-5a94d3b98e51', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-6e24-483b-b0b6-9034d2edc546', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-7337-434f-bcbc-d18667358960', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-79da-494b-b0bd-b8f6ba4023d0', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-805b-4c77-8422-5a2c7fd1caaf', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-85a1-4143-9644-dab75cf609a0', '9dafde48-3da0-4339-a70e-f5a0f34bf891'),
('9dafde49-8bc0-4c59-a4df-6305856ba3a0', '9dafde48-3da0-4339-a70e-f5a0f34bf891');

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_attributes`
--

CREATE TABLE `shop_product_attributes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` decimal(8,2) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_product_attributes`
--

INSERT INTO `shop_product_attributes` (`id`, `product_id`, `attribute_id`, `string_value`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `created_at`, `updated_at`) VALUES
('9dafde49-5edd-4e68-a288-b15a6b848b68', '9dafde49-14d8-4906-975a-5464b680aca1', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 505, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-6d27-4742-b1d4-1cd84ddc15c0', '9dafde49-690c-415b-8dd3-5a94d3b98e51', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 1719, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-7233-42bb-9617-41651e1de3c8', '9dafde49-6e24-483b-b0b6-9034d2edc546', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 1473, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-77af-4198-bac2-acc76ec23228', '9dafde49-7337-434f-bcbc-d18667358960', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 1322, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-7e4a-45e7-b54f-3ff12da83f46', '9dafde49-79da-494b-b0bd-b8f6ba4023d0', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 686, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-8481-44b6-82e9-7d00e62a2b8a', '9dafde49-805b-4c77-8422-5a2c7fd1caaf', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 388, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-89f9-4d77-aef2-23c4c3cdac2e', '9dafde49-85a1-4143-9644-dab75cf609a0', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 983, NULL, NULL, NULL, NULL, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde49-901c-4440-9266-6f7dca345a1c', '9dafde49-8bc0-4c59-a4df-6305856ba3a0', '9dafde48-1754-42c0-8f9d-ed48598c858e', NULL, NULL, NULL, 1622, NULL, NULL, NULL, NULL, '2024-12-09 16:25:42', '2024-12-09 16:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_inventories`
--

CREATE TABLE `shop_product_inventories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_attribute_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `low_stock_threshold` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_product_inventories`
--

INSERT INTO `shop_product_inventories` (`id`, `product_id`, `product_attribute_id`, `qty`, `low_stock_threshold`, `created_at`, `updated_at`) VALUES
('66d7c239-c4c4-11ef-8cd6-c01803cd0bb3', '9dafde49-6e24-483b-b0b6-9034d2edc546', '9dafde49-5edd-4e68-a288-b15a6b848b68', 300, 1, '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('bf79f8f1-c42d-11ef-9668-c01803cd0bb3', '9dafde49-14d8-4906-975a-5464b680aca1', '9dafde49-5edd-4e68-a288-b15a6b848b68', 50, 1, '2024-12-09 16:25:41', '2024-12-09 16:25:42'),
('c0d6caba-c494-11ef-b824-c01803cd0bb3', '9dafde49-85a1-4143-9644-dab75cf609a0', '9dafde49-5edd-4e68-a288-b15a6b848b68', 300, 1, '2024-12-09 16:25:41', '2024-12-09 16:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `shop_tags`
--

CREATE TABLE `shop_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_tags`
--

INSERT INTO `shop_tags` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
('9dafde48-3c3b-4938-9abb-36472ccb09c1', 'harum-beatae-atque', 'Harum beatae atque.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-3da0-4339-a70e-f5a0f34bf891', 'quia-blanditiis-eum', 'Quia blanditiis eum.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-3e57-48e3-93fc-3e61d286e88d', 'dolores-corrupti', 'Dolores corrupti.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-3f11-4b44-8788-eb50e8f7d2ce', 'eligendi-dolor-earum', 'Eligendi dolor earum.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-3fd6-4167-943a-bc82d7e6b936', 'necessitatibus-quas', 'Necessitatibus quas.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-40b5-4858-9063-7581af5cd807', 'totam-unde-officiis', 'Totam unde officiis.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-4179-449f-8bc2-45aafb1fc3b1', 'ut-similique-sunt', 'Ut similique sunt.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-423c-49e1-b6cd-e58c2148c83b', 'facilis-vero', 'Facilis vero.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-4331-42b4-8355-93eedc351777', 'id-voluptas-voluptatem', 'Id voluptas voluptatem.', '2024-12-09 16:25:41', '2024-12-09 16:25:41'),
('9dafde48-442d-48ae-b748-33ee5110a3d5', 'quidem-voluptas-temporibus', 'Quidem voluptas temporibus.', '2024-12-09 16:25:41', '2024-12-09 16:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('9d488923-5812-4e75-94c4-abc3ffde7ec5', 'Irfan', 'irfanmuzaki560@gmail.com', NULL, '$2y$12$CBLy5ANNIeIcNLjgTyKpXO3sCDTyANeiwgRP4Y4h84CATwlXhDChi', 'iSIjh1ChZ1gLIfumVEywuvKWB9ulDuJLYjR9t25wK1CHM27vWwmuzz0wxFiA', '2024-10-19 07:37:20', '2024-10-19 07:37:20'),
('9dafde40-1640-43be-8b6b-2c3aefc3cf82', 'Prof. Madilyn Krajcik V', 'dietrich.nathanial@example.net', '2024-12-09 16:25:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MOuoKIpecu', '2024-12-09 16:25:35', '2024-12-09 16:25:35'),
('9dcea28f-572c-40f0-9d78-d7efbbd59f77', 'Irfan', 'irfanmuzaki050903@gmail.com', NULL, '$2y$12$pguosBu2EkfF48PSkWCYw.uEIcJFtc6mVGC7qI0fEjizAW4jYV/PS', 'XExgg3YqUqvEOFEngjX1BU95VqkQL79xmY4lBiIOt2R8Gz2xLg1DX7ExUj95', '2024-12-24 23:29:21', '2024-12-24 23:29:21');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `shop_addresses`
--
ALTER TABLE `shop_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_addresses_user_id_index` (`user_id`);

--
-- Indexes for table `shop_attributes`
--
ALTER TABLE `shop_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_attribute_options`
--
ALTER TABLE `shop_attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_attribute_options_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_carts_user_id_index` (`user_id`),
  ADD KEY `shop_carts_expired_at_index` (`expired_at`);

--
-- Indexes for table `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `shop_cart_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_categories_slug_parent_id_unique` (`slug`,`parent_id`),
  ADD KEY `shop_categories_created_at_index` (`created_at`),
  ADD KEY `shop_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `shop_categories_products`
--
ALTER TABLE `shop_categories_products`
  ADD UNIQUE KEY `shop_categories_products_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `shop_categories_products_category_id_foreign` (`category_id`);

--
-- Indexes for table `shop_entities`
--
ALTER TABLE `shop_entities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_orders_code_unique` (`code`),
  ADD KEY `shop_orders_approved_by_foreign` (`approved_by`),
  ADD KEY `shop_orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `shop_orders_code_index` (`code`),
  ADD KEY `shop_orders_code_order_date_index` (`code`,`order_date`),
  ADD KEY `shop_orders_user_id_index` (`user_id`);

--
-- Indexes for table `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_order_items_order_id_foreign` (`order_id`),
  ADD KEY `shop_order_items_product_id_foreign` (`product_id`),
  ADD KEY `shop_order_items_sku_index` (`sku`);

--
-- Indexes for table `shop_payments`
--
ALTER TABLE `shop_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_payments_payment_type_index` (`payment_type`),
  ADD KEY `shop_payments_user_id_index` (`user_id`),
  ADD KEY `shop_payments_order_id_index` (`order_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_products_sku_parent_id_unique` (`sku`,`parent_id`),
  ADD KEY `shop_products_user_id_index` (`user_id`),
  ADD KEY `shop_products_parent_id_index` (`parent_id`),
  ADD KEY `shop_products_publish_date_index` (`publish_date`);

--
-- Indexes for table `shop_products_tags`
--
ALTER TABLE `shop_products_tags`
  ADD UNIQUE KEY `shop_products_tags_product_id_tag_id_unique` (`product_id`,`tag_id`),
  ADD KEY `shop_products_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `shop_product_attributes`
--
ALTER TABLE `shop_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_attributes_product_id_foreign` (`product_id`),
  ADD KEY `shop_product_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `shop_product_inventories`
--
ALTER TABLE `shop_product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_inventories_product_id_foreign` (`product_id`),
  ADD KEY `shop_product_inventories_product_attribute_id_foreign` (`product_attribute_id`);

--
-- Indexes for table `shop_tags`
--
ALTER TABLE `shop_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_tags_slug_unique` (`slug`),
  ADD KEY `shop_tags_created_at_index` (`created_at`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_entities`
--
ALTER TABLE `shop_entities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop_addresses`
--
ALTER TABLE `shop_addresses`
  ADD CONSTRAINT `shop_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_attribute_options`
--
ALTER TABLE `shop_attribute_options`
  ADD CONSTRAINT `shop_attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `shop_attributes` (`id`);

--
-- Constraints for table `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD CONSTRAINT `shop_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD CONSTRAINT `shop_cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `shop_carts` (`id`),
  ADD CONSTRAINT `shop_cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Constraints for table `shop_categories_products`
--
ALTER TABLE `shop_categories_products`
  ADD CONSTRAINT `shop_categories_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`),
  ADD CONSTRAINT `shop_categories_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Constraints for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD CONSTRAINT `shop_orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shop_orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shop_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD CONSTRAINT `shop_order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`),
  ADD CONSTRAINT `shop_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Constraints for table `shop_payments`
--
ALTER TABLE `shop_payments`
  ADD CONSTRAINT `shop_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`),
  ADD CONSTRAINT `shop_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_products_tags`
--
ALTER TABLE `shop_products_tags`
  ADD CONSTRAINT `shop_products_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_products_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `shop_tags` (`id`);

--
-- Constraints for table `shop_product_attributes`
--
ALTER TABLE `shop_product_attributes`
  ADD CONSTRAINT `shop_product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `shop_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_product_inventories`
--
ALTER TABLE `shop_product_inventories`
  ADD CONSTRAINT `shop_product_inventories_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `shop_product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
