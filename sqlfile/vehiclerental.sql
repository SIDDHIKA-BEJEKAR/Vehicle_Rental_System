-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 02:44 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehiclerental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `Status`, `PostingDate`, `message`) VALUES
(9, 'siddhikasbejekar@gmail.com', 1, '23/04/2021', '25/04/2021', 1, '2021-04-23 06:44:03', NULL),
(10, 'shrijeetramteke@gmail.com', 3, '23/04/2021', '24/04/2021', 1, '2021-04-23 06:47:50', NULL),
(11, 'raginichauragade@gmail.com', 17, '24/04/2021', '27/04/2021', 1, '2021-04-23 06:49:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Hero', '2021-04-22 17:55:27', NULL),
(2, 'Yamaha', '2021-04-22 17:56:18', NULL),
(3, 'Royal Enfield', '2021-04-22 17:58:33', '2021-04-22 17:58:45'),
(4, 'TVS', '2021-04-22 17:59:36', NULL),
(5, 'Bajaj', '2021-04-22 18:00:28', NULL),
(6, 'KTM', '2021-04-22 18:02:41', NULL),
(7, 'Suzuki', '2021-04-22 18:03:27', NULL),
(8, 'Honda', '2021-04-22 18:03:53', NULL),
(9, 'Aprilia\r\n', '2021-04-22 18:04:38', NULL),
(10, 'Hyundai', '2021-04-22 18:05:09', NULL),
(11, 'Mahindra', '2021-04-22 18:05:24', NULL),
(12, 'Kia', '2021-04-22 18:06:00', NULL),
(13, 'Toyota', '2021-04-22 18:06:30', NULL),
(14, 'Tata', '2021-04-22 18:07:16', NULL),
(15, 'Renault', '2021-04-22 18:07:52', NULL),
(16, 'Ford', '2021-04-22 18:09:09', NULL),
(17, 'Skoda', '2021-04-22 18:09:30', NULL),
(18, 'MG', '2021-04-22 18:09:51', NULL),
(19, 'Maruti', '2021-04-22 18:10:11', NULL),
(20, 'Nissan', '2021-04-22 18:10:55', NULL),
(21, 'Volkswagen', '2021-04-22 18:11:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(3, 'Shreya N', 'shreya@gmail.com', '9370559612', 'I want to give my vehicles for rent, what is the procedure?', '2021-04-23 06:58:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', 'Vehicle rental system is a process to allow the user to use a vehicle temporarily for a\r\nperiod with a fee renting. With increasing technology, modernization, and speed of life, customers\r\nneed to reduce the time and effort in obtaining their needs, and we find that some customers who\r\nstay for temporary periods in places other than where they live for the purpose of office work or\r\neven tourism, have a desire to get a vehicle for specific period of time on rent. Through this\r\nproject, we will develop an online web-based system to provide a service rental vehicle for\r\ncustomers as well as the possibility of managing car rental agencies for the owner. This system\r\nwill present excellent tools for fast and accurate development of car rental service.'),
(3, 'About Us ', 'aboutus', 'Vehicle rental system is a process to allow the user to use a vehicle temporarily for a\r\nperiod with a fee renting. With increasing technology, modernization, and speed of life, customers\r\nneed to reduce the time and effort in obtaining their needs, and we find that some customers who\r\nstay for temporary periods in places other than where they live for the purpose of office work or\r\neven tourism, have a desire to get a vehicle for specific period of time on rent. Through this\r\nproject, we will develop an online web-based system to provide a service rental vehicle for\r\ncustomers as well as the possibility of managing car rental agencies for the owner. This system\r\nwill present excellent tools for fast and accurate development of car rental service.'),
(11, 'FAQs', 'faqs', '											');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(5, 'siddhikasbejekar@gmail.com', 'wide range of vehicles available, nice!', '2021-04-23 06:45:48', 1),
(6, 'shrijeetramteke@gmail.com', 'Images of vehicle are nice', '2021-04-23 06:48:18', 1),
(7, 'raginichauragade@gmail.com', 'Great', '2021-04-23 06:49:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(7, 'Siddhika Bejekar', 'siddhikasbejekar@gmail.com', '79cfeb94595de33b3326c06ab1c7dbda', '9420169101', '23/02/2001', 'Nashik', 'Maharashtra', 'India', '2021-04-23 06:38:17', '2021-04-23 09:18:55'),
(8, 'Shrijeet Ramteke', 'shrijeetramteke@gmail.com', '79cfeb94595de33b3326c06ab1c7dbda', '9359029793', '03/05/2000', 'Pune', 'Pune', 'India', '2021-04-23 06:40:01', '2021-04-23 07:19:03'),
(9, 'Ragini Chauragade', 'raginichauragade@gmail.com', '79cfeb94595de33b3326c06ab1c7dbda', '8888657787', '08/10/2000', 'Wanadongari, Nagpur', 'Nagpur', 'India', '2021-04-23 06:41:27', '2021-04-23 07:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'YZF R15 V3', 2, 'Powering the R15 v3 is the same 155cc single-cylinder liquid-cooled 4-valve motor with Variable Valve Actuation (VVA). Power output of 18.6PS and 14.1Nm are 0.7PS and 0.6Nm less than its BS4 counterpart. But it continues to remain the most powerful 150cc motorcycle in India. You find the trademark Deltabox frame on the R15 v3 which had to be tweaked slightly for its third generation. The India-spec motorcycle employs 41mm conventional telescopic fork and an aluminium swingarm with a monoshock unit. Braking duties are taken care of by a 282mm disc with a twin piston caliper on the front wheel while the rear wheel gets a single-piston caliper acting on a 220mm rear disc. While tyre sizes haven’t changed, Yamaha is now offering a radial tyre on the rear wheel. While it is still a weird combination of a cross-ply front and radial rear tyre, we are sure that grip levels are bound to be better with the new offered rubber.', 10000, 'Petrol', 2019, 2, 'r15.jfif', 'r151.jpg', 'r152.jpg', 'r153.webp', 'r154.webip', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-04-22 18:22:04', '2021-04-22 19:26:02'),
(2, 'classic 350', 3, 'Buying RE is always the best experience. As it is a cruise bike not a racing, so don\'t race with it else you will not be able to enjoy the cruise riding. It is the best when you are at about 50-60 kmph. Looks are totally different when you remove the pillion saddle, as I did in my Classic...try it for watching more people at your RE Classic....', 10000, 'Petrol', 2020, 2, 'enfield.jpg', 'enfield1.jpg', 'enfield2.jpg', 'enfield3.jpg', 'enfield4.jpg', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-04-22 18:24:57', '2021-04-22 19:25:58'),
(3, 'Apache RTR 160', 4, 'Apache 160 4v is worth of its cost. It is excellent in riding it is comfortable to long riding. It gives good mileage. It looks amazing but apache 160 4v bs6 is more amazing then bs4.Excellent braking it double disk, system, excellent pickup, excellent bend balance, it is excellent in performance. Servicing is most important to maintain a bike. Very low cost to service. Oil consumption is low. Good choice for everything in riding. Best bike in this range. Powerful performance, disk break good. Overall good bike. First ride was very good. Riding experience is best class in 160 cc bike. Showroom owner nature is good. Best than yamaha fz -s v3 & suzuki gixxer 150. No any issue faced in my 1st service. Overall good bike in this range. Look & performance is much better.', 15000, 'Petrol', 2019, 2, 'rtr.png', 'rtr1.jfif', 'rtr2.jpg', 'rtr3.jpg', 'rtr4.jpg', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:27:05', '2021-04-22 19:28:19'),
(4, 'Pulsar NS 200', 5, 'Very powerful and cheap to maintain bike at an affordable pricing .\r\nBest to buy for daily commute and long rides.\r\nIt just a beast transform looks.\r\nIt has best mileage around 35kmpl in city.\r\n24bhp engine has oodles of torque.\r\nI wish i would buy it nearly .It is my dream bike.\r\nHas a top speed of about 150 kmph. There are lots of vibrations coming from engine post 4500rpm. It is not a commuter bike.Not fun to ride in a city\r\nYou may go with the apache 200 which has punchy low end performance, better equipped instrument console, good exhaust note.Build quality could have been better in ns 200.It is fun to ride in highways and has better brakes.Seat is quite hard and grip of eurogrip tyre is not too good.\r\nA gear position indicator should have been given instead of the glowing of bajaj logo. ', 9000, 'Petrol', 2015, 2, 'pulsar.jpg', 'pulsar1.jpg', 'pulsar2.jpg', 'pulsar3.jfif', 'pulsar4.jfif', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:28:37', '2021-04-22 19:30:35'),
(6, 'HF Deluxe', 1, 'The new Hero HF Deluxe gets a fuel injected engine with \'Xsens\' technology that offers 9 per cent better fuel efficiency and better acceleration as well. The new engine makes 7.94 bhp at 8,000 rpm and the peak torque rating is of 8.05 Nm at 6,000 rpm. Buying process was very simple. All documentation process were also simple. The bike is very responsive and smooth to ride. Look is not appealing but its okay. Performance wise good. After servicing it again turned new. The only con is its light weight which reduces its stability at higher speed. Almost everything is pros like excellent gear changing, acceleration and pick up, brakes and everything. Final verdict : great bike under such price.', 8000, 'Petrol', 2015, 2, 'herohf.jpg', 'herohf1.jpg', 'herohf2.jpg', 'herohf3.jpg', 'herohf4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:29:42', '2021-04-22 19:34:09'),
(7, '200 Duke', 6, 'Style, comfort, and price make up much bigger percentages of the purchasing pie than what the cam followers are coated with. Style is an objective notion, and it’s one that the KTM Duke line has been polarizing since the 1290 Super Duke’s inception in 2014. The alien/mantis razor sharp styling and loud graphics make recent Dukes look fast even while standing still. You’ll surely have your own opinion right away.', 10000, 'Petrol', 2018, 2, 'ktm.jpg', 'ktm1.jpg', 'ktm2.jpg', 'ktm3.jpg', 'ktm4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:31:41', '2021-04-22 19:35:54'),
(8, 'Gixxer', 7, 'Nice fit and finish. Mileage is also good. Front suspension is very stiff but the ride quality is fair enough for Indian roads and traffic. Maneuverability is nice as it handles very easily but watch out for some huge speed breakers, because they can touch the catalytic converter placed at the bottom. Good power low end and good torque. Lacks top speed which maxes out at around 125kph.Handles road curves and bends easily. Comfortable on the shoulder and wrist on long rides. However the seating position is slightly aggressive which tends to push you towards the tank. Excellent mileage and fuel tank capacity.', 10000, 'Petrol', 2018, 2, 'grezzer.jpg', 'grezzer1.jpg', 'grezzer2.jpg', 'grezzer3.jpg', 'grezzer4.jfif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:33:50', '2021-04-22 19:39:14'),
(9, 'Shine', 1, 'Honda Shine Review Honda is considered to be one of the leading manufacturer which recently introduced its new bike known as Shine into the Indian market. The new shine comes with an awesome power, great comfort, superb style as well as amazing mileage. The engine of Shine delivers the maximum power of 10.12 BHP @ 7500 RPM in combination with the maximum torque of 10.54 NM @ 5500 RPM. This power packed engine comes with a OHC valve system and carburetor fuel system. The starting system of the bike has two options namely kick start and electric start. The lubrication of the bike is of forced pressure with wet pump and it has a viscous paper filter which is really good. ', 5000, 'Petrol', 2010, 2, 'shine.jpg', 'shine1.jpg', 'shine2.jpg', 'shine3.jpg', 'shine4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:35:07', '2021-04-22 19:40:12'),
(10, 'Activa 5G', 8, 'Underneath the long and wide seat sits the same 109.19cc, air-cooled, single-cylinder engine that has been powering the last few generations of the Activa. Performance too has remained unchanged, with 8PS being generated at 7,500rpm and 9Nm at 5,500rpm. The variomatic transmission, carried over from the 4G, is a reminder of how the Activa has always been tuned to suit city hauls. As a result, 0-60kmph is achieved in 10.55 seconds. Ergonomically, the Honda Activa 5G offers a typical scooter-like seating posture i.e. upright and relaxed. Taller riders need to be aware of the handlebar hitting their knees while making sharp turns and U-turns. The pillion too sits comfortably, with an easy reach to the footpegs, which fit almost flush into the body when folded.', 5000, 'Petrol', 2015, 2, 'activa.jfif', 'activa1.jfif', 'activa2.jpg', 'activa3.jpg', 'activa4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:36:54', '2021-04-22 19:41:34'),
(11, 'Jupiter', 4, 'Back when the Jupiter was launched in 2013, it was considered to be a premium scooter. Now though, it sits in the affordable 110cc space, while its larger sibling, the Ntorq, takes on the premium 125cc segment. Despite the growing popularity of the Ntorq and the 125cc category, the Jupiter’s mass-market appeal continues to put it at the top of TVS’ sales chart. The popular scooter was updated to BS6-spec a few months ago, but the pandemic has only now given us the chance to ride it. The Jupiter’s system targets fuel economy and the company is claiming that it is 15 percent more efficient than the model it replaced. In our tests, the BS6 Jupiter returned 50.4kpl in the city and 57.6kpl on the highway. While those numbers are impressive, the 2020 Suzuki Access 125 remains the most efficient BS6 scooter we have tested.', 8000, 'Petrol', 2019, 2, 'jupiter.jpg', 'jupiter1.jfif', 'jupiter2.png', 'jupiter3.jfif', 'jupiter4.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:39:21', '2021-04-22 19:43:04'),
(12, 'SR 150', 9, 'The red and green accents really pop out and when parked next to the stock SR 150, and the livery almost makes the normal scooter look a decade old. Who knew a simple paint job and livery could make such a difference! On the features front, the SR 150 Race retains the same features as the standard version which I think is an opportunity missed. A digital instrument cluster instead of the analogue speedometer would have looked better with the racier design. The SR 150 race comes with the same 154.8cc air cooled single cylinder engine as the standard SR and makes the same 10.5PS of power and 11.4Nm of torque, but the transmission has been tweaked to enable the bike to get off the line quicker. A new set of cones in the CVT transmission allow the SR 150 Race to accelerate quicker from standstill. Admittedly, the Race does feel peppier as you open the throttle which makes it feel slightly more exciting, but it is difficult to gauge the improvement without an acceleration test. ', 8000, 'Petrol', 2019, 2, 'apirilia.jpg', 'apirilia1.jpg', 'apirilia3.jpg', 'apirilia4.jfif', 'apirilia2.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:42:21', '2021-04-22 19:44:57'),
(13, 'Burgman Street', 7, 'The latest to join the market is the Suzuki Burgman Street, and it\'s a scooter which looks completely different from the sea of scooters on Indian roads today. That\'s a good thing, because the Burgman Street is designed specifically for India, and it borrows its styling from Suzuki\'s international maxi-scooter range, the Suzuki Burgman. Unlike the international range though, which has engines displacing as much as 650 cc, for India, Suzuki has tried to play it safe. And the Burgman Street scooter uses the same platform as the bestselling Suzuki Access 125. The 124 cc, single-cylinder engine makes 8.6 bhp at 7,000 rpm and 10.2 Nm of peak torque at 5,000 rpm. On the move, the Suzuki Burgman Street is eager to get to speed, and has a strong mid-range which allows for quick acceleration to despatch slower moving traffic on the urban commute. But what is immediately likeable and very impressive is the sweet handling characteristics it shares with the Access 125.', 9000, 'Petrol', 2019, 2, 'burgman.jfif', 'burgman1.jfif', 'burgman2.jpg', 'burgman3.jfif', 'burgman4.jfif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:43:41', '2021-04-22 19:46:22'),
(14, 'Dio', 8, 'Everything good and amazing. As compare to others luck of this bike is good suspension and pick is so good .Price of this bike is low as compare to activa 5g . Riding experience is so good as per my suggestion there will be steel body of this bike . Color of this bike is so nice .As my first experience for 1 liter bike run 60km so mileage is so good. The riding experience on dio is average. The ride comfort is normal at the start but if you drive continuous 2 hours or above it might painful. Pillion may not be comfortable for longer journey. It is not good on highway due to its stability. Brakes are best in segment with honda\'s cbs. Without doubt dio is best looking scooter in the current market. It look modern and futuristic. The best is owning any honda vehicle is availability of spares and reasonable parts. The service interval is also good but services provided at official workshop are of average. And sometimes they didn\'t service your vehicle but included everything in bill. The maintenance cost is not high and it is the beat part of it. The tyre provided by the company are of a good quality. And they are good for commuting and best part is they are tubeless. I still own dio over a period of 2 years and till date i have spent only ?5000 on maintenance can you imagine ? but it is also depend on your riding style and proper care. It gives me mileage of 35-40. Sometimes lower and sometimes may be higher depending on throttle response and traffic.', 8000, 'Petrol', 2015, 2, 'dio.jpg', 'dio1.jfif', 'dio2.jfif', 'dio3.jfif', 'dio4.jfif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:49:28', '2021-04-22 19:48:05'),
(15, 'Grazia', 8, 'The Honda Grazia comes powered by the same air-coooled, 124.9cc single-cylinder engine as the Honda Activa 125, and produces an identical 8.6 PS at 6,500rpm and 10.54Nm at 5,000rpm here. The engine features Honda Eco Technology (HET) which lowers friction for increased efficiency. It weighs 1 kg lesser than the Activa 125 at 107kg, and Honda claims the Grazia\'s top speed is 1kmph higher at 85kmph, while claimed efficiency stands at 50kmpl. This is where the Grazia truly comes into its own. Honda has bestowed it with various features to take the fight to competitors that were better-equipped than the Activa 125. First off, the Grazia has an all-LED headlamp that is as good to look at lit up, at as it is to use. It also receives a fully-digital instrumentation cluster. The speedometer has a blue backlight and also features a tachometer, something I hadn\'t seen on a scooter before.', 9000, 'Petrol', 2018, 2, 'grazia.jpg', 'grazia1.jpg', 'grazia2.jfif', 'grazia.png', 'grazia.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:51:34', '2021-04-22 19:49:38'),
(16, 'Maestro Edge', 8, 'The Hero Maestro Edge 110 BS6 goes up against the TVS Jupiter and the Honda Activa 6G. The Maestro Edge BS6 now gets a 110 cc single-cylinder, air-cooled engine which is fuel-injected and makes 8 bhp at 7,500 rpm along with peak torque output of 8.75 Nm at 5,500 rpm. The engine is paired to a CVT unit. I had an amazing experience while driving this scooter. I use it daily for almost 25kms per day.The looks and performance are amazing and the panther black color along with the accessories looks dashing. I am getting nearby around 45kmpl mileage and the overall performance is also good. There is also enough storage space available.When the scooter was new i could feel some vibrations but after the 1st service no vibrations are felt. The top speed i took this scooter is 95kmph.The service is good.Overall this scooter is good for daily basis.', 8000, 'Petrol', 2018, 2, 'maestro.jfif', 'maestro1.jpg', 'maestro2.jpg', 'maestro4.jfif', 'maestro3.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-22 18:52:51', '2021-04-22 19:51:52'),
(17, 'Creta', 10, 'Hyundai Creta review Very smooth to drive and every thing is looks like luxurious. Good judgment of driving and all features.. as point of safety it is very safe as compared to other cars. Maintenance is also cheaper as compared to other cars. The Creta is with me for almost 5 years and I am very happy with the purchase. I got it for an amazing price of 10.27 lac. It\'s bang for the buck. No issues till now. Built quality is also solid. Space is great. Only engine lacks punch for enthusiasts but for normal people it\'s good. Maintenance cost is lower than Suzuki Baleno at authorize service center. Glad that I purchased this one.', 15000, 'Diesel', 2018, 7, 'creta.jfif', 'creta1.jpg', 'creta2.jpg', 'creta3.jfif', 'creta4.jfif', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 18:54:40', '2021-04-22 20:13:54'),
(18, 'Thar', 11, 'The new Thar is easily capable of bringing a million-watt smile onto your face. And that would only get bigger if Mahindra can get the price of the Thar right. It could be tricky. In the past the Thar attracted a small niche, now the target audience can be much larger. But is Mahindra willing to take the plunge and make the pricing attractive enough to appeal to a potentially wider audience at the cost of smaller margins? It has all the trappings to attract even those not inclined to go off-road, so the cost shouldn\'t be a limiting factor. Or would Mahindra charge a premium, because the new Thar does have some expensive equipment? I\'m hoping for a sub INR 15-lakh sticker, but that could be a tough call. October 2, mark the date, it\'s when Mahindra could open the gates or just a window to a whole new adventure lifestyle choice.', 15000, 'Diesel', 2019, 7, 'thar.jpg', 'thar3.jpg', 'thar4.jpg', 'thar2.webp', 'thar3.wenp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 18:56:37', '2021-04-22 20:14:17'),
(19, 'Seltos', 12, 'The 2021 Kia Seltos is really, really good. Although its direct competition includes more than a dozen other subcompact SUVs, the Seltos is such an excellent all-arounder that we\'d also recommend it to those shopping a segment up, in the compacts. Kia offers two different four-cylinder engines in the Seltos: a 2.0-liter that makes 146 horsepower or a turbocharged 1.6-liter that pumps out 175. We were able to sample the Seltos with the turbocharged 1.6-liter in Korea and found its power to be more than adequate. While the base engine is mated to a continuously variable automatic transmission (CVT), the turbo comes with a seven-speed automatic. All-wheel drive is optional with both engines. The Seltos offers a firm but mostly smooth ride and handling is sharp for an SUV—it\'s far more entertaining and composed than rivals such as the Jeep Compass and Mitsubishi Outlander Sport.', 15000, 'Diesel', 2018, 7, 'seltos.jfif', 'seltos1.jpg', 'seltos2.jpg', 'seltos3.jpg', 'seltos4.jfif', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 18:58:19', '2021-04-22 20:14:43'),
(20, 'Fortuner', 13, 'Surprisingly, even while pulling a heavy weight like the Fortuner, the engine barely feels stressed. With the BS6 update, the engine also feels smoother to rev and slightly quieter at idle too. What’s even better is that the added torque is available practically all the time. All you need to do is flex your right foot, and the diesel engine is ready to dart. 20-80kmph (kickdown) is dealt with swiftly in just 6.7 seconds. Inside the city or cruising on the highway, you will appreciate the extra torque for sure. Speaking of the automatic, it is well-suited to the Fortuner’s road-tripping credentials. Upshifts and downshifts are smooth. It will feel slightly laggy only when you push the motor hard. For rare times like these, we recommend using the paddle shifters. \r\n', 20000, 'CNG', 2019, 7, 'fortuner.jpg', 'fortuner1.jpg', 'fortuner2.jpg', 'fortuner3.jpg', 'fortuner4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 19:00:45', '2021-04-22 20:15:04'),
(21, 'Nexon', 14, 'The Tata Nexon is a crossover in the true sense, blending a sub-compact SUV’s tall stance with a hatchback like curvy design. It’s similar to the Ford EcoSport in this sense, as opposed to the boxier Maruti Suzuki Vitara Brezza or Mahindra XUV300. Some may find the styling a touch too busy but it isn’t boring by any stretch of the imagination. The SUV traits of the Nexon are ground clearance, which at 209mm is comparable with the Renault Duster, and large 16-inch wheels. The high-stance is married with a coupe-like sloping roofline that rakes sharply like that of the Range Rover Evoque. The Nexon’s interior has three prominent layers. The upper portion is finished in dark grey plastic, and its quality is on par with its peers. The middle layer gets an aluminium finish, and it looks particularly upmarket. The thickness and solidity of this layer throughout the cabin makes you feel like you’re sitting inside a more premium car. The third and the lowermost layer is a plastic of greyish shade of beige. ', 18000, 'Diesel', 2017, 7, 'nexon.jfif', 'nexon1.jfif', 'nexon2.jpg', 'nexon3.jpg', 'nexon4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 19:03:16', '2021-04-22 20:15:25'),
(22, 'Kiger', 15, 'Renault Kiger Review – Styling In straightforward terms, Kiger looks a muscular, grown-up sibling of Kwid. Now, that is not a bad thing at all as the compact hatchback itself looks very handsome. At the front, Kiger comes with large LED DRLs and a well designed front grille. Straight off, the view from the driver\'s seat is commanding, you get that proper SUV feel because the ride height of the Kiger is quite tall. Today, we are driving the 1.0-litre turbo petrol variant, with a 5-speed gearbox. There is a 1.0-litre naturally aspirated engine on offer as well but that is for a different day. The engine is a 3-pot motor hence it is not the most refined unit out there but it is not bothersome either. There is a slight hint of turbo lag at lower speeds, but it should be alright as long as you are driving in the city. The more glaring bit is the lack of grunt at the top end. Overtaking manoeuvres on the highway will need some planning. The five-speed gearbox is slick and a little notchy, which is a good thing. There is a bit of noise that seeps into the cabin.', 15000, 'Petrol', 2018, 7, 'kiger.jpg', 'kiger1.jfif', 'kiger2.jpg', 'kiger3.jpg', 'kiger4.jpg', 1, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, '2021-04-22 19:04:43', '2021-04-22 20:15:57'),
(23, 'Aspire', 16, 'The Ford Aspire received a major update in late 2018 that brought with it revised styling, a redone cabin and even a new petrol engine. In all, the Ford Aspire can be had in petrol-manual and diesel-manual forms. There\'s also a CNG version on sale. The facelift and larger wheels have done much to enhance the Aspire’s look.No match with other car with safety, comfort and performance. I am too happy with my car. Ground can be increase for better driving experience on off road. Before buying any car, you should take test drive.  The engine is so powerful , even a light touch is enough for car to show its acceleration , 3rd gear is really awesome , sometimes I feel my car being accelerated without pressing accelerator . Performance is awesome . Well servicing is not that expensive , compared to swift dzire servicing I have to pay 1000-1500 more . Cons- if you accelerate more it will give less fuel economy ( that\'s same for every car) . Its time to become aware guys, if you are spending your hard earned money spend it on aspire, you will never regret, Change your perspective and go for good one instead for thinking selling before purchasing .', 15000, 'Diesel', 2018, 4, 'aspire.jpg', 'aspire1.jpg', 'aspire2.jpg', 'aspire.jpg', 'aspire1.jpg', 1, NULL, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2021-04-22 19:07:25', '2021-04-22 20:16:14'),
(24, 'New Superb', 17, 'Skoda Superb is considered to be an underdog in its segment and when you factor in all the things which make it such a great sedan, it currently has no direct competition. Skoda updated the Superb for its 2020 iteration and we got a chance to drive it recently. Needless to say, we came back pretty impressed. It is currently available in two trims, namely L&K and Sportline. The L&K retails at INR 32.99 lakh while the Sportline will set you back by INR 29.99 Lakh. the Superb is only offered with a 2.0-litre TSI petrol engine which cranks out 190 PS and 320 Nm of torque, mated to a 7-speed, dual-clutch gearbox. Skoda claims that the new motor churns out 28% more torque than before. The Superb is mainly bought for the rear seat comfort but if you are in the mood for some spirited driving, this baby won’t disappoint. The powertrain is very enthusiastic in nature and its performance figures reflect the same. 0-100 kmph comes up in jist 7.7 seconds while its top speed is electronically limited to 239 kmph.', 18000, 'CNG', 2020, 4, 'superb.jpg', 'superb1.jpg', 'superb2.jpg', 'superb3.jfif', 'superb4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 19:11:12', '2021-04-22 20:16:42'),
(25, ' Aura', 10, 'Now unlike the 120bhp motor in the Venue, this same 1.0-litre three-cylinder mill produces 99bhp and 175Nm in the Aura. The former also gets a six-speed gearbox, while this Aura\'s unit is a five-speed manual one. But don’t just dismiss it yet. What one will appreciate is that the engine is still quiet at idling and one can barely hear it at low revs. It comes alive post the 1,500rpm mark while revving cleanly to 6,500rpm. However, a strong tug can be felt only post 1,700rpm as the turbo spools in and provides a good boost. The engine does sound good till 4,000rpm post which it only gets more vocal. However, revving so much will seldom be the case as it does the job effectively between 2,000-3,500rpm. Also at 1020kg this is a light car and with an immediate throttle response it moves quickly too. Sure newer drivers might be taken aback by the slight torque steer, but the actual surprise will be the way it sprints quickly.', 15000, 'Diesel', 2018, 4, 'aura.jpg', 'aura1.jpeg', 'aura2.jpg', 'aura3.jpg', 'aura4.jpg', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2021-04-22 19:12:16', '2021-04-22 20:17:12'),
(26, 'Camry', 13, 'The Camry Hybrid’s utterly seamless power delivery, which most owners take for granted, is something that impressed me the most. Getting the two powertrains, a 178hp, 2.5 petrol engine and a 120hp electric motor to work in perfect unison, without a jerk or jolt when switching from one to another or working together, is the culmination of the work of thousands of engineers and decades of experience. It’s also a constant reminder as to why Toyota is the absolute master of hybrid technology. The e-CVT transmission also plays a key role in the linear, uninterrupted power delivery that I have quickly come to appreciate as the hallmark of the Camry Hybrid. Leave the gearbox to its own devices, which essentially means leaving it in D, and this Toyota sedan has the stepless lope of an electric car. Except that it’s not all-electric, especially on the highway. Coming back to my Mahabaleshwar trip, before I got gobsmacked by the Camry Hybrid’s ultra-smooth character on my way out of town, it’s on this maiden outing that I also realised that it feels just like a regular petrol sedan on the highway.', 15000, 'Petrol', 2019, 4, 'camry.jfif', 'camry1.jpg', 'camry2.jpg', 'camry3.jfif', 'camry4.jpg', 1, 1, 1, 1, NULL, 1, 1, NULL, 1, 1, 1, 1, '2021-04-22 19:13:29', '2021-04-22 20:17:43'),
(27, 'ZS EV', 18, 'As we’ve come to expect from MG, the ZS EV is extensively specified as a standard offering, and there’s a pretty competitive powertrain too, especially given the price. Central to that is a 105kW/353Nm electric motor, with a 44.5kWh battery pack that delivers a WLTP-certified driving range of up to 263km. hat drive away price represents a $3000 saving on what was initially announced as a pre-order special, illustrating just how determined MG is to keep the price as sharp as possible. Any early adopters who put down a deposit (the first 100 special orders were snapped up immediately), will of course get their new ZS EV for the new, reduced price. Crucially, that makes the MG ZS the most affordable electric car on sale in Australia. MG Australia’s CEO Peter Ciao, told CarAdvice he won’t even be driving one, such is the demand from customers.', 15000, 'CNG', 2019, 5, 'mg.jfif', 'mg1.jpg', 'mg2.jpg', 'mg3.jpg', 'mg4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 19:15:55', '2021-04-22 20:18:06'),
(28, 'City ', 8, 'Honda has deployed the familiar 100hp, 1.5-litre, i-DTEC diesel engine to power the City, but it now includes a NOx Storage Catalyst (NSC) and a diesel particulate filter (DPF) to meet BS6 emission norms. It is much quieter and more refined than the previous version. With modifications to the shapes of certain components, such as the chain case, combustion pump protection, bracket and oval catalytic converter, as well as the inclusion of additional ribs for the engine block and a cover-tightening floating structure, Honda has managed to significantly reduce the squeaking and rattling sound from the engine. Vibrations too are excellently controlled, thanks to additional insulation and sound-deadening materials. What hasn’t changed is this engine’s zero-lag character and strong low-end responses. With a very tractable nature and linear power delivery, this is one of the most user-friendly diesels around. It feels at ease while chugging along in a higher gear at a low engine speed, and the moment you put your foot down, it builds speed in a very smooth manner.', 20000, 'Diesel', 2018, 4, 'city.jpg', 'city1.jpg', 'city2.jpg', 'city3.jpg', 'city4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-04-22 19:17:00', '2021-04-22 20:18:25'),
(29, 'Suzuki Ciaz', 19, 'The Ciaz 1.5 diesel comes with a decent set of features. There’s multifunctional steering, a single zone climate control, height adjustment for the driver’s seat, cruise control, auto headlamp, rear AC vents, and many cup and bottle holders. The Ciaz is an easy car to drive. And that begins with good visibility. It might be a sedan, but it has relatively high seating. Pair it with slim A-pillars and a low set dashboard and the visibility is very good in this car. Even the rear side windows are big and the outside rearview mirrors do a good job of showing what’s behind. The Ciaz we have here is powered by a 1.5-litre diesel. And compared to the older 1.3 Multijet, this one is quiet, refined and far less granular in its sound and feel in comparison to the older engine. There’s less turbo-lag too. And the 1.5-litre engine doesn’t play dead under 1500rpm as the older 1.3-litre did. It doesn’t feel slow or lethargic, and it is completely up to the task of dealing with stop and go traffic as well as slow city commuting.', 18000, 'CNG\r\n', 2018, 4, 'ciaz.jfif', 'ciaz1.jpg', 'ciaz2.jfif', 'ciaz3.jfif', 'ciaz4.jpg', 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, '2021-04-22 19:18:46', '2021-04-22 20:18:41'),
(30, 'Vento', 21, 'The Volkswagen Vento needs no introduction, after all, this Honda City-rival has been on sale in India for nearly a decade now. With periodic updates, strengths like its solid build and driving manners, Volkswagen has managed to keep its sales afloat despite the competition, which have gone through generation updates over the years.In its latest, 2020 iteration, the talking point is its all-new 1.0-litre turbo-petrol engine that it shares with the Volkswagen Polo and Skoda Rapid. This motor replaces all the engines from its range – 1.6-litre naturally aspirated petrol, 1.2-litre turbo-petrol and the 1.5-litre diesel;and for the moment, this sole engine offering will be available with only a 6-speed manual transmission, and although the automatic (6-speed torque converter) has been announced, its production hasn’t commenced just yet. This 999cc, three-cylinder turbo-petrol unit produces 110hp and 175Nm of torque, which is 5hp more than the old 1.2-litre four-cylinder turbo-petrol motor that it replaces. Compared to the international 115hp/200Nm state of tune, this version gets a wider spread of max torque, from 1,750-4,000rpm (vs 2,000-3,500rpm in the international spec).This TSI motor gets direct injection, which means that a precise amount of fuel is sprayed directly into the cylinder at extremely high pressures (up to 350bar), resulting in better/more efficient combustion, which translates into better performance compared to a port (indirect) injection unit.', 15000, 'Diesel', 2018, 4, 'vento.jpg', 'vento2.jfif', 'vento3.jfif', 'vento4.jpg', 'vento.jpg', 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, 1, '2021-04-22 19:20:27', '2021-04-22 20:19:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
