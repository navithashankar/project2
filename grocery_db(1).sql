-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 05:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app3_admin_tb`
--

CREATE TABLE `app3_admin_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app3_admin_tb`
--

INSERT INTO `app3_admin_tb` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'admin', 'admin456@gmail.com', 'admin456', '8934562788'),
(2, 'admin123', 'admin123@gmail.com', 'admin123', '1234567890'),
(3, 'ammu', 'ammu123@gmail.com', 'ammu123', '3456787123'),
(4, 'anu', 'anu@gmail.com', 'anu@123', '9823456738'),
(5, 'anu', 'anu123@gmail.com', 'anu@123', '1236789874'),
(6, 'chikku', 'chikku@gmail.com', 'chikku123', '8134526734'),
(7, 'chakky', 'chakki@gmail.com', '12345', '8134234562'),
(8, 'navi', 'navi123@gmail.com', '123', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `app3_cart_tb`
--

CREATE TABLE `app3_cart_tb` (
  `id` bigint(20) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `totalamount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pid_id` bigint(20) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app3_cart_tb`
--

INSERT INTO `app3_cart_tb` (`id`, `quantity`, `totalamount`, `status`, `pid_id`, `uid_id`) VALUES
(1, '1', '22.0', 'paid', 4, 1),
(3, '1', '22.0', 'paid', 5, 1),
(4, '1', '49.5', 'paid', 8, 1),
(5, '1', '104.5', 'paid', 9, 1),
(6, '1', '1045.0', 'paid', 6, 1),
(7, '1', '253.0', 'paid', 15, 1),
(8, '1', '385.0', 'paid', 11, 1),
(10, '1', '121.0', 'paid', 12, 1),
(11, '1', '22.0', 'paid', 4, 1),
(12, '1', '165.0', 'paid', 14, 1),
(13, '1', '253.0', 'paid', 15, 1),
(14, '1', '22.0', 'paid', 4, 3),
(15, '1', '22.0', 'paid', 4, 3),
(16, '1', '22.0', 'paid', 5, 3),
(17, '1', '49.5', 'paid', 8, 3),
(18, '1', '165.0', 'paid', 14, 3),
(19, '1', '253.0', 'paid', 15, 3),
(20, '1', '385.0', 'paid', 11, 3),
(21, '1', '132.0', 'paid', 7, 3),
(22, '1', '121.0', 'paid', 12, 3),
(23, '1', '1045.0', 'paid', 6, 3),
(24, '1', '22.0', 'paid', 4, 5),
(25, '1', '253.0', 'paid', 15, 5),
(26, '1', '1045.0', 'paid', 6, 5),
(27, '1', '220.0', 'paid', 16, 5),
(28, '1', '22.0', 'paid', 4, 5),
(29, '1', '22.0', 'paid', 5, 5),
(30, '1', '121.0', 'paid', 12, 5),
(31, '1', '165.0', 'paid', 14, 5),
(32, '1', '385.0', 'paid', 11, 6),
(33, '1', '165.0', 'paid', 14, 6),
(34, '1', '165.0', 'paid', 17, 6),
(35, '1', '132.0', 'paid', 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `app3_cont_tb`
--

CREATE TABLE `app3_cont_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app3_cont_tb`
--

INSERT INTO `app3_cont_tb` (`id`, `name`, `subject`, `email`, `message`) VALUES
(1, 'admin', 'faudj', 'admin123@gmail.com', 'ZjsadDK'),
(2, 'Ajay', 'test message', 'ajaymanoj66@gmail.com', 'test form'),
(3, 'navi', 'request', 'navitha18123@gmail.com', 'hello,');

-- --------------------------------------------------------

--
-- Table structure for table `app3_payment_tb`
--

CREATE TABLE `app3_payment_tb` (
  `id` bigint(20) NOT NULL,
  `totalamount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app3_payment_tb`
--

INSERT INTO `app3_payment_tb` (`id`, `totalamount`, `status`, `date`, `time`, `uid_id`) VALUES
(1, '1881.0', 'paid', '2022-11-25', '11:17:05.368913', 1),
(2, '561.0', 'paid', '2022-11-25', '11:33:38.747656', 1),
(3, '22.0', 'paid', '2022-11-25', '11:44:38.136287', 3),
(4, '2194.5', 'paid', '2022-11-28', '09:34:51.651157', 3),
(5, '1540.0', 'paid', '2022-11-29', '11:40:21.295680', 5),
(6, '330.0', 'paid', '2022-11-29', '11:41:11.215093', 5),
(7, '847.0', 'paid', '2022-11-30', '09:30:00.392597', 6);

-- --------------------------------------------------------

--
-- Table structure for table `app3_product_tb`
--

CREATE TABLE `app3_product_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `offprice` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `proimage` varchar(100) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app3_product_tb`
--

INSERT INTO `app3_product_tb` (`id`, `name`, `price`, `offprice`, `details`, `proimage`, `category`) VALUES
(4, 'jam', '25', '20', 'red and fruits mixed jam', 'product/k11.jpg', 'Bakery'),
(5, 'lays', '25', '20', ' potato', 'product/d2_pGCK4jH.jpg', 'Bakery'),
(6, 'basmathi ', '1000', '950', 'its used in biriyani', 'product/si2.jpg', 'kitchen'),
(7, 'sunflower oil', '150', '120', 'pure oil', 'product/mk4.jpg', 'kitchen'),
(8, 'Yippee Noodles', '50', '45', ' chilly Yippee Noodles', 'product/mk7.jpg', 'Bakery'),
(9, 'Wheat Pasta', '100', '95', 'White Wheat Pasta ', 'product/mk8.jpg', 'Bakery'),
(10, 'Red Chilli', '150', '120', ' Organic Red Chilly', 'product/k4.jpg', 'kitchen'),
(11, 'Spotzero Spin Mop', '400', '350', ' super cleaner', 'product/a7.jpg', 'household'),
(12, 'nuts', '120', '110', ' cashews', 'product/m2.jpg', 'Bakery'),
(13, 'Pista', '160', '150', ' Green Pista', 'product/m3.jpg', 'Bakery'),
(14, 'cadberry', '180', '150', 'Choco Cadberry', 'product/d3.jpg', 'Bakery'),
(15, 'cleaner', '250', '230', ' Dust cleaner', 'product/a9.jpg', 'household'),
(16, 'ghee', '150', '200', 'pure ', 'product/mk6.jpg', 'kitchen'),
(17, 'tea powder', '200', '150', ' natural green tea powder', 'product/k3.jpg', 'kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `app3_signup_tb`
--

CREATE TABLE `app3_signup_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hashpassword` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app3_signup_tb`
--

INSERT INTO `app3_signup_tb` (`id`, `name`, `email`, `password`, `hashpassword`) VALUES
(1, 'admin', 'admin123@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(2, 'ajay', 'ajay.manoj@btrac.in', '123', '202cb962ac59075b964b07152d234b70'),
(3, 'anu', 'anu123@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(4, 'ajay', 'ajaymanoj66@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(5, 'navi', 'navi123@gmail.com', '123', '202cb962ac59075b964b07152d234b70'),
(6, 'sandra', 'sandra123@gmail.com', '123', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add contact_tb', 7, 'add_contact_tb'),
(26, 'Can change contact_tb', 7, 'change_contact_tb'),
(27, 'Can delete contact_tb', 7, 'delete_contact_tb'),
(28, 'Can view contact_tb', 7, 'view_contact_tb'),
(29, 'Can add login_tb', 8, 'add_login_tb'),
(30, 'Can change login_tb', 8, 'change_login_tb'),
(31, 'Can delete login_tb', 8, 'delete_login_tb'),
(32, 'Can view login_tb', 8, 'view_login_tb'),
(33, 'Can add signup_tb', 9, 'add_signup_tb'),
(34, 'Can change signup_tb', 9, 'change_signup_tb'),
(35, 'Can delete signup_tb', 9, 'delete_signup_tb'),
(36, 'Can view signup_tb', 9, 'view_signup_tb'),
(37, 'Can add signin_tb', 8, 'add_signin_tb'),
(38, 'Can change signin_tb', 8, 'change_signin_tb'),
(39, 'Can delete signin_tb', 8, 'delete_signin_tb'),
(40, 'Can view signin_tb', 8, 'view_signin_tb'),
(41, 'Can add cont_tb', 10, 'add_cont_tb'),
(42, 'Can change cont_tb', 10, 'change_cont_tb'),
(43, 'Can delete cont_tb', 10, 'delete_cont_tb'),
(44, 'Can view cont_tb', 10, 'view_cont_tb'),
(45, 'Can add product_tb', 11, 'add_product_tb'),
(46, 'Can change product_tb', 11, 'change_product_tb'),
(47, 'Can delete product_tb', 11, 'delete_product_tb'),
(48, 'Can view product_tb', 11, 'view_product_tb'),
(49, 'Can add admin_tb', 12, 'add_admin_tb'),
(50, 'Can change admin_tb', 12, 'change_admin_tb'),
(51, 'Can delete admin_tb', 12, 'delete_admin_tb'),
(52, 'Can view admin_tb', 12, 'view_admin_tb'),
(53, 'Can add cart_tb', 13, 'add_cart_tb'),
(54, 'Can change cart_tb', 13, 'change_cart_tb'),
(55, 'Can delete cart_tb', 13, 'delete_cart_tb'),
(56, 'Can view cart_tb', 13, 'view_cart_tb'),
(57, 'Can add payment_tb', 14, 'add_payment_tb'),
(58, 'Can change payment_tb', 14, 'change_payment_tb'),
(59, 'Can delete payment_tb', 14, 'delete_payment_tb'),
(60, 'Can view payment_tb', 14, 'view_payment_tb'),
(61, 'Can add order_tb', 15, 'add_order_tb'),
(62, 'Can change order_tb', 15, 'change_order_tb'),
(63, 'Can delete order_tb', 15, 'delete_order_tb'),
(64, 'Can view order_tb', 15, 'view_order_tb');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'app3', 'admin_tb'),
(13, 'app3', 'cart_tb'),
(7, 'app3', 'contact_tb'),
(10, 'app3', 'cont_tb'),
(15, 'app3', 'order_tb'),
(14, 'app3', 'payment_tb'),
(11, 'app3', 'product_tb'),
(8, 'app3', 'signin_tb'),
(9, 'app3', 'signup_tb'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-10 05:54:02.655552'),
(2, 'auth', '0001_initial', '2022-11-10 05:54:03.076841'),
(3, 'admin', '0001_initial', '2022-11-10 05:54:03.215884'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-10 05:54:03.227494'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-10 05:54:03.239621'),
(6, 'app3', '0001_initial', '2022-11-10 05:54:03.287490'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-11-10 05:54:03.362327'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-11-10 05:54:03.419526'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-11-10 05:54:03.458570'),
(10, 'auth', '0004_alter_user_username_opts', '2022-11-10 05:54:03.474567'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-11-10 05:54:03.526606'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-11-10 05:54:03.534506'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-10 05:54:03.554779'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-11-10 05:54:03.583654'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-10 05:54:03.614505'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-11-10 05:54:03.646287'),
(17, 'auth', '0011_update_proxy_permissions', '2022-11-10 05:54:03.663389'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-10 05:54:03.694868'),
(19, 'sessions', '0001_initial', '2022-11-10 05:54:03.741170'),
(20, 'app3', '0002_signup_tb_rename_login_tb_signin_tb_and_more', '2022-11-10 18:13:23.507201'),
(21, 'app3', '0003_cont_tb', '2022-11-11 04:17:24.693520'),
(22, 'app3', '0004_product_tb_delete_signin_tb_and_more', '2022-11-16 04:45:06.197285'),
(23, 'app3', '0005_admin_tb', '2022-11-16 04:50:08.132555'),
(24, 'app3', '0006_product_tb_category', '2022-11-21 05:52:31.778808'),
(25, 'app3', '0007_cart_tb', '2022-11-23 04:01:33.024275'),
(26, 'app3', '0008_payment_tb', '2022-11-25 05:31:57.607424'),
(27, 'app3', '0009_alter_payment_tb_uid', '2022-11-25 05:46:56.307436'),
(28, 'app3', '0010_order_tb', '2022-11-28 03:57:46.359860'),
(29, 'app3', '0011_delete_order_tb', '2022-11-29 04:00:45.698448'),
(30, 'app3', '0012_signup_tb_hashpassword', '2022-11-29 04:01:13.417213');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2yplus56rbffywbmoq83j6ws1atq1wlw', 'eyJhaWQiOjIsImFuYW1lIjoiYWRtaW4xMjMifQ:1p4aRX:4bXfNTN6a1UFS3YlbwuWo75gW7YLaRIg__NtvOXVjrw', '2022-12-26 04:29:31.211347'),
('hiy34kpvks4nowlysf87j40zklnacidp', '.eJyrVkrMTFGystBRSsxLzE1VslLKSyzLVNJRyq0EiZuBGFCJ4sS8lKJEpVoAkwcP_A:1p0EFE:GtsQ1DM8S-JRQRVQDeTMRD8ZCccvRaPYwQlZmZJM3-k', '2022-12-14 03:58:48.920876');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app3_admin_tb`
--
ALTER TABLE `app3_admin_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app3_cart_tb`
--
ALTER TABLE `app3_cart_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app3_cart_tb_pid_id_c40ff0b8_fk_app3_product_tb_id` (`pid_id`),
  ADD KEY `app3_cart_tb_uid_id_6ce7566d_fk_app3_signup_tb_id` (`uid_id`);

--
-- Indexes for table `app3_cont_tb`
--
ALTER TABLE `app3_cont_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app3_payment_tb`
--
ALTER TABLE `app3_payment_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app3_payment_tb_uid_id_743f002c_fk_app3_signup_tb_id` (`uid_id`);

--
-- Indexes for table `app3_product_tb`
--
ALTER TABLE `app3_product_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app3_signup_tb`
--
ALTER TABLE `app3_signup_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app3_admin_tb`
--
ALTER TABLE `app3_admin_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app3_cart_tb`
--
ALTER TABLE `app3_cart_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `app3_cont_tb`
--
ALTER TABLE `app3_cont_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app3_payment_tb`
--
ALTER TABLE `app3_payment_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app3_product_tb`
--
ALTER TABLE `app3_product_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `app3_signup_tb`
--
ALTER TABLE `app3_signup_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app3_cart_tb`
--
ALTER TABLE `app3_cart_tb`
  ADD CONSTRAINT `app3_cart_tb_pid_id_c40ff0b8_fk_app3_product_tb_id` FOREIGN KEY (`pid_id`) REFERENCES `app3_product_tb` (`id`),
  ADD CONSTRAINT `app3_cart_tb_uid_id_6ce7566d_fk_app3_signup_tb_id` FOREIGN KEY (`uid_id`) REFERENCES `app3_signup_tb` (`id`);

--
-- Constraints for table `app3_payment_tb`
--
ALTER TABLE `app3_payment_tb`
  ADD CONSTRAINT `app3_payment_tb_uid_id_743f002c_fk_app3_signup_tb_id` FOREIGN KEY (`uid_id`) REFERENCES `app3_signup_tb` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
