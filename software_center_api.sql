-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 28, 2023 at 09:26 PM
-- Server version: 8.0.29
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software_center_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
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
(1, 4, 'Voluptates nesciunt maxime dicta minus laudantium nam voluptatem.', 'Necessitatibus vero qui dolore eius quas consequatur unde. Nihil earum assumenda cum aperiam nulla qui. Corporis earum odio accusamus omnis nisi.', 'a:3:{i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 17:02:12'),
(2, 5, 'Dicta dicta iure rerum.', 'Et eos occaecati omnis reiciendis. Sapiente sed ab quidem omnis. Ut et non optio eveniet vel illum in commodi.', 'a:3:{i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 17:02:35'),
(3, 2, 'Perspiciatis tempore unde voluptatem et provident nesciunt in.', 'Fugiat soluta est excepturi. Labore totam provident eaque labore non reiciendis. Quidem ab iure voluptas qui magni aspernatur unde exercitationem.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(4, 3, 'Ipsum omnis accusantium voluptate fugit est et et dolorem.', 'Magnam perspiciatis eligendi voluptas animi. Eius quia impedit molestiae exercitationem dolor deleniti. Placeat blanditiis modi ipsa sint animi magni.', 'a:1:{i:0;i:3;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(5, 1, 'Ex mollitia nam id neque aut.', 'Dolorem provident occaecati excepturi quia animi. Enim iste culpa expedita animi. Deserunt ut voluptatem et aut qui. Quibusdam odio dolor in sed. Et non atque expedita sint fugit debitis eveniet.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(6, 2, 'Aliquid ea consequatur non ut voluptate rerum quis.', 'Vel eius eos iste debitis ipsum ipsam. Quidem consequatur blanditiis distinctio tempore. Reiciendis adipisci voluptates nesciunt saepe in dolore nulla. Ullam et repudiandae et ad ea sed.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(7, 4, 'Est quisquam nihil vel harum qui.', 'Et enim fugit et quia sequi quia. Aliquam minima nam ullam illo. Atque nulla quia facilis voluptas aut enim voluptate. Dolorem veniam aut sint veniam fugiat dolorum.', 'a:1:{i:0;i:4;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(8, 4, 'Esse sit qui distinctio nesciunt ut nesciunt sint reiciendis.', 'Quidem veritatis laboriosam et quis cupiditate tempore. Maxime explicabo non excepturi doloremque. Numquam molestiae libero ut autem doloribus inventore natus.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(9, 1, 'Est quia ea enim natus et corporis.', 'Nisi distinctio inventore id. Qui ipsam adipisci et deleniti dolores. Voluptatum error nobis sunt aut eaque autem tempore.', 'a:2:{i:0;i:1;i:1;i:2;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(10, 4, 'Aut exercitationem omnis enim commodi reprehenderit velit in.', 'Consectetur enim quia totam aliquid quibusdam. Similique velit temporibus saepe nobis eum repellat. Voluptatem ut explicabo unde sunt esse.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(11, 2, 'Deleniti ut velit quia dolore assumenda ut.', 'Cum et quia quibusdam voluptatibus vel. Enim totam quaerat sit. Quia est velit temporibus aspernatur. Autem optio a cumque fugiat sunt impedit maiores.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(12, 2, 'Voluptatibus laboriosam quaerat animi sapiente aspernatur et.', 'Delectus cupiditate sint atque at laboriosam nemo enim. Quis iusto consectetur culpa rerum id qui in. Dolor dolorum aliquam corrupti magni.', 'a:2:{i:0;i:2;i:1;i:4;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(13, 5, 'Quam maxime accusamus repellendus eius.', 'Voluptas rerum quae dolor qui. Et nemo sed voluptatem fugit. Pariatur sit quis rerum magni. Et est asperiores id voluptas.', 'a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 16:54:35'),
(14, 5, 'Est animi totam voluptatum harum esse est vero consequuntur.', 'Saepe rerum molestiae qui ea temporibus rerum saepe. Delectus sint quam earum animi sit. At rerum eum sit est.', 'a:3:{i:1;i:2;i:2;i:3;i:3;i:5;}', '2023-06-27 16:54:35', '2023-06-27 17:01:24');

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
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(44, '2019_08_19_000000_create_failed_jobs_table', 1),
(45, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(46, '2023_06_25_065336_create_events_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'API Token of Влад', 'af833eeef5ebfc3f71994726d3cee1b2a9e0da0bec9b997eaf121ba2349f938b', '[\"*\"]', '2023-06-27 17:21:25', NULL, '2023-06-27 17:16:30', '2023-06-27 17:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'admin', '$2y$10$pkfTCMdOPEmUySwZ6F9Ne.gJm83uWHlYnnCUg5rCIEBZVzD5LnhvW', 'Влад', 'Лазарев', '2000-05-15', NULL, '2023-06-27 19:52:33'),
(2, 'voluptas', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Владлена', 'Кулаков', '1980-03-31', 'tt2WiWrfrM', '2023-06-27 19:54:20'),
(3, 'sit', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Георгий', 'Князев', '1991-05-03', '6DyfaS1tkg', '2023-06-27 19:54:20'),
(4, 'veritatis', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Анна', 'Степанов', '2020-11-23', 'mlwaq53fC5', '2023-06-27 19:54:20'),
(5, 'consequuntur', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Александр', 'Мишина', '2018-09-04', 'pveUR38HGZ', '2023-06-27 19:54:20');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
