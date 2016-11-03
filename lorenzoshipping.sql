-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2016 at 07:42 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lorenzoshipping`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `created_at`, `updated_at`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `method_type`, `parameters`, `responses`) VALUES
(1, NULL, NULL, 'shippings', 'shippings', 'list', NULL, NULL, NULL, '', 'Shippings', '', NULL, 'get', 'a:3:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:9:"from_port";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:7:"to_port";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:9:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:9:"from_port";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:7:"to_port";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:12:"transit_time";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:5:"notes";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:17:"shipping_services";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:16:"shipping_cargoes";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:16:"shipping_vessels";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(2, NULL, NULL, 'schedules', 'shippings_schedules', 'list', NULL, NULL, NULL, '', 'Schedules', '', NULL, 'get', 'a:1:{i:0;a:5:{s:4:"name";s:12:"id_shippings";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:14:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:7:"etd_day";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:8:"etd_time";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:7:"eta_day";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:8:"eta_time";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:7:"remarks";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:12:"id_shippings";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:19:"shippings_from_port";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:17:"shippings_to_port";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:22:"shippings_transit_time";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:15:"shippings_notes";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:27:"shippings_shipping_services";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:26:"shippings_shipping_cargoes";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:13;a:4:{s:4:"name";s:26:"shippings_shipping_vessels";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(3, NULL, NULL, 'locations', 'shipping_locations', 'list', NULL, NULL, NULL, '', 'Locations', '', NULL, 'get', 'a:0:{}', 'a:3:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:8:"location";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}'),
(4, NULL, NULL, 'location', 'shipping_locations', 'detail', NULL, NULL, NULL, '', 'Location', '', NULL, 'get', 'a:1:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:7:"integer";s:6:"config";s:0:"";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:3:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:8:"location";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_companies`
--

CREATE TABLE `cms_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_companies`
--

