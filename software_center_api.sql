-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2023 at 05:49 PM
-- Server version: 5.7.27-30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u0112258_software_center_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participants` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `description`, `participants`, `created_at`, `updated_at`) VALUES
(1, 4, 'Voluptates nesciunt maxime dicta minus laudantium nam voluptatem.', 'Necessitatibus vero qui dolore eius quas consequatur unde. Nihil earum assumenda cum aperiam nulla qui. Corporis earum odio accusamus omnis nisi.', 'a:3:{i:1;i:4;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-07-05 09:21:07'),
(2, 5, 'Dicta dicta iure rerum.', 'Et eos occaecati omnis reiciendis. Sapiente sed ab quidem omnis. Ut et non optio eveniet vel illum in commodi.', 'a:2:{i:0;i:5;i:1;i:3;}', '2023-06-27 16:54:35', '2023-06-27 17:02:35'),
(3, 2, 'Perspiciatis tempore unde voluptatem et provident nesciunt in.', 'Fugiat soluta est excepturi. Labore totam provident eaque labore non reiciendis. Quidem ab iure voluptas qui magni aspernatur unde exercitationem.', 'a:2:{i:0;i:2;i:1;i:4;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(4, 6, 'Ipsum omnis accusantium voluptate fugit est et et dolorem.', 'Magnam perspiciatis eligendi voluptas animi. Eius quia impedit molestiae exercitationem dolor deleniti. Placeat blanditiis modi ipsa sint animi magni.', 'a:2:{i:0;i:6;i:1;i:1;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(5, 1, 'Ex mollitia nam id neque aut.', 'Dolorem provident occaecati excepturi quia animi. Enim iste culpa expedita animi. Deserunt ut voluptatem et aut qui. Quibusdam odio dolor in sed. Et non atque expedita sint fugit debitis eveniet.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(6, 2, 'Aliquid ea consequatur non ut voluptate rerum quis.', 'Vel eius eos iste debitis ipsum ipsam. Quidem consequatur blanditiis distinctio tempore. Reiciendis adipisci voluptates nesciunt saepe in dolore nulla. Ullam et repudiandae et ad ea sed.', 'a:2:{i:0;i:2;i:1;i:4;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(7, 4, 'Est quisquam nihil vel harum qui.', 'Et enim fugit et quia sequi quia. Aliquam minima nam ullam illo. Atque nulla quia facilis voluptas aut enim voluptate. Dolorem veniam aut sint veniam fugiat dolorum.', 'a:1:{i:0;i:4;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(8, 1, 'Esse sit qui distinctio nesciunt ut nesciunt sint reiciendis.', 'Quidem veritatis laboriosam et quis cupiditate tempore. Maxime explicabo non excepturi doloremque. Numquam molestiae libero ut autem doloribus inventore natus.', 'a:2:{i:0;i:1;i:1;i:2;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(9, 6, 'Est quia ea enim natus et corporis.', 'Nisi distinctio inventore id. Qui ipsam adipisci et deleniti dolores. Voluptatum error nobis sunt aut eaque autem tempore.', 'a:2:{i:0;i:5;i:1;i:6;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(10, 4, 'Aut exercitationem omnis enim commodi reprehenderit velit in.', 'Consectetur enim quia totam aliquid quibusdam. Similique velit temporibus saepe nobis eum repellat. Voluptatem ut explicabo unde sunt esse.', 'a:3:{i:0;i:4;i:1;i:2;i:2;i:3;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(11, 1, 'Deleniti ut velit quia dolore assumenda ut.', 'Cum et quia quibusdam voluptatibus vel. Enim totam quaerat sit. Quia est velit temporibus aspernatur. Autem optio a cumque fugiat sunt impedit maiores.', 'a:2:{i:0;i:1;i:1;i:4;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(12, 2, 'Voluptatibus laboriosam quaerat animi sapiente aspernatur et.', 'Delectus cupiditate sint atque at laboriosam nemo enim. Quis iusto consectetur culpa rerum id qui in. Dolor dolorum aliquam corrupti magni.', 'a:2:{i:0;i:2;i:1;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(13, 5, 'Quam maxime accusamus repellendus eius.', 'Voluptas rerum quae dolor qui. Et nemo sed voluptatem fugit. Pariatur sit quis rerum magni. Et est asperiores id voluptas.', 'a:2:{i:1;i:2;i:2;i:5;}', '2023-06-27 16:54:35', '2023-07-05 10:55:15'),
(14, 5, 'Est animi totam voluptatum harum esse est vero consequuntur.', 'Saepe rerum molestiae qui ea temporibus rerum saepe. Delectus sint quam earum animi sit. At rerum eum sit est.', 'a:2:{i:0;i:1;i:1;i:5;}', '2023-06-27 16:54:35', '2023-06-27 17:01:24'),
(18, 1, 'Updated title', 'Updated description', 'a:1:{i:0;i:1;}', '2023-07-05 11:23:05', '2023-07-05 11:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `event_user`
--

CREATE TABLE `event_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_user`
--

INSERT INTO `event_user` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 4),
(2, 1, 3),
(6, 1, 5),
(7, 2, 5),
(8, 2, 3),
(9, 3, 2),
(10, 3, 4),
(11, 5, 5),
(12, 5, 2),
(13, 5, 3),
(14, 5, 1),
(15, 4, 1),
(16, 4, 6),
(17, 6, 4),
(19, 6, 2),
(20, 7, 4),
(21, 8, 1),
(22, 8, 2),
(23, 9, 6),
(30, 9, 5),
(31, 10, 2),
(34, 10, 4),
(35, 10, 3),
(36, 11, 1),
(37, 11, 4),
(38, 12, 5),
(39, 12, 2),
(40, 13, 2),
(41, 13, 5),
(43, 14, 1),
(44, 14, 5),
(47, 18, 1);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(44, '2019_08_19_000000_create_failed_jobs_table', 1),
(45, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(46, '2023_06_25_065336_create_events_table', 1),
(48, '2023_06_30_141352_create_event_user_table', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'API Token of Влад', 'af833eeef5ebfc3f71994726d3cee1b2a9e0da0bec9b997eaf121ba2349f938b', '[\"*\"]', '2023-06-27 17:21:25', NULL, '2023-06-27 17:16:30', '2023-06-27 17:21:25'),
(3, 'App\\Models\\User', 1, 'API Token of Влад', 'ac785d054a097a27dee1ed682155c5fadfb73f5420d68864eabfbad2314c7141', '[\"*\"]', '2023-07-05 11:24:39', NULL, '2023-07-05 06:14:08', '2023-07-05 11:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `first_name`, `last_name`, `birthday`, `remember_token`, `created_at`) VALUES
(1, 'Admin', '$2y$10$pkfTCMdOPEmUySwZ6F9Ne.gJm83uWHlYnnCUg5rCIEBZVzD5LnhvW', 'Влад', 'Лазарев', '2000-05-15', NULL, '2023-06-30 19:52:33'),
(2, 'voluptas', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Владлена', 'Кулакова', '1980-03-31', 'tt2WiWrfrM', '2023-06-30 19:54:20'),
(3, 'sit', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Георгий', 'Князев', '1991-05-03', '6DyfaS1tkg', '2023-06-30 19:54:20'),
(4, 'veritatis', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Анна', 'Степанова', '2020-11-23', 'mlwaq53fC5', '2023-06-30 19:54:20'),
(5, 'consequuntur', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Александр', 'Мишин', '2018-09-04', 'pveUR38HGZ', '2023-06-30 19:54:20'),
(6, 'test', '$2y$10$79WdH96K9AUbeWW5Wf97d.5.MYLgofQpt2oAuMXsjyHlU40dql0h6', 'Игорь', 'Сергеев', '2021-05-12', NULL, '2023-06-30 07:51:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indexes for table `event_user`
--
ALTER TABLE `event_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_user_event_id_foreign` (`event_id`),
  ADD KEY `event_user_user_id_foreign` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_login_unique` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_user`
--
ALTER TABLE `event_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_user`
--
ALTER TABLE `event_user`
  ADD CONSTRAINT `event_user_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
