-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2026 at 09:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nexusbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `balance` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `user_id`, `account_number`, `balance`, `created_at`) VALUES
(1, 1, 'SB90284168', 500500.97, '2025-04-16 14:16:34'),
(2, 2, 'SB50491031', 105704.98, '2025-04-16 16:33:52'),
(7, 3, 'SB99139149', 100414.00, '2025-04-24 23:09:40'),
(8, 4, 'SB53061920', 999400.00, '2025-04-24 23:09:40'),
(11, 5, 'SB61285649', 92510.00, '2025-05-02 17:22:20'),
(13, 7, 'SB16865613', 540.00, '2025-05-05 19:56:20'),
(15, 35, 'SB50703654', 11944.00, '2025-05-31 10:29:50'),
(18, 38, 'SB26110498', 79999600.00, '2025-06-04 12:55:23'),
(35, 56, 'SB50928009', 15000.00, '2026-01-03 06:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `action` varchar(200) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`log_id`, `user_id`, `user_name`, `account_number`, `action`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, NULL, 'nexus banking system', 'SB26110498', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:53:29'),
(2, NULL, 'nexus banking system', 'SB26110498', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:53:39'),
(3, NULL, 'nexus banking system', 'SB26110498', 'Deposit Initiated', 'User initiated deposit of ₹600.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:54:04'),
(4, NULL, 'nexus banking system', 'SB26110498', 'Deposit', 'Deposited ₹600.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:54:24'),
(5, NULL, 'nexus banking system', 'SB26110498', 'Voice Banking', 'Opened voice banking interface', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:54:33'),
(6, NULL, 'nexus banking system', 'SB26110498', 'Loan Application', 'Applied for loan ₹3,000.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:55:26'),
(7, NULL, 'nexus banking system', 'SB26110498', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:56:36'),
(8, NULL, 'nexus banking system', 'SB26110498', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:56:46'),
(9, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:57:20'),
(10, NULL, 'nexus banking system', 'SB26110498', 'USER_APPROVED', 'Approved user ID 39 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:59:09'),
(11, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 06:59:25'),
(12, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:13'),
(13, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:13'),
(14, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:14'),
(15, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:14'),
(16, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:14'),
(17, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:14'),
(18, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:15'),
(19, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:15'),
(20, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:15'),
(21, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:16'),
(22, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:16'),
(23, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:42'),
(24, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:00:43'),
(25, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:07'),
(26, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:08'),
(27, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:08'),
(28, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:08'),
(29, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:08'),
(30, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:32'),
(31, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:32'),
(32, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:32'),
(33, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:32'),
(34, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:53'),
(35, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:53'),
(36, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:53'),
(37, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:01:53'),
(38, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:02:16'),
(39, NULL, 'nexus banking system', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:02:21'),
(40, NULL, 'nexus banking system', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:03:35'),
(41, NULL, 'nexus banking system', 'SB26110498', 'Add User', 'Admin created new user: Muni (muniyandiyo227@gmail.com)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:03:53'),
(42, NULL, 'nexus banking system', 'SB26110498', 'Loan Approved', 'Loan ID: 61 | Amount: ₹100.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:05:43'),
(43, NULL, 'nexus banking system', 'SB26110498', 'DEPOSIT', 'Admin deposited ₹4,666.00 into account SB50703654', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:10:48'),
(44, NULL, 'nexus banking system', 'SB26110498', 'TRANSFER', 'Admin transferred ₹2.00 from account SB50491031 to account SB99139149', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:11:01'),
(45, NULL, 'nexus banking system', 'SB26110498', 'Change User Role', 'Admin changed user #41 role to: Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:11:16'),
(46, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:13:17'),
(47, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:13:29'),
(48, NULL, 'Administrator', 'SB26110498', 'DEPOSIT', 'Admin deposited ₹80,000,000.00 into account SB26110498', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:14:03'),
(49, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #39 role to: Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:14:31'),
(50, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:15:13'),
(51, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:15:28'),
(52, NULL, 'Administrator', 'SB26110498', 'Add News', 'Admin published a news article: 🔐 System Security Update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:16:59'),
(53, NULL, 'Administrator', 'SB26110498', 'Report Download', 'Downloaded transaction report Pdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:24:10'),
(54, NULL, 'Administrator', 'SB26110498', 'UPDATE NEWS', 'Updated announcement ID 1 | Title: 🔐 System Security Update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:26:19'),
(55, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:30'),
(56, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:35'),
(57, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:36'),
(58, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:46'),
(59, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:50'),
(60, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:51'),
(61, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:52'),
(62, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:52'),
(63, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:52'),
(64, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:53'),
(65, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:53'),
(66, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:53'),
(67, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:54'),
(68, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:54'),
(69, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:54'),
(70, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:55'),
(71, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:55'),
(72, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:55'),
(73, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:30:55'),
(74, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:46'),
(75, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:47'),
(76, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:47'),
(77, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:48'),
(78, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:48'),
(79, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:49'),
(80, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:49'),
(81, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:49'),
(82, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:32:49'),
(83, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:33:11'),
(84, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:33:16'),
(85, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:33:18'),
(86, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:33:19'),
(87, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:33:22'),
(88, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:37:32'),
(89, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:37:34'),
(90, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:37:35'),
(91, NULL, 'Administrator', 'SB26110498', 'Report Download', 'Downloaded transaction report Pdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:38:06'),
(92, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:38:53'),
(93, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:39:02'),
(94, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:20'),
(95, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:25'),
(96, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:26'),
(97, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:26'),
(98, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:27'),
(99, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:28'),
(100, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:29'),
(101, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:31'),
(102, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:33'),
(103, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:34'),
(104, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:34'),
(105, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:36'),
(106, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:38'),
(107, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:43'),
(108, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:40:44'),
(109, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:18'),
(110, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:19'),
(111, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:19'),
(112, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:20'),
(113, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:20'),
(114, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:21'),
(115, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:22'),
(116, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:22'),
(117, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:24'),
(118, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:24'),
(119, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:24'),
(120, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:25'),
(121, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:25'),
(122, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:25'),
(123, NULL, 'Administrator', 'SB26110498', 'Viewed Investments', 'Admin opened investments management page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:43:42'),
(124, NULL, 'Administrator', 'SB26110498', 'Investment Plan Created', 'Plan: Basic Plan | Rate: 2%', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:44:14'),
(125, NULL, 'Administrator', 'SB26110498', 'Viewed Investments', 'Admin opened investments management page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:44:20'),
(126, NULL, 'Administrator', 'SB26110498', 'OPEN MESSAGE', 'Opened contact message ID 5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:58:15'),
(127, NULL, 'Administrator', 'SB26110498', 'REPLY MESSAGE', 'Replied to message ID 5 | Email: yogeshm@srmasc.ac.in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 07:58:35'),
(128, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:05:17'),
(129, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:06:16'),
(130, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:17:15'),
(131, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:17:24'),
(132, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:18:32'),
(133, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:19:02'),
(134, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #39 role to: User', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:19:36'),
(135, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:19:58'),
(136, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:20:11'),
(137, NULL, 'M Yogesh ', 'SB84024383', 'Deposit Initiated', 'User initiated deposit of ₹600.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:20:41'),
(138, NULL, 'M Yogesh ', 'SB84024383', 'Deposit', 'Deposited ₹600.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:21:13'),
(139, NULL, 'M Yogesh ', 'SB84024383', 'Receipt Generated', 'Generated transaction receipt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:29:26'),
(140, NULL, 'Administrator', 'SB26110498', 'TRANSFER', 'Admin transferred ₹5,000.00 from account SB26110498 to account SB84024383', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 08:49:28'),
(141, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 09:19:17'),
(142, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 09:19:20'),
(143, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 09:19:21'),
(144, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #39 role to: Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 09:37:29'),
(145, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 09:37:49'),
(146, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 09:38:05'),
(147, NULL, 'M Yogesh ', 'SB84024383', 'UPDATE NEWS', 'Updated announcement ID 1 | Title: 🔐 System Security Update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:01:14'),
(148, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #39 role to: User', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:14:40'),
(149, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:15:09'),
(150, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:15:20'),
(151, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 41 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:16:03'),
(152, NULL, 'Muni', 'SB54495134', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:17:01'),
(153, NULL, 'Muni', 'SB54495134', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:17:16'),
(154, NULL, 'Muni', 'SB54495134', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:21:52'),
(155, NULL, 'Muni', 'SB54495134', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:22:20'),
(156, NULL, 'M Yogesh ', 'SB84024383', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:26:19'),
(157, NULL, 'M Yogesh ', 'SB84024383', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:26:32'),
(158, NULL, 'Muni', 'SB54495134', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:27:41'),
(159, NULL, 'Muni', 'SB54495134', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 10:28:00'),
(160, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 12:19:26'),
(161, NULL, 'Administrator', 'SB26110498', 'Document Verified', 'Document verified successfully. Type: transaction_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 12:19:26'),
(162, NULL, 'Administrator', 'SB26110498', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 15:51:29'),
(163, NULL, 'Administrator', 'SB26110498', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 15:52:04'),
(164, NULL, 'Muni', 'SB54495134', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 16:11:27'),
(165, NULL, 'Muni', 'SB54495134', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 16:50:51'),
(166, NULL, 'Muni', 'SB54495134', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 18:39:45'),
(167, NULL, 'Muni', 'SB54495134', 'TRANSFER', 'Admin transferred ₹500.00 from account SB54495134 to account SB26110498', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 18:51:20'),
(168, NULL, 'Unknown', 'N/A', 'USER_DELETED', 'Deleted user ID 41 after verifying zero balance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 18:51:31'),
(169, NULL, 'Administrator', 'SB26110498', 'Login', 'Admin logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 19:56:33'),
(170, NULL, 'Administrator', 'SB26110498', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 19:56:48'),
(171, NULL, 'Yogesh', 'N/A', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:10:38'),
(172, NULL, 'Yogesh', 'N/A', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:13:44'),
(173, NULL, 'Yogesh', 'N/A', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:14:20'),
(174, NULL, 'Yogesh', 'N/A', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:14:32'),
(175, NULL, 'Yogesh', 'N/A', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:30:00'),
(176, NULL, 'Yogesh', 'N/A', 'Login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:55:32'),
(177, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #42 role to: User', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 20:55:54'),
(178, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 43 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:03:49'),
(179, NULL, 'YOGESH M', 'SB56672643', 'Login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:04:29'),
(180, NULL, 'Administrator', 'SB26110498', 'TRANSFER', 'Admin transferred ₹500.00 from account SB56672643 to account SB26110498', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:05:33'),
(181, NULL, 'Administrator', 'SB26110498', 'USER_DELETED', 'Deleted user ID 43 after verifying zero balance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:05:39'),
(182, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-02 21:05:52'),
(183, NULL, 'Administrator', 'SB26110498', 'Login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:20:59'),
(184, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:21:52'),
(185, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:22:02'),
(186, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:32:42'),
(187, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:32:53'),
(188, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 46 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:36:54'),
(189, NULL, 'Administrator', 'SB26110498', 'USER_DEACTIVATED', 'User deactivated user ID 46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:39:13'),
(190, NULL, 'Administrator', 'SB26110498', 'USER_DELETED', 'Deleted user ID 46 after verifying zero balance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:39:33'),
(191, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:39:44'),
(192, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:43:32');
INSERT INTO `admin_logs` (`log_id`, `user_id`, `user_name`, `account_number`, `action`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(193, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:43:40'),
(194, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:46:04'),
(195, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 03:46:11'),
(196, NULL, 'Administrator', 'SB26110498', 'Login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:37:42'),
(197, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 49 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:37:47'),
(198, NULL, 'YOGESH M', 'SB18089890', 'Login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:38:11'),
(199, NULL, 'Administrator', 'SB26110498', 'USER_DEACTIVATED', 'User deactivated user ID 49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:52:28'),
(200, NULL, 'Administrator', 'SB26110498', 'USER_DELETED', 'Deleted user ID 49 after verifying zero balance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:52:36'),
(201, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:52:50'),
(202, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:59:31'),
(203, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 04:59:40'),
(204, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 51 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 05:06:00'),
(205, NULL, 'Administrator', 'SB26110498', 'USER_DELETED', 'Deleted user ID 51 after verifying zero balance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 05:15:47'),
(206, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 05:17:25'),
(207, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 52 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 05:24:56'),
(208, NULL, 'Administrator', 'SB26110498', 'USER_DELETED', 'Deleted user ID 52 after verifying zero balance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 05:26:52'),
(209, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 05:27:11'),
(210, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:08:17'),
(211, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:08:25'),
(212, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:12:11'),
(213, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:12:17'),
(214, NULL, 'Administrator', 'SB26110498', 'USER_REJECTED', 'Rejected and deleted user ID 55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:15:46'),
(215, NULL, 'Administrator', 'SB26110498', 'Add User', 'Admin created new user: YOGESH M (yogeshm@srmasc.ac.in)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:15:51'),
(216, NULL, 'Administrator', 'SB26110498', 'USER_APPROVED', 'Approved user ID 56 and created bank account', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:32:58'),
(217, NULL, 'YOGESH M', 'SB50928009', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:33:30'),
(218, NULL, 'YOGESH M', 'SB50928009', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:33:42'),
(219, NULL, 'YOGESH M', 'SB50928009', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:45:34'),
(220, NULL, 'YOGESH M', 'SB50928009', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:46:16'),
(221, NULL, 'YOGESH M', 'SB50928009', 'User Logout', 'User logged out of the system', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:46:59'),
(222, NULL, 'Administrator', 'SB26110498', 'Report Download', 'Downloaded transaction report Pdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:47:31'),
(223, NULL, 'YOGESH M', 'SB50928009', 'Login', 'User logged in successfully with OTP verification', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:54:29'),
(224, NULL, 'YOGESH M', 'SB50928009', 'Login Verification', 'Login verification APPROVED from IP: ::1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:54:39'),
(225, NULL, 'Administrator', 'SB26110498', 'DEPOSIT', 'Admin deposited ₹5,000.00 into account SB50928009', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 06:55:16'),
(226, NULL, 'YOGESH M', 'SB50928009', 'Receipt Generated', 'Generated transaction receipt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:23:45'),
(227, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:27:04'),
(228, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:28:19'),
(229, NULL, 'YOGESH M', 'SB50928009', 'Report Download', 'Downloaded transaction report PDF', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:33:11'),
(230, NULL, 'YOGESH M', 'SB50928009', 'Voice Banking', 'Opened voice banking interface', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:33:34'),
(231, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:33:44'),
(232, NULL, 'Administrator', 'SB26110498', 'Viewed Verification Logs', 'Admin opened document verification activity page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:33:45'),
(233, NULL, 'Administrator', 'SB26110498', 'DEPOSIT', 'Admin deposited ₹5,000.00 into account SB50928009', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:35:48'),
(234, NULL, 'YOGESH M', 'SB50928009', 'Deposit Initiated', 'User initiated deposit of ₹5,000.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:36:18'),
(235, NULL, 'YOGESH M', 'SB50928009', 'Deposit', 'Deposited ₹5,000.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:36:38'),
(236, NULL, 'YOGESH M', 'SB50928009', 'Voice Banking', 'Opened voice banking interface', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:36:52'),
(237, NULL, 'YOGESH M', 'SB50928009', 'Receipt Generated', 'Generated transaction receipt', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:37:27'),
(238, NULL, 'YOGESH M', 'SB50928009', 'Report Download', 'Downloaded transaction report PDF', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:38:06'),
(239, NULL, 'YOGESH M', 'SB50928009', 'Report Download', 'Downloaded transaction report PDF', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:38:15'),
(240, NULL, 'Administrator', 'SB26110498', 'Loan Approved', 'Loan ID: 62 | Amount: ₹3000.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:03'),
(241, NULL, 'Administrator', 'SB26110498', 'Viewed Investments', 'Admin opened investments management page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:14'),
(242, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #3 role to: Admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:20'),
(243, NULL, 'Administrator', 'SB26110498', 'Viewed Investments', 'Admin opened investments management page', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:27'),
(244, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #3 role to: User', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:38'),
(245, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #4 role to: User', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:43'),
(246, NULL, 'Administrator', 'SB26110498', 'Change User Role', 'Admin changed user #1 role to: User', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:39:52'),
(247, NULL, 'Administrator', 'SB26110498', 'Report Download', 'Downloaded transaction report Pdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:40:16'),
(248, NULL, 'Administrator', 'SB26110498', 'Report Download', 'Downloaded transaction report Pdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:42:56'),
(249, NULL, 'Administrator', 'SB26110498', 'Report Download', 'Downloaded transaction report Pdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:47:09'),
(250, NULL, 'YOGESH M', 'SB50928009', 'Deposit Initiated', 'User initiated deposit of ₹500.00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-03 07:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `total_balance` decimal(12,2) NOT NULL,
  `last_updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance_id`, `user_id`, `full_name`, `total_balance`, `last_updated`) VALUES
(3, 7, 'LSPU Student 1', 840.00, '2025-05-05 23:16:22'),
(42, 7, 'LSPU Student 1', 1040.00, '2025-05-08 22:13:12'),
(43, 7, 'LSPU Student 1', 40.00, '2025-05-08 22:14:30'),
(51, 7, 'LSPU Student 1', 540.00, '2025-05-09 14:15:14'),
(61, 2, 'Amiguel', 144206.98, '2025-05-11 21:42:12'),
(62, 2, 'Amiguel', 145206.98, '2025-05-12 20:27:56'),
(63, 2, 'Amiguel', 144206.98, '2025-05-15 13:23:28'),
(64, 2, 'Amiguel', 44206.98, '2025-05-15 13:26:26'),
(68, 2, 'Amiguel', 54206.98, '2025-05-15 13:44:30'),
(70, 2, 'Amiguel', 64206.98, '2025-05-15 13:50:31'),
(72, 4, 'Isabel', 2050865.00, '2025-05-17 21:30:26'),
(73, 4, 'Isabel', 2052865.00, '2025-05-17 23:15:00'),
(74, 4, 'Isabel', 2000000.00, '2025-05-17 23:15:33'),
(75, 4, 'Isabel', 1900000.00, '2025-05-17 23:17:28'),
(76, 1, 'Shaison', 100500.00, '2025-05-17 23:17:28'),
(101, 4, 'Isabel', 1468999.97, '2025-05-18 03:13:58'),
(102, 4, 'Isabel', 1466999.97, '2025-05-18 03:14:19'),
(103, 4, 'Isabel', 1486999.97, '2025-05-18 03:15:19'),
(104, 4, 'Isabel', 1484999.97, '2025-05-18 03:15:56'),
(105, 4, 'Isabel', 1400000.97, '2025-05-18 03:20:36'),
(106, 4, 'Isabel', 1000000.00, '2025-05-18 03:21:49'),
(107, 1, 'Shaison', 500500.97, '2025-05-18 03:21:49'),
(108, 4, 'Isabel', 999400.00, '2025-05-18 05:15:57'),
(109, 2, 'Amiguel', 65206.98, '2025-05-20 16:10:51'),
(110, 2, 'Amiguel', 66206.98, '2025-05-20 16:17:15'),
(111, 2, 'Amiguel', 56206.98, '2025-05-20 16:32:34'),
(112, 2, 'Amiguel', 106206.98, '2025-05-27 19:56:22'),
(113, 2, 'Amiguel', 107206.98, '2025-05-27 19:57:28'),
(114, 2, 'Amiguel', 117206.98, '2025-05-27 20:02:52'),
(115, 2, 'Amiguel', 106706.98, '2025-05-27 20:07:54'),
(116, 2, 'Amiguel', 105656.98, '2025-05-27 20:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `bank_news`
--

CREATE TABLE `bank_news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `published_by` varchar(100) DEFAULT NULL,
  `status` enum('draft','published') DEFAULT 'published',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_news`
--

INSERT INTO `bank_news` (`id`, `title`, `content`, `published_by`, `status`, `created_at`, `updated_at`) VALUES
(1, '🔐 System Security Update', 'We have successfully deployed advanced encryption and firewall systems to enhance customer data protection. Your accounts are now more secure than ever.', NULL, 'published', '2026-01-02 07:16:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `status` enum('new','unread','read','replied') NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `status`) VALUES
(1, 'Renz', 'ramosrayson84@gmail.com', 'Renz', 'hahahha', '2025-05-20 09:55:47', 'replied'),
(2, 'Renz Rayson Ramos', 'ramosrayson84@gmail.com', 'Hello po', 'napaka airolev', '2025-05-30 03:51:24', 'unread'),
(3, 'Paul Paolo Aro Mamugay', 'paulpaolomamugay6@gmail.com', 'Loan', 'Please ioapproved nyo na load ko huhuhhuh', '2025-05-31 07:27:31', 'replied'),
(4, 'Paul Paolo Aro Mamugay', 'paulpaolomamugay6@gmail.com', 'Loan', 'Please ioapproved nyo na load ko huhuhhuh', '2025-05-31 07:27:35', 'replied'),
(5, 'YOGESH', 'yogeshm@srmasc.ac.in', 'asking dought', 'how to open account', '2026-01-02 07:58:06', 'replied');

-- --------------------------------------------------------

--
-- Table structure for table `id_verifications`
--

CREATE TABLE `id_verifications` (
  `verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_file_path` varchar(255) NOT NULL,
  `verification_status` enum('pending','verified','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_verifications`
--

INSERT INTO `id_verifications` (`verification_id`, `user_id`, `id_type`, `id_file_path`, `verification_status`, `created_at`, `verified_at`) VALUES
(2, 38, 'drivers_license', 'uploads/id_verifications/id_38_1749041706.png', 'pending', '2025-06-04 12:55:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `investment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `duration_months` int(11) NOT NULL DEFAULT 12,
  `status` enum('active','matured','withdrawn') DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  `matured_at` datetime DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `withdrawn_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`investment_id`, `user_id`, `plan_name`, `amount`, `interest_rate`, `duration_months`, `status`, `created_at`, `matured_at`, `plan_id`, `withdrawn_at`) VALUES
(1, 5, '', 1000.00, 0.00, 0, 'withdrawn', '2025-05-01 10:14:36', '2025-05-01 10:22:52', 1, NULL),
(2, 5, '', 500.00, 0.00, 0, 'matured', '2025-05-02 16:56:06', NULL, 1, '2025-05-02 17:00:42'),
(3, 5, '', 500.00, 0.00, 0, 'matured', '2025-05-02 17:02:11', '2026-01-02 12:24:33', 1, NULL),
(5, 7, '', 1000.00, 0.00, 0, 'active', '2025-05-08 22:14:30', NULL, 2, NULL),
(7, 4, NULL, 500.00, 0.00, 12, 'matured', '2025-05-18 03:13:58', '2026-01-02 12:24:33', 1, NULL),
(8, 4, NULL, 2000.00, 0.00, 12, 'active', '2025-05-18 03:14:19', NULL, 2, NULL),
(9, 4, NULL, 2000.00, 0.00, 12, 'active', '2025-05-18 03:15:56', NULL, 2, NULL),
(10, 4, NULL, 600.00, 0.00, 12, 'matured', '2025-05-18 05:15:57', '2026-01-02 12:24:33', 1, NULL),
(11, 35, NULL, 12000.00, 0.00, 12, 'active', '2025-06-02 17:19:34', NULL, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investment_plans`
--

CREATE TABLE `investment_plans` (
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `duration_months` int(11) NOT NULL,
  `min_amount` decimal(12,2) NOT NULL,
  `risk_level` varchar(50) DEFAULT NULL,
  `max_amount` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investment_plans`
--

INSERT INTO `investment_plans` (`plan_id`, `plan_name`, `interest_rate`, `duration_months`, `min_amount`, `risk_level`, `max_amount`) VALUES
(1, 'Starter Plan', 3.50, 6, 500.00, 'Low', 5000.00),
(2, 'Balanced Growth', 5.00, 12, 1000.00, 'Medium', 10000.00),
(3, 'Aggressive Growth', 7.00, 24, 2500.00, 'High', 25000.00),
(4, 'High Yield Bond', 9.00, 36, 5000.00, 'High', 100000.00),
(5, 'Basic Plan', 2.00, 12, 1000.00, 'Low', 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `duration_months` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `term_months` int(11) NOT NULL,
  `status` enum('pending','approved','rejected','paid') NOT NULL DEFAULT 'pending',
  `created_at` datetime DEFAULT current_timestamp(),
  `approved_at` datetime DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `is_paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `total_due` decimal(12,2) NOT NULL DEFAULT 0.00,
  `penalty_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `id_selfie_file_path` varchar(255) DEFAULT NULL,
  `id_document_file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loan_id`, `user_id`, `amount`, `interest_rate`, `duration_months`, `due_date`, `term_months`, `status`, `created_at`, `approved_at`, `purpose`, `is_paid`, `total_due`, `penalty_amount`, `id_selfie_file_path`, `id_document_file_path`) VALUES
(1, 5, 100.00, 5.00, NULL, NULL, 1, 'approved', '2025-04-29 10:55:03', '2025-04-29 02:55:14', 'awdasd', 'no', 105.00, 6.30, NULL, NULL),
(4, 4, 20000.00, 4.50, NULL, NULL, 12, 'approved', '2025-05-18 10:15:04', '2025-05-18 17:15:19', 'w', 'no', 20900.00, 0.00, NULL, NULL),
(58, 5, 1000.00, 5.00, NULL, NULL, 12, 'approved', '2025-05-31 12:18:59', '2025-05-31 04:19:20', 'asad', 'no', 550.00, 0.00, NULL, NULL),
(59, 35, 1000.00, 5.00, NULL, NULL, 1, 'approved', '2025-06-02 15:57:45', '2025-06-02 10:00:38', 'Hello world', 'no', 1050.00, 0.00, NULL, NULL),
(60, 35, 20000.00, 4.50, NULL, NULL, 12, 'approved', '2025-06-02 16:03:16', '2025-06-02 10:03:50', 'Gusto ko bumili ng bahay HAHAHA', 'no', 18678.00, 0.00, NULL, NULL),
(61, 5, 100.00, 5.00, NULL, '2027-01-02', 12, 'approved', '2025-06-04 21:08:10', '2026-01-02 08:05:43', 'para sa akong mga anak', 'no', 105.00, 0.00, '../uploads/loan_verifications/selfie_5_1749042489.png', '../uploads/loan_verifications/document_5_1749042490.png'),
(62, 38, 3000.00, 5.00, NULL, '2027-01-03', 12, 'approved', '2026-01-02 12:25:26', '2026-01-03 08:39:03', 'car', 'no', 3150.00, 0.00, 'uploads/loan_verifications/selfie_38_1767336926.png', 'uploads/loan_verifications/document_38_1767336926.png');

--
-- Triggers `loans`
--
DELIMITER $$
CREATE TRIGGER `update_loan_penalty` BEFORE UPDATE ON `loans` FOR EACH ROW BEGIN
    IF NEW.approved_at IS NOT NULL AND NEW.is_paid = 'no' THEN
        IF DATE_ADD(NEW.approved_at, INTERVAL NEW.term_months MONTH) < NOW() THEN
            SET NEW.penalty_amount = NEW.total_due * (0.01 * DATEDIFF(NOW(), DATE_ADD(NEW.approved_at, INTERVAL NEW.term_months MONTH)));
        ELSE
            SET NEW.penalty_amount = 0;
        END IF;
    ELSE
        SET NEW.penalty_amount = 0;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `loan_history`
--

CREATE TABLE `loan_history` (
  `history_id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `changed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_history`
--

INSERT INTO `loan_history` (`history_id`, `loan_id`, `status`, `changed_at`) VALUES
(40, 58, 'approved', '2025-05-31 04:19:20'),
(41, 59, 'approved', '2025-06-02 10:00:38'),
(42, 60, 'approved', '2025-06-02 10:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_records`
--

CREATE TABLE `login_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL,
  `status` enum('success','failed') NOT NULL,
  `login_time` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_records`
--

INSERT INTO `login_records` (`id`, `user_id`, `ip_address`, `user_agent`, `status`, `login_time`, `created_at`) VALUES
(1, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-05-18 04:15:57', '2025-05-18 04:15:57'),
(2, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'success', '2025-05-18 04:28:58', '2025-05-18 04:28:58'),
(3, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'success', '2025-05-18 05:04:21', '2025-05-18 05:04:21'),
(4, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-05-18 05:25:03', '2025-05-18 05:25:03'),
(5, 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-05-18 08:46:28', '2025-05-18 08:46:28'),
(25, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'failed', '2025-05-27 14:49:16', '2025-05-27 14:49:16'),
(26, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'failed', '2025-05-27 14:49:22', '2025-05-27 14:49:22'),
(27, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-05-27 14:56:58', '2025-05-27 14:56:58'),
(28, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-05-27 15:00:15', '2025-05-27 15:00:15'),
(29, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'failed', '2025-05-31 04:15:18', '2025-05-31 04:15:18'),
(30, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'failed', '2025-05-31 04:15:24', '2025-05-31 04:15:24'),
(31, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'failed', '2025-05-31 04:15:50', '2025-05-31 04:15:50'),
(32, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'success', '2025-05-31 04:16:47', '2025-05-31 04:16:47'),
(33, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'success', '2025-05-31 04:17:52', '2025-05-31 04:17:52'),
(34, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'success', '2025-05-31 05:22:53', '2025-05-31 05:22:53'),
(35, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'success', '2025-05-31 05:24:21', '2025-05-31 05:24:21'),
(36, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'success', '2025-05-31 05:27:33', '2025-05-31 05:27:33'),
(48, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-05-31 10:30:28', '2025-05-31 10:30:28'),
(49, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'failed', '2025-06-02 05:20:15', '2025-06-02 05:20:15'),
(50, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-06-02 05:20:29', '2025-06-02 05:20:29'),
(51, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'success', '2025-06-02 05:41:09', '2025-06-02 05:41:09'),
(52, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'success', '2025-06-02 05:57:45', '2025-06-02 05:57:45'),
(53, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'success', '2025-06-02 05:58:15', '2025-06-02 05:58:15'),
(54, 35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'success', '2025-06-02 07:40:30', '2025-06-02 07:40:30'),
(56, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'success', '2025-06-04 10:33:54', '2025-06-04 10:33:54'),
(57, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'success', '2025-06-04 11:27:07', '2025-06-04 11:27:07'),
(58, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'success', '2025-06-04 11:42:56', '2025-06-04 11:42:56'),
(59, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'success', '2025-06-04 13:01:07', '2025-06-04 13:01:07'),
(60, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'failed', '2026-01-02 06:49:27', '2026-01-02 06:49:27'),
(61, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 06:51:57', '2026-01-02 06:51:57'),
(62, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 06:53:12', '2026-01-02 06:53:12'),
(63, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 06:56:19', '2026-01-02 06:56:19'),
(79, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 15:50:59', '2026-01-02 15:50:59'),
(80, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:07:53', '2026-01-02 19:07:53'),
(81, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:08:12', '2026-01-02 19:08:12'),
(82, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:08:13', '2026-01-02 19:08:13'),
(83, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:09:07', '2026-01-02 19:09:07'),
(84, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:17:14', '2026-01-02 19:17:14'),
(85, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:17:20', '2026-01-02 19:17:20'),
(86, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:22:16', '2026-01-02 19:22:16'),
(87, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:34:31', '2026-01-02 19:34:31'),
(88, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:34:33', '2026-01-02 19:34:33'),
(89, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:34:40', '2026-01-02 19:34:40'),
(90, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:34:41', '2026-01-02 19:34:41'),
(91, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:34:43', '2026-01-02 19:34:43'),
(92, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:35:24', '2026-01-02 19:35:24'),
(93, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:35:26', '2026-01-02 19:35:26'),
(94, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:35:27', '2026-01-02 19:35:27'),
(95, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:35:27', '2026-01-02 19:35:27'),
(96, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:35:28', '2026-01-02 19:35:28'),
(97, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:35:29', '2026-01-02 19:35:29'),
(98, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:48:12', '2026-01-02 19:48:12'),
(99, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:48:15', '2026-01-02 19:48:15'),
(100, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:51:03', '2026-01-02 19:51:03'),
(101, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:51:07', '2026-01-02 19:51:07'),
(102, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:51:09', '2026-01-02 19:51:09'),
(103, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:51:09', '2026-01-02 19:51:09'),
(104, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:51:11', '2026-01-02 19:51:11'),
(105, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:54:33', '2026-01-02 19:54:33'),
(106, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:54:43', '2026-01-02 19:54:43'),
(107, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:55:12', '2026-01-02 19:55:12'),
(108, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:55:57', '2026-01-02 19:55:57'),
(114, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 03:20:26', '2026-01-03 03:20:26'),
(115, 38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 04:37:08', '2026-01-03 04:37:08'),
(119, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'failed', '2026-01-03 06:32:47', '2026-01-03 06:32:47'),
(120, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 06:33:07', '2026-01-03 06:33:07'),
(121, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 06:45:17', '2026-01-03 06:45:17'),
(122, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 06:54:00', '2026-01-03 06:54:00'),
(123, 56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 08:01:18', '2026-01-03 08:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `login_verifications`
--

CREATE TABLE `login_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `status` enum('success','failed') DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_verifications`
--

INSERT INTO `login_verifications` (`id`, `user_id`, `token`, `verified`, `ip_address`, `user_agent`, `status`, `created_at`, `expires_at`) VALUES
(88, 38, '350328bf1a50521e84319414db7a222fc3601d32e0e021726cd1278bdeb7c44b', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-02 19:56:33', '2026-01-02 14:41:33'),
(94, 56, 'fdec48404b1a30bcc615d91e7f112cbfdffd055a1104158dbd399bf864cc393e', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'success', '2026-01-03 06:54:29', '2026-01-03 01:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_verification`
--

INSERT INTO `otp_verification` (`id`, `email`, `otp`, `created_at`, `expires_at`, `is_used`) VALUES
(2, '0323-4199@lspu.edu.ph', '966304', '2025-04-23 15:25:43', '2025-04-23 22:30:43', 0),
(3, 'amiguelll0513@gmail.com', '046422', '2025-05-18 09:51:44', '2025-05-18 16:56:44', 1),
(4, '0323-4199@lspu.edu.ph', '097192', '2025-05-18 12:14:53', '2025-05-18 19:19:53', 1),
(5, 'shaison62@gmail.com', '638497', '2025-05-15 05:50:13', '2025-05-14 21:55:13', 1),
(7, 'senioritaisabel@gmail.com', '686762', '2025-05-02 09:22:47', '2025-05-02 01:27:47', 1),
(37, '0323-3883@lspu.edu.ph', '376984', '2025-06-02 07:40:30', '2025-06-02 01:45:30', 1),
(41, 'shaison61@gmail.com', '487405', '2025-06-04 11:42:56', '2025-06-04 03:47:56', 1),
(42, 'ramosrayson84@gmail.com', '482723', '2025-06-04 13:01:07', '2025-06-04 05:06:07', 1),
(68, 'mailtomyogesh@gmail.com', '890242', '2026-01-03 04:37:08', '2026-01-03 00:12:08', 1),
(75, 'yogeshm@srmasc.ac.in', '315430', '2026-01-03 08:01:18', '2026-01-03 03:36:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pdf_verifications`
--

CREATE TABLE `pdf_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `pdf_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_verifications`
--

CREATE TABLE `report_verifications` (
  `report_id` bigint(20) NOT NULL,
  `verification_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `report_type` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `comments` text DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_verifications`
--

INSERT INTO `report_verifications` (`report_id`, `verification_id`, `user_id`, `admin_id`, `transaction_id`, `token`, `report_type`, `status`, `comments`, `generated_by`, `created_at`, `expires_at`) VALUES
(1, 1, 0, 38, NULL, 'a4b1946b17b2b49825b8dd6aa327b95232746ca6bea71cbc157748a4e6e06f7a', 'transaction_report', 'pending', NULL, NULL, '2026-01-02 07:24:10', NULL),
(2, 2, 0, 38, NULL, '311964db673d8b27c1030549e7bddbd0ca3970c0da25419fccaf3ea73c87ac38', 'transaction_report', 'pending', NULL, NULL, '2026-01-02 07:38:06', NULL),
(3, 0, 0, 39, 224, '7927b277053c29bcba3ac07f67e2f55b04e27a7262a156ec023bf6d56f60c8f4', 'transaction_receipt', 'pending', NULL, NULL, '2026-01-02 08:29:17', NULL),
(6, 7814314685, 0, 56, 231, 'f150a82f424138c2b09d86f6d0808a2e8763e3e73b8f449333fbde2228d8bdda', 'transaction_receipt', 'pending', NULL, NULL, '2026-01-03 07:23:35', NULL),
(8, 2424923368, 0, 56, NULL, '3e809c1b33dc4d3270206fa127f8cd5d19fc063a130b392e52662cedfb3b1cb0', 'user_receipt', 'pending', NULL, NULL, '2026-01-03 07:33:01', NULL),
(9, 9858501568, 0, 56, 233, 'bb08e10e30a693cd116023826ef10f6dbacb2509e595da8ad07f166d760675f9', 'transaction_receipt', 'pending', NULL, NULL, '2026-01-03 07:37:18', NULL),
(10, 1938361397, 0, 56, NULL, '49fa7b21610a065cf2431836502226a12c1c08742510bc2a0f7b481cc96ec829', 'user_receipt', 'pending', NULL, NULL, '2026-01-03 07:37:56', NULL),
(11, 5845382664, 0, 56, NULL, '92e53430c4e86a2b078be1b19ca0461411f110f9d8b66056506dd4a66888899c', 'user_receipt', 'pending', NULL, NULL, '2026-01-03 07:38:06', NULL),
(13, 8827317498, 0, 38, NULL, '7976eb1e7eb87e75b243cebe97f9d52d2eca552a7c73cbc18735cd6888525914', 'admin_report', 'pending', NULL, NULL, '2026-01-03 07:42:56', NULL),
(14, 5897491466, 0, 38, NULL, 'bdc694b7213f3c44b13b9ae36a0f326edd168a8f6dbb24fbf762a6888caa377c', 'admin_report', 'pending', NULL, NULL, '2026-01-03 07:47:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slip_verifications`
--

CREATE TABLE `slip_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slip_verifications`
--

INSERT INTO `slip_verifications` (`id`, `user_id`, `token`, `created_at`, `expires_at`) VALUES
(7, 56, '73c5ac453d2504a5a15914cbe378a29c', '2026-01-03 11:45:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `type` enum('deposit','withdrawal','transfer_in','transfer_out','loanpayment') NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `related_account_id` int(11) DEFAULT NULL,
  `performed_by` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `account_id`, `type`, `amount`, `description`, `related_account_id`, `performed_by`, `created_at`) VALUES
(1, 1, 'deposit', 2000.00, 'Cash deposit', NULL, NULL, '2025-04-16 08:41:45'),
(2, 1, 'withdrawal', 1000.00, 'Cash withdrawal', NULL, NULL, '2025-04-16 08:44:38'),
(3, 1, 'transfer_out', 500.00, 'Hello', 2, NULL, '2025-04-16 08:52:35'),
(4, 2, 'transfer_in', 500.00, 'Hello', 1, NULL, '2025-04-16 08:52:35'),
(5, 2, 'deposit', 100.00, 'Cash deposit', NULL, NULL, '2025-04-20 13:34:01'),
(6, 2, 'withdrawal', 100.00, 'Cash withdrawal', NULL, NULL, '2025-04-20 13:34:18'),
(7, 2, 'loanpayment', 100.00, 'Loan payment for Loan #7', NULL, NULL, '2025-04-21 10:19:07'),
(8, 2, 'deposit', 10000.00, 'Cash deposit', NULL, NULL, '2025-04-21 10:50:36'),
(9, 2, 'loanpayment', 100.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:05:57'),
(10, 2, 'loanpayment', 10.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:06:44'),
(11, 2, 'loanpayment', 10.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:06:49'),
(12, 2, 'loanpayment', 80.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:07:18'),
(13, 2, 'loanpayment', 100.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:07:43'),
(14, 2, 'loanpayment', 100.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:09:50'),
(15, 2, 'loanpayment', 5.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:12:35'),
(16, 2, 'loanpayment', 500.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:14:55'),
(17, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:14:57'),
(18, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:15:00'),
(19, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:15:01'),
(20, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:15:02'),
(21, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:15:02'),
(22, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:15:03'),
(23, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:15:04'),
(24, 2, 'loanpayment', 500.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:16:37'),
(25, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:17:22'),
(26, 2, 'loanpayment', 500.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:19:07'),
(27, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:19:13'),
(28, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:24:14'),
(29, 2, 'loanpayment', 500.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:24:49'),
(30, 2, 'loanpayment', 500.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:24:54'),
(31, 2, 'loanpayment', 100.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:29:28'),
(32, 2, 'loanpayment', 100.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:31:26'),
(33, 2, 'loanpayment', 5.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:34:01'),
(34, 2, 'loanpayment', 0.20, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:36:31'),
(35, 2, 'loanpayment', 0.06, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:36:43'),
(36, 2, 'loanpayment', 100.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:44:19'),
(37, 2, 'loanpayment', 5.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:44:34'),
(38, 2, 'loanpayment', 0.26, 'Full Loan Payment', NULL, NULL, '2025-04-21 03:45:21'),
(39, 2, 'loanpayment', 100.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:46:11'),
(40, 2, 'loanpayment', 100.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 03:46:23'),
(41, 2, 'loanpayment', 100.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 04:11:49'),
(42, 2, 'loanpayment', 5.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 04:12:19'),
(43, 2, 'loanpayment', 525.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 04:19:13'),
(44, 2, 'loanpayment', 1000.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 04:20:35'),
(45, 2, 'loanpayment', 1000.00, 'Partial Loan Payment', NULL, NULL, '2025-04-21 04:22:43'),
(46, 2, 'loanpayment', 50.00, 'Full Loan Payment', NULL, NULL, '2025-04-21 04:24:58'),
(50, 8, 'deposit', 99139149.00, 'Cash deposit', NULL, NULL, '2025-04-24 15:14:18'),
(51, 8, 'withdrawal', 99139.00, 'Cash withdrawal', NULL, NULL, '2025-04-24 15:15:02'),
(52, 8, 'withdrawal', 99040010.00, 'Cash withdrawal', NULL, NULL, '2025-04-24 15:15:21'),
(53, 8, 'deposit', 20000.00, 'Cash deposit', NULL, NULL, '2025-04-24 15:15:34'),
(54, 8, 'transfer_out', 15000.00, 'wow yaman', 7, NULL, '2025-04-24 15:16:01'),
(55, 7, 'transfer_in', 15000.00, 'wow yaman', 8, NULL, '2025-04-24 15:16:01'),
(56, 7, 'deposit', 20000.00, 'Cash deposit', NULL, NULL, '2025-04-24 15:47:10'),
(57, 7, 'deposit', 2322.00, 'Cash deposit', NULL, NULL, '2025-04-25 10:00:49'),
(58, 7, 'withdrawal', 331000.00, 'Cash withdrawal', NULL, NULL, '2025-04-25 10:00:58'),
(59, 8, 'withdrawal', 800000.00, 'Cash withdrawal', NULL, NULL, '2025-04-25 13:33:27'),
(60, 8, 'transfer_out', 5000.00, 'sayo na yan ah', 2, NULL, '2025-04-25 13:34:06'),
(61, 2, 'transfer_in', 5000.00, 'sayo na yan ah', 8, NULL, '2025-04-25 13:34:06'),
(62, 8, 'deposit', 300000.00, 'Cash deposit', NULL, NULL, '2025-04-25 13:49:26'),
(63, 8, 'loanpayment', 209000.00, 'Full Loan Payment', NULL, NULL, '2025-04-25 20:49:44'),
(64, 8, 'loanpayment', 3150.00, 'Full Loan Payment', NULL, NULL, '2025-04-25 20:49:57'),
(65, 8, 'loanpayment', 2205.00, 'Full Loan Payment', NULL, NULL, '2025-04-25 20:50:07'),
(66, 8, 'loanpayment', 209000.00, 'Full Loan Payment', NULL, NULL, '2025-04-26 16:19:49'),
(67, 8, 'loanpayment', 25000.00, 'Partial Loan Payment', NULL, NULL, '2025-04-26 16:20:14'),
(68, 8, 'loanpayment', 80.00, 'Full Loan Payment', NULL, NULL, '2025-04-26 16:20:24'),
(69, 8, 'withdrawal', 740000.00, 'Cash withdrawal', NULL, NULL, '2025-04-26 09:20:35'),
(70, 2, 'deposit', 1000.00, 'Cash deposit', NULL, NULL, '2025-05-02 08:39:56'),
(71, 2, 'withdrawal', 1400.00, 'Cash withdrawal', NULL, NULL, '2025-05-02 08:40:25'),
(72, 2, 'transfer_out', 100000.00, 'awdasd', 7, NULL, '2025-05-02 08:41:04'),
(73, 7, 'transfer_in', 100000.00, 'awdasd', 2, NULL, '2025-05-02 08:41:04'),
(74, 11, 'deposit', 90000.00, 'Cash deposit', NULL, NULL, '2025-05-02 09:23:58'),
(75, 11, 'deposit', 70.00, 'Cash deposit', NULL, NULL, '2025-05-02 09:24:09'),
(76, 11, 'withdrawal', 70.00, 'Cash withdrawal', NULL, NULL, '2025-05-02 09:24:41'),
(77, 11, 'transfer_out', 90.00, 'awdasd', 7, NULL, '2025-05-02 09:25:04'),
(78, 7, 'transfer_in', 90.00, 'awdasd', 11, NULL, '2025-05-02 09:25:04'),
(79, 13, 'deposit', 1000.00, 'Cash deposit', NULL, NULL, '2025-05-05 11:57:57'),
(80, 13, 'deposit', 500.00, 'Cash deposit', NULL, NULL, '2025-05-05 11:58:00'),
(81, 13, 'withdrawal', 500.00, 'Cash withdrawal', NULL, NULL, '2025-05-05 11:58:18'),
(82, 13, 'transfer_out', 500.00, 'Pera mo', NULL, NULL, '2025-05-05 11:59:16'),
(87, 13, 'transfer_in', 300.00, 'Sukli mo', NULL, NULL, '2025-05-05 12:03:01'),
(94, 13, 'deposit', 40.00, 'Cash deposit', NULL, NULL, '2025-05-05 15:16:22'),
(128, 13, 'deposit', 200.00, 'Cash deposit', NULL, NULL, '2025-05-08 14:13:12'),
(136, 13, 'transfer_in', 500.00, 'hello how\'s your day?', NULL, NULL, '2025-05-09 06:15:14'),
(145, 2, 'deposit', 100000.00, 'Cash deposit', NULL, NULL, '2025-05-11 13:42:12'),
(146, 2, 'withdrawal', 1000.00, 'Cash withdrawal', NULL, NULL, '2025-05-15 05:23:28'),
(147, 2, 'transfer_out', 100000.00, 'ipapasa ko sayo to', NULL, NULL, '2025-05-15 05:26:26'),
(151, 2, 'transfer_in', 10000.00, 'Transfer from SB49600110', NULL, NULL, '2025-05-15 05:44:30'),
(153, 2, 'transfer_in', 10000.00, 'Transfer from SB49600110', NULL, NULL, '2025-05-15 05:50:31'),
(155, 8, 'deposit', 50000.00, 'Deposit of $50,000.00', NULL, NULL, '2025-05-18 04:30:26'),
(156, 8, 'deposit', 2000.00, 'Deposit of $2,000.00', NULL, NULL, '2025-05-18 06:15:00'),
(157, 8, 'withdrawal', 52865.00, 'Withdrawal of $52,865.00', NULL, NULL, '2025-05-18 06:15:33'),
(158, 8, 'transfer_out', 100000.00, 'gift q', 1, NULL, '2025-05-18 06:17:28'),
(159, 1, 'transfer_in', 100000.00, 'gift q', 8, NULL, '2025-05-18 06:17:28'),
(160, 8, 'withdrawal', 84999.00, 'Withdrawal of $84,999.00', NULL, NULL, '2025-05-18 10:20:36'),
(161, 8, 'transfer_out', 400000.97, 'utang', 1, NULL, '2025-05-18 10:21:49'),
(162, 1, 'transfer_in', 400000.97, 'utang', 8, NULL, '2025-05-18 10:21:49'),
(163, 2, 'deposit', 1000.00, 'Deposit of $1,000.00', NULL, NULL, '2025-05-20 08:10:51'),
(164, 2, 'deposit', 1000.00, 'Deposit of $1,000.00', NULL, NULL, '2025-05-20 08:17:15'),
(165, 2, 'withdrawal', 10000.00, 'Withdrawal of $10,000.00', NULL, NULL, '2025-05-20 08:32:34'),
(166, 2, 'loanpayment', 10500.00, 'Full Loan Payment', NULL, NULL, '2025-05-27 04:07:54'),
(167, 2, 'loanpayment', 1050.00, 'Full Loan Payment', NULL, NULL, '2025-05-27 04:08:06'),
(168, 11, 'deposit', 1000.00, 'Deposit of $1,000.00', NULL, NULL, '2025-05-27 15:06:53'),
(169, 11, 'deposit', 1000.00, 'Deposit of $1,000.00', NULL, NULL, '2025-05-31 04:42:21'),
(170, 11, 'loanpayment', 500.00, 'Partial Loan Payment', NULL, NULL, '2025-05-30 20:47:43'),
(171, 15, 'deposit', 1000.00, 'Deposit of $1,000.00', NULL, NULL, '2025-05-31 10:45:56'),
(192, 15, 'deposit', 5000.00, 'Initial deposit', NULL, NULL, '2025-05-01 02:00:00'),
(193, 15, 'withdrawal', 1200.00, 'ATM withdrawal', NULL, NULL, '2025-05-02 06:15:00'),
(194, 15, 'deposit', 2000.00, 'Salary', NULL, NULL, '2025-05-03 01:30:00'),
(195, 15, 'transfer_out', 1000.00, 'Sent to friend', NULL, NULL, '2025-05-04 08:20:00'),
(196, 15, 'transfer_in', 1500.00, 'Received from boss', NULL, NULL, '2025-05-05 03:10:00'),
(197, 15, 'withdrawal', 800.00, 'Grocery shopping', NULL, NULL, '2025-05-06 10:45:00'),
(198, 15, 'deposit', 3500.00, 'Freelance project', NULL, NULL, '2025-05-07 00:00:00'),
(199, 15, 'transfer_out', 500.00, 'Payment to supplier', NULL, NULL, '2025-05-08 05:30:00'),
(200, 15, 'transfer_in', 250.00, 'Refund from supplier', NULL, NULL, '2025-05-09 02:05:00'),
(201, 15, 'deposit', 1000.00, 'Bonus', NULL, NULL, '2025-05-10 04:00:00'),
(202, 15, 'withdrawal', 400.00, 'Utility bills', NULL, NULL, '2025-05-11 09:45:00'),
(203, 15, 'transfer_out', 300.00, 'Money to sibling', NULL, NULL, '2025-05-12 12:15:00'),
(204, 15, 'transfer_in', 500.00, 'Sibling paid back', NULL, NULL, '2025-05-13 00:55:00'),
(205, 15, 'deposit', 1800.00, 'Project milestone', NULL, NULL, '2025-05-14 01:00:00'),
(206, 15, 'withdrawal', 250.00, 'Online shopping', NULL, NULL, '2025-05-15 14:00:00'),
(207, 15, 'transfer_out', 700.00, 'Rent payment', NULL, NULL, '2025-05-15 23:30:00'),
(208, 15, 'transfer_in', 600.00, 'Partial refund', NULL, NULL, '2025-05-17 02:00:00'),
(209, 15, 'deposit', 2200.00, 'Monthly payment', NULL, NULL, '2025-05-18 00:30:00'),
(210, 15, 'withdrawal', 500.00, 'Cash withdrawal', NULL, NULL, '2025-05-19 11:20:00'),
(211, 15, 'transfer_out', 950.00, 'Gift to parent', NULL, NULL, '2025-05-20 04:40:00'),
(212, 15, 'deposit', 150.00, 'Deposit of $150.00', NULL, NULL, '2025-05-31 11:00:27'),
(213, 15, 'transfer_out', 50.00, 'sdfsdfsd', 2, NULL, '2025-05-31 11:02:05'),
(214, 2, 'transfer_in', 50.00, 'sdfsdfsd', 15, NULL, '2025-05-31 11:02:05'),
(215, 15, 'withdrawal', 100.00, 'Withdrawal of $100.00', NULL, NULL, '2025-05-31 11:06:44'),
(216, 15, 'withdrawal', 500.00, 'Withdrawal of $500.00', NULL, NULL, '2025-06-02 05:59:58'),
(217, 15, 'loanpayment', 2222.00, 'Partial Loan Payment', NULL, NULL, '2025-06-02 02:07:13'),
(218, 18, 'deposit', 600.00, 'Deposit of $600.00', NULL, NULL, '2026-01-02 06:54:24'),
(219, 11, '', 100.00, 'Loan approved', NULL, NULL, '2026-01-02 07:05:43'),
(220, 15, 'deposit', 4666.00, 'Deposit by Admin', NULL, 'admin', '2026-01-02 07:10:48'),
(221, 2, 'transfer_out', -2.00, 'Transfer to account SB99139149', 7, 'admin', '2026-01-02 07:11:01'),
(222, 7, 'transfer_in', 2.00, 'Received from account SB50491031', 2, 'admin', '2026-01-02 07:11:01'),
(223, 18, 'deposit', 80000000.00, 'Deposit by Admin', NULL, 'admin', '2026-01-02 07:14:03'),
(225, 18, 'transfer_out', -5000.00, 'Transfer to account SB84024383', NULL, 'admin', '2026-01-02 08:49:28'),
(228, 18, 'transfer_in', 500.00, 'Received from account SB54495134', NULL, 'admin', '2026-01-02 18:51:20'),
(230, 18, 'transfer_in', 500.00, 'Received from account SB56672643', NULL, 'admin', '2026-01-02 21:05:33'),
(231, 35, 'deposit', 5000.00, 'Deposit by Admin', NULL, 'admin', '2026-01-03 06:55:16'),
(232, 35, 'deposit', 5000.00, 'Deposit by Admin', NULL, 'admin', '2026-01-03 07:35:48'),
(233, 35, 'deposit', 5000.00, 'Deposit of $5,000.00', NULL, NULL, '2026-01-03 07:36:38'),
(234, 18, '', 3000.00, 'Loan approved', NULL, NULL, '2026-01-03 07:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `birth_year` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `is_admin` tinyint(1) DEFAULT 0,
  `role` enum('customer','admin','manager','staff','auditor') DEFAULT 'customer',
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expires_at` datetime DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `login_attempts` int(11) NOT NULL DEFAULT 0,
  `blocked_until` datetime DEFAULT NULL,
  `email_verified` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `age`, `birth_year`, `email`, `address`, `occupation`, `phone`, `password_hash`, `created_at`, `is_admin`, `role`, `status`, `is_active`, `reset_token`, `reset_expires_at`, `profile_picture`, `login_attempts`, `blocked_until`, `email_verified`) VALUES
(1, 'Shaison', 24, 2000, 'shaison61@gmail.com', 'Manila', 'Student', '09123456789', '$2y$10$LDpOyFZkS9D.mRYfzdnOdOtvhjqhE1bk5B/85d/bXgX1/CKLXlHfe', '2025-04-16 08:41:45', 0, 'customer', 'approved', 1, NULL, NULL, 'default.jpg', 0, NULL, 1),
(2, 'Amiguel', 24, 2000, 'amiguelll0513@gmail.com', 'Manila', 'Student', '09123456789', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-04-16 08:52:35', 0, 'customer', 'approved', 1, NULL, NULL, 'default.jpg', 0, NULL, 0),
(3, 'Shaison2', 24, 2000, 'shaison62@gmail.com', 'Manila', 'Student', '09123456789', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-04-16 08:52:35', 0, 'customer', 'approved', 1, NULL, NULL, 'default.jpg', 0, NULL, 0),
(4, 'Isabel', 24, 2000, 'senioritaisabel@gmail.com', 'Manila', 'Student', '09123456789', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-04-16 08:52:35', 0, 'customer', 'approved', 1, NULL, NULL, 'default.jpg', 0, NULL, 1),
(5, 'Rayson', 24, 2000, 'ramosrayson84@gmail.com', 'Manila', 'Student', '09123456789', '$2y$10$FTiIs2N1IyTHLvJ7QBjFhuA..klvK9ehN2YmMozrtRxn5VVI6eUtG', '2025-04-16 08:52:35', 0, 'customer', 'approved', 1, NULL, NULL, 'profile_5_1748358975.png', 0, NULL, 0),
(7, 'LSPU Student 1', 24, 2000, '0323-4199@lspu.edu.ph', 'Manila', 'Student', '09123456789', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-04-16 08:52:35', 0, 'customer', 'approved', 1, NULL, NULL, 'default.jpg', 0, NULL, 0),
(35, 'Pamela A. Mamugay', 19, 2005, '0323-3883@lspu.edu.ph', 'Poblacion street Brgy-3D', 'Student', '09217844447', '$2y$10$.krvdQIYwvC2CB.Do9ugcuDD8pifxhNOlW.fp0BruQ9n6uHLAvEHy', '2025-05-31 10:25:04', 0, 'customer', 'approved', 1, NULL, NULL, 'profile_35_1748687596.jpg', 0, NULL, 0),
(38, 'Administrator', 20, 2004, 'mailtomyogesh@gmail.com', 'brgy San Isidro Calauan laguna', 'Student', '09300674760', '$2y$10$jxrUkEe00Qm2I2o9oIu.vukpS18LbY.kUbTwrO.qEULNOA5KA38MK', '2025-06-04 12:55:06', 1, 'admin', 'approved', 1, NULL, NULL, NULL, 0, NULL, 1),
(56, 'YOGESH M', 0, 0, 'yogeshm@srmasc.ac.in', '', '', '09043792259', '$2y$10$j5bO8YYcOO9Gby0YTfV9S.2MZB00g99g..KBvTcwOpcB2VQIaoUoW', '2026-01-03 06:15:51', 0, 'customer', 'approved', 1, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `last_activity` datetime NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `session_id`, `last_activity`, `ip_address`, `user_agent`) VALUES
(4, 39, 'e01hgeldbpvic5omhor2p1g7mv', '2026-01-02 15:56:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(5, 41, 'tdouhbo3nbg5keqhe3kju98gu6', '2026-01-03 00:09:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(7, 38, 'oat9jv1eh7k14ku1fikgl4tvev', '2026-01-03 01:26:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(8, 42, 'kh5rpo3s1uq6itd16vdhopn3gs', '2026-01-03 02:34:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(9, 42, 'kh5rpo3s1uq6itd16vdhopn3gs', '2026-01-03 02:34:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(10, 42, 'kh5rpo3s1uq6itd16vdhopn3gs', '2026-01-03 02:34:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(11, 42, 'kh5rpo3s1uq6itd16vdhopn3gs', '2026-01-03 02:34:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(12, 43, 'kh5rpo3s1uq6itd16vdhopn3gs', '2026-01-03 02:34:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(13, 38, '3cfnn5k8seg2aulqcrkb6b06ms', '2026-01-03 08:50:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(14, 38, 'ahqe60v2jcoo4v0to26lk6lvke', '2026-01-03 13:17:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36'),
(18, 56, 'sbqnd137sdiurqvjd2nm9ah4hn', '2026-01-03 13:05:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `verification_logs`
--

CREATE TABLE `verification_logs` (
  `verification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `document_number` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `verified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remarks` text DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verification_logs`
--

INSERT INTO `verification_logs` (`verification_id`, `user_id`, `document_type`, `document_number`, `token`, `ip_address`, `status`, `verified_at`, `remarks`, `verified_by`, `created_at`) VALUES
(1, 0, NULL, NULL, 'a4b1946b17b2b49825b8dd6aa327b95232746ca6bea71cbc157748a4e6e06f7a', '::1', 'pending', '2026-01-02 07:40:04', NULL, NULL, '2026-01-02 07:30:30'),
(17, 0, NULL, NULL, '311964db673d8b27c1030549e7bddbd0ca3970c0da25419fccaf3ea73c87ac38', '::1', 'pending', '2026-01-02 07:40:04', NULL, NULL, '2026-01-02 07:38:53'),
(27, 0, NULL, NULL, 'f150a82f424138c2b09d86f6d0808a2e8763e3e73b8f449333fbde2228d8bdda', '::1', 'pending', '2026-01-03 07:26:54', NULL, NULL, '2026-01-03 07:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `verification_reports`
--

CREATE TABLE `verification_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document_type` varchar(100) NOT NULL,
  `document_number` varchar(150) NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balance_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bank_news`
--
ALTER TABLE `bank_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_verifications`
--
ALTER TABLE `id_verifications`
  ADD PRIMARY KEY (`verification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`investment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `investment_plans`
--
ALTER TABLE `investment_plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_records`
--
ALTER TABLE `login_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `login_verifications`
--
ALTER TABLE `login_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pdf_verifications`
--
ALTER TABLE `pdf_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `report_verifications`
--
ALTER TABLE `report_verifications`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `token_2` (`token`),
  ADD UNIQUE KEY `unique_token` (`token`),
  ADD UNIQUE KEY `unique_report_verification` (`verification_id`),
  ADD KEY `idx_admin` (`admin_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `slip_verifications`
--
ALTER TABLE `slip_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `slip_verifications_ibfk_1` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `related_account_id` (`related_account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `last_activity` (`last_activity`);

--
-- Indexes for table `verification_logs`
--
ALTER TABLE `verification_logs`
  ADD PRIMARY KEY (`verification_id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `verified_by` (`verified_by`);

--
-- Indexes for table `verification_reports`
--
ALTER TABLE `verification_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `balance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `bank_news`
--
ALTER TABLE `bank_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `id_verifications`
--
ALTER TABLE `id_verifications`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `investment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `investment_plans`
--
ALTER TABLE `investment_plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `loan_history`
--
ALTER TABLE `loan_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_records`
--
ALTER TABLE `login_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `login_verifications`
--
ALTER TABLE `login_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `pdf_verifications`
--
ALTER TABLE `pdf_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_verifications`
--
ALTER TABLE `report_verifications`
  MODIFY `report_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slip_verifications`
--
ALTER TABLE `slip_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `verification_logs`
--
ALTER TABLE `verification_logs`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `verification_reports`
--
ALTER TABLE `verification_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `balance`
--
ALTER TABLE `balance`
  ADD CONSTRAINT `balance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `id_verifications`
--
ALTER TABLE `id_verifications`
  ADD CONSTRAINT `id_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `investments`
--
ALTER TABLE `investments`
  ADD CONSTRAINT `investments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `investments_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `investment_plans` (`plan_id`) ON DELETE SET NULL;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `loan_history`
--
ALTER TABLE `loan_history`
  ADD CONSTRAINT `loan_history_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`loan_id`) ON DELETE CASCADE;

--
-- Constraints for table `login_records`
--
ALTER TABLE `login_records`
  ADD CONSTRAINT `login_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `login_verifications`
--
ALTER TABLE `login_verifications`
  ADD CONSTRAINT `login_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD CONSTRAINT `otp_verification_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `slip_verifications`
--
ALTER TABLE `slip_verifications`
  ADD CONSTRAINT `slip_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`related_account_id`) REFERENCES `accounts` (`account_id`) ON DELETE SET NULL;

--
-- Constraints for table `verification_logs`
--
ALTER TABLE `verification_logs`
  ADD CONSTRAINT `fk_verification_token` FOREIGN KEY (`token`) REFERENCES `report_verifications` (`token`) ON DELETE CASCADE;

--
-- Constraints for table `verification_reports`
--
ALTER TABLE `verification_reports`
  ADD CONSTRAINT `fk_verification_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
