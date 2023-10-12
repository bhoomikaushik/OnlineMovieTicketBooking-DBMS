-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 08:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

CREATE TABLE `movielist` (
  `movieId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `Director` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imdb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movielist`
--

INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`) VALUES
(1, 'Brahmastra', 'Action', 'Ayan Mukerji', 'Brahm?stra: Part One – Shiva (pronounced [b???ma?str?]) is a 2022 Indian Hindi-language fantasy action-adventure film[c] written and directed by Ayan Mukerji and produced by Karan Johar, Apoorva Mehta, Namit Malhotra, and Mukerji (in his debut production)', 'batman.jpeg', '5.5'),
(2, 'Doctor G', 'Adventure', 'Anubhuti Kashyap', 'Doctor G is a 2022 Indian Hindi-language comedy-drama film directed by Anubhuti Kashyap and produced by Junglee Pictures. It stars Ayushmann Khurrana, Rakul Preet Singh and Shefali Shah. The film follows the struggles of a male doctor who is interested in', '2.jpeg', '8.5'),
(3, 'Pathaan', 'Action', 'Siddharth Anand', 'Pathaan is a 2023 Indian Hindi-language action thriller film[4] written and directed by Siddharth Anand and produced by Aditya Chopra.[5] The film stars Shah Rukh Khan, Deepika Padukone and John Abraham.[5] It is the fourth installment in the YRF Spy Univ', '4.avif', '8.8'),
(4, 'Ram Setu', 'Adventure', 'Abhishek Sharma', 'Ram Setu (transl.?The bridge of Rama) is a 2022 Indian Hindi-language action-adventure film[4] directed by Abhishek Sharma. The film stars Akshay Kumar, Jacqueline Fernandez, Nushrratt Bharuccha and Satya Dev and follows an archeologist who is investigati', '1.jpeg', '7.2'),
(5, 'Cuttputli', 'Adventure', 'Ranjit.M', 'Cuttputlli (transl.?Puppet) is a 2022 Indian Hindi-language psychological crime thriller film directed by Ranjit M. Tewari and produced by Vashu Bhagnani, Jackky Bhagnani and Deepshikha Deshmukh under Pooja Entertainment.[2] A remake of the 2018 Tamil fil', '6.jpeg', '9'),
(6, 'Raksha Bandhan', 'Comedy', 'Anand.L', 'Raksha Bandhan (transl.?The bond of protection) is a 2022 Indian Hindi-language family comedy-drama film directed by Aanand L. Rai and written by Himanshu Sharma and Kanika Dhillon.[4] It stars Akshay Kumar, Bhumi Pednekar, Sadia Khateeb, Sahejmeen Kaur, ', '7.jpeg', '6.4'),
(7, 'Freddy', 'Suspense', 'Shashanka Ghosh', 'Freddy is an 2022 Indian Hindi-language psychological thriller film directed by Shashanka Ghosh and produced by Balaji Motion Pictures, NH Studioz and Northern Lights Film. The film stars Kartik Aaryan and Alaya F.[1] Principal photography commenced in Au', 'images.jpeg', '7.8');

-- --------------------------------------------------------

--
-- Table structure for table `showorder`
--

CREATE TABLE `showorder` (
  `showOrderId` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showorder`
--

INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`, `seat`) VALUES
(1, '2023-01-30', '11.00', 'Basundhara Cineplex', 'Batman Begins', '49'),
(2, '2023-01-31', '5.00', 'BlockBluster', 'Gladiator', '49'),
(3, '2023-01-24', '2.00', 'Balaka Cineplex', 'Spider-Man: Homecoming (2017)', '48'),
(4, '2023-01-26', '8.00', 'Balaka Cineplex', 'Batman Begins', '49'),
(6, '2023-01-27', '2.00', 'Basundhara Cineplex', 'Batman Begins', '48'),
(9, '2023-01-30', '11.00', 'PVR Cinema', 'Brahmastra', '49'),
(10, '', '11.00', 'PVR Cinema', 'Doctor G', '49'),
(11, '', '11.00', 'PVR Cinema', 'Freddy', '49');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterId` int(11) NOT NULL,
  `theaterName` varchar(255) DEFAULT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterId`, `theaterName`, `seat`) VALUES
(1, 'PVR Cinema', 50),
(2, 'Cinepolis', 45),
(3, 'Fun Cinemas', 60),
(4, 'PVR Ansal Plaza', 70);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `timeslotId` int(11) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`timeslotId`, `time`) VALUES
(1, '11 Am'),
(2, '2 Pm'),
(3, '5 Pm'),
(4, '8 Pm'),
(5, '9 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `status`) VALUES
(1, 'admin', 'admin', 101),
(3, 'user', 'user', 202),
(6, 'test', 'test123', 202),
(7, 'test1', '121111', 202);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movielist`
--
ALTER TABLE `movielist`
  ADD PRIMARY KEY (`movieId`);

--
-- Indexes for table `showorder`
--
ALTER TABLE `showorder`
  ADD PRIMARY KEY (`showOrderId`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterId`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslotId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movielist`
--
ALTER TABLE `movielist`
  MODIFY `movieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `showorder`
--
ALTER TABLE `showorder`
  MODIFY `showOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `timeslotId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
