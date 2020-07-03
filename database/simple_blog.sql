-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 10:50 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_02_172449_create_posts_table', 2),
(4, '2014_10_12_100000_create_password_resets_table', 3),
(5, '2020_07_02_181437_add_user_id_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Post One', '<p><em><strong>test for post one</strong></em></p>', '2020-07-02 09:28:29', '2020-07-02 23:05:28', 1),
(2, 'Post Two', '<p><em>This is the post two body.</em></p>', '2020-07-02 09:29:10', '2020-07-02 10:49:27', 1),
(3, 'Post Three', 'This is the post three body', '2020-07-02 09:29:36', '2020-07-02 09:29:36', 1),
(4, 'Post Four', 'This is the post four body', '2020-07-02 09:29:54', '2020-07-02 09:29:54', 1),
(5, 'Post Five', 'This is the post five body', '2020-07-02 09:30:19', '2020-07-02 09:30:19', 0),
(6, 'Post Six', 'This is the post six body', '2020-07-02 09:30:37', '2020-07-02 09:30:37', 0),
(8, 'Profound attitude-oriented database', 'After a while she was quite a chorus of voices asked. \'Why, SHE, of course,\' he said in a great crowd assembled about them--all sorts of little pebbles came rattling in at all?\' said the King.', '2020-07-02 22:52:24', '2020-07-02 22:52:24', 2),
(9, 'Aogressive solution-oriented help-desk', '<p>English!&#39; said the Cat, &#39;or you wouldn&#39;t mind,&#39; said Alice: &#39;--where&#39;s the Duchess?&#39; &#39;Hush! Hush!&#39; said the Dormouse; &#39;VERY ill.&#39; Alice tried to speak, but for a good deal until she made some tarts.</p>', '2020-07-02 22:52:24', '2020-07-02 23:01:08', 1),
(10, 'Multi-channelled cohesive service-desk', 'March Hare, who had got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Then it ought to.', '2020-07-02 22:52:44', '2020-07-02 22:52:44', 9),
(11, 'Visionary actuating core', 'Alice; \'all I know THAT well enough; and what does it to annoy, Because he knows it teases.\' CHORUS. (In which the cook tulip-roots instead of the party sat silent and looked anxiously round, to.', '2020-07-02 22:52:44', '2020-07-02 22:52:44', 6),
(12, 'Open-architected holistic matrices', 'Dinah my dear! Let this be a comfort, one way--never to be a comfort, one way--never to be beheaded!\' said Alice, rather alarmed at the end of your nose-- What made you so awfully clever?\' \'I have.', '2020-07-02 22:52:47', '2020-07-02 22:52:47', 5),
(13, 'Compatible dynamic alliance', 'Gryphon; and then I\'ll tell you how the Dodo replied very solemnly. Alice was very provoking to find herself talking familiarly with them, as if he would not allow without knowing how old it was.', '2020-07-02 22:52:47', '2020-07-02 22:52:47', 4),
(14, 'De-engineered dedicated project', 'First, because I\'m on the ground as she leant against a buttercup to rest her chin in salt water. Her first idea was that it was only sobbing,\' she thought, \'till its ears have come, or at least one.', '2020-07-02 22:53:27', '2020-07-02 22:53:27', 2),
(15, 'Function-based object-oriented capability', 'OUTSIDE.\' He unfolded the paper as he spoke, and the baby violently up and throw us, with the lobsters and the pattern on their throne when they met in the pool, and the pair of white kid gloves.', '2020-07-02 22:53:27', '2020-07-02 22:53:27', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lynsie Canalita', 'Canalita.LynsieMarie@gmail.com', NULL, '$2y$10$.p/Q1bKPReNJaq2rQXhHH.KAWSAiEJAfsn1.4/BKfumpL4cSSnON.', NULL, '2020-07-02 09:53:46', '2020-07-02 23:30:52'),
(2, 'Dax Jaskolski', 'lilyan.oconner@example.com', '2020-07-02 22:07:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r2cixAZfzt', '2020-07-02 22:07:50', '2020-07-02 22:07:50'),
(3, 'Ida Rogahn', 'rolfson.aubrey@example.net', '2020-07-02 22:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BxwxAHwP0O', '2020-07-02 22:29:58', '2020-07-02 22:29:58'),
(4, 'Rusty Ernser', 'dan85@example.org', '2020-07-02 22:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yWT9Mb5qWt', '2020-07-02 22:29:58', '2020-07-02 22:29:58'),
(5, 'Mr. Berta Schulist DVM', 'hugh38@example.com', '2020-07-02 22:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2WwN8vtw3o', '2020-07-02 22:53:27', '2020-07-02 22:53:27'),
(6, 'Randal Reichel', 'anais88@example.net', '2020-07-02 22:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nf3dEQOErp', '2020-07-02 22:53:27', '2020-07-02 22:53:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
