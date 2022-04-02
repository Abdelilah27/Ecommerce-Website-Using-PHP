-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 11 nov. 2021 à 22:47
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phpstore`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin1@gmail.com', 'phpstore');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pants', '2020-10-29 01:24:54', '2020-10-29 01:24:54'),
(2, 'shirts', '2020-10-30 16:49:05', '2020-10-30 16:49:05');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'test1@yahoo.com', 'Is it visible in DATABASE?', '2020-10-27 06:01:59', '2020-10-27 06:01:59'),
(2, 'test2@gmail.com', '', '2020-11-12 21:34:01', '2020-11-12 21:34:01');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'kevin@gmail.com', 'buy', '2020-11-12 21:44:24', '2020-11-12 21:44:24'),
(3, 'abdelilah.ngadi27@gmail.com', 'azeazeaze', '2021-11-11 20:40:17', '2021-11-11 20:40:17'),
(4, 'A.ngadi@outlook.fr', 'aaaaaaaaa', '2021-11-11 20:57:31', '2021-11-11 20:57:31'),
(5, 'abdelilah@gmail.com', 'azeazeeza', '2021-11-11 21:30:07', '2021-11-11 21:30:07'),
(6, 'aaa@gmail.com', 'aaa@gmail.com', '2021-11-11 21:43:58', '2021-11-11 21:43:58');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_method`, `created_at`, `updated_at`) VALUES
(3, 1, 'flat 13-b, gulshan terrace, Mu', '+13332975389', 130, '', '2020-11-14 22:50:18', '2020-11-14 22:50:18'),
(4, 1, 'Sanarota', '+13332975389', 100, '', '2020-11-14 22:57:55', '2020-11-14 22:57:55');

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 1, '2020-11-14 23:03:39', '2020-11-14 23:03:39'),
(2, 6, 9, 1, '2020-11-14 23:11:07', '2020-11-14 23:11:07'),
(3, 8, 9, 1, '2020-11-19 07:10:05', '2020-11-19 07:10:05'),
(4, 9, 9, 1, '2020-11-19 07:10:14', '2020-11-19 07:10:14'),
(5, 10, 9, 1, '2020-11-19 07:12:15', '2020-11-19 07:12:15'),
(6, 11, 9, 1, '2020-11-19 07:12:51', '2020-11-19 07:12:51'),
(7, 12, 9, 1, '2020-11-19 07:13:15', '2020-11-19 07:13:15'),
(8, 13, 9, 1, '2020-11-19 07:17:39', '2020-11-19 07:17:39'),
(9, 14, 9, 1, '2020-11-19 07:17:51', '2020-11-19 07:17:51'),
(10, 15, 9, 1, '2020-11-19 07:19:04', '2020-11-19 07:19:04'),
(11, 16, 9, 1, '2020-11-19 07:19:10', '2020-11-19 07:19:10'),
(12, 17, 9, 1, '2020-11-19 07:19:25', '2020-11-19 07:19:25'),
(13, 18, 9, 1, '2020-11-19 07:19:36', '2020-11-19 07:19:36'),
(14, 19, 9, 1, '2020-11-19 07:21:22', '2020-11-19 07:21:22'),
(15, 20, 9, 1, '2020-11-19 07:21:32', '2020-11-19 07:21:32'),
(16, 4, 13, 1, '2020-11-19 08:12:43', '2020-11-19 08:12:43'),
(17, 4, 13, 1, '2020-11-19 08:12:50', '2020-11-19 08:12:50'),
(18, 4, 13, 1, '2020-11-19 08:13:09', '2020-11-19 08:13:09'),
(19, 4, 13, 1, '2020-11-19 08:13:38', '2020-11-19 08:13:38'),
(20, 21, 13, 1, '2020-11-19 08:15:32', '2020-11-19 08:15:32'),
(21, 22, 2, 1, '2021-11-11 21:45:20', '2021-11-11 21:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Plum/Navy Oxford', 45, 'uploads/shirt2.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets.', 2, '2020-11-05 22:20:51', '2020-11-05 22:20:51'),
(2, 'Rust Long Sleeve', 40, 'uploads/shirt3.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets.', 2, '2020-11-05 22:20:51', '2020-11-05 22:20:51'),
(6, 'Active Tracksuit Sets', 35, 'uploads/pant1.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets', 1, '2020-10-30 16:48:24', '2020-10-30 16:48:24'),
(9, 'Check Boyfriend Shirt', 40, 'uploads/shirt1.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets', 2, '2020-11-05 22:34:08', '2020-11-05 22:34:08'),
(13, 'Cotton Stretch Cargo Trousers', 30, 'uploads/pant2.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets', 1, '2020-11-05 23:20:51', '2020-11-05 23:20:51'),
(15, 'Cropped Chino Trousers', 45, 'uploads/pant3.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets', 1, '2020-11-05 23:51:32', '2020-11-05 23:51:32'),
(16, 'Sweat Shirt', 35, 'uploads/cosy.webp', 'ASOK Mens Casual Tracksuit Set Long Sleeve Full-Zip Running ... Mens Casual Active Tracksuits Full Zip Sports Jogging Suits Sets', 0, '2020-11-07 19:59:49', '2020-11-07 19:59:49');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
