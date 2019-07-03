-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 11:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'lol', 'jim_alsadik', 'rabbi_ahmed', '2019-05-09 14:55:08', 'no', 1),
(2, 'Please guys say something???', 'jim_alsadik', 'jim_alsadik', '2019-05-09 15:00:30', 'no', 3),
(3, 'Vendetta?!', 'rabbi_ahmed', 'jim_alsadik', '2019-05-09 15:01:50', 'no', 3),
(4, 'bal', 'tasnim_noor', 'rabbi_ahmed', '2019-05-19 08:20:47', 'no', 1),
(5, 'Great', 'jim_alsadik', 'tasnim_noor', '2019-06-22 16:46:07', 'no', 10),
(6, 'Agreed', 'jim_alsadik', 'tasnim_noor', '2019-06-22 16:46:16', 'no', 9),
(7, 'HMMM', 'jim_alsadik', 'rabbi_ahmed', '2019-06-22 16:46:24', 'no', 8),
(8, 'Hahahahahahaha', 'jim_alsadik', 'rabbi_ahmed', '2019-06-22 16:46:33', 'no', 7),
(9, '?!', 'jim_alsadik', 'rabbi_ahmed', '2019-06-22 16:46:40', 'no', 6),
(10, '!!!', 'rabbi_ahmed', 'tasnim_noor', '2019-06-22 16:47:12', 'no', 10),
(11, 'WOW', 'rabbi_ahmed', 'jim_alsadik', '2019-06-22 16:47:18', 'no', 11),
(12, 'hello', 'rabbi_ahmed', 'jim_alsadik', '2019-06-22 16:47:45', 'no', 2),
(13, 'nice', 'tasnim_noor', 'jim_alsadik', '2019-06-22 16:51:00', 'no', 11),
(14, 'Sure?!', 'tasnim_noor', 'rabbi_ahmed', '2019-06-22 16:51:27', 'no', 8),
(15, '!!!!', 'tasnim_noor', 'rabbi_ahmed', '2019-06-22 16:51:47', 'no', 7),
(16, 'anonymous', 'tasnim_noor', 'jim_alsadik', '2019-06-22 16:51:58', 'no', 3),
(17, 'Hi !', 'tasnim_noor', 'jim_alsadik', '2019-06-22 16:54:16', 'no', 2);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'jim_alsadik', 1),
(3, 'rabbi_ahmed', 3),
(4, 'jim_alsadik', 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'jim_alsadik', 'rabbi_ahmed', 'hey buddy\r\nhow are you???', '2019-05-09 14:57:22', 'yes', 'yes', 'no'),
(2, 'rabbi_ahmed', 'jim_alsadik', 'im fine , cool', '2019-05-09 14:57:47', 'yes', 'yes', 'no'),
(3, 'jim_alsadik', 'rabbi_ahmed', 'Great', '2019-05-09 15:02:09', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'rabbi_ahmed', 'jim_alsadik', 'Jim Alsadik commented on your post', 'post.php?id=1', '2019-05-09 14:55:08', 'yes', 'yes'),
(2, 'rabbi_ahmed', 'jim_alsadik', 'Jim Alsadik liked your post', 'post.php?id=1', '2019-05-09 14:55:50', 'yes', 'yes'),
(3, 'jim_alsadik', 'rabbi_ahmed', 'Rabbi Ahmed liked your post', 'post.php?id=3', '2019-05-09 15:01:17', 'no', 'yes'),
(4, 'jim_alsadik', 'rabbi_ahmed', 'Rabbi Ahmed commented on your post', 'post.php?id=3', '2019-05-09 15:01:50', 'no', 'yes'),
(5, 'rabbi_ahmed', 'tasnim_noor', 'Tasnim Noor commented on your post', 'post.php?id=1', '2019-05-19 08:20:47', 'no', 'yes'),
(6, 'jim_alsadik', 'tasnim_noor', 'Tasnim Noor commented on a post you commented on', 'post.php?id=1', '2019-05-19 08:20:47', 'no', 'yes'),
(7, 'tasnim_noor', 'jim_alsadik', 'Jim Alsadik commented on your post', 'post.php?id=10', '2019-06-22 16:46:07', 'no', 'no'),
(8, 'tasnim_noor', 'jim_alsadik', 'Jim Alsadik commented on your post', 'post.php?id=9', '2019-06-22 16:46:16', 'no', 'no'),
(9, 'rabbi_ahmed', 'jim_alsadik', 'Jim Alsadik commented on your post', 'post.php?id=8', '2019-06-22 16:46:24', 'no', 'no'),
(10, 'rabbi_ahmed', 'jim_alsadik', 'Jim Alsadik commented on your post', 'post.php?id=7', '2019-06-22 16:46:33', 'no', 'no'),
(11, 'rabbi_ahmed', 'jim_alsadik', 'Jim Alsadik commented on your post', 'post.php?id=6', '2019-06-22 16:46:40', 'no', 'no'),
(12, 'tasnim_noor', 'rabbi_ahmed', 'Rabbi Ahmed commented on your post', 'post.php?id=10', '2019-06-22 16:47:12', 'no', 'no'),
(13, 'jim_alsadik', 'rabbi_ahmed', 'Rabbi Ahmed commented on a post you commented on', 'post.php?id=10', '2019-06-22 16:47:12', 'no', 'yes'),
(14, 'jim_alsadik', 'rabbi_ahmed', 'Rabbi Ahmed commented on your post', 'post.php?id=11', '2019-06-22 16:47:18', 'no', 'yes'),
(15, 'jim_alsadik', 'rabbi_ahmed', 'Rabbi Ahmed commented on your post', 'post.php?id=2', '2019-06-22 16:47:45', 'no', 'yes'),
(16, 'jim_alsadik', 'tasnim_noor', 'Tasnim Noor commented on your post', 'post.php?id=11', '2019-06-22 16:51:00', 'no', 'yes'),
(17, 'rabbi_ahmed', 'tasnim_noor', 'Tasnim Noor commented on a post you commented on', 'post.php?id=11', '2019-06-22 16:51:00', 'no', 'no'),
(18, 'rabbi_ahmed', 'tasnim_noor', 'Tasnim Noor commented on your post', 'post.php?id=8', '2019-06-22 16:51:27', 'no', 'no'),
(19, 'jim_alsadik', 'tasnim_noor', 'Tasnim Noor commented on a post you commented on', 'post.php?id=8', '2019-06-22 16:51:27', 'no', 'yes'),
(20, 'rabbi_ahmed', 'tasnim_noor', 'Tasnim Noor commented on your post', 'post.php?id=7', '2019-06-22 16:51:47', 'no', 'no'),
(21, 'jim_alsadik', 'tasnim_noor', 'Tasnim Noor commented on a post you commented on', 'post.php?id=7', '2019-06-22 16:51:47', 'no', 'yes'),
(22, 'jim_alsadik', 'tasnim_noor', 'Tasnim Noor commented on your post', 'post.php?id=3', '2019-06-22 16:51:58', 'no', 'yes'),
(23, 'rabbi_ahmed', 'tasnim_noor', 'Tasnim Noor commented on a post you commented on', 'post.php?id=3', '2019-06-22 16:51:58', 'no', 'no'),
(24, 'jim_alsadik', 'tasnim_noor', 'Tasnim Noor commented on your post', 'post.php?id=2', '2019-06-22 16:54:16', 'no', 'yes'),
(25, 'rabbi_ahmed', 'tasnim_noor', 'Tasnim Noor commented on a post you commented on', 'post.php?id=2', '2019-06-22 16:54:16', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'Yahoo<br /> ', 'rabbi_ahmed', 'none', '2019-05-09 14:54:28', 'no', 'yes', 1, ''),
(2, 'Hi', 'jim_alsadik', 'none', '2019-05-09 14:54:55', 'no', 'no', 0, ''),
(3, 'How this picture is?!', 'jim_alsadik', 'none', '2019-05-09 15:00:04', 'no', 'no', 2, 'assets/images/posts/5cd432648737b1920x1080-anonymous_masks_anonymous_photography_mask-24393.jpg'),
(4, 'jim kutta<br /> ', 'tasnim_noor', 'none', '2019-05-19 08:22:44', 'no', 'yes', 0, ''),
(5, 'sudhu ami valo maye tora sobai kharap', 'tasnim_noor', 'none', '2019-05-19 08:22:57', 'no', 'yes', 0, ''),
(6, 'Feeling Great', 'rabbi_ahmed', 'none', '2019-06-22 16:39:13', 'no', 'no', 0, ''),
(7, 'On Messenger', 'rabbi_ahmed', 'none', '2019-06-22 16:39:38', 'no', 'no', 0, 'assets/images/posts/5d0e4bba0ddc9orca-image-1482326708855.jpg_1482326709159.jpeg'),
(8, 'Try hard, be the best.', 'rabbi_ahmed', 'none', '2019-06-22 16:41:08', 'no', 'no', 0, ''),
(9, 'Decession making is very much important', 'tasnim_noor', 'none', '2019-06-22 16:41:50', 'no', 'no', 0, ''),
(10, 'Hmm', 'tasnim_noor', 'none', '2019-06-22 16:43:55', 'no', 'no', 0, 'assets/images/posts/5d0e4cbbe8551image_10f9596e-1af5-4d5d-8768-d6ea52a7f27220180213_111519.jpg'),
(11, 'One day with elders!', 'jim_alsadik', 'none', '2019-06-22 16:45:08', 'no', 'no', 0, 'assets/images/posts/5d0e4d04455f33281b5dff5d0a87b9f4cdebd1672ca88s_n1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Social', 1),
('Site', 1),
('Br', 1),
('BAUET', 1),
('Glitters', 1),
('Rabbi', 1),
('Ahmed', 1),
('Hi', 2),
('Yahoobr', 1),
('Picture', 1),
('Jim', 1),
('Kuttabr', 1),
('Sudhu', 1),
('Ami', 1),
('Valo', 1),
('Maye', 1),
('Tora', 1),
('Sobai', 1),
('Kharap', 1),
('Feeling', 1),
('Messenger', 1),
('Try', 1),
('Hard', 1),
('Decession', 1),
('Hmm', 1),
('Day', 1),
('Elders', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Jim', 'Alsadik', 'jim_alsadik', 'Jimalsadik@gmail.com', 'b4c8c893207bc6f27c384153dc751a24', '2019-05-09', 'assets/images/profile_pics/jim_alsadik94d4df121c67bcb1efe8e317a81a72d9n.jpeg', 5, 2, 'no', ',rabbi_ahmed,tasnim_noor,'),
(2, 'Rabbi', 'Ahmed', 'rabbi_ahmed', 'Rabbi202@outlook.com', 'd1fe775b52c73c2a73477e8a26b7a01a', '2019-05-09', 'assets/images/profile_pics/rabbi_ahmedd13abf489da83983e2f3244d0c0531b0n.jpeg', 5, 1, 'no', ',jim_alsadik,tasnim_noor,'),
(3, 'Tasnim', 'Noor', 'tasnim_noor', 'Tasnimsanda@gmail.com', '383457c01e28cf01179c5035e9b89732', '2019-05-18', 'assets/images/profile_pics/tasnim_noor8cc1eb9dfe751f333b40e6216a11460dn.jpeg', 4, 0, 'no', ',jim_alsadik,rabbi_ahmed,enam_suhash,'),
(4, 'Enam', 'Suhash', 'enam_suhash', 'Easuhash@yahoo.com', '68b2326123681498f854db9495170ac0', '2019-05-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',tasnim_noor,'),
(5, 'Mobid', 'Khan', 'mobid_khan', 'Rockmobid@gmail.com', 'ebbcded9ae1d8415b301bada97caa320', '2019-06-19', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
