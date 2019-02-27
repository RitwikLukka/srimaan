-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2019 at 08:34 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srimaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adminupload`
--

CREATE TABLE `adminupload` (
  `id` int(255) NOT NULL,
  `reference_id` int(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminupload`
--

INSERT INTO `adminupload` (`id`, `reference_id`, `content`, `link`, `updated_by`, `updated_on`, `active`) VALUES
(2, 10, 'www', 'documents/admin/thank_2019_01_23_17_37.docx', 'admin', '2019-01-23 17:37:59', 1),
(3, 2, 'mmm', 'documents/admin/thank_2019_01_23_17_46.docx', 'admin', '2019-01-23 17:46:20', 1),
(5, 10, 'www', 'documents/admin/thank_2019_01_23_17_46.docx', 'admin', '2019-01-23 17:37:59', 1),
(6, 5, 'test', 'documents/admin/hi_2019_01_24_12_23.docx', 'admin', '2019-01-24 12:23:30', 1),
(7, 10, 'aaa', 'documents/admin/thank_2019_01_24_16_43.docx', 'admin', '2019-01-24 16:43:51', 1),
(8, 36, 'age', 'documents/admin/OLD_AGE_HOME_2019_01_25_16_04.docx', 'admin', '2019-01-25 16:04:32', 1),
(9, 36, 'age', 'documents/admin/OLD_AGE_HOME_2019_01_25_16_07.docx', 'admin', '2019-01-25 16:07:03', 1),
(10, 36, 'age', 'documents/admin/OLD_AGE_HOME_2019_01_25_16_07_87fsBMU.docx', 'admin', '2019-01-25 16:07:27', 1),
(11, 36, 'age', 'documents/admin/OLD_AGE_HOME_2019_01_25_16_07_Xdn5zMs.docx', 'admin', '2019-01-25 16:07:51', 1),
(12, 36, 'age', 'documents/admin/OLD_AGE_HOME_2019_01_25_16_08.docx', 'admin', '2019-01-25 16:08:18', 1),
(13, 36, 'age', 'documents/admin/OLD_AGE_HOME_2019_01_25_16_08_lthsy2H.docx', 'admin', '2019-01-25 16:08:42', 1),
(32, 1, 'ggg', '', 'admin', '2019-02-01 19:43:29', 1),
(33, 1, 'asasas', '', 'admin', '2019-02-01 19:46:35', 1),
(34, 1, 'hooo', 'documents/admin/123_2019_02_01_19_51.docx', 'admin', '2019-02-01 19:51:08', 1),
(35, 1, 'ayayooo', 'documents/admin/123_2019_02_02_18_56.docx', 'admin', '2019-02-02 18:56:46', 1),
(36, 2, 'kanuuu', 'documents/admin/123_2019_02_07_12_01.txt', 'admin', '2019-02-07 12:01:45', 1),
(37, 11, 'aaa', 'documents/admin/thank_2019_02_07_13_46.docx', 'admin', '2019-02-07 13:46:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `updated_by` varchar(200) NOT NULL,
  `updated_on` date NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `Title`, `name`, `content`, `image`, `link`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Annadhanam', 'TEST1', 'documents/gurukulam/annadhanam_free_food_2019_01_02_16_19.docx', 'images/hastam_5trvCd4.png', 'Test1', 'Admin', '2019-01-24', 1),
(2, 'Annadhanamm', 'TEST2', 'documents/gurukulam/annadhanam_free_food_2019_01_02_16_19.docx', 'images/hastam_5trvCd4.png', 'Test2', 'Admin', '2019-01-20', 1),
(4, 'test', '', 'documents/admin/test_2019_02_18_12_24.docx', '', '', 'admin', '2019-02-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `archive_img`
--

CREATE TABLE `archive_img` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_on` date NOT NULL,
  `Active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archive_img`
--

INSERT INTO `archive_img` (`id`, `name`, `img`, `updated_by`, `updated_on`, `Active`) VALUES
(1, 'Annadhanam', 'images/archive/slide1.jpeg', 'Admin', '2019-01-24', 1),
(2, 'Annadhanam', 'images/archive/slide2.jpeg', 'Admin', '2019-01-24', 1),
(3, 'Annadhanam', 'images/archive/slide3.jpeg', 'Admin', '2019-01-24', 1),
(4, 'Annadhanamm', 'images/archive/slide3.jpeg', 'Admin', '2019-01-20', 1),
(5, 'Annadhanamm', 'images/archive/slide1.jpeg', 'Admin', '2019-01-20', 1),
(6, 'Annadhanamm', 'images/archive/slide2.jpeg', 'Admin', '2019-01-20', 1),
(12, 'test', 'images/archive/Screenshot_1_o5zMk9q.png', '<class \'home.models.Admin\'>', '2019-02-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add auth group', 7, 'add_authgroup'),
(20, 'Can change auth group', 7, 'change_authgroup'),
(21, 'Can delete auth group', 7, 'delete_authgroup'),
(22, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(23, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(24, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(25, 'Can add auth permission', 9, 'add_authpermission'),
(26, 'Can change auth permission', 9, 'change_authpermission'),
(27, 'Can delete auth permission', 9, 'delete_authpermission'),
(28, 'Can add auth user', 10, 'add_authuser'),
(29, 'Can change auth user', 10, 'change_authuser'),
(30, 'Can delete auth user', 10, 'delete_authuser'),
(31, 'Can add auth user groups', 11, 'add_authusergroups'),
(32, 'Can change auth user groups', 11, 'change_authusergroups'),
(33, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(34, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(35, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(36, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(37, 'Can add django admin log', 13, 'add_djangoadminlog'),
(38, 'Can change django admin log', 13, 'change_djangoadminlog'),
(39, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
(40, 'Can add django content type', 14, 'add_djangocontenttype'),
(41, 'Can change django content type', 14, 'change_djangocontenttype'),
(42, 'Can delete django content type', 14, 'delete_djangocontenttype'),
(43, 'Can add django migrations', 15, 'add_djangomigrations'),
(44, 'Can change django migrations', 15, 'change_djangomigrations'),
(45, 'Can delete django migrations', 15, 'delete_djangomigrations'),
(46, 'Can add django session', 16, 'add_djangosession'),
(47, 'Can change django session', 16, 'change_djangosession'),
(48, 'Can delete django session', 16, 'delete_djangosession'),
(49, 'Can add home r1 c1', 17, 'add_homer1c1'),
(50, 'Can change home r1 c1', 17, 'change_homer1c1'),
(51, 'Can delete home r1 c1', 17, 'delete_homer1c1'),
(52, 'Can add home r1 c2', 18, 'add_homer1c2'),
(53, 'Can change home r1 c2', 18, 'change_homer1c2'),
(54, 'Can delete home r1 c2', 18, 'delete_homer1c2'),
(55, 'Can add home r1 c3a', 19, 'add_homer1c3a'),
(56, 'Can change home r1 c3a', 19, 'change_homer1c3a'),
(57, 'Can delete home r1 c3a', 19, 'delete_homer1c3a'),
(58, 'Can add home r1 c3b', 20, 'add_homer1c3b'),
(59, 'Can change home r1 c3b', 20, 'change_homer1c3b'),
(60, 'Can delete home r1 c3b', 20, 'delete_homer1c3b'),
(61, 'Can add auth group', 21, 'add_authgroup'),
(62, 'Can change auth group', 21, 'change_authgroup'),
(63, 'Can delete auth group', 21, 'delete_authgroup'),
(64, 'Can add auth group permissions', 22, 'add_authgrouppermissions'),
(65, 'Can change auth group permissions', 22, 'change_authgrouppermissions'),
(66, 'Can delete auth group permissions', 22, 'delete_authgrouppermissions'),
(67, 'Can add auth permission', 23, 'add_authpermission'),
(68, 'Can change auth permission', 23, 'change_authpermission'),
(69, 'Can delete auth permission', 23, 'delete_authpermission'),
(70, 'Can add auth user', 24, 'add_authuser'),
(71, 'Can change auth user', 24, 'change_authuser'),
(72, 'Can delete auth user', 24, 'delete_authuser'),
(73, 'Can add auth user groups', 25, 'add_authusergroups'),
(74, 'Can change auth user groups', 25, 'change_authusergroups'),
(75, 'Can delete auth user groups', 25, 'delete_authusergroups'),
(76, 'Can add auth user user permissions', 26, 'add_authuseruserpermissions'),
(77, 'Can change auth user user permissions', 26, 'change_authuseruserpermissions'),
(78, 'Can delete auth user user permissions', 26, 'delete_authuseruserpermissions'),
(79, 'Can add django admin log', 27, 'add_djangoadminlog'),
(80, 'Can change django admin log', 27, 'change_djangoadminlog'),
(81, 'Can delete django admin log', 27, 'delete_djangoadminlog'),
(82, 'Can add django content type', 28, 'add_djangocontenttype'),
(83, 'Can change django content type', 28, 'change_djangocontenttype'),
(84, 'Can delete django content type', 28, 'delete_djangocontenttype'),
(85, 'Can add django migrations', 29, 'add_djangomigrations'),
(86, 'Can change django migrations', 29, 'change_djangomigrations'),
(87, 'Can delete django migrations', 29, 'delete_djangomigrations'),
(88, 'Can add django session', 30, 'add_djangosession'),
(89, 'Can change django session', 30, 'change_djangosession'),
(90, 'Can delete django session', 30, 'delete_djangosession'),
(91, 'Can add home r1 c1', 31, 'add_homer1c1'),
(92, 'Can change home r1 c1', 31, 'change_homer1c1'),
(93, 'Can delete home r1 c1', 31, 'delete_homer1c1'),
(94, 'Can add home r1 c2', 32, 'add_homer1c2'),
(95, 'Can change home r1 c2', 32, 'change_homer1c2'),
(96, 'Can delete home r1 c2', 32, 'delete_homer1c2'),
(97, 'Can add home r1 c3a', 33, 'add_homer1c3a'),
(98, 'Can change home r1 c3a', 33, 'change_homer1c3a'),
(99, 'Can delete home r1 c3a', 33, 'delete_homer1c3a'),
(100, 'Can add home r1 c3b', 34, 'add_homer1c3b'),
(101, 'Can change home r1 c3b', 34, 'change_homer1c3b'),
(102, 'Can delete home r1 c3b', 34, 'delete_homer1c3b'),
(103, 'Can add home r2', 35, 'add_homer2'),
(104, 'Can change home r2', 35, 'change_homer2'),
(105, 'Can delete home r2', 35, 'delete_homer2'),
(106, 'Can add home r3', 36, 'add_homer3'),
(107, 'Can change home r3', 36, 'change_homer3'),
(108, 'Can delete home r3', 36, 'delete_homer3'),
(109, 'Can add home r4', 37, 'add_homer4'),
(110, 'Can change home r4', 37, 'change_homer4'),
(111, 'Can delete home r4', 37, 'delete_homer4'),
(112, 'Can add home r6', 39, 'add_homer6'),
(113, 'Can change home r6', 39, 'change_homer6'),
(114, 'Can delete home r6', 39, 'delete_homer6'),
(115, 'Can add gurukulam', 38, 'add_gurukulam'),
(116, 'Can change gurukulam', 38, 'change_gurukulam'),
(117, 'Can delete gurukulam', 38, 'delete_gurukulam'),
(118, 'Can add kainkariyam', 40, 'add_kainkariyam'),
(119, 'Can change kainkariyam', 40, 'change_kainkariyam'),
(120, 'Can delete kainkariyam', 40, 'delete_kainkariyam'),
(121, 'Can add library', 41, 'add_library'),
(122, 'Can change library', 41, 'change_library'),
(123, 'Can delete library', 41, 'delete_library'),
(124, 'Can add home r2', 43, 'add_homer2'),
(125, 'Can change home r2', 43, 'change_homer2'),
(126, 'Can delete home r2', 43, 'delete_homer2'),
(127, 'Can add home r3', 44, 'add_homer3'),
(128, 'Can change home r3', 44, 'change_homer3'),
(129, 'Can delete home r3', 44, 'delete_homer3'),
(130, 'Can add home r4', 45, 'add_homer4'),
(131, 'Can change home r4', 45, 'change_homer4'),
(132, 'Can delete home r4', 45, 'delete_homer4'),
(133, 'Can add home r6', 46, 'add_homer6'),
(134, 'Can change home r6', 46, 'change_homer6'),
(135, 'Can delete home r6', 46, 'delete_homer6'),
(136, 'Can add gurukulam', 42, 'add_gurukulam'),
(137, 'Can change gurukulam', 42, 'change_gurukulam'),
(138, 'Can delete gurukulam', 42, 'delete_gurukulam'),
(139, 'Can add kainkariyam', 47, 'add_kainkariyam'),
(140, 'Can change kainkariyam', 47, 'change_kainkariyam'),
(141, 'Can delete kainkariyam', 47, 'delete_kainkariyam'),
(142, 'Can add library', 48, 'add_library'),
(143, 'Can change library', 48, 'change_library'),
(144, 'Can delete library', 48, 'delete_library'),
(145, 'Can add PayPal IPN', 49, 'add_paypalipn'),
(146, 'Can change PayPal IPN', 49, 'change_paypalipn'),
(147, 'Can delete PayPal IPN', 49, 'delete_paypalipn'),
(148, 'Can add mapping table', 50, 'add_mappingtable'),
(149, 'Can change mapping table', 50, 'change_mappingtable'),
(150, 'Can delete mapping table', 50, 'delete_mappingtable'),
(151, 'Can add paypal ipn', 51, 'add_paypalipn'),
(152, 'Can change paypal ipn', 51, 'change_paypalipn'),
(153, 'Can delete paypal ipn', 51, 'delete_paypalipn'),
(154, 'Can add question', 52, 'add_question'),
(155, 'Can change question', 52, 'change_question'),
(156, 'Can delete question', 52, 'delete_question'),
(157, 'Can add feedback', 53, 'add_feedback'),
(158, 'Can change feedback', 53, 'change_feedback'),
(159, 'Can delete feedback', 53, 'delete_feedback'),
(160, 'Can add admin', 54, 'add_admin'),
(161, 'Can change admin', 54, 'change_admin'),
(162, 'Can delete admin', 54, 'delete_admin'),
(163, 'Can add reference', 55, 'add_reference'),
(164, 'Can change reference', 55, 'change_reference'),
(165, 'Can delete reference', 55, 'delete_reference'),
(166, 'Can add adminupload', 56, 'add_adminupload'),
(167, 'Can change adminupload', 56, 'change_adminupload'),
(168, 'Can delete adminupload', 56, 'delete_adminupload'),
(169, 'Can add test', 57, 'add_test'),
(170, 'Can change test', 57, 'change_test'),
(171, 'Can delete test', 57, 'delete_test'),
(172, 'Can add tt', 58, 'add_tt'),
(173, 'Can change tt', 58, 'change_tt'),
(174, 'Can delete tt', 58, 'delete_tt'),
(175, 'Can add demo', 59, 'add_demo'),
(176, 'Can change demo', 59, 'change_demo'),
(177, 'Can delete demo', 59, 'delete_demo'),
(178, 'Can add donar', 60, 'add_donar'),
(179, 'Can change donar', 60, 'change_donar'),
(180, 'Can delete donar', 60, 'delete_donar');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$DQypw7jmJiib$D1hjIJQ33yOkxCg7EjSf9DjhKtJsip40G0sgk021QvI=', '2018-12-12 19:51:35.635000', 1, 'vicky', '', '', '', 1, 1, '2018-12-12 19:49:32.619000'),
(2, 'pbkdf2_sha256$24000$F2jf8IdGXH8O$oBrAU1VS4cdzuBvZJPC2klihKzGSGg5UUDFhaYMTZFM=', '2018-12-17 06:28:35.000000', 1, 'kavya', '', '', '', 1, 1, '2018-12-13 10:37:54.000000'),
(3, 'pbkdf2_sha256$24000$qmsPqs87Tsvd$9K8YH5X9I1qyBAW/UjpYd92/lXkI/S1YrTzxGqStyDk=', '2019-01-02 07:11:33.000000', 1, 'kavyasatish', '', '', '', 1, 1, '2019-01-02 07:10:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `email_address` varchar(200) NOT NULL,
  `education_qualification` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `residential_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `firstname`, `lastname`, `gender`, `email_address`, `education_qualification`, `course`, `contact_number`, `residential_address`) VALUES
(1, 'gayathri', 'V', 'female', 'g@gmail.com', 'BE', '2', 1234567890, 'aa'),
(2, 'ajith', 'ka', 'male', 'ka@gmail.com', 'BE', '1', 2147483647, 'bbb'),
(3, 'ajith', 'ka', 'male', 'ka@gmail.com', 'BE', '1', 2147483647, 'bbb');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-12-17 07:20:08.000000', '1', 'HomeR1C1 object', 1, 'Added.', 31, 2),
(2, '2018-12-17 12:46:13.000000', '2', 'HomeR1C1 object', 1, 'Added.', 31, 2),
(3, '2018-12-17 14:08:05.000000', '3', 'HomeR1C1 object', 1, 'Added.', 31, 2),
(4, '2018-12-17 14:22:18.000000', '4', 'HomeR1C1 object', 1, 'Added.', 31, 2),
(5, '2018-12-24 09:10:39.000000', '5', 'HomeR1C1 object', 1, 'Added.', 17, 2),
(6, '2018-12-24 09:22:21.000000', '1', 'HomeR1C2 object', 1, 'Added.', 18, 2),
(7, '2018-12-24 09:24:09.000000', '2', 'HomeR1C2 object', 1, 'Added.', 18, 2),
(8, '2018-12-24 09:36:22.000000', '3', 'HomeR1C2 object', 1, 'Added.', 18, 2),
(9, '2018-12-24 10:38:52.000000', '1', 'HomeR1C3A object', 1, 'Added.', 19, 2),
(10, '2018-12-24 10:38:57.000000', '1', 'HomeR1C3A object', 2, 'No fields changed.', 19, 2),
(11, '2018-12-24 10:39:31.000000', '2', 'HomeR1C3A object', 1, 'Added.', 19, 2),
(12, '2018-12-24 10:40:01.000000', '3', 'HomeR1C3A object', 1, 'Added.', 19, 2),
(13, '2018-12-24 11:22:56.000000', '1', 'HomeR2 object', 1, 'Added.', 35, 2),
(14, '2018-12-24 11:23:26.000000', '2', 'HomeR2 object', 1, 'Added.', 35, 2),
(15, '2018-12-24 11:24:32.000000', '3', 'HomeR2 object', 1, 'Added.', 35, 2),
(16, '2018-12-24 11:25:14.000000', '4', 'HomeR2 object', 1, 'Added.', 35, 2),
(17, '2018-12-24 11:25:43.000000', '5', 'HomeR2 object', 1, 'Added.', 35, 2),
(18, '2018-12-24 11:26:42.000000', '6', 'HomeR2 object', 1, 'Added.', 35, 2),
(19, '2018-12-24 11:57:27.000000', '1', 'HomeR3 object', 1, 'Added.', 36, 2),
(20, '2018-12-24 11:58:15.000000', '2', 'HomeR3 object', 1, 'Added.', 36, 2),
(21, '2018-12-24 11:58:49.000000', '3', 'HomeR3 object', 1, 'Added.', 36, 2),
(22, '2018-12-24 12:12:47.000000', '1', 'HomeR4 object', 1, 'Added.', 37, 2),
(23, '2018-12-24 12:13:31.000000', '2', 'HomeR4 object', 1, 'Added.', 37, 2),
(24, '2018-12-24 12:14:07.000000', '3', 'HomeR4 object', 1, 'Added.', 37, 2),
(25, '2018-12-24 12:14:31.000000', '4', 'HomeR4 object', 1, 'Added.', 37, 2),
(26, '2018-12-24 12:14:58.000000', '5', 'HomeR4 object', 1, 'Added.', 37, 2),
(27, '2018-12-24 12:15:24.000000', '6', 'HomeR4 object', 1, 'Added.', 37, 2),
(28, '2018-12-24 12:16:05.000000', '7', 'HomeR4 object', 1, 'Added.', 37, 2),
(29, '2018-12-24 12:20:18.000000', '8', 'HomeR4 object', 1, 'Added.', 37, 2),
(30, '2018-12-26 07:28:43.000000', '1', 'Gurukulam object', 1, 'Added.', 38, 2),
(31, '2018-12-26 11:13:03.000000', '2', 'Gurukulam object', 1, 'Added.', 38, 2),
(32, '2018-12-26 11:14:33.000000', '2', 'Gurukulam object', 3, '', 38, 2),
(33, '2018-12-26 11:15:30.000000', '1', 'Kainkariyam object', 1, 'Added.', 40, 2),
(34, '2018-12-27 08:17:36.000000', '1', 'Library object', 1, 'Added.', 41, 2),
(35, '2019-01-02 07:15:58.000000', '3', 'Gurukulam object', 1, 'Added.', 42, 3),
(36, '2019-01-02 07:18:59.000000', '4', 'Gurukulam object', 1, 'Added.', 42, 3),
(37, '2019-01-02 07:20:02.000000', '4', 'Gurukulam object', 3, '', 42, 3),
(38, '2019-01-02 07:20:02.000000', '3', 'Gurukulam object', 3, '', 42, 3),
(39, '2019-01-02 07:20:02.000000', '1', 'Gurukulam object', 3, '', 42, 3),
(40, '2019-01-02 07:20:33.000000', '5', 'Gurukulam object', 1, 'Added.', 42, 3),
(41, '2019-01-02 07:23:57.000000', '5', 'Gurukulam object', 3, '', 42, 3),
(42, '2019-01-02 07:24:34.000000', '6', 'Gurukulam object', 1, 'Added.', 42, 3),
(43, '2019-01-02 07:24:35.000000', '7', 'Gurukulam object', 1, 'Added.', 42, 3),
(44, '2019-01-02 07:25:04.000000', '7', 'Gurukulam object', 3, '', 42, 3),
(45, '2019-01-02 07:25:04.000000', '6', 'Gurukulam object', 3, '', 42, 3),
(46, '2019-01-02 07:25:33.000000', '8', 'Gurukulam object', 1, 'Added.', 42, 3),
(47, '2019-01-02 07:35:49.000000', '9', 'Gurukulam object', 1, 'Added.', 42, 3),
(48, '2019-01-02 07:44:16.000000', '10', 'Gurukulam object', 1, 'Added.', 42, 3),
(49, '2019-01-02 07:57:06.000000', '11', 'Gurukulam object', 1, 'Added.', 42, 3),
(50, '2019-01-02 10:26:44.000000', '12', 'Gurukulam object', 1, 'Added.', 42, 3),
(51, '2019-01-02 10:28:01.000000', '13', 'Gurukulam object', 1, 'Added.', 42, 3),
(52, '2019-01-02 10:49:54.000000', '14', 'Gurukulam object', 1, 'Added.', 42, 3),
(53, '2019-01-02 11:04:13.000000', '15', 'Gurukulam object', 1, 'Added.', 42, 3),
(54, '2019-01-02 11:10:44.000000', '15', 'Gurukulam object', 3, '', 42, 3),
(55, '2019-01-02 11:10:44.000000', '14', 'Gurukulam object', 3, '', 42, 3),
(56, '2019-01-02 11:10:44.000000', '13', 'Gurukulam object', 3, '', 42, 3),
(57, '2019-01-02 11:10:44.000000', '12', 'Gurukulam object', 3, '', 42, 3),
(58, '2019-01-02 11:10:45.000000', '11', 'Gurukulam object', 3, '', 42, 3),
(59, '2019-01-02 11:10:45.000000', '10', 'Gurukulam object', 3, '', 42, 3),
(60, '2019-01-02 11:10:45.000000', '9', 'Gurukulam object', 3, '', 42, 3),
(61, '2019-01-02 11:10:45.000000', '8', 'Gurukulam object', 3, '', 42, 3),
(62, '2019-01-02 11:11:35.000000', '16', 'Gurukulam object', 1, 'Added.', 42, 3),
(63, '2019-01-02 11:15:34.000000', '17', 'Gurukulam object', 1, 'Added.', 42, 3),
(64, '2019-01-02 11:17:56.000000', '18', 'Gurukulam object', 1, 'Added.', 42, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(54, 'home', 'admin'),
(56, 'home', 'adminupload'),
(7, 'home', 'authgroup'),
(8, 'home', 'authgrouppermissions'),
(9, 'home', 'authpermission'),
(10, 'home', 'authuser'),
(11, 'home', 'authusergroups'),
(12, 'home', 'authuseruserpermissions'),
(59, 'home', 'demo'),
(13, 'home', 'djangoadminlog'),
(14, 'home', 'djangocontenttype'),
(15, 'home', 'djangomigrations'),
(16, 'home', 'djangosession'),
(60, 'home', 'donar'),
(53, 'home', 'feedback'),
(38, 'home', 'gurukulam'),
(17, 'home', 'homer1c1'),
(18, 'home', 'homer1c2'),
(19, 'home', 'homer1c3a'),
(20, 'home', 'homer1c3b'),
(35, 'home', 'homer2'),
(36, 'home', 'homer3'),
(37, 'home', 'homer4'),
(39, 'home', 'homer6'),
(40, 'home', 'kainkariyam'),
(41, 'home', 'library'),
(50, 'home', 'mappingtable'),
(51, 'home', 'paypalipn'),
(52, 'home', 'question'),
(55, 'home', 'reference'),
(57, 'home', 'test'),
(58, 'home', 'tt'),
(49, 'ipn', 'paypalipn'),
(6, 'sessions', 'session'),
(21, 'testcase', 'authgroup'),
(22, 'testcase', 'authgrouppermissions'),
(23, 'testcase', 'authpermission'),
(24, 'testcase', 'authuser'),
(25, 'testcase', 'authusergroups'),
(26, 'testcase', 'authuseruserpermissions'),
(27, 'testcase', 'djangoadminlog'),
(28, 'testcase', 'djangocontenttype'),
(29, 'testcase', 'djangomigrations'),
(30, 'testcase', 'djangosession'),
(42, 'testcase', 'gurukulam'),
(31, 'testcase', 'homer1c1'),
(32, 'testcase', 'homer1c2'),
(33, 'testcase', 'homer1c3a'),
(34, 'testcase', 'homer1c3b'),
(43, 'testcase', 'homer2'),
(44, 'testcase', 'homer3'),
(45, 'testcase', 'homer4'),
(46, 'testcase', 'homer6'),
(47, 'testcase', 'kainkariyam'),
(48, 'testcase', 'library');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-12-12 14:56:49.530000'),
(2, 'auth', '0001_initial', '2018-12-12 14:56:57.399000'),
(3, 'admin', '0001_initial', '2018-12-12 14:56:59.472000'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-12-12 14:56:59.519000'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-12-12 14:57:00.451000'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-12-12 14:57:01.534000'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-12-12 14:57:02.411000'),
(8, 'auth', '0004_alter_user_username_opts', '2018-12-12 14:57:02.711000'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-12-12 14:57:03.625000'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-12-12 14:57:03.744000'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-12-12 14:57:03.786000'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-12-12 14:57:05.095000'),
(13, 'sessions', '0001_initial', '2018-12-12 14:57:05.767000'),
(14, 'home', '0001_initial', '2018-12-13 11:51:19.000000'),
(15, 'home', '0002_homer1c3b', '2018-12-13 12:06:35.000000'),
(16, 'testcase', '0001_initial', '2018-12-17 06:27:39.000000'),
(17, 'home', '0003_homer2', '2018-12-24 11:53:00.000000'),
(18, 'home', '0004_homer3', '2018-12-24 12:09:56.000000'),
(19, 'home', '0005_homer4', '2018-12-26 07:24:04.000000'),
(20, 'home', '0006_gurukulam_homer6', '2018-12-26 11:09:11.000000'),
(21, 'home', '0007_kainkariyam', '2018-12-27 08:13:42.000000'),
(22, 'home', '0008_auto_20190109_1632', '2019-01-09 11:03:04.000000'),
(23, 'ipn', '0001_initial', '2019-01-09 11:03:05.000000'),
(24, 'ipn', '0002_paypalipn_mp_id', '2019-01-09 11:03:05.000000'),
(25, 'ipn', '0003_auto_20141117_1647', '2019-01-09 11:03:06.000000'),
(26, 'ipn', '0004_auto_20150612_1826', '2019-01-09 11:03:26.000000'),
(27, 'ipn', '0005_auto_20151217_0948', '2019-01-09 11:03:27.000000'),
(28, 'ipn', '0006_auto_20160108_1112', '2019-01-09 11:03:28.000000'),
(29, 'ipn', '0007_auto_20160219_1135', '2019-01-09 11:03:28.000000'),
(30, 'home', '0009_auto_20190109_1911', '2019-01-09 13:41:49.000000'),
(31, 'home', '0010_auto_20190110_1224', '2019-01-10 06:54:49.000000'),
(32, 'home', '0011_admin_feedback_question', '2019-01-10 12:32:54.000000'),
(33, 'home', '0012_adminupload_reference', '2019-01-11 05:42:22.000000'),
(34, 'home', '0013_test', '2019-01-11 06:09:44.000000'),
(35, 'home', '0014_tt', '2019-01-16 12:06:27.000000'),
(36, 'home', '0015_demo', '2019-01-21 05:41:29.000000');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4lnk7kvhe2lxh0yff218gqd994wwo9fb', 'YjgxMzYyM2U2MDAwNDc4NjYyMDcxNGJhZmI3NmNlZGJjODUwMGQxZjp7ImFtb3VudCI6IjgwIiwibmFtZSI6IiJ9', '2019-02-21 11:55:57.000000'),
('5oob2oimmmra3io42td9gcu4o9mqxnki', 'MmIxODFjOTllMDRjZWU2ZjUyODI5ZDUxM2VjMWJhYTJhYTczYmQyZTp7ImFtb3VudCI6IjEwIiwibmFtZSI6IiJ9', '2019-01-27 10:46:48.000000'),
('arf8el5bbgn0exz7ycwxmj721tlbmty5', 'OWU4YTA0ZjE3ZTdhNTY4ZjAwNGZlM2QzZWMxODI4ZDdmYTM3ZTFhMzp7ImFtb3VudCI6IjEwMDAwMDAwMCIsIm5hbWUiOiIifQ==', '2019-02-05 11:16:03.000000'),
('d86mlmzbhpgcdmf5hrma4hbstlpuyiye', 'NzliNzY0ZjllODVhNTRkOGJkZjU4MDJkNDI5YjU2NjQxNjlhOTQ0MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1ODY2ZGRiMWIzNDVjMTZjYzk4Y2Y2Mjk4NmUxMjBkNWM1Njg4MDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2019-01-16 07:11:33.000000'),
('j0z30m8i3ytcyssf2eawd951gn3memoh', 'ZWY3NmI4OWJmNDdhMzg3M2I3NzJhYTE4ZWZhODFjMWViNjkxZjllNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjOWZlMmViOWQ5ZTkxN2VjNzIyMTJiMzI3NzI0NmQyNjM3YzNlOTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-12-26 19:51:35.763000'),
('nl5j4b7ik8b1g1qyhp4uhgqyh4gcaum6', 'MmIxODFjOTllMDRjZWU2ZjUyODI5ZDUxM2VjMWJhYTJhYTczYmQyZTp7ImFtb3VudCI6IjEwIiwibmFtZSI6IiJ9', '2019-02-04 07:12:35.000000'),
('qo7uzk8f7rnin44ju7w7xk9tgn059ev1', 'NGI3NDY1ZmM4N2M4MTliMjIzYTRjZGM0N2VjY2NhMmViYzcwMTJmOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY0NGI1MDljNGZkZTdiYjc3MTkzNjdlZDZhYjE1YWYzNTMxYTRjMjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-12-27 12:07:25.000000'),
('sl54ifcdpjm6dsstx7ih3atigwvyo3ur', 'NGI3NDY1ZmM4N2M4MTliMjIzYTRjZGM0N2VjY2NhMmViYzcwMTJmOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY0NGI1MDljNGZkZTdiYjc3MTkzNjdlZDZhYjE1YWYzNTMxYTRjMjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-12-31 06:28:35.000000');

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

CREATE TABLE `donar` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donar`
--

INSERT INTO `donar` (`id`, `link`) VALUES
(1, 'documents/donar/thank.docx');

-- --------------------------------------------------------

--
-- Table structure for table `eventdetails`
--

CREATE TABLE `eventdetails` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventdetails`
--

INSERT INTO `eventdetails` (`id`, `firstname`, `lastname`, `gender`, `emailid`, `contactno`, `event`) VALUES
(3, 'rajesh', 'kumar', 'Male', 'rajes@gmail.com', '9944462549', 'chumma');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `city`, `feedback`) VALUES
(4, 'gayathri', 'chennai', 'Before the JIMS facility opened we had to travel so far away for quality treatments. It is very expensive and time consuming. We are very happy now because this hospital is very close to our place.We are getting good treatment for all our health problems.'),
(8, 'purusoth', 'chennai', 'gud'),
(9, 'lathu', 'chennai', 'gud'),
(10, 'aa', 'aa', 'aa'),
(11, 'a', 'aa', 'a'),
(12, 'ajithkannan', 'aa', 'wdfsdffgsdg'),
(13, 'ajithkannan', 'aa', 'sdds');

-- --------------------------------------------------------

--
-- Table structure for table `gurukulam`
--

CREATE TABLE `gurukulam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `gurukulam`
--

INSERT INTO `gurukulam` (`id`, `name`, `content`, `image`, `link`, `updated_by`, `updated_on`, `active`) VALUES
(16, 'Test1', 'documents/gurukulam/camps_2019_01_02_16_41.docx', 'images/hastham_5trvCd4.png', 'Test1', 'Admin', '2019-01-02 11:11:25', 1),
(17, 'Test2', 'documents/gurukulam/camps_2019_01_02_16_45.docx', 'images/hastham_zCwLMmo.png', 'Test2', 'Admin', '2019-01-02 11:15:23', 1),
(18, 'Test3', 'documents/gurukulam/camps_2019_01_02_16_47.docx', 'images/hastham_V0VHsGO.png', 'Test3', 'Admin', '2019-01-02 11:17:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_demo`
--

CREATE TABLE `home_demo` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_demo`
--

INSERT INTO `home_demo` (`id`, `reference_id`, `content`, `image`, `link`) VALUES
(1, 0, 'aaa', 'images/121.jfif', 'images/111.jfif'),
(2, 0, 'ii', 'images/Screenshot_2.png', 'documents/ajith.txt'),
(3, 1, 'ss', 'images/Screenshot_1.png', 'documents/aj.txt'),
(4, 1, 'aa', 'images/Screenshot_3.png', 'documents/aj_0FkGQuD.txt'),
(5, 1, 'aaaaaaaaaaaaaaaaaaaaaaaaa', 'images/121_qurOhOx.jfif', 'documents/ajith_32fTeUL.txt'),
(6, 9, 'tt', 'images/Screenshot_3_oB3gQHY.png', 'documents/ak.txt');

-- --------------------------------------------------------

--
-- Table structure for table `home_images`
--

CREATE TABLE `home_images` (
  `id` int(11) NOT NULL,
  `reference_id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_images`
--

INSERT INTO `home_images` (`id`, `reference_id`, `image`, `updated_on`) VALUES
(1, 1, 'images/Screenshot_2_pRtTb7t.png', '0000-00-00 00:00:00'),
(2, 1, 'images/Screenshot_2_H4HLjNz.png', '0000-00-00 00:00:00'),
(3, 1, 'images/Screenshot_2_rL67I7o.png', '0000-00-00 00:00:00'),
(4, 1, 'images/Screenshot_3_nuBaXWW.png', '0000-00-00 00:00:00'),
(5, 1, 'images/Screenshot_2_nFXM59N.png', '2019-02-01 19:06:59'),
(6, 1, 'images/Screenshot_3_HXRyu6x.png', '2019-02-01 19:06:59'),
(7, 1, 'images/Screenshot_2_6bz4Qp8.png', '2019-02-01 19:10:37'),
(8, 1, 'images/Screenshot_2_KKAuZuk.png', '2019-02-01 19:14:17'),
(9, 1, 'images/Screenshot_2_jXXX4Gv.png', '2019-02-01 19:24:19'),
(10, 1, 'images/Screenshot_2_5fDhZw1.png', '2019-02-01 19:43:29'),
(11, 1, 'images/Screenshot_2_PxaDGVk.png', '2019-02-01 19:46:35'),
(12, 1, 'images/Screenshot_2_WPOxbxc.png', '2019-02-01 19:51:08'),
(13, 1, 'images/Screenshot_5.png', '2019-02-02 18:56:46'),
(14, 1, 'images/Screenshot_9.png', '2019-02-02 18:56:46'),
(15, 2, 'images/Screenshot_17.png', '2019-02-07 12:01:45'),
(16, 2, 'images/Screenshot_16.png', '2019-02-07 12:01:45'),
(17, 11, 'images/Screenshot_3_OWF9feF.png', '2019-02-07 13:46:13'),
(18, 11, 'images/Screenshot_1_hCD1hPQ.png', '2019-02-07 13:46:13'),
(19, 11, 'images/Screenshot_5.png', '2019-02-07 13:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `home_library`
--

CREATE TABLE `home_library` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_r1c1`
--

CREATE TABLE `home_r1c1` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_r1c1`
--

INSERT INTO `home_r1c1` (`id`, `name`, `content`, `image`, `path`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'test', 'test', 'images/404.png', 'C:\\users', 'test', '2018-12-17 07:20:03', 1),
(3, 'test2', 'test2', 'images/404.png', 'test2', 'test2', '2018-12-17 14:08:00', 1),
(4, 'test4', 'test4', 'images/404.png', 'test4', 'test4', '2018-12-17 14:22:13', 1),
(5, 'Slide', 'Slide', 'images/3.jpg', 'C:\\Users', 'Admin', '2018-12-24 09:10:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_r1c2`
--

CREATE TABLE `home_r1c2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `event_date` date NOT NULL DEFAULT '0000-00-00',
  `links` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `details` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_r1c2`
--

INSERT INTO `home_r1c2` (`id`, `name`, `content`, `event_date`, `links`, `image`, `updated_by`, `updated_on`, `active`, `details`) VALUES
(1, 'Global Level Sri Ramayana Contest', 'Global Level Sri Ramayana Contest', '2018-12-24', 'Global Level Sri Ramayana Contest', 'images/future_campus.jpg', 'Admin', '2018-12-24 09:22:14', 1, 'documents/gurukulam/annadhanam_free_food_2019_01_02_16_19.docx'),
(2, 'Winter Camp', 'Winter Camp', '2018-12-24', 'Winter Camp', 'images/future_campus_F8P9PQn.jpg', 'Admin', '2018-12-24 09:24:03', 1, 'documents/gurukulam/annadhanam_free_food_2019_01_02_16_19.docx'),
(3, 'Srimaan Info Diary', 'Srimaan Info Diary', '2018-12-24', 'Srimaan Info Diary', 'images/future_campus_vE0hd8D.jpg', 'Admin', '2018-12-24 09:36:16', 1, 'documents/gurukulam/annadhanam_free_food_2019_01_02_16_19.docx');

-- --------------------------------------------------------

--
-- Table structure for table `home_r1c3a`
--

CREATE TABLE `home_r1c3a` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `links` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_r1c3a`
--

INSERT INTO `home_r1c3a` (`id`, `name`, `content`, `links`, `image`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Free Food', 'Free Food', 'page/5', 'images/food1.png', 'Admin', '2018-12-24 10:38:46', 1),
(2, 'We Pray For You', 'We Pray For You', 'page/27', 'images/pray.png', 'Admin', '2018-12-24 10:39:26', 1),
(3, 'Free Stay', 'Free Stay', 'page/37', 'images/stay.png', 'Admin', '2018-12-24 10:39:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_r1c3b`
--

CREATE TABLE `home_r1c3b` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `links` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `home_r2`
--

CREATE TABLE `home_r2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `links` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_r2`
--

INSERT INTO `home_r2` (`id`, `name`, `content`, `image`, `links`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Goshala', 'Goshala', 'images/goshala1.png', 'page/21', 'Admin', '2018-12-24 11:22:51', 1),
(2, 'Gurukulam', 'Gurukulam', 'images/gurukulam1.png', 'gurukulam', 'Admin', '2018-12-24 11:23:22', 1),
(3, 'Kainkariyam', 'Karpikum Kainkariyam', 'images/kainkaryam1.png', 'kainkariyam', 'Admin', '2018-12-24 11:24:28', 1),
(4, 'Sanadhana Dharma', 'Sanadhana Dharma', 'images/sanadhana_dharma1.png', 'Sanadhana Dharma', 'Admin', '2018-12-24 11:25:00', 1),
(5, 'scholarship', 'Scholarship', 'images/scholarship1.png', 'scholarship', 'Admin', '2018-12-24 11:25:38', 1),
(6, 'Library', 'Sri Gynanapiran Library', 'images/library1.png', 'library', 'Admin', '2018-12-24 11:26:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_r3`
--

CREATE TABLE `home_r3` (
  `id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `links` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_r3`
--

INSERT INTO `home_r3` (`id`, `content`, `links`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Divine Dose', 'https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1', 'Admin', '2018-12-24 11:57:17', 1),
(2, 'Volunteer Speaks', 'https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1', 'Admin', '2018-12-24 11:58:10', 1),
(3, 'Women Health Care', 'https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1', 'Admin', '2018-12-24 11:58:44', 1),
(4, 'test', 'aaa', 'Admin', '2019-01-25 12:01:17', 1),
(5, 'Divine Dosee', 'https://www.youtube.com/embed/Z7F1TgEaFag?autoplay=1', 'Admin', '2019-01-25 12:37:07', 1),
(6, 'Divine Dosee', '://www.youtube.com/watch?v=e115OQIeDLA&autoplay=1', 'Admin', '2019-01-25 12:40:49', 1),
(7, 'Sri Krishna Jenmashtami Celebrations', 'https://www.youtube.com/embed/_4JowmLRJxM?autoplay=1', 'Admin', '2019-01-25 12:42:50', 1),
(8, 'test', 'https://www.youtube.com/watch?v=e115OQIeDLA', 'Admin', '2019-02-04 18:01:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_r4`
--

CREATE TABLE `home_r4` (
  `id` int(11) NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_r4`
--

INSERT INTO `home_r4` (`id`, `year`, `image`, `content`, `updated_by`, `updated_on`, `active`) VALUES
(2, '2001', 'images/slide2.jpeg', '0', 'Admin', '2018-12-24 12:13:26', 1),
(3, '2002', 'images/slide3.jpeg', '0', 'Admin', '2018-12-24 12:14:02', 1),
(4, '2003', 'images/slide1.jpg', '0', 'Admin', '2018-12-24 12:14:27', 1),
(5, '2004', 'images/slide1_CApCaaY.jpeg', '0', 'Admin', '2018-12-24 12:14:54', 1),
(6, '2005', 'images/slide2_Drr1Gfk.jpeg', '0', 'Admin', '2018-12-24 12:15:18', 1),
(7, '2006', 'images/slide1_nVz6vP6.jpg', '0', 'Admin', '2018-12-24 12:16:00', 1),
(8, '2007', 'images/slide1_L5qNPkm.jpeg', '0', 'Admin', '2018-12-24 12:20:13', 1),
(9, '2008', 'images/121_tB6Fpqq.jfif', 'test', 'Admin', '2019-01-24 17:17:38', 1),
(10, '2009', 'images/111_GAVkzN3.jfif', 'ajith', 'Admin', '2019-01-24 18:20:25', 1),
(11, '2010', 'images/121_W9velke.jfif', 'test1', 'Admin', '2019-01-25 11:13:33', 1),
(12, '2011', 'images/111_MwY48WG.jfif', 'test', 'Admin', '2019-01-25 11:13:58', 1),
(13, '2012', 'images/121_GaeeRp5.jfif', 'test2', 'Admin', '2019-01-25 11:14:40', 1),
(14, '2013', 'images/121_043wEQY.jfif', 'test', 'Admin', '2019-01-25 11:15:04', 1),
(15, '2014', 'images/111_XetQw9l.jfif', 'test', 'Admin', '2019-01-25 11:15:28', 1),
(16, '2015', 'images/111_zXTLMtL.jfif', 'test', 'Admin', '2019-01-25 11:15:52', 1),
(17, '2016', 'images/111_0N3b3b3.jfif', 'test', 'Admin', '2019-01-25 11:16:15', 1),
(18, '2017', 'images/121_Smvn44Z.jfif', 'test', 'Admin', '2019-01-25 11:16:40', 1),
(19, '2018', 'images/111_5dSdwEn.jfif', 'test', 'Admin', '2019-01-25 11:17:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_r6`
--

CREATE TABLE `home_r6` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `home_tt`
--

CREATE TABLE `home_tt` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `education_qualification` varchar(200) NOT NULL,
  `contactnumber` int(10) NOT NULL,
  `postapplied` varchar(100) NOT NULL,
  `upload` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `firstname`, `lastname`, `gender`, `emailid`, `education_qualification`, `contactnumber`, `postapplied`, `upload`) VALUES
(1, 'gayathri', 'V', '', 'abc@gmail.com', '', 1234567890, 'associate', 0x53637265656e73686f7420283137292e706e67),
(2, 'gayathri', 'V', 'Female', 'ab@gmail.com', 'BE', 1234567890, 'associate', 0x53637265656e73686f7420283133292e706e67),
(3, 'gayathri', 'V', 'Female', 'abc@gmail.com', 'BE', 2147483647, 'associate', 0x53637265656e73686f7420283137292e706e67),
(4, 'ajith', 'ka', 'Male', 'raje@gmail.com', 'BE', 2147483647, 'teacher', 0x6a6f622e73716c);

-- --------------------------------------------------------

--
-- Table structure for table `job1`
--

CREATE TABLE `job1` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `updated_by` varchar(200) NOT NULL,
  `updated_on` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job1`
--

INSERT INTO `job1` (`id`, `title`, `name`, `content`, `image`, `link`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Recruitment', 'test', 'documents\\gurukulam\\annadhanam_free_food_2019_01_02_16_19.docx', 'images\\hastam_5trvCd4.png', 'test', 'admin', '2019-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kainkariyam`
--

CREATE TABLE `kainkariyam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kainkariyam`
--

INSERT INTO `kainkariyam` (`id`, `name`, `content`, `image`, `link`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Kainkariyam', 'documents/KARPIKKUM_KAINKARYAM_lonf0af.docx', 'images/1_41XtQ62.jpg', 'Kainkariyam', 'Admin', '2018-12-26 11:15:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `name`, `content`, `image`, `link`, `updated_by`, `updated_on`, `active`) VALUES
(1, 'Library', 'documents/library.docx', 'images/4th_Balothsav.jpg', 'Library', 'Admin', '2018-12-27 08:17:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_table`
--

CREATE TABLE `mapping_table` (
  `id` int(255) NOT NULL,
  `donation_items` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapping_table`
--

INSERT INTO `mapping_table` (`id`, `donation_items`) VALUES
(1, 'Education'),
(2, 'Goshalai'),
(3, 'Temples'),
(4, 'Food'),
(5, 'Health Care'),
(6, 'Spiritual'),
(7, 'Vashtra Dhanam'),
(8, 'Old Age Home'),
(9, 'Games'),
(10, 'Women Empowerment'),
(11, 'Marriage Help'),
(12, 'Dharma Upanayanam');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime DEFAULT NULL,
  `subscr_date` datetime DEFAULT NULL,
  `subscr_effective` datetime DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `phone` int(20) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `Name`, `EmailId`, `phone`, `question`, `answer`) VALUES
(1, 'ajith', 'ajith@gmail.com', 2147483647, 'Why is only Rama praised as ‘the follower of father’s words?', 'Firstly, it was never said that Rama is the ONLY one who had followed father’s words. But he is one of the first ones who has excelled and stood as an example for the way a son should respect and obey the father. ');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `name`) VALUES
(1, 'Health Camp'),
(2, 'Medical aid'),
(3, 'Yoga Camp'),
(4, 'Annadhanam'),
(5, 'Free food at srirangam'),
(6, 'Provisions for needy'),
(7, 'Organic farming'),
(8, 'Grukulam at srirangam'),
(9, 'Gurukulam at ayodhya'),
(10, 'Senior gurukulam'),
(11, 'Acharyah school for leaders'),
(12, 'Part time school'),
(13, 'Campus'),
(14, 'Library'),
(15, 'Online class'),
(16, 'Teachers and parents workshop'),
(17, 'Life work shop'),
(18, 'Education village children'),
(19, 'Skills development'),
(20, 'Arts and fine arts'),
(21, 'Goshalai'),
(22, 'Cauvery cleaning'),
(23, 'Planting trees'),
(24, 'Awareness programme'),
(25, 'Conservation of indian heritage'),
(26, 'Nithya homams'),
(27, 'We pray for you'),
(28, 'Veedhi pradhakshinams'),
(29, 'Parayanams'),
(30, 'Archanas'),
(31, 'Gramam thorum ramanjuar'),
(32, 'Temple services-temple cleaning parayanams'),
(33, 'games'),
(34, 'Kainkaryam book subscription'),
(35, 'Srimaan info diary'),
(36, 'Old age home'),
(37, 'Free stay at srirangam'),
(38, 'Clothes for needy'),
(39, 'Edu tours'),
(40, 'Exihibitions'),
(41, 'Marriage help'),
(42, 'Dharma upanayanam'),
(43, 'Divine discourses'),
(44, 'Honouring scholars'),
(45, 'Propagation of culture'),
(46, 'Women empowerment'),
(47, 'contests');

-- --------------------------------------------------------

--
-- Table structure for table `subs`
--

CREATE TABLE `subs` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `send_via` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subs`
--

INSERT INTO `subs` (`id`, `name`, `phone`, `email`, `address`, `send_via`) VALUES
(1, 'ajithkannan', 777, 'ajithkannan.c@hcl.com', 'aaa', 'email'),
(2, 'ajkanu', 5756756, 'ajithkannan.c@hcl.com', 'ddsf', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminupload`
--
ALTER TABLE `adminupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archive_img`
--
ALTER TABLE `archive_img`
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
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `donar`
--
ALTER TABLE `donar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventdetails`
--
ALTER TABLE `eventdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gurukulam`
--
ALTER TABLE `gurukulam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_demo`
--
ALTER TABLE `home_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_images`
--
ALTER TABLE `home_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_library`
--
ALTER TABLE `home_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r1c1`
--
ALTER TABLE `home_r1c1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r1c2`
--
ALTER TABLE `home_r1c2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r1c3a`
--
ALTER TABLE `home_r1c3a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r1c3b`
--
ALTER TABLE `home_r1c3b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r2`
--
ALTER TABLE `home_r2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r3`
--
ALTER TABLE `home_r3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r4`
--
ALTER TABLE `home_r4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_r6`
--
ALTER TABLE `home_r6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_tt`
--
ALTER TABLE `home_tt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job1`
--
ALTER TABLE `job1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kainkariyam`
--
ALTER TABLE `kainkariyam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_table`
--
ALTER TABLE `mapping_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_8e113603` (`txn_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subs`
--
ALTER TABLE `subs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminupload`
--
ALTER TABLE `adminupload`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `archive_img`
--
ALTER TABLE `archive_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `donar`
--
ALTER TABLE `donar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eventdetails`
--
ALTER TABLE `eventdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gurukulam`
--
ALTER TABLE `gurukulam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `home_demo`
--
ALTER TABLE `home_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_images`
--
ALTER TABLE `home_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `home_library`
--
ALTER TABLE `home_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_r1c1`
--
ALTER TABLE `home_r1c1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_r1c2`
--
ALTER TABLE `home_r1c2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_r1c3a`
--
ALTER TABLE `home_r1c3a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_r1c3b`
--
ALTER TABLE `home_r1c3b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_r2`
--
ALTER TABLE `home_r2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_r3`
--
ALTER TABLE `home_r3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_r4`
--
ALTER TABLE `home_r4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `home_r6`
--
ALTER TABLE `home_r6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_tt`
--
ALTER TABLE `home_tt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job1`
--
ALTER TABLE `job1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kainkariyam`
--
ALTER TABLE `kainkariyam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mapping_table`
--
ALTER TABLE `mapping_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `subs`
--
ALTER TABLE `subs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
