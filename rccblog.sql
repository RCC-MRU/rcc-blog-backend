-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 07:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` int(11) NOT NULL,
  `mobileNo` bigint(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forgetPassToken` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forgetTokenActive` int(11) NOT NULL,
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

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `email`, `about`, `roles`, `mobileNo`, `password`, `forgetPassToken`, `forgetTokenActive`, `dob`, `isActive`, `preference`, `profileImg`, `createdAt`, `modifiedAt`) VALUES
(1, 'Sanchit', 'Bajaj', 'sanchitbajaj02@gmail.com', 'Rodney Erickson is a content marketing professional at HubSpot, an inbound marketing and sales platform that helps companies attract visitors, convert leads, and close customers. Previously, Rodney wo', 0, 8743811303, 'passpass', '', 0, '2001-04-02', 0, 'Fitness', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_700450099-1024x682.jpg', '2021-06-09 05:42:36', NULL),
(2, 'Kunal', 'Arora', '10kunalji@gmail.com', 'Manuel Iglesias draws from his life story when writing about the experiences of migrant workers. His first series of poems, My Father\'s Hands, appeared in The New Yorker and describes how his family c', 0, 9810362734, 'password', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lIjoiRnJpIEp1biAwNCAyMDIxIDE5OjUwOjMzIEdNVCswNTMwIChJbmRpYSBTdGFuZGFyZCBUaW1lKSIsInVzZXJJZCI6MiwiaWF0IjoxNjIyODE2NDMzLCJleHAiOjE2MjI4MjAwMzN9._oLnKFkLYl02gEWcknOgKl3XFnzpnvyCArl6z44YCHI', 1, '2002-06-10', 0, 'Workout', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_700450099-1024x682.jpg', '2021-06-04 14:20:37', NULL),
(3, 'Khushi', 'Arora', 'akhushi72@gmail.com', 'Debra Carroll knows that successful students become successful adults. This is her 15th year at Edison Elementary School and her 10th year teaching fourth grade. So far, fourth grade is her favorite g', 0, 8368059827, 'password', '', 0, '2002-05-23', 0, 'Fitness', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2018/01/Untitled-3.jpg', '2021-05-18 05:50:26', NULL),
(5, 'Chhaya', 'Tyagi', 'tyagi.chhaya4@gmail.com', '', 0, 0, 'password', '', 0, '0000-00-00', 0, '', '', '2021-05-26 20:02:26', NULL),
(6, 'Vansh', 'Bisht', 'vanshbishtmru@gmail.com', 'NA', 1, 8447533975, 'undefined', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lIjoiRnJpIE1heSAyOCAyMDIxIDE5OjIxOjQ4IEdNVCswNTMwIChJbmRpYSBTdGFuZGFyZCBUaW1lKSIsInVzZXJJZCI6NiwiaWF0IjoxNjIyMjA5OTA4LCJleHAiOjE2MjIyMTM1MDh9.adsMyrrclRpUoileLWC4Om3CREqdlXGnN2cG_HBc6KY', 1, '2002-07-07', 0, '', '', '2021-05-28 13:57:36', NULL),
(10, 'Kunal', 'Arora', 'itskunal00@gmail.com', '', 0, 0, '123456789', '', 0, '0000-00-00', 0, 'Fitness', '', '2021-06-04 13:46:38', NULL),
(12, 'qwerty', 'qwerty', 'ciais2020.mru@gmail.com', '', 0, 0, '12345', '', 0, '0000-00-00', 0, 'Workout', '', '2021-06-07 12:10:14', NULL),
(13, 'hacker', 'linux', 'hacker@linux.com', '', 0, 0, 'password123', '', 0, '0000-00-00', 0, 'Workout', '', '2021-06-07 12:18:38', NULL),
(14, 'cccsdc', 'cdscsd', 'sanchit02@outlook.com', '', 0, 0, 'csdcds', '', 0, '0000-00-00', 0, 'Workout', '', '2021-06-07 12:24:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
