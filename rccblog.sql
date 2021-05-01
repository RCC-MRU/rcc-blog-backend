-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 02:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
  `blogContent` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 1, 'good', 'Your Mood Depends on The Food', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_594248672.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:28:55', '2021-04-30 17:28:55', 'your-mood-depends-on-the-food', 'Health', 10),
(2, 2, 'good', '8 Yoga Poses for a Strong Core', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_125340167.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:41:26', '2021-04-30 17:41:26', '8-yoga-poses-for-a-strong-core', 'Health', 10),
(3, 3, 'good', 'Do This 20-Minute HIIT Workout Routine', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_125340167.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:46:47', '2021-04-30 17:46:47', 'do-this-20-minute-hiit-workout-routine', 'Health', 10),
(4, 1, 'good', 'A First Timer’s Marathon Training Plan', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/christopher-campbell-33030-scaled.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:11:58', '2021-04-30 17:11:58', '8-yoga-poses-for-a-strong-core', 'Health', 0),
(5, 2, 'good', 'Cold Weather Running Warm Up Mistakes', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_498434587.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:02:46', '2021-04-30 18:02:46', 'cold-weather-running-warm-up-mistakes', 'Workout', 10),
(6, 3, 'good', 'Our Most Important Piece of Running Gear', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_700450099.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:08:32', '2021-04-30 18:08:32', 'our-most-important-piece-of-running-gear', 'Fitness', 10),
(7, 1, 'good', 'Healthy No-Bake Strawberry Mug Cakes Served', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_654900490.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:12:12', '2021-04-30 18:12:12', 'healthy-no-bake-strawberry-mug-cakes-served', 'Fitness', 10),
(8, 2, 'good', 'A Low Effort Ab Burn Out Plan', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_695214214-1024x682.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:15:17', '2021-04-30 18:15:17', 'a-low-effort-ab-burn-out-plan', 'Fitness', 10),
(9, 3, 'good', '7 Lessons to Crush Your Next Running Goal', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/martine-jacobsen-343530.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:17:53', '2021-04-30 18:17:53', '7-lessons-to-crush-your-next-running-goal', 'Fitness', 10),
(10, 1, 'good', 'Choose The Right Running Shoes', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_556889842.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:19:35', '2021-04-30 18:19:35', 'choose-the-right-sunning-shoes', 'Workout', 10),
(11, 2, 'good', 'No-Running Cardio Workou', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/Death_to_Stock_Chasing_Sunrise_9.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 19:36:15', '2021-04-30 19:36:15', 'no-running-cardio-workout', 'Workout', 10),
(12, 3, 'good', 'Healthy Grain Bowls to Rescue', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_737674996.jpg', 10, 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 19:37:22', '2021-04-30 19:37:22', 'healthy-grain-bowls-to-rescue', 'Workout', 10);

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
(7, 'TEst@gmail.com', 'message', '2021-03-25 14:02:32'),
(8, 'sanchibajaj02@gmail.com', 'this is my message', '2021-04-30 19:40:30'),
(9, 'sanchibajaj02@gmail.com', 'this is my message', '2021-05-01 12:42:40');

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
  `mobileNo` bigint(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `firstName`, `lastName`, `email`, `roles`, `mobileNo`, `password`, `dob`, `isActive`, `preference`, `profileImg`, `createdAt`, `modifiedAt`) VALUES
(1, 'Sanchit', 'Bajaj', 'sanchitbajaj02@gmail.com', 0, 8743811303, 'sanchitbajaj', '2001-04-02', 0, 'Fitness', '', '2021-04-30 18:32:45', NULL),
(2, 'Kunal', 'Arora', '10kunalji@gmail.com', 0, 9810362734, 'password', '2002-06-10', 0, 'Workout', '', '2021-04-30 16:08:09', NULL),
(3, 'Khushi', 'Arora', 'akhushi72@gmail.com', 0, 8368059827, 'password', '2002-05-23', 0, 'Fitness', '', '2021-04-30 18:54:18', NULL);

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
  MODIFY `blogId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `UserId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
