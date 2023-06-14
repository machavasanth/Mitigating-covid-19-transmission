-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2021 at 12:59 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mitigating_covid19_transmission`
--
CREATE DATABASE IF NOT EXISTS `mitigating_covid19_transmission` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mitigating_covid19_transmission`;

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
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('ihijnfl4bnor8p7mcvtrbw903jok01bo', 'eyJ1c2VyaWQiOjExfQ:1mdWkC:6xj1cnAB1uC8A8g3DQfNX-Xh--6IEHRgFfVYYXxtdYA', '2021-11-04 12:00:24.381825'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('ypiion44m5ux0sxw6qj6nza2pqumc9ed', 'eyJ1c2VyaWQiOjIxfQ:1mdYjr:cSQJKjocneF6OSQVix8CuqlvSnRgeREBB83HH4bJttQ', '2021-11-04 14:08:11.320450'),
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`) VALUES
(10, 'Govind', 'Govind.123@gmail.com', 'Govind', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(11, 'Manjunath', 'tmksmanju13@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(12, 'tmksmanju', 'tmksmanju13@gmail.com', 'tmksmanju', '9535866271', 'India', 'Karnataka', 'Bangalore'),
(13, 'Arvind', 'Arvind123@gmail.com', 'Arvind', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(14, 'Amar', 'Amar123@gmail.com', 'Amar', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(15, 'Anil', 'Anil123@gmail.com', 'Anil', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(16, 'Abilash', 'Abilash123@gmail.com', 'Abilash', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(17, 'Kumar', 'Kumar.123@gmail.com', 'Kumar', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(18, 'Gokul', 'Gokul123@gmail.com', 'Gokul', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(19, 'Akil', 'Akila.123@gmail.com', 'Akil', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(20, 'Sundar', 'Sundar.123@gmail.com', 'Sundar', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(21, 'Mala', 'Mala123@gmail.com', 'Mala', '9535866270', 'India', 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_covid19_transmission_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_covid19_transmission_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Scholl_Code` varchar(300) NOT NULL,
  `names` varchar(300) NOT NULL,
  `Scholl_Type` varchar(300) NOT NULL,
  `Function1` varchar(300) NOT NULL,
  `Contact_Name` varchar(300) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Town` varchar(300) NOT NULL,
  `Zip` varchar(300) NOT NULL,
  `Phone` varchar(300) NOT NULL,
  `Number_Of_Children` varchar(300) NOT NULL,
  `Oxigen_level` varchar(300) NOT NULL,
  `Fever` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=902 ;

--
-- Dumping data for table `remote_user_covid19_transmission_model`
--

INSERT INTO `remote_user_covid19_transmission_model` (`id`, `Scholl_Code`, `names`, `Scholl_Type`, `Function1`, `Contact_Name`, `Address`, `Town`, `Zip`, `Phone`, `Number_Of_Children`, `Oxigen_level`, `Fever`) VALUES
(752, '10505', 'Abington High', 'Public School', 'Principal', 'Teresa Sullivan-Cruz', '201 Gliniewicz Way', 'Abington', '2351', '781-982-2160', '6418', '75', '105'),
(753, '10003', 'Beaver Brook Elementary School', 'Public School', 'Principal', 'Catherine Zinni', '1 Ralph Hamlin Lane', 'Abington', '2351', '781-982-2185', '5755', '89', '101'),
(754, '10002', 'Center Elementary School', 'Public School', 'Principal', 'Lora Monachino', '201 Gliniewicz Way', 'Abington', '2351', '781-982-2195', '4518', '96', '98'),
(755, '10405', 'Frolio Middle School', 'Public School', 'Principal', 'Matthew MacCurtain', '201 Gliniewicz Way', 'Abington', '2351', '781-982-2170', '2524', '92', '98.6'),
(756, '10015', 'Woodsdale Elementary School', 'Public School', 'Principal', 'Jonathan Hawes', '128 Chestnut Street', 'Abington', '2351', '781-982-2180', '3728', '96', '99'),
(757, '30025', 'Acushnet Elementary School', 'Public School', 'Principal', 'Susan Beck', '800 Middle Road', 'Acushnet', '2743', '508-998-0255', '1338', '87', '104'),
(758, '30305', 'Albert F Ford Middle School', 'Public School', 'Principal', 'Michelle Silvia', '708 Middle Road', 'Acushnet', '2743', '508-998-0265', '2438', '76', '103'),
(759, '50003', 'Agawam Early Childhood Center', 'Public School', 'Principal', 'Robin Fernandes', '108 Perry Lane', 'Agawam', '1001', '413-821-0598', '2792', '90', '99'),
(760, '50505', 'Agawam High', 'Public School', 'Principal', 'Thomas Schnepp', '760 Cooper Street', 'Agawam', '1001', '413-821-0521', '3034', '67', '107'),
(761, '50405', 'Agawam Junior High', 'Public School', 'Principal', 'Norman Robbins', '1305 Springfield St', 'Feeding Hills', '1030', '413-821-0561', '1861', '78', '104'),
(762, '50020', 'Benjamin J Phelps', 'Public School', 'Principal', 'Noelle Colbert', '689 Main Street', 'Agawam', '1001', '413-821-0587', '3111', '89', '99'),
(763, '50010', 'Clifford M Granger', 'Public School', 'Principal', 'Cheryl Salomao', '31 So. Westfield Street', 'Feeding Hills', '1030', '413-821-0581', '5305', '92', '98'),
(764, '50030', 'James Clark School', 'Public School', 'Principal', 'Shelley Russell', '65 Oxford Street', 'Agawam', '1001', '413-821-0576', '4220', '91', '98.6'),
(765, '50303', 'Roberta G. Doering School', 'Public School', 'Principal', 'Susan Federico', '68 Main Street', 'Agawam', '1001', '413-789-1400', '1409', '77', '107'),
(766, '50025', 'Robinson Park', 'Public School', 'Principal', 'Nicholas Bernier', '65 Begley Street', 'Agawam', '1001', '413-821-0584', '2458', '91', '101'),
(767, '70005', 'Amesbury Elementary', 'Public School', 'Principal', 'Walter Helliesen', '20 South Hampton Road', 'Amesbury', '1913', '978-388-3659', '4208', '96', '98'),
(768, '70505', 'Amesbury High', 'Public School', 'Principal', 'Elizabeth McAndrews', '5 Highland Street', 'Amesbury', '1913', '978-388-4800', '3823', '93', '98.8'),
(769, '70515', 'Amesbury Innovation High School', 'Public School', 'Principal', 'Eryn Maguire', '71 Friend Street', 'Amesbury', '1913', '978-388-8037', '5043', '96', '99'),
(770, '70013', 'Amesbury Middle', 'Public School', 'Principal', 'Michael Curry', '220 Main Street', 'Amesbury', '1913', '978-388-0515', '2159', '93', '98.6'),
(771, '70010', 'Charles C Cashman Elementary', 'Public School', 'Principal', 'Mary Charette', '193 Lions Mouth Road', 'Amesbury', '1913', '978-388-4407', '2343', '87', '101'),
(772, '80009', 'Crocker Farm Elementary', 'Public School', 'Principal', 'Derek Shea', '280 West Street', 'Amherst', '1002', '413-362-1600', '5435', '98', '98.6'),
(773, '80020', 'Fort River Elementary', 'Public School', 'Principal', 'Diane Chamberlain', '70 So East Street', 'Amherst', '1002', '413-362-1200', '1122', '89', '100'),
(774, '80050', 'Wildwood Elementary', 'Public School', 'Principal', 'Nicholas Yaffe', '71 Strong Street', 'Amherst', '1002', '413-362-1400', '4518', '87', '103'),
(775, '90505', 'Andover High', 'Public School', 'Principal', 'Philip Conrad', '80 Shawsheen Road', 'Andover', '1810', '978-247-5500', '3501', '94', '99'),
(776, '90310', 'Andover West Middle', 'Public School', 'Principal', 'Rebecca Franks', '70 Shawsheen Road', 'Andover', '1810', '978-247-5400', '2519', '60', '108'),
(777, '90003', 'Bancroft Elementary', 'Public School', 'Principal', 'Michelle Costa', '15 Bancroft Street', 'Andover', '1810', '978-247-9500', '3400', '67', '106'),
(778, '90305', 'Doherty Middle', 'Public School', 'Principal', 'Robin Wilson', '50 Bartlet Street', 'Andover', '1810', '978-247-9400', '3095', '87', '105'),
(779, '90010', 'Henry C Sanborn Elementary', 'Public School', 'Principal', 'Jason DiCarlo', '90 Lovejoy Road', 'Andover', '1810', '978-247-9700', '7417', '96', '99'),
(780, '90004', 'High Plain Elementary', 'Public School', 'Principal', 'Pamela Lathrop', '333 High Plain Road', 'Andover', '1810', '978-247-8600', '2409', '91', '101'),
(781, '90005', 'Shawsheen School', 'Public School', 'Principal', 'Carol Green', '18 Magnolia Avenue', 'Andover', '1810', '978-247-8200', '2825', '72', '110'),
(782, '90020', 'South Elementary', 'Public School', 'Principal', 'Tracy Crowley', '55 Woburn Street', 'Andover', '1810', '978-247-9800', '4699', '90', '102'),
(783, '90025', 'West Elementary', 'Public School', 'Principal', 'Elizabeth Roos', '58 Beacon Street', 'Andover', '1810', '978-247-5300', '4928', '76', '105'),
(784, '90350', 'Wood Hill Middle School', 'Public School', 'Principal', 'Patrick Bucco', '11 Cross Street', 'Andover', '1810', '978-247-8800', '4595', '81', '101'),
(785, '100505', 'Arlington High', 'Public School', 'Principal', 'Matthew Janger', '869 Mass Avenue', 'Arlington', '2476', '781-316-3591', '5941', '89', '99.8'),
(786, '100010', 'Brackett', 'Public School', 'Principal', 'Stephanie Zerchykov', '66 Eastern Avenue', 'Arlington', '2476', '781-316-3705', '4140', '83', '99.7'),
(787, '100025', 'Cyrus E Dallin', 'Public School', 'Principal', 'Thad Dingman', '185 Florence Avenue', 'Arlington', '2476', '781-316-3722', '5868', '86', '99.6'),
(788, '100030', 'Hardy', 'Public School', 'Principal', 'Kristin Defrancisco', '52 Lake Street', 'Arlington', '2474', '781-316-3781', '2303', '80', '99.5'),
(789, '100005', 'John A Bishop', 'Public School', 'Principal', 'Mark McAneny', '25 Columbia Road', 'Arlington', '2474', '781-316-3791', '5837', '90', '99'),
(790, '100055', 'M Norcross Stratton', 'Public School', 'Principal', 'Michael Hanna', '180 Mountain Avenue', 'Arlington', '2474', '781-316-3754', '2139', '94', '99.7'),
(791, '100038', 'Menotomy Preschool', 'Public School', 'Principal', 'Joyce Schlenger', '869 Massachusetts Avenue', 'Arlington', '2476', '781-316-3698', '2543', '84', '105'),
(792, '100410', 'Ottoson Middle', 'Public School', 'Principal', 'Eileen Woods', '63 Acton Street', 'Arlington', '2476', '781-316-3745', '4519', '90', '101'),
(793, '100045', 'Peirce', 'Public School', 'Principal', 'Karen Hartley', '85 Park Avenue Ext', 'Arlington', '2474', '781-316-3736', '2298', '98', '99'),
(794, '100050', 'Thompson', 'Public School', 'Principal', 'Karen Donato', '187 Everett Street', 'Arlington', '2474', '781-316-3768', '1269', '97', '98'),
(795, '140505', 'Ashland High', 'Public School', 'Principal', 'Kelley St. Coeur', '65 East Union St.', 'Ashland', '1721', '508-881-0177', '5699', '94', '97'),
(796, '140405', 'Ashland Middle', 'Public School', 'Principal', 'David DiGirolamo', '87 West Union Street', 'Ashland', '1721', '508-881-0167', '3297', '91', '98.6'),
(797, '140015', 'David Mindess', 'Public School', 'Principal', 'Michael Caira', '90 Concord Street', 'Ashland', '1721', '508-881-0166', '1523', '93', '98.6'),
(798, '140010', 'Henry E Warren Elementary', 'Public School', 'Principal', 'Peter Regan', '73 Fruit Street', 'Ashland', '1721', '508-881-0188', '2417', '92', '98.6'),
(799, '140005', 'William Pittaway Elementary', 'Public School', 'Principal', 'Patricia White', '75 Central Street', 'Ashland', '1721', '508-881-0160', '1325', '94', '98.6'),
(800, '160001', 'A. Irvin Studley Elementary School', 'Public School', 'Principal', 'Joanne DiPalma', '299 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-2621', '5157', '87', '104'),
(801, '160515', 'Attleboro Community Academy', 'Public School', 'Principal', 'William Runey', '100 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-5150', '2098', '89', '105'),
(802, '160505', 'Attleboro High', 'Public School', 'Principal', 'William Runey', '100 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-5150', '5323', '91', '99'),
(803, '160315', 'Cyril K. Brennan Middle School', 'Public School', 'Principal', 'Frederick Souza', '320 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-6260', '998', '92', '99'),
(804, '160008', 'Early Learning Center', 'Public School', 'Principal', 'Veronica Learned', '7 James St', 'Attleboro', '2703', '508-223-1563', '3949', '93', '98'),
(805, '160045', 'Hill-Roberts Elementary School', 'Public School', 'Principal', 'Frank Rich', '80 Roy Avenue', 'Attleboro', '2703', '508-399-7560', '2342', '97', '98'),
(806, '160040', 'Hyman Fine Elementary School', 'Public School', 'Principal', 'Patricia Martin', '790 Oak Hill Avenue', 'Attleboro', '2703', '508-222-1419', '7994', '89', '99'),
(807, '160050', 'Peter Thacher Elementary School', 'Public School', 'Principal', 'Veronica Learned', '160 James Street', 'Attleboro', '2703', '508-226-4162', '5776', '92', '98'),
(808, '160305', 'Robert J. Coelho Middle School', 'Public School', 'Principal', 'Andrew Boles', '99 Brown Street', 'Attleboro', '2703', '508-761-7551', '3498', '91', '100'),
(809, '160035', 'Thomas Willett Elementary School', 'Public School', 'Principal', 'Jeffrey Cateon', '32 Watson Avenue', 'Attleboro', '2703', '508-222-0286', '3242', '77', '109'),
(810, '160320', 'Wamsutta Middle School', 'Public School', 'Principal', 'Joseph Connor', '300 Locust Street', 'Attleboro', '2703', '508-223-1540', '1096', '91', '101'),
(811, '170305', 'Auburn Middle', 'Public School', 'Principal', 'Joseph Gagnon', '9 West Street', 'Auburn', '1501', '508-832-7722', '5818', '96', '99'),
(812, '170505', 'Auburn Senior High', 'Public School', 'Principal', 'Casey Handfield', '99 Auburn Street', 'Auburn', '1501', '508-832-7711', '2120', '93', '98'),
(813, '170010', 'Bryn Mawr', 'Public School', 'Principal', 'Elizabeth Chamberland', '35 Swanson Road', 'Auburn', '1501', '508-832-7733', '3409', '96', '99'),
(814, '170025', 'Pakachoag School', 'Public School', 'Principal', 'Jennifer Stanick', '110 Pakachoag Street', 'Auburn', '1501', '508-832-7788', '4718', '93', '98.6'),
(815, '170030', 'Swanson Road Intermediate School', 'Public School', 'Principal', 'Susan Lopez', '10 Swanson Road', 'Auburn', '1501', '508-832-7744', '5826', '87', '103'),
(816, '180510', 'Avon Middle High School', 'Public School', 'Principal', 'Dawn Stockwell', '287 West Main Street', 'Avon', '2322', '508-583-4822', '4900', '98', '98.6'),
(817, '180010', 'Ralph D Butler', 'Public School', 'Principal', 'Darrin Reynolds', '1 Patrick Clark Drive', 'Avon', '2322', '508-587-7009', '4103', '89', '104'),
(818, '200505', 'Barnstable High', 'Public School', 'Principal', 'Patrick Clark', '744 West Main Street', 'Hyannis', '2601', '508-790-6445', '2843', '87', '103'),
(819, '200315', 'Barnstable Intermediate School', 'Public School', 'Principal', 'James Anderson', '895 Falmouth Road', 'Hyannis', '2601', '508-790-6460', '9346', '94', '100'),
(820, '200050', 'Barnstable United Elementary School', 'Public School', 'Principal', 'Mary Sullivan', '730 Osterville West Barnstable Road', 'Marston Mills', '2648', '508-420-2272', '1939', '97', '98'),
(821, '200010', 'Centerville Elementary', 'Public School', 'Principal', 'Matthew Scheufele', '658 Bay Ln', 'Centerville', '2632', '508-790-9890', '4924', '89', '103'),
(822, '200001', 'Enoch Cobb Early Learning Center', 'Public School', 'Principal', 'Nicole Caucci', '77 Old Craigville Road', 'Hyannis', '2601', '508-790-6493', '3731', '92', '100'),
(823, '200025', 'Hyannis West Elementary', 'Public School', 'Principal', 'Eleanor Amato', '549 West Main Street', 'Hyannis', '2601', '508-790-6480', '3518', '91', '99'),
(824, '200005', 'West Barnstable Elementary', 'Public School', 'Principal', 'Karen Cloutier', '2463 Main St Route 6A', 'West Barnstable', '2668', '508-362-4949', '4624', '77', '107'),
(825, '200045', 'West Villages Elementary School', 'Public School', 'Principal', 'Kirk Gibbons', '760 Osterville-West Barnstable Road', 'Marstons Mills', '2648', '508-420-1100', '2442', '91', '104'),
(826, '230505', 'Bedford High', 'Public School', 'Principal', 'Heather Galante', '9 Mudge Way', 'Bedford', '1730', '781-275-1700', '3317', '96', '98'),
(827, '230305', 'John Glenn Middle', 'Public School', 'Principal', 'Kevin Tracey', '99 McMahon Road', 'Bedford', '1730', '781-275-3201', '217', '93', '101'),
(828, '230010', 'Lt Elezer Davis', 'Public School', 'Principal', 'Beth Benoit', '410 Davis Rd', 'Bedford', '1730', '781-275-6804', '6300', '96', '98'),
(829, '230012', 'Lt Job Lane School', 'Public School', 'Principal', 'Robert Ackerman', '66 Sweetwater Avenue', 'Bedford', '1730', '781-275-7606', '6491', '86', '103'),
(830, '240505', 'Belchertown High', 'Public School', 'Principal', 'Christine Vigneux', '142 Springfield Road', 'Belchertown', '1007', '413-323-9419', '2710', '80', '106'),
(831, '240006', 'Chestnut Hill Community School', 'Public School', 'Principal', 'Jennifer Champagne', '59 State Street', 'Belchertown', '1007', '413-323-0437', '4542', '90', '101'),
(832, '240005', 'Cold Spring', 'Public School', 'Principal', 'Andrea Mastalerz', '57 South Main Street', 'Belchertown', '1007', '413-323-0428', '2596', '94', '98'),
(833, '240025', 'Jabish Middle School', 'Public School', 'Principal', 'Thomas Ruscio', '62 North Washington Street', 'Belchertown', '1007', '413-323-0433', '4890', '84', '103'),
(834, '240018', 'Swift River Elementary', 'Public School', 'Principal', 'Robert Kuhn', '57 State Street', 'Belchertown', '1007', '413-323-0472', '4597', '90', '99'),
(835, '250003', 'Bellingham Early Childhood Center', 'Public School', 'Principal', 'Pamela Fuhrman', '338 Hartford Avenue', 'Bellingham', '2019', '508-966-2512', '4811', '98', '98'),
(836, '250505', 'Bellingham High School', 'Public School', 'Principal', 'Lucas Giguere', '60 Blackstone Street', 'Bellingham', '2019', '508-966-3761', '1699', '97', '98'),
(837, '250315', 'Bellingham Memorial School', 'Public School', 'Principal', 'Jeffrey Croteau', '130 Blackstone Street', 'Bellingham', '2019', '508-883-2330', '4311', '94', '99'),
(838, '250510', 'Keough Memorial Academy', 'Public School', 'Principal', 'David Cutler', '60 Harpin Street', 'Bellingham', '2019', '508-883-5403', '2099', '91', '99.5'),
(839, '250020', 'South Elementary', 'Public School', 'Principal', 'Judith Lamarre', '70 Harpin Street', 'Bellingham', '2019', '508-883-8001', '3242', '93', '99.6'),
(840, '250025', 'Stall Brook', 'Public School', 'Principal', 'Brenda Maurao', '342 Hartford Avenue', 'Bellingham', '2019', '508-966-0451', '1998', '92', '98.6'),
(841, '260505', 'Belmont High', 'Public School', 'Principal', 'Dan Richards', '221 Concord Avenue', 'Belmont', '2478', '617-993-5901', '3379', '94', '98.1'),
(842, '260015', 'Daniel Butler', 'Public School', 'Principal', 'Danielle Betancourt', '90 White Street', 'Belmont', '2478', '617-993-5550', '3416', '87', '102'),
(843, '260010', 'Mary Lee Burbank', 'Public School', 'Principal', 'Tricia Clifford', '266 School Street', 'Belmont', '2478', '617-993-5500', '4904', '89', '104'),
(844, '260035', 'Roger E Wellington', 'Public School', 'Principal', 'Amy Spangler', '121 Orchard Street', 'Belmont', '2478', '617-993-5600', '397', '91', '102'),
(845, '260005', 'Winn Brook', 'Public School', 'Principal', 'Janet Carey', '97 Waterhouse Rd', 'Belmont', '2478', '617-993-5700', '4322', '92', '100'),
(846, '260305', 'Winthrop L Chenery Middle', 'Public School', 'Principal', 'Michael McAllister', '95 Washington Street', 'Belmont', '2478', '617-993-5800', '2808', '93', '99'),
(847, '270010', 'Berkley Community School', 'Public School', 'Principal', 'Jennifer Francisco', '59 South Main Street', 'Berkley', '2779', '508-822-9550', '4199', '97', '99.8'),
(848, '270305', 'Berkley Middle School', 'Public School', 'Principal', 'Kimberly Hebert', '21 North Main Street', 'Berkley', '2779', '508-884-9434', '3431', '89', '103'),
(849, '280005', 'Berlin Memorial', 'Public School', 'Principal', 'John Campbell', '34 South Street', 'Berlin', '1503', '978-838-2417', '4494', '92', '98'),
(850, '300055', 'Ayers/Ryal Side School', 'Public School', 'Principal', 'Debra Lay', '40 Woodland Avenue', 'Beverly', '1915', '978-921-6116', '1562', '93', '99'),
(851, '300505', 'Beverly High', 'Public School', 'Principal', 'Elizabeth Taylor', '100 Sohier Rd', 'Beverly', '1915', '978-921-6132', '3067', '96', '98'),
(852, '300305', 'Briscoe Middle', 'Public School', 'Principal', 'Matthew Poska', '7 Sohier Rd', 'Beverly', '1915', '978-921-6103', '4122', '93', '99.5'),
(853, '300010', 'Centerville Elementary', 'Public School', 'Principal', 'Julie Smith', '17 Hull Street', 'Beverly', '1915', '978-921-6120', '3216', '87', '104'),
(854, '300015', 'Cove Elementary', 'Public School', 'Principal', 'Lisa Fiandaca', '20 Eisenhower Avenue', 'Beverly', '1915', '978-921-6121', '6253', '98', '99'),
(855, '300033', 'Hannah Elementary', 'Public School', 'Principal', 'Gabrielle Montevecchi', '41R Brimbal Avenue', 'Beverly', '1915', '978-921-6126', '4379', '89', '103'),
(856, '300002', 'McKeown School', 'Public School', 'Principal', 'Stacy Bucyk', '70 Balch Street', 'Beverly', '1915', '978-921-6100', '3189', '87', '102'),
(857, '300040', 'North Beverly Elementary', 'Public School', 'Principal', 'Erin Brown', '48 Putnam Street', 'Beverly', '1915', '978-921-6130', '8862', '94', '99'),
(858, '310505', 'Billerica Memorial High School', 'Public School', 'Principal', 'Thomas Murphy', '35 River Street', 'Billerica', '1821', '978-528-8712', '9616', '97', '99'),
(859, '310030', 'Eugene C Vining', 'Public School', 'Principal', 'Christine Gibelli', '121 Lexington Rd', 'Billerica', '1821', '978-528-8630', '8402', '89', '105'),
(860, '310007', 'Frederick J Dutile', 'Public School', 'Principal', 'Christine Balzotti', '10 Biagiotti Way', 'North Billerica', '1862', '978-528-8530', '8621', '92', '100'),
(861, '310026', 'Hajjar Elementary', 'Public School', 'Principal', 'Elizabeth Devine', '59 Rogers Street', 'Billerica', '1862', '978-528-8550', '5238', '91', '98.8'),
(862, '310012', 'John F Kennedy', 'Public School', 'Principal', 'David Marble', '20 Kimbrough Rd', 'Billerica', '1821', '978-528-8570', '3315', '77', '105'),
(863, '310310', 'Locke Middle', 'Public School', 'Principal', 'Anthony Garas', '110 Allen Rd', 'Billerica', '1821', '978-528-8650', '8258', '91', '100'),
(864, '310305', 'Marshall Middle School', 'Public School', 'Principal', 'Michael Rossi', '15 Floyd Street', 'Billerica', '1821', '978-528-8670', '1497', '96', '98'),
(865, '310015', 'Parker', 'Public School', 'Principal', 'Suzanne Sullivan', '52 River Street', 'Billerica', '1821', '978-528-8610', '3946', '93', '99'),
(866, '310005', 'Thomas Ditson', 'Public School', 'Principal', 'Victoria Hatem', '39 Cook Street', 'Billerica', '1821', '978-528-8510', '2306', '96', '98.6'),
(867, '350541', 'Another Course To College', 'Public School', 'Principal', 'Michele Pellam', '612 Metropolitan Av', 'Hyde Park', '2136', '617-635-8865', '2619', '86', '105'),
(868, '350003', 'Baldwin Early Learning Center', 'Public School', 'Principal', 'Tavia Mead', '121 Corey Road', 'Brighton', '2135', '617-635-8409', '4208', '80', '101'),
(869, '350021', 'Beethoven', 'Public School', 'Principal', 'Edward Puliafico', '5125 Washington Street', 'West Roxbury', '2132', '617-635-8149', '3343', '89', '104'),
(870, '350390', 'Blackstone', 'Public School', 'Principal', 'Jamel Adkins-sharif', '380 Shawmut Avenue', 'Boston', '2118', '617-635-8471', '2531', '83', '101'),
(871, '350548', 'Boston Adult Academy', 'Public School', 'Principal', 'Benjamin Helfat', '20 Church St', 'Back Bay', '2116', '617-635-1542', '6020', '86', '107'),
(872, '350546', 'Boston Arts Academy', 'Public School', 'Principal', 'Anne Clark', '174 Ipswich Street', 'Boston', '2215', '617-635-6470', '3336', '80', '109'),
(873, '350755', 'Boston Collaborative High School', 'Public School', 'Principal', 'Sherri Neasman', '60 Hawthorne St', 'Roslindale', '2131', '617-635-8035', '3249', '90', '100'),
(874, '350558', 'Boston Community Leadership Academy', 'Public School', 'Principal', 'Francine Locker', '655 Metropolitan Ave', 'Hyde Park', '2136', '617-635-8937', '2409', '94', '99'),
(875, '350507', 'Boston International High School', 'Public School', 'Principal', 'Thomas King', '100 Maxwell St', 'Dorchester', '2124', '617-635-9373', '1699', '84', '102'),
(876, '350560', 'Boston Latin', 'Public School', 'Principal', 'Rachel Skerritt', '78 Avenue Louis Pasteur', 'Boston', '2115', '617-635-8895', '3216', '90', '103.4'),
(877, '350545', 'Boston Latin Academy', 'Public School', 'Principal', 'Chimdi Uchendu', '205 Townsend Street', 'Dorchester', '2121', '617-635-9957', '6000', '98', '98.6'),
(878, '350012', 'Boston Teachers Union School', 'Public School', 'Principal', 'Lindsay Chaves', '25 Walk Hill Street', 'Jamaica Plain', '2130', '617-635-7717', '1734', '97', '98.6'),
(879, '350505', 'Brighton High', 'Public School', 'Principal', 'Robert Rametti', '25 Warren Street', 'Brighton', '2135', '617-635-9873', '8051', '94', '98.6'),
(880, '350036', 'Carter Developmental Center', 'Public School', 'Principal', 'Mark O''connor', '396 Northampton Street', 'Boston', '2118', '617-635-9832', '8500', '91', '98.6'),
(881, '350054', 'Charles H Taylor', 'Public School', 'Principal', 'Jennifer Marks', '1060 Morton Street', 'Mattapan', '2126', '617-635-8731', '6650', '93', '98.6'),
(882, '350052', 'Charles Sumner', 'Public School', 'Principal', 'Catherine MacCuish', '15 Basile Street', 'Roslindale', '2131', '617-635-8131', '428', '92', '98.6'),
(883, '350515', 'Charlestown High', 'Public School', 'Principal', 'William Thomas', '240 Medford Street', 'Charlestown', '2129', '617-635-9914', '2600', '94', '98.6'),
(884, '350430', 'Clarence R Edwards Middle', 'Public School', 'Principal', 'Laryssa Doherty', '28 Walker Street', 'Charlestown', '2129', '617-635-8516', '9546', '87', '101'),
(885, '350518', 'Community Academy', 'Public School', 'Principal', 'Rayna Briceno', '25 Glen Road', 'Jamaica Plain', '2130', '617-635-8950', '8264', '89', '109'),
(886, '350581', 'Community Academy of Science and Health', 'Public School', 'Principal', 'Robin Lee', '11 Charles Street', 'Dorchester', '2122', '617-635-8950', '1898', '91', '99'),
(887, '350020', 'Curley K-8 School', 'Public School', 'Principal', 'Katherine Grassa', '493 Centre St.', 'Jamaica Plain', '2130', '617-635-8176', '3119', '92', '98'),
(888, '350062', 'Curtis Guild', 'Public School', 'Principal', 'Karen McCarthy', '195 Leyden Street', 'East Boston', '2128', '617-635-8523', '5155', '93', '99.7'),
(889, '350066', 'Dante Alighieri Montessori School', 'Public School', 'Principal', 'Glenda Colon', '37 Gove Street', 'East Boston', '2128', '617-635-8529', '6933', '97', '98.7'),
(890, '350072', 'David A Ellis', 'Public School', 'Principal', 'Cynthia Jacobs', '302 Walnut Avenue', 'Roxbury', '2119', '617-635-8257', '2607', '89', '102'),
(891, '350074', 'Dearborn', 'Public School', 'Principal', 'Lisa Gilbert-Smith', '60 Washington St', 'Dorchester', '2121', '617-635-8412', '2833', '92', '100'),
(892, '350077', 'Dennis C Haley', 'Public School', 'Principal', 'Kathleen Sullivan', '570 American Legion Highway', 'Roslindale', '2131', '617-635-8169', '1116', '91', '99'),
(893, '350080', 'Donald Mckay', 'Public School', 'Principal', 'Jordan Weymer', '122 Cottage Street', 'East Boston', '2128', '617-635-8510', '2801', '84', '101'),
(894, '350651', 'Dorchester Academy', 'Public School', 'Principal', 'Melissa Malone Sanjeh', '11 Charles St', 'Dorchester', '2125', '617-635-9730', '2029', '90', '102'),
(895, '350008', 'Dr. Catherine Ellison-Rosa Parks Early Ed School', 'Public School', 'Principal', 'Benjamin Rockoff', '108 Babson Street', 'Mattapan', '2126', '617-635-7680', '2805', '98', '98.6'),
(896, '350266', 'Dr. William Henderson Lower', 'Public School', 'Principal', 'Patricia Lampron', '1669 Dorchester Avenue', 'Dorchester', '2122', '617-635-8725', '2115', '97', '98.6'),
(897, '350426', 'Dr. William Henderson Upper', 'Public School', 'Principal', 'Patricia Lampron', '18 Croftland Av', 'Dorchester', '2124', '617-635-6365', '4193', '94', '98.6'),
(898, '350006', 'ELC - West Zone', 'Public School', 'Principal', 'Jean Larrabee', '200 Heath Street', 'Jamaica Plain', '2130', '617-635-8275', '2229', '91', '100'),
(899, '350009', 'East Boston Early Childhood Center', 'Public School', 'Principal', 'Olga Frechon', '135 Grove Street', 'East Boston', '2128', '617-635-6456', '1215', '93', '98'),
(900, '350530', 'East Boston High', 'Public School', 'Principal', 'Phillip Brangiforte', '86 White Street', 'East Boston', '2128', '617-635-9896', '1491', '92', '99'),
(901, '350375', 'Edison K-8', 'Public School', 'Principal', 'Samantha Varano', '60 Glenmont Road', 'Brighton', '2135', '617-635-8436', '2941', '97', '98.6');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `remote_user_detection_ratio_model`
--

INSERT INTO `remote_user_detection_ratio_model` (`id`, `names`, `ratio`) VALUES
(45, 'Medical Emergency', '14.666666666666666'),
(46, 'Quarantine', '2.0'),
(47, 'Covid19 Test', '44.0'),
(48, 'No Covid19 Symptoms', '39.33333333333333');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_trained_covid19_transmission_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_trained_covid19_transmission_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Scholl_Code` varchar(300) NOT NULL,
  `names` varchar(300) NOT NULL,
  `Scholl_Type` varchar(300) NOT NULL,
  `Function1` varchar(300) NOT NULL,
  `Contact_Name` varchar(300) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Town` varchar(300) NOT NULL,
  `Zip` varchar(300) NOT NULL,
  `Phone` varchar(300) NOT NULL,
  `Number_Of_Children` varchar(300) NOT NULL,
  `Oxigen_level` varchar(300) NOT NULL,
  `Fever` varchar(300) NOT NULL,
  `Mitigating_Status` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1654 ;

--
-- Dumping data for table `remote_user_trained_covid19_transmission_model`
--

INSERT INTO `remote_user_trained_covid19_transmission_model` (`id`, `Scholl_Code`, `names`, `Scholl_Type`, `Function1`, `Contact_Name`, `Address`, `Town`, `Zip`, `Phone`, `Number_Of_Children`, `Oxigen_level`, `Fever`, `Mitigating_Status`) VALUES
(1504, '10505', 'Abington High', 'Public School', 'Principal', 'Teresa Sullivan-Cruz', '201 Gliniewicz Way', 'Abington', '2351', '781-982-2160', '6418', '75', '105', 'Medical Emergency'),
(1505, '10003', 'Beaver Brook Elementary School', 'Public School', 'Principal', 'Catherine Zinni', '1 Ralph Hamlin Lane', 'Abington', '2351', '781-982-2185', '5755', '89', '101', 'Covid19 Test'),
(1506, '10002', 'Center Elementary School', 'Public School', 'Principal', 'Lora Monachino', '201 Gliniewicz Way', 'Abington', '2351', '781-982-2195', '4518', '96', '98', 'No Covid19 Symptoms'),
(1507, '10405', 'Frolio Middle School', 'Public School', 'Principal', 'Matthew MacCurtain', '201 Gliniewicz Way', 'Abington', '2351', '781-982-2170', '2524', '92', '98.6', 'No Covid19 Symptoms'),
(1508, '10015', 'Woodsdale Elementary School', 'Public School', 'Principal', 'Jonathan Hawes', '128 Chestnut Street', 'Abington', '2351', '781-982-2180', '3728', '96', '99', 'No Covid19 Symptoms'),
(1509, '30025', 'Acushnet Elementary School', 'Public School', 'Principal', 'Susan Beck', '800 Middle Road', 'Acushnet', '2743', '508-998-0255', '1338', '87', '104', 'Covid19 Test'),
(1510, '30305', 'Albert F Ford Middle School', 'Public School', 'Principal', 'Michelle Silvia', '708 Middle Road', 'Acushnet', '2743', '508-998-0265', '2438', '76', '103', 'Medical Emergency'),
(1511, '50003', 'Agawam Early Childhood Center', 'Public School', 'Principal', 'Robin Fernandes', '108 Perry Lane', 'Agawam', '1001', '413-821-0598', '2792', '90', '99', 'Medical Emergency'),
(1512, '50505', 'Agawam High', 'Public School', 'Principal', 'Thomas Schnepp', '760 Cooper Street', 'Agawam', '1001', '413-821-0521', '3034', '67', '107', 'Medical Emergency'),
(1513, '50405', 'Agawam Junior High', 'Public School', 'Principal', 'Norman Robbins', '1305 Springfield St', 'Feeding Hills', '1030', '413-821-0561', '1861', '78', '104', 'Medical Emergency'),
(1514, '50020', 'Benjamin J Phelps', 'Public School', 'Principal', 'Noelle Colbert', '689 Main Street', 'Agawam', '1001', '413-821-0587', '3111', '89', '99', 'Medical Emergency'),
(1515, '50010', 'Clifford M Granger', 'Public School', 'Principal', 'Cheryl Salomao', '31 So. Westfield Street', 'Feeding Hills', '1030', '413-821-0581', '5305', '92', '98', 'Medical Emergency'),
(1516, '50030', 'James Clark School', 'Public School', 'Principal', 'Shelley Russell', '65 Oxford Street', 'Agawam', '1001', '413-821-0576', '4220', '91', '98.6', 'Medical Emergency'),
(1517, '50303', 'Roberta G. Doering School', 'Public School', 'Principal', 'Susan Federico', '68 Main Street', 'Agawam', '1001', '413-789-1400', '1409', '77', '107', 'Medical Emergency'),
(1518, '50025', 'Robinson Park', 'Public School', 'Principal', 'Nicholas Bernier', '65 Begley Street', 'Agawam', '1001', '413-821-0584', '2458', '91', '101', 'Medical Emergency'),
(1519, '70005', 'Amesbury Elementary', 'Public School', 'Principal', 'Walter Helliesen', '20 South Hampton Road', 'Amesbury', '1913', '978-388-3659', '4208', '96', '98', 'No Covid19 Symptoms'),
(1520, '70505', 'Amesbury High', 'Public School', 'Principal', 'Elizabeth McAndrews', '5 Highland Street', 'Amesbury', '1913', '978-388-4800', '3823', '93', '98.8', 'No Covid19 Symptoms'),
(1521, '70515', 'Amesbury Innovation High School', 'Public School', 'Principal', 'Eryn Maguire', '71 Friend Street', 'Amesbury', '1913', '978-388-8037', '5043', '96', '99', 'No Covid19 Symptoms'),
(1522, '70013', 'Amesbury Middle', 'Public School', 'Principal', 'Michael Curry', '220 Main Street', 'Amesbury', '1913', '978-388-0515', '2159', '93', '98.6', 'No Covid19 Symptoms'),
(1523, '70010', 'Charles C Cashman Elementary', 'Public School', 'Principal', 'Mary Charette', '193 Lions Mouth Road', 'Amesbury', '1913', '978-388-4407', '2343', '87', '101', 'Covid19 Test'),
(1524, '80009', 'Crocker Farm Elementary', 'Public School', 'Principal', 'Derek Shea', '280 West Street', 'Amherst', '1002', '413-362-1600', '5435', '98', '98.6', 'No Covid19 Symptoms'),
(1525, '80020', 'Fort River Elementary', 'Public School', 'Principal', 'Diane Chamberlain', '70 So East Street', 'Amherst', '1002', '413-362-1200', '1122', '89', '100', 'Covid19 Test'),
(1526, '80050', 'Wildwood Elementary', 'Public School', 'Principal', 'Nicholas Yaffe', '71 Strong Street', 'Amherst', '1002', '413-362-1400', '4518', '87', '103', 'Covid19 Test'),
(1527, '90505', 'Andover High', 'Public School', 'Principal', 'Philip Conrad', '80 Shawsheen Road', 'Andover', '1810', '978-247-5500', '3501', '94', '99', 'Covid19 Test'),
(1528, '90310', 'Andover West Middle', 'Public School', 'Principal', 'Rebecca Franks', '70 Shawsheen Road', 'Andover', '1810', '978-247-5400', '2519', '60', '108', 'Medical Emergency'),
(1529, '90003', 'Bancroft Elementary', 'Public School', 'Principal', 'Michelle Costa', '15 Bancroft Street', 'Andover', '1810', '978-247-9500', '3400', '67', '106', 'Medical Emergency'),
(1530, '90305', 'Doherty Middle', 'Public School', 'Principal', 'Robin Wilson', '50 Bartlet Street', 'Andover', '1810', '978-247-9400', '3095', '87', '105', 'Covid19 Test'),
(1531, '90010', 'Henry C Sanborn Elementary', 'Public School', 'Principal', 'Jason DiCarlo', '90 Lovejoy Road', 'Andover', '1810', '978-247-9700', '7417', '96', '99', 'No Covid19 Symptoms'),
(1532, '90004', 'High Plain Elementary', 'Public School', 'Principal', 'Pamela Lathrop', '333 High Plain Road', 'Andover', '1810', '978-247-8600', '2409', '91', '101', 'No Covid19 Symptoms'),
(1533, '90005', 'Shawsheen School', 'Public School', 'Principal', 'Carol Green', '18 Magnolia Avenue', 'Andover', '1810', '978-247-8200', '2825', '72', '110', 'Medical Emergency'),
(1534, '90020', 'South Elementary', 'Public School', 'Principal', 'Tracy Crowley', '55 Woburn Street', 'Andover', '1810', '978-247-9800', '4699', '90', '102', 'Covid19 Test'),
(1535, '90025', 'West Elementary', 'Public School', 'Principal', 'Elizabeth Roos', '58 Beacon Street', 'Andover', '1810', '978-247-5300', '4928', '76', '105', 'Medical Emergency'),
(1536, '90350', 'Wood Hill Middle School', 'Public School', 'Principal', 'Patrick Bucco', '11 Cross Street', 'Andover', '1810', '978-247-8800', '4595', '81', '101', 'Covid19 Test'),
(1537, '100505', 'Arlington High', 'Public School', 'Principal', 'Matthew Janger', '869 Mass Avenue', 'Arlington', '2476', '781-316-3591', '5941', '89', '99.8', 'Covid19 Test'),
(1538, '100010', 'Brackett', 'Public School', 'Principal', 'Stephanie Zerchykov', '66 Eastern Avenue', 'Arlington', '2476', '781-316-3705', '4140', '83', '99.7', 'Covid19 Test'),
(1539, '100025', 'Cyrus E Dallin', 'Public School', 'Principal', 'Thad Dingman', '185 Florence Avenue', 'Arlington', '2476', '781-316-3722', '5868', '86', '99.6', 'Covid19 Test'),
(1540, '100030', 'Hardy', 'Public School', 'Principal', 'Kristin Defrancisco', '52 Lake Street', 'Arlington', '2474', '781-316-3781', '2303', '80', '99.5', 'Covid19 Test'),
(1541, '100005', 'John A Bishop', 'Public School', 'Principal', 'Mark McAneny', '25 Columbia Road', 'Arlington', '2474', '781-316-3791', '5837', '90', '99', 'Covid19 Test'),
(1542, '100055', 'M Norcross Stratton', 'Public School', 'Principal', 'Michael Hanna', '180 Mountain Avenue', 'Arlington', '2474', '781-316-3754', '2139', '94', '99.7', 'Covid19 Test'),
(1543, '100038', 'Menotomy Preschool', 'Public School', 'Principal', 'Joyce Schlenger', '869 Massachusetts Avenue', 'Arlington', '2476', '781-316-3698', '2543', '84', '105', 'Quarantine'),
(1544, '100410', 'Ottoson Middle', 'Public School', 'Principal', 'Eileen Woods', '63 Acton Street', 'Arlington', '2476', '781-316-3745', '4519', '90', '101', 'Covid19 Test'),
(1545, '100045', 'Peirce', 'Public School', 'Principal', 'Karen Hartley', '85 Park Avenue Ext', 'Arlington', '2474', '781-316-3736', '2298', '98', '99', 'No Covid19 Symptoms'),
(1546, '100050', 'Thompson', 'Public School', 'Principal', 'Karen Donato', '187 Everett Street', 'Arlington', '2474', '781-316-3768', '1269', '97', '98', 'No Covid19 Symptoms'),
(1547, '140505', 'Ashland High', 'Public School', 'Principal', 'Kelley St. Coeur', '65 East Union St.', 'Ashland', '1721', '508-881-0177', '5699', '94', '97', 'No Covid19 Symptoms'),
(1548, '140405', 'Ashland Middle', 'Public School', 'Principal', 'David DiGirolamo', '87 West Union Street', 'Ashland', '1721', '508-881-0167', '3297', '91', '98.6', 'No Covid19 Symptoms'),
(1549, '140015', 'David Mindess', 'Public School', 'Principal', 'Michael Caira', '90 Concord Street', 'Ashland', '1721', '508-881-0166', '1523', '93', '98.6', 'No Covid19 Symptoms'),
(1550, '140010', 'Henry E Warren Elementary', 'Public School', 'Principal', 'Peter Regan', '73 Fruit Street', 'Ashland', '1721', '508-881-0188', '2417', '92', '98.6', 'No Covid19 Symptoms'),
(1551, '140005', 'William Pittaway Elementary', 'Public School', 'Principal', 'Patricia White', '75 Central Street', 'Ashland', '1721', '508-881-0160', '1325', '94', '98.6', 'No Covid19 Symptoms'),
(1552, '160001', 'A. Irvin Studley Elementary School', 'Public School', 'Principal', 'Joanne DiPalma', '299 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-2621', '5157', '87', '104', 'Covid19 Test'),
(1553, '160515', 'Attleboro Community Academy', 'Public School', 'Principal', 'William Runey', '100 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-5150', '2098', '89', '105', 'Covid19 Test'),
(1554, '160505', 'Attleboro High', 'Public School', 'Principal', 'William Runey', '100 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-5150', '5323', '91', '99', 'Covid19 Test'),
(1555, '160315', 'Cyril K. Brennan Middle School', 'Public School', 'Principal', 'Frederick Souza', '320 Rathbun Willard Drive', 'Attleboro', '2703', '508-222-6260', '998', '92', '99', 'Covid19 Test'),
(1556, '160008', 'Early Learning Center', 'Public School', 'Principal', 'Veronica Learned', '7 James St', 'Attleboro', '2703', '508-223-1563', '3949', '93', '98', 'Covid19 Test'),
(1557, '160045', 'Hill-Roberts Elementary School', 'Public School', 'Principal', 'Frank Rich', '80 Roy Avenue', 'Attleboro', '2703', '508-399-7560', '2342', '97', '98', 'No Covid19 Symptoms'),
(1558, '160040', 'Hyman Fine Elementary School', 'Public School', 'Principal', 'Patricia Martin', '790 Oak Hill Avenue', 'Attleboro', '2703', '508-222-1419', '7994', '89', '99', 'No Covid19 Symptoms'),
(1559, '160050', 'Peter Thacher Elementary School', 'Public School', 'Principal', 'Veronica Learned', '160 James Street', 'Attleboro', '2703', '508-226-4162', '5776', '92', '98', 'No Covid19 Symptoms'),
(1560, '160305', 'Robert J. Coelho Middle School', 'Public School', 'Principal', 'Andrew Boles', '99 Brown Street', 'Attleboro', '2703', '508-761-7551', '3498', '91', '100', 'No Covid19 Symptoms'),
(1561, '160035', 'Thomas Willett Elementary School', 'Public School', 'Principal', 'Jeffrey Cateon', '32 Watson Avenue', 'Attleboro', '2703', '508-222-0286', '3242', '77', '109', 'Medical Emergency'),
(1562, '160320', 'Wamsutta Middle School', 'Public School', 'Principal', 'Joseph Connor', '300 Locust Street', 'Attleboro', '2703', '508-223-1540', '1096', '91', '101', 'Medical Emergency'),
(1563, '170305', 'Auburn Middle', 'Public School', 'Principal', 'Joseph Gagnon', '9 West Street', 'Auburn', '1501', '508-832-7722', '5818', '96', '99', 'No Covid19 Symptoms'),
(1564, '170505', 'Auburn Senior High', 'Public School', 'Principal', 'Casey Handfield', '99 Auburn Street', 'Auburn', '1501', '508-832-7711', '2120', '93', '98', 'No Covid19 Symptoms'),
(1565, '170010', 'Bryn Mawr', 'Public School', 'Principal', 'Elizabeth Chamberland', '35 Swanson Road', 'Auburn', '1501', '508-832-7733', '3409', '96', '99', 'No Covid19 Symptoms'),
(1566, '170025', 'Pakachoag School', 'Public School', 'Principal', 'Jennifer Stanick', '110 Pakachoag Street', 'Auburn', '1501', '508-832-7788', '4718', '93', '98.6', 'No Covid19 Symptoms'),
(1567, '170030', 'Swanson Road Intermediate School', 'Public School', 'Principal', 'Susan Lopez', '10 Swanson Road', 'Auburn', '1501', '508-832-7744', '5826', '87', '103', 'Covid19 Test'),
(1568, '180510', 'Avon Middle High School', 'Public School', 'Principal', 'Dawn Stockwell', '287 West Main Street', 'Avon', '2322', '508-583-4822', '4900', '98', '98.6', 'No Covid19 Symptoms'),
(1569, '180010', 'Ralph D Butler', 'Public School', 'Principal', 'Darrin Reynolds', '1 Patrick Clark Drive', 'Avon', '2322', '508-587-7009', '4103', '89', '104', 'Covid19 Test'),
(1570, '200505', 'Barnstable High', 'Public School', 'Principal', 'Patrick Clark', '744 West Main Street', 'Hyannis', '2601', '508-790-6445', '2843', '87', '103', 'Covid19 Test'),
(1571, '200315', 'Barnstable Intermediate School', 'Public School', 'Principal', 'James Anderson', '895 Falmouth Road', 'Hyannis', '2601', '508-790-6460', '9346', '94', '100', 'Covid19 Test'),
(1572, '200050', 'Barnstable United Elementary School', 'Public School', 'Principal', 'Mary Sullivan', '730 Osterville West Barnstable Road', 'Marston Mills', '2648', '508-420-2272', '1939', '97', '98', 'No Covid19 Symptoms'),
(1573, '200010', 'Centerville Elementary', 'Public School', 'Principal', 'Matthew Scheufele', '658 Bay Ln', 'Centerville', '2632', '508-790-9890', '4924', '89', '103', 'Covid19 Test'),
(1574, '200001', 'Enoch Cobb Early Learning Center', 'Public School', 'Principal', 'Nicole Caucci', '77 Old Craigville Road', 'Hyannis', '2601', '508-790-6493', '3731', '92', '100', 'Covid19 Test'),
(1575, '200025', 'Hyannis West Elementary', 'Public School', 'Principal', 'Eleanor Amato', '549 West Main Street', 'Hyannis', '2601', '508-790-6480', '3518', '91', '99', 'Covid19 Test'),
(1576, '200005', 'West Barnstable Elementary', 'Public School', 'Principal', 'Karen Cloutier', '2463 Main St Route 6A', 'West Barnstable', '2668', '508-362-4949', '4624', '77', '107', 'Medical Emergency'),
(1577, '200045', 'West Villages Elementary School', 'Public School', 'Principal', 'Kirk Gibbons', '760 Osterville-West Barnstable Road', 'Marstons Mills', '2648', '508-420-1100', '2442', '91', '104', 'Medical Emergency'),
(1578, '230505', 'Bedford High', 'Public School', 'Principal', 'Heather Galante', '9 Mudge Way', 'Bedford', '1730', '781-275-1700', '3317', '96', '98', 'No Covid19 Symptoms'),
(1579, '230305', 'John Glenn Middle', 'Public School', 'Principal', 'Kevin Tracey', '99 McMahon Road', 'Bedford', '1730', '781-275-3201', '217', '93', '101', 'No Covid19 Symptoms'),
(1580, '230010', 'Lt Elezer Davis', 'Public School', 'Principal', 'Beth Benoit', '410 Davis Rd', 'Bedford', '1730', '781-275-6804', '6300', '96', '98', 'No Covid19 Symptoms'),
(1581, '230012', 'Lt Job Lane School', 'Public School', 'Principal', 'Robert Ackerman', '66 Sweetwater Avenue', 'Bedford', '1730', '781-275-7606', '6491', '86', '103', 'Covid19 Test'),
(1582, '240505', 'Belchertown High', 'Public School', 'Principal', 'Christine Vigneux', '142 Springfield Road', 'Belchertown', '1007', '413-323-9419', '2710', '80', '106', 'Medical Emergency'),
(1583, '240006', 'Chestnut Hill Community School', 'Public School', 'Principal', 'Jennifer Champagne', '59 State Street', 'Belchertown', '1007', '413-323-0437', '4542', '90', '101', 'Covid19 Test'),
(1584, '240005', 'Cold Spring', 'Public School', 'Principal', 'Andrea Mastalerz', '57 South Main Street', 'Belchertown', '1007', '413-323-0428', '2596', '94', '98', 'Covid19 Test'),
(1585, '240025', 'Jabish Middle School', 'Public School', 'Principal', 'Thomas Ruscio', '62 North Washington Street', 'Belchertown', '1007', '413-323-0433', '4890', '84', '103', 'Quarantine'),
(1586, '240018', 'Swift River Elementary', 'Public School', 'Principal', 'Robert Kuhn', '57 State Street', 'Belchertown', '1007', '413-323-0472', '4597', '90', '99', 'Quarantine'),
(1587, '250003', 'Bellingham Early Childhood Center', 'Public School', 'Principal', 'Pamela Fuhrman', '338 Hartford Avenue', 'Bellingham', '2019', '508-966-2512', '4811', '98', '98', 'No Covid19 Symptoms'),
(1588, '250505', 'Bellingham High School', 'Public School', 'Principal', 'Lucas Giguere', '60 Blackstone Street', 'Bellingham', '2019', '508-966-3761', '1699', '97', '98', 'No Covid19 Symptoms'),
(1589, '250315', 'Bellingham Memorial School', 'Public School', 'Principal', 'Jeffrey Croteau', '130 Blackstone Street', 'Bellingham', '2019', '508-883-2330', '4311', '94', '99', 'No Covid19 Symptoms'),
(1590, '250510', 'Keough Memorial Academy', 'Public School', 'Principal', 'David Cutler', '60 Harpin Street', 'Bellingham', '2019', '508-883-5403', '2099', '91', '99.5', 'No Covid19 Symptoms'),
(1591, '250020', 'South Elementary', 'Public School', 'Principal', 'Judith Lamarre', '70 Harpin Street', 'Bellingham', '2019', '508-883-8001', '3242', '93', '99.6', 'No Covid19 Symptoms'),
(1592, '250025', 'Stall Brook', 'Public School', 'Principal', 'Brenda Maurao', '342 Hartford Avenue', 'Bellingham', '2019', '508-966-0451', '1998', '92', '98.6', 'No Covid19 Symptoms'),
(1593, '260505', 'Belmont High', 'Public School', 'Principal', 'Dan Richards', '221 Concord Avenue', 'Belmont', '2478', '617-993-5901', '3379', '94', '98.1', 'No Covid19 Symptoms'),
(1594, '260015', 'Daniel Butler', 'Public School', 'Principal', 'Danielle Betancourt', '90 White Street', 'Belmont', '2478', '617-993-5550', '3416', '87', '102', 'Covid19 Test'),
(1595, '260010', 'Mary Lee Burbank', 'Public School', 'Principal', 'Tricia Clifford', '266 School Street', 'Belmont', '2478', '617-993-5500', '4904', '89', '104', 'Covid19 Test'),
(1596, '260035', 'Roger E Wellington', 'Public School', 'Principal', 'Amy Spangler', '121 Orchard Street', 'Belmont', '2478', '617-993-5600', '397', '91', '102', 'Covid19 Test'),
(1597, '260005', 'Winn Brook', 'Public School', 'Principal', 'Janet Carey', '97 Waterhouse Rd', 'Belmont', '2478', '617-993-5700', '4322', '92', '100', 'Covid19 Test'),
(1598, '260305', 'Winthrop L Chenery Middle', 'Public School', 'Principal', 'Michael McAllister', '95 Washington Street', 'Belmont', '2478', '617-993-5800', '2808', '93', '99', 'Covid19 Test'),
(1599, '270010', 'Berkley Community School', 'Public School', 'Principal', 'Jennifer Francisco', '59 South Main Street', 'Berkley', '2779', '508-822-9550', '4199', '97', '99.8', 'Covid19 Test'),
(1600, '270305', 'Berkley Middle School', 'Public School', 'Principal', 'Kimberly Hebert', '21 North Main Street', 'Berkley', '2779', '508-884-9434', '3431', '89', '103', 'Covid19 Test'),
(1601, '280005', 'Berlin Memorial', 'Public School', 'Principal', 'John Campbell', '34 South Street', 'Berlin', '1503', '978-838-2417', '4494', '92', '98', 'Covid19 Test'),
(1602, '300055', 'Ayers/Ryal Side School', 'Public School', 'Principal', 'Debra Lay', '40 Woodland Avenue', 'Beverly', '1915', '978-921-6116', '1562', '93', '99', 'Covid19 Test'),
(1603, '300505', 'Beverly High', 'Public School', 'Principal', 'Elizabeth Taylor', '100 Sohier Rd', 'Beverly', '1915', '978-921-6132', '3067', '96', '98', 'No Covid19 Symptoms'),
(1604, '300305', 'Briscoe Middle', 'Public School', 'Principal', 'Matthew Poska', '7 Sohier Rd', 'Beverly', '1915', '978-921-6103', '4122', '93', '99.5', 'No Covid19 Symptoms'),
(1605, '300010', 'Centerville Elementary', 'Public School', 'Principal', 'Julie Smith', '17 Hull Street', 'Beverly', '1915', '978-921-6120', '3216', '87', '104', 'Covid19 Test'),
(1606, '300015', 'Cove Elementary', 'Public School', 'Principal', 'Lisa Fiandaca', '20 Eisenhower Avenue', 'Beverly', '1915', '978-921-6121', '6253', '98', '99', 'No Covid19 Symptoms'),
(1607, '300033', 'Hannah Elementary', 'Public School', 'Principal', 'Gabrielle Montevecchi', '41R Brimbal Avenue', 'Beverly', '1915', '978-921-6126', '4379', '89', '103', 'Covid19 Test'),
(1608, '300002', 'McKeown School', 'Public School', 'Principal', 'Stacy Bucyk', '70 Balch Street', 'Beverly', '1915', '978-921-6100', '3189', '87', '102', 'Covid19 Test'),
(1609, '300040', 'North Beverly Elementary', 'Public School', 'Principal', 'Erin Brown', '48 Putnam Street', 'Beverly', '1915', '978-921-6130', '8862', '94', '99', 'Covid19 Test'),
(1610, '310505', 'Billerica Memorial High School', 'Public School', 'Principal', 'Thomas Murphy', '35 River Street', 'Billerica', '1821', '978-528-8712', '9616', '97', '99', 'No Covid19 Symptoms'),
(1611, '310030', 'Eugene C Vining', 'Public School', 'Principal', 'Christine Gibelli', '121 Lexington Rd', 'Billerica', '1821', '978-528-8630', '8402', '89', '105', 'Covid19 Test'),
(1612, '310007', 'Frederick J Dutile', 'Public School', 'Principal', 'Christine Balzotti', '10 Biagiotti Way', 'North Billerica', '1862', '978-528-8530', '8621', '92', '100', 'Covid19 Test'),
(1613, '310026', 'Hajjar Elementary', 'Public School', 'Principal', 'Elizabeth Devine', '59 Rogers Street', 'Billerica', '1862', '978-528-8550', '5238', '91', '98.8', 'Covid19 Test'),
(1614, '310012', 'John F Kennedy', 'Public School', 'Principal', 'David Marble', '20 Kimbrough Rd', 'Billerica', '1821', '978-528-8570', '3315', '77', '105', 'Medical Emergency'),
(1615, '310310', 'Locke Middle', 'Public School', 'Principal', 'Anthony Garas', '110 Allen Rd', 'Billerica', '1821', '978-528-8650', '8258', '91', '100', 'Medical Emergency'),
(1616, '310305', 'Marshall Middle School', 'Public School', 'Principal', 'Michael Rossi', '15 Floyd Street', 'Billerica', '1821', '978-528-8670', '1497', '96', '98', 'No Covid19 Symptoms'),
(1617, '310015', 'Parker', 'Public School', 'Principal', 'Suzanne Sullivan', '52 River Street', 'Billerica', '1821', '978-528-8610', '3946', '93', '99', 'No Covid19 Symptoms'),
(1618, '310005', 'Thomas Ditson', 'Public School', 'Principal', 'Victoria Hatem', '39 Cook Street', 'Billerica', '1821', '978-528-8510', '2306', '96', '98.6', 'No Covid19 Symptoms'),
(1619, '350541', 'Another Course To College', 'Public School', 'Principal', 'Michele Pellam', '612 Metropolitan Av', 'Hyde Park', '2136', '617-635-8865', '2619', '86', '105', 'Covid19 Test'),
(1620, '350003', 'Baldwin Early Learning Center', 'Public School', 'Principal', 'Tavia Mead', '121 Corey Road', 'Brighton', '2135', '617-635-8409', '4208', '80', '101', 'Covid19 Test'),
(1621, '350021', 'Beethoven', 'Public School', 'Principal', 'Edward Puliafico', '5125 Washington Street', 'West Roxbury', '2132', '617-635-8149', '3343', '89', '104', 'Covid19 Test'),
(1622, '350390', 'Blackstone', 'Public School', 'Principal', 'Jamel Adkins-sharif', '380 Shawmut Avenue', 'Boston', '2118', '617-635-8471', '2531', '83', '101', 'Covid19 Test'),
(1623, '350548', 'Boston Adult Academy', 'Public School', 'Principal', 'Benjamin Helfat', '20 Church St', 'Back Bay', '2116', '617-635-1542', '6020', '86', '107', 'Covid19 Test'),
(1624, '350546', 'Boston Arts Academy', 'Public School', 'Principal', 'Anne Clark', '174 Ipswich Street', 'Boston', '2215', '617-635-6470', '3336', '80', '109', 'Medical Emergency'),
(1625, '350755', 'Boston Collaborative High School', 'Public School', 'Principal', 'Sherri Neasman', '60 Hawthorne St', 'Roslindale', '2131', '617-635-8035', '3249', '90', '100', 'Covid19 Test'),
(1626, '350558', 'Boston Community Leadership Academy', 'Public School', 'Principal', 'Francine Locker', '655 Metropolitan Ave', 'Hyde Park', '2136', '617-635-8937', '2409', '94', '99', 'Covid19 Test'),
(1627, '350507', 'Boston International High School', 'Public School', 'Principal', 'Thomas King', '100 Maxwell St', 'Dorchester', '2124', '617-635-9373', '1699', '84', '102', 'Covid19 Test'),
(1628, '350560', 'Boston Latin', 'Public School', 'Principal', 'Rachel Skerritt', '78 Avenue Louis Pasteur', 'Boston', '2115', '617-635-8895', '3216', '90', '103.4', 'Covid19 Test'),
(1629, '350545', 'Boston Latin Academy', 'Public School', 'Principal', 'Chimdi Uchendu', '205 Townsend Street', 'Dorchester', '2121', '617-635-9957', '6000', '98', '98.6', 'No Covid19 Symptoms'),
(1630, '350012', 'Boston Teachers Union School', 'Public School', 'Principal', 'Lindsay Chaves', '25 Walk Hill Street', 'Jamaica Plain', '2130', '617-635-7717', '1734', '97', '98.6', 'No Covid19 Symptoms'),
(1631, '350505', 'Brighton High', 'Public School', 'Principal', 'Robert Rametti', '25 Warren Street', 'Brighton', '2135', '617-635-9873', '8051', '94', '98.6', 'No Covid19 Symptoms'),
(1632, '350036', 'Carter Developmental Center', 'Public School', 'Principal', 'Mark O''connor', '396 Northampton Street', 'Boston', '2118', '617-635-9832', '8500', '91', '98.6', 'No Covid19 Symptoms'),
(1633, '350054', 'Charles H Taylor', 'Public School', 'Principal', 'Jennifer Marks', '1060 Morton Street', 'Mattapan', '2126', '617-635-8731', '6650', '93', '98.6', 'No Covid19 Symptoms'),
(1634, '350052', 'Charles Sumner', 'Public School', 'Principal', 'Catherine MacCuish', '15 Basile Street', 'Roslindale', '2131', '617-635-8131', '428', '92', '98.6', 'No Covid19 Symptoms'),
(1635, '350515', 'Charlestown High', 'Public School', 'Principal', 'William Thomas', '240 Medford Street', 'Charlestown', '2129', '617-635-9914', '2600', '94', '98.6', 'No Covid19 Symptoms'),
(1636, '350430', 'Clarence R Edwards Middle', 'Public School', 'Principal', 'Laryssa Doherty', '28 Walker Street', 'Charlestown', '2129', '617-635-8516', '9546', '87', '101', 'Covid19 Test'),
(1637, '350518', 'Community Academy', 'Public School', 'Principal', 'Rayna Briceno', '25 Glen Road', 'Jamaica Plain', '2130', '617-635-8950', '8264', '89', '109', 'Covid19 Test'),
(1638, '350581', 'Community Academy of Science and Health', 'Public School', 'Principal', 'Robin Lee', '11 Charles Street', 'Dorchester', '2122', '617-635-8950', '1898', '91', '99', 'Covid19 Test'),
(1639, '350020', 'Curley K-8 School', 'Public School', 'Principal', 'Katherine Grassa', '493 Centre St.', 'Jamaica Plain', '2130', '617-635-8176', '3119', '92', '98', 'Covid19 Test'),
(1640, '350062', 'Curtis Guild', 'Public School', 'Principal', 'Karen McCarthy', '195 Leyden Street', 'East Boston', '2128', '617-635-8523', '5155', '93', '99.7', 'Covid19 Test'),
(1641, '350066', 'Dante Alighieri Montessori School', 'Public School', 'Principal', 'Glenda Colon', '37 Gove Street', 'East Boston', '2128', '617-635-8529', '6933', '97', '98.7', 'No Covid19 Symptoms'),
(1642, '350072', 'David A Ellis', 'Public School', 'Principal', 'Cynthia Jacobs', '302 Walnut Avenue', 'Roxbury', '2119', '617-635-8257', '2607', '89', '102', 'Covid19 Test'),
(1643, '350074', 'Dearborn', 'Public School', 'Principal', 'Lisa Gilbert-Smith', '60 Washington St', 'Dorchester', '2121', '617-635-8412', '2833', '92', '100', 'Covid19 Test'),
(1644, '350077', 'Dennis C Haley', 'Public School', 'Principal', 'Kathleen Sullivan', '570 American Legion Highway', 'Roslindale', '2131', '617-635-8169', '1116', '91', '99', 'Covid19 Test'),
(1645, '350080', 'Donald Mckay', 'Public School', 'Principal', 'Jordan Weymer', '122 Cottage Street', 'East Boston', '2128', '617-635-8510', '2801', '84', '101', 'Covid19 Test'),
(1646, '350651', 'Dorchester Academy', 'Public School', 'Principal', 'Melissa Malone Sanjeh', '11 Charles St', 'Dorchester', '2125', '617-635-9730', '2029', '90', '102', 'Covid19 Test'),
(1647, '350008', 'Dr. Catherine Ellison-Rosa Parks Early Ed School', 'Public School', 'Principal', 'Benjamin Rockoff', '108 Babson Street', 'Mattapan', '2126', '617-635-7680', '2805', '98', '98.6', 'No Covid19 Symptoms'),
(1648, '350266', 'Dr. William Henderson Lower', 'Public School', 'Principal', 'Patricia Lampron', '1669 Dorchester Avenue', 'Dorchester', '2122', '617-635-8725', '2115', '97', '98.6', 'No Covid19 Symptoms'),
(1649, '350426', 'Dr. William Henderson Upper', 'Public School', 'Principal', 'Patricia Lampron', '18 Croftland Av', 'Dorchester', '2124', '617-635-6365', '4193', '94', '98.6', 'No Covid19 Symptoms'),
(1650, '350006', 'ELC - West Zone', 'Public School', 'Principal', 'Jean Larrabee', '200 Heath Street', 'Jamaica Plain', '2130', '617-635-8275', '2229', '91', '100', 'No Covid19 Symptoms'),
(1651, '350009', 'East Boston Early Childhood Center', 'Public School', 'Principal', 'Olga Frechon', '135 Grove Street', 'East Boston', '2128', '617-635-6456', '1215', '93', '98', 'No Covid19 Symptoms'),
(1652, '350530', 'East Boston High', 'Public School', 'Principal', 'Phillip Brangiforte', '86 White Street', 'East Boston', '2128', '617-635-9896', '1491', '92', '99', 'No Covid19 Symptoms'),
(1653, '350375', 'Edison K-8', 'Public School', 'Principal', 'Samantha Varano', '60 Glenmont Road', 'Brighton', '2135', '617-635-8436', '2941', '97', '98.6', 'No Covid19 Symptoms');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