INSERT INTO `cms_companies` (`id`, `created_at`, `updated_at`, `name`, `address`, `phone`, `email`, `photo`, `description`, `latitude`, `longitude`, `is_primary`) VALUES
(1, '2016-10-18 01:36:44', '2016-10-18 19:22:27', 'Marvill Web Development Services', 'Lorem ipsum Commodo consequat anim et proident cillum.', '09362557890', 'jhommark@marvill.com', NULL, 'Lorem ipsum Labore eu consectetur cupidatat sint.', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_dashboard`
--

INSERT INTO `cms_dashboard` (`id`, `created_at`, `updated_at`, `name`, `id_cms_privileges`, `content`) VALUES
(1, '2016-10-18 01:36:44', NULL, 'Total Users', 1, 'a:9:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"3";s:5:"label";s:11:"Total Users";s:4:"icon";s:18:"ion-person-stalker";s:5:"color";s:3:"red";s:10:"table_name";s:9:"cms_users";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(2, '2016-10-18 01:36:44', NULL, 'Total Companies', 1, 'a:8:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"4";s:5:"label";s:13:"Total Company";s:5:"color";s:6:"yellow";s:10:"table_name";s:13:"cms_companies";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(3, '2016-10-18 01:36:44', NULL, 'Total Articles', 1, 'a:9:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"5";s:5:"label";s:14:"Total Articles";s:4:"icon";s:23:"ion-arrow-graph-up-left";s:5:"color";s:4:"aqua";s:10:"table_name";s:9:"cms_posts";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(4, '2016-10-18 01:36:44', NULL, 'Total Pages', 1, 'a:9:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"6";s:5:"label";s:11:"Total Pages";s:4:"icon";s:23:"ion-arrow-graph-up-left";s:5:"color";s:5:"green";s:10:"table_name";s:9:"cms_pages";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(5, '2016-10-18 01:36:44', NULL, 'Articles By Date', 1, 'a:10:{s:4:"type";s:10:"chart_line";s:2:"id";s:2:"11";s:5:"label";s:16:"Articles By Date";s:5:"color";s:6:"yellow";s:5:"width";s:4:"half";s:10:"table_name";s:9:"cms_posts";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";s:12:"sql_group_by";s:27:"DATE(created_at) as tanggal";}'),
(6, '2016-10-18 01:36:44', NULL, 'Articles Bar', 1, 'a:10:{s:4:"type";s:9:"chart_bar";s:2:"id";s:2:"14";s:5:"label";s:12:"Articles Bar";s:5:"color";s:5:"green";s:5:"width";s:4:"half";s:10:"table_name";s:9:"cms_posts";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";s:12:"sql_group_by";s:27:"date(created_at) as tanggal";}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(1, '2016-10-20 01:06:56', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(2, '2016-10-20 01:07:20', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(3, '2016-10-20 01:07:25', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(4, '2016-10-20 01:07:29', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(5, '2016-10-20 01:07:33', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(6, '2016-10-20 01:07:37', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(7, '2016-10-20 01:07:41', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(8, '2016-10-20 01:07:45', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(9, '2016-10-20 01:07:51', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shipping_locations/add-save', 'Add new data  at Locations', 1),
(10, '2016-10-20 01:54:46', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost:8000/admin/shippings/add-save', 'Add new data  at Shippings', 1),
(11, '2016-10-20 05:48:17', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(12, '2016-10-20 07:49:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(13, '2016-10-20 07:55:02', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_vessels/add-save', 'Add new data MORETA CARGO -1 at Vessels', 1),
(14, '2016-10-20 07:55:19', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_vessels/add-save', 'Add new data MORETA CARGO -2 (MC2) at Vessels', 1),
(15, '2016-10-20 07:55:39', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_vessels/add-save', 'Add new data MORETA CARGO -3 (MC3) at Vessels', 1),
(16, '2016-10-20 07:56:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_vessels/add-save', 'Add new data MORETA CARGO -5 (MC5) at Vessels', 1),
(17, '2016-10-20 07:56:49', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_vessels/add-save', 'Add new data MORETA VENTURE (MV) at Vessels', 1),
(18, '2016-10-20 07:56:54', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_vessels/add-save', 'Add new data MC ENDEAVOR (MCE) at Vessels', 1),
(19, '2016-10-20 07:57:30', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(20, '2016-10-20 07:59:53', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_cargoes/edit-save/1', 'Update data FCL - (10'' or 20'' vans) at Cargoes', 1),
(21, '2016-10-20 08:00:09', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(22, '2016-10-20 08:06:00', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(23, '2016-10-20 08:07:12', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(24, '2016-10-20 08:07:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shipping_cargoes/edit-save/1', 'Update data FCL - (10 or 20 vans) at Cargoes', 1),
(25, '2016-10-20 08:07:55', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(26, '2016-10-25 05:08:18', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings_schedules/add-save', 'Add new data  at Schedules', 1),
(27, '2016-10-25 06:44:21', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings_schedules/add-save', 'Add new data  at Schedules', 1),
(28, '2016-10-25 06:47:19', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings_schedules/edit-save/2', 'Update data  at Schedules', 1),
(29, '2016-10-25 06:47:28', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings_schedules/edit-save/1', 'Update data  at Schedules', 1),
(30, '2016-10-25 06:47:50', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'http://localhost/lorenzoshipping/public/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(31, '2016-11-02 22:08:58', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'http://localhost:8000/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(32, '2016-11-02 22:09:06', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'http://localhost:8000/admin/shippings/edit-save/1', 'Update data  at Shippings', 1),
(33, '2016-11-02 22:09:22', NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'http://localhost:8000/admin/shippings/edit-save/1', 'Update data  at Shippings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_menus_groups` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_pages` int(11) DEFAULT NULL,
  `id_cms_posts` int(11) DEFAULT NULL,
  `id_cms_posts_categories` int(11) DEFAULT NULL,
  `parent_id_cms_menus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_groups`
--

CREATE TABLE `cms_menus_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `limit_data` int(11) DEFAULT NULL,
  `id_cms_moduls_group` int(11) DEFAULT NULL,
  `is_softdelete` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `sql_where`, `sql_orderby`, `sorting`, `limit_data`, `id_cms_moduls_group`, `is_softdelete`, `is_active`) VALUES
