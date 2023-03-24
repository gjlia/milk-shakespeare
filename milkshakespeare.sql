-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Mar-2023 às 00:09
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `milkshakespeare`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_16_002448_create_pedidos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_funcionario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_pedido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao_pedidos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco_final` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `nome_funcionario`, `data_pedido`, `descricao_pedidos`, `preco_final`, `created_at`, `updated_at`) VALUES
(1, 'RM', '22/03/2023', '1 x Macbeth Mocha\r\n1 x Star Wars Chocolate Truffles', '13,50', '2023-03-23 06:42:37', '2023-03-23 06:42:37'),
(2, 'BR', '22/03/2023', '1 x Romeo and Juliet Red Velvet Latte\r\n1 x Jurassic Park Dino Egg Cupcakes', '18,00', '2023-03-23 06:44:36', '2023-03-23 06:44:36'),
(3, 'RV', '22/03/2023', '1 x Jane Eyre Java\r\n1 x Marvel Superhero Cake Pops', '11,50', '2023-03-23 06:46:03', '2023-03-23 06:46:03'),
(4, 'RM', '22/03/2023', '1 x The Great Gatsby Green Tea Frappuccino\r\n1 x Harry Potter Butterbeer Cupcakes', '19,50', '2023-03-23 06:46:38', '2023-03-23 06:46:38'),
(5, 'BR', '22/03/2023', '1 x Pride and Prejudice Pumpkin Spice Latte\r\n1 x Lord of the Rings Elvish Lembas Bread', '15,00', '2023-03-23 06:47:10', '2023-03-23 06:47:10'),
(6, 'RV', '22/03/2023', '1 x Wuthering Heights White Chocolate Mocha\r\n1 x Game of Thrones Dragon Eggs Truffles', '15,50', '2023-03-23 06:47:43', '2023-03-23 06:47:43'),
(7, 'RM', '22/03/2023', '1 x Alice in Wonderland Almond Milk Latte\r\n1 x Batman Dark Knight Brownies', '14,00', '2023-03-23 06:52:17', '2023-03-23 06:52:17'),
(8, 'RV', '22/03/2023', '1 x The Catcher in the Rye Caramel Latte\r\n1 x Disney Princess Macarons', '14,00', '2023-03-23 06:52:38', '2023-03-23 06:52:38'),
(9, 'RV', '22/03/2023', '1 x The Hobbit Hot Cocoa\r\n1 x Indiana Jones Adventure Cookies', '11,00', '2023-03-23 06:53:02', '2023-03-23 06:53:02'),
(10, 'BR', '22/03/2023', '1 x To Kill a Mockingbird Mint Mocha\r\n1 x Pirates of the Caribbean Treasure Chest Cake', '18,00', '2023-03-23 06:53:27', '2023-03-23 06:53:27'),
(11, 'RM', '22/03/2023', '1 x The Picture of Dorian Gray Peanut Butter Cup Frappuccino\r\n1 x The Wizard of Oz Ruby Slipper Cupcakes', '19,00', '2023-03-23 06:54:09', '2023-03-23 06:54:09'),
(12, 'RV', '22/03/2023', '1 x Les Misérables Lavender Latte\r\n1 x Ghostbusters Marshmallow Pops', '14,50', '2023-03-23 06:54:30', '2023-03-23 06:54:30'),
(13, 'BR', '22/03/2023', '1 x The Secret Garden Strawberry Smoothie\r\n1 x Back to the Future DeLorean Cookies', '12,00', '2023-03-23 06:54:51', '2023-03-23 06:54:51'),
(14, 'RV', '22/03/2023', '1 x Harry Potter Hot Butterbeer\r\n1 x The Lion King Simba\'s Pride Cookies', '12,00', '2023-03-23 06:55:08', '2023-03-23 06:55:08'),
(15, 'RV', '22/03/2023', '1 x Little Women Lemonade\r\n1 x Jurassic World Fossil Cookies', '10,50', '2023-03-23 06:55:26', '2023-03-23 06:55:26'),
(16, 'BR', '22/03/2023', '1 x The Hunger Games Honey Latte\r\n1 x Rocky Road to Gotham City Bars', '16,00', '2023-03-23 06:55:58', '2023-03-23 06:55:58'),
(17, 'RV', '22/03/2023', '1 x 1984 Orange Mocha\r\n1 x Toy Story Alien Cake Pops', '13,50', '2023-03-23 06:56:22', '2023-03-23 06:56:22'),
(18, 'RM', '22/03/2023', '1 x The Odyssey Oat Milk Latte\r\n1 x The Avengers Infinity Stone Macarons', '15,50', '2023-03-23 06:56:36', '2023-03-23 06:56:36'),
(19, 'RM', '22/03/2023', '1 x The Canterbury Tales Chai Tea Latte\r\n1 x Wonder Woman Lasso of Truth Twists', '14,00', '2023-03-23 06:56:51', '2023-03-23 06:56:51'),
(20, 'RV', '22/03/2023', '1 x Frankenstein Frozen Mocha\r\n1 x The Matrix Red Pill Blue Pill Jellies', '16,00', '2023-03-23 06:57:06', '2023-03-23 06:57:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
