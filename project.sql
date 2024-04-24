-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 03:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `target_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `activity_type`, `target_id`, `timestamp`) VALUES
(1, 63, 'Followed user ', 62, '2024-01-12 08:05:17'),
(2, 63, 'Followed user ', 62, '2024-01-12 08:05:37'),
(3, 63, 'Followed user ', 62, '2024-01-12 08:05:37'),
(4, 63, 'Followed user ', 62, '2024-01-12 08:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `likes` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `user_id`, `answer`, `likes`, `created_at`, `updated_at`) VALUES
(1, 103, 63, 'AI is if else mother Father', 10, '2024-01-28 09:16:00', '2024-01-28 09:16:00'),
(4, 86, 45, 'Proin in elit nec arcu dictum lobortis at ut massa.', 18, '2024-01-28 07:10:00', '2024-01-28 07:10:00'),
(7, 89, 48, 'Fusce eget nunc nec ligula luctus efficitur id at quam.', 17, '2024-01-28 07:25:00', '2024-01-31 13:24:15'),
(8, 90, 49, 'Praesent at orci eu odio fermentum fringilla.', 25, '2024-01-28 07:30:00', '2024-01-28 07:30:00'),
(9, 91, 50, 'Integer nec turpis euismod, vestibulum mauris a, rhoncus sem.', 14, '2024-01-28 07:35:00', '2024-01-28 07:35:00'),
(10, 92, 51, 'Cras in orci vel dui volutpat vulputate.', 21, '2024-01-28 07:40:00', '2024-01-28 07:40:00'),
(11, 93, 52, 'Aenean sit amet tortor ac elit bibendum ullamcorper.', 19, '2024-01-28 07:45:00', '2024-01-28 07:45:00'),
(12, 94, 53, 'Maecenas nec quam non enim tincidunt fringilla.', 16, '2024-01-28 07:50:00', '2024-01-28 07:50:00'),
(13, 95, 54, 'Ut vitae metus at mi scelerisque tincidunt.', 23, '2024-01-28 07:55:00', '2024-01-28 07:55:00'),
(14, 96, 55, 'Duis eu nisl sed lectus iaculis varius.', 13, '2024-01-28 08:00:00', '2024-01-28 08:00:00'),
(15, 97, 56, 'Vestibulum vel turpis sit amet arcu suscipit tristique.', 24, '2024-01-28 08:05:00', '2024-01-28 08:05:00'),
(16, 98, 57, 'Phasellus eu risus eu nunc luctus efficitur.', 20, '2024-01-28 08:10:00', '2024-01-28 08:10:00'),
(17, 99, 58, 'Morbi at urna vel tortor venenatis tristique vel vel libero.', 18, '2024-01-28 08:15:00', '2024-01-28 08:15:00'),
(18, 100, 59, 'Curabitur nec augue a quam fermentum vulputate.', 16, '2024-01-28 08:20:00', '2024-01-28 08:20:00'),
(20, 102, 61, 'Aenean lacinia velit eu sapien cursus, vel cursus tellus dapibus.', 14, '2024-01-28 08:30:00', '2024-01-28 08:30:00'),
(21, 103, 62, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 25, '2024-01-28 08:35:00', '2024-01-28 08:35:00'),
(24, 84, 44, 'Suspendisse potenti. Mauris vel ante non elit accumsan varius.', 19, '2024-01-28 08:50:00', '2024-01-31 13:33:44'),
(28, 88, 48, 'Praesent lobortis massa vel aliquam sodales.', 15, '2024-01-28 09:10:00', '2024-01-28 09:10:00'),
(29, 89, 49, 'Fusce vel augue non nisl pharetra sodales.', 24, '2024-01-28 09:15:00', '2024-01-31 13:26:08'),
(30, 90, 50, 'Curabitur vel justo ac leo cursus interdum vel id felis.', 21, '2024-01-28 09:20:00', '2024-01-28 09:20:00'),
(31, 91, 51, 'Vivamus vel libero vel justo volutpat facilisis at vel ligula.', 19, '2024-01-28 09:25:00', '2024-01-28 09:25:00'),
(32, 92, 52, 'Aenean auctor urna vel tristique cursus.', 16, '2024-01-28 09:30:00', '2024-01-28 09:30:00'),
(33, 93, 53, 'Nulla facilisi. Nam scelerisque vestibulum elit, vel eleifend odio laoreet vitae.', 24, '2024-01-28 09:35:00', '2024-01-28 09:35:00'),
(34, 94, 54, 'Fusce luctus mauris eu urna cursus volutpat.', 13, '2024-01-28 09:40:00', '2024-01-28 09:40:00'),
(35, 95, 55, 'Proin accumsan libero ut urna convallis, eu luctus tortor tincidunt.', 22, '2024-01-28 09:45:00', '2024-01-28 09:45:00'),
(36, 96, 56, 'Aliquam tristique dolor id mi tincidunt, a dapibus ex dapibus.', 18, '2024-01-28 09:50:00', '2024-01-28 09:50:00'),
(37, 97, 57, 'Vestibulum auctor quam nec velit luctus, in varius justo sodales.', 15, '2024-01-28 09:55:00', '2024-01-28 09:55:00'),
(38, 98, 58, 'Donec nec justo nec elit suscipit dignissim.', 21, '2024-01-28 10:00:00', '2024-01-28 10:00:00'),
(39, 99, 59, 'Ut vehicula odio ut velit auctor, vel volutpat neque dapibus.', 19, '2024-01-28 10:05:00', '2024-01-28 10:05:00'),
(40, 100, 60, 'Pellentesque vel dolor ac velit tempor euismod.', 16, '2024-01-28 10:10:00', '2024-01-28 10:10:00'),
(42, 102, 62, 'Morbi vestibulum quam eu turpis cursus, vel accumsan nunc feugiat.', 20, '2024-01-28 10:20:00', '2024-01-28 10:20:00'),
(43, 103, 63, 'Duis vehicula urna nec dui gravida, sit amet aliquet turpis iaculis.', 17, '2024-01-28 10:25:00', '2024-01-28 10:25:00'),
(51, 100, 47, 'c', 0, '2024-02-22 21:19:30', '2024-02-22 21:19:30'),
(52, 84, 63, 'To create a website you need to learn HTML CSS JS and you good to Gooo', 0, '2024-02-24 14:48:12', '2024-02-24 14:48:12'),
(53, 86, 63, 'Tea 4 You is the best coffe Shop If there Is any nearby Branch.', 0, '2024-02-24 14:48:56', '2024-02-24 14:48:56'),
(55, 87, 63, 'wow lets so', 0, '2024-03-14 16:32:04', '2024-03-14 16:32:04'),
(56, 151, 63, 'wow this is nice', 0, '2024-03-16 08:15:48', '2024-03-16 08:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `answer_likes`
--

CREATE TABLE `answer_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(60) NOT NULL,
  `followers` int(11) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `followers`, `Created_at`, `Updated_at`) VALUES
