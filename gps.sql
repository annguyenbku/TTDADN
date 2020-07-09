-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2020 lúc 04:42 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gps`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deviceroute`
--

CREATE TABLE `deviceroute` (
  `id` int(10) UNSIGNED NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_update` datetime DEFAULT NULL,
  `description_update` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `deviceroute`
--

INSERT INTO `deviceroute` (`id`, `latitude`, `longitude`, `Date_update`, `description_update`, `created_at`, `updated_at`) VALUES
(1, '12.46', '20.19', '2020-06-19 14:43:02', 'Mo ta 1', NULL, NULL),
(2, '102.46', '30.12', '2015-07-20 20:43:02', 'Mo ta 2', NULL, NULL),
(3, '30.46', '15.11', '2018-05-07 07:15:02', 'Mo ta 3', NULL, NULL),
(4, '96.63', '38.42', '2020-07-07 15:45:50', 'Mo ta 4', NULL, NULL),
(5, '25.63', '70.12', '2019-06-20 08:25:15', 'Mo ta 5', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devices`
--

CREATE TABLE `devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modecode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateregisted` date NOT NULL,
  `licensePlate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `name`, `brand`, `modecode`, `color`, `dateregisted`, `licensePlate`, `created_at`, `updated_at`) VALUES
(1, 1, 'THIETBI1', 'MODEL1', 'A147852', 'red', '2020-05-07', '915IW5qryw', NULL, NULL),
(2, 2, 'THIETBI2', 'MODEL2', 'A1414252', 'red', '2016-05-07', 'dd0nzgZSum', NULL, NULL),
(3, 3, 'THIETBI3', 'MODEL3', 'BAA147852', 'blue', '2015-01-06', 'Pf2IAzo63w', NULL, NULL),
(4, 4, 'THIETBI4', 'MODEL4', 'CC147852', 'green', '2018-06-11', 'Gcmoz4xy9p', NULL, NULL),
(5, 5, 'THIETBI5', 'MODEL5', 'RRR14752', 'pink', '2019-06-10', 'GEKwlIug5o', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gps_message`
--

CREATE TABLE `gps_message` (
  `id` int(10) NOT NULL,
  `mess` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateGPS` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `gps_message`
--

INSERT INTO `gps_message` (`id`, `mess`, `dateGPS`) VALUES
(2, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(3, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(4, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(5, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(6, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(7, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(8, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"12\"]}]', NULL),
(9, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"12\"]}]', NULL),
(10, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"13\"]}]', NULL),
(11, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"10\"]}]', NULL),
(12, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"10\"]}]', NULL),
(13, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"13\"]}]', NULL),
(14, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"10\"]}]', NULL),
(15, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"13\"]}]', NULL),
(16, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"14\"]}]', NULL),
(17, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"13\"]}]', NULL),
(18, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"10\"]}]', NULL),
(19, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"15\"]}]', NULL),
(20, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"11\"]}]', NULL),
(21, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"11\"]}]', NULL),
(22, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"14\"]}]', NULL),
(23, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"14\"]}]', NULL),
(24, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"13\"]}]', NULL),
(25, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"11\"]}]', NULL),
(26, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"10\"]}]', NULL),
(27, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"12\"]}]', NULL),
(28, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"11\"]}]', NULL),
(29, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"10\"]}]', NULL),
(30, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"15\"]}]', NULL),
(31, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"10\"]}]', NULL),
(32, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"13\"]}]', NULL),
(33, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"12\"]}]', NULL),
(34, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"10\"]}]', NULL),
(35, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"11\"]}]', NULL),
(36, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"12\"]}]', NULL),
(37, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"15\"]}]', NULL),
(38, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"12\"]}]', NULL),
(39, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"15\"]}]', NULL),
(40, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"15\"]}]', NULL),
(41, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"15\"]}]', NULL),
(42, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"11\"]}]', NULL),
(43, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"10\"]}]', NULL),
(44, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"11\"]}]', NULL),
(45, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"11\"]}]', NULL),
(46, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"12\"]}]', NULL),
(47, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(48, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"12\"]}]', NULL),
(49, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"11\"]}]', NULL),
(50, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"14\"]}]', NULL),
(51, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"15\"]}]', NULL),
(52, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"15\"]}]', NULL),
(53, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"12\"]}]', NULL),
(54, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"10\"]}]', NULL),
(55, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"11\"]}]', NULL),
(56, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"14\"]}]', NULL),
(57, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"15\"]}]', NULL),
(58, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"11\"]}]', NULL),
(59, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"10\"]}]', NULL),
(60, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"15\"]}]', NULL),
(61, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"13\"]}]', NULL),
(62, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"12\"]}]', NULL),
(63, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"11\"]}]', NULL),
(64, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"11\"]}]', NULL),
(65, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"13\"]}]', NULL),
(66, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"13\"]}]', NULL),
(67, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"13\"]}]', NULL),
(68, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"15\"]}]', NULL),
(69, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"14\"]}]', NULL),
(70, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"13\"]}]', NULL),
(71, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"11\"]}]', NULL),
(72, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"10\"]}]', NULL),
(73, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"11\"]}]', NULL),
(74, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"13\"]}]', NULL),
(75, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"15\"]}]', NULL),
(76, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"13\"]}]', NULL),
(77, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"13\"]}]', NULL),
(78, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"12\"]}]', NULL),
(79, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"12\"]}]', NULL),
(80, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"14\"]}]', NULL),
(81, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"10\"]}]', NULL),
(82, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"13\"]}]', NULL),
(83, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"15\"]}]', NULL),
(84, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"12\"]}]', NULL),
(85, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"13\"]}]', NULL),
(86, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"14\"]}]', NULL),
(87, '[{\"device_id\": \"GPS\",\"values\":[\"114\",\"13\"]}]', NULL),
(88, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"15\"]}]', NULL),
(89, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"11\"]}]', NULL),
(90, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"11\"]}]', NULL),
(91, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"14\"]}]', NULL),
(92, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"12\"]}]', NULL),
(93, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"14\"]}]', NULL),
(94, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"14\"]}]', NULL),
(95, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"14\"]}]', NULL),
(96, '[{\"device_id\": \"GPS\",\"values\":[\"110\",\"10\"]}]', NULL),
(97, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"14\"]}]', NULL),
(98, '[{\"device_id\": \"GPS\",\"values\":[\"108\",\"15\"]}]', NULL),
(99, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"15\"]}]', NULL),
(100, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"12\"]}]', NULL),
(101, '[{\"device_id\": \"GPS\",\"values\":[\"106\",\"14\"]}]', NULL),
(102, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"12\"]}]', NULL),
(103, '[{\"device_id\": \"GPS\",\"values\":[\"111\",\"10\"]}]', NULL),
(104, '[{\"device_id\": \"GPS\",\"values\":[\"112\",\"13\"]}]', NULL),
(105, '[{\"device_id\": \"GPS\",\"values\":[\"107\",\"15\"]}]', NULL),
(106, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"11\"]}]', NULL),
(107, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"13\"]}]', NULL),
(108, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"10\"]}]', NULL),
(109, '[{\"device_id\": \"GPS\",\"values\":[\"113\",\"14\"]}]', NULL),
(110, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"15\"]}]', NULL),
(111, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"14\"]}]', NULL),
(112, '[{\"device_id\": \"GPS\",\"values\":[\"115\",\"13\"]}]', NULL),
(113, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messgps`
--

CREATE TABLE `messgps` (
  `id` int(100) NOT NULL,
  `mess` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dateGPS` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `messgps`
--

INSERT INTO `messgps` (`id`, `mess`, `dateGPS`) VALUES
(894, '', NULL),
(848, 'sdafdsafsdaf', NULL),
(798, 'Nguyễn Thành khánh an', NULL),
(292, 'fsdfsdfewfcxcvxcv', NULL),
(954, '123123123123', NULL),
(31, 'gfdgdf', NULL),
(413, 'fasdfsdf', NULL),
(854, 'quanghieu', NULL),
(568, 'quang hieu', NULL),
(385, 'd', NULL),
(126, 'dsd', NULL),
(176, 'dăewqe', NULL),
(803, 'hhhhhh', NULL),
(264, 'aaaaaaaaaaaa', NULL),
(679, 'dddddddddddddđ', NULL),
(307, '', NULL),
(223, 'awdw', NULL),
(969, '123456', NULL),
(0, 'gfdf', '2020-06-09 00:00:00'),
(0, 'ad', '2020-06-01 13:19:24'),
(363, 'an a', NULL),
(549, 'Khasnh An', NULL),
(124, 'Khasnh An', NULL),
(219, 'Khasnh ANa', NULL),
(947, 'Khasnh ANa', NULL),
(717, 'zxcvbbmn', NULL),
(894, 'zxcvbbmn', NULL),
(674, 'Hoang', NULL),
(778, 'Hoang', NULL),
(116, 'Hoang', NULL),
(381, '', NULL),
(334, '7418541254123652', NULL),
(704, 'quanghieu', NULL),
(754, 'hihihih', NULL),
(491, '', NULL),
(775, '', NULL),
(724, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(505, '', NULL),
(493, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(795, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(428, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(37, '', NULL),
(393, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(237, '', NULL),
(75, '', NULL),
(185, '', NULL),
(958, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(40, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(246, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(399, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(287, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(468, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL),
(590, '[{\"device_id\": \"GPS\",\"values\":[\"109\",\"12\"]}]', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_07_213528_create_posts_table', 1),
(4, '2017_12_12_235022_create_comments_table', 1),
(5, '2020_06_17_062052_create_devices_table', 1),
(6, '2020_06_17_064617_create_deviceroute_table', 1),
(7, '2020_06_17_065206_create_trackroute_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trackroute`
--

CREATE TABLE `trackroute` (
  `route_id` int(10) UNSIGNED NOT NULL,
  `device_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trackroute`
--

INSERT INTO `trackroute` (`route_id`, `device_id`, `created_at`, `updated_at`) VALUES
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 4, NULL, NULL),
(5, 2, NULL, NULL),
(2, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `birthday`, `address`, `email`, `phonenumber`, `idcard`, `gender`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nguyenvana', '$2y$10$ekXhg53qxOEQ7fiXDK.ZOeYMCkDP2k4rITUovq801ttNDlNV3yVEC', 'Nguyễn', 'A', '1995-06-02', 'Sô 50 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh', 'nguyenvana@gmail.com', '0928234272', '206128539', 'Nam', 'v9GWNfIK2K', NULL, NULL, NULL),
(2, 'nguyenvanbbb', '$2y$10$PAM9RNHEnh8S19SKtU0BWObmfvVc2bpqnv9FMfx9staRmqT4dn7em', 'Nguyễn', 'BBB', '1995-08-05', 'Sô 50 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh', 'nguyenvanbbb@gmail.com', '0928235222', '206125229', 'Nam', '0d0UJlpMZ9', NULL, NULL, NULL),
(3, 'nguyenvanccc', '$2y$10$3Z9lsHhGfOFjGAELv0PWYOXK8inmHZu.ndGJxxF6Csz7U7kDTspRe', 'Nguyễn', 'CCC', '1998-06-02', 'Sô 48 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh', 'nguyenvanccc@gmail.com', '09282522272', '2061124239', 'Nam', 'MJJHTvTd4e', NULL, NULL, NULL),
(4, 'tranthic', '$2y$10$j4Czc9nY267AFa9tWSlyPurWmngqeUQWzu2BjuiJcS.fRAoCPiRSu', 'Trần', 'C', '2001-06-02', 'Sô 100 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh', 'tranthic@gmail.com', '0946234272', '206129339', 'Nu', '7sNjXYK7Wp', NULL, NULL, NULL),
(5, 'lethic', '$2y$10$6NLCrLgiYCIjaekLi7axAOp9vE6pmK.qXdMyqrHXxzDyaeo1UVaiy', 'Lê', 'C', '1975-06-02', 'Sô 200 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh', 'lethic@gmail.com', '0928289272', '296128539', 'Nu', 'NKaVqEDbdE', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `deviceroute`
--
ALTER TABLE `deviceroute`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `gps_message`
--
ALTER TABLE `gps_message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trackroute`
--
ALTER TABLE `trackroute`
  ADD KEY `trackroute_route_id_foreign` (`route_id`),
  ADD KEY `trackroute_device_id_foreign` (`device_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `deviceroute`
--
ALTER TABLE `deviceroute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT cho bảng `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `gps_message`
--
ALTER TABLE `gps_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `trackroute`
--
ALTER TABLE `trackroute`
  ADD CONSTRAINT `trackroute_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`),
  ADD CONSTRAINT `trackroute_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `deviceroute` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
