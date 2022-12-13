-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 04:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_village_trial`
--

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`) VALUES
('0741fmFA', 'Harry Lueilwitz', 'Prof. Teagan Murazik Jr.', 'kohler.everardo@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('07HuJ8LF', 'Keyon Howell', 'Emma Erdman PhD', 'fernando.dietrich@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('0SQMJNsd', 'Maia Thiel', 'Eddie Herzog', 'rosina24@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('0XJp3kxf', 'Kory Murray', 'Broderick Hickle', 'samantha53@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('24tlGGVk', 'Cornell Boyle', 'Pattie Brekke', 'cummings.monty@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('2CFsgjhH', 'Perry Ledner PhD', 'Jessy Eichmann I', 'jspencer@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('2VwPsYzW', 'Dr. Donavon Stark MD', 'Baby Zieme', 'elissa48@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('51cHM1AT', 'Juliana Runte Jr.', 'Lorine Turner DDS', 'rowland33@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('612MJINF', 'Max Koss', 'Mrs. Alia Kozey III', 'aliza.buckridge@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('69vvnKZh', 'Chasity Bode', 'Jeffery O\'Conner', 'azemlak@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('6v3q34Fp', 'Gerson Hand', 'Prof. Perry Ankunding V', 'angeline82@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('8d41h8Yf', 'Kyla McGlynn', 'Mr. Isaac Bailey PhD', 'drew.kreiger@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('8gLoDPMT', 'Adam Greenfelder', 'Ms. Libbie Von', 'verner.pfannerstill@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('9J2y9RB6', 'Kariane Glover', 'Mr. Abe Bednar I', 'darion.gleason@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('9LYtm7aa', 'Prof. Crystel Wuckert', 'Roosevelt Hermiston', 'braun.kimberly@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('9Qs3SHiC', 'Lolita Rippin', 'Sid Swaniawski', 'barton82@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('AlbKS9z7', 'Angelita Rempel', 'Prof. Elyse Connelly', 'vicenta81@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('asFdLQY9', 'Malinda Adams', 'Tevin Denesik', 'mariela.barrows@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('B6beAsE6', 'Leif Mraz', 'Meghan Halvorson', 'dwelch@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('bIVdexfc', 'Dixie Haag', 'Anjali Windler V', 'glowe@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('C6l9piOE', 'Mrs. Josie Welch', 'Mrs. Lacey Fay III', 'gladys.haag@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('C6uuRT3z', 'Gabriel Breitenberg', 'Laurianne Wolf', 'bartoletti.jannie@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('Cb7xaHJw', 'Zelda O\'Keefe', 'Cortney Reichel II', 'annie84@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('cCZufri0', 'Clare Ritchie', 'Rickey Tremblay', 'bette.romaguera@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('eASw7yFh', 'Annabell Connelly', 'Wilson Hegmann Jr.', 'heller.concepcion@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('EAvuQr2B', 'Kole Tillman DVM', 'Mrs. Samara Grant', 'ova.huels@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('EbnFE8Y5', 'Miguel Feeney', 'Mr. Jaleel Frami MD', 'madonna.johnston@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('ETPSfX7x', 'Rodrigo Halvorson', 'Charlene Bednar', 'sydney.runte@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('eZOask2C', 'Jaylin Klein', 'Millie Mills', 'ebert.hilda@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('F1jxFlTB', 'Ora Roob', 'Courtney Hermiston', 'ipacocha@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('fGIZUpJT', 'Leonora Quitzon', 'Marley Gaylord', 'wilford.frami@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('Fx1YOaMK', 'Bryce Braun', 'Davion Bailey', 'laverna10@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('gLNBqgCS', 'Sofia Wehner', 'Jacky Wunsch', 'isaiah.schowalter@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('gSz8GVxv', 'Rosalinda Sipes IV', 'Prof. Chauncey Corwin IV', 'volkman.coby@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('GT2EMd7p', 'Maria Bergstrom', 'Ms. Katrine Bogan III', 'columbus15@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('hE4vyM6F', 'Malika Feil', 'Dr. Easton Wyman III', 'wisozk.wellington@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('hfC49WfZ', 'Prof. Edyth Powlowski DDS', 'Roger Smith V', 'brakus.ettie@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('hgoSnuZP', 'Dr. Marlon Weissnat', 'Korey Jacobi', 'shoppe@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('HIYOMVDK', 'Waylon Hagenes', 'Jewell Russel III', 'brielle03@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('HKmonC5i', 'Henry Huel', 'Lulu Treutel', 'howell.russel@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('hoWFka0T', 'Dr. Sarina Steuber DVM', 'Lisandro Gibson', 'cklein@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('hvGA3Ucq', 'Mr. Kris Lakin', 'Ms. Kiana Balistreri V', 'sonya.mayer@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('HYt21Qhm', 'Maudie Leannon DDS', 'Armani VonRueden', 'gcremin@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('iEmFVf6H', 'Hilton Murphy', 'Destiney Weber', 'icassin@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('iT1eRCzc', 'Luigi Mayer', 'Stella Heathcote', 'wpfannerstill@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('jVfMMxFv', 'Mr. Dario Wisozk', 'Mr. Rodger Powlowski V', 'johnson.rubye@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('kfRAz0to', 'Jamison Kshlerin', 'Turner Pagac DDS', 'rae.kiehn@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('kk8PQLya', 'Thalia Dooley', 'Mr. Bennett Strosin', 'fthompson@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('klZDt6Hs', 'Miss Shanon McGlynn', 'Cassie Anderson', 'scormier@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('Kr0DPFeN', 'Dave Konopelski', 'Mrs. Danyka Leuschke', 'klubowitz@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('L5nvEaMv', 'Prof. Vesta Heidenreich', 'Mrs. Dawn Reichert Sr.', 'marcia.rogahn@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('LbUj5wLu', 'Erika Davis', 'Mr. Amari Gibson DDS', 'earlene.mraz@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('LnNsbss9', 'Lolita Hartmann', 'Titus Ernser IV', 'wyman.douglas@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('lnTELyZB', 'Sanford Maggio', 'Muriel Ziemann PhD', 'ibecker@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('LS73SigE', 'Mireya Johnston', 'Davon Huels DDS', 'estrosin@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('M1hiv4vk', 'Prof. Elvis King V', 'Eldon Larson', 'cturner@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('MLttDtp3', 'Rogers Schulist PhD', 'Valerie Tillman', 'robbie39@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('mlWC0kkv', 'Lenny Schiller Jr.', 'Daphne Stark', 'dooley.isac@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('N06dO1IX', 'Dr. Jaqueline Stark', 'Elda Willms', 'muller.tabitha@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('NpYe2XFH', 'Jessy Roob III', 'Macy Mraz IV', 'xwilkinson@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('OT20ofTG', 'Annette Wehner', 'Maybell Beahan', 'xhills@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('oU2iFv0P', 'Kenneth Bogisich', 'Marlin Collins', 'nokon@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('OVbunHLA', 'Mr. Geo Erdman', 'Mr. Vicente Sauer', 'elbert.considine@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('PCExVLFO', 'Mr. Blake Runte PhD', 'Shayna Johnston', 'blarson@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('PDlmADZ7', 'Dr. Tod Wunsch', 'Rosario Lang', 'ellsworth18@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('Q1fQa2Jf', 'William Mayert', 'Collin Gutmann', 'amurray@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('Q2hrodTJ', 'Hank Grimes', 'Hermann Ritchie', 'cornell.kilback@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('qHzt7lyz', 'Jacey Maggio', 'Alvis King', 'joanie.kunze@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('qLUDwzhY', 'Kobe Kuvalis', 'Alex Halvorson', 'sauer.meredith@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('qUDse5mt', 'Dr. Lawson Sauer PhD', 'Coleman Boyle DVM', 'shaniya31@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('rDZtVaG2', 'Estrella Kunde', 'Santiago Reilly', 'aebert@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('RfiT7jtv', 'Darrion Kub', 'Vivian Purdy', 'hill.rahul@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('rfpX3P5k', 'Cleve Robel', 'Elaina Pacocha III', 'maggio.greg@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('RGwYHWCE', 'Cordelia Lowe III', 'Damion Cummerata', 'wintheiser.kieran@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('rMRPaQvW', 'Madyson Kuhic', 'Eleazar Swaniawski', 'block.jimmie@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('rskdtQdt', 'Oceane Pfeffer', 'Thomas Tromp', 'adele37@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('sFJnFZHv', 'Maia Trantow II', 'Aurelia Swaniawski III', 'jwelch@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('SLBMd1hu', 'Kailee Eichmann', 'Laura Price', 'sipes.dawson@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('tBS0CVo0', 'Summer Zulauf', 'Mr. Dallas Braun Sr.', 'jarod86@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('TPmXQIZm', 'Prof. Ernest Rogahn', 'Rosetta Botsford DDS', 'charlene26@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('U1VxMUeV', 'Prof. Lula Hoeger', 'Anya Pagac', 'marge.jacobs@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('UDstk22E', 'Ignacio Sipes', 'Ms. Ebony Green IV', 'thalvorson@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('UXASF5rW', 'Alena Satterfield III', 'Angel Sawayn', 'huels.emerson@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('V0SUjv0X', 'Marlon Kuhn', 'Brando Brown', 'wyman.kane@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('V8ytvELg', 'Mr. Tom Shanahan', 'Michele Kemmer', 'gretchen.gutkowski@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('vFbkBoqx', 'Madelyn Kling II', 'Mr. Wilford Maggio DVM', 'jmayer@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('VH8HtdeB', 'Kieran Lueilwitz', 'Peggie Zieme', 'lokuneva@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('vnTIXvaN', 'Mr. Enrique Watsica MD', 'Tobin Emard', 'mayert.beryl@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('VOiWaR1E', 'Elise Hessel', 'Raina Murphy MD', 'mozell.dickens@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('vYjFIDuE', 'Ms. Izabella Bins', 'Kendrick Wiza', 'hudson.claudia@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('vzG2Nxer', 'Abigayle Reinger', 'Judd Prosacco', 'tstehr@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('whaXjzt6', 'Ms. Gisselle Walker', 'Olen Weissnat', 'ahmad.dickinson@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('wRCmvQ6q', 'Alexandro Pfeffer', 'Alverta Halvorson', 'bartell.birdie@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('WZwXaxSN', 'Clarissa Kautzer', 'Mayra Conroy', 'kailey.konopelski@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('X9laXQqc', 'Adam Gibson I', 'Rosalia O\'Connell', 'spinka.garret@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('xcnEVEXl', 'Cullen Renner', 'Liana Friesen', 'friesen.nash@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('xLWaOrw4', 'Prof. Erling Lakin Sr.', 'Joany Beatty', 'gottlieb.norbert@example.org', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('xQrYwgyF', 'Franz Kulas', 'Dr. Elvis Ernser PhD', 'vonrueden.thelma@example.com', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('y5zdG5zO', 'Wilson Ratke', 'Ms. Nora Muller MD', 'raphaelle76@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25'),
('zJW87SgZ', 'Ms. Deja Miller DVM', 'Dr. Cheyenne Smitham', 'kelley67@example.net', '2022-12-13 09:41:25', '2022-12-13 09:41:25');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`uuid`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
