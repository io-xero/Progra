-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-10-2025 a las 11:57:15
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
-- Base de datos: `gmexpress_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'AdminFull'),
(2, 'Bodeguero'),
(3, 'Vendedor'),
(4, 'usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 2, 37),
(2, 2, 38),
(3, 2, 39),
(4, 2, 40),
(5, 2, 41),
(6, 2, 42),
(7, 2, 43),
(8, 2, 44),
(9, 2, 45),
(10, 2, 46),
(11, 2, 47),
(12, 2, 48),
(13, 3, 53),
(14, 3, 54),
(15, 3, 55),
(16, 3, 56),
(17, 3, 57),
(18, 3, 58),
(19, 3, 59),
(20, 3, 60),
(21, 4, 40),
(22, 4, 48),
(23, 4, 20),
(24, 4, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add company', 7, 'add_company'),
(26, 'Can change company', 7, 'change_company'),
(27, 'Can delete company', 7, 'delete_company'),
(28, 'Can view company', 7, 'view_company'),
(29, 'Can add branch', 8, 'add_branch'),
(30, 'Can change branch', 8, 'change_branch'),
(31, 'Can delete branch', 8, 'delete_branch'),
(32, 'Can view branch', 8, 'view_branch'),
(33, 'Can add user profile', 9, 'add_userprofile'),
(34, 'Can change user profile', 9, 'change_userprofile'),
(35, 'Can delete user profile', 9, 'delete_userprofile'),
(36, 'Can view user profile', 9, 'view_userprofile'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add stock item', 12, 'add_stockitem'),
(46, 'Can change stock item', 12, 'change_stockitem'),
(47, 'Can delete stock item', 12, 'delete_stockitem'),
(48, 'Can view stock item', 12, 'view_stockitem'),
(49, 'Can add rental', 13, 'add_rental'),
(50, 'Can change rental', 13, 'change_rental'),
(51, 'Can delete rental', 13, 'delete_rental'),
(52, 'Can view rental', 13, 'view_rental'),
(53, 'Can add sale', 14, 'add_sale'),
(54, 'Can change sale', 14, 'change_sale'),
(55, 'Can delete sale', 14, 'delete_sale'),
(56, 'Can view sale', 14, 'view_sale'),
(57, 'Can add sale item', 15, 'add_saleitem'),
(58, 'Can change sale item', 15, 'change_saleitem'),
(59, 'Can delete sale item', 15, 'delete_saleitem'),
(60, 'Can view sale item', 15, 'view_saleitem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$rtrOn00AQg3qxjuHhsKfbt$IgiV2WdhyDH1kamK1AaeOHnq1fouwF0D1JOUH5a+MfY=', '2025-10-10 11:45:26.922472', 1, 'admin', '', '', 'admin@gmexpress.local', 1, 1, '2025-10-09 15:32:50.018482'),
(2, 'pbkdf2_sha256$1000000$A9K8dWEys2nYCLXTJd72p2$bcSth9+lvvdx12cdf0AhD4r8YnHjzO5smZg9FUUGMOs=', '2025-10-10 11:29:06.353808', 0, 'bodeguero1', '', '', 'bodeguero1@gmexpress.local', 1, 1, '2025-10-09 15:32:50.473995'),
(3, 'pbkdf2_sha256$1000000$wTvUF7dfifr86eLQyTYUuZ$mgoU3xHKeCpQpBAwMjpFB7hhBttgRyMUlnxEm9ZpIVQ=', '2025-10-10 11:43:02.041876', 0, 'usuario1', '', '', '', 1, 1, '2025-10-09 15:32:50.000000'),
(4, 'pbkdf2_sha256$1000000$peoGt1aeQOwmKdyqQ76gx6$k9TCvw1WRIdkWivS/Tb6EHryrvNPxgB8KYvIBVXe3AI=', '2025-10-10 11:39:57.639023', 0, 'usuariocomun', '', '', '', 0, 1, '2025-10-10 11:32:37.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 2),
(2, 3, 3),
(3, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-10-10 11:32:37.776188', '4', 'usuariocomun', 1, '[{\"added\": {}}]', 4, 1),
(2, '2025-10-10 11:34:36.871445', '2', 'Bodeguero', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(3, '2025-10-10 11:35:13.968349', '3', 'Vendedor', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(4, '2025-10-10 11:37:28.990377', '4', 'usuariocomun', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(5, '2025-10-10 11:39:29.411041', '4', 'usuarios', 1, '[{\"added\": {}}]', 3, 1),
(6, '2025-10-10 11:39:45.459801', '4', 'usuariocomun', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(7, '2025-10-10 11:40:33.490495', '3', 'vendedor1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(8, '2025-10-10 11:41:57.852868', '3', 'vendedor1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(9, '2025-10-10 11:42:12.754968', '3', 'usuario1', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Email address\"]}}]', 4, 1),
(10, '2025-10-10 11:42:25.002797', '3', 'usuario1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'organizations', 'company'),
(8, 'organizations', 'branch'),
(9, 'organizations', 'userprofile'),
(10, 'inventory', 'category'),
(11, 'inventory', 'product'),
(12, 'inventory', 'stockitem'),
(13, 'rentals', 'rental'),
(14, 'sales', 'sale'),
(15, 'sales', 'saleitem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-09 04:49:20.642326'),
(2, 'auth', '0001_initial', '2025-10-09 04:49:21.063110'),
(3, 'admin', '0001_initial', '2025-10-09 04:49:21.221345'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-10-09 04:49:21.228740'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-09 04:49:21.237354'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-10-09 04:49:21.326916'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-10-09 04:49:21.362989'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-10-09 04:49:21.392804'),
(9, 'auth', '0004_alter_user_username_opts', '2025-10-09 04:49:21.399498'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-10-09 04:49:21.427479'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-10-09 04:49:21.428365'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-10-09 04:49:21.433968'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-10-09 04:49:21.460797'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-10-09 04:49:21.488496'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-10-09 04:49:21.515435'),
(16, 'auth', '0011_update_proxy_permissions', '2025-10-09 04:49:21.524228'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-10-09 04:49:21.564749'),
(18, 'sessions', '0001_initial', '2025-10-09 04:49:21.595839'),
(19, 'organizations', '0001_initial', '2025-10-09 05:03:05.821566'),
(20, 'inventory', '0001_initial', '2025-10-09 05:03:05.987629'),
(21, 'rentals', '0001_initial', '2025-10-09 05:03:06.166201'),
(22, 'sales', '0001_initial', '2025-10-09 05:03:06.371108');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('en9jq174u2ccs58k6scz03cm3quq1f8f', '.eJxVjDsOwjAQBe_iGlmbxL9Q0nMGy95d4wCypTipEHcHSymgfTPzXsKHfct-b7z6hcRZDOL0u8WADy4d0D2UW5VYy7YuUXZFHrTJayV-Xg737yCHlntt58HC6MiQ0qO2aFBFMswJYQ4jO6DJsAaVJqJkZzRf5oAZCRyBEe8P6FY4dg:1v7BYs:hNmCnNjjrwTrGioyR2Ro83m05HYnGlBVvwApByLgSRg', '2025-10-24 11:45:26.924834');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_category`
--

