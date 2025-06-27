-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 15, 2023 at 07:41 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `an_efficient_privacy_enhancing`
--
CREATE DATABASE IF NOT EXISTS `an_efficient_privacy_enhancing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `an_efficient_privacy_enhancing`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('e1m68qnddw0wbqkzo5nj63x7044w33an', 'eyJ1c2VyaWQiOjN9:1n5Sni:9c-D2bvJDtgUeDzXMDhZJm2ntMSNptF6Jl6ZCntJzZE', '2022-01-20 13:27:30.549014'),
('f6l300o2oeahvptvf9thwudf7noway3g', 'eyJ1c2VyaWQiOjF9:1oJ83O:Ge5DEHZOT-in0Pvz7M1Veyn_cZscw2UQxh-LtyKgnus', '2022-08-17 06:40:26.631493'),
('fddqct089bssxifibykwhd67qk6eodur', 'eyJ1c2VyaWQiOjF9:1n5RGp:IJa58xz1WpW5KxUR9xOkTviVOVrcBdyBvb9UZNzoGPw', '2022-01-20 11:49:27.481778'),
('fhq1rpeq9nrepp26jh6sjnnjpovxazjl', 'eyJ1c2VyaWQiOjR9:1qVUlo:_VJMWk8EkCmumyIXyBAyGyI6StBxWM5XI6L3rD62T5U', '2023-08-28 10:25:56.192511'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iqh0n3mtdwrj0wp3q8gxdfa9vxeasdi7', 'eyJ1c2VyaWQiOjN9:1qVULZ:kQ1nCC_pCzsMZ2bkTmlqaChwj-9bQf_80AxUVRkIhiM', '2023-08-28 09:58:49.999437'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('lsmx2vdrr41ik8q38kbm5w8wz4v668uu', 'eyJ1c2VyaWQiOjExfQ:1mcma3:SVYvQKDT3tvqwHCBMXrhokvul4r8K-oSTuBs71xgR9w', '2021-11-02 10:42:51.853151'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('om3ius6jhajkqp90h8b0ydtuze55wg4a', 'eyJ1c2VyaWQiOjJ9:1oJ9PT:8PUfpUb7dHkQTpbDtOn497vlOZKYFypcj94cyYIS6PY', '2022-08-17 08:07:19.807599'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('qorsfjf8ub7601ehr291ro3n4zzw5v3e', 'eyJ1c2VyaWQiOjEwfQ:1mFxUi:mMQom1btf6GfJPfFt2WuX_hLtfJbWwVROmb-AlhxjHw', '2021-08-31 11:43:00.556244'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('secgn9t8n8k3o1fq9duk1l509kgbqnn2', 'eyJ1c2VyaWQiOjJ9:1nc4NS:ypU9HqzRWHT-G2Z-jTsO0_8DXBqZIVW1fYMM8Ne6gqw', '2022-04-20 12:03:10.452573'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('u7s3cxv2x55c2bafzmucm0nhjpv2rn37', 'eyJ1c2VyaWQiOjJ9:1nc4mk:76-lEkRu_HcAnLGm_NQKrkMKzLrkHOXWw_povgVVeBA', '2022-04-20 12:29:18.211442'),
('vfofeqf70uwf4jrhib6xsetde58lny3f', 'eyJ1c2VyaWQiOjIxfQ:1mFyou:QX_iGY3-VB7aToxcER8lL5h0PrRrYCaY5Hf2pQrqePo', '2021-08-31 13:07:56.275870'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('y3trgp86ai2tbgxzor5jr2losijwq8yp', 'eyJ1c2VyaWQiOjIyfQ:1mcpEn:s8YdCEARpQ0iDhskTfcF90afaJlrjhbK0-Rp_CWk-RQ', '2021-11-02 13:33:05.354613'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`, `address`, `gender`) VALUES
(3, 'Rajesh', 'Rajesh123@gmail.com', 'Rajesh', '9535866270', 'India', 'Karnataka', 'Bangalore', '#8928,4th Cross,Rajajinaar', 'Male'),
(4, 'Manjunath', 'tmksmanju19@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore', '#8928,4th Cross,Rajajinagar', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(7, 'Naive Bayes', '96.25'),
(8, 'SVM', '97.625'),
(9, 'Logistic Regression', '98.25'),
(10, 'Decision Tree Classifier', '98.0'),
(11, 'SGD Classifier', '98.125'),
(12, 'Random Forest Classifier', '97.375');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `remote_user_detection_ratio`
--

INSERT INTO `remote_user_detection_ratio` (`id`, `names`, `ratio`) VALUES
(10, 'No False Data Injection Attack Detected', '66.66666666666666'),
(11, 'False Data Injection Attack Detected', '33.33333333333333');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_false_data_injection_attack_detection`
--

CREATE TABLE IF NOT EXISTS `remote_user_false_data_injection_attack_detection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `URLs` varchar(3000) NOT NULL,
  `Headline` varchar(3000) NOT NULL,
  `Body` varchar(30000) NOT NULL,
  `Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `remote_user_false_data_injection_attack_detection`
--

INSERT INTO `remote_user_false_data_injection_attack_detection` (`id`, `URLs`, `Headline`, `Body`, `Prediction`) VALUES
(1, '"http://beforeitsnews.com/sports/2017/10/2017-fantasy-football-running-back-rankings-week-5-2701799.html  "', '2017 Fantasy Football Running Back Rankings - Week 5', '"2017 Fantasy Football Running Back Rankings ƒ?? Week 5\r\n% of readers think this story is Fact. Add your two cents.\r\n(Before It''s News)\r\n.\r\nBye Week: Atlanta, Denver, New Orleans, Washington\r\n.\r\nHere are the 2017 Lesterƒ??s Legends Week 5 running back rankings.\r\n.\r\n1. Leƒ??Veon Bell, Pittsburgh Steelers\r\n2. Ezekiel Elliott, Dallas Cowboys\r\n3. Kareem Hunt, Kansas City Chiefs\r\n4. Carlos Hyde, San Francisco 49ers\r\n5. LeSean McCoy, Buffalo Bills\r\n6. Todd Gurley, Los Angeles Rams\r\n7. Leonard Fournette, Jacksonville Jaguars\r\n8. Jay Ajayi, Miami Dolphins\r\n9. Melvin Gordon, Los Angeles Chargers\r\n10. Bilal Powell, New York Jets\r\n11. DeMarco Murray, Tennessee Titans\r\n12. Lamar Miller, Houston Texans\r\n13. Jordan Howard, Chicago Bears\r\n14. Ameer Abdullah, Detroit Lions\r\n15. Mike Gillislee, New England Patriots\r\n16. Joe Mixon, Cincinnati Bengals\r\n17. Frank Gore, Indianapolis Colts\r\n18. Christian McCaffrey, Carolina Panthers\r\n19. Ty Montgomery, Green Bay Packers\r\n20. Marshawn Lynch, Oakland Raiders\r\n21. LeGarrette Blount, Philadelphia Eagles\r\n22. Doug Martin, Tampa Bay Buccaneers\r\n23. Latavius Murray, Minnesota Vikings\r\n24. Jonathan Stewart, Carolina Panthers\r\n25. Duke Johnson, Cleveland Browns\r\n26. Andre Ellington, Arizona Cardinals\r\n27. Wendell Smallwood, Philadelphia Eagles\r\n28. Isaiah Crowell, Cleveland Browns\r\n29. Tarik Cohen, Chicago Bears\r\n30. Alex Collins, Baltimore Ravens\r\n31. Chris Johnson, Arizona Cardinals\r\n32. James White, New England Patriots\r\n33. Giovani Bernard, Cincinnati Bengals\r\n34. Wayne Gallman, New York Giants\r\n35. Derrick Henry, Tennessee Titans\r\n36. Thomas Rawls, Seattle Seahawks\r\n37. Jerick McKinnon, Minnesota Vikings\r\n38. Theo Riddick, Detroit Lions\r\n39. Aaron Jones, Green Bay Packers\r\n40. C.J. Prosise, Seattle Seahawks\r\n.\r\n.\r\nAlso check out:\r\nFantasy football, baseball, and basketball analysis\r\nSource: http://lesterslegends.com/2017-fantasy-football-running-rankings-week-5/"\r\n', 'No False Data Injection Attack Detected'),
(2, 'https://www.nytimes.com/2017/10/05/technology/personaltech/upgrading-to-a-modern-mac.html?rref=collection%2Fsectioncollection%2Fpersonaltech', 'Upgrading to a Modern Mac', '"Q. Iƒ??m about to purchase an iMac desktop computer. Are they as good as the old ones? I have an old MacBook on which I use AppleWorks. Will a new Mac convert it to a current word-processing program?\r\nA. Apple regularly updates its computers with faster processors, sharper screens and slicker software, so buying a new iMac gets you a machine thatƒ??s technically better than an older model. However, you may have an adjustment period with the new hardware and the new operating system if you have not upgraded in several years. The Migration Assistant program included with new Macs can also help you move your files from the old machine to the new one, but older software may not run on a modern Mac.\r\nThe old AppleWorks collection of office and art programs was officially retired more than 10 years ago, replaced by Appleƒ??s iWork suite. That software has evolved into three free programs (a word processor called Pages, spreadsheet software called Numbers and the Keynote presentation application) that work on Macs, on iOS devices and within a web browser. You get the current version of the programs on your new Mac when you buy it, but depending on the version of AppleWorks you were using, you may have some trouble opening the older files with the new software.\r\nNewsletter Sign Up Continue reading the main story How Do You Use Tech? Advice and tips on the technology changing how you live. Please verify you''re not a robot by clicking the box. Invalid email address. Please re-enter. You must select a newsletter to subscribe to. Sign Up You agree to receive occasional updates and special offers for The New York Times''s products and services. Thank you for subscribing. An error has occurred. Please try again later. View all New York Times newsletters.\r\nIf you were using AppleWorks 6 and saved all your files in that version of the program, you can try to open them with the current iWork programs, but files in AppleWorks 5 or earlier are not compatible. Just double-clicking on an AppleWorks document icon from files you have copied over probably will not work, but try opening the Pages program first, then going to the File menu to Open and selecting an AppleWorks file (or an older iWork file) in the window to see if it cooperates and opens. If it does, choose Save As from the File menu to save the old document in the newer Pages format.\r\nAdvertisement Continue reading the main story\r\nThe Numbers and Keynote programs may be able to open AppleWorks spreadsheets and presentations the same way. If the files will not open, you may be able to convert them to newer formats by opening them within the open-source LibreOffice suite, which has a good reputation for cracking open files in outdated formats.\r\nPhoto\r\nYou can also check the Mac App Store or around the web for a text-utility program that can extract the words from the file from the garbled formatting code. The TextEdit app, which comes with your Mac, may be able to open the file so you can copy the content into a Pages file.\r\nIf the older computer and version of AppleWorks you have been using are still operational, you could also prepare your files for transfer ahead of time and export them right from AppleWorks into more flexible formats that newer programs can easily open. With AppleWorks 6 word-processing documents, for example, you can save them as plain text, HTML files, rich-text format (.rtf) files or Microsoft Word files."\r\n', 'False Data Injection Attack Detected'),
(3, '"http://beforeitsnews.com/sports/2017/09/just-shut-up-play-some-damn-baseball-2701059.html  "', 'Just Shut Up & Play Some Damn Baseball!!', '"Just Shut Up & Play Some Damn Baseball!!\r\n(Before It''s News)\r\nLook, plain and simple I am over this ƒ??Take a kneeƒ? bullshit in my opinion.\r\nKyle Terada-USA TODAY Sports\r\nIƒ??m not writing to debate with anyone on this. Everyone has a right to their own opinion and to protestƒ??.I get it. But I also have a right to turn on my television and watch Americaƒ??s favorite pastime without the extra added political crap. Itƒ??s September and there are seven regular season games left so we have enough drama as it is. I like the drama involved in a heart racing, nail biting game between two good teams. Itƒ??s a beautiful game and an escape from reality (especially NOW) so canƒ??t we just leave it at that?\r\nBaseball is my first passion, football is my second. Well, it wasƒ??.it was the one other sport I really enjoyed when baseball was over. I have been a fan of a poor football team for years and stood by them but at this point itƒ??s too much political mumbo jumbo for me to actually watch a game. Suddenly football became the drama filled gossip girls crowd I worked so hard to avoid in High School. I respect your opinion whatever it may be but I want to see you PLAY THE GAME and hear about all of the news that comes form thatƒ??..not from you ƒ??taking a kneeƒ? and causing Americans everywhere to debate about whether it is right or wrong.\r\nThat is why I stopped watching. Colin Kaepernick started drama, is now UNEMPLOYED and I no longer watch football.\r\nRick Osentoski-USA TODAY Sports\r\nAnd now suddenly the ƒ??take a kneeƒ? fiasco finally made it into my baseball world and I admit it annoys me! Congratulations rookie kid I couldnƒ??t care less about Bruce Maxwell of the Oakland Aƒ??s. You ƒ??took a kneeƒ? and sent a message. You are incredibly young and have much to learn in life and in baseball. Youƒ??ve had your 15 minutes of fame and brought a bunch of drama into the game I love. Now who is next? Because it is coming. The newbie opened up the flood gates.\r\nSo now that itƒ??s out there and instead of the news main focus being about the Yankees blowing two games against the Jays and likely the divisionƒ??.we have to read Joe Girardi,Yankees players have no plans to protest national anthem. Really? I want to start a new movement here. Thereƒ??s a cliche that says politics and religion do not belong at the dinner table. How about political protests do not belong at a baseball game?\r\nPhoto: NJ.com\r\nClearly Aaron Judge gets it. Iƒ??m sure he has a very strong opinion on this too as most of us do but at least when he was asked about it he said ƒ??You know, Iƒ??m a baseball player. My job is to focus on playing baseball right now.ƒ? It is, so thank you Judge. Even CC Sabathia had an opinion on it and he made that pretty clear on Saturday but he said his peace and left it at that. So when Sunday came around he didnƒ??t want to revisit it and said ƒ??I donƒ??t want to talk about that. Go to somebody elseƒ??s locker and talk about protests. Why do you have to come to me? There are 40 other guys in thereƒ? read that HERE.\r\nWe have one week left in the regular season. Maxwell said his decision ƒ??had been coming for a long timeƒ? and referenced what happened in Charlottesville. Heƒ??s had a while to sit and stew on that and just now decides to join the movement and ƒ??take a kneeƒ? right at the end of the season. I donƒ??t look at that and find that to be ƒ??braveƒ? or admirable at all.\r\nThere are a lot of issues in our country right now, and I am not ignoring that. We saw how high emotions ran last year in football and now itƒ??s come into baseball. Nothing has changed for the better here, so why bring it on the field?\r\nI just want to watch some baseball, Maxwell! I didnƒ??t know who you were before this. I know enough about you now, but it doesnƒ??t make me want to learn anymore.\r\nJust play ball! Thereƒ??s not a lot of it leftƒ??\r\nƒ??Jeana Bellezza\r\nBYB Managing Editor\r\nFollow me on Twitter: @NYPrincess J\r\nSource: http://bleedingyankeeblue.blogspot.com/2017/09/just-shut-up-play-some-damn-baseball.html"\r\n', 'No False Data Injection Attack Detected');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
