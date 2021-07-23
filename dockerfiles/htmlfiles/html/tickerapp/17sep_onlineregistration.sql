-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2018 at 07:02 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineregistration`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`created_at`, `updated_at`) VALUES
('2018-08-06 02:24:35', '2018-08-06 02:24:35'),
('2018-08-06 02:32:07', '2018-08-06 02:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyemail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `companyemail`, `companyname`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ram', 'sharma', 'ram.sharma@com', 'RAM.E', 'ram', '2018-08-06 08:14:52', '2018-08-06 08:14:52'),
(2, 'ajay', 'sharma', 'ajay.sharma@com', 'AJAY.E', 'ajay', '2018-08-06 08:17:19', '2018-08-06 08:17:19'),
(3, 'aby', 'sharma', 'aby@sss', 'ABY.E', 'aby', '2018-08-06 08:37:42', '2018-08-06 08:37:42'),
(4, 'avi', 'dube', 'err@gmail.com', 'AVI.E', 'avi', '2018-08-06 09:34:14', '2018-08-06 09:34:14'),
(5, 'tanvi', 'savant', 'tanvo@32', 'tanvi', 'savant', '2018-08-07 00:11:52', '2018-08-07 00:11:52'),
(6, 'HEMA', 'DAS', 'hema@das.com', 'H.T.C', 'HEMA@123', '2018-08-14 10:52:52', '2018-08-14 10:52:52'),
(7, 'Yomi', 'Davies', 'info@spantreeng.com', 'SpanSigns Ltd', 'sp@ntr33', '2018-08-14 16:24:12', '2018-08-14 16:24:12'),
(8, 'neha', 'rave', 'neha@ghh.om', 'neha', 'neha@123', '2018-08-16 06:51:31', '2018-08-16 06:51:31'),
(23, 'Saba', 'shaikh', 'saba.ilexsquare@gmail.com', '12345', '12345', '2018-08-09 06:42:00', '2018-08-09 06:42:00'),
(27, 'yomi', 'yomi', 'yomii@spantreeng.com', 'spantree', '1', '2018-08-23 13:01:38', '2018-08-23 13:01:38'),
(28, 'Seun', 'Olowolagba', 'seunolowolagba1@gmail.com', 'LCT', 'seun01', '2018-08-23 13:09:10', '2018-08-23 13:09:10'),
(29, 'Abc', 'Xyz', 'abc@xyz.com', 'ABC.E', 'abc', '2018-08-29 07:55:22', '2018-08-29 07:55:22'),
(30, 'Saba11', 'Ticker', 'saba.ticker1@test.com', 'SabaTicker', '12345', '2018-09-07 14:54:24', '2018-09-07 14:54:24'),
(31, 'span', 'spantree', 'span.spantree@yahoo.com', 'spantree', '1', '2018-09-07 17:11:23', '2018-09-07 17:11:23'),
(32, 'saba.ticker2@test.com', 'Ticker app', 'saba.ticker2@test.com', 'Ticker app', '12345', '2018-09-10 12:46:09', '2018-09-10 12:46:09'),
(33, 'span.spantree@yahoo.com', 'Ticker app', 'span.spantree@yahoo.com', 'odoo', '12345', '2018-09-10 14:52:40', '2018-09-10 14:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `graphs`
--

CREATE TABLE `graphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `graphs`
--

