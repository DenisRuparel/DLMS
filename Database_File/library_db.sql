-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2022 at 05:24 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` varchar(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` bigint NOT NULL,
  `password` varchar(15) NOT NULL,
  `activation` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `first_name`, `last_name`, `email`, `contact`, `password`, `activation`) VALUES
('denis', 'denis', 'ruparel', 'deniskalpeshbhai436@gmail.com', 4789653210, '123', ''),
('denis12', 'denis', 'ruparel', 'deniskalpeshbhai436@gmail.com', 5698741230, '123', ''),
('ruparel', 'denis', 'ruparel', 'deniskalpeshbhai436@gmail.com', 4568793210, '123', ''),
('vivek_vara', 'vivek', 'vara', 'vivekvara2004@gmail.com', 9512618990, '6916', ''),
('denis123', 'denis', 'ruparel', 'denisruparel@gmail.com', 4521369870, '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` varchar(20) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `publication` varchar(100) NOT NULL,
  `purchase_date` date NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `catagory`, `author_name`, `price`, `publication`, `purchase_date`) VALUES
('1', 'C Programming', 'Coding', 'Denis', 100, 'Atul Publication', '2020-10-16'),
('2', 'C++', 'Programming', 'denis Ruparel', 150, 'Atul Publication', '2021-02-01'),
('3', '.Net Programming', 'Coding', 'Denis Ruparel', 200, 'Atul Publication', '2021-05-10'),
('4', 'PHP', 'Web Development', 'Denis Ruparel', 500, 'Atul Publication', '2008-04-12'),
('5', 'Java Programming', 'Programming', 'Denis Ruparel', 300, 'Atul Publication', '2022-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE IF NOT EXISTS `faculties` (
  `f_id` varchar(15) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` bigint NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`f_id`, `f_name`, `l_name`, `email`, `contact`, `password`) VALUES
('DKR', 'Denis ', 'Ruparel', 'deniskalpeshbhai436@gmail.com', 8866637550, '281204');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `enrollment_number` bigint NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` bigint NOT NULL,
  `password` varchar(15) NOT NULL,
  `activation` varchar(100) NOT NULL,
  PRIMARY KEY (`enrollment_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`enrollment_number`, `first_name`, `last_name`, `email`, `contact`, `password`, `activation`) VALUES
(206270307024, 'vivek', 'vara', 'vivekvara2004@gmail.com', 9512618990, '6916', ''),
(206270307066, 'denis', 'ruparel', 'deniskalpeshbhai436@gmail.com', 8866637550, '123', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
