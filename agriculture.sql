-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 07:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_registers`
--

CREATE TABLE `admin_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_registers`
--

INSERT INTO `admin_registers` (`id`, `username`, `email`, `mobile`, `dob`, `division`, `address`, `gender`, `password`, `profile_pic`, `condition`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'zns601@gmail.com', '01660144436', '1997-09-25', 'Dhaka', 'Kolabagan,Dhaka', 'male', '$2y$10$yQcf6ngoEj0ZcLV7H0iaqeooqYjTJR0ofJ.K6S93R47iQV6LlC1s6', 'null', 'verified', '2020-12-29 10:38:02', '2020-12-29 10:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `bid_messages`
--

CREATE TABLE `bid_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `crop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bid_messages`
--

INSERT INTO `bid_messages` (`id`, `crop_id`, `crop_name`, `f_username`, `cust_username`, `name`, `bid_price`, `message`, `created_at`, `updated_at`) VALUES
(10, '11', 'badacophy', 'sajedul', 'zulkarnine', 'Zulkar Nine', '5000', 'null', '2021-01-15 08:01:58', '2021-01-15 08:01:58'),
(11, '17', 'soyabean', 'zulkarnine', 'Faruqe', 'faruqe', '1500', 'null', '2021-01-15 09:31:07', '2021-01-15 09:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories_infos`
--

CREATE TABLE `categories_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_infos`
--

INSERT INTO `categories_infos` (`id`, `a_username`, `categories_name`, `categories_description`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, 'zulkarnine', 'fruits', 'that,s for fruits', '1', '2021-01-04 10:00:49', '2021-01-13 06:32:30'),
(2, 'zulkarnine', 'vegetables', 'that,s for vegetables', '1', '2021-01-04 10:40:00', '2021-01-04 10:40:00'),
(3, 'zulkarnine', 'food', 'that,s for food', '1', '2021-01-04 10:40:23', '2021-01-15 04:02:51'),
(4, 'zulkarnine', 'cash', 'that,s for cash', '1', '2021-01-04 10:40:53', '2021-01-04 10:40:53'),
(5, 'zulkarnine', 'plantation', 'thats for plantation', '1', '2021-01-04 10:41:11', '2021-01-04 10:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Zulkar Nine', 'zns601@gmail.com', '01989419776', 'hello i,m facing a problem', '2020-11-26 12:20:38', '2020-11-26 12:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `crop_imports`
--

CREATE TABLE `crop_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_session` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_quantity` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_date_bidding` date NOT NULL,
  `crop_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_image2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Action` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crop_imports`
--

INSERT INTO `crop_imports` (`id`, `username`, `crop_name`, `crop_session`, `crop_type`, `crop_quantity`, `crop_location`, `bid_rate`, `crop_description`, `last_date_bidding`, `crop_image`, `crop_image2`, `status`, `condition`, `Action`, `created_at`, `updated_at`) VALUES
(2, 'zulkarnine', 'Lichu', '2', '1', '23', 'araihazar,dhaka,bangladesh', '2345', 'hello', '2020-12-10', 'public/crop_images/1copy.PNG', 'public/crop_images/1copy.PNG', '0', 'old', 'deleted', '2020-11-26 04:15:21', '2021-01-13 00:03:14'),
(5, 'zulkarnine', 'sorisa', '3', '5', '1 bighas', 'rajshahi', '5000', 'made by bangladesh', '2020-12-31', 'public/crop_images/1610723217.mustard1.jpg', 'public/crop_images/1610723217.mustard2.jpg', '1', 'old', 'Published', '2020-12-01 01:02:55', '2021-01-15 09:08:11'),
(6, 'zulkarnine', 'komola', '1', '1', '10 tress', 'rajshahi', '40000', 'from bangladesh', '2020-12-25', 'public/crop_images/komola.jpg', 'public/crop_images/1610723961.orange2.jpg', '0', 'old', 'Unpublished', '2020-12-10 23:35:51', '2021-01-15 09:44:59'),
(7, 'zulkarnine', 'Lichu', '3', '1', '10 tress', 'araihazar1450,dhaka,bangladesh', '4000', 'from bangladesh', '2020-12-30', 'public/crop_images/1610723841.9.jpg', 'public/crop_images/download.jpg', '1', 'old', 'Published', '2020-12-21 01:00:24', '2021-01-15 09:24:48'),
(10, 'alomgir', 'grapes', '2', '1', '10 tress', 'khulna', '6000', 'for consumers', '2021-02-25', 'public/crop_images/1610715801.grapes.jpg', 'public/crop_images/1610715801.grapes2.jpg', '1', 'New', 'Published', '2021-01-15 07:03:21', '2021-01-15 07:58:31'),
(11, 'sajedul', 'badacophy', '2', '2', '10 bighas', 'chittagong', '5000', 'for consumers', '2021-01-28', 'public/crop_images/1610716188.Cabbage.jpg', 'public/crop_images/1610716188.Cabbage2.jpg', '1', 'New', 'Published', '2021-01-15 07:09:48', '2021-01-15 07:58:33'),
(12, 'zulkarnine', 'Rice', '3', '3', '40 kg', 'chittagong', '3000', 'for consumers', '2021-02-06', 'public/crop_images/1610721658.rice.jpg', 'public/crop_images/1610721658.rice2.jpg', '1', 'New', 'Published', '2021-01-15 08:40:58', '2021-01-15 08:41:11'),
(13, 'zulkarnine', 'tea', '1', '4', '1 bighas', 'Norshingdi', '9000', 'for consumers', '2021-02-15', 'public/crop_images/1610722084.tea.jpg', 'public/crop_images/1610722084.tea2.jpg', '1', 'New', 'Published', '2021-01-15 08:48:05', '2021-01-15 08:50:19'),
(14, 'zulkarnine', 'peaj', '1', '2', '40 kg', 'rajshahi', '6000', 'for consumers', '2021-02-16', 'public/crop_images/1610722836.Onion2.jpg', 'public/crop_images/1610722836.Onion.jpg', '1', 'New', 'Published', '2021-01-15 09:00:36', '2021-01-15 09:00:43'),
(15, 'zulkarnine', 'cotton', '2', '5', '20 trees', 'araihazar,dhaka,bangladesh', '10000', 'for consumers', '2021-02-22', 'public/crop_images/1610723102.cotton.jpg', 'public/crop_images/1610723102.cotton2.jpg', '1', 'New', 'Published', '2021-01-15 09:05:02', '2021-01-15 09:05:15'),
(16, 'zulkarnine', 'butta', '1', '3', '20kg', 'rajshahi', '500', 'for consumers', '2021-02-28', 'public/crop_images/1610723529.maize.jpg', 'public/crop_images/1610723529.maize2.jpg', '1', 'New', 'Published', '2021-01-15 09:12:09', '2021-01-15 09:15:41'),
(17, 'zulkarnine', 'soyabean', '1', '4', '1 bighas', 'raipura,dhaka', '1500', 'for consumer', '2021-01-25', 'public/crop_images/1610723734.syebean2.jpg', 'public/crop_images/1610723734.soyebean.jpg', '1', 'New', 'Published', '2021-01-15 09:15:34', '2021-01-15 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_registers`
--

CREATE TABLE `farmer_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_as` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmer_registers`
--

INSERT INTO `farmer_registers` (`id`, `register_as`, `username`, `email`, `mobile`, `dob`, `division`, `address`, `zip_code`, `gender`, `password`, `profile_pic`, `action`, `condition`, `created_at`, `updated_at`) VALUES
(1, 'farmer', 'zulkarnine', 'zns601@gmail.com', '01989419776', '1997-09-25', 'Dhaka', 'Kolabagan,Dhaka', '1205', 'male', '$2y$10$5EnTljBZoUBfb8.0zziQxev5RUYtA2pDfUtkvERTs3PPmd4WZoICG', 'null', 'active', 'verified', '2020-12-29 08:33:12', '2021-01-15 02:51:20'),
(2, 'farmer', 'alomgir', 'alomgir@gmail.com', '01876543567', '1996-05-24', 'Khulna', 'noton bazar', '1211', 'male', '$2y$10$296c5wRUL5sUJNG8ZqX/FeE.C5rCEtf2/XDHU963AUVe/ua4UuhU6', 'null', 'active', 'verified', '2021-01-15 06:30:02', '2021-01-15 06:30:02'),
(3, 'farmer', 'Faruqe', 'faruqe@gmail.com', '01969084620', '1997-07-12', 'Dhaka', 'raipura', '1615', 'male', '$2y$10$QrWtmO4w4LuSipeRLKFBVOKJOn/WtKvOjHbFjs/DPUSE/WewSo4SC', 'null', 'active', 'verified', '2021-01-15 06:32:00', '2021-01-15 06:32:00'),
(4, 'farmer', 'sajedul', 'sajedul@gmail.com', '01888344856', '1995-09-26', 'Chittagong', '90/A road, hathazari', '1234', 'male', '$2y$10$oCKO0K1OG5wrJhjZNyIkO.Xv8RTg4tiaS4S5n/CRJwx6LN46h4fKK', 'null', 'active', 'verified', '2021-01-15 06:34:52', '2021-01-15 06:34:52'),
(5, 'farmer', 'hossain', 'hossain@gmail.com', '01764578235', '1993-04-30', 'Barishal', 'kuakata', '1567', 'male', '$2y$10$M4NEU4pJ/G/tyOdP.QhOGuuLF7SSTR2YpEiUohCIkBn7R/j7ZldeW', 'null', 'active', 'verified', '2021-01-15 06:37:32', '2021-01-15 06:37:32');

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
(7, '2020_10_28_052526_create_crop_imports_table', 3),
(8, '2020_10_28_093532_create_bid_messages_table', 4),
(10, '2020_10_28_125609_create_contact_messages_table', 6),
(11, '2020_10_28_160503_create_news_infos_table', 7),
(15, '2020_10_26_124324_create_farmer_registers_table', 8),
(16, '2020_10_26_125741_create_user_registers_table', 8),
(18, '2020_10_28_140943_create_admin_registers_table', 9),
(19, '2021_01_04_154438_create_categories_infos_table', 10),
(20, '2020_10_29_091039_create_pay_confirm_messages_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `news_infos`
--

CREATE TABLE `news_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_infos`
--

INSERT INTO `news_infos` (`id`, `username`, `news_name`, `news_description`, `long_description`, `news_image`, `created_at`, `updated_at`) VALUES
(2, 'zulkarnine', 'our_services', 'Bangladesh', 'hello heck', 'public/news_images/assignment-3.PNG', '2020-12-01 03:01:37', '2020-12-01 03:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `pay_confirm_messages`
--

CREATE TABLE `pay_confirm_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `crop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_confirm_messages`
--

INSERT INTO `pay_confirm_messages` (`id`, `crop_id`, `f_username`, `crop_name`, `cust_username`, `account_pay`, `confirm_price`, `message`, `created_at`, `updated_at`) VALUES
(1, '17', 'zulkarnine', 'soyabean', 'Faruqe', '01989419776', '500', 'null', '2021-01-15 09:36:10', '2021-01-15 09:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_registers`
--

CREATE TABLE `user_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_as` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `division` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_registers`
--

INSERT INTO `user_registers` (`id`, `register_as`, `username`, `email`, `mobile`, `dob`, `division`, `address`, `zip_code`, `gender`, `password`, `profile_pic`, `action`, `condition`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'zulkarnine', 'zns601@gmail.com', '01660144436', '1997-09-25', 'Dhaka', 'Kolabagan,Dhaka', '1205', 'male', '$2y$10$szL3ySjeYWF3Sb.Yg6x9W.zoSY5fvmnPuOZ7qG1e8pwXaoJ2PbfZO', 'null', 'active', 'verified', '2020-12-29 08:35:19', '2021-01-15 02:51:34'),
(2, 'customer', 'alomgir', 'alomgir@gmail.com', '01876543567', '1995-09-26', 'Dhaka', 'noton bazar', '1211', 'male', '$2y$10$R6R8S2jH0unUaBNY3i76wuX.PERvwc4ePLWbAztSNai.Vji88.yuu', 'null', 'active', 'verified', '2021-01-15 06:39:57', '2021-01-15 06:39:57'),
(3, 'customer', 'Faruqe', 'faruqe@gmail.com', '01969084620', '1996-04-02', 'Chittagong', 'hathhazari', '1506', 'male', '$2y$10$DcVBqY1SDCcJAiI7RQ/8qOu8jqbOedKXlj7m2SU1vQZQCaCspkboO', 'null', 'active', 'verified', '2021-01-15 06:41:15', '2021-01-15 06:41:15'),
(4, 'customer', 'sajedul', 'sajedul@gmail.com', '01888344856', '1994-12-26', 'Dhaka', '1606', '1606', 'male', '$2y$10$DVGvgGtOX06EkWHXZNiwtOaX7t9AXmxbag3PIlAO9rPiJhRHRHUci', 'null', 'active', 'verified', '2021-01-15 06:44:45', '2021-01-15 06:44:45'),
(5, 'customer', 'hossain', 'hossain@gmail.com', '01764578235', '1999-05-31', 'Comilla', '45 kollandi', '1703', 'male', '$2y$10$1dr1SbMaNufMXIi0r3G/dOhMVRzdVnqcCGWiueYWNfUVoqZMyD2AK', 'null', 'active', 'verified', '2021-01-15 06:47:37', '2021-01-15 06:47:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_registers`
--
ALTER TABLE `admin_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_messages`
--
ALTER TABLE `bid_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_infos`
--
ALTER TABLE `categories_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crop_imports`
--
ALTER TABLE `crop_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_registers`
--
ALTER TABLE `farmer_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_infos`
--
ALTER TABLE `news_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_confirm_messages`
--
ALTER TABLE `pay_confirm_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registers`
--
ALTER TABLE `user_registers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_registers`
--
ALTER TABLE `admin_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bid_messages`
--
ALTER TABLE `bid_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories_infos`
--
ALTER TABLE `categories_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crop_imports`
--
ALTER TABLE `crop_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `farmer_registers`
--
ALTER TABLE `farmer_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news_infos`
--
ALTER TABLE `news_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_confirm_messages`
--
ALTER TABLE `pay_confirm_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_registers`
--
ALTER TABLE `user_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
