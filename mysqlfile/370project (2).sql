-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 04:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_name` varchar(50) NOT NULL,
  `admin_ID` varchar(10) NOT NULL,
  `hos_name` varchar(200) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_name`, `admin_ID`, `hos_name`, `password`) VALUES
('Rafee Rokon', 'A-01', 'United Hospital Limited', 'test-1'),
('Ahmed Hadi', 'A-02', 'Central Hospital Limited', 'test-2'),
('Shafee Ibne Rokon', 'A-03', 'City Hospital & Diagnostic Center', 'test-3'),
('Fiana Nilhat Faruquee', 'A-04', 'Impulse Hospital', 'test-4'),
('Fahim Redwan', 'A-05', 'Square Hospitals Ltd.', 'test-5'),
('Mahmudul Hasan', 'A-06', 'BIRDEM General Hospital', 'test-6'),
('Abrar Prince', 'A-07', 'Delta Medical Center Ltd        ', 'test-7'),
('Mashrur Hossain', 'A-08', 'Dhaka Community Medical College and Hospital', 'test-8'),
('Md. Polash Mia', 'A-09', 'Royal Hospital (Pvt.) Limited', 'test-9'),
('Ahmed Wasi', 'A-10', 'National Hospital Chattogram and Sigma Lab Ltd.', 'test-10'),
('Ahmed Anwar', 'A-11', 'Chattogram Maa-O-Shishu Hospital', 'test-11'),
('Shushmoy Saha', 'A-12', 'Max Hospital Chittagong', 'test-12'),
('Nahian Nirjhar', 'A-13', 'Rajshahi Model Hospital', 'test-13'),
('Muntasir Ahmed Ador', 'A-14', 'Zamzam Islami Hospital', 'test-14'),
('Nushraq Nawer', 'A-15', 'Mymensingh Union Specialized Hospital Limited', 'test-15'),
('Rubaba Rashid', 'A-16', 'Nexus Hospitals Bangladesh', 'test-16'),
('Kashfiq Ratul', 'A-17', 'Anwer Khan Modern Medical College Hospital', 'test-17'),
('Nabil Ahammed', 'A-18', 'Khulna Sadar Hospital', 'test-18'),
('Zubair Ahmed', 'A-19', 'Khulna City Medical College Hospital', 'test-19'),
('Dia Borsha ', 'A-20', 'Khulna Medical College Hospital', 'test-20'),
('Kader Kader', 'A-21', 'Green Life Hospital', 'test-21'),
('Arafatur Raheeb', 'A-22', 'Comfort Hospital', 'test-22'),
('Akila Anwar', 'A-23', 'ABC Hospital', 'test-23');

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
(25, 'Can add users', 7, 'add_users'),
(26, 'Can change users', 7, 'change_users'),
(27, 'Can delete users', 7, 'delete_users'),
(28, 'Can view users', 7, 'view_users');

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
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(50) DEFAULT NULL,
  `dept_ID` varchar(10) NOT NULL,
  `treatment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `dept_ID`, `treatment`) VALUES
('Neuro Medicine', 'd-01', 'None'),
('Endocrinology', 'd-02', 'None'),
('Respiratory/Chest Medicine', 'd-03', 'None'),
('Cardiology', 'd-04', 'None'),
('Gastroenterology', 'd-05', 'None'),
('Nephrology', 'd-06', 'None'),
('Dermatology', 'd-07', 'None'),
('Psychiatry', 'd-08', 'None'),
('Oncology', 'd-09', 'None'),
('Paediatric Medicine', 'd-10', 'None'),
('Internal Medicine', 'd-11', 'None'),
('Gynae', 'd-12', 'None'),
('Obstetrics', 'd-13', 'None'),
('General Surgery', 'd-14', 'None'),
('Neuro Surgery', 'd-15', 'None'),
('Ophthalmology', 'd-16', 'None'),
('Head Neck and ENT', 'd-17', 'None'),
('Thoracic Surgery', 'd-18', 'None'),
('Urology', 'd-19', 'None'),
('Vascular Surgery', 'd-20', 'None'),
('Orthopaedics', 'd-21', 'None'),
('Paediatric Surgery', 'd-22', 'None');

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'login', 'users'),
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
(1, 'contenttypes', '0001_initial', '2022-08-21 08:26:35.245954'),
(2, 'auth', '0001_initial', '2022-08-21 08:26:35.747941'),
(3, 'admin', '0001_initial', '2022-08-21 08:26:35.862847'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-21 08:26:35.872417'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-21 08:26:35.883372'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-21 08:26:35.937128'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-21 08:26:35.987086'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-21 08:26:36.002903'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-21 08:26:36.013873'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-21 08:26:36.054328'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-21 08:26:36.058286'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-21 08:26:36.069280'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-21 08:26:36.096205'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-21 08:26:36.114166'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-21 08:26:36.136100'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-21 08:26:36.145722'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-21 08:26:36.164966'),
(18, 'login', '0001_initial', '2022-08-21 08:28:13.281284'),
(19, 'sessions', '0001_initial', '2022-08-21 08:28:13.313551');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_name` varchar(50) NOT NULL,
  `license_ID` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `experience` varchar(20) DEFAULT NULL,
  `fees` int(10) NOT NULL,
  `chamber` mediumtext NOT NULL,
  `designation` varchar(50) NOT NULL,
  `dept_ID` varchar(10) NOT NULL,
  `hos_name` varchar(200) NOT NULL,
  `ratings` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_name`, `license_ID`, `email`, `experience`, `fees`, `chamber`, `designation`, `dept_ID`, `hos_name`, `ratings`) VALUES
('DR. GM MOKBUL HOSSAIN', 'dr-0001', 'mokbul123@gmail.com', '20', 1000, 'United hospital chamber: Room-301, 3rd floor, Dhaka; Personal Chamber: House-46, Road-10, Sector-9, Uttara, Dhaka', 'Assistant Professor', 'd-14', 'United Hospital Limited', '3'),
('DR. A.K.M AKRAMUL HAQUE', 'dr-0002', 'akramul09@gmail.com', '10', 500, 'Central hospital chamber: Room-303 3rd floor,  Dhaka; Personal Chamber: House-23, Road-10, Gulshan-2,  Dhaka', 'Senior Consultant', 'd-14', 'Central Hospital Limited', '4.25'),
('DR. KAZI ABUL HASAN', 'dr-0003', 'abul_hasan@gmail.com', '5', 300, 'City hospital chamber: Room-102, 1st floor, Dhaka; Personal Chamber: House-21, Road-12, Mirpur-2, Dhaka', 'Consultant', 'd-14', 'City Hospital & Diagnostic Center', '5'),
('DR. LUTFOR RAHMAN', 'dr-0004', 'lutforrh@gmail.com', '10', 600, 'Impulse hospital chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Banani, Dhaka', 'Senior Consultant', 'd-14', 'Impulse Hospital', '2'),
('DR. MD. ZULFIQUR HAIDER', 'dr-0005', 'zulfiq_haider@gmail.com', '15', 500, 'Square Hospital chamber: Room-508, 5th floor,Dhaka;Personal Chamber: House-12,Road -8, Dhanmondi,Dhaka', 'Senior Consultant', 'd-14', 'Square Hospitals Ltd.', '1'),
('PROF. DR. MUNSHI MD. MUJIBUR RAHMAN ', 'dr-0006', 'munshimujib71@gmail.com', '25', 400, 'Birdem Chamber:Room-102, 1st floor, Dhaka; Personal Chamber: House-2, Road-12, Mirpur-10, Dhaka', 'Professor', 'd-14', 'BIRDEM General Hospital', '4'),
('DR. SOHAIL AHMED', 'dr-0007', 'sohail78@gmail.com', '12', 800, 'Delta medical Chamber: Room-207, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-14', 'Delta Medical Center Ltd', '5'),
('DR. JAHANGIR KABIR', 'dr-0008', 'jahangirkabirboss@gmail.com', '13', 900, 'Dhaka Community Medical Chamber:Room-704, 7th floor, Dhaka; Personal Chamber: House-09, Road-10, Mouchak, Dhaka', 'Senior Consultant', 'd-14', 'Dhaka Community Medical College and Hospital', '3.045'),
('DR. MD. ZAKIR HOSSAIN', 'dr-0009', 'zakir08@gmail.com', '15', 500, 'Royal Hospital Chamber:Room-324, 3nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-14', 'Royal Hospital (Pvt.) Limited', '3.05'),
('PROF. DR. ASIT BARAN ADHIKARY', 'dr-0010', 'prof_asit@gmail.com', '26', 900, 'National Hospital Chattogram Chamber:Room-254, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Kalabagan, Dhaka', 'Professor', 'd-14', 'National Hospital Chattogram and Sigma Lab Ltd.', '4'),
('DR. MD. LOKAMN HOSSAIN', 'dr-0011', 'dr_lokman@gmail.com', '22', 500, 'Chattogram Maa-O-Shishu Hospital Chamber:Room-609, 6th floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Assistant Professor', 'd-15', 'Chattogram Maa-O-Shishu Hospital', '2.6'),
('DR. MD. SHAUKAT ALI', 'dr-0012', 'shaukat20@gmail.com', '16', 700, 'Max Hospital Chittagong Chamber:Room-505, 5th floor, Dhaka; Personal Chamber: House-09, Road-10, sector-11,Uttara, Dhaka', 'Senior Consultant', 'd-15', 'Max Hospital Chittagong', '3.33'),
('DR ANWARUL ANAM KIBRIA ', 'dr-0013', 'anwar_anam@gmail.com', '18', 400, 'Rajshahi Model Hospital Chamber:Room-105, Ist floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Assistant Professor', 'd-15', 'Rajshahi Model Hospital', '3'),
('PROF. DR. COL. MD. ABDUL HANNAN', 'dr-0014', 'dr_hannan@gmail.com', '27', 500, 'Zamzam Islami Hospital Chamber:Room-312, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Khilgaon, Dhaka', 'Professor', 'd-15', 'Zamzam Islami Hospital', '4.5'),
('DR. MD, ZAHIRUL ISLAM ', 'dr-0015', 'zahir_dr@gmail.com', '20', 300, 'Mymensingh Union Specialized Hospital Limited Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Moghbazar, Dhaka', 'Assistant Professor', 'd-15', 'Mymensingh Union Specialized Hospital Limited', '5'),
('DR. MD. ABDULLAH AL MAMUN', 'dr-0016', 'ab_mamun@gmail.com', '10', 600, 'Nexus Hospitals Bangladesh Chamber:Room-266, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Lalmatia, Dhaka', 'Senior Consultant', 'd-15', 'Nexus Hospitals Bangladesh', '2'),
('DR.  JAHANGIR HAIDER KHAN', 'dr-0017', 'j_haider@gmail.com', '5', 1500, 'Anwer Khan Modern Medical College Hospital Chamber:Room-208, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Eskaton, Dhaka', 'Consultant', 'd-15', 'Anwer Khan Modern Medical College Hospital ', '3.0'),
('DR. KHALIFA MAHMUD TARIK', 'dr-0018', 'kh_tarik76@gmail.com', '10', 400, 'Khulna Sadar Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Baily Road, Dhaka', 'Senior Consultant', 'd-15', 'Khulna Sadar Hospital', '4'),
('DR. MD. SULTAN SARWAR PARVEZ', 'dr-0019', 'sultan_parvez@gmail.com', '15', 800, 'Khulna City Medical College Hospital Chamber:Room-302, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Baily Road, Dhaka', 'Senior Consultant', 'd-15', 'Khulna City Medical College Hospital', '5'),
('DR. SERAJUS SALEKIN ', 'dr-0020', 'dr_serajus@gmail.com', '21', 900, 'Khulna Medical College Hospital  Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Eskaton, Dhaka', 'Assistant Professor', 'd-15', 'Khulna Medical College Hospital', '4.09'),
('DR. AKHTER HAMID PARVEZ', 'dr-0021', 'hamid_parvez@gmail.com', '19', 500, 'United Hospital Limited  Chamber:Room-214, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Khilkhet, Dhaka', 'Assistant Professor', 'd-16', 'United Hospital Limited', '3.05'),
('DR. MD. AKHTARUN RAHMAN JOARDER', 'dr-0022', 'dr_joarder80@gmail.com', '17', 900, 'Central Hospital Limited  Chamber:Room-224, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Polashi, Dhaka', 'Assistant Professor', 'd-16', 'Central Hospital Limited', '4'),
('DR. M. AKHTER HOSSAIN ', 'dr-0023', 'dr_akhter43@gmail.com', '18', 500, 'City Hospital & Diagnostic Center Chamber:Room-234, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mirpur-2, Dhaka', 'Assistant Professor', 'd-16', 'City Hospital & Diagnostic Center', '2.6'),
('PROF. DR. MD. SHAMSUL  ALAM', 'dr-0024', 'prof_shamsulalam@gmail.com', '30', 700, 'Impulse Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Professor', 'd-16', 'Impulse Hospital', '3.33'),
('DR. AMIRUL ISLAM BHUYAN', 'dr-0025', 'dr_amirulbhuiyan@gmail.com', '16', 400, 'Square Hospitals Ltd. Chamber:Room-304, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Mohakhali, Dhaka', 'Senior Consultant', 'd-16', 'Square Hospitals Ltd.', '3'),
('DR. REZAUL HASSSAN ', 'dr-0026', 'rezaul_87@gmail.com', '10', 500, 'BIRDEM General Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mohakhali, Dhaka', 'Senior Consultant', 'd-16', 'BIRDEM General Hospital', '4.5'),
('DR. MD. AKTER HAMID ', 'dr-0027', 'dr_akterhamid@gmail.com', '15', 300, 'Delta Medical Center Ltd Chamber:Room-304, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Mohakhali, Dhaka', 'Senior Consultant', 'd-16', 'Delta Medical Center Ltd', '5'),
('DR. HEEMEL SAHA', 'dr-0028', 'heemel_saha56@gmail.com', '21', 600, 'Dhaka Community Medical College and Hospital Chamber:Room-404, 4th floor, Dhaka; Personal Chamber: House-19, Road-17, Moghbazar, Dhaka', 'Assistant Professor', 'd-16', 'Dhaka Community Medical College and Hospital', '2'),
('DR. ABDULLAH AHMED SOLAIMAN', 'dr-0029', 'ab_ahmed70@gmail.com', '19', 1500, 'Royal Hospital (Pvt.) Limited Chamber:Room-105, Ist floor, Dhaka; Personal Chamber: House-09, Road-10, Rajarbagh, Dhaka', 'Assistant Professor', 'd-16', 'Royal Hospital (Pvt.) Limited', '1'),
('PROF. DR. MD. ABID HOSSAIN MOLLAH', 'dr-0030', 'prof_abidmollah@gmail.com', '25', 400, 'National Hospital Chattogram and Sigma Lab Ltd. Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mouchak, Dhaka', 'Professor', 'd-16', 'National Hospital Chattogram and Sigma Lab Ltd.', '4'),
('DR. AHMED NAZMUL ANAM ', 'dr-0031', 'nazmulanam45@gmail.com', '18', 800, 'Chattogram Maa-O-Shishu Hospital Chamber:Room-224, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Moghbazar, Dhaka', 'Assistant Professor', 'd-17', 'Chattogram Maa-O-Shishu Hospital', '5'),
('PROF. DR. NARAYAN CHANDRA SAHA', 'dr-0032', 'narayanchandrasaha10@gmail.com', '25', 900, 'Max Hospital Chittagong Chamber:Room-223, 2nd floor, Dhaka; Personal Chamber: House-01, Road-1, Panthapath, Dhaka', 'Professor', 'd-17', 'Max Hospital Chittagong', '4.09'),
('PROF. DR. MD. ABDUL MANNAN', 'dr-0033', 'ab_mannan@gmail.com', '34', 500, 'Rajshahi Model Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-8, Road-17, Moghbazar, Dhaka', 'Professor', 'd-17', 'Rajshahi Model Hospital', '3.05'),
('DR. G M. JAHANGIR HOSSAIN', 'dr-0034', 'jahangir123@gmail.com', '16', 900, 'Zamzam Islami Hospital Chamber:Room-208, 2nd floor, Dhaka; Personal Chamber: House-05, Road-13, Mouchak, Dhaka', 'Senior Consultant', 'd-17', 'Zamzam Islami Hospital', '4'),
('DR. A.B.M. RUHUL AMIN', 'dr-0035', 'ruhul_amin78@gmail.com', '18', 500, 'Mymensingh Union Specialized Hospital Limited Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-07, Road-10, Mouchak, Dhaka', 'Assistant Professor', 'd-17', 'Mymensingh Union Specialized Hospital Limited', '2.6'),
('DR. ASIF AHMED KABIR', 'dr-0036', 'asif_kabir54@gmail.com', '15', 700, 'Nexus Hospitals Bangladesh Chamber:Room-207, 2nd floor, Dhaka; Personal Chamber: House-02, Road-10, Mouchak, Dhaka', 'Senior Consultant', 'd-17', 'Nexus Hospitals Bangladesh', '3.33'),
('PROF. DR. F H SIRAJI', 'dr-0037', 'siraji124@gmail.com', '28', 400, 'Anwer Khan Modern Medical College Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-03, Road-10, Mouchak, Dhaka', 'Professor', 'd-17', 'Anwer Khan Modern Medical College Hospital ', '3'),
('DR. S. M. IDRISSI ALI', 'dr-0038', 'idrissiali98@gmail.com', '12', 500, 'Khulna Sadar Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Banani, Dhaka', 'Senior Consultant', 'd-17', 'Khulna Sadar Hospital', '4.5'),
('DR. ABDUL ALI', 'dr-0039', 'ab_ali78@gmail.com', '13', 300, 'Khulna City Medical College Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-08, Road-13, Moghbazar, Dhaka', 'Senior Consultant', 'd-17', 'Khulna City Medical College Hospital', '5'),
('PROF. DR. ZAFAR A. LATIF', 'dr-0040', 'prof_zafar23@gmail.com', '29', 600, 'Khulna Medical College Hospital  Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-12, Gulshan-2, Dhaka', 'Professor', 'd-17', 'Khulna Medical College Hospital', '2'),
('DR. INDRAJIT PRASAD', 'dr-0041', 'indra_prasad@gmail.com', '20', 1500, 'United Hospital Limited  Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-19, Road-13, Shahbagh, Dhaka', 'Assistant Professor', 'd-18', 'United Hospital Limited', '1'),
('DR. AHSANUL HAQ AMIN', 'dr-0042', 'ahsanul_haq@gmail.com', '10', 400, 'Central Hospital Limited  Chamber: Room-207, 2nd floor, Dhaka; Personal Chamber: House-09, Road-14, Banani, Dhaka', 'Senior Consultant', 'd-18', 'Central Hospital Limited', '4'),
('DR. MD. FEROZ AMIN', 'dr-0043', 'frz_amin67@gmail.com', '5', 800, 'City Hospital & Diagnostic Center Chamber: Room-219, 2nd floor, Dhaka; Personal Chamber: House-09, Road-16, Dhanmondi, Dhaka', 'Consultant', 'd-18', 'City Hospital & Diagnostic Center', '5'),
('DR. ABDUL MANNAN SARKER', 'dr-0044', 'ab_mannan_sarker@gmail.com', '10', 900, 'Impulse Hospital Chamber: Room-250, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Dhanmondi, Dhaka', 'Senior Consultant', 'd-18', 'Impulse Hospital', '4.09'),
('DR. A K M SHAEEN AHMED', 'dr-0045', 'shaeen_dr@gmail.com', '15', 500, 'Square Hospitals Ltd. Chamber: Room-221, 2nd floor, Dhaka; Personal Chamber: House-09, Road-03, Banani, Dhaka', 'Senior Consultant', 'd-18', 'Square Hospitals Ltd.', '3.05'),
('DR. KAZI ALI HASSAN', 'dr-0046', 'kazialighassan@gmail.com', '21', 900, 'BIRDEM General Hospital Chamber: Room-217, 2nd floor, Dhaka; Personal Chamber: House-09, Road-20, Gulshan-2, Dhaka', 'Assistant Professor', 'd-18', 'BIRDEM General Hospital', '4'),
('DR. IQBAL AHMED', 'dr-0047', 'iqbal_ahmed@gmail.com', '19', 500, 'Delta Medical Center Ltd Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-19, Dhanmondi, Dhaka', 'Assistant Professor', 'd-18', 'Delta Medical Center Ltd', '2.6'),
('DR. M. A. AZAD', 'dr-0048', 'ma_azad@gmail.com', '17', 700, 'Dhaka Community Medical College and Hospital Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-15, Banani, Dhaka', 'Assistant Professor', 'd-18', 'Dhaka Community Medical College and Hospital', '3.33'),
('DR. M. A. SAYEM', 'dr-0049', 'ma_sayem76@gmail.com', '18', 400, 'Royal Hospital (Pvt.) Limited Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-34, Gulshan-2, Dhaka', 'Assistant Professor', 'd-18', 'Royal Hospital (Pvt.) Limited', '3'),
('DR. MASUDA JOYA', 'dr-0050', 'masuda_joya65@gmail.com', '7', 500, 'National Hospital Chattogram and Sigma Lab Ltd. Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-48,Banani, Dhaka', 'Consultant', 'd-18', 'National Hospital Chattogram and Sigma Lab Ltd.', '4.5'),
('DR. RASHEDUL ISLAM', 'dr-0051', 'rashedul_islam@gmail.com', '15', 300, 'Chattogram Maa-O-Shishu Hospital Chamber: Room-210, 2nd floor, Dhaka; Personal Chamber: House-07, Road-11, Gulshan-2, Dhaka', 'Senior Consultant', 'd-19', 'Chattogram Maa-O-Shishu Hospital', '5'),
('DR. SARKAR M. SAIFUL ISLAM', 'dr-0052', 'sarkarsaiful@gmail.com', '4', 600, 'Max Hospital Chittagong Chamber:Room-222, 2nd floor, Dhaka; Personal Chamber: House-09, Road-13, sector:6,Uttara, Dhaka', 'Consultant', 'd-19', 'Max Hospital Chittagong', '2'),
('DR. ANISUR RHAMAN', 'dr-0053', 'anisrh78@gmail.com', '13', 1500, 'Rajshahi Model Hospital Chamber: Room-201, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, lalbagh, Dhaka', 'Senior Consultant', 'd-19', 'Rajshahi Model Hospital', '1'),
('DR. RABI BISWAS', 'dr-0054', 'rabiii10@gmail.com', '6', 400, 'Zamzam Islami Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mirpur-2, Dhaka', 'Consultant', 'd-19', 'Zamzam Islami Hospital', '4'),
('PROF. DR. ABUL HASNAT JOARDER', 'dr-0055', 'prof_abul_hasnat@gmail.com', '24', 800, 'Mymensingh Union Specialized Hospital Limited Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-05, Road-10, Mirpur-2, Dhaka', 'Professor', 'd-19', 'Mymensingh Union Specialized Hospital Limited', '5'),
('PROF. DR. MAHMUDUL HASAN', 'dr-0056', 'prof_mhhasan@gmail.com', '25', 900, 'Nexus Hospitals Bangladesh Chamber: Room-305, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Professor', 'd-19', 'Nexus Hospitals Bangladesh', '4.09'),
('DR. M A ROUF SARDAR', 'dr-0057', 'roufsardar5@gmail.com', '15', 500, 'Anwer Khan Modern Medical College Hospital Chamber: Room-202, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-19', 'Anwer Khan Modern Medical College Hospital ', '3.05'),
('DR. A. F. MOHIUDDIN KHAN', 'dr-0058', 'dr_mohi7@gmail.com', '15', 900, 'Khulna Sadar Hospital Chamber: Room-209, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-20', 'Khulna Sadar Hospital', '4'),
('DR. A.K.M.A SOBHAN', 'dr-0059', 'dr_sobhan9@gmail.com', '2', 500, 'Khulna City Medical College Hospital Chamber: Room-206, 2nd floor, Dhaka; Personal Chamber: House-7, Road-10, Khilkhet, Dhaka', 'Consultant', 'd-20', 'Khulna City Medical College Hospital', '2.6'),
('DR. HOSSAIN IMAM AL HADI', 'dr-0060', 'dr_imamhadi57@gmail.com', '13', 700, 'Khulna Medical College Hospital Chamber: Room-306, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-21', 'Khulna Medical College Hospital', '3.33'),
('DR. DELOWAR HOSSAIN', 'dr-0061', 'delowar_hossain@gmail.com', '19', 400, 'United Hospital Limited Chamber : Room-406, 4th floor, Dhaka; Personal Chamber: House-02, Road-10, Dhanmondi, Dhaka', 'Assistant Professor', 'd-21', 'United Hospital Limited', '3'),
('PROF. DR. MUNIRA FERDAUSI', 'dr-0062', 'dr_munira80@gmail.com', '33', 700, 'Central Hospital Limited Chamber: Room-508, 5th floor, Dhaka; Personal Chamber: House-09, Road-10, Banani, Dhaka', 'Professor', 'd-22', 'Central Hospital Limited', '4.5'),
('PROF. DR. AMENA MAJID', 'dr-0063', 'prof_amena198@gmail.com', '34', 600, 'City Hospital & Diagnostic Center Chamber: Room-103, Ist floor, Dhaka; Personal Chamber: House-08, Road-6, Moghbazar, Dhaka', 'Professor', 'd-22', 'City Hospital & Diagnostic Center', '5'),
('DR. FARHANA DEWAN', 'dr-0064', 'dr_farhanadewan@gmail.com', '18', 800, 'Khulna City Medical College Hospital Chamber: Room-204, 2nd floor, Khulna; Personal Chamber: House-09, Road-10, Gulshan-2, Khulna', 'Assistant Professor', 'd-22', 'Khulna City Medical College Hospital', '2'),
('DR.QUAZI TARIKUL ISLAM', 'dr-0065', 'dr.quazi@gmail.com', '20', 1000, 'Dhaka Medical College Hospital, Chamber:Room209, 2nd floor,Dhaka; Personal chamber:Central Hospital Limited  Chamber: Room-207, 2nd floor, Dhaka', 'Assistant Professor', 'd-01', 'Dhaka Medical College hospital', '4.295'),
('DR.AZHARUL HAQUE', 'dr-0068', 'dr.azharul@gmail.com', '10', 600, 'Sir Salimullah Medical College,Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-03, Road-10, Mouchak, Dhaka', 'Senior Consultant', 'd-01', 'Sir Salimullah Medical College', '2.6'),
('DR.PRAN GOPAL DUTTA', 'dr-0069', 'dr.pran@gmail.com', '15', 500, 'Green Life Hospital,Chamber:Room-406, 4th floor, Dhaka', 'Senior Consultant', 'd-01', 'Green Life Hospital', '3.33'),
('DR.NURUL ISLAM', 'dr-0071', 'dr.nurul@gmail.com', '16', 800, 'United Hospital Limited  Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-19, Road-13, Shahbagh, Dhaka', 'Assistant Professor', 'd-04', 'United Hospital Limited', '4.5'),
('DR.MUHAMMAD ABDUL BARI', 'dr-0072', 'dr.muhammad@gmail.com', '13', 900, 'Khulna City Medical College Hospital Chamber:Room-302, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-04', 'Khulna City Medical College Hospital', '5'),
('DR.BEENA SARKAR', 'dr-0073', 'dr.beena@gmail.com', '15', 500, 'Khulna Medical College Hospital  Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-04', 'Khulna Medical College Hospital', '2'),
('DR.SUFIA BEGUM', 'dr-0074', 'dr.sufia@gmail.com', '26', 900, 'United Hospital Limited  Chamber:Room-214, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Professor', 'd-04', 'United Hospital Limited', '1'),
('DR.FERDOUS ARA', 'dr-0075', 'dr.ferdous@gmail.com', '22', 500, 'Central Hospital Limited  Chamber:Room-224, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Assistant Professor', 'd-11', 'Central Hospital Limited', '4'),
('DR.FAUZIA SULTANA', 'dr-0076', 'dr.fauzia@gmail.com', '16', 700, 'City Hospital & Diagnostic Center Chamber:Room-234, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-11', 'City Hospital & Diagnostic Center', '5'),
('DR.SAYEDA ALI', 'dr-0077', 'dr.sayeda@gmail.com', '18', 400, 'Impulse Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Assistant Professor', 'd-11', 'Impulse Hospital', '4.09'),
('DR.AKM MANJURUL ALAM', 'dr-0078', 'dr.manjurul@gmail.com', '27', 500, 'Square Hospitals Ltd. Chamber:Room-304, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Mohakhali, Dhaka', 'Professor', 'd-11', 'Square Hospitals Ltd.', '2.775'),
('DR.HASINA BEGUM', 'dr-0079', 'dr.hasina@gmail.com', '20', 300, 'BIRDEM General Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mohakhali, Dhaka', 'Assistant Professor', 'd-11', 'BIRDEM General Hospital', '4'),
('DR.MOSTAFIZUR RAHMAN', 'dr-0080', 'dr.mostafizur@gmail.com', '10', 600, 'Delta Medical Center Ltd Chamber:Room-304, 3rd floor, Dhaka; Personal Chamber: House-09, Road-10, Mohakhali, Dhaka', 'Senior Consultant', 'd-03', 'Delta Medical Center Ltd', '2.6'),
('DR.IFTEKHAR ALAM', 'dr-0081', 'dr.iftekhar@gmail.com', '5', 1500, 'Dhaka Community Medical College and Hospital Chamber:Room-404, 4th floor, Dhaka; Personal Chamber: House-19, Road-17, Moghbazar, Dhaka', 'Consultant', 'd-03', 'Dhaka Community Medical College and Hospital', '3.33'),
('DR.SHARIFUL ISLAM', 'dr-0082', 'dr.shariful@gmail.com', '10', 400, 'Royal Hospital (Pvt.) Limited Chamber:Room-105, Ist floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-03', 'Royal Hospital (Pvt.) Limited', '3'),
('DR.HARUN AL HASAN', 'dr-0083', 'dr.harun@gmail.com', '15', 800, 'National Hospital Chattogram and Sigma Lab Ltd. Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mouchak, Dhaka', 'Senior Consultant', 'd-03', 'National Hospital Chattogram and Sigma Lab Ltd.', '4.5'),
('DR.FARUK MUNSHI', 'dr-0084', 'dr.faruk@gmail.com', '21', 900, 'Chattogram Maa-O-Shishu Hospital Chamber:Room-224, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Moghbazar, Dhaka', 'Assistant Professor', 'd-03', 'Chattogram Maa-O-Shishu Hospital', '5'),
('DR.TANVIR AHMED', 'dr-0085', 'dr.tanvir@gmail.com', '19', 500, 'Max Hospital Chittagong Chamber:Room-223, 2nd floor, Dhaka; Personal Chamber: House-01, Road-1, Gulshan-2, Dhaka', 'Assistant Professor', 'd-10', 'Max Hospital Chittagong', '2'),
('DR.AHSAN UDDIN', 'dr-0086', 'dr.ahsan@gmail.com', '17', 900, 'Rajshahi Model Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-8, Road-17, Moghbazar, Dhaka', 'Assistant Professor', 'd-10', 'Rajshahi Model Hospital', '1'),
('DR.LAYLA PARVIN', 'dr-0087', 'dr.layla@gmail.com', '18', 500, 'Zamzam Islami Hospital Chamber:Room-208, 2nd floor, Dhaka; Personal Chamber: House-05, Road-13, Mouchak, Dhaka', 'Assistant Professor', 'd-10', 'Zamzam Islami Hospital', '4'),
('DR.ARNOB CHANDRA', 'dr-0088', 'dr.arnob@gmail.com', '30', 700, 'Mymensingh Union Specialized Hospital Limited Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-07, Road-10, Mouchak, Dhaka', 'Professor', 'd-10', 'Mymensingh Union Specialized Hospital Limited', '5'),
('DR.FARHANA RAHMAN', 'dr-0089', 'dr.farhana@gmail.com', '16', 400, 'Nexus Hospitals Bangladesh Chamber:Room-207, 2nd floor, Dhaka; Personal Chamber: House-02, Road-10, Mouchak, Dhaka', 'Senior Consultant', 'd-10', 'Nexus Hospitals Bangladesh', '4.09'),
('DR.AFZAL BHUIYAN', 'dr-0090', 'dr.afzal@gmail.com', '10', 500, 'Anwer Khan Modern Medical College Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-03, Road-10, Mouchak, Dhaka', 'Senior Consultant', 'd-05', 'Anwer Khan Modern Medical College Hospital ', '3.05'),
('DR.ZAHID HOSSAIN', 'dr-0091', 'dr.zahid@gmail.com', '15', 300, 'Khulna Sadar Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Banani, Dhaka', 'Senior Consultant', 'd-05', 'Khulna Sadar Hospital', '4'),
('DR.AHSAN SHAHID', 'dr-0092', 'dr.ahsan@gmail.com', '21', 600, 'Khulna City Medical College Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-08, Road-13, Moghbazar, Dhaka', 'Assistant Professor', 'd-05', 'Khulna City Medical College Hospital', '2.6'),
('DR.ARMAN AREFIN', 'dr-0093', 'dr.arman@gmail.com', '19', 1500, 'Khulna Medical College Hospital  Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-12, Gulshan-2, Dhaka', 'Assistant Professor', 'd-02', 'Khulna Medical College Hospital', '3.33'),
('DR.ANIMA SARKAR', 'dr-0094', 'dr.anima@gmail.com', '25', 400, 'United Hospital Limited  Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-19, Road-13, Shahbagh, Dhaka', 'Professor', 'd-02', 'United Hospital Limited', '3'),
('DR.HAIDAR ALI KHAN', 'dr-0095', 'dr.haidar@gmail.com', '18', 800, 'Central Hospital Limited  Chamber: Room-207, 2nd floor, Dhaka; Personal Chamber: House-09, Road-14, Banani, Dhaka', 'Assistant Professor', 'd-07', 'Central Hospital Limited', '4.5'),
('DR.MOTALIB HOSSAIN', 'dr-0096', 'dr.motalib@gmail.com', '25', 900, 'City Hospital & Diagnostic Center Chamber: Room-219, 2nd floor, Dhaka; Personal Chamber: House-09, Road-16, Dhanmondi, Dhaka', 'Professor', 'd-07', 'City Hospital & Diagnostic Center', '5'),
('DR.SAIF ULLAH KHAN', 'dr-0097', 'dr.saif@gmail.com', '34', 500, 'Impulse Hospital Chamber: Room-250, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Dhanmondi, Dhaka', 'Professor', 'd-07', 'Impulse Hospital', '2'),
('DR.ABDUL HYE', 'dr-0098', 'dr.abdul@gmail.com', '16', 900, 'Square Hospitals Ltd. Chamber: Room-221, 2nd floor, Dhaka; Personal Chamber: House-09, Road-03, Banani, Dhaka', 'Senior Consultant', 'd-07', 'Square Hospitals Ltd.', '1'),
('DR.ABU JAFAR CHOWDHURI', 'dr-0099', 'dr.abujafar@gmail.com', '18', 500, 'BIRDEM General Hospital Chamber: Room-217, 2nd floor, Dhaka; Personal Chamber: House-09, Road-20, Gulshan-2, Dhaka', 'Assistant Professor', 'd-07', 'BIRDEM General Hospital', '4'),
('DR.NAZRUL ISLAM', 'dr-0100', 'dr.nazrul@gmail.com', '15', 700, 'Delta Medical Center Ltd Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-19, Dhanmondi, Dhaka', 'Senior Consultant', 'd-12', 'Delta Medical Center Ltd', '5'),
('DR.HEDAYET ALI', 'dr-0101', 'dr.hedayet@gmail.com', '28', 400, 'Dhaka Community Medical College and Hospital Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-15, Banani, Dhaka', 'Professor', 'd-12', 'Dhaka Community Medical College and Hospital', '4.09'),
('DR.LEELA AMIN', 'dr-0102', 'dr.leela@gmail.com', '12', 500, 'Royal Hospital (Pvt.) Limited Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-34, Gulshan-2, Dhaka', 'Senior Consultant', 'd-12', 'Royal Hospital (Pvt.) Limited', '3.05'),
('DR.SAMIM MONDOL', 'dr-0103', 'dr.samim@gmail.com', '13', 300, 'National Hospital Chattogram and Sigma Lab Ltd. Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-48,Banani, Dhaka', 'Senior Consultant', 'd-12', 'National Hospital Chattogram and Sigma Lab Ltd.', '4'),
('DR.AYUB ALI ', 'dr-0104', 'dr.ayub@gmail.com', '29', 600, 'Chattogram Maa-O-Shishu Hospital Chamber: Room-210, 2nd floor, Dhaka; Personal Chamber: House-07, Road-11, Gulshan-2, Dhaka', 'Professor', 'd-08', 'Chattogram Maa-O-Shishu Hospital', '2.6'),
('DR.OSMAN GONI', 'dr-0105', 'dr.osman@gmail.com', '20', 1500, 'Max Hospital Chittagong Chamber:Room-222, 2nd floor, Dhaka; Personal Chamber: House-09, Road-13, sector:6,Uttara, Dhaka', 'Consultant', 'd-08', 'Max Hospital Chittagong', '3.33'),
('DR.AKHTER AHMED', 'dr-0106', 'dr.akhter@gmail.com', '10', 400, 'Rajshahi Model Hospital Chamber: Room-201, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, lalbagh, Dhaka', 'Consultant', 'd-06', 'Rajshahi Model Hospital', '3'),
('DR.AKM DAUD', 'dr-0107', 'dr.daud@gmail.com', '5', 800, 'Zamzam Islami Hospital Chamber:Room-204, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Mirpur-2, Dhaka', 'Consultant', 'd-06', 'Zamzam Islami Hospital', '4.5'),
('DR.MOHIUDDIN AHMED', 'dr-0108', 'dr.mohiuddin@gmail.com', '10', 900, 'Mymensingh Union Specialized Hospital Limited Chamber: Room-204, 2nd floor, Dhaka; Personal Chamber: House-05, Road-10, Mirpur-2, Dhaka', 'Senior Consultant', 'd-06', 'Mymensingh Union Specialized Hospital Limited', '5'),
('DR.SHAMSUN NAHAR', 'dr-0109', 'dr.shamsun@gmail.com', '15', 500, 'Nexus Hospitals Bangladesh Chamber: Room-305, 3nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Senior Consultant', 'd-13', 'Nexus Hospitals Bangladesh', '2'),
('DR. MD. SHAFIUL ALAM', 'dr-0110', 'dr.shafiul@gmail.com', '21', 900, 'Anwer Khan Modern Medical College Hospital Chamber: Room-202, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Assistant Professor', 'd-13', 'Anwer Khan Modern Medical College Hospital ', '3.0'),
('DR.MOHAMMED SHAMSUL ISLAM KHAN', 'dr-0111', 'dr.shamsul@gmail.com', '19', 500, 'Khulna Sadar Hospital Chamber: Room-209, 2nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Assistant Professor', 'd-13', 'Khulna Sadar Hospital', '4'),
('DR.ROMANA AFROZE', 'dr-0112', 'dr.romana@gmail.com', '17', 700, 'Khulna City Medical College Hospital Chamber: Room-206, 2nd floor, Dhaka; Personal Chamber: House-7, Road-10, Khilkhet, Dhaka', 'Assistant Professor', 'd-09', 'Khulna City Medical College Hospital', '5'),
('DR.AHSAN HABIB', 'dr-0113', 'dr.ahsan@gmail.com', '9', 400, 'Khulna Medical College Hospital Chamber: Room-306, 3nd floor, Dhaka; Personal Chamber: House-09, Road-10, Gulshan-2, Dhaka', 'Consultant', 'd-09', 'Khulna Medical College Hospital', '4.09'),
('DR. MD. IQBAL QAVI', 'dr-0114', 'dr.qavi@gmail.com', '22', 1000, 'United Hospital Limited Chamber : Room-406, 4th floor, Dhaka; Personal Chamber: House-02, Road-10, Dhanmondi, Dhaka', 'Assistant Professor', 'd-09', 'United Hospital Limited', '5 ');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hos_name` varchar(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hos_name`, `location`, `city`) VALUES
('ABC Hospital', 'Dhanmondi', 'Dhaka'),
('Anwer Khan Modern Medical College Hospital ', 'Dhanmondi', 'Dhaka'),
('Bangabandhu Sheikh Mujib Medical University and ho', 'Shahbag', 'Dhaka'),
('BIRDEM General Hospital', 'Eskaton', 'Dhaka'),
('Central Hospital Limited', 'Green Road', 'Dhaka'),
('Chattogram Maa-O-Shishu Hospital', 'GEC Mor', 'Chittagong'),
('City Hospital & Diagnostic Center', 'Dhanmondi', 'Dhaka'),
('Comfort Hospital', 'Not Specified Yet', 'Not Specified Yet'),
('Delta Medical Center Ltd', 'Shahbagh', 'Dhaka'),
('Dhaka Community Medical College and Hospital', 'Moghbazar', 'Dhaka'),
('Dhaka Medical College hospital', 'Secretariat road', 'Dhaka'),
('Green Life Hospital', 'Green road', 'Dhaka'),
('Impulse Hospital', 'Tejgaon', 'Dhaka'),
('Khulna City Medical College Hospital', 'KDA Avenue', 'Khulna'),
('Khulna Medical College Hospital', '33 KDA Avenue', 'Khulna'),
('Khulna Sadar Hospital', 'Moilapota Square', 'Khulna'),
('Max Hospital Chittagong', 'Nizam road', 'Chittagong'),
('Mymensingh Union Specialized Hospital Limited', 'Dhaka-Mymensingh Road, Union Tower', 'Mymensingh'),
('National Hospital Chattogram and Sigma Lab Ltd.', 'Chattagram', 'Dhaka'),
('Nexus Hospitals Bangladesh', 'Notun Bazar', 'Mymensingh'),
('Rajshahi Model Hospital', 'Laxmipur Mor', 'Rajshahi'),
('Royal Hospital (Pvt.) Limited', 'Nizam Road', 'Dhaka'),
('Sir Salimullah Medical College', 'Mitford road', 'Dhaka'),
('Square Hospitals Ltd.', 'Panthapath', 'Dhaka'),
('United Hospital Limited', 'Gulshan', 'Dhaka'),
('Zamzam Islami Hospital', 'Kakrail', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `hos_dept`
--

CREATE TABLE `hos_dept` (
  `hos_name` varchar(50) NOT NULL,
  `dept_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE `login_users` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL,
  `City` varchar(50) DEFAULT NULL,
  `BMI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`Name`, `Email`, `Gender`, `Phone`, `Date_of_birth`, `Password`, `ID`, `City`, `BMI`) VALUES
('Ahmed Anwar', 'ahmedanwar.aa872@gmail.com', 'Male', '01757789212', '2001-04-15', 'test1', 1, 'Dhaka', 18),
('Akila Anwar', 'akila2@gmail.com', 'Female', '01876253456', '2005-07-18', 'test2', 2, 'Dhaka', NULL),
('Arafatur Raheeb', 'arafatur.raheeb@gmail.com', 'Male', '01765423487', '2000-07-08', 'test3', 3, '', NULL),
('Maruf Hasan', 'maruf.hasan@gmail.com', 'Male', '01345678934', '2000-09-07', 'test4', 4, '', NULL),
('Nushraq Nawer', 'nushraq.nawer@gmail.com', 'Female', '01876543298', '1999-07-08', 'test5', 5, '', NULL),
('Muntasir Ahmed', 'muntasir.ahmed@gmail.com', 'Male', '01987654329', '2000-07-08', 'test6', 6, '', NULL),
('Rubaba Rashid', 'rubaba.rashid@gmail.com', 'Female', '01965434521', '2000-02-02', 'test7', 7, 'Dhaka', NULL),
('Raya Zaman', 'raya.zaman@gmail.com', 'Female', '01999934521', '2000-07-22', 'test8', 8, 'Chittagaong', NULL),
('Novo Zaman', 'novo.zaman@gmail.com', 'Male', '01999934111', '2001-07-21', 'test9', 9, 'Sylhet', NULL),
('Fayeza Rashid', 'fayeza.rashid@gmail.com', 'Female', '01968899521', '1999-09-02', 'test10', 10, 'Dhaka', NULL),
('Nushraq Nawer Hossain', 'nawernushraq@gmail.com', 'Female', '0151678903', '2022-08-03', 'noelchan', 11, 'Dhaka', NULL),
('Ahmed Wasi Bin Faruque', 'ahmedwasi@gmail.com', 'Male', '0124152627', '1999-10-18', 'nushraq', 12, 'Dhaka', NULL),
('Nushraq Nawer ', 'nawer1@gmail.com', 'Female', '5466556161', '2022-08-03', '123', 13, '', NULL),
('Manal Kareem', 'manal.kareem@gmail.com', 'Female', '01998765432', '2004-06-07', 'test16', 14, '', 0),
('Abrar Mashrur', 'abrar.mashrur@gmail.com', 'Male', '01334567889', '0199-04-12', 'test18', 15, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `d_ID` varchar(10) NOT NULL,
  `p_ID` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `ratings` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`d_ID`, `p_ID`, `comment`, `ratings`) VALUES
('dr-0001', 1, 'Totally impressed by his thoroughness, responsiveness, professionalism and courtesy', '4'),
('dr-0001', 2, 'Very helpful, kind', '5'),
('dr-0001', 4, 'My 5-year old daughter has become his fan. Very friendly!', '5'),
('dr-0001', 8, 'I never had a bad experience like this. My appointment was canceled twice. ', '1.5'),
('dr-0002', 1, 'Totally worth it! His advices worked like a magic. ', '4'),
('dr-0002', 2, 'Had a good experience. ', '4'),
('dr-0002', 4, 'Total package of a good doctor! impressed', '5'),
('dr-0002', 6, 'Thankful to him. His prescribed medicines worked for me.', '5'),
('dr-0003', 5, 'His advices worked for me. Amazing experience', '5'),
('dr-0003', 7, 'He gives the best therapy!', '5'),
('dr-0004', 8, 'Not professional enough!', '2.5'),
('dr-0004', 9, 'Average ', '2'),
('dr-0007', 1, 'good experience. ', '4'),
('dr-0007', 10, 'punctual, very polite. ', '5'),
('dr-0008', 11, 'shdihefuhef', '2'),
('dr-0009', 10, 'very organized. Punctual. ', '4'),
('dr-0010', 1, 'Well behaved doctor and well organized', '4.5'),
('dr-0010', 2, 'It feels so good to be treated like this! I will definitely suggest him.', '5'),
('dr-0011', 3, 'very wise doctor', '4.5'),
('dr-0013', 1, 'Totally surprised by his good behaviour, was amazed to witness his advices worked for me. ', '5'),
('dr-0017', 8, 'Average ', '3'),
('dr-0017', 12, 'good doctor, friendly. Previous review was biased ', '5'),
('dr-0019', 1, 'very friendly, well-behaved, organized', '5'),
('dr-0019', 2, 'helped me a lot in my recovery. ', '4'),
('dr-0019', 3, 'very professional', '4'),
('dr-0020', 4, 'will not suggest him to anyone for his cold attitude. ', '2'),
('dr-0023', 1, 'awful experience! Did not even listen to me', '2'),
('dr-0023', 7, 'He is good towards his patients. ', '4'),
('dr-0024', 5, 'well behaved, helpful. ', '4'),
('dr-0024', 6, 'uses modern facilities. Very polite. Good experience for me. ', '4'),
('dr-0024', 10, 'helpful , kind. ', '4'),
('dr-0032', 3, 'punctual, very polite. ', '4'),
('dr-0032', 6, 'A bit slow, but wise doctor', '4'),
('dr-0033', 3, 'Awesome experience. I will suggest him anyday', '5'),
('dr-0035', 3, 'below average', '2'),
('dr-0043', 2, 'Good with children, my son became friendly with him in a moment!', '4'),
('dr-0043', 3, 'experienced friendly behaviour of the doctor. ', '4'),
('dr-0048', 4, 'good experience. ', '4'),
('dr-0053', 9, 'very organized. Punctual. ', '5'),
('dr-0059', 3, 'Not good at all. Unprofessional!', '2'),
('dr-0060', 2, 'Very good with children. ', '5'),
('dr-0065', 1, 'Not bad.', '4.5'),
('dr-0078', 12, 'not that good, very old. ', '2.5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_ID`),
  ADD KEY `hos_name` (`hos_name`);

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
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_ID`);

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
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`license_ID`),
  ADD KEY `dept_ID` (`dept_ID`),
  ADD KEY `hos_name` (`hos_name`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hos_name`);

--
-- Indexes for table `hos_dept`
--
ALTER TABLE `hos_dept`
  ADD KEY `hos_name` (`hos_name`),
  ADD KEY `dept_ID` (`dept_ID`);

--
-- Indexes for table `login_users`
--
ALTER TABLE `login_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`d_ID`,`p_ID`),
  ADD KEY `p_ID` (`p_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login_users`
--
ALTER TABLE `login_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`hos_name`) REFERENCES `hospital` (`hos_name`);

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

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`dept_ID`) REFERENCES `department` (`dept_ID`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`hos_name`) REFERENCES `hospital` (`hos_name`);

--
-- Constraints for table `hos_dept`
--
ALTER TABLE `hos_dept`
  ADD CONSTRAINT `hos_dept_ibfk_1` FOREIGN KEY (`hos_name`) REFERENCES `hospital` (`hos_name`),
  ADD CONSTRAINT `hos_dept_ibfk_2` FOREIGN KEY (`dept_ID`) REFERENCES `department` (`dept_ID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`d_ID`) REFERENCES `doctor` (`license_ID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`p_ID`) REFERENCES `login_users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