INSERT INTO `graphs` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'bar', NULL, NULL),
(2, 'pie', NULL, NULL),
(3, 'line', NULL, NULL),
(4, 'stock', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hellos`
--

CREATE TABLE `hellos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingoings`
--

CREATE TABLE `ingoings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ingoing_id` int(10) UNSIGNED NOT NULL,
  `ingoing_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_02_01_233219_create_users_table', 1),
(3, '2017_02_02_232450_add_confirmation', 1),
(4, '2017_03_10_233219_create_categories_table', 1),
(5, '2017_03_10_233219_create_posts_table', 1),
(6, '2017_03_10_233220_create_comments_table', 1),
(7, '2017_03_10_233220_create_contacts_table', 1),
(8, '2017_03_10_233220_create_ingoings_table', 1),
(9, '2017_03_10_233220_create_notifications_table', 1),
(10, '2017_03_10_233220_create_post_tag_table', 1),
(11, '2017_03_10_233220_create_tags_table', 1),
(12, '2017_03_18_145906_create_category_post_table', 1),
(13, '2017_03_18_145916_create_foreign_keys', 1),
(14, '2018_08_06_062628_create_candidates_table', 1),
(15, '2018_08_06_113850_create_customers_table', 2),
(16, '2018_08_06_114739_create_hellos_table', 2),
(17, '2018_08_10_062947_create_tickers_table', 3),
(18, '2018_08_14_092300_create_tickers_data_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_role`, `created_at`, `updated_at`, `user_name`, `company`) VALUES
(3, 'user', '2018-08-11 11:03:18', '2018-08-11 11:03:18', 'LKK', 23),
(10, 'admin', '2018-08-14 11:03:28', '2018-08-14 11:03:28', 'AKK', 3),
(12, 'user', '2018-08-18 08:06:55', '2018-08-18 08:06:55', 'Test 2', 3),
(13, 'admin', '2018-08-18 08:12:38', '2018-08-18 08:12:38', 'Tester', 23),
(14, 'user', '2018-08-18 08:33:05', '2018-08-18 08:33:05', 'Tester', 3),
(15, 'Tester', '2018-08-20 14:09:14', '2018-08-20 14:09:14', 'first', 6),
(18, 'Input data', '2018-08-23 13:46:18', '2018-08-23 13:46:18', 'Seun', 28),
(19, 'Export data', '2018-08-23 13:46:47', '2018-08-23 13:46:47', 'Yomi', 28),
(20, 'Developer', '2018-09-07 14:56:41', '2018-09-07 14:56:41', 'Developer', 30),
(21, 'manager', '2018-09-07 14:56:57', '2018-09-07 14:56:57', 'Manager', 30),
(22, 'teamlead', '2018-09-07 14:57:13', '2018-09-07 14:57:13', 'Team Leader', 30),
(23, 'demo', '2018-09-07 17:15:48', '2018-09-07 17:15:48', 'Testdemo', 31),
(24, 'showdemo', '2018-09-08 14:00:33', '2018-09-08 14:00:33', 'serverdemo', 31),
(25, 'Manager', '2018-09-10 12:51:19', '2018-09-10 12:51:19', 'Manager', 32),
(26, 'Developer', '2018-09-10 12:52:06', '2018-09-10 12:52:06', 'Developer', 32),
(27, 'Sales', '2018-09-10 13:20:31', '2018-09-10 13:20:31', 'Sales', 27),
(28, 'Programmer', '2018-09-10 13:48:48', '2018-09-10 13:48:48', 'Programmer', 27),
(29, 'Developer', '2018-09-10 14:37:14', '2018-09-10 14:37:14', 'Developer', 27),
(32, 'Prof', '2018-09-11 08:49:34', '2018-09-11 08:49:34', 'Prof', 33);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickers`
--

CREATE TABLE `tickers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticker_direction` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_fontsize` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_background_color` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_text_color` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_fileds` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_visisble_fileds` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickers`
--

INSERT INTO `tickers` (`id`, `name`, `type`, `company`, `created_at`, `updated_at`, `ticker_direction`, `ticker_fontsize`, `ticker_background_color`, `ticker_text_color`, `ticker_fileds`, `ticker_visisble_fileds`, `role`, `message`) VALUES
(1, '1st Bond  Ticker', '1', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', 'Coupon,Maturity Date,Price,Yield,Change in Yield', 'Coupon,Maturity Date,Price,Yield,Change in Yield', '', ''),
(2, '2nd Bond Ticker', '1', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', '', '', '', ''),
(3, 'One Bills Ticker', '2', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', '', '', '', ''),
(4, 'Two Bills Ticker', '2', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', '', '', '', ''),
(5, 'Five Scroll ticker', '3', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', 'R', '0', '#000000', '#000000', 'NA', 'na', '', ''),
(6, '1 Scroll ticker', '3', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', '', '', '', ''),
(7, 'FX Ticker 1', '4', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', '', '', '', ''),
(8, 'FX Ticker 2', '4', 23, '2018-08-10 00:00:00', '2018-08-10 00:00:00', '0', '0', '0', '0', '', '', '', ''),
(9, 'Fx Demo 01', '29', 29, '2018-08-13 13:57:41', '2018-08-13 13:57:41', 'L', '20', '#c0c0c0', '#ff0000', '', '', '', ''),
(10, 'Fx Demo 02', '32', 23, '2018-08-14 10:45:42', '2018-08-14 10:45:42', 'R', '15', '#ffffff', '#ff00ff', 'name,yeild,test1', 'name,yeild,test1', '', ''),
(44, 'JJ', '31', 3, '2018-08-20 11:21:09', '2018-08-20 11:21:09', 'L', '45', '#000000', '#ff0000', 'name,yeild,test', 'name,yeild,test1', '10,12', ''),
(45, 'Tester NEW 3', '29', 3, '2018-08-20 12:45:11', '2018-08-20 12:45:11', 'R', '20', '#000000', '#ff0000', 'name,yeild,test2', 'name,yeild,test1', '10,12', ''),
(46, 'Kiran NEW user', '29', 3, '2018-08-20 12:48:04', '2018-08-20 12:48:04', 'R', '20', '#000000', '#ff0000', 'name,yeild,test', 'name,yeild,test1', '12,14', ''),
(47, 'New ticker', '32', 3, '2018-08-20 15:29:21', '2018-08-20 15:29:21', 'R', '20', '#000000', '#ff0000', 'name,yeild,test2', 'name,yeild,test1', '10,12,14', ''),
(48, 'JPL', '31', 3, '2018-08-21 09:10:04', '2018-08-21 09:10:04', 'R', '20', '#000000', '#ff0000', 'name,yeild,test', 'name,yeild,test1', '10,12,14', 'HEY jpl'),
(49, 'span', '29', 27, '2018-08-23 13:52:53', '2018-08-23 13:52:53', 'L', '60', '#000000', '#ff0000', 'fg bond', 'fg bond', '16', 'this looks good'),
(50, 'Ticker 1', '32', 28, '2018-08-23 13:53:50', '2018-08-23 13:53:50', 'L', '12', '#000000', '#ff0000', 'EURUSD, GBPUSD, USDJPY', '1.1467', '18', 'The ask and bid price'),
(51, 'Fx Demo 012', '50', 30, '2018-09-07 15:04:43', '2018-09-07 15:04:43', 'R', '15', '#ffffff', '#ff0000', 'name,yeild,test1', 'name,yeild,test1', '20,21,22', 'Test message'),
(52, 'spantree ticker', '29', 31, '2018-09-07 17:25:18', '2018-09-07 17:25:18', 'L', '10', '#9e8193', '#ff0000', 'fg bond', 'fg bond', '23', 'this looks good'),
(53, 'spantree ticker', '29', 31, '2018-09-07 18:22:58', '2018-09-07 18:22:58', 'L', '10', '#000000', '#ff0000', 'FGN BONDS', 'FGN BONDS', '23', 'FGN BONDS'),
(54, 'spantree ticker', '32', 31, '2018-09-07 18:33:33', '2018-09-07 18:33:33', 'R', '15', '#000000', '#ff0000', 'FX', 'FX', '23', 'Forex'),
(55, 'spantree ticker', '29', 31, '2018-09-07 18:47:01', '2018-09-07 18:47:01', 'L', '10', '#000000', '#ff0000', 'FGN BONDS', 'FGN BONDS', '23', 'For FGN BOND'),
(56, 'spantree ticker', '30', 31, '2018-09-07 19:02:06', '2018-09-07 19:02:06', 'L', '5', '#000000', '#ff0000', 'T-Bills', 'T-Bills', '23', 'T-Bills...T-Bill'),
(57, 'Mycompany', '30', 31, '2018-09-07 19:08:17', '2018-09-07 19:08:17', 'R', '5', '#9a3b3b', '#ff0000', 'T-Bills', 'T-Bills', '23', 'T-Bills...T-Bill'),
(58, 'Mycompany', '50', 31, '2018-09-07 19:24:42', '2018-09-07 19:24:42', 'L', '5', '#000000', '#ff0000', 'FX Demo 11', 'FX Demo 11', '23', 'This is good'),
(59, 'spantree ticker', '29', 31, '2018-09-08 14:01:50', '2018-09-08 14:01:50', 'L', '23', '#a54949', '#ff0000', 'FGN BONDS', 'FGN BONDS', '24', 'FGN BONDS'),
(60, 'Bills Demo Ticker 001', '50', 23, '2018-09-10 11:38:09', '2018-09-10 11:38:09', 'L', '25', '#ffffff', '#ff0000', 'name,yeild,test1', 'name,yeild,test1', '3,13', 'Test message'),
(61, 'Buy This 1', '29', 30, '2018-09-10 11:40:43', '2018-09-10 11:40:43', 'L', '12', '#000000', '#ff0000', 'name,yeild,test1', 'name,yeild,test1', '20,21,22', 'Test message'),
(62, 'Test Ticker 1', '29', 32, '2018-09-10 12:58:04', '2018-09-10 12:58:04', 'L', '12', '#000000', '#ff0000', 'Price,Quantity,Sale Price', 'Price,Quantity,Sale Price', '25', 'Price,Quantity,Sale Price'),
(63, 'Test Ticker 1', '29', 27, '2018-09-10 13:28:56', '2018-09-10 13:28:56', 'L', '10', '#000004', '#00ff05', 'Price,Quantity,Sale Price', 'Price,Quantity,Sale Price', '27', 'Price,Quantity,Sale Price'),
(64, 'Programmer', '32', 27, '2018-09-10 13:56:21', '2018-09-10 13:56:21', 'R', '20', '#000000', '#6eff00', 'S/n,Name,Department', 'S/n,Name,Department', '28', 'S/n,Name,Department'),
(65, 'Programmer', '30', 27, '2018-09-10 14:09:26', '2018-09-10 14:09:26', 'L', '12', '#000000', '#ff0000', 'Price,Quantity,Sale Price', 'Price,Quantity,Sale Price', '28', 'Price,Quantity,Sale Price'),
(66, 'Test Ticker 1', '29', 27, '2018-09-10 14:13:18', '2018-09-10 14:13:18', 'L', '12', '#000000', '#ff0000', 'Price,Quantity,Sale Price', 'Price,Quantity,Sale Price', '27', 'Price,Quantity,Sale Price'),
(67, 'Test Ticker 1', '29', 27, '2018-09-10 14:41:31', '2018-09-10 14:41:31', 'L', '12', '#000000', '#00ff3b', 'Price,Quantity,Sale Price', 'Price,Quantity,Sale Price', '29', 'Price,Quantity,Sale Price'),
(71, 'Test User', '29', 33, '2018-09-11 08:53:02', '2018-09-11 08:53:02', 'L', '10', '#ce4545', '#ff0000', 'Price,Quatity,Sale Price', 'Price,Quatity,Sale Price', '32', 'Price,Quatity,Sale Price'),
(72, 'Test User 1', '29', 33, '2018-09-11 09:01:38', '2018-09-11 09:01:38', 'L', '12', '#d87c7c', '#ff0000', 'Price,Quatity,Sale Price', 'Price,Quatity,Sale Price', '32', 'Price,Quatity,Sale Price');

-- --------------------------------------------------------

--
-- Table structure for table `tickers_data`
--

CREATE TABLE `tickers_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `tickerid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickers_data`
--

INSERT INTO `tickers_data` (`id`, `tickerid`, `data`, `created_at`, `updated_at`) VALUES
(1, '1', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(2, '1', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(3, '1', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(4, '1', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(5, '1', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(6, '1', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(7, '1', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-08-14 12:17:17', '2018-08-14 12:17:17'),
(8, '1', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(9, '1', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(10, '1', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(11, '1', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(12, '1', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(13, '1', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(14, '1', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-08-14 13:11:22', '2018-08-14 13:11:22'),
(15, '2', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(16, '2', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(17, '2', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(18, '2', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(19, '2', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(20, '2', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(21, '2', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-08-14 13:16:14', '2018-08-14 13:16:14'),
(22, '51', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(23, '51', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(24, '51', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(25, '51', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(26, '51', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(27, '51', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(28, '51', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-07 15:17:48', '2018-09-07 15:17:48'),
(29, '51', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(30, '51', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(31, '51', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(32, '51', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(33, '51', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(34, '51', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(35, '51', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-07 15:22:05', '2018-09-07 15:22:05'),
(36, '52', 'External ID,Price,Quantity On Hand,Sale Price,Name', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(37, '52', '__export__.product_template_127,0,20,5000,105', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(38, '52', '__export__.product_template_112,0,20,50000,303', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(39, '52', '__export__.product_template_88,0,20,500,Afang Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(40, '52', '__export__.product_template_96,0,20,350,Bagel', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(41, '52', '__export__.product_template_78,0,20,1000,Banana Pancake', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(42, '52', '__export__.product_template_73,0,20,500,Banga Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(43, '52', '__export__.product_template_81,0,20,200,Beanscake', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(44, '52', '__export__.product_template_7,0,20,450,Beef Burger', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(45, '52', '__export__.product_template_71,0,20,200,Big Bottle water', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(46, '52', '__export__.product_template_85,0,20,350,Bitterleaf Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(47, '52', '__export__.product_template_97,0,20,200,Brownies', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(48, '52', '__export__.product_template_105,0,20,200,Burrito Fish Wrap', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(49, '52', '__export__.product_template_83,0,20,2000,Cake', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(50, '52', '__export__.product_template_79,0,20,1500,Catfish Peppersoup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(51, '52', '__export__.product_template_66,0,20,2000,Cereal & Milk', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(52, '52', '__export__.product_template_64,0,20,700,Chocolate Milk', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(53, '52', '__export__.product_template_65,0,20,200,Coffee', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(54, '52', '__export__.product_template_70,0,20,200,Coke', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(55, '52', '__export__.product_template_117,0,20,1,D101', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(56, '52', '__export__.product_template_111,0,20,1,Deluxe', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(57, '52', '__export__.product_template_114,0,20,5000,Deluxe 101', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(58, '52', '__export__.product_template_128,0,20,30000,DLX 401', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(59, '52', '__export__.product_template_101,0,20,150,Donut', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(60, '52', '__export__.product_template_100,0,20,250,Donut with Sprinkles', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(61, '52', '__export__.product_template_91,0,20,400,Egg/Veg/Lime Burrito', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(62, '52', '__export__.product_template_89,0,20,250,Egusi Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(63, '52', '__export__.product_template_129,0,20,25000,Ex 501', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(64, '52', '__export__.product_template_130,0,20,40000,Ex 502', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(65, '52', '__export__.product_template_131,0,20,25000,EX 503', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(66, '52', '__export__.product_template_113,0,20,20000,Executive-401', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(67, '52', '__export__.product_template_104,0,20,300,FishFillet Burger', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(68, '52', '__export__.product_template_106,0,20,300,Fried Egg', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(69, '52', '__export__.product_template_77,0,20,200,Fruit Cake', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(70, '52', '__export__.product_template_99,0,20,200,Hash Brown', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(71, '52', '__export__.product_template_90,0,20,300,Longtail Burger', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(72, '52', '__export__.product_template_63,0,20,200,Milk', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(73, '52', '__export__.product_template_69,0,20,200,Mountain Dew', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(74, '52', '__export__.product_template_87,0,20,200,Nsala Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(75, '52', '__export__.product_template_84,0,20,300,Okro Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(76, '52', '__export__.product_template_67,0,20,250,Orange Juice', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(77, '52', '__export__.product_template_68,0,20,200,Pepsi', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(78, '52', '__export__.product_template_74,0,20,800,Plantain Porridge', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(79, '52', '__export__.product_template_122,0,20,1500,pounded yam', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(80, '52', '__export__.product_template_80,0,20,1000,Pounded yam', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(81, '52', '__export__.product_template_82,0,20,1000,Prawn Vegetable rice', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(82, '52', '__export__.product_template_107,0,20,1,Service', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(83, '52', '__export__.product_template_93,0,20,350,Sliced Bread', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(84, '52', '__export__.product_template_72,0,20,200,Small bottle water', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(85, '52', '__export__.product_template_95,0,20,500,Srambled Egg/Veg Burrito', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(86, '52', '__export__.product_template_102,0,20,500,Steak & Egg Burger', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(87, '52', '__export__.product_template_98,0,20,500,Steak Egg Cheese Bagel', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(88, '52', '__export__.product_template_115,0,20,2000,Swimming Pool', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(89, '52', '__export__.product_template_92,0,20,200,Toast', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(90, '52', '__export__.product_template_75,0,20,600,Vegetable Salad', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(91, '52', '__export__.product_template_86,0,20,500,Vegetable Soup', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(92, '52', '__export__.product_template_6,0,20,1300,Vegetable soup and Fufu', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(93, '52', '__export__.product_template_94,0,20,1,Veg/Ham/Cheese Burrito', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(94, '52', '__export__.product_template_103,0,20,200,Waffle Egg Burger', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(95, '52', '__export__.product_template_76,0,20,1000,Yam Pottage', '2018-09-07 18:30:16', '2018-09-07 18:30:16'),
(96, '54', 'External ID,Quantity On Hand', '2018-09-07 18:34:40', '2018-09-07 18:34:40'),
(97, '54', '__export__.product_template_296,3', '2018-09-07 18:34:40', '2018-09-07 18:34:40'),
(98, '54', '__export__.product_template_301,3', '2018-09-07 18:34:40', '2018-09-07 18:34:40'),
(99, '54', '__export__.product_template_295,3', '2018-09-07 18:34:40', '2018-09-07 18:34:40'),
(100, '52', 'External ID,Price,Quantity On Hand,Sale Price,Name', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(101, '52', '__export__.product_template_127,0,20,5000,105', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(102, '52', '__export__.product_template_112,0,20,50000,303', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(103, '52', '__export__.product_template_88,0,20,500,Afang Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(104, '52', '__export__.product_template_96,0,20,350,Bagel', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(105, '52', '__export__.product_template_78,0,20,1000,Banana Pancake', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(106, '52', '__export__.product_template_73,0,20,500,Banga Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(107, '52', '__export__.product_template_81,0,20,200,Beanscake', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(108, '52', '__export__.product_template_7,0,20,450,Beef Burger', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(109, '52', '__export__.product_template_71,0,20,200,Big Bottle water', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(110, '52', '__export__.product_template_85,0,20,350,Bitterleaf Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(111, '52', '__export__.product_template_97,0,20,200,Brownies', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(112, '52', '__export__.product_template_105,0,20,200,Burrito Fish Wrap', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(113, '52', '__export__.product_template_83,0,20,2000,Cake', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(114, '52', '__export__.product_template_79,0,20,1500,Catfish Peppersoup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(115, '52', '__export__.product_template_66,0,20,2000,Cereal & Milk', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(116, '52', '__export__.product_template_64,0,20,700,Chocolate Milk', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(117, '52', '__export__.product_template_65,0,20,200,Coffee', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(118, '52', '__export__.product_template_70,0,20,200,Coke', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(119, '52', '__export__.product_template_117,0,20,1,D101', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(120, '52', '__export__.product_template_111,0,20,1,Deluxe', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(121, '52', '__export__.product_template_114,0,20,5000,Deluxe 101', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(122, '52', '__export__.product_template_128,0,20,30000,DLX 401', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(123, '52', '__export__.product_template_101,0,20,150,Donut', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(124, '52', '__export__.product_template_100,0,20,250,Donut with Sprinkles', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(125, '52', '__export__.product_template_91,0,20,400,Egg/Veg/Lime Burrito', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(126, '52', '__export__.product_template_89,0,20,250,Egusi Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(127, '52', '__export__.product_template_129,0,20,25000,Ex 501', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(128, '52', '__export__.product_template_130,0,20,40000,Ex 502', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(129, '52', '__export__.product_template_131,0,20,25000,EX 503', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(130, '52', '__export__.product_template_113,0,20,20000,Executive-401', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(131, '52', '__export__.product_template_104,0,20,300,FishFillet Burger', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(132, '52', '__export__.product_template_106,0,20,300,Fried Egg', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(133, '52', '__export__.product_template_77,0,20,200,Fruit Cake', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(134, '52', '__export__.product_template_99,0,20,200,Hash Brown', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(135, '52', '__export__.product_template_90,0,20,300,Longtail Burger', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(136, '52', '__export__.product_template_63,0,20,200,Milk', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(137, '52', '__export__.product_template_69,0,20,200,Mountain Dew', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(138, '52', '__export__.product_template_87,0,20,200,Nsala Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(139, '52', '__export__.product_template_84,0,20,300,Okro Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(140, '52', '__export__.product_template_67,0,20,250,Orange Juice', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(141, '52', '__export__.product_template_68,0,20,200,Pepsi', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(142, '52', '__export__.product_template_74,0,20,800,Plantain Porridge', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(143, '52', '__export__.product_template_122,0,20,1500,pounded yam', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(144, '52', '__export__.product_template_80,0,20,1000,Pounded yam', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(145, '52', '__export__.product_template_82,0,20,1000,Prawn Vegetable rice', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(146, '52', '__export__.product_template_107,0,20,1,Service', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(147, '52', '__export__.product_template_93,0,20,350,Sliced Bread', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(148, '52', '__export__.product_template_72,0,20,200,Small bottle water', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(149, '52', '__export__.product_template_95,0,20,500,Srambled Egg/Veg Burrito', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(150, '52', '__export__.product_template_102,0,20,500,Steak & Egg Burger', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(151, '52', '__export__.product_template_98,0,20,500,Steak Egg Cheese Bagel', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(152, '52', '__export__.product_template_115,0,20,2000,Swimming Pool', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(153, '52', '__export__.product_template_92,0,20,200,Toast', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(154, '52', '__export__.product_template_75,0,20,600,Vegetable Salad', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(155, '52', '__export__.product_template_86,0,20,500,Vegetable Soup', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(156, '52', '__export__.product_template_6,0,20,1300,Vegetable soup and Fufu', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(157, '52', '__export__.product_template_94,0,20,1,Veg/Ham/Cheese Burrito', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(158, '52', '__export__.product_template_103,0,20,200,Waffle Egg Burger', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(159, '52', '__export__.product_template_76,0,20,1000,Yam Pottage', '2018-09-07 18:48:36', '2018-09-07 18:48:36'),
(160, '56', 'External ID,Price,Quantity On Hand,Sale Price,Name', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(161, '56', '__export__.product_template_127,0,20,5000,105', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(162, '56', '__export__.product_template_112,0,20,50000,303', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(163, '56', '__export__.product_template_88,0,20,500,Afang Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(164, '56', '__export__.product_template_96,0,20,350,Bagel', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(165, '56', '__export__.product_template_78,0,20,1000,Banana Pancake', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(166, '56', '__export__.product_template_73,0,20,500,Banga Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(167, '56', '__export__.product_template_81,0,20,200,Beanscake', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(168, '56', '__export__.product_template_7,0,20,450,Beef Burger', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(169, '56', '__export__.product_template_71,0,20,200,Big Bottle water', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(170, '56', '__export__.product_template_85,0,20,350,Bitterleaf Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(171, '56', '__export__.product_template_97,0,20,200,Brownies', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(172, '56', '__export__.product_template_105,0,20,200,Burrito Fish Wrap', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(173, '56', '__export__.product_template_83,0,20,2000,Cake', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(174, '56', '__export__.product_template_79,0,20,1500,Catfish Peppersoup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(175, '56', '__export__.product_template_66,0,20,2000,Cereal & Milk', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(176, '56', '__export__.product_template_64,0,20,700,Chocolate Milk', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(177, '56', '__export__.product_template_65,0,20,200,Coffee', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(178, '56', '__export__.product_template_70,0,20,200,Coke', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(179, '56', '__export__.product_template_117,0,20,1,D101', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(180, '56', '__export__.product_template_111,0,20,1,Deluxe', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(181, '56', '__export__.product_template_114,0,20,5000,Deluxe 101', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(182, '56', '__export__.product_template_128,0,20,30000,DLX 401', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(183, '56', '__export__.product_template_101,0,20,150,Donut', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(184, '56', '__export__.product_template_100,0,20,250,Donut with Sprinkles', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(185, '56', '__export__.product_template_91,0,20,400,Egg/Veg/Lime Burrito', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(186, '56', '__export__.product_template_89,0,20,250,Egusi Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(187, '56', '__export__.product_template_129,0,20,25000,Ex 501', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(188, '56', '__export__.product_template_130,0,20,40000,Ex 502', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(189, '56', '__export__.product_template_131,0,20,25000,EX 503', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(190, '56', '__export__.product_template_113,0,20,20000,Executive-401', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(191, '56', '__export__.product_template_104,0,20,300,FishFillet Burger', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(192, '56', '__export__.product_template_106,0,20,300,Fried Egg', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(193, '56', '__export__.product_template_77,0,20,200,Fruit Cake', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(194, '56', '__export__.product_template_99,0,20,200,Hash Brown', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(195, '56', '__export__.product_template_90,0,20,300,Longtail Burger', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(196, '56', '__export__.product_template_63,0,20,200,Milk', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(197, '56', '__export__.product_template_69,0,20,200,Mountain Dew', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(198, '56', '__export__.product_template_87,0,20,200,Nsala Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(199, '56', '__export__.product_template_84,0,20,300,Okro Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(200, '56', '__export__.product_template_67,0,20,250,Orange Juice', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(201, '56', '__export__.product_template_68,0,20,200,Pepsi', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(202, '56', '__export__.product_template_74,0,20,800,Plantain Porridge', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(203, '56', '__export__.product_template_122,0,20,1500,pounded yam', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(204, '56', '__export__.product_template_80,0,20,1000,Pounded yam', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(205, '56', '__export__.product_template_82,0,20,1000,Prawn Vegetable rice', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(206, '56', '__export__.product_template_107,0,20,1,Service', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(207, '56', '__export__.product_template_93,0,20,350,Sliced Bread', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(208, '56', '__export__.product_template_72,0,20,200,Small bottle water', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(209, '56', '__export__.product_template_95,0,20,500,Srambled Egg/Veg Burrito', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(210, '56', '__export__.product_template_102,0,20,500,Steak & Egg Burger', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(211, '56', '__export__.product_template_98,0,20,500,Steak Egg Cheese Bagel', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(212, '56', '__export__.product_template_115,0,20,2000,Swimming Pool', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(213, '56', '__export__.product_template_92,0,20,200,Toast', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(214, '56', '__export__.product_template_75,0,20,600,Vegetable Salad', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(215, '56', '__export__.product_template_86,0,20,500,Vegetable Soup', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(216, '56', '__export__.product_template_6,0,20,1300,Vegetable soup and Fufu', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(217, '56', '__export__.product_template_94,0,20,1,Veg/Ham/Cheese Burrito', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(218, '56', '__export__.product_template_103,0,20,200,Waffle Egg Burger', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(219, '56', '__export__.product_template_76,0,20,1000,Yam Pottage', '2018-09-07 19:02:47', '2018-09-07 19:02:47'),
(220, '57', 'External ID,Price,Quantity On Hand,Sale Price,Name', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(221, '57', '__export__.product_template_127,0,20,5000,105', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(222, '57', '__export__.product_template_112,0,20,50000,303', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(223, '57', '__export__.product_template_88,0,20,500,Afang Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(224, '57', '__export__.product_template_96,0,20,350,Bagel', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(225, '57', '__export__.product_template_78,0,20,1000,Banana Pancake', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(226, '57', '__export__.product_template_73,0,20,500,Banga Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(227, '57', '__export__.product_template_81,0,20,200,Beanscake', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(228, '57', '__export__.product_template_7,0,20,450,Beef Burger', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(229, '57', '__export__.product_template_71,0,20,200,Big Bottle water', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(230, '57', '__export__.product_template_85,0,20,350,Bitterleaf Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(231, '57', '__export__.product_template_97,0,20,200,Brownies', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(232, '57', '__export__.product_template_105,0,20,200,Burrito Fish Wrap', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(233, '57', '__export__.product_template_83,0,20,2000,Cake', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(234, '57', '__export__.product_template_79,0,20,1500,Catfish Peppersoup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(235, '57', '__export__.product_template_66,0,20,2000,Cereal & Milk', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(236, '57', '__export__.product_template_64,0,20,700,Chocolate Milk', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(237, '57', '__export__.product_template_65,0,20,200,Coffee', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(238, '57', '__export__.product_template_70,0,20,200,Coke', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(239, '57', '__export__.product_template_117,0,20,1,D101', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(240, '57', '__export__.product_template_111,0,20,1,Deluxe', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(241, '57', '__export__.product_template_114,0,20,5000,Deluxe 101', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(242, '57', '__export__.product_template_128,0,20,30000,DLX 401', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(243, '57', '__export__.product_template_101,0,20,150,Donut', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(244, '57', '__export__.product_template_100,0,20,250,Donut with Sprinkles', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(245, '57', '__export__.product_template_91,0,20,400,Egg/Veg/Lime Burrito', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(246, '57', '__export__.product_template_89,0,20,250,Egusi Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(247, '57', '__export__.product_template_129,0,20,25000,Ex 501', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(248, '57', '__export__.product_template_130,0,20,40000,Ex 502', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(249, '57', '__export__.product_template_131,0,20,25000,EX 503', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(250, '57', '__export__.product_template_113,0,20,20000,Executive-401', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(251, '57', '__export__.product_template_104,0,20,300,FishFillet Burger', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(252, '57', '__export__.product_template_106,0,20,300,Fried Egg', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(253, '57', '__export__.product_template_77,0,20,200,Fruit Cake', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(254, '57', '__export__.product_template_99,0,20,200,Hash Brown', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(255, '57', '__export__.product_template_90,0,20,300,Longtail Burger', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(256, '57', '__export__.product_template_63,0,20,200,Milk', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(257, '57', '__export__.product_template_69,0,20,200,Mountain Dew', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(258, '57', '__export__.product_template_87,0,20,200,Nsala Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(259, '57', '__export__.product_template_84,0,20,300,Okro Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(260, '57', '__export__.product_template_67,0,20,250,Orange Juice', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(261, '57', '__export__.product_template_68,0,20,200,Pepsi', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(262, '57', '__export__.product_template_74,0,20,800,Plantain Porridge', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(263, '57', '__export__.product_template_122,0,20,1500,pounded yam', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(264, '57', '__export__.product_template_80,0,20,1000,Pounded yam', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(265, '57', '__export__.product_template_82,0,20,1000,Prawn Vegetable rice', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(266, '57', '__export__.product_template_107,0,20,1,Service', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(267, '57', '__export__.product_template_93,0,20,350,Sliced Bread', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(268, '57', '__export__.product_template_72,0,20,200,Small bottle water', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(269, '57', '__export__.product_template_95,0,20,500,Srambled Egg/Veg Burrito', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(270, '57', '__export__.product_template_102,0,20,500,Steak & Egg Burger', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(271, '57', '__export__.product_template_98,0,20,500,Steak Egg Cheese Bagel', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(272, '57', '__export__.product_template_115,0,20,2000,Swimming Pool', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(273, '57', '__export__.product_template_92,0,20,200,Toast', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(274, '57', '__export__.product_template_75,0,20,600,Vegetable Salad', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(275, '57', '__export__.product_template_86,0,20,500,Vegetable Soup', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(276, '57', '__export__.product_template_6,0,20,1300,Vegetable soup and Fufu', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(277, '57', '__export__.product_template_94,0,20,1,Veg/Ham/Cheese Burrito', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(278, '57', '__export__.product_template_103,0,20,200,Waffle Egg Burger', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(279, '57', '__export__.product_template_76,0,20,1000,Yam Pottage', '2018-09-07 19:18:02', '2018-09-07 19:18:02'),
(280, '58', 'id,dummy_qty_update', '2018-09-07 19:26:18', '2018-09-07 19:26:18'),
(281, '58', '__export__.product_template_4,100', '2018-09-07 19:26:18', '2018-09-07 19:26:18'),
(282, '58', 'id,dummy_qty_update', '2018-09-07 19:26:26', '2018-09-07 19:26:26'),
(283, '58', '__export__.product_template_4,100', '2018-09-07 19:26:26', '2018-09-07 19:26:26'),
(284, '57', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 13:35:59', '2018-09-08 13:35:59'),
(285, '57', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 13:36:00', '2018-09-08 13:36:00'),
(286, '57', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 13:36:00', '2018-09-08 13:36:00'),
(287, '57', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 13:36:00', '2018-09-08 13:36:00'),
(288, '57', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 13:36:00', '2018-09-08 13:36:00'),
(289, '57', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 13:36:00', '2018-09-08 13:36:00'),
(290, '57', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 13:36:00', '2018-09-08 13:36:00'),
(291, '57', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(292, '57', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(293, '57', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(294, '57', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(295, '57', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(296, '57', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(297, '57', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 13:36:18', '2018-09-08 13:36:18'),
(298, '57', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(299, '57', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(300, '57', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(301, '57', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(302, '57', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(303, '57', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(304, '57', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 13:36:52', '2018-09-08 13:36:52'),
(305, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(306, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(307, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(308, '59', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(309, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(310, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(311, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:02:21', '2018-09-08 14:02:21'),
(312, '59', ',Price,Quantity ,Sale Price', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(313, '59', ',0,20,5000', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(314, '59', ',0,20,50000', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(315, '59', ',0,20,500', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(316, '59', ',0,20,350', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(317, '59', ',0,20,1000', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(318, '59', ',0,20,500', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(319, '59', ',0,20,200', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(320, '59', ',0,20,450', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(321, '59', ',0,20,200', '2018-09-08 14:02:56', '2018-09-08 14:02:56'),
(322, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(323, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(324, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(325, '59', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(326, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(327, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(328, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:03:16', '2018-09-08 14:03:16'),
(329, '59', ',Price,Quantity ,Sale Price', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(330, '59', ',0,20,5000', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(331, '59', ',0,20,50000', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(332, '59', ',0,20,500', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(333, '59', ',0,20,350', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(334, '59', ',0,20,1000', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(335, '59', ',0,20,500', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(336, '59', ',0,20,200', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(337, '59', ',0,20,450', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(338, '59', ',0,20,200', '2018-09-08 14:03:34', '2018-09-08 14:03:34'),
(339, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(340, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(341, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(342, '59', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(343, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(344, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(345, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:04:00', '2018-09-08 14:04:00'),
(346, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(347, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(348, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(349, '59', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(350, '59', '13.19,2019-05-17,100.95,11.90,-0.37', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(351, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(352, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:04:53', '2018-09-08 14:04:53'),
(353, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:07:24', '2018-09-08 14:07:24'),
(354, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:07:24', '2018-09-08 14:07:24'),
(355, '59', '13.19,2019-05-17,100.95,11.9,-0.37', '2018-09-08 14:07:24', '2018-09-08 14:07:24'),
(356, '59', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 14:07:24', '2018-09-08 14:07:24'),
(357, '59', '13.01,2019-03-22,100.49,12.18,-0.17', '2018-09-08 14:08:06', '2018-09-08 14:08:06'),
(358, '59', '12.79,2019-04-12,100.46,12.08,-0.24', '2018-09-08 14:08:06', '2018-09-08 14:08:06'),
(359, '59', '13.19,2019-05-17,100.95,11.9,-0.37', '2018-09-08 14:08:06', '2018-09-08 14:08:06'),
(360, '59', '13.19,2019-06-14,101.14,11.77,-0.45', '2018-09-08 14:08:06', '2018-09-08 14:08:06'),
(361, '61', ',Price,Quantity ,Sale Price', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(362, '61', ',0,20,5000', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(363, '61', ',0,20,50000', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(364, '61', ',0,20,500', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(365, '61', ',0,20,350', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(366, '61', ',0,20,1000', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(367, '61', ',0,20,500', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(368, '61', ',0,20,200', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(369, '61', ',0,20,450', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(370, '61', ',0,20,200', '2018-09-10 11:41:37', '2018-09-10 11:41:37'),
(371, '61', 'Price,Quantity ,Sale Price', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(372, '61', '0,20,5000', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(373, '61', '0,20,50000', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(374, '61', '0,20,500', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(375, '61', '0,20,350', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(376, '61', '0,20,1000', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(377, '61', '0,20,500', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(378, '61', '0,20,200', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(379, '61', '0,20,450', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(380, '61', '0,20,200', '2018-09-10 11:43:54', '2018-09-10 11:43:54'),
(381, '61', ',0,20,5000', '2018-09-10 11:51:56', '2018-09-10 11:51:56'),
(382, '61', ',0,20,500', '2018-09-10 11:51:56', '2018-09-10 11:51:56'),
(383, '61', ',0,20,1000', '2018-09-10 11:51:56', '2018-09-10 11:51:56'),
(384, '61', ',0,20,200', '2018-09-10 11:51:56', '2018-09-10 11:51:56'),
(385, '61', ',0,20,200', '2018-09-10 11:51:56', '2018-09-10 11:51:56'),
(386, '61', ',0,20,5000', '2018-09-10 11:52:32', '2018-09-10 11:52:32'),
(387, '61', ',0,20,500', '2018-09-10 11:52:32', '2018-09-10 11:52:32'),
(388, '61', ',0,20,1000', '2018-09-10 11:52:32', '2018-09-10 11:52:32'),
(389, '61', ',0,20,200', '2018-09-10 11:52:32', '2018-09-10 11:52:32'),
(390, '61', ',0,20,200', '2018-09-10 11:52:32', '2018-09-10 11:52:32'),
(391, '61', ',Price,Quantity ,Sale Price', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(392, '61', ',0,20,5000', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(393, '61', ',0,20,50000', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(394, '61', ',0,20,500', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(395, '61', ',0,20,350', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(396, '61', ',0,20,1000', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(397, '61', ',0,20,500', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(398, '61', ',0,20,200', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(399, '61', ',0,20,450', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(400, '61', ',0,20,200', '2018-09-10 11:54:52', '2018-09-10 11:54:52'),
(401, '61', ',0,20,5000', '2018-09-10 11:58:36', '2018-09-10 11:58:36'),
(402, '61', ',0,20,500', '2018-09-10 11:58:36', '2018-09-10 11:58:36'),
(403, '61', ',0,20,1000', '2018-09-10 11:58:36', '2018-09-10 11:58:36'),
(404, '61', ',0,20,200', '2018-09-10 11:58:36', '2018-09-10 11:58:36'),
(405, '61', ',0,20,200', '2018-09-10 11:58:36', '2018-09-10 11:58:36'),
(406, '61', ',0,20,5000', '2018-09-10 11:59:09', '2018-09-10 11:59:09'),
(407, '61', ',0,20,500', '2018-09-10 11:59:09', '2018-09-10 11:59:09'),
(408, '61', ',0,20,1000', '2018-09-10 11:59:09', '2018-09-10 11:59:09'),
(409, '61', ',0,20,200', '2018-09-10 11:59:09', '2018-09-10 11:59:09'),
(410, '61', ',0,20,200', '2018-09-10 11:59:09', '2018-09-10 11:59:09'),
(411, '61', ',Price,Quantity ,Sale Price', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(412, '61', ',0,20,5000', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(413, '61', ',0,20,50000', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(414, '61', ',0,20,500', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(415, '61', ',0,20,350', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(416, '61', ',0,20,1000', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(417, '61', ',0,20,500', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(418, '61', ',0,20,200', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(419, '61', ',0,20,450', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(420, '61', ',0,20,200', '2018-09-10 12:00:59', '2018-09-10 12:00:59'),
(421, '61', ',Price,Quantity ,Sale Price', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(422, '61', ',0,20,5000', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(423, '61', ',0,20,50000', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(424, '61', ',0,20,500', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(425, '61', ',0,20,350', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(426, '61', ',0,20,1000', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(427, '61', ',0,20,500', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(428, '61', ',0,20,200', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(429, '61', ',0,20,450', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(430, '61', ',0,20,200', '2018-09-10 12:02:44', '2018-09-10 12:02:44'),
(432, '61', ',Price,Quantity ,Sale Price', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(433, '61', ',0,20,5000', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(434, '61', ',0,20,50000', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(435, '61', ',0,20,500', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(436, '61', ',0,20,350', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(437, '61', ',0,20,1000', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(438, '61', ',0,20,500', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(439, '61', ',0,20,200', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(440, '61', ',0,20,450', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(441, '61', ',0,20,200', '2018-09-10 12:03:13', '2018-09-10 12:03:13'),
(443, '62', 'Price,Quantity ,Sale Price', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(444, '62', '0,20,5000', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(445, '62', '0,20,50000', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(446, '62', '0,20,500', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(447, '62', '0,20,350', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(448, '62', '0,20,1000', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(449, '62', '0,20,500', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(450, '62', '0,20,200', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(451, '62', '0,20,450', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(452, '62', '0,20,200', '2018-09-10 13:01:33', '2018-09-10 13:01:33'),
(454, '63', ',Price,Quantity ,Sale Price', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(455, '63', ',0,20,5000', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(456, '63', ',0,20,50000', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(457, '63', ',0,20,500', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(458, '63', ',0,20,350', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(459, '63', ',0,20,1000', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(460, '63', ',0,20,500', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(461, '63', ',0,20,200', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(462, '63', ',0,20,450', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(463, '63', ',0,20,200', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(464, '63', '', '2018-09-10 13:31:28', '2018-09-10 13:31:28'),
(465, '64', '', '2018-09-10 13:57:02', '2018-09-10 13:57:02'),
(466, '64', 'S/nNameDept', '2018-09-10 13:57:02', '2018-09-10 13:57:02'),
(467, '64', '1Olu JacobsAccounting', '2018-09-10 13:57:02', '2018-09-10 13:57:02'),
(468, '64', '2Idowu MartinsHuman Resource', '2018-09-10 13:57:02', '2018-09-10 13:57:02'),
(469, '64', '3John StoneSales', '2018-09-10 13:57:02', '2018-09-10 13:57:02'),
(470, '64', '', '2018-09-10 13:57:02', '2018-09-10 13:57:02'),
(471, '65', ',Price,Quantity ,Sale Price', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(472, '65', ',0,20,5000', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(473, '65', ',0,20,50000', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(474, '65', ',0,20,500', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(475, '65', ',0,20,350', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(476, '65', ',0,20,1000', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(477, '65', ',0,20,500', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(478, '65', ',0,20,200', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(479, '65', ',0,20,450', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(480, '65', ',0,20,200', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(481, '65', '', '2018-09-10 14:10:11', '2018-09-10 14:10:11'),
(482, '66', ',Price,Quantity ,Sale Price', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(483, '66', ',0,20,5000', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(484, '66', ',0,20,50000', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(485, '66', ',0,20,500', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(486, '66', ',0,20,350', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(487, '66', ',0,20,1000', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(488, '66', ',0,20,500', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(489, '66', ',0,20,200', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(490, '66', ',0,20,450', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(491, '66', ',0,20,200', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(492, '66', '', '2018-09-10 14:13:43', '2018-09-10 14:13:43'),
(493, '67', ',Price,Quantity ,Sale Price', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(494, '67', ',0,20,5000', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(495, '67', ',0,20,50000', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(496, '67', ',0,20,500', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(497, '67', ',0,20,350', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(498, '67', ',0,20,1000', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(499, '67', ',0,20,500', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(500, '67', ',0,20,200', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(501, '67', ',0,20,450', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(502, '67', ',0,20,200', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(503, '67', '', '2018-09-10 14:42:14', '2018-09-10 14:42:14'),
(504, '68', ',Price,Quantity ,Sale Price', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(505, '68', ',0,20,5000', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(506, '68', ',0,20,50000', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(507, '68', ',0,20,500', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(508, '68', ',0,20,350', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(509, '68', ',0,20,1000', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(510, '68', ',0,20,500', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(511, '68', ',0,20,200', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(512, '68', ',0,20,450', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(513, '68', ',0,20,200', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(514, '68', '', '2018-09-10 15:00:45', '2018-09-10 15:00:45'),
(515, '69', ',Price,Quantity ,Sale Price', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(516, '69', ',0,20,5000', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(517, '69', ',0,20,50000', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(518, '69', ',0,20,500', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(519, '69', ',0,20,350', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(520, '69', ',0,20,1000', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(521, '69', ',0,20,500', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(522, '69', ',0,20,200', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(523, '69', ',0,20,450', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(524, '69', ',0,20,200', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(525, '69', '', '2018-09-11 07:50:42', '2018-09-11 07:50:42'),
(526, '70', ',Price,Quantity ,Sale Price', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(527, '70', ',0,20,5000', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(528, '70', ',0,20,50000', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(529, '70', ',0,20,500', '2018-09-11 08:05:42', '2018-09-11 08:05:42');
INSERT INTO `tickers_data` (`id`, `tickerid`, `data`, `created_at`, `updated_at`) VALUES
(530, '70', ',0,20,350', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(531, '70', ',0,20,1000', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(532, '70', ',0,20,500', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(533, '70', ',0,20,200', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(534, '70', ',0,20,450', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(535, '70', ',0,20,200', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(536, '70', '', '2018-09-11 08:05:42', '2018-09-11 08:05:42'),
(537, '71', ',Price,Quantity ,Sale Price', '2018-09-11 08:54:51', '2018-09-11 08:54:51'),
(538, '71', ',0,20,5000', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(539, '71', ',0,20,50000', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(540, '71', ',0,20,500', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(541, '71', ',0,20,350', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(542, '71', ',0,20,1000', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(543, '71', ',0,20,500', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(544, '71', ',0,20,200', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(545, '71', ',0,20,450', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(546, '71', ',0,20,200', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(547, '71', '', '2018-09-11 08:54:52', '2018-09-11 08:54:52'),
(548, '72', ',Price,Quantity ,Sale Price', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(549, '72', ',0,20,5000', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(550, '72', ',0,20,50000', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(551, '72', ',0,20,500', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(552, '72', ',0,20,350', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(553, '72', ',0,20,1000', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(554, '72', ',0,20,500', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(555, '72', ',0,20,200', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(556, '72', ',0,20,450', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(557, '72', ',0,20,200', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(558, '72', '', '2018-09-11 09:02:02', '2018-09-11 09:02:02'),
(559, '72', 'Price,Quantity,Sale Price', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(560, '72', '0,20,5000', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(561, '72', '0,20,50000', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(562, '72', '0,20,500', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(563, '72', '0,20,350', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(564, '72', '0,20,1000', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(565, '72', '0,20,500', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(566, '72', '0,20,200', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(567, '72', '0,20,450', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(568, '72', '0,20,200', '2018-09-11 13:56:49', '2018-09-11 13:56:49'),
(569, '72', '', '2018-09-11 13:56:49', '2018-09-11 13:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `ticker_type`
--

CREATE TABLE `ticker_type` (
  `ticker_type_id` int(11) NOT NULL,
  `ticker_type_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticker_type`
--

INSERT INTO `ticker_type` (`ticker_type_id`, `ticker_type_name`) VALUES
(1, 'FGN BONDS'),
(2, 'T-BILLS'),
(3, 'IE'),
(4, 'FX');

-- --------------------------------------------------------

--
-- Table structure for table `ticker_types`
--

CREATE TABLE `ticker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticker_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_fontsize` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_background_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticker_text_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileds` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graph` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticker_types`
--

INSERT INTO `ticker_types` (`id`, `ticker_name`, `ticker_direction`, `ticker_fontsize`, `ticker_background_color`, `ticker_text_color`, `fileds`, `stock`, `graph`, `companyId`, `created_at`, `updated_at`) VALUES
(29, 'FGN BONDS', 'L', '20', '#80ffff', '#000000', '', '0', '', 0, '2018-08-13 12:50:26', '2018-08-13 12:50:26'),
(30, 'T-BILLS', 'L', '15', '#fbe3f9', '#0080ff', '', '0', '', 0, '2018-08-13 12:53:02', '2018-08-13 12:53:02'),
(31, 'IE', 'L', '12', '#ffffff', '#ff0000', '', '0', '', 0, '2018-08-13 12:53:45', '2018-08-13 12:53:45'),
(32, 'FX', 'R', '10', '#f2f49f', '#d54500', '', '0', '', 0, '2018-08-13 12:54:44', '2018-08-13 12:54:44'),
(33, 'Test 1', 'R', '20', '#000000', '#ff0000', 'name,yeild,test2', '12', 'line', 0, '2018-08-17 10:21:06', '2018-08-17 10:21:06'),
(34, 'Test 2', 'R', '20', '#000000', '#ff0000', 'name,yeild,test2', 'aa', '', 0, '2018-08-16 10:33:47', '2018-08-16 10:33:47'),
(47, 'example', 'left', '12', '#0080ff', '#ffffff', 'fvnkln,dgsgf,dsgnsg', 'US oil', 'pie', 28, '2018-08-23 13:43:03', '2018-08-23 13:43:03'),
(48, 'fg bond', 'left', '50', '#000000', '#ff0000', 'fg bond', 'fg bond', 'line', 27, '2018-08-23 13:47:17', '2018-08-23 13:47:17'),
(49, 'scroll ticker', 'left', '60', '#000000', '#ff0000', 'sroll ticker', 'scroll ticker', 'bar', 27, '2018-08-23 13:48:34', '2018-08-23 13:48:34'),
(50, 'Fx Demo 011', 'L', '20', '#ff80ff', '#ff0000', 'name,yeild,test1', '23', 'bar', 30, '2018-09-07 15:03:24', '2018-09-07 15:03:24'),
(51, 'spantree ticker', 'left', '10', '#037100', '#ff0000', 'forex', 'forex', 'line', 31, '2018-09-07 17:38:17', '2018-09-07 17:38:17'),
(52, 'Mycompany', 'Right', '20', '#a95151', '#ff0000', 'T-Bills', 'T-BILLS', 'stock', 31, '2018-09-07 19:06:26', '2018-09-07 19:06:26'),
(53, 'Test User 1', 'Left', '12', '#b95a5a', '#ff0000', 'Price,Quatity,Sale Price', 'FG BONDS', 'line', 33, '2018-09-11 09:00:44', '2018-09-11 09:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','redac','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`, `contact`, `role`, `user_role`, `valid`, `confirmed`, `confirmation_code`, `company`) VALUES
(1, '2018-08-10 12:57:31', '2018-08-10 12:57:31', 'ark', 'ark@gmail.com', '1234', '444', 'user', '', 0, 0, NULL, 3),
(2, '2018-08-10 13:23:41', '2018-08-10 13:23:41', 'kkk', 'gh@hhh.com', '1234kkkkk', '6778909-', 'user', '', 0, 0, NULL, 4),
(3, '2018-08-11 05:36:51', '2018-08-11 05:36:51', 'RIYALI', 'riyali@2yahoo.com', '1234kkkkk', '9876543211', 'user', '', 0, 0, NULL, 5),
(5, NULL, NULL, 'Test User 1', 'test1@user.com', '12345', '9898989898', 'user', '', 0, 0, NULL, 23),
(6, NULL, NULL, 'Test User 2', 'test2@user.com', '32645', '1111111111', 'user', '', 0, 0, NULL, 23),
(7, '2018-08-11 06:58:10', '2018-08-11 06:58:10', 'isha', 'isha@gh.com', 'zccc', '122436', 'user', '', 0, 0, NULL, 5),
(8, '2018-08-11 11:04:53', '2018-08-11 11:04:53', 'LKK', 'lkk@ram.com', '1234kkkkk', '911', 'user', '', 0, 0, NULL, 7),
(9, '2018-08-14 10:54:35', '2018-08-14 10:54:35', 'HEMA', 'hema@das.com', 'hema@123', '98472901733', 'user', '', 0, 0, NULL, 3),
(11, '2018-08-17 11:03:54', '2018-08-17 11:03:54', 'Test 3', 'kiran@gmail.co', 'kiran', '1233', 'user', '', 0, 0, NULL, 9),
(20, '2018-08-17 12:00:14', '2018-08-17 12:00:14', 'Test 4', 'user@office.com', 'user', '9876543210', 'user', '', 0, 0, NULL, 6),
(24, '2018-08-18 08:40:00', '2018-08-18 08:40:00', 'AVV', 'avv@abc.com', '123', '98472901733', 'user', '14', 0, 0, NULL, 3),
(25, '2018-08-18 08:41:26', '2018-08-18 08:41:26', 'Test', 'avvv@abc.com', '123', '98472901733', 'user', 'admin', 0, 0, NULL, 3),
(26, '2018-08-18 08:50:38', '2018-08-18 08:50:38', 'Tester', 'abc@gmail.com', '1234', '98472901733', 'user', 'admin', 0, 0, NULL, 3),
(27, '2018-08-18 08:52:59', '2018-08-18 08:52:59', 'Test 7', 'abcde@gmail.com', '1234', '98472901733', 'user', '10', 0, 0, NULL, 3),
(28, '2018-08-23 13:49:39', '2018-08-23 13:49:39', 'Seun', 'seunolowolagba1@gmail.com', 'seun01', '08064406128', 'user', '18', 0, 0, NULL, 28),
(32, '2018-08-23 13:59:16', '2018-08-23 13:59:16', 'Seun1', 'seun@gmail.com', 'seun01', '08064406128', 'user', '18', 0, 0, NULL, 28),
(33, '2018-09-07 14:58:26', '2018-09-07 14:58:26', 'Test user 1', 'testuser1@abc.com', '12345', '98745689', 'user', '20', 0, 0, NULL, 30),
(34, '2018-09-07 14:59:04', '2018-09-07 14:59:04', 'test User 2', 'testuser2@test.com', '12345', '445645645645', 'user', '21', 0, 0, NULL, 30),
(35, '2018-09-07 14:59:37', '2018-09-07 14:59:37', 'test leader 1', 'testteamlaead1', '12345', '2342132343545', 'user', '22', 0, 0, NULL, 30),
(36, '2018-09-07 17:18:18', '2018-09-07 17:18:18', 'Kay', 'span.spantree@yahoo.com', '1', '08054286579', 'user', '23', 0, 0, NULL, 31),
(37, '2018-09-10 12:53:53', '2018-09-10 12:53:53', 'Dev1', 'Dev1@test.com', '12345', 'saba.ticker2', 'user', '26', 0, 0, NULL, 32),
(38, '2018-09-10 12:55:01', '2018-09-10 12:55:01', 'Dev2', 'dev2@test.com', '12345', 'saba.ticker2', 'user', '26', 0, 0, NULL, 32),
(39, '2018-09-10 13:22:56', '2018-09-10 13:22:56', 'Span1', 'span1@yahoo.com', '1', 'yomifavor@yahoo.com', 'user', '27', 0, 0, NULL, 27),
(40, '2018-09-10 13:49:44', '2018-09-10 13:49:44', 'Span2', 'span2@yahoo.com', '1', 'yomifavor@yahoo.com', 'user', '28', 0, 0, NULL, 27),
(41, '2018-09-10 14:38:01', '2018-09-10 14:38:01', 'DevA', 'deva@yahoo.com', '1', 'yomifavor@yahoo.com', 'user', '29', 0, 0, NULL, 27),
(42, '2018-09-10 14:54:34', '2018-09-10 14:54:34', 'admin', 'admin@yahoo.com', '12345', 'span.spantree@yahoo.com', 'user', '30', 0, 0, NULL, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_lft_index` (`lft`),
  ADD KEY `comments_rgt_index` (`rgt`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graphs`
--
ALTER TABLE `graphs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hellos`
--
ALTER TABLE `hellos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingoings`
--
ALTER TABLE `ingoings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingoings_ingoing_id_index` (`ingoing_id`),
  ADD KEY `ingoings_ingoing_type_index` (`ingoing_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- Indexes for table `tickers`
--
ALTER TABLE `tickers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickers_data`
--
ALTER TABLE `tickers_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticker_type`
--
ALTER TABLE `ticker_type`
  ADD PRIMARY KEY (`ticker_type_id`);

--
-- Indexes for table `ticker_types`
--
ALTER TABLE `ticker_types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `graphs`
--
ALTER TABLE `graphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hellos`
--
ALTER TABLE `hellos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ingoings`
--
ALTER TABLE `ingoings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickers`
--
ALTER TABLE `tickers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tickers_data`
--
ALTER TABLE `tickers_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;
--
-- AUTO_INCREMENT for table `ticker_type`
--
ALTER TABLE `ticker_type`
  MODIFY `ticker_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ticker_types`
--
ALTER TABLE `ticker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
