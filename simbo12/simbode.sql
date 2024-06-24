
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `class_materials` (
  `id` int(11) NOT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `File_Path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `class_materials` (`id`, `Name`, `Description`, `File_Path`) VALUES
(1, 'What is desolved oxygen', 'Please read this well', '../../File/Materials/dissolved_oxygen.pdf'),
(2, 'Software Project Book', 'Please read this well', '../../File/Materials/software_project_management.pdf');



CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `Notice` varchar(255) DEFAULT NULL,
  `Details` varchar(500) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `notices` (`id`, `Notice`, `Details`, `Date`, `Color`) VALUES
(1, '', '', '',''),
(2, ' ', '', '','');


CREATE TABLE `SD` (
  `id` int(11) NOT NULL,
  `Notice` varchar(255) DEFAULT NULL,
  `Details` varchar(500) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `SD` (`id`, `Notice`, `Details`, `Date`, `Color`) VALUES
(1, 'Welcome to Damota Business and Technology College', 'WE Are The Best College', '2016/05/01',''),
(2, 'Have a greate learning time ', 'WE Are The Best College', '2016/05/01','');

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Answer` varchar(500) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `queries` (`id`, `Subject`, `Description`, `Answer`, `Date`, `UserID`) VALUES
(4, 'Student Test', 'what is html', NULL, '2016/03/12', 1),
(5, 'Student Test', 'what is css', NULL, '2016/03/12', 2),
(9, 'Student Test', 'what is javascript', 'Null', '2016/03/12', 3),
(10, 'Student Test', 'what is react ', 'Null', '2016/03/12', 2),
(13, 'Student Test', 'what is php', NULL, '2016/05/02', 2);



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` text NOT NULL,
  `Address` varchar(255) NOT NULL,
  `DOB` text NOT NULL,
  `Gender` text NOT NULL,
  `User_Type` text NOT NULL,
  `File_Path` varchar(500) NOT NULL,
  `Validation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `Name`, `Email`, `Username`, `Password`, `Phone`, `Address`, `DOB`, `Gender`, `User_Type`, `File_Path`, `Validation`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '@1234567', '0965768798', '      wolaita sodo       ', '2010-12-26', 'Male', 'admin', '../../File/5eeea355389655.59822ff824b72.gif', 'True'),
(2, 'Student Test', 'student@gmail.com', 'student', '@1234567', '0956566565', '   wolaita sodo  ', '2002-02-26', 'Male', 'student', '../../File/image.webp', 'True'),
(4, 'Teacher', 'teacher@gg.com', 'teacher12', '@1234567', '0967565656', ' wolaita sodo', '2010-12-26', 'Male', 'teacher', '', 'False'),
(5, 'Accountant', 'accountant@gg.com', 'accountant12', '@1234567', '0976543455', ' wolaita sodo', '2010-12-26', 'Female', 'accountant', '', ''),
(6, 'simbosa', 'ssttudent@gmail.com', 'abcd1234', '@1234567', '094545342345', '  wolaita sodo ', '2012-12-30', 'Male', 'student', '../../File/sd.JPG', 'True');


ALTER TABLE `class_materials`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `class_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
