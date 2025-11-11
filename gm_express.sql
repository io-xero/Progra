-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-11-2025 a las 18:30:51
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gm_express`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add content type', 3, 'add_contenttype'),
(10, 'Can change content type', 3, 'change_contenttype'),
(11, 'Can delete content type', 3, 'delete_contenttype'),
(12, 'Can view content type', 3, 'view_contenttype'),
(13, 'Can add session', 4, 'add_session'),
(14, 'Can change session', 4, 'change_session'),
(15, 'Can delete session', 4, 'delete_session'),
(16, 'Can view session', 4, 'view_session'),
(17, 'Can add user', 5, 'add_customuser'),
(18, 'Can change user', 5, 'change_customuser'),
(19, 'Can delete user', 5, 'delete_customuser'),
(20, 'Can view user', 5, 'view_customuser'),
(21, 'Can add vehicle', 6, 'add_vehicle'),
(22, 'Can change vehicle', 6, 'change_vehicle'),
(23, 'Can delete vehicle', 6, 'delete_vehicle'),
(24, 'Can view vehicle', 6, 'view_vehicle'),
(25, 'Can add order', 7, 'add_order'),
(26, 'Can change order', 7, 'change_order'),
(27, 'Can delete order', 7, 'delete_order'),
(28, 'Can view order', 7, 'view_order'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile'),
(33, 'Can add order status history', 9, 'add_orderstatushistory'),
(34, 'Can change order status history', 9, 'change_orderstatushistory'),
(35, 'Can delete order status history', 9, 'delete_orderstatushistory'),
(36, 'Can view order status history', 9, 'view_orderstatushistory');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_customuser`
--

DROP TABLE IF EXISTS `delivery_customuser`;
CREATE TABLE IF NOT EXISTS `delivery_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delivery_customuser`
--

INSERT INTO `delivery_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `role`, `avatar`) VALUES
(1, 'pbkdf2_sha256$1000000$LkhTGwQc8PxVtFYXtXv2ck$KSeTIUH/UWg+Suwv5CZ53FBL6MZGdOjD59IQbR7wBJg=', '2025-11-10 17:10:48.630929', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2025-11-08 19:56:51.490821', 'ADMIN', ''),
(2, 'pbkdf2_sha256$1000000$cV1gDcLWBBJmnN6P9lXnhf$tXJ6zaetNxFI8NV6TtiWx5Oy8AJref3LCXotK+wTbjw=', '2025-11-10 03:55:46.460760', 0, 'repartidor1', '', '', '', 0, 1, '2025-11-08 19:56:51.887325', 'REPARTIDOR', ''),
(3, 'pbkdf2_sha256$1000000$A7FPhpxJF5rpRkpsuIoZfC$Zi+x205Cf1IdS43T1QPZ2h7V0Gr4zlyelo7gDSlIb8g=', NULL, 0, 'cliente', '', '', 'cliente@gmail.com', 0, 1, '2025-11-08 19:56:52.287724', 'CLIENTE', ''),
(5, 'pbkdf2_sha256$1000000$4BTPiSqsOmtS9mweeDUYk3$obIVA40GO+QsQzRR793JKPqgDp/BLaM6lEWFzCE5rAA=', NULL, 0, 'repartidor2', '', '', 'repartidor2@gmail.com', 0, 1, '2025-11-10 17:11:24.612544', 'repartidor', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_customuser_groups`
--

DROP TABLE IF EXISTS `delivery_customuser_groups`;
CREATE TABLE IF NOT EXISTS `delivery_customuser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_customuser_groups_customuser_id_group_id_2efda191_uniq` (`customuser_id`,`group_id`),
  KEY `delivery_customuser_groups_customuser_id_771dd85c` (`customuser_id`),
  KEY `delivery_customuser_groups_group_id_67cdf179` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_customuser_user_permissions`
--

DROP TABLE IF EXISTS `delivery_customuser_user_permissions`;
CREATE TABLE IF NOT EXISTS `delivery_customuser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_customuser_user_customuser_id_permission_fc921ed5_uniq` (`customuser_id`,`permission_id`),
  KEY `delivery_customuser_user_permissions_customuser_id_a98938f6` (`customuser_id`),
  KEY `delivery_customuser_user_permissions_permission_id_0d6b6d47` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_order`
--

DROP TABLE IF EXISTS `delivery_order`;
CREATE TABLE IF NOT EXISTS `delivery_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `assigned_to_id` bigint DEFAULT NULL,
  `client_id` bigint NOT NULL,
  `vehicle_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_order_assigned_to_id_80110105` (`assigned_to_id`),
  KEY `delivery_order_client_id_e847fa9c` (`client_id`),
  KEY `delivery_order_vehicle_id_a16fea8f` (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_orderstatushistory`
--

DROP TABLE IF EXISTS `delivery_orderstatushistory`;
CREATE TABLE IF NOT EXISTS `delivery_orderstatushistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `previous_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changed_at` datetime(6) NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_orderstatushistory_order_id_57cdaa02` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_profile`
--

DROP TABLE IF EXISTS `delivery_profile`;
CREATE TABLE IF NOT EXISTS `delivery_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_vehicle`
--

DROP TABLE IF EXISTS `delivery_vehicle`;
CREATE TABLE IF NOT EXISTS `delivery_vehicle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_vehicle_driver_id_764345ee` (`driver_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delivery_vehicle`
--

INSERT INTO `delivery_vehicle` (`id`, `name`, `plate`, `driver_id`) VALUES
(1, 'a', 'a', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'auth', 'permission'),
(2, 'auth', 'group'),
(3, 'contenttypes', 'contenttype'),
(4, 'sessions', 'session'),
(5, 'delivery', 'customuser'),
(6, 'delivery', 'vehicle'),
(7, 'delivery', 'order'),
(8, 'delivery', 'profile'),
(9, 'delivery', 'orderstatushistory');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-11-08 19:28:24.944857'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-11-08 19:28:24.992744'),
(3, 'auth', '0001_initial', '2025-11-08 19:28:25.174582'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-11-08 19:28:25.202367'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-11-08 19:28:25.205326'),
(6, 'auth', '0004_alter_user_username_opts', '2025-11-08 19:28:25.208047'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-11-08 19:28:25.210296'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-11-08 19:28:25.210718'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-11-08 19:28:25.213040'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-11-08 19:28:25.215505'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-11-08 19:28:25.218661'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-11-08 19:28:25.241583'),
(13, 'auth', '0011_update_proxy_permissions', '2025-11-08 19:28:25.246585'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-11-08 19:28:25.250145'),
(15, 'sessions', '0001_initial', '2025-11-08 19:28:25.279979'),
(16, 'delivery', '0001_initial', '2025-11-08 19:56:49.084966'),
(17, 'delivery', '0002_orderstatushistory_profile', '2025-11-10 15:16:39.461927');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fh19567tvz6jktall4fgij7wbidenarb', '.eJxVjDsOwjAQBe_iGln-rH-U9JzBsr0bHEC2FCcV4u4QKQW0b2bei8W0rTVug5Y4IzszyU6_W07lQW0HeE_t1nnpbV3mzHeFH3Twa0d6Xg7376CmUb-1VVboAhqksV5YJOFCAOPQY1YUhJCqgAk6UFAGvC2ECJCL85OekgD2_gCjCTbF:1vIVPk:JewjQO-RBBlYfFwhau4RYfgjFVfztSQArMozFHFS1tI', '2025-11-24 17:10:48.632656');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