(17, 'Tech', 'Tech.jpg', NULL, '2024-01-06 07:55:13', '2024-03-15 09:03:30'),
(19, 'Science', 'Science.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:03:45'),
(20, 'Health and Wellness', 'Health and Wellness.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:05:10'),
(21, 'Travel', 'Travel.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:08:08'),
(22, 'Food and Cooking', 'Food and Cooking.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:08:49'),
(23, 'Relationships', 'Relationships.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:09:12'),
(24, 'Education', 'Education.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:09:24'),
(25, 'Career and Professional Development', 'Career and Professional Development.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:28:20'),
(26, 'Entertainment', 'Entertainment.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:09:40'),
(27, 'Sports', 'Sports.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:09:57'),
(28, 'Finance', 'Finance.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:10:11'),
(29, 'Environment and Sustainability', 'Environment and Sustainability.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:28:31'),
(30, 'Fashion and Style', 'Fashion and Style.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:10:40'),
(31, 'Parenting', 'Parenting.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:11:10'),
(32, 'Art and Creativity', 'Art and Creativity.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:11:28'),
(33, 'Home and Interior Design', 'Home and Interior Design.png', NULL, '2024-01-06 08:03:56', '2024-03-15 09:11:36'),
(34, 'Philosophy and Ethics', 'Philosophy and Ethics.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:11:47'),
(35, 'History', 'History.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:11:57'),
(36, 'Hobbies', 'Hobbies.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:12:14'),
(37, 'Self-Improvement', 'Self-Improvement.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:12:24'),
(38, 'Pets', 'Pets.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:12:58'),
(39, 'Technology Trends', 'Technology Trends.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:13:19'),
(40, 'Cuisine', 'Cuisine.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:13:26'),
(41, 'Language and Linguistics', 'Language and Linguistics.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:14:25'),
(42, 'Cultural Diversity', 'Cultural Diversity.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:14:36'),
(43, 'Mindfulness and Meditation', 'Mindfulness and Meditation.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:14:52'),
(44, 'Social Media', 'Social Media.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:15:02'),
(45, 'Motorsports', 'Motorsports.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:15:43'),
(46, 'Space and Astronomy', 'Space and Astronomy.jpg', NULL, '2024-01-06 08:03:56', '2024-03-15 09:15:51'),
(47, 'Fitness Trends', 'Fitness Trends.png', NULL, '2024-01-06 08:03:56', '2024-03-15 09:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `text`, `created_at`) VALUES
(11, 63, 'this website is so amazing that i liked this so much', '2024-03-16 09:33:56'),
(12, 63, 'this website is so amazing that i liked this so much', '2024-03-16 09:34:01'),
(13, 63, 'thanks', '2024-03-16 09:34:44'),
(14, 63, 'asdf', '2024-03-16 09:34:55'),
(15, 63, '', '2024-03-16 09:35:18'),
(16, 63, 'adfg', '2024-03-16 09:35:19'),
(17, 63, 'adfg', '2024-03-16 09:36:56'),
(18, 63, 'how', '2024-03-16 09:37:01'),
(19, 63, 'how', '2024-03-16 09:37:02'),
(20, 63, 'how', '2024-03-16 09:37:02'),
(21, 63, 'how', '2024-03-16 09:37:02'),
(22, 63, 'how', '2024-03-16 09:37:02'),
(23, 63, 'how', '2024-03-16 09:37:02'),
(24, 63, 'hdoi', '2024-03-16 09:37:15'),
(25, 63, 'asdfui', '2024-03-16 09:37:27'),
(26, 63, 'asdhfoh', '2024-03-16 09:37:47'),
(27, 63, 'sdf', '2024-03-16 09:38:45'),
(28, 63, 'sdbl', '2024-03-16 09:38:59'),
(29, 63, 'sdbl', '2024-03-16 09:39:01'),
(30, 63, 'sdbl', '2024-03-16 09:39:01'),
(31, 63, 'sdbl', '2024-03-16 09:39:01'),
(32, 63, 'sdbl', '2024-03-16 09:39:01'),
(33, 63, 'sdbl', '2024-03-16 09:39:02'),
(34, 63, 'sdbl', '2024-03-16 09:39:02'),
(35, 63, 'sdbl', '2024-03-16 09:39:02'),
(36, 63, 'nicw', '2024-03-16 09:40:08'),
(37, 63, 'ASD', '2024-03-16 09:41:10'),
(38, 63, 'ASDhow asdfasdbouasd', '2024-03-16 09:41:17'),
(39, 63, 'ASDhow asdfasdbouasd', '2024-03-16 09:41:18'),
(40, 63, 'ASDhow asdfasdbouasd', '2024-03-16 09:41:18'),
(41, 63, 'ASDhow asdfasdbouasd', '2024-03-16 09:41:18'),
(42, 63, 'ASDhow asdfasdbouasd', '2024-03-16 09:41:19'),
(43, 63, 'ASDhow asdfasdbouasd', '2024-03-16 09:41:19'),
(44, 63, 'HDfuoh', '2024-03-16 09:41:35'),
(45, 63, 'ajsdfa', '2024-03-16 09:41:53'),
(46, 63, 'Enterting Feedback', '2024-03-16 09:44:00'),
(47, 63, 'Enterting Feedback 2', '2024-03-16 09:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `followed_categories`
--

CREATE TABLE `followed_categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follower`
--

CREATE TABLE `follower` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `unfollowed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follower`
--

INSERT INTO `follower` (`id`, `user_id`, `follower_id`, `followed_at`, `unfollowed_at`) VALUES
(22, 63, 45, '2024-03-12 16:32:38', '2024-03-12 16:32:38'),
(23, 82, 63, '2024-03-12 16:36:30', '2024-03-12 16:36:30'),
(67, 49, 63, '2024-03-12 23:02:40', '2024-03-12 23:02:40'),
(83, 48, 63, '2024-03-12 23:11:54', '2024-03-12 23:11:54'),
(85, 47, 84, '2024-03-15 12:00:50', '2024-03-15 12:00:50'),
(86, 63, 87, '2024-04-23 14:38:10', '2024-04-23 14:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `hidden_question`
--

CREATE TABLE `hidden_question` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hidden_question`
--

INSERT INTO `hidden_question` (`id`, `user_id`, `question_id`, `reason`, `created_at`) VALUES
(1, 47, 84, 'Inappropriate content', '2024-02-15 19:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `received_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `media`, `created_at`, `received_at`, `updated_at`) VALUES
(69, 63, 48, 'Hii', '', '2024-02-22 14:06:44', '2024-02-22 19:36:44', '2024-02-22 19:36:44'),
(70, 63, 48, 'hello', '', '2024-03-12 13:58:02', '2024-03-12 19:28:02', '2024-03-12 19:28:02'),
(71, 48, 63, 'how are you', '', '2024-03-12 16:28:48', '2024-03-12 21:58:48', '2024-03-12 21:58:48'),
(72, 63, 48, 'wassup?', '', '2024-03-12 16:36:36', '2024-03-12 22:06:36', '2024-03-12 22:06:36'),
(73, 48, 63, 'nothing much busy in some work', '', '2024-03-12 16:36:49', '2024-03-12 22:06:49', '2024-03-12 22:06:49'),
(74, 63, 48, 'ohh good', '', '2024-03-12 16:36:55', '2024-03-12 22:06:55', '2024-03-12 22:06:55'),
(75, 48, 63, 'what you mean good?', '', '2024-03-12 16:37:07', '2024-03-12 22:07:07', '2024-03-12 22:07:07'),
(76, 63, 48, 'nothing nothing', '', '2024-03-12 16:37:15', '2024-03-12 22:07:15', '2024-03-12 22:07:15'),
(77, 63, 48, 'so what is you type?', '', '2024-03-12 16:37:25', '2024-03-12 22:07:25', '2024-03-12 22:07:25'),
(78, 48, 63, 'what you mean by type?', '', '2024-03-12 16:37:33', '2024-03-12 22:07:33', '2024-03-12 22:07:33'),
(79, 63, 48, 'type means type', '', '2024-03-12 16:37:40', '2024-03-12 22:07:40', '2024-03-12 22:07:40'),
(80, 48, 63, 'lol which types?', '', '2024-03-12 16:37:53', '2024-03-12 22:07:53', '2024-03-12 22:07:53'),
(81, 63, 48, 'i am fine sara love you ♥ ', '', '2024-03-14 11:26:58', '2024-03-14 16:56:58', '2024-03-14 16:56:58'),
(82, 63, 48, 'helo', '', '2024-03-14 11:27:10', '2024-03-14 16:57:10', '2024-03-14 16:57:10'),
(83, 63, 48, 'you there', '', '2024-03-14 11:27:16', '2024-03-14 16:57:16', '2024-03-14 16:57:16'),
(84, 63, 48, 'motherfucker not working', '', '2024-03-14 11:27:26', '2024-03-14 16:57:26', '2024-03-14 16:57:26'),
(85, 63, 48, 'hmm', '', '2024-03-14 11:45:33', '2024-03-14 17:15:33', '2024-03-14 17:15:33'),
(86, 63, 48, 'teri maka', '', '2024-03-14 11:45:38', '2024-03-14 17:15:38', '2024-03-14 17:15:38'),
(87, 63, 48, 'hmm', '', '2024-03-14 11:48:20', '2024-03-14 17:18:20', '2024-03-14 17:18:20'),
(88, 63, 48, 'gw', '', '2024-03-14 11:48:24', '2024-03-14 17:18:24', '2024-03-14 17:18:24'),
(89, 63, 48, 'asdsdf', '', '2024-03-14 12:11:04', '2024-03-14 17:41:04', '2024-03-14 17:41:04'),
(90, 63, 48, '', '', '2024-03-14 12:11:05', '2024-03-14 17:41:05', '2024-03-14 17:41:05'),
(91, 63, 48, '', '', '2024-03-14 12:11:06', '2024-03-14 17:41:06', '2024-03-14 17:41:06'),
(92, 63, 48, '', '', '2024-03-14 12:11:07', '2024-03-14 17:41:07', '2024-03-14 17:41:07'),
(93, 63, 48, '', '', '2024-03-14 12:11:07', '2024-03-14 17:41:07', '2024-03-14 17:41:07'),
(94, 63, 48, '', '', '2024-03-14 12:11:07', '2024-03-14 17:41:07', '2024-03-14 17:41:07'),
(95, 63, 48, '', '', '2024-03-14 12:11:07', '2024-03-14 17:41:07', '2024-03-14 17:41:07'),
(96, 63, 48, '', '', '2024-03-14 12:11:07', '2024-03-14 17:41:07', '2024-03-14 17:41:07'),
(97, 63, 48, '', '', '2024-03-14 12:11:08', '2024-03-14 17:41:08', '2024-03-14 17:41:08'),
(98, 63, 48, '', '', '2024-03-14 12:11:08', '2024-03-14 17:41:08', '2024-03-14 17:41:08'),
(99, 63, 48, '', '', '2024-03-14 12:11:08', '2024-03-14 17:41:08', '2024-03-14 17:41:08'),
(100, 63, 48, '', '', '2024-03-14 12:11:08', '2024-03-14 17:41:08', '2024-03-14 17:41:08'),
(101, 63, 48, '', '', '2024-03-14 12:11:08', '2024-03-14 17:41:08', '2024-03-14 17:41:08'),
(102, 63, 48, '', '', '2024-03-14 12:11:09', '2024-03-14 17:41:09', '2024-03-14 17:41:09'),
(103, 63, 48, '', '', '2024-03-14 12:11:09', '2024-03-14 17:41:09', '2024-03-14 17:41:09'),
(104, 63, 48, '', '', '2024-03-14 12:11:09', '2024-03-14 17:41:09', '2024-03-14 17:41:09'),
(105, 63, 48, '', '', '2024-03-14 12:11:09', '2024-03-14 17:41:09', '2024-03-14 17:41:09'),
(106, 63, 48, '', '', '2024-03-14 12:11:10', '2024-03-14 17:41:10', '2024-03-14 17:41:10'),
(107, 63, 48, '', '', '2024-03-14 12:11:10', '2024-03-14 17:41:10', '2024-03-14 17:41:10'),
(108, 63, 48, '', '', '2024-03-14 12:11:12', '2024-03-14 17:41:12', '2024-03-14 17:41:12'),
(109, 63, 48, '', '', '2024-03-14 12:11:12', '2024-03-14 17:41:12', '2024-03-14 17:41:12'),
(110, 63, 48, '', '', '2024-03-14 12:11:13', '2024-03-14 17:41:13', '2024-03-14 17:41:13'),
(111, 63, 48, '', '', '2024-03-14 12:11:13', '2024-03-14 17:41:13', '2024-03-14 17:41:13'),
(112, 63, 48, 'how are you', '', '2024-03-14 12:13:44', '2024-03-14 17:43:44', '2024-03-14 17:43:44'),
(113, 48, 63, 'how are you ', '', '2024-03-15 05:29:33', '2024-03-15 10:59:33', '2024-03-15 10:59:33'),
(114, 48, 63, '', '', '2024-03-15 05:29:36', '2024-03-15 10:59:36', '2024-03-15 10:59:36'),
(115, 48, 63, 'i hope you are good ', '', '2024-03-15 05:29:43', '2024-03-15 10:59:43', '2024-03-15 10:59:43'),
(117, 48, 63, 'helllo', '', '2024-03-15 05:40:31', '2024-03-15 11:10:32', '2024-03-15 11:10:32'),
(118, 48, 63, 'how are you my love 💖', '', '2024-03-15 05:40:54', '2024-03-15 11:10:54', '2024-03-15 11:10:54'),
(119, 63, 48, 'i am fine', '', '2024-03-15 07:26:11', '2024-03-15 12:56:11', '2024-03-15 12:56:11'),
(120, 87, 63, 'How Are you MotherFucker?', '', '2024-04-23 09:08:23', '2024-04-23 14:38:23', '2024-04-23 14:38:23'),
(121, 87, 63, 'What Is the thing you gonna Ask For?', '', '2024-04-23 09:08:38', '2024-04-23 14:38:38', '2024-04-23 14:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `text` text NOT NULL,
  `is_platform_update` tinyint(1) DEFAULT 0,
  `seen` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `recipient_id`, `question_id`, `answer_id`, `text`, `is_platform_update`, `seen`, `created_at`) VALUES
(28, 63, NULL, NULL, 'Your reported issue This ISnot here has been resolved.', 0, 1, '2024-02-17 06:40:26'),
(29, 63, NULL, NULL, 'Issue Resolved: Your reported concern \"this  is illrelevant thing to be here nothing to do with it\" has been solved. Thank you for your valuable feedback.', 0, 1, '2024-02-17 08:16:36'),
(33, NULL, NULL, NULL, 'HELLO DEAR USERS WELCOME TO ASKIFY', 1, 0, '2024-02-17 11:13:57'),
(34, 63, NULL, NULL, 'Issue Resolved: Your reported concern \"This Question Should Not Be Here MotherFuckerss \" has been solved. Thank you for your valuable feedback.', 0, 1, '2024-02-21 15:44:53'),
(35, 63, NULL, NULL, 'Issue Resolved: Your reported concern \"This ISnot here\" has been solved. Thank you for your valuable feedback.', 0, 1, '2024-02-21 15:45:08'),
(36, 63, NULL, NULL, 'Issue Resolved: Your reported concern \"This ISnot here\" has been solved. Thank you for your valuable feedback.', 0, 1, '2024-02-21 15:45:09'),
(37, NULL, NULL, NULL, 'Hey Dear Askify Users There is an important announcement 📢  Here We Are going to add dark mode sooon in website ', 1, 0, '2024-02-21 15:46:11'),
(38, 63, NULL, NULL, 'Issue Resolved: Your reported concern \"This ISnot here\" has been solved. Thank you for your valuable feedback.', 0, 1, '2024-02-21 17:48:03'),
(39, 49, NULL, NULL, 'david_miller followed you.', 0, 1, '2024-03-12 23:00:15'),
(40, 49, NULL, NULL, 'david_miller followed you.', 0, 1, '2024-03-12 23:00:42'),
(41, 49, NULL, NULL, 'david_miller followed you.', 0, 0, '2024-03-12 23:01:20'),
(42, 49, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:02:14'),
(43, 49, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:02:39'),
(44, 49, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:02:40'),
(45, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:02:51'),
(46, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:02:53'),
(47, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:05:16'),
(48, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:05:20'),
(49, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:05:42'),
(50, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:05:43'),
(51, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:05:45'),
(52, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:06:33'),
(53, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:06:56'),
(54, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:07:05'),
(55, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:08:20'),
(56, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:08:30'),
(57, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:09:40'),
(58, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:09:41'),
(59, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:09:45'),
(60, 48, NULL, NULL, 'Akshay followed you.', 0, 0, '2024-03-12 23:11:54'),
(61, 63, NULL, NULL, 'Akshay followed you.', 0, 1, '2024-03-15 08:40:07'),
(62, 47, NULL, NULL, 'Register1 followed you.', 0, 0, '2024-03-15 12:00:50'),
(63, NULL, NULL, NULL, '', 1, 0, '2024-03-20 10:37:03'),
(64, NULL, NULL, NULL, '', 1, 0, '2024-03-20 10:37:05'),
(65, 63, NULL, NULL, 'akshay  followed you.', 0, 0, '2024-04-23 14:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `media` varchar(50) NOT NULL,
  `Hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `title`, `description`, `category_id`, `user_id`, `likes`, `media`, `Hidden`, `created_at`, `updated_at`, `deleted_at`) VALUES
(84, 'How to Create a Website', 'I need help in creating a website. Can anyone guide me through the process?', 29, 47, 15, '', 1, '2024-01-08 08:27:08', '2024-03-14 16:31:35', '2024-01-08 08:27:08'),
(86, 'Best Coffee Shops in the City', 'Share your favorite coffee shops in the city. I need some recommendations!', 30, 49, 26, '', 0, '2024-01-08 08:27:08', '2024-02-28 11:17:19', '2024-01-08 08:27:08'),
(87, 'Java Programming Challenge', 'Join our Java programming challenge! Let\'s see who can solve it first.', 17, 50, 19, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(88, 'Travel Photography Tips', 'Share your best travel photography tips and tricks. What camera do you use', 21, 51, 16, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(89, 'Favorite Sci-Fi Novels', 'What are your favorite sci-fi novels? Looking for some good recommendations.', 19, 52, 32, '', 0, '2024-01-08 08:27:08', '2024-02-28 11:20:46', '2024-01-08 08:27:08'),
(90, 'Web Development Bootcamp', 'Thinking of joining a web development bootcamp. Any recommendations or experiences?', 17, 53, 22, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(91, 'Healthy Cooking Recipes', 'Share your favorite healthy cooking recipes. I want to try something new!', 20, 54, 14, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(92, 'Fitness Motivation', 'Need some motivation to stay fit. Share your fitness journey and tips!', 47, 55, 28, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(93, 'Job Interview Tips', 'Preparing for a job interview. Any tips on how to succeed in an interview?', 25, 56, 20, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(94, 'Blockchain Technology Explained', 'Can someone explain blockchain technology in simple terms? I\'m new to this.', 17, 57, 16, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(95, 'Photography Gear Recommendations', 'Looking for recommendations on photography gear. What camera and lenses do you use?', 30, 58, 32, '', 0, '2024-01-08 08:27:08', '2024-03-14 14:50:40', '2024-01-08 08:27:08'),
(96, 'Learning Spanish', 'Planning to learn Spanish. Any online courses or resources you recommend?', 41, 59, 25, '', 0, '2024-01-08 08:27:08', '2024-02-28 11:17:38', '2024-01-08 08:27:08'),
(97, 'Investing in Cryptocurrency', 'Thinking about investing in cryptocurrency. What are your thoughts and experiences?', 28, 60, 19, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(98, 'DIY Home Decor Ideas', 'Share your favorite DIY home decor ideas. Looking for inspiration!', 33, 61, 26, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(99, 'Gaming PC Build Recommendations', 'Planning to build a gaming PC. Any recommendations on components and setup?', 26, 62, 23, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(100, 'Mountain Hiking Trails', 'What are your favorite mountain hiking trails? Share your experiences!', 21, 47, 36, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(102, 'Remote Work Productivity Tips', 'Working remotely and struggling with productivity. Share your tips for staying focused!', 26, 49, 17, '', 0, '2024-01-08 08:27:08', '2024-02-15 18:40:45', '2024-01-08 08:27:08'),
(103, 'Artificial Intelligence in Everyday Life', 'How is artificial intelligence impacting our daily lives? Share your insights.', 17, 50, 31, '', 0, '2024-01-08 08:27:08', '2024-02-28 11:17:20', '2024-01-08 08:27:08'),
(147, 'This Image Of sunset is beautiful isnt it?', '..  ', 17, 63, 0, '', 0, '2024-02-24 11:12:31', '2024-03-15 08:57:41', '2024-02-24 11:12:31'),
(148, 'How Is Today\'s Weather?', NULL, 17, 63, 0, '', 0, '2024-02-24 11:31:19', '2024-03-15 08:57:49', '2024-02-24 11:31:19'),
(149, 'Need Help Of mental health', 'Hello Dear Followers I need your help to fix my mental health. My Health Is So fucked Up Now Days i Dont know How much reallyyy..', 37, 63, 0, '', 0, '2024-02-24 14:52:00', '2024-02-28 11:17:11', '2024-02-24 14:52:00'),
(150, 'Need Help In React Js', 'How to learn React Js Now Days Yeah It is hard to learn it now days so many various updates and so much resources are available dont where To Go..?', 17, 63, 0, '', 0, '2024-02-24 14:53:00', '2024-03-14 14:58:13', '2024-02-24 14:53:00'),
(151, 'moon is beatiful isnt it', NULL, 34, 63, 1, '151_63_66bd35.jpg', 0, '2024-03-15 08:50:16', '2024-03-16 08:03:42', '2024-03-15 08:50:16'),
(152, 'thing', NULL, 17, 63, 0, '152_63_7d1351.jpg', 0, '2024-03-15 08:55:49', '2024-03-15 08:57:23', '2024-03-15 08:55:49'),
(153, 'Thing2', NULL, 17, 63, 0, '153_63_3fdbb7.jpg', 0, '2024-03-15 08:58:10', '2024-03-15 08:58:10', '2024-03-15 08:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `question_likes`
--

CREATE TABLE `question_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_likes`
--

INSERT INTO `question_likes` (`id`, `user_id`, `question_id`, `created_at`) VALUES
(169, 63, 96, '2024-02-28 11:17:38'),
(171, 63, 89, '2024-02-28 11:20:46'),
(177, 63, 151, '2024-03-16 08:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Open','Resolved') NOT NULL DEFAULT 'Open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `from_user`, `question_id`, `answer_id`, `message`, `created_at`, `status`) VALUES
(3, 63, 84, NULL, 'This ISnot here', '2024-02-17 06:09:48', 'Resolved'),
(4, 63, 91, NULL, 'this  is illrelevant thing to be here nothing to do with it', '2024-02-17 08:15:54', 'Resolved'),
(5, 63, 84, NULL, 'This Question Should Not Be Here MotherFuckerss ', '2024-02-21 15:44:28', 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `signup_ip` varchar(45) NOT NULL,
  `password_reset_hash` varchar(55) NOT NULL,
  `status` enum('ban','active') NOT NULL DEFAULT 'active',
  `birthdate` date NOT NULL,
  `location` varchar(55) NOT NULL,
  `about` text NOT NULL,
  `profile_photo` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `first_login` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `is_admin`, `signup_ip`, `password_reset_hash`, `status`, `birthdate`, `location`, `about`, `profile_photo`, `gender`, `created_at`, `updated_at`, `first_login`) VALUES
(44, 'alice_smith', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'alice.smith@example.com', 'Alice Smith', 0, '::1', '', 'active', '1985-08-20', 'Los Angeles', 'Artist and photographer', 'alice_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-22 07:05:06', 1),
(45, 'bob_jones', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'bob.jones@example.com', 'Bob Jones', 0, '::1', '', 'active', '1980-12-10', 'Chicago', 'Sports enthusiast and musician', 'bob_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-17 11:32:21', 1),
(47, 'michael_green', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'michael.green@example.com', 'Michael Green', 0, '::1', '', 'active', '1988-07-18', 'Seattle', 'Scientist and avid reader', 'Akshay.jpg', 'Male', '0000-00-00 00:00:00', '2024-03-15 12:21:53', 1),
(48, 'sarah_clark', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'sarah.clark@example.com', 'Sarahhhhh', 1, '::1', '', 'active', '1992-09-08', 'London', 'Explorer and foodie', 'sarah_clark.jpg', 'Male', '0000-00-00 00:00:00', '2024-03-20 10:36:17', 1),
(49, 'david_miller', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'david.miller@example.com', 'David Miller', 0, '::1', '', 'active', '1983-04-12', 'Austin', 'Tech geek and gamer', 'david_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-17 11:32:21', 1),
(50, 'olivia_perez', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'olivia.perez@example.com', 'Olivia Perez', 0, '::1', '', 'active', '1998-01-28', 'Paris', 'Art lover and fashionista', 'olivia_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(51, 'jason_cook', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'jason.cook@example.com', 'Jason Cook', 0, '::1', '', 'active', '1986-06-30', 'Toronto', 'Sports and tech enthusiast', 'jason_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(52, 'natalie_wright', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'natalie.wright@example.com', 'Natalie Wright', 0, '::1', '', 'active', '1994-11-22', 'Sydney', 'Bookworm and traveler', '????\0JFIF\0\0\0\0\0\0??\0C\0															', 'Male', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(53, 'ryan_hall', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'ryan.hall@example.com', 'Ryan Hall', 0, '::1', '', 'active', '1987-08-05', 'Miami', 'Fitness enthusiast and music lover', 'ryan_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(54, 'lily_nguyen', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'lily.nguyen@example.com', 'Lily Nguyen', 0, '::1', '', 'active', '1991-02-14', 'Hanoi', 'Artist and avid traveler', 'lily_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(55, 'chris_brown', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'chris.brown@example.com', 'Chris Brown', 0, '::1', '', 'active', '1984-12-01', 'Seattle', 'Gamer and tech enthusiast', 'chris_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(56, 'mia_jackson', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'mia.jackson@example.com', 'Mia Jackson', 0, '::1', '', 'active', '1993-06-18', 'Paris', 'Fashionista and food lover', 'mia_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-15 08:12:51', 1),
(57, 'steven_garcia', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'steven.garcia@example.com', 'Steven Garcia', 0, '::1', '', 'active', '1989-04-28', 'San Francisco', 'Scientist and avid reader', 'steven_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-17 11:32:21', 1),
(58, 'laura_smith', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'laura.smith@example.com', 'Laura Smith', 0, '::1', '', 'active', '1996-09-12', 'New York', 'Tech enthusiast and traveler', 'laura_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(59, 'alex_wilson', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'alex.wilson@example.com', 'Alex Wilson', 0, '::1', '', 'active', '1982-02-08', 'Miami', 'Musician and fitness freak', 'alex_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(60, 'emma_martin', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'emma.martin@example.com', 'Emma Martin', 0, '::1', '', 'active', '1997-11-05', 'Toronto', 'Artist and avid reader', 'emma_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-15 07:27:30', 1),
(61, 'jackson_nguyen', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'jackson.nguyen@example.com', 'Jackson Nguyen', 0, '::1', '', 'active', '1981-07-23', 'Hanoi', 'Tech geek and gamer', 'jackson_photo.jpg', 'Male', '0000-00-00 00:00:00', '2024-02-15 08:13:38', 1),
(62, 'hannah_baker', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'hannah.baker@example.com', 'Hannah Baker', 0, '::1', '', 'active', '1999-03-15', 'Los Angeles', 'Explorer and foodie', 'hannah_photo.jpg', 'Female', '0000-00-00 00:00:00', '2024-02-15 07:33:31', 1),
(63, 'Akshay', '$2y$10$yU3KhUK9GEt9yZCJJXpmWOK6AsmmxCUHRm67C/y18YIUQSLAAkkme', 'akshaykomade012345@gmail.com', 'Akshay Komale', 1, '::1', '', 'active', '2003-08-11', 'Ahmedabad Gujarat', 'Admin Askify', 'Akshay.jpg', 'Male', '0000-00-00 00:00:00', '2024-03-19 17:06:57', 0),
(72, 'akshay', '$2y$10$5G1c5kk8HZxdGnE2DPkwBOxSO4DNkyIljd9hE4R5ZfXbQ1ICp4y5W', 'akshaytry@gmail.com', 'Akshay ', 0, '::1', '', 'active', '2024-02-09', 'Mehsana', 'Web Developer', '', 'Male', '0000-00-00 00:00:00', '2024-02-17 11:31:29', 1),
(81, 'Ban Test', '$2y$10$N6oMhItGEMNEoiBACBz/4.xzgEFWiWbqw8WnzI0YYazVQTqHruTGK', 'akshaykomade012345@gmail.com', 'notthing', 0, '::1', '', 'active', '2015-02-04', 'Jammu ', 'Vella', '', 'Male', '0000-00-00 00:00:00', '2024-02-27 09:29:46', 1),
(82, 'akshay', '$2y$10$cJID2G4EEp4wseubjlDxTeNcGt1fN6Wf4lgcrTghdvIT4Tubq/j06', 'AKSHAYKOMADE@GMAIL.COM', 'TEra baap', 0, '::1', '', 'active', '0000-00-00', '', '', '', 'Male', '2024-02-25 15:05:48', '2024-04-23 15:21:06', 0),
(83, 'nothing12', '$2y$10$bHeAlTWL.TANhym8kR81gebWxdF6vXaNps0ED5zph69ClJTtO759O', 'notthing@gmail.com', '', 0, '::1', '', 'active', '0000-00-00', '', '', '', 'Male', '2024-03-15 11:25:40', '2024-03-19 17:54:35', 1),
(84, 'Register1', '$2y$10$xjdolCwoHBVfD1J7jVG3TuNKQlzBu64Rv3EgHVfz77Bv2tCX5sE3S', 'Register1@gmail.com', '', 0, '::1', '', 'active', '0000-00-00', '', '', '', 'Male', '2024-03-15 11:27:10', '2024-03-15 11:32:45', 0),
(85, 'registertest2', '$2y$10$FZg74UBVMNHjDxpUyaq3tuPwqHXjgj/ke6ZNpniGJwk6e8yMTLq76', 'registertest2@gmail.com', '', 0, '::1', '', 'active', '0000-00-00', '', '', '', 'Male', '2024-03-15 12:53:21', '2024-03-15 12:53:21', 1),
(86, 'Jaynesh', '$2y$10$HatRhbKwozonWvxzHrrGZuB964ozhOlFpQFA1B01NAF5sq1EDX8t2', 'Jaynesh@gmail.com', 'Jaynesh', 0, '::1', '', 'active', '2003-08-11', 'Amraivadi', 'Web Developer', 'Jaynesh.jpg', 'Male', '2024-03-15 13:15:14', '2024-03-15 14:32:20', 0),
(87, 'akshay ', '$2y$10$Txox/rGOYYXfVDkPNM0jWuwqKCP23h1sX1bnhu/xBQu9UvkqfP/Xq', 'akshay@gmail.com', 'Akshay Komale', 0, '::1', '', 'active', '2029-08-11', 'Ahmedabad', 'Nothing ', 'akshay .png', 'Male', '2024-04-23 14:36:27', '2024-04-23 14:37:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_categories`
--

CREATE TABLE `user_categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_categories`
--

INSERT INTO `user_categories` (`id`, `user_id`, `category_id`) VALUES
(42, 72, 25),
(43, 59, 40),
(44, 81, 42),
(45, 45, 24),
(46, 55, 30),
(47, 49, 47),
(48, 60, 43),
(49, 62, 20),
(50, 61, 30),
(51, 51, 36),
(52, 58, 20),
(53, 54, 22),
(54, 56, 35),
(55, 47, 41),
(56, 52, 22),
(57, 50, 33),
(58, 53, 36),
(59, 48, 45),
(60, 57, 36),
(73, 63, 24),
(74, 63, 25),
(75, 63, 30),
(76, 63, 39),
(77, 63, 40),
(78, 63, 41),
(79, 63, 44),
(80, 84, 21),
(81, 84, 25),
(82, 86, 30),
(83, 86, 35),
(84, 86, 40),
(85, 86, 45),
(86, 87, 19),
(87, 87, 24),
(88, 87, 29),
(89, 87, 35),
(90, 82, 47);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `timestamp`) VALUES
(1, '::1', '2024-04-23 09:51:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_FK_1` (`user_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_FK_1` (`question_id`),
  ADD KEY `answer_FK_2` (`user_id`);

--
-- Indexes for table `answer_likes`
--
ALTER TABLE `answer_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_answer_like1` (`user_id`),
  ADD KEY `fk_answer_like2` (`answer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_FK_1` (`followers`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_fk_1` (`user_id`);

--
-- Indexes for table `followed_categories`
--
ALTER TABLE `followed_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followed_topics_FK_1` (`user_id`),
  ADD KEY `followed_topics_FK_2` (`categories_id`);

--
-- Indexes for table `follower`
--
ALTER TABLE `follower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_FK_1` (`user_id`),
  ADD KEY `fk_follower_2` (`follower_id`);

--
-- Indexes for table `hidden_question`
--
ALTER TABLE `hidden_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Hidden_Fk_1` (`user_id`),
  ADD KEY `Hidden_Fk_2` (`question_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Message_Fk_1` (`sender_id`),
  ADD KEY `messages` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Notifications_FK_3` (`recipient_id`) USING BTREE,
  ADD KEY `Notification_Fk_2` (`answer_id`),
  ADD KEY `Notifications_FK_1` (`question_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_FK_1` (`user_id`),
  ADD KEY `question_fk_3` (`category_id`);

--
-- Indexes for table `question_likes`
--
ALTER TABLE `question_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_1` (`user_id`),
  ADD KEY `fk_likes_2` (`question_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_FK_1` (`from_user`),
  ADD KEY `reports_FK_2` (`question_id`),
  ADD KEY `reports_FK_3` (`answer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserCat_Fk_1` (`user_id`),
  ADD KEY `UserCat_Fk_2` (`category_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `answer_likes`
--
ALTER TABLE `answer_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `followed_categories`
--
ALTER TABLE `followed_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follower`
--
ALTER TABLE `follower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `hidden_question`
--
ALTER TABLE `hidden_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `question_likes`
--
ALTER TABLE `question_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `user_categories`
--
ALTER TABLE `user_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_FK_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_FK_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `answer_likes`
--
ALTER TABLE `answer_likes`
  ADD CONSTRAINT `fk_answer_like1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_answer_like2` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `topics_FK_1` FOREIGN KEY (`followers`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_fk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `followed_categories`
--
ALTER TABLE `followed_categories`
  ADD CONSTRAINT `followed_topics_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followed_topics_FK_2` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follower`
--
ALTER TABLE `follower`
  ADD CONSTRAINT `fk_follower_2` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follower_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hidden_question`
--
ALTER TABLE `hidden_question`
  ADD CONSTRAINT `Hidden_Fk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Hidden_Fk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `Message_Fk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `Notification_Fk_2` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notifications_FK_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notifications_FK_3` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_likes`
--
ALTER TABLE `question_likes`
  ADD CONSTRAINT `fk_likes_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_likes_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_FK_1` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_FK_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_FK_3` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD CONSTRAINT `UserCat_Fk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserCat_Fk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