(1, '2016-10-18 01:36:44', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '', '', 1, NULL, 4, 0, 1),
(2, '2016-10-18 01:36:44', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '', '', 6, NULL, 3, 0, 1),
(3, '2016-10-18 01:36:44', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '', '', 9, 0, 4, 0, 1),
(4, '2016-10-18 01:36:44', NULL, 'Modules', 'fa fa-cog', 'cms_moduls', 'cms_moduls', 'ModulsController', '', '', 8, 0, 4, 0, 1),
(5, '2016-10-18 01:36:44', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'UsersController', '', '', 1, NULL, 3, 0, 1),
(6, '2016-10-18 01:36:44', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '', '', 2, NULL, 4, 0, 1),
(7, '2016-10-18 01:36:44', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls_group', 'ModulsGroupController', '', '', 3, NULL, 4, 0, 1),
(8, '2016-10-18 01:36:44', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '', '', 4, NULL, 4, 0, 1),
(9, '2016-10-18 01:36:44', NULL, 'Companies', 'fa fa-bank', 'companies', 'cms_companies', 'CompaniesController', '', '', 1, NULL, 1, 0, 1),
(10, '2016-10-18 01:36:44', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '', '', 5, NULL, 4, 0, 1),
(11, '2016-10-18 01:36:44', NULL, 'Menu Group', 'fa fa-flag-o', 'cms_menus_groups', 'cms_menus_groups', 'MenusGroupsController', '', '', 6, NULL, 4, 0, 1),
(12, '2016-10-18 01:36:44', NULL, 'Menu', 'fa fa-bars', 'cms_menus', 'cms_menus', 'MenusController', '', '', 7, NULL, 4, 0, 1),
(13, '2016-10-18 01:36:44', NULL, 'Articles', 'fa fa-bars', 'cms_posts', 'cms_posts', 'PostsController', '', '', 3, 0, 1, 0, 0),
(14, '2016-10-18 01:36:44', NULL, 'Categories', 'fa fa-bars', 'cms_posts_categories', 'cms_posts_categories', 'PostsCategoriesController', '', '', 2, 0, 1, 0, 0),
(23, NULL, NULL, 'Cargoes', 'fa fa-bars', 'shipping_cargoes', 'shipping_cargoes', 'AdminShippingCargoesController', '', '', 4, 0, 7, 0, 1),
(24, NULL, NULL, 'Services', 'fa fa-bars', 'shipping_services', 'shipping_services', 'AdminShippingServicesController', '', '', 3, 0, 7, 0, 1),
(25, NULL, NULL, 'Locations', 'fa fa-bars', 'shipping_locations', 'shipping_locations', 'AdminShippingLocationsController', '', '', 2, 0, 7, 0, 1),
(26, NULL, NULL, 'Vessels', 'fa fa-bars', 'shipping_vessels', 'shipping_vessels', 'AdminShippingVesselsController', '', '', 5, 0, 7, 0, 1),
(27, NULL, NULL, 'Shippings', 'fa fa-truck', 'shippings', 'shippings', 'AdminShippingsController', '', '', 1, 0, 7, 0, 1),
(28, NULL, NULL, 'Schedules', 'fa fa-bars', 'shippings_schedules', 'shippings_schedules', 'AdminShippingsSchedulesController', '', '', 6, 0, 7, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls_group`
--

CREATE TABLE `cms_moduls_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `icon_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls_group`
--

INSERT INTO `cms_moduls_group` (`id`, `created_at`, `updated_at`, `nama_group`, `sorting_group`, `is_group`, `icon_group`) VALUES
(1, '2016-10-18 01:36:44', NULL, 'Public', '1', 0, 'fa fa-bars'),
(3, '2016-10-18 01:36:44', '2016-10-19 05:35:10', 'Users', '3', 1, 'fa fa-users'),
(4, '2016-10-18 01:36:44', '2016-10-18 01:53:12', 'Setting', '4', 1, 'fa fa-cog'),
(7, '2016-10-19 05:34:59', NULL, 'Shipping', '2', 1, 'fa fa-truck');

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_command` text COLLATE utf8_unicode_ci,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `id_cms_posts_categories` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts_categories`
--

CREATE TABLE `cms_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_register` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`, `is_register`) VALUES
(1, '2016-10-18 01:36:44', NULL, 'Super Administrator', 1, 'skin-green', 0),
(2, NULL, NULL, 'Administrator', 0, 'skin-green', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, '2016-10-18 01:36:44', NULL, 1, 0, 0, 0, 0, 1, 1),
(2, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 2),
(3, '2016-10-18 01:36:44', NULL, 0, 1, 1, 1, 1, 1, 3),
(4, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 4),
(5, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 5),
(6, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 6),
(7, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 7),
(8, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 8),
(9, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 9),
(10, '2016-10-18 01:36:44', NULL, 1, 0, 1, 0, 1, 1, 10),
(11, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 11),
(12, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 12),
(13, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 13),
(15, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 14),
(16, '2016-10-18 01:36:44', NULL, 1, 1, 1, 1, 1, 1, 15),
(17, NULL, NULL, 1, 1, 1, 1, 1, 1, 16),
(26, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(27, NULL, NULL, 1, 1, 1, 1, 1, 1, 18),
(28, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(29, NULL, NULL, 1, 1, 1, 1, 1, 1, 20),
(30, NULL, NULL, 1, 1, 1, 1, 1, 1, 21),
(31, NULL, NULL, 1, 1, 1, 1, 1, 1, 22),
(32, NULL, NULL, 1, 1, 1, 1, 1, 1, 23),
(33, NULL, NULL, 1, 1, 1, 1, 1, 1, 24),
(34, NULL, NULL, 1, 1, 1, 1, 1, 1, 25),
(42, NULL, NULL, 1, 1, 1, 1, 1, 1, 26),
(43, NULL, NULL, 1, 1, 1, 1, 1, 1, 26),
(44, NULL, NULL, 1, 1, 1, 1, 1, 1, 27),
(59, NULL, NULL, 1, 0, 0, 0, 0, 2, 9),
(60, NULL, NULL, 1, 0, 0, 0, 0, 2, 10),
(61, NULL, NULL, 1, 0, 0, 0, 0, 2, 1),
(62, NULL, NULL, 1, 0, 0, 0, 0, 2, 2),
(63, NULL, NULL, 1, 0, 0, 0, 0, 2, 3),
(64, NULL, NULL, 1, 0, 0, 0, 0, 2, 6),
(65, NULL, NULL, 1, 0, 0, 0, 0, 2, 5),
(66, NULL, NULL, 1, 1, 1, 1, 1, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `group_setting`, `label`) VALUES
(1, '2016-10-18 01:36:44', NULL, 'logo_background_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Logo Background Color'),
(2, '2016-10-18 01:36:44', NULL, 'logo_font_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Logo Font Color'),
(3, '2016-10-18 01:36:44', NULL, 'logo_background_image', NULL, 'upload_image', NULL, NULL, 'Login Register Style', 'Logo Background Image'),
(4, '2016-10-18 01:36:44', NULL, 'email_sender', 'support@lorenzoshipping.com', 'text', NULL, NULL, 'Email Setting', 'Email Sender'),
(5, '2016-10-18 01:36:44', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, 'Email Setting', 'Mail Driver'),
(6, '2016-10-18 01:36:44', NULL, 'smtp_host', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Host'),
(7, '2016-10-18 01:36:44', NULL, 'smtp_port', '25', 'text', NULL, 'default 25', 'Email Setting', 'SMTP Port'),
(8, '2016-10-18 01:36:44', NULL, 'smtp_username', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Username'),
(9, '2016-10-18 01:36:44', NULL, 'smtp_password', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Password'),
(10, '2016-10-18 01:36:44', NULL, 'appname', 'Lorenzo Shipping', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2016-10-18 01:36:44', NULL, 'app_lockscreen_timeout', '1', 'text', NULL, 'in minutes', 'Application Setting', 'Lockscreen Timeout'),
(12, '2016-10-18 01:36:44', NULL, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(13, '2016-10-18 01:36:44', NULL, 'logo', 'uploads/2016-10/168d921d1d1c6e8cd5aca56be2ecd1ee.png', 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(14, '2016-10-18 01:36:44', NULL, 'favicon', NULL, 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(15, '2016-10-18 01:36:44', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(16, '2016-10-18 01:36:44', NULL, 'google_api_key', '', 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(17, '2016-10-18 01:36:44', NULL, 'google_fcm_key', '', 'text', NULL, NULL, 'Application Setting', 'Google FCM Key'),
(18, '2016-10-18 01:36:44', NULL, 'register_email_confirmation', '', 'wysiwyg', NULL, 'Input message about email confirmation here, use alias [link_confirmation] to include the link.', 'Email Template', 'Registration Email Confirmation'),
(19, '2016-10-18 01:36:44', NULL, 'register_email_welcome', '', 'wysiwyg', NULL, 'You can input message after registration is success. Then the message will be send to registrant. use [name] as user ''s name, use [email] as user''s email', 'Email Template', 'Registration Email Welcome');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_companies` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash_confirmation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `id_cms_companies`, `status`, `hash_confirmation`) VALUES
(1, '2016-10-18 01:36:44', '2016-10-18 19:23:04', 'Jhommark Macasaet', NULL, 'jhommark@marvill.com', '$2y$10$G3K5n9fX1fOMp.ny0M6YGeGEGxLIsQgZ7C0Tcs9dWzbPKbcVzD5b.', 1, 1, 'Active', NULL),
(2, '2016-10-18 01:36:44', '2016-10-18 19:27:44', 'Administrator', NULL, 'administrator@marvill.com', '$2y$10$6sgMtk23dlOXV.JQSIpJTO4N/PXO0lVli4XDRR47CZPs/QPF7OT8q', 2, 1, 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_07_145904_add_table_cms_apicustom', 1),
('2016_08_07_150332_add_table_cms_companies', 1),
('2016_08_07_150834_add_table_cms_dashboard', 1),
('2016_08_07_151210_add_table_cms_logs', 1),
('2016_08_07_151329_add_table_cms_menus', 1),
('2016_08_07_151445_add_table_cms_menus_groups', 1),
('2016_08_07_151533_add_table_cms_pages', 1),
('2016_08_07_151709_add_table_cms_posts', 1),
('2016_08_07_151829_add_table_cms_posts_categories', 1),
('2016_08_07_152014_add_table_cms_privileges', 1),
('2016_08_07_152214_add_table_cms_privileges_roles', 1),
('2016_08_07_152320_add_table_cms_settings', 1),
('2016_08_07_152421_add_table_cms_users', 1),
('2016_08_07_154624_add_table_cms_moduls', 1),
('2016_08_07_154802_add_table_cms_moduls_group', 1),
('2016_08_17_173115_add_is_register_to_privileges', 1),
('2016_08_17_225409_add_status_cms_users', 1),
('2016_08_17_230703_add_hash_confirmation_cms_users', 1),
('2016_08_20_125418_add_table_cms_notifications', 1),
('2016_09_04_033706_add_table_cms_email_queues', 1),
('2016_09_16_035347_add_group_setting', 1),
('2016_09_16_045425_add_label_setting', 1),
('2016_09_17_104728_create_nullable_cms_apicustom', 1),
('2016_10_01_141740_add_method_type_apicustom', 1),
('2016_10_01_141846_add_parameters_apicustom', 1),
('2016_10_01_141934_add_responses_apicustom', 1),
('2016_10_01_144826_add_table_apikey', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `from_port` varchar(50) NOT NULL,
  `to_port` varchar(50) NOT NULL,
  `transit_time` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `shipping_services` text NOT NULL,
  `shipping_cargoes` text NOT NULL,
  `shipping_vessels` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `created_at`, `updated_at`, `image`, `from_port`, `to_port`, `transit_time`, `notes`, `shipping_services`, `shipping_cargoes`, `shipping_vessels`) VALUES
(1, '2016-10-20 01:54:46', '2016-11-02 22:09:22', 'uploads/2016-11/e7b6e88944d97463f9831840611573cc.png', '1', '6', '22 hours only', 'Testing', ' Pier to Door;Door to Door;Door to Pier;Pier to Pier', 'FCL - (10 or 20 vans);Fruits and Vegetables;Heavy Equipment;LCL', 'MC ENDEAVOR (MCE);MORETA CARGO -1;MORETA CARGO -2 (MC2)');

-- --------------------------------------------------------

--
-- Table structure for table `shippings_schedules`
--

CREATE TABLE `shippings_schedules` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `etd_day` varchar(50) NOT NULL,
  `etd_time` time NOT NULL,
  `eta_day` varchar(50) NOT NULL,
  `eta_time` time NOT NULL,
  `remarks` text NOT NULL,
  `id_shippings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings_schedules`
--

INSERT INTO `shippings_schedules` (`id`, `created_at`, `updated_at`, `etd_day`, `etd_time`, `eta_day`, `eta_time`, `remarks`, `id_shippings`) VALUES
(1, '2016-10-25 05:08:18', '2016-10-25 06:47:28', 'Monday', '21:00:45', 'Tuesday', '21:00:45', 'Testing 1', 1),
(2, '2016-10-25 06:44:21', '2016-10-25 06:47:19', 'Wednesday', '22:30:00', 'Thursday', '22:30:00', 'Testing 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_cargoes`
--

CREATE TABLE `shipping_cargoes` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_cargoes`
--

INSERT INTO `shipping_cargoes` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, '2016-10-19 05:54:25', '2016-10-20 08:07:41', 'FCL - (10 or 20 vans)', ''),
(2, '2016-10-19 05:54:38', NULL, 'LCL', ''),
(3, '2016-10-19 05:54:49', NULL, 'Rolling Cargo', ''),
(4, '2016-10-19 05:54:57', NULL, 'Steel Products', ''),
(5, '2016-10-19 05:55:04', NULL, 'Refrigerated Vans', ''),
(6, '2016-10-19 05:55:13', NULL, 'Heavy Equipment', ''),
(7, '2016-10-19 05:55:23', NULL, 'Fruits and Vegetables', ''),
(8, '2016-10-19 05:55:26', NULL, 'Reefer Vans', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_locations`
--

CREATE TABLE `shipping_locations` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_locations`
--

INSERT INTO `shipping_locations` (`id`, `created_at`, `updated_at`, `location`, `description`) VALUES
(1, '2016-10-20 01:06:56', NULL, 'Manila', ''),
(2, '2016-10-20 01:07:20', NULL, 'Roxas City, Capiz', ''),
(3, '2016-10-20 01:07:25', NULL, 'Puerto Princesa, Palawan', ''),
(4, '2016-10-20 01:07:29', NULL, 'Dumaguit, Aklan', ''),
(5, '2016-10-20 01:07:33', NULL, 'Kalibo, Aklan', ''),
(6, '2016-10-20 01:07:37', NULL, 'Caticlan (Boracay), Aklan', ''),
(7, '2016-10-20 01:07:41', NULL, 'Iloilo', ''),
(8, '2016-10-20 01:07:45', NULL, 'Bacolod', ''),
(9, '2016-10-20 01:07:51', NULL, 'Cagayan De Oro', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, '2016-10-19 05:39:29', NULL, 'Pier to Pier', ''),
(2, '2016-10-19 05:40:03', NULL, ' Pier to Door', ''),
(3, '2016-10-19 05:40:18', NULL, 'Door to Pier', ''),
(4, '2016-10-19 05:40:23', NULL, 'Door to Door', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_vessels`
--

CREATE TABLE `shipping_vessels` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_vessels`
--

INSERT INTO `shipping_vessels` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, '2016-10-20 07:55:02', NULL, 'MORETA CARGO -1', ''),
(2, '2016-10-20 07:55:19', NULL, 'MORETA CARGO -2 (MC2)', ''),
(3, '2016-10-20 07:55:39', NULL, 'MORETA CARGO -3 (MC3)', ''),
(4, '2016-10-20 07:56:43', NULL, 'MORETA CARGO -5 (MC5)', ''),
(5, '2016-10-20 07:56:49', NULL, 'MORETA VENTURE (MV)', ''),
(6, '2016-10-20 07:56:54', NULL, 'MC ENDEAVOR (MCE)', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_companies`
--
ALTER TABLE `cms_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_groups`
--
ALTER TABLE `cms_menus_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls_group`
--
ALTER TABLE `cms_moduls_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts_categories`
--
ALTER TABLE `cms_posts_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings_schedules`
--
ALTER TABLE `shippings_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_cargoes`
--
ALTER TABLE `shipping_cargoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_locations`
--
ALTER TABLE `shipping_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_vessels`
--
ALTER TABLE `shipping_vessels`
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
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_companies`
--
ALTER TABLE `cms_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_menus_groups`
--
ALTER TABLE `cms_menus_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `cms_moduls_group`
--
ALTER TABLE `cms_moduls_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_posts_categories`
--
ALTER TABLE `cms_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shippings_schedules`
--
ALTER TABLE `shippings_schedules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shipping_cargoes`
--
ALTER TABLE `shipping_cargoes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shipping_locations`
--
ALTER TABLE `shipping_locations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shipping_vessels`
--
ALTER TABLE `shipping_vessels`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
