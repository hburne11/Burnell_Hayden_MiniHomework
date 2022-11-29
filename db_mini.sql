-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 29, 2022 at 09:42 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `feature_id` int(11) NOT NULL,
  `feature_vehicle` varchar(50) NOT NULL,
  `feature_name` varchar(50) NOT NULL,
  `feature_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `feature_vehicle`, `feature_name`, `feature_desc`) VALUES
(1, 'MINI COUNTRYMAN', 'Redesigned Front End', 'The MINI Countryman boasts an even more rugged character than ever, thanks to the bold new look of the front grille and bumper. The border of the grille comes available in both chrome and optional Piano Black.\r\n                                '),
(2, 'MINI COUNTRYMAN', 'Piano Black Accents', 'MINI’s signature Piano Black trim encases the headlights and taillights, as well as the door handles and the “Countryman” badge on the tailgate – adding an extra edge of elegance and boldness that underscores the car’s ruggedly refined character.'),
(3, 'MINI COUNTRYMAN', 'Easy Opener', 'Need a hand? Just use your feet! With the MINI Countryman’s Easy Opener feature, the hatch door can be opened with a simple swipe of the foot beneath the rear bumper.'),
(4, 'MINI 3DOOR', 'Reimagined Front Grille', 'The MINI 3 door’s boldly redesigned front grille features a single unbroken hexagon, which extends low to the ground to impart a more commanding presence. Air inlets on both sides significantly boost aerodynamics to optimize the fuel consumption of your MINI.'),
(5, 'MINI 3DOOR', 'Standard LED Headlights', 'Let there be LED! The MINI 3 door now comes with standard LED headlights with a high-gloss black inner-housing. Stylish and practical, they feature LED cornering aids that activate when you turn the wheel to light up the road in dark conditions.'),
(6, 'MINI 3DOOR', 'A Colourful Character', 'At MINI, we believe design should engage the senses. And that goes for the colours we create. With a wide range of tones to choose from in the MINI 3 door, you can be sleek and subtle, or bold and bright – or both! Whichever hue you decide best suits you, it’s sure to make a striking statement of your personal style.\r\n'),
(7, 'MINI 5DOOR', 'Dynamic Damper Control', 'The available Dynamic Damper Control, in combination with MINI’s Drive Modes, allows you to customize your driving dynamics. Choose “Comfort” mode for a more leisurely drive or choose \r\n“Sport” mode for ultra-responsive agility around curves and corners.'),
(8, 'MINI 5DOOR', 'Driving Modes', 'The MINI 5 door’s three Driving Modes allow you to customize drive response at the flick of a switch. Go “Green” for leisurely cruising and optimized fuel-efficiency, or jump into “Sport” to unleash more responsive steering and acceleration. Of course, you can always choose “Mid” for a happy motoring medium.'),
(9, 'MINI 5DOOR', 'Multi-Link Rear Suspension', 'Unlike many small cars, the MINI 5 door features a Multi-Link Rear Suspension system. This unique setup allows each wheel to react independently to bumps in the road, meaning an uneven surface won’t affect the entire chassis.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `media_id` tinyint(3) UNSIGNED NOT NULL,
  `media_name` varchar(100) NOT NULL,
  `media_location` varchar(25) NOT NULL,
  `media_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`media_id`, `media_name`, `media_location`, `media_type`) VALUES
(1, 'logo.png', 'homepage', 'png'),
(2, 'header.png', 'navigation bar', 'png'),
(3, 'shadow.png', 'header', 'png'),
(4, 'shadow_header.png', 'header', 'png'),
(5, 'untamed.png', 'header', 'png'),
(6, 'PHEV.png', 'hero', 'png'),
(7, 'F56-S.png', 'hero', 'png'),
(8, 'F55-S.png', 'hero', 'png'),
(9, 'cmLB.jpg', 'lightbox', 'jpg'),
(10, 'm3LB.jpg', 'lightbox', 'jpg'),
(11, 'm5LB.jpg', 'lightbox', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicles`
--

CREATE TABLE `tbl_vehicles` (
  `vehicle_id` tinyint(3) UNSIGNED NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_desc` text NOT NULL,
  `vehicle_colour` varchar(25) NOT NULL,
  `vehicle_price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vehicles`
--

INSERT INTO `tbl_vehicles` (`vehicle_id`, `vehicle_name`, `vehicle_desc`, `vehicle_colour`, `vehicle_price`) VALUES
(1, 'MINI COUNTRYMAN ALL4', 'The new MINI Countryman ALL4 is as daring and adventure minded as you are. Whether you prefer playing in the city or escaping it at the first opportunity, you’ll have the freedom and flexibility to go wherever your wandering mind takes you. Time to discover the new MINI Countryman and start writing your next adventure.', 'Silver', '$43,190'),
(2, 'MINI 3DOOR', 'Impressive and self assured, the new MINI 3 door is a true original – combining 60+ years of convention-defying ideas with modern touches and practical features. Iconic by design and urban by nature, it’s made to stand out as you uncover new corners of your city. And with a distinct go-kart feel and plenty of power to boot, you’re sure to find something exciting at every turn.', 'Grey', '$36,790'),
(3, 'MINI 5DOOR', 'It’s everything you love about MINI…and more. Thanks to its unique layout and low centre of gravity, the MINI 5 door is ready to deliver the same corner-carving agility that made its 3-door brother famous. But with more doors, headroom, legroom, and cargo room, it may be the slightly better choice for anyone leading a slightly fuller life.', 'Blue', '$37,790');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `media_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_vehicles`
--
ALTER TABLE `tbl_vehicles`
  MODIFY `vehicle_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
