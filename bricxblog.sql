-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2018 at 09:58 AM
-- Server version: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bricxblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2018-05-13 03:55:40'),
(2, 'Technology', '2018-05-13 03:55:40'),
(3, 'Lifestyle', '2018-05-13 06:50:53'),
(4, 'Health', '2018-05-14 04:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 7, 'John Doe', 'johndoe@gmail.com', '<p>This is great!!</p>\r\n', '2018-05-14 09:31:50'),
(2, 7, 'Jane Doe', 'janedoe@gmail.com', '<p>Ohh sure...</p>\r\n', '2018-05-14 09:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 'Post One', 'Post-One', '<p>This has been edited. You can also supply an alternative model name to be assigned in the controller. NOTE: Do not include the &quot;_lang&quot; part of your file. For example &quot;codeigniter_lang.php&quot; would be referenced as array(&#39;codeigniter&#39;);&nbsp;This has been edited. You can also supply an alternative model name to be assigned in the controller. NOTE: Do not include the &quot;_lang&quot; part of your file. For example &quot;codeigniter_lang.php&quot; would be referenced as array(&#39;codeigniter&#39;);&nbsp;This has been edited. You can also supply an alternative model name to be assigned in the controller. NOTE: Do not include the &quot;_lang&quot; part of your file. For example &quot;codeigniter_lang.php&quot; would be referenced as array(&#39;codeigniter&#39;);</p>\r\n', 'noimage.png', '2018-05-12 11:53:11'),
(2, 1, 'Post Two', 'Post-Two', '<p>This has been edited. You can also supply an alternative model name to be assigned in the controller. NOTE: Do not include the &quot;_lang&quot; part of your file. For example &quot;codeigniter_lang.php&quot; would be referenced as array(&#39;codeigniter&#39;);&nbsp;This has been edited. You can also supply an alternative model name to be assigned in the controller. NOTE: Do not include the &quot;_lang&quot; part of your file. For example &quot;codeigniter_lang.php&quot; would be referenced as array(&#39;codeigniter&#39;);&nbsp;This has been edited. You can also supply an alternative model name to be assigned in the controller. NOTE: Do not include the &quot;_lang&quot; part of your file. For example &quot;codeigniter_lang.php&quot; would be referenced as array(&#39;codeigniter&#39;);</p>\r\n', 'noimage.png', '2018-05-12 11:53:11'),
(8, 2, 'Post Three', 'Post-Three', '<p>This is post three</p>\r\n', 'noimage.png', '2018-05-13 05:50:43'),
(7, 2, 'Test Post', 'Test-Post', '<p>This is a test post</p>\r\n', 'hrismenu.png', '2018-05-13 05:45:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
