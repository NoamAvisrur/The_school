-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 02:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theschool_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `image`, `password`, `roles_id`) VALUES
(3, 'brad michaels', '0542058766', 'bradm@gmail.com', 'bradm.jpg', '$2y$10$DF0CzEHvGQzYi9bIeEhM/.5R4CHGhdZGbhn4CSpNww1.I97C3EF5e', 1),
(10, 'robert dinn', '0502058766', 'roberd@gmail.com', 'robertd.jpg', '$2y$10$PUXGP0qyXrAZJXzL/yAlJ.JJIpYbxykRrUbXkUth.2o8i9RG.CrRi', 2),
(11, 'dan gil', '0502058700', 'dan@gmail.com', 'dang.jpg', '$2y$10$G8WC3Ram72NhiCt8EW4zPOwu41iVeXoLgc5weVxKOo3G8ujkQ5uDu', 3),
(12, 'steve marshall', '0532225488', 'steve@gmail.com', 'steve.jpg', '$2y$10$SxV57nKv7zbL0LmE/kCkceeq4Ns1cEZ6HFkztz0G/a4k2d7kploaO', 3),
(13, 'edward norton', '0503332378', 'edward@yahoo.com', 'davem.jpg', '$2y$10$9Hx6HfAUpL9Ax1xE9PNqqe3RxnF.YvB.KDQ6gKZjPVg.9yedM/WS.', 2),
(17, 'dave franco', '0542434988', 'dave@gmail.com', 'dave.jpg', '$2y$10$xWyvsiwaCpb03k/c5LdOEuFFLJO8NMsvJXKclbnpFQFp0MN4MdiaO', 3),
(21, 'johanna braddy', '0520034344', 'johanna@gmail.com', 'johanna.jpg', '$2y$10$m4.o4LQOHlqB85Stblnie.P.rEBDK8XnIF.wXtsuK/awlWOpRZiuC', 2);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` varchar(3000) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `des`, `image`) VALUES
(1, 'math', 'Beginning algebra enhanced with pre-algebra topics such as arithmetic, fractions, and word problems as need indicates. Topics include real numbers, linear equations and inequalities in one variable, polynomials, factoring, algebraic fractions, problem solving, systems of linear equations, rational and irrational numbers.', 'mathmetics.jpg'),
(2, 'biology', 'The quantitative aspects of biology - including molecular biology, biochemistry, genetics, and cell biology - represent the core of the academic program. Courses are designed to provide a solid background in the physical sciences and to develop an integrated scientific perspective.', 'biology.jpg'),
(3, 'arts', 'Arts courses are a fantastic way to learn about subjects you love, while building critical thinking and communication skills that can be applied to a wide range of careers.', 'arts.jpg'),
(4, 'sports', 'These courses will cover sport, fitness and coaching, helping students understand the science and leadership behind these areas. Sport training may also help students improve their skills in these areas.', 'sports.jpg'),
(10, 'Finance', 'This Specialization builds on the success of the Introduction to Finance course and provides a rigorous introduction to core topics in financial valuation, including time value of money, cash flow analysis, asset pricing, and risk and return.', 'finance.jpg'),
(11, 'physics', 'Physics is concerned with the study of the universe from the smallest to the largest scale: why it is the way it is and how it works. Such knowledge is basic to scientific progress. ', 'physics.jpg'),
(12, 'English', 'Take an English course with us and you will get a qualified and experienced teacher, work in pairs and groups to develop real-life communication skills, practise your listening, speaking and pronunciation using a range of stimulating materials and classroom activities.', 'english.jpg'),
(13, 'chemistry', 'Chemistry is the study of matter, and all matter is made up of atoms. We will learn about elements, atomic number and mass, isotopes (chemistry moles, not the animal), and compounds. ', 'chemistry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` tinyint(4) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'owner'),
(2, 'manager'),
(3, 'sales');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `phone`, `email`, `image`) VALUES
(1, 'jack markovich', '0502984655', 'jack@gmail.com', 'jack.jpg'),
(2, 'emma wotson', '0542982344', 'emma@gmail.com', 'emma.jpg'),
(3, 'mike rojers', '0532459988', 'mike@yahoo.com', 'mike.jpg'),
(4, 'dana williams', '0519875677', 'dana@gmail.com', 'dana.jpg'),
(16, 'ben adams', '0539872099', 'ben@yahoo.com', 'ben.jpg'),
(17, 'sandie miles', '0504568766', 'sandy@gmail.com', 'sandie.jpg'),
(20, 'ray samuel', '0503334455', 'ray@gmail.com', 'ray.jpg'),
(21, 'ashley cole', '0503336488', 'ashley@gmail.com', 'ashley.jpg'),
(23, 'methow river', '0512221256', 'meth@gmail.com', 'meth.jpg'),
(24, 'eva branden', '0542322360', 'eva@yahoo.com', 'eva1.jpg'),
(26, 'ray lopez', '0503345655', 'fer_lop@gmail.com', 'ray.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `students_courses`
--

CREATE TABLE `students_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_courses`
--

INSERT INTO `students_courses` (`id`, `student_id`, `course_id`) VALUES
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(14, 16, 1),
(16, 16, 10),
(30, 1, 3),
(31, 1, 11),
(32, 1, 12),
(37, 17, 1),
(38, 17, 4),
(39, 17, 10),
(40, 17, 11),
(41, 20, 1),
(42, 20, 2),
(43, 20, 4),
(44, 21, 2),
(45, 21, 10),
(46, 21, 12),
(51, 23, 1),
(52, 23, 2),
(53, 23, 3),
(55, 24, 1),
(56, 24, 3),
(57, 24, 13),
(64, 26, 4),
(65, 26, 11),
(66, 26, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_roles` (`roles_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_courses` (`course_id`),
  ADD KEY `fk_students` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `students_courses`
--
ALTER TABLE `students_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_roles` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD CONSTRAINT `fk_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
