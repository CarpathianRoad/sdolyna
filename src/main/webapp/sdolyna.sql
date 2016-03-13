-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2016 at 04:24 PM
-- Server version: 5.5.43-0+deb8u1
-- PHP Version: 5.6.9-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sdolyna`
--

-- --------------------------------------------------------

--
-- Table structure for table `sdolyna_content`
--

CREATE TABLE IF NOT EXISTS `sdolyna_content` (
`article_id` int(11) NOT NULL,
  `article_category` int(11) NOT NULL,
  `article_title_ru` varchar(500) NOT NULL,
  `article_title_en` varchar(500) NOT NULL,
  `article_text_ru` text NOT NULL,
  `article_text_en` text,
  `article_date` varchar(500) DEFAULT NULL,
  `article_date_end` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sdolyna_content`
--

INSERT INTO `sdolyna_content` (`article_id`, `article_category`, `article_title_ru`, `article_title_en`, `article_text_ru`, `article_text_en`, `article_date`, `article_date_end`) VALUES
(1, 0, 'Украина', 'Ukraine', 'Ukraine', 'Ukraine', NULL, ''),
(2, 0, 'Словакия', 'Slovakia', 'Словакия', 'Словакия', NULL, ''),
(3, 0, 'Венгрия', 'Hungary', 'Венгрия', 'Венгрия', NULL, ''),
(4, 0, 'Словения', 'Slovenia', 'Словения', 'Словения', NULL, ''),
(5, 0, 'Хорватия', 'Croatia', 'Хорватия', 'Хорватия', NULL, ''),
(6, 0, 'Греция', 'Greece', 'Греция', 'Греция', NULL, ''),
(7, 1, 'Test', 'Test', '<p>Test</p>\r\n', '<p>Test</p>\r\n', '16.03.2016', ''),
(8, 1, 'Not A Title', 'Not A Title 2', '<p>Not A Title Text</p>\r\n', '<p>Not A Title Text 2</p>\r\n', '08.03.2016', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sdolyna_content`
--
ALTER TABLE `sdolyna_content`
 ADD PRIMARY KEY (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sdolyna_content`
--
ALTER TABLE `sdolyna_content`
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
