-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 07:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rccblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogId` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `blogContent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifiedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewCounter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogId`, `userId`, `preference`, `blogTitle`, `blogImg`, `likes`, `blogContent`, `createdAt`, `modifiedAt`, `slug`, `category`, `viewCounter`) VALUES
(1, 1, 'fitness', 'Lorem Ipsum', 'na', 45, 'The quick brown fox jumps over the lazy dog.', '2021-03-24 02:06:20', '2021-03-24 02:06:20', 'Sdq5f54c84fw1', 'fitness', 780),
(2, 2, 'fitness', 'Ipsum Lorem', 'na', 47, 'The quick brown fox jumps over the lazy dog.', '2021-03-24 02:07:31', '2021-03-24 02:07:31', 'Sdq5f5w5ca484fw1', 'fitness', 475),
(3, 3, 'diet', 'Importance of diet', 'NA', 17, 'The diet is as important as exercising.', '2021-03-24 02:09:01', '2021-03-24 02:09:01', 'Asd234dv8ewfa6', 'fitness', 176);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `blogId` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `userId`, `blogId`, `comment`, `author`, `createdAt`, `modifiedAt`) VALUES
(1, 1, 1, 'Inspiring post', 'Sanchit', '2021-03-26 04:29:40', NULL),
(2, 1, 2, 'Good blog', 'Sanchit', '2021-03-26 04:51:40', NULL),
(3, 2, 1, 'Good work is done by the writer', 'Ravi', '2021-03-26 04:51:59', NULL),
(4, 2, 2, 'Efforts appreciated', 'Ravi', '2021-03-26 04:52:02', NULL),
(5, 3, 1, 'Great work done', 'Vansh', '2021-03-26 04:52:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `email`, `message`, `created_at`) VALUES
(1, 'abc@gmail.com', 'This api is working', '2021-03-24 02:03:38'),
(2, 'acc@gmail.com', 'Second Api test', '2021-03-24 02:04:02'),
(3, '123@gmail.com', 'Very bad apis', '2021-03-25 13:57:00'),
(4, '123@gmail.com', 'Test', '2021-03-25 13:57:57'),
(5, '123@gmail.com', 'Test', '2021-03-25 13:58:34'),
(6, '123@gmail.com', 'Test', '2021-03-25 14:01:39'),
(7, 'TEst@gmail.com', 'message', '2021-03-25 14:02:32');

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
(4, '2021_02_28_071133_blog', 1),
(5, '2021_02_28_072023_comments', 1),
(6, '2021_03_23_073221_create_contact_us', 1);

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
  `UserId` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` int(11) NOT NULL,
  `mobileNo` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD UNIQUE KEY `comments_commentid_unique` (`commentId`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobileno_unique` (`mobileNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