DROP TABLE IF EXISTS `inventory_category`;
CREATE TABLE IF NOT EXISTS `inventory_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventory_category`
--

INSERT INTO `inventory_category` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `status`) VALUES
(1, '2025-10-09 15:32:40.800629', '2025-10-09 15:32:40.800652', NULL, 'Alimentos', 'ACTIVE'),
(2, '2025-10-09 15:32:40.801513', '2025-10-09 15:32:40.801522', NULL, 'Implementos de Cocina', 'ACTIVE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_product`
--

DROP TABLE IF EXISTS `inventory_product`;
CREATE TABLE IF NOT EXISTS `inventory_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `sku` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `is_rentable` tinyint(1) NOT NULL,
  `is_sellable` tinyint(1) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `inventory_product_category_id_c907876e` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventory_product`
--

INSERT INTO `inventory_product` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `sku`, `is_rentable`, `is_sellable`, `image`, `category_id`) VALUES
(1, '2025-10-09 15:32:40.803697', '2025-10-09 15:32:40.803708', NULL, 'Salsa Tomate 1L', 'AL-001', 0, 1, '', 1),
(2, '2025-10-09 15:32:40.805025', '2025-10-09 15:32:40.805035', NULL, 'Olla Industrial 50L', 'IM-100', 1, 1, '', 2),
(3, '2025-10-09 15:32:40.806034', '2025-10-09 15:32:40.806043', NULL, 'Sarten 30cm', 'IM-101', 1, 1, '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory_stockitem`
--

DROP TABLE IF EXISTS `inventory_stockitem`;
CREATE TABLE IF NOT EXISTS `inventory_stockitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `quantity` int NOT NULL,
  `serial_number` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `branch_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_stockitem_branch_id_product_id_ser_2c256307_uniq` (`branch_id`,`product_id`,`serial_number`),
  KEY `inventory_stockitem_branch_id_8158026d` (`branch_id`),
  KEY `inventory_stockitem_product_id_90083cf4` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventory_stockitem`
--

INSERT INTO `inventory_stockitem` (`id`, `created_at`, `updated_at`, `deleted_at`, `quantity`, `serial_number`, `status`, `branch_id`, `product_id`) VALUES
(1, '2025-10-09 15:32:40.808279', '2025-10-09 15:32:40.808291', NULL, 200, NULL, 'AVAILABLE', 1, 1),
(2, '2025-10-09 15:32:40.809500', '2025-10-09 15:32:40.809511', NULL, 5, 'SN-OLLA-001', 'AVAILABLE', 1, 2),
(3, '2025-10-09 15:32:40.810875', '2025-10-09 15:32:40.810884', NULL, 10, NULL, 'AVAILABLE', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizations_branch`
--

DROP TABLE IF EXISTS `organizations_branch`;
CREATE TABLE IF NOT EXISTS `organizations_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `company_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organizations_branch_company_id_fcde370a` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizations_branch`
--

INSERT INTO `organizations_branch` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `address`, `company_id`) VALUES
(1, '2025-10-09 15:32:40.798387', '2025-10-09 15:32:40.798401', NULL, 'Bodega Central', 'Av. Cocina 123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizations_company`
--

DROP TABLE IF EXISTS `organizations_company`;
CREATE TABLE IF NOT EXISTS `organizations_company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizations_company`
--

INSERT INTO `organizations_company` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, '2025-10-09 15:32:40.794385', '2025-10-09 15:32:40.794538', NULL, 'Casino GM Express');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizations_userprofile`
--

DROP TABLE IF EXISTS `organizations_userprofile`;
CREATE TABLE IF NOT EXISTS `organizations_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `organizations_userprofile_branch_id_13a69410` (`branch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizations_userprofile`
--

INSERT INTO `organizations_userprofile` (`id`, `role`, `branch_id`, `user_id`) VALUES
(1, 'Bodeguero', 1, 2),
(2, 'Vendedor', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentals_rental`
--

DROP TABLE IF EXISTS `rentals_rental`;
CREATE TABLE IF NOT EXISTS `rentals_rental` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `returned` tinyint(1) NOT NULL,
  `branch_id` bigint NOT NULL,
  `stock_item_id` bigint NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rentals_rental_branch_id_e9de5961` (`branch_id`),
  KEY `rentals_rental_stock_item_id_c91ffea6` (`stock_item_id`),
  KEY `rentals_rental_user_id_ba799885` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_sale`
--

DROP TABLE IF EXISTS `sales_sale`;
CREATE TABLE IF NOT EXISTS `sales_sale` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `client_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `branch_id` bigint NOT NULL,
  `created_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_sale_branch_id_269e60a5` (`branch_id`),
  KEY `sales_sale_created_by_id_f6773268` (`created_by_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_saleitem`
--

DROP TABLE IF EXISTS `sales_saleitem`;
CREATE TABLE IF NOT EXISTS `sales_saleitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `product_id` bigint NOT NULL,
  `sale_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_saleitem_product_id_aeb6c9cd` (`product_id`),
  KEY `sales_saleitem_sale_id_56e67045` (`sale_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
