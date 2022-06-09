-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 04:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technoadd_ce055`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'Mobile', 3),
(2, 'Laptop', 3),
(6, 'Camera', 2),
(7, 'Headphones', 1),
(8, 'SmartWatch', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(9, 'oppo A74', '6.49\" Inch (16.5cm) FHD+ Punch-hole Display with 2400x1080 pixels. Larger screen to body ratio of 90.5%.|Side Fingerprint Sensor. Bluetooth Audio Codec: SBC, AAC, APTX HD, LDAC\r\nQualcomm Snapdragon 480 5G GPU 619 at 650 MHz Support 5G sim| Powerful 2 GHz Octa-core processor, support LPDDR4X memory and latest UFS 2.1 gear 3 storage\r\n5000 mAh lithium polymer battery\r\n48MP Quad Camera ( 48MP Main + 2MP Macro + 2MP Depth Lens) | 8MP Front Camera.\r\nMemory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (5G+5G).| Color OS 11.1 based on Android v11.0 operating system.\r\nConnector type: USB Type C', '1', '09 Jun, 2022', 19, '1654757183-OPPO A74.png'),
(10, 'Asus Zenbook 14X OLED Space Edition', '? Zero-G Titanium Colour\r\n? UX5401ZAS\r\n? i5-12500H\r\n? Intel Iris X? Graphics\r\n? 14.0\" 2.8K OLED Touch screen, 16:10, 90Hz, 550nits, DCI-P3: 100%\r\n? 16GB LPDDR5 RAM / 512GB M.2 NVMe PCIe 4.0 SSD\r\n? Backlit Chiclet Keyboard / Asus NumberPad 2.0\r\n? Camera With privacy shutter\r\n? Dolby Atmos / Smart Amplifier\r\n? Customizable 3.5\" external Screen\r\n? Fingerprint login with power button\r\n? ultra-tough US Space Systems and US Department of Defense’s durability standards tested\r\n? Windows 11 / MSOffice\r\n? Wifi 6E / Dual Fan ice Cool Cooling system\r\n? AI noise-canceling\r\n? 15.9mm / 1.4kg Thin and Light\r\n? 1-Year On-Site Warranty', '2', '09 Jun, 2022', 19, '1654757257-3.jpg'),
(2, 'VivoBook S 15 OLED', ' S3502ZA\r\n Indie Black Colour\r\n Intel i5-12500H\r\n Intel® Iris Xe Graphics\r\n 15.6-inch, FHD OLED 16:9, 600nits, DCI-P3: 100%\r\n 8GB + 8GB DDR4 Ram 512GB M.2 NVMe PCIe 4.0 SSD\r\n Windows 11 / MSOffice\r\n Backlit Keyboard\r\n ASUS Antibacterial Guard 99%\r\n 180° Hinge design\r\n camera With privacy shutter\r\n Smart Amplifier harman/kardon audio\r\n AI noice cancelation\r\n Wi-Fi 6E & Bluetooth 5.2\r\n 70WHrs, 3-cell Li-ion Battery\r\n 18.9 mm thin / 1.8 kg light\r\n 1 Year ON-SITE WARRANTY\r\n', '2', '09 Jun, 2022', 16, '1654753023-1.jpg'),
(4, ' Canon EOS 1500D 24.1 Digital SLR Camera a', '                                        \r\nSensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping). Transmission frequency (central frequency):Frequency: 2 412 to 2 462MHz. Standard diopter :-2.5 - +0.5m-1 (dpt)\r\nISO: 100-6400 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)\r\nLens Mount: EF-S mount compatible with all EF and EF-S lenses (crop-sensor mount versatile and compact, especially when used with EF-S lenses)\r\nCountry of Origin: Taiwan                                ', '6', '09 Jun, 2022', 16, '1654754407-Canon EOS 1500D .png'),
(7, 'OnePlus Nord CE 2 Lite', '                    Camera: 64MP Main Camera with EIS; 2MP Depth Lens and 2MP Macro Lens; Front (Selfie) Camera: 16MP Sony IMX471\r\nCamera Features: AI scene enhancement, Dual-View Video, HDR, Night Portrait, Panorama Mode, Retouch Filters, 1080p video at 30 fps, SLO-MO: 720p video at 120 fps, TIME-LAPSE: 1080p video at 30 fps, Video editor, Face unlock, Screen flash, HDR, NIGHT, PORTRAIT, TIME-LAPSE, Retouch, Filters\r\nDisplay: 6.59 Inches; 120 Hz Refresh Rate; Support sRGB, Display P3; Resolution: 2412 x 1080 pixels 402ppi; Aspect Ratio: 20:9\r\nDisplay Features: Ambient display, Dark mode\r\nOperating System: Oxygen OS based on Android 12\r\nProcessor: Qualcomm Snapdragon 695 5G\r\nBattery & Charging: 5000 mAh with 33W SuperVOOC\r\nAlexa Hands-Free capable: Download the Alexa app to use Alexa hands-free. Play music, make calls, hear news, open apps, navigate, and more, all using just your voice, while on-the-go                ', '1', '09 Jun, 2022', 16, '1654755625-one plush nord ce 2.png'),
(11, 'ASUS Zenbook 14 OLED', '? UX3402ZA\r\n? Power Blue	Colour\r\n? Intel i5-1240P\r\n? Intel® Iris Xe Graphics\r\n? 14.0\" 2.8K OLED 16:10, 90Hz, 400nits, DCI-P3: 100% Display\r\n? Windows 11/ MSOffice \r\n? 16GB LPDDR5 Ram / 512GB M.2 NVMe PCIe 4.0 SSD\r\n? Wifi 6e / Bluetooth 5.2 \r\n? 75Wh 4 cell Battery\r\n? Backlit Keyboard / Asus NumberPad 2.0\r\n? Fingerprint login with Power button\r\n? 16.9 mm thin / 1.39 kg light\r\n? 180° ErgoLift hinge\r\n? Dolby Atmos/ Smart amplifier\r\n? AI noice cancelation \r\n? 1 Year ON-SITE Warranty', '2', '09 Jun, 2022', 20, '1654757360-2.jpg'),
(12, ' realme narzo 50A Prime', '\r\n4 GB RAM | 128 GB ROM | Expandable Up to 7GB Dynamic RAM\r\n16.7 cm (6.6 inch) FHD+ Display\r\n50MP AI Triple Camera| 8MP Front Camera\r\n5000 mAh Battery and 18W quick charge\r\nTravel Adapter is not included in the box.\r\n', '1', '09 Jun, 2022', 20, '1654757443-realme_narzo.png'),
(13, 'boAt Wave Lite Smartwatch', 'The 1.69 inch HD full touch display with 500 nits of brightness will bring every detail to life!\r\nGet sharper color resolution that brightens your virtual world exponentially.\r\nThe ultra slim and lightweight design of the watch is ideal to keep you surfing your wave all day!\r\nMonitor your heart rate and blood oxygen levels on-the-go with the heart rate and SpO2 monitor.\r\nTrack your daily activity: calories burnt & steps taken.\r\nChoose from multiple sports modes which include Walking, Running, Cycling, Climbing, Yoga, Basketball, Football, Badminton, Skipping & Swimming\r\nThe watch supports Google and Apple Fit to seamlessly monitor your health.', '8', '09 Jun, 2022', 16, '1654757626-boat wave lite smartwatch.png'),
(14, 'JBL Tune 500', 'JBL Pure Bass sound\r\nLightweight and foldable design make it convenient anywhere & anytime you want music\r\nTangle-free flat cable keeps cable hassle free\r\nIn-line one button remote with microphone enables hands-free calling.\r\nActivate Voice Assistant on your Mobile device with the click of a button\r\nWhat\'s in the box : TUNE500, 1 x Warranty/Warning', '7', '09 Jun, 2022', 21, '1654757701-JBL Tune 500 .png'),
(15, ' Nikon Digital Camera Z 5 Kit', 'Nikon Z mount\r\nSensor Size: 35.9 mm x 23.9 mm\r\nZ mount NIKKOR lenses F mount NIKKOR lenses (mount adapter required; restrictions may apply)\r\nFOCUS ON CREATING\r\nEXPAND YOUR FULL POTENTIAL\r\nCAPTURING POSSIBILITIES\r\nEFFORTLESS CONTROL\r\nGO BEYOND', '6', '09 Jun, 2022', 21, '1654757773-Nikon Digital Camera.png'),
(16, 'Noise ColorFit Pulse Grand Smart Watch ', '                    1.69\" grand display: Get the rich immersive viewing experience on the 1.69\" LCD display.\r\n60 sports modes: Take your pick from a wide range of 60 sports modes.\r\nInstant charge: Now enjoy more than a day’s worth/25 hours of battery in just 15 minutes of charge. Battery Capacity: 260 mAh\r\n150+ cloud-based & customisable watch faces: Choose from 150+ cloud-based and customisable watch faces and change your look to suit your outfit.\r\nNoise Health suite: Get valuable insights about your health from Noise Health Suite featuring 24*7 heart rate, stress, blood oxygen, sleep monitor and menstrual cycle tracking.\r\nQuick-replies to texts and calls: Stay in touch with the world with quick replies available for Android.\r\nIP68 waterproof: Live your life the way you want to, thanks to the IP68 waterproof rating.\r\n7-day battery: Charge your watch once and go about your week without a hitch.                ', '8', '09 Jun, 2022', 19, '1654757918-Noise ColorFit Pulse Grand Smart Watch .png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Techno Add', 'logo1.png', '© Copyright 2022  | <a href=\"https://www.linkedin.com/in/sandip-kanzariya-8416b523a\">All Right Reserved</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(21, 'f3', 'l3', 'user3', '92877af70a45fd6a2ed7fe81e1236b78', 0),
(19, 'f1', 'l1', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 0),
(20, 'f2', 'l2', 'user2', '7e58d63b60197ceb55a1c487989a3720', 0),
(16, 'first', 'last', 'admin', '0cc175b9c0f1b6a831c399e269772661', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
