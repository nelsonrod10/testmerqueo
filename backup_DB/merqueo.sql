-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2019 a las 14:54:06
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `merqueo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `quantity`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, '3', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(2, 2, '3', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(3, 3, '7', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(4, 4, '8', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(5, 5, '10', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(6, 6, '15', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(7, 7, '26', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(8, 8, '11', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(9, 9, '1', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(10, 10, '8', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(11, 11, '7', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(12, 12, '8', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(13, 13, '2', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(14, 14, '1', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(15, 15, '1', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(16, 16, '9', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(17, 17, '17', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(18, 18, '8', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(19, 19, '9', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(20, 20, '9', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(21, 21, '3', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(22, 22, '6', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(23, 23, '9', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(24, 24, '9', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(25, 25, '10', '2019-03-01', '2019-11-16 21:09:45', '2019-11-16 21:09:45'),
(26, 26, '40', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(27, 27, '2', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(28, 28, '3', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(29, 29, '2', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(30, 30, '1', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(31, 31, '9', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(32, 32, '10', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(33, 33, '2', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(34, 34, '3', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(35, 35, '3', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(36, 36, '6', '2019-03-01', '2019-11-16 21:09:46', '2019-11-16 21:09:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_16_015340_create_products_table', 1),
(5, '2019_11_16_015341_create_providers_table', 1),
(6, '2019_11_16_015342_create_providers_products_table', 1),
(7, '2019_11_16_020551_create_inventories_table', 1),
(8, '2019_11_16_020717_create_orders_table', 1),
(9, '2019_11_16_020750_create_orders_products_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `priority` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `priority`, `address`, `user`, `created_at`, `updated_at`) VALUES
(1, '1', 'KR 14 # 87 - 20 ', 'Sofia', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(2, '1', 'KR 20 # 164A - 5 ', 'Angel', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(3, '3', 'KR 13 # 74 - 38 ', 'Hocks', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(4, '1', 'CL 93 # 12 - 9 ', 'Michael', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(5, '1', 'CL 71 # 3 - 74 ', 'Bar de Alex', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(6, '2', 'KR 20 # 134A - 5 ', 'Sabor Criollo', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(7, '2', 'CL 80 # 14 - 38 ', 'El Pollo Rojo', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(8, '7', 'KR 14 # 98 - 74 ', 'All Salad', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(9, '1', 'KR 58 # 93 - 1 ', 'Parrilla y sabor', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(10, '9', 'KR 14 # 87 - 20 ', 'Sofia', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(11, '1', 'CL 93B # 17 - 12 ', 'restaurante yerbabuena ', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(12, '10', 'KR 68D # 98A - 11 ', 'Luis David', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(13, '2', 'AC 72 # 20 - 45 ', 'David Carruyo', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(14, '3', 'KR 22 # 122 - 57 ', 'MARIO', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(15, '8', 'KR 88 # 72A - 26 ', 'Harold', '2019-11-16 21:09:48', '2019-11-16 21:09:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(2, 1, 2, '21', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(3, 1, 37, '7', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(4, 1, 3, '10', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(5, 1, 4, '5', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(6, 2, 5, '100', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(7, 2, 6, '60', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(8, 3, 7, '4', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(9, 3, 8, '3', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(10, 3, 9, '4', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(11, 3, 10, '8', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(12, 3, 11, '5', '2019-11-16 21:09:46', '2019-11-16 21:09:46'),
(13, 4, 12, '3', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(14, 4, 13, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(15, 4, 14, '4', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(16, 4, 4, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(17, 4, 15, '3', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(18, 5, 16, '1500', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(19, 6, 17, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(20, 6, 18, '3', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(21, 6, 15, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(22, 6, 19, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(23, 6, 20, '3', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(24, 7, 21, '3', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(25, 7, 22, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(26, 7, 23, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(27, 7, 39, '4', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(28, 7, 24, '15', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(29, 8, 25, '3', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(30, 8, 26, '2', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(31, 8, 22, '4', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(32, 8, 27, '1', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(33, 8, 5, '1', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(34, 9, 22, '1', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(35, 10, 28, '1', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(36, 11, 7, '1', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(37, 12, 41, '1', '2019-11-16 21:09:47', '2019-11-16 21:09:47'),
(38, 12, 19, '6', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(39, 12, 29, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(40, 12, 17, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(41, 12, 30, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(42, 13, 7, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(43, 13, 25, '2', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(44, 13, 5, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(45, 13, 31, '25', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(46, 14, 43, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(47, 14, 30, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(48, 14, 32, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(49, 14, 33, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(50, 14, 28, '2', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(51, 15, 16, '3', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(52, 15, 34, '3', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(53, 15, 35, '3', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(54, 15, 12, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48'),
(55, 15, 36, '1', '2019-11-16 21:09:48', '2019-11-16 21:09:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Leche', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(2, 'Huevos', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(3, 'Manzana Verde', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(4, 'Pepino Cohombro', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(5, 'Pimentón Rojo', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(6, 'Kiwi', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(7, 'Cebolla Cabezona Blanca Limpia', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(8, 'Habichuela', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(9, 'Mango Tommy Maduro', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(10, 'Tomate Chonto Pintón', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(11, 'Zanahoria Grande', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(12, 'Aguacate Maduro', '2019-11-16 21:09:41', '2019-11-16 21:09:41'),
(13, 'Kale o Col Rizada', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(14, 'Cebolla Cabezona Roja Limpia', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(15, 'Tomate Chonto Maduro', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(16, 'Acelga', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(17, 'Espinaca Bogotana x 500grs', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(18, 'Ahuyama', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(19, 'Cebolla Cabezona Blanca Sin Pelar', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(20, 'Melón', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(21, 'Cebolla Cabezona Roja Sin Pelar', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(22, 'Cebolla Larga Junca x 500grs', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(23, 'Hierbabuena x 500grs', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(24, 'Lechuga Crespa Verde', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(25, 'Limón Tahití', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(26, 'Mora de Castilla', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(27, 'Pimentón Verde', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(28, 'Tomate Larga Vida Maduro', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(29, 'Cilantro x 500grs', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(30, 'Fresa Jugo', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(31, 'Papa R-12 Mediana', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(32, 'Curuba ', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(33, 'Brócoli', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(34, 'Aguacate Hass Pintón', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(35, 'Aguacate Hass Maduro ', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(36, 'Aguacate Pintón', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(37, 'Pan Bimbo', '2019-11-16 21:09:42', '2019-11-16 21:09:42'),
(39, 'Lechuga Crespa Morada', '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(41, 'Banano', '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(43, 'Banano', '2019-11-16 21:09:43', '2019-11-16 21:09:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ruby', '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(2, 'Raul', '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(3, 'Angelica', '2019-11-16 21:09:44', '2019-11-16 21:09:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers_products`
--

CREATE TABLE `providers_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `providers_products`
--

INSERT INTO `providers_products` (`id`, `provider_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(2, 1, 2, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(3, 1, 45, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(4, 1, 3, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(5, 1, 4, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(6, 1, 5, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(7, 1, 46, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(8, 1, 24, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(9, 1, 25, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(10, 1, 26, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(11, 1, 27, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(12, 2, 28, '2019-11-16 21:09:43', '2019-11-16 21:09:43'),
(13, 2, 47, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(14, 2, 29, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(15, 2, 30, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(16, 2, 31, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(17, 2, 32, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(18, 2, 33, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(19, 2, 34, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(20, 2, 35, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(21, 2, 36, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(22, 2, 16, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(23, 2, 17, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(24, 3, 6, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(25, 3, 7, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(26, 3, 8, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(27, 3, 9, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(28, 3, 10, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(29, 3, 11, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(30, 3, 12, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(31, 3, 13, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(32, 3, 14, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(33, 3, 15, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(34, 3, 18, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(35, 3, 19, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(36, 3, 20, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(37, 3, 21, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(38, 3, 22, '2019-11-16 21:09:44', '2019-11-16 21:09:44'),
(39, 3, 23, '2019-11-16 21:09:45', '2019-11-16 21:09:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_products_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_name_unique` (`name`);

--
-- Indices de la tabla `providers_products`
--
ALTER TABLE `providers_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `providers_products_provider_id_foreign` (`provider_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `providers_products`
--
ALTER TABLE `providers_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders_products`
--
ALTER TABLE `orders_products`
  ADD CONSTRAINT `orders_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `providers_products`
--
ALTER TABLE `providers_products`
  ADD CONSTRAINT `providers_products_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
