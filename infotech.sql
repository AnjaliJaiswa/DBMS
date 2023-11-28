-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 06:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infotech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `empid` varchar(100) NOT NULL,
  `design` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`empid`, `design`, `name`, `dept`, `password`) VALUES
('101', 'Senior Technician', 'Diganta', 'Computer Science', 'admin'),
('102', 'Senior Technician', 'Anjali', 'Computer Sciemce', 'abc@123');

-- --------------------------------------------------------

--
-- Table structure for table `handing_taking`
--

CREATE TABLE `handing_taking` (
  `item_sr_no` varchar(45) DEFAULT NULL,
  `h_empid` varchar(255) DEFAULT NULL,
  `h_design` varchar(255) DEFAULT NULL,
  `h_name` varchar(100) NOT NULL,
  `h_branch` varchar(100) NOT NULL,
  `r_empid` varchar(255) DEFAULT NULL,
  `r_design` varchar(255) DEFAULT NULL,
  `r_name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `handing_taking`
--

INSERT INTO `handing_taking` (`item_sr_no`, `h_empid`, `h_design`, `h_name`, `h_branch`, `r_empid`, `r_design`, `r_name`, `date`, `lastupdated`) VALUES
(NULL, '15572225N', 'Senior Tech ', 'SACHIN MANDHARE', '4099906K', 'LNk', 'Hariom', 'IT Cell', '29-Sep-2021', '2023-11-28 05:43:59'),
(NULL, '15572225N', 'Senior Tech ', 'SACHIN MANDHARE', '4099906K', 'LNk', 'Hariom', 'IT Cell', '13-Oct-2021', '2023-11-28 05:43:59'),
(NULL, 'ic85258h', 'Junior Tech', 'harshit', 'ic85258k', 'Hav', 'ashik', 'adm', '22-Feb-2022', '2023-11-28 05:42:44'),
(NULL, 'ic85258k', 'Junior Tech', 'ashik', 'ic85258h', 'Rfn', 'SACHIN', 'adm', '10-Feb-2022', '2023-11-28 05:42:44'),
(NULL, 'ic85258k', 'Junior Tech', 'ashik', 'ic85258h', 'capt', 'harshit', 'adm', '16-Feb-2022', '2023-11-28 05:42:44'),
('123', '1234', 'Junior Tech', 'harshit', 'it', '0987', 'Junior tech', 'ashik', '06-12-98', '2023-11-28 05:45:24'),
('009473', 'ic85258h', 'Junior Tech', 'harshit', 'adm', 'ic85258k', 'Junior tech', 'ashik', '12-Mar-2022', '2023-11-28 05:45:24'),
('009473', 'ic85258h', 'Junior Tech', 'harshit', 'adm', 'ic85258k', 'Junior tech', 'ashik', '15-Mar-2022', '2023-11-28 05:45:24'),
('000C5G1000271', 'ic85258h', 'Junior Tech', 'harshit', 'adm', 'ic85258k', 'Junior tech', 'ashik', '25-Mar-2022', '2023-11-28 05:45:24'),
('0009973', 'ic85258h', 'Junior Tech', 'harshit', 'adm', 'ic85258k', 'Junior tech', 'ashik', '15-Mar-2022', '2023-11-28 05:45:24'),
('98765', 'ic85258k', 'Junior Tech', 'ashik', 'adm', 'ic85258h', 'Junior tech', 'harshit', '16-Mar-2022', '2023-11-28 05:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `indl`
--

CREATE TABLE `indl` (
  `empid` varchar(255) NOT NULL,
  `DESIGN` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `indl`
--

INSERT INTO `indl` (`empid`, `DESIGN`, `name`, `birthplace`, `password`) VALUES
('ic85258h', 'Senior Technician', 'harshit', 'moradabad', 'Ê¯)I¨v;½tA¸Z'),
('ic85258l', 'Senior Technician', 'Arun', 'Delhi', '‚\\wËV©&gú­·[”');

-- --------------------------------------------------------

--
-- Table structure for table `issue_record`
--

CREATE TABLE `issue_record` (
  `serno` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `makeandmodel` varchar(100) NOT NULL,
  `au` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `issuedate` varchar(100) NOT NULL,
  `ivlocal` varchar(100) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue_record`
--

INSERT INTO `issue_record` (`serno`, `type`, `makeandmodel`, `au`, `qty`, `loc`, `issuedate`, `ivlocal`, `empid`, `name`, `lastupdated`) VALUES
('11CFRA01800892', 'CPU Wipro', 'CPU', 'Nos', '1', 'IT Cell', '18-Apr-2018', '2399/1/2 GARH RIF', '4087360H', 'Sandeep Singh', '2022-02-17 04:23:56'),
('INA90908MQ', 'CPU HP', 'CPU', 'Nos', '1', 'Records Garh Rif', '08-Dec-2018', '2399/IT/02/2018', '4098265W', 'Neeraj Singh', '2022-02-17 04:23:56'),
('CNC9077R8LO', 'Monitor HP 17\"', 'Monitor TFT', 'Nos', '1', 'Records Garh Rif', '08-Dec-2018', '2399/IT/02/2018', '4098265W', 'Neeraj Singh', '2022-02-17 04:23:56'),
('INA416WYA4X', 'CPU HP Compaq I5', 'CPU', 'Nos', '1', 'IT Cell', '29-Dec-2018', '2399/IT/03/2018', '4083667W', 'Diwaker Prasad Barakoti', '2022-02-17 04:23:56'),
('5113AA173376', 'CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', 'Nos', '1', 'PA to CO', '04-May-2019', '2399/IT/01/2019', '4088009N', 'Manish Barthwal', '2022-02-17 04:23:56'),
('CNC910RF4M', 'Monitor HP 17\"', 'Monitor TFT', 'Nos', '1', 'PA to CO', '04-May-2019', '2399/IT/01/2019', '4088009N', 'Manish Barthwal', '2022-02-17 04:23:56'),
('69530614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'PA to CO', '04-May-2019', '2399/IT/01/2019', '4088009N', 'Manish Barthwal', '2022-02-17 04:23:56'),
('83P1TIS', 'CPU DELL', 'CPU', 'Nos', '1', 'PRI Branch', '04-May-2019', '2399/IT/02/2019', '4081232P', 'SANOJ SINGH', '2022-02-17 04:23:56'),
('MMLNNSS00123700F6E4301', 'Monitor HP 17\" TFT', 'Monitor TFT', 'Nos', '1', 'PRI Branch', '04-May-2019', '2399/IT/02/2019', '4081232P', 'SANOJ SINGH', '2022-02-17 04:23:56'),
('VNF4847681', 'Printer HP Laserjet P1108', 'Printer Monochrome', 'Nos', '1', 'PRI Branch', '04-May-2019', '2399/IT/02/2019', '4081232P', 'SANOJ SINGH', '2022-02-17 04:23:56'),
('73650416', 'UPS Paradyne', 'UPS', 'Nos', '1', 'PRI Branch', '04-May-2019', '2399/IT/02/2019', '4081232P', 'SANOJ SINGH', '2022-02-17 04:23:56'),
('F7P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'A Coy Office', '04-May-2019', '2399/IT/03/2019', '4097008M', 'VIVEKANANDA GHOSH', '2022-02-17 04:23:56'),
('HA19HVFL701754F', 'Samsung TFT Monitor', 'Monitor TFT', 'Nos', '1', 'A Coy Office', '04-May-2019', '2399/IT/03/2019', '4097008M', 'VIVEKANANDA GHOSH', '2022-02-17 04:23:56'),
('HWR1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'B Coy Office', '04-May-2019', '2399/IT/04/2019', '4096481L', 'Dileep Singh ', '2022-02-17 04:23:56'),
('CN-OWR979-64180-7CC-2HNC', 'Monitor Dell (TFT)', 'Monitor TFT', 'Nos', '1', 'B Coy Office', '04-May-2019', '2399/IT/04/2019', '4096481L', 'Dileep Singh ', '2022-02-17 04:23:56'),
('R8P113302815', 'VPS View Sonic', 'VPS', 'Nos', '1', 'Ghatak', '05-Feb-2020', '2399/IT/01/2020', '4091100P', 'Sunil Negi', '2022-02-17 04:23:56'),
('5P9SHR1', 'Laptop Dell', 'Laptop', 'Nos', '1', 'VTC', '05-Mar-2020', '-', '4083874H', 'Pancham Singh', '2022-02-17 04:23:56'),
('11CFRA01800913', 'CPU Wipro', 'CPU', 'Nos', '1', '2IC Office', '24-Jun-2020', '28/IT/G dt 19 Nov 11', 'IC-67048A', 'GS Yewalkar', '2022-02-17 04:23:56'),
('11CFRA01800942', 'CPU Wipro', 'CPU', 'Nos', '1', '2IC Office', '24-Jun-2020', '28/IT/G dt 19 Nov 11', 'IC-67048A', 'GS Yewalkar', '2022-02-17 04:23:56'),
('11CFRA01800913', 'CPU Wipro', 'CPU', 'Nos', '1', 'Ops Room', '24-Jun-2020', '28/IT/G dt 19 Nov 11', '4099906K', 'Hariom Singh Rana', '2022-02-17 04:23:56'),
('D14DUGHU603858', 'UPS Pulstech & Microtek', 'UPS', 'Nos', '1', '2IC Office', '24-Jun-2020', 'IV3009/IT/2 Garh Rif/08', 'IC-67048A', 'GS Yewalkar', '2022-02-17 04:23:56'),
('INA90908TV', 'CPU HP', 'CPU', 'Nos', '1', 'QM Office', '24-Jun-2020', '2256/05/IT/A', 'IC-82494Y', 'Ramneek Singh Bhatia', '2022-02-17 04:23:56'),
('69750614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'QM Office', '24-Jun-2020', '-', 'IC-82494Y', 'Ramneek Singh Bhatia', '2022-02-17 04:23:56'),
('8086A4041575', 'CPU HCL (Black)', 'CPU', 'Nos', '1', 'ADJT Office', '24-Jun-2020', '2256/IT/A', 'IC-80186A', 'Surya Prakash', '2022-02-17 04:23:56'),
('69540614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'A Coy Office', '24-Jun-2020', '-', 'IC-80186A', 'Surya Prakash', '2022-02-17 04:23:56'),
('C4P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'A Branch', '24-Jun-2020', 'IV3009/IT/2 Garh Rif/08', '4089340N', 'K Maheswaran', '2022-02-17 04:23:56'),
('17IUFUHAI233193', 'UPS R/S Power Sys', 'UPS', 'Nos', '1', 'ADJT Office', '24-Jun-2020', '-', '4101857P', 'Suraj Singh Rawat', '2022-02-17 04:23:56'),
('UDVSG1371G3657221', 'CPU ACER i5', 'CPU', 'Nos', '1', 'ADJT Office', '24-Jun-2020', '-', '4101857P', 'Suraj Singh Rawat', '2022-02-17 04:23:56'),
('8086A4041535', 'CPU HCL (Black)', 'CPU', 'Nos', '1', 'A Branch', '24-Jun-2020', '2256/IT/A', '4089887W', 'Ram Prakash', '2022-02-17 04:23:56'),
('3073A1368958', 'CPU HCL', 'CPU', 'Nos', '1', 'A Branch', '24-Jun-2020', '1502/IT/Garh Rif/09/A', '4092894X', 'Devendra Singh Rawat', '2022-02-17 04:23:56'),
('INA917R5ZR', 'Hp 280G4 MT i5 8th Gen', 'CPU', 'Nos', '1', 'G Branch', '24-Jun-2020', '-', '4097705M', 'Babon Mondal', '2022-02-17 04:23:56'),
('83P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'PRI Office', '24-Jun-2020', 'IV3009/IT/2 Garh Rif/08', 'JC-532517F', 'Yogamber Singh', '2022-02-17 04:23:56'),
('73650416', 'UPS Paradyne', 'UPS', 'Nos', '1', 'PRI Office', '24-Jun-2020', 'IV3009/IT/2 Garh Rif/08', 'JC-532517F', 'Yogamber Singh', '2022-02-17 04:23:56'),
('INA909088G', 'CPU HP', 'CPU', 'Nos', '1', 'Q Branch', '24-Jun-2020', '2256/05/IT/A', '4089664Y4089664Y', 'Harnam Singh Rajput', '2022-02-17 04:23:56'),
('VNF4847679', 'Printer HP Laserjet P1108', 'Printer Monochrome', 'Nos', '1', 'Q Branch', '24-Jun-2020', '-', '4089664Y', 'Harnam Singh Rajput', '2022-02-17 04:23:56'),
('INA909088G', 'CPU HP', 'CPU', 'Nos', '1', 'Q Branch', '24-Jun-2020', '-', '4089664Y', 'Harnam Singh Rajput', '2022-02-17 04:23:56'),
('UDVHGS1092E3961467', 'CPU ACER i5', 'CPU', 'Nos', '01', 'Q Branch', '24-Jun-2020', '-', '4091315N', 'Pradeep Singh Guniyal', '2022-02-17 04:23:56'),
('VNF4847681', 'Printer HP Laserjet P1108', 'Printer Monochrome', 'Nos', '1', 'PRI Branch', '26-Jun-2020', '2399/IT/02/2020', '4081232P', 'SANOJ SINGH', '2022-02-17 04:23:56'),
('83P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'PRI Branch', '26-Jun-2020', '2399/IT/03/2020', '4081232P', 'SANOJ SINGH', '2022-02-17 04:23:56'),
('20CUYRVAA035361', 'Microtek Legend 1000 Uninterruptible Power System', 'UPS', 'Nos', '1', '2IC Office', '03 Jul 2020', '-', 'IC-67048A', 'GS Yewalkar', '2022-02-17 04:23:56'),
('INA909084V', 'CPU HP', 'CPU', 'Nos', '1', 'Trg Cell', '29-Jun-2020', 'cmptrcell/11/IT/2020', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('AHA10-LTM171A-00615', 'Interactive Panel', 'Interactive Pannel', 'Nos', '1', 'Trg Cell', '29-Jun-2020', 'cmptrcell/11/IT/2020', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('16B775B1016489', 'UPS Luminious 1 KVA', 'UPS', 'Nos', '1', 'Trg Cell', '29-Jun-2020', 'cmptrcell/11/IT/2020', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('704912063', 'VPS Sharp (XG-MB65X-L)', 'VPS', 'Nos', '1', 'Trg Cell', '29-Jun-2020', 'cmptrcell/11/IT/2020', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('Z7AXB8GFAD007N', 'Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Nos', '1', 'Trg Cell', '29-Jun-2020', 'cmptrcell/11/IT/2020', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('UDVHGS1092E3734567', 'CPU ACER i5', 'CPU', 'Nos', '1', 'CSD', '29-Jun-2020', 'cmptrcell/04/IT/20', '4080633X', 'Rakesh Chandra', '2022-02-17 04:23:56'),
('277138418', 'Monitor HCL CRT (Black)', 'Monitor TFT', 'Nos', '1', 'CSD', '29-Jun-2020', 'cmptrcell/04/IT/20', '4080633X', 'Rakesh Chandra', '2022-02-17 04:23:56'),
('UDVSG1371G3657221', 'CPU ACER i5', 'CPU', 'Nos', '1', 'Adjt Office', '29-Jun-2020', 'cmptrcell/02/IT/20', '4101857N', 'SURAJ SINGH', '2022-02-17 04:23:56'),
('17IUFUHAI233183', 'UPS Microtech', 'UPS', 'Nos', '1', 'Adjt Office', '29-Jun-2020', 'cmptrcell/02/IT/20', '4101857N', 'SURAJ SINGH', '2022-02-17 04:23:56'),
('Z7AXB8GFAD007L', 'Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Nos', '1', 'Adjt Office', '29-Jun-2020', 'cmptrcell/02/IT/20', '4101857N', 'SURAJ SINGH', '2022-02-17 04:23:56'),
('8086A4041575', 'CPU HCL (Black)', 'CPU', 'Nos', '1', 'Adjt Office', '29-Jun-2020', 'cmptrcell/03/IT/20', 'IC-80186A', 'SURYA PRAKASH', '2022-02-17 04:23:56'),
('69540614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'Adjt Office', '29-Jun-2020', 'cmptrcell/03/IT/20', 'IC-80186A', 'SURYA PRAKASH', '2022-02-17 04:23:56'),
('F7P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'HQ Coy Office', '29-Jun-2020', 'cmptrcell/05/IT/20', '4090904X', 'RAJESH RAWAT', '2022-02-17 04:23:56'),
('HA19HVFL701754F', 'Samsung TFT Monitor', 'Monitor TFT', 'Nos', '1', 'HQ Coy Office', '29-Jun-2020', 'cmptrcell/05/IT/20', '4090904X', 'RAJESH RAWAT', '2022-02-17 04:23:56'),
('0009973', 'UPS Luminious', 'UPS', 'Nos', '1', 'HQ Coy Office', '29-Jun-2020', 'cmptrcell/05/IT/20', '4090904X', 'RAJESH RAWAT', '2022-02-17 04:23:56'),
('5113AA173403', 'CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', 'Nos', '1', 'C Coy Office', '29-Jun-2020', 'cmptrcell/07/IT/20', '4097050L', 'Jitender Singh ', '2022-02-17 04:23:56'),
('CN-OWR979-64180-7CC-2HTC', 'Monitor Dell (TFT)', 'Monitor TFT', 'Nos', '1', 'C Coy Office', '29-Jun-2020', 'cmptrcell/07/IT/20', '4097050L', 'Jitender Singh ', '2022-02-17 04:23:56'),
('INA90908VN', '', '', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/10/IT/20', '4096651K', 'VIKASH KUMAR', '2022-02-17 04:23:56'),
('CNC842PL6P', 'Monitor HP 17\"', 'Monitor TFT', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/10/IT/20', '4096651K', 'VIKASH KUMAR', '2022-02-17 04:23:56'),
('HWR1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/06/IT/20', '4097044X', 'RANBEER SINGH', '2022-02-17 04:23:56'),
('CN-OWR979-64180-7CC-2HNC', 'Monitor Dell (TFT)', 'Monitor TFT', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/06/IT/20', '4097044X', 'RANBEER SINGH', '2022-02-17 04:23:56'),
('INA917R5ZR', 'Hp 280G4 MT i5 8th Gen', 'CPU', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('INA917R5ZR', 'Hp 280G4 MT i5 8th Gen', 'CPU', 'Nos', '1', 'G Branch', '29-Jun-2020', 'cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('D14DUGHU603863', 'UPS Elegent Pulstech & Microtek', 'UPS', 'Nos', '1', 'G Branch', '29-Jun-2020', 'cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('3073A1368958', 'CPU HCL', 'CPU', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/19/IT/20', '4089887W', 'RAM PAKRASH', '2022-02-17 04:23:56'),
('MMLXNSS002427007FC4205', 'Monitor ACER', 'Monitor TFT', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/19/IT/20', '4089887W', 'RAM PAKRASH', '2022-02-17 04:23:56'),
('69480614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/19/IT/20', '4089887W', 'RAM PAKRASH', '2022-02-17 04:23:56'),
('VNF4847680', 'Printer HP Laserjet P1108', 'Printer Monochrome', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/19/IT/20', '4089887W', 'RAM PAKRASH', '2022-02-17 04:23:56'),
('8086A4041535', 'CPU HCL (Black)', 'CPU', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/21/IT/20', '4092894X', 'DEVENDRA SINGH RAWAT', '2022-02-17 04:23:56'),
('MMLYOSS001432034C98500', 'Monitor ACER', 'Monitor TFT', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/21/IT/20', '4092894X', 'DEVENDRA SINGH RAWAT', '2022-02-17 04:23:56'),
('44182508269', 'UPS LUMINIOUS PRO 1000', 'UPS', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptrcell/21/IT/20', '4092894X', 'DEVENDRA SINGH RAWAT', '2022-02-17 04:23:56'),
('UDVHGS1092E3961474', 'CPU ACER i5', 'CPU', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/04/IT/20', '4091876H', 'VIKAS SINGH RANA', '2022-02-17 04:23:56'),
('3115BG003703C', 'Monitor 18.5\" HCL LED with Server', 'Monitor TFT', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/04/IT/20', '4091876H', 'VIKAS SINGH RANA', '2022-02-17 04:23:56'),
('G618M740291', 'Printer Ricoh MP 2014AD', 'MFD', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/04/IT/20', '4091876H', 'VIKAS SINGH RANA', '2022-02-17 04:23:56'),
('Z7AXB8GFAD007L', 'Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Nos', '1', 'Docucell', '29-Jun-2020', 'cmptrcell/04/IT/20', '4091876H', 'VIKAS SINGH RANA', '2022-02-17 04:23:56'),
('INA9090952', 'CPU HP', 'CPU', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptr Cell/20/IT/20', '4089340N', 'K. MAHESHWARAN', '2022-02-17 04:23:56'),
('20CUYRVAA035362', 'Microtek Legend 1000', 'UPS', 'Nos', '1', 'A Branch', '29-Jun-2020', 'cmptr Cell/20/IT/20', '4089340N', 'K. MAHESHWARAN', '2022-02-17 04:23:56'),
('83P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'PRI Branch', '29-Jun-2020', 'cmptr Cell/18/IT/20', '4095159M', 'DIBYENDU MONDAL', '2022-02-17 04:23:56'),
('MMLNNSS00123700F6E4301', 'Monitor HP 17\" TFT', 'Monitor TFT', 'Nos', '1', 'PRI Branch', '29-Jun-2020', 'cmptr Cell/18/IT/20', '4095159M', 'DIBYENDU MONDAL', '2022-02-17 04:23:56'),
('69580614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'PRI Branch', '29-Jun-2020', 'cmptr Cell/18/IT/20', '4095159M', 'DIBYENDU MONDAL', '2022-02-17 04:23:56'),
('VNF4847681', 'Printer HP Laserjet P1108', 'Printer Monochrome', 'Nos', '1', 'PRI Branch', '29-Jun-2020', 'cmptr Cell/18/IT/20', '4095159M', 'DIBYENDU MONDAL', '2022-02-17 04:23:56'),
('INA909088G', 'CPU HP', 'CPU', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/14/IT/20', '4089664Y', 'HARNAM SINGH', '2022-02-17 04:23:56'),
('MMLYOSS001432034BF8500', 'Monitor ACER', 'Monitor TFT', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/14/IT/20', '4089664Y', 'HARNAM SINGH', '2022-02-17 04:23:56'),
('1610734', 'R/S Power System', 'UPS', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/14/IT/20', '4089664Y', 'HARNAM SINGH', '2022-02-17 04:23:56'),
('VNF4847679', 'Printer HP Laserjet P1108', 'Printer Monochrome', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/14/IT/20', '4089664Y', 'HARNAM SINGH', '2022-02-17 04:23:56'),
('16P1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/16/IT/20', '4089922N', 'C.DODDI', '2022-02-17 04:23:56'),
('CNC907R7V9', 'Monitor HP 17\"', 'Monitor TFT', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/16/IT/20', '4089922N', 'C.DODDI', '2022-02-17 04:23:56'),
('69590614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/16/IT/20', '4089922N', 'C.DODDI', '2022-02-17 04:23:56'),
('UDVHGS1092E3961467', 'CPU ACER i5', 'CPU', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/15/IT/20', '4091315N', 'PRADEEP KUMAR GUNIYAL', '2022-02-17 04:23:56'),
('MMLYOSSOO1617027628500', 'Monitor ACER', 'Monitor TFT', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/15/IT/20', '4091315N', 'PRADEEP KUMAR GUNIYAL', '2022-02-17 04:23:56'),
('KCPFCG00F527510', 'ASUS', 'CPU', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/09/IT/20', 'JC -531374A', 'SHRI RAJ VERMA', '2022-02-17 04:23:56'),
('69560614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'Q Branch', '29-Jun-2020', 'cmptr Cell/09/IT/20', 'JC -531374A', 'SHRI RAJ VERMA', '2022-02-17 04:23:56'),
('5113AA173402', 'CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', 'Nos', '1', 'A Coy Office', '29-Jun-2020', 'cmptr Cell/11/IT/20', '4102065A', 'ABHISHEK CHAUHAN', '2022-02-17 04:23:56'),
('ZEBA18HDLED109810181259', 'Monitor LED Zebronics', 'Monitor TFT', 'Nos', '1', 'A Coy Office', '29-Jun-2020', 'cmptr Cell/11/IT/20', '4102065A', 'ABHISHEK CHAUHAN', '2022-02-17 04:23:56'),
('11CFRA01800892', 'CPU Wipro', 'CPU', 'Nos', '1', 'C Coy Office', '29-Jun-2020', 'cmptr Cell/08/IT/20', '4094452X', 'SACHIN SINGH', '2022-02-17 04:23:56'),
('CNC907R8KZ', 'Monitor HP 17', 'Monitor TFT', 'Nos', '1', 'C Coy Office', '29-Jun-2020', 'cmptr Cell/08/IT/20', '4094452X', 'SACHIN SINGH', '2022-02-17 04:23:56'),
('8086A4041551', 'CPU HCL (Black)', 'CPU', 'Nos', '1', 'SP Coy Office', '29-Jun-2020', 'cmptr Cell/09/IT/20', '4089488M', 'VINOD SINGH', '2022-02-17 04:23:56'),
('UQUG1110009J2261A', 'Monitor Wipro18.5', 'Monitor TFT', 'Nos', '1', 'SP Coy Office', '29-Jun-2020', 'cmptr Cell/09/IT/20', '4089488M', 'VINOD SINGH', '2022-02-17 04:23:56'),
('T916Q331949', 'Printer Recoh SP 310 DN ', 'Printer Monochrome', 'Nos', '1', 'SP Coy Office', '29-Jun-2020', 'cmptr Cell/09/IT/20', '4089488M', 'VINOD SINGH', '2022-02-17 04:23:56'),
('INI5520660', 'CPU HP', 'CPU', 'Nos', '1', 'SA Office', '29-Jun-2020', 'cmptr Cell/28/IT/20', '4084029K', 'RAVINDRA SINGH', '2022-02-17 04:23:56'),
('69710614', 'UPS PARADYNE 1 KVA', 'UPS', 'Nos', '1', 'SA Office', '29-Jun-2020', 'cmptr Cell/28/IT/20', '4084029K', 'RAVINDRA SINGH', '2022-02-17 04:23:56'),
('704912063', 'VPS Sharp (XG-MB65X-L)', 'VPS', 'Nos', '1', 'IT Cell', '27-Jul-2020', '-', '4083667W', 'Diwaker Prasad Barakoti', '2022-02-17 04:23:56'),
('R8P113302815', 'VPS View Sonic', 'VPS', 'Nos', '1', 'Trg Cell', '27-Jul-2020', '2399/IT/13/G', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('5113AA173376', 'CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20	', '4086321Y', 'Devendra Singh', '2022-02-17 04:23:56'),
('CNC910RF4M', 'Monitor HP 17\"', 'Monitor TFT', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20	', '4086321Y', 'Devendra Singh', '2022-02-17 04:23:56'),
('X2QM014695', 'Epson L385', 'Printer Colour inkjet', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20', '4086321Y', 'Devendra Singh', '2022-02-17 04:23:56'),
('D14DUGHU603858', 'UPS Pulstech & Microtek', 'UPS', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20', '4086321Y', 'Devendra Singh', '2022-02-17 04:23:56'),
('CN-0HVG5J-71616-6AT-05EX-A03', 'Dell', 'Keyboard', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20', '4086321Y', 'Devendra Singh', '2022-02-17 04:23:56'),
('CN-005WC4-71616-65K-0T8V', 'Dell', 'Mouse', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20', '4086321Y', 'Devendra Singh', '2022-02-17 04:23:56'),
('VGGK069535', 'Epson L360', 'Printer Colour inkjet', 'Nos', '1', 'PA to CO', '05-Aug-2020', 'Cmptr Cell/23/IT/20', '4086361Y', 'Devender', '2022-02-17 04:23:56'),
('0009537', 'UPS Luminious', 'UPS', 'Nos', '1', 'IT Cell', '10-Aug-2020', 'Cmptrcell/42/IT/20', '4099906K', 'Hariom Singh Rana', '2022-02-17 04:23:56'),
('20CUYRVAA035390', 'Microtek Legend 1000', 'UPS', 'Nos', '1', 'A Branch', '10-Aug-2020', 'Cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('INA917R5ZR', 'Hp 280G4 MT i5 8th Gen', 'CPU', 'Nos', '1', 'A Branch', '10-Aug-2020', 'Cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('1636SC51GEA8', 'Logitech', 'Keyboard', 'Nos', '1', 'A Branch', '10-Aug-2020', 'Cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('CN09YKV772872684H2HUA00', 'ACER', 'Monitor TFT', 'Nos', '1', 'A Branch', '10-Aug-2020', 'Cmptrcell/41/IT/20', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('1103004274', 'Wipro', 'Keyboard', 'Nos', '1', 'SA Office', '13-Aug-2020', 'Cmptrcell/28/IT/20', '4084029K', 'RAVINDRA SINGH', '2022-02-17 04:23:56'),
('CN-0HVG5J-71616-6AT-05EU-A03', 'DELL', 'Keyboard', 'Nos', '1', 'PRI Branch', '13-Aug-2020', 'Cmptrcell/18/IT/20', '4095159M', 'DIBYENDU MONDAL', '2022-02-17 04:23:56'),
('DKPS21P03A62300E2AK701', 'ACER', 'Keyboard', 'Nos', '1', 'A Branch', '13-Aug-2020', 'Cmptrcell/19/IT/20', '4089887W', 'RAM PAKRASH', '2022-02-17 04:23:56'),
('1634SC50N528', 'Logitech', 'Keyboard', 'Nos', '1', 'A Branch', '13-Aug-2020', 'Cmptrcell/20/IT/20', '4089340N', 'K. MAHESHWARAN', '2022-02-17 04:23:56'),
('BCY4BODCPBZ321', 'HP', 'Keyboard', 'Nos', '1', 'A Branch', '13-Aug-2020', 'Cmptrcell/21/IT/20', '4092894X', 'DEVENDRA SINGH RAWAT', '2022-02-17 04:23:56'),
('CN-0HVG5J-71616-6AT-K5ET', 'DELL', 'Keyboard', 'Nos', '1', 'A Coy Office', '13-Aug-2020', 'Cmptrcell/11/IT/20', '4102065A', 'ABHISHEK CHAUHAN', '2022-02-17 04:23:56'),
('1634SC50N3K8', 'Logitech', 'Keyboard', 'Nos', '1', 'C Coy Office', '13-Aug-2020', 'Cmptrcell/08/IT/20', '4094452X', 'SACHIN SINGH', '2022-02-17 04:23:56'),
('0K001-004900001948000F1', 'ASUS', 'Keyboard', 'Nos', '1', 'Q Branch', '13-Aug-2020', 'Cmptrcell/09/IT/20', 'JC -531374A', 'SHRI RAJ VERMA', '2022-02-17 04:23:56'),
('DKPS21P03A43100641K701', 'ACER', 'Keyboard', 'Nos', '1', 'Q Branch', '13-Aug-2020', 'Cmptrcell/14/IT/20', '4089664Y', 'HARNAM SINGH', '2022-02-17 04:23:56'),
('CN-0DJ331-71616-7BA-0I00', 'DELL', 'Keyboard', 'Nos', '1', 'Q Branch', '13-Aug-2020', 'Cmptrcell/16/IT/20', '4089922N', 'C.DODDI', '2022-02-17 04:23:56'),
('CN-0HVG5J-71616-6AT-K8ET', 'DELL', 'Keyboard', 'Nos', '1', 'Q Branch', '13-Aug-2020', 'Cmptrcell/15/IT/20', '4091315N', 'PRADEEP KUMAR GUNIYAL', '2022-02-17 04:23:56'),
('CN-0HVG5J-71616-6AT-05EX-A03', 'Dell', 'Keyboard', 'Nos', '1', 'PA to CO', '13-Aug-2020', 'Cmptrcell/23/IT/20', '4086361Y', 'Devender', '2022-02-17 04:23:56'),
('CN-0HVG5J-71616-6AT-K7ET', 'DELL', 'Keyboard', 'Nos', '1', 'HQ Coy Office', '13-Aug-2020', 'Cmptrcell/05/IT/20', '4090904X', 'RAJESH RAWAT', '2022-02-17 04:23:56'),
('DKPS21P03A43100641K702', 'ACER', 'Keyboard', 'Nos', '1', 'Docucell', '13-Aug-2020', 'Cmptrcell/06/IT/20', '4097044X', 'RANBEER SINGH', '2022-02-17 04:23:56'),
('1636SC51GE38', 'Logitech', 'Keyboard', 'Nos', '1', 'C Coy Office', '13-Aug-2020', 'Cmptrcell/07/IT/20', '4097050L', 'Jitender Singh ', '2022-02-17 04:23:56'),
('1636SC51DR68', 'Logitech', 'Keyboard', 'Nos', '1', 'Docucell', '13-Aug-2020', 'Cmptrcell/04/IT/20', '4091876H', 'VIKAS SINGH RANA', '2022-02-17 04:23:56'),
('17IUFUHAI233193', 'UPS R/S Power Sys', 'UPS', 'Nos', '1', 'Adjt Office', '13-Aug-2020', 'Cmptrcell/02/IT/20', '4101857N', 'SURAJ SINGH', '2022-02-17 04:23:56'),
('C0807057656', 'HCL', 'Keyboard', 'Nos', '1', 'Adjt Office', '13-Aug-2020', 'Cmptrcell/02/IT/20', '4101857N', 'SURAJ SINGH', '2022-02-17 04:23:56'),
('1636SC51GEA8', 'Logitech', 'Keyboard', 'Nos', '1', 'Adjt Office', '13-Aug-2020', 'Cmptrcell/03/IT/20', 'IC-80186A', 'SURYA PRAKASH', '2022-02-17 04:23:56'),
('C0807057656', 'HCL', 'Keyboard', 'Nos', '1', 'Trg Cell', '13-Aug-2020', 'Cmptrcell/11/IT/20', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('313042874', 'Info Kiosk', 'Info Kiosk', 'Nos', '1', 'Docucell', '26-Aug-2020', 'Cmptrcell/42/IT/20', '4097044X', 'RANBEER SINGH', '2022-02-17 04:23:56'),
('VGGK052486', 'Epson L360', 'Printer Colour inkjet', 'Nos', '1', 'PA to CO', '03-Sep-2020', 'Cmptrcell/23/IT/20', '4086361Y', 'Devender', '2022-02-17 04:23:56'),
('44182509884', 'UPS LUMINIOUS PRO 1000', 'UPS', 'Nos', '1', 'IT Cell', '03-Sep-2020', '//////', '4099906K', 'Hariom Singh Rana', '2022-02-17 04:23:56'),
('44182508268', 'UPS LUMINIOUS PRO 1000', 'UPS', 'Nos', '1', 'IT Cell', '03-Sep-2020', '//', '4099926X', 'Neeraj Singh', '2022-02-17 04:23:56'),
('17BUFUHAF203897', 'Microteck ', 'UPS', 'Nos', '1', 'IT Cell', '03-Sep-2020', '///', '4083667W', 'Diwaker Prasad Barakoti', '2022-02-17 04:23:56'),
('G618M740291', 'Printer Ricoh MP 2014AD', 'MFD', 'Nos', '1', 'Docucell', '03-Sep-2020', 'Cmptrcell/23/IT/20', '4091876H', 'VIKAS SINGH RANA', '2022-02-17 04:23:56'),
('X6NY054995', 'Epson L3110', 'Printer Colour inkjet', 'Nos', '1', 'IT Cell', '05-Oct-2020', 'Cmptrcell/23/IT/21', '4083667W', 'Diwaker Prasad Barakoti', '2022-02-17 04:23:56'),
('F1BH01520', 'Projector Hitachi CP-X467', 'VPS', 'Nos', '1', 'IT Cell', '05-Oct-2020', '-', '4083667W', 'Diwaker Prasad Barakoti', '2022-02-17 04:23:56'),
('704912063', 'VPS Sharp (XG-MB65X-L)', 'VPS', 'Nos', '1', 'Ghatak', '13-Nov-2020', 'Cmptrcell/41/IT/20', '4091100P', 'Sunil Negi', '2022-02-17 04:23:56'),
('KCPFCG00F534512', 'ASUS', 'CPU', 'Nos', '1', 'A Branch', '03-Jan-2021', '2399/IT/G', '4097705M', 'BABON MONDAL ', '2022-02-17 04:23:56'),
('17BT6T2', 'DELL', 'CPU', 'Nos', '1', 'IT Cell', '08-Jan-2021', '2399/IT/G', '4087692M', 'Chandra Mohan', '2022-02-17 04:23:56'),
('011PMDS004002', 'Monitor LG 19M38AB', 'Monitor TFT', 'Nos', '1', 'Trg Cell', '28-Jan-2021', '2399/IT/G', 'JC-532291F', 'Sohan Singh Bisht', '2022-02-17 04:23:56'),
('CN-05MTBR-PRC00-0A0-0KPW', 'Dell', 'Mouse', 'Nos', '1', 'QM office', '17-Feb-2021', '2399/IT/G', 'IC-70946K', 'Anubhav Thapa', '2022-02-17 04:23:56'),
('CN-0P1YDR-PRC00-0AE-0CJM', 'Dell', 'Keyboard', 'Nos', '1', 'Adjt Office', '18-Feb-2021', '2399/IT/G', 'IC-84310N', 'Shridhar', '2022-02-17 04:23:56'),
('DKUSB1P03L60300045K701', '-', 'Keyboard', 'Nos', '1', 'IT Cell', '18-Feb-2021', '-', '4083667W', 'Diwaker Prasad Barakoti', '2022-02-17 04:23:56'),
('CN-05NT8R-PRC00-0AO-0KQH', 'Dell', 'Mouse', 'Nos', '1', '2IC Office', '22-Apr-2021', '2399/IT/2/2021', 'IC-67048A', 'GS Yewalkar', '2022-02-17 04:23:56'),
('-', 'KORES ENDURA ', 'Printer Thermal', 'Nos', '1', 'CSD', '25-Mar-2021', '2399/IT/14/2021', '4080633X', 'Rakesh Chandra', '2022-02-17 04:23:56'),
('2104927536201905607', 'Intex Protector 725 600 VA', 'UPS', 'Nos', '1', 'CO Office', '21-May-2021', '2399/IT/G', 'IC-65732K', 'Rahul Singh, SC', '2022-02-17 04:23:56'),
('HWR1T1S', 'CPU DELL', 'CPU', 'Nos', '1', 'Adjt Office', '22-May-2021', '2399/IT/G', 'IC-84310N', 'Shridhar', '2022-02-17 04:23:56'),
('CN-0P1YDR-PRC00-064-04S6', 'Dell', 'Keyboard', 'Nos', '1', 'A Coy Office', '25-May-2021', '2399/IT/G', '4095217L', 'Vipin Singh', '2022-02-17 04:23:56'),
('CN-05NT8R-PRC00-0AC-04VC', 'Dell', 'Mouse', 'Nos', '1', 'A Coy Office', '25-May-2021', '2399/IT/G', '4095217L', 'Vipin Singh', '2022-02-17 04:23:56'),
('CN-0P1YDR-PRC00-0AH-07LM', 'Dell', 'Keyboard', 'Nos', '1', 'A Coy Office', '26-May-2021', '-', '4095217L', 'Vipin Singh', '2022-02-17 04:23:56'),
('CN-05NT8R-PRC00-0AC-04VK', 'Dell', 'Mouse', 'Nos', '1', 'SA Office', '15-Jun-2021', '2399/IT/G', '4084029K', 'RAVINDRA SINGH', '2022-02-17 04:23:56'),
('11CFRA01800913', 'CPU Wipro', 'CPU', 'Nos', '1', 'IT Cell', '29-Sep-2021', '123/25/01', '15572225N', 'SACHIN MANDHARE', '2022-02-17 04:23:56'),
('1103004274', 'Wipro', 'Keyboard', 'Nos', '1', 'IT Cell', '29-Sep-2021', '123/58/8', '15572225N', 'SACHIN MANDHARE', '2022-02-17 04:23:56'),
('1610734', 'R/S Power System', 'UPS', 'Nos', '1', 'IT Cell', '29-Sep-2021', '123569/85/8', '15572225N', 'SACHIN MANDHARE', '2022-02-17 04:23:56'),
('ABCD1234', 'HP', 'CPU', 'Nos', '1', 'IT Cell', '04-Oct-2021', '1258/789/987', '15572225N', 'SACHIN MANDHARE', '2022-02-17 04:23:56'),
('', '', '', 'Nos', '4', 'IT Cell', '13-Oct-2021', '123456', '15572225N', 'SACHIN MANDHARE', '2022-02-17 04:23:56'),
('G618M740291', 'Printer Ricoh MP 2014AD', 'MFD', 'Nos', '4', 'IT Cell', '13-Oct-2021', '155/1515/g', '15572225N', 'SACHIN MANDHARE', '2022-02-17 04:23:56'),
('xyz123', 'HP', 'CPU', 'Nos', '1', 'Trg Cell', '14-Oct-2021', '155/1515/gfdg', '15582886F', 'Jadhav H R', '2022-02-17 04:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `maintable`
--

CREATE TABLE `maintable` (
  `makeandmodel` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `serno` varchar(100) NOT NULL,
  `gt` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `ledgerpageno` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `issuedate` varchar(100) DEFAULT NULL,
  `cr_no` varchar(100) DEFAULT NULL,
  `cr_date` varchar(100) DEFAULT NULL,
  `dporder_placed` varchar(100) DEFAULT NULL,
  `dpiv_no` varchar(100) DEFAULT NULL,
  `dpiv_date` varchar(100) DEFAULT NULL,
  `deposit_status` varchar(100) DEFAULT NULL,
  `deposit_date` varchar(100) DEFAULT NULL,
  `deposited_by` varchar(100) DEFAULT NULL,
  `fodrv_recd` varchar(100) DEFAULT NULL,
  `macadd` varchar(50) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `ram_cap` varchar(10) DEFAULT NULL,
  `hdd_cap` varchar(30) DEFAULT NULL,
  `processor` varchar(30) DEFAULT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `maintable`
--

INSERT INTO `maintable` (`makeandmodel`, `type`, `serno`, `gt`, `date`, `ledgerpageno`, `status`, `empid`, `name`, `issuedate`, `cr_no`, `cr_date`, `dporder_placed`, `dpiv_no`, `dpiv_date`, `deposit_status`, `deposit_date`, `deposited_by`, `fodrv_recd`, `macadd`, `os`, `ram_cap`, `hdd_cap`, `processor`, `lastupdated`) VALUES
('', 'CPU', '', 'IT', '08-Mar-2022', '', 'Serviceable', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Windows 7', '', '', '', '2022-03-04 04:50:08'),
('UPS Luminious', 'UPS', '0009537', 'IT', '', '-', 'BER', 'ic85258h', 'harshit', '10-Aug-2020', '', '', '', '', '', 'Pending', '', '', '', '', '', '', '', '', '2022-03-04 03:50:17'),
('UPS Luminious', 'UPS', '0009623', 'IT', '', '-', 'BER', 'ic85258h', 'harshit', '29-Jun-2020', 'BER/NSC/206/20', '07-Jul-2020', '09-Jul-2020', '/', '03-Sep-2020', 'Pending', '04-Sep-2020', 'JC-532658W Sub Ram Singh', 'No', '', '', '', '', '', '2022-03-03 17:37:30'),
('UPS Luminious', 'UPS', '0009973', 'IT', '', '-', 'Unserviceable', 'ic85258k', 'ashik', '15-Mar-2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-03 18:28:03'),
('Media converter', 'Media Converter', '000C5G1000271', 'Bn Fund', '', '-', 'Serviceable', 'ic85258k', 'ashik', '25-Mar-2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-02 14:52:02'),
('Media Converter', 'Media Converter', '000C5G1000272', 'Bn Fund', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('kores endura', 'ups', '009473', 'it', '24-Feb-2022', '', 'servicable', 'ic85258k', 'ashik', '15-Mar-2022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-02 14:48:05'),
('Monitor LG 19M38AB', 'Monitor TFT', '011PMDS004002', 'IT', '29-Nov-2020', '-', 'Serviceable', 'JC-532291F', 'Sohan Singh Bisht', '28-Jan-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Fax Modem', 'Modem', '0545E042406', 'Bn Fund', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ASUS', 'Keyboard', '0K001-004900001948000F1', 'IT', '-', '-', 'Serviceable', 'JC -531374A', 'SHRI RAJ VERMA', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Visualizer VPN 555', 'Visualiser', '0NFVP555VIG01', 'IT', '23-Feb-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('111', 'CPU', '1', 'IT', '10-Mar-2022', '11', 'Serviceable', '11', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Windows 7', '11', '11', '111', '2022-03-02 16:47:24'),
('Wipro', 'Keyboard', '1103004274', 'IT', '13-Oct-2021', '-', 'Serviceable', '4099906K', 'Hariom', '29-Sep-2021', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('CPU Wipro', 'CPU', '11CFRA01800892', 'IT', '22-Sep 2020', '-', 'Serviceable', '4094452X', 'SACHIN SINGH', '14-Sep-2020', '', '', '', '', '', '', '', '', '', '00-21-85-94-21-A7', 'Windows 7', '1 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU Wipro', 'CPU', '11CFRA01800913', 'IT', '13-Oct-2021', '-', 'Unserviceable', '4099906K', 'Hariom', '29-Sep-2021', '', '', '', '', '', '', '', '', '', '00-E0-4C-9A-08-83', 'Windows 7', '2 GB', '1 TB', 'i5', '2022-02-17 04:22:14'),
('CPU Wipro', 'CPU', '11CFRA01800942', 'IT', '', '-', 'Unserviceable', 'IC-67048A', 'GS Yewalkar', '14-Jul-2021', '', '', '', '', '', '', '', '', '', '00-E04C9A-09-69', 'Windows 10', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('HP', 'CPU', '123456abcd', 'IT', '14-Oct-2021', '98', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '123456789', 'os', '', '', '', '2022-02-17 04:22:14'),
('Modem TD-8816', 'Modem', '13CA5501892', 'QD', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('R/S Power System', 'UPS', '1610734', 'IT', '13-Oct-2021', '-', 'Serviceable', '4099906K', 'Hariom', '29-Sep-2021', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Logitech', 'Keyboard', '1634SC50N3K8', 'IT', '-', '-', 'Serviceable', '4094452X', 'SACHIN SINGH', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Logitech', 'Keyboard', '1634SC50N528', 'IT', '-', '-', 'Serviceable', '4089340N', 'K. MAHESHWARAN', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Logitech', 'Keyboard', '1636SC51DR68', 'IT', '-', '-', 'Serviceable', '4091876H', 'VIKAS SINGH RANA', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Logitech', 'Keyboard', '1636SC51GE38', 'IT', '-', '-', 'Serviceable', '4097050L', 'Jitender Singh ', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Logitech', 'Keyboard', '1636SC51GEA8', 'IT', '-', '-', 'Serviceable', 'IC-80186A', 'SURYA PRAKASH', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Luminious 1 KVA', 'UPS', '16B775B1016264', 'IT', '', '-', 'Serviceable', '', '', '10-May-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Luminious 1 KVA', 'UPS', '16B775B1016456', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Luminious 1 KVA', 'UPS', '16B775B1016489', 'IT', '', '-', 'Serviceable', 'JC-532291F', 'Sohan Singh Bisht', '10-May-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('LG_G22202', 'Monitor TFT', '16P1T1S', 'IT', '04-Mar-2022', '23', 'Serviceable', 'ic85258h', 'Harshit Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Windows 11', '20gb', '100gb', 'intel', '2022-03-04 04:46:43'),
('DELL', 'CPU', '17BT6T2', 'IT', '02-Apr-2019', '-', 'Serviceable', '4087692M', 'Chandra Mohan', '08-Jan-2021', '', '', '', '', '', '', '', '', '', '-', 'Windows 10', '', '', '', '2022-02-17 04:22:14'),
('Microteck ', 'UPS', '17BUFUHAF203897', 'IT', '06-Apr-2017', '-', 'Replaced', '4083667W', 'Diwaker Prasad Barakoti', '10-May-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Microtech', 'UPS', '17BUFUHAG205764', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Microtech', 'UPS', '17IUFUHAI233183', 'IT', '', '-', 'Serviceable', '4101857N', 'SURAJ SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS R/S Power Sys', 'UPS', '17IUFUHAI233193', 'IT', '', '-', 'Serviceable', '4101857N', 'SURAJ SINGH', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('HP 21.5 inch Full HD IPS Monitor', 'Monitor IPS PANNEL', '1CR03307KK', 'IT', '02-Mar-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Microtek Legend 1000', 'UPS', '20CUYRVAA035361', 'IT', '25 May 2020', '-', 'Serviceable', 'IC-67048A', 'GS Yewalkar', '03 Jul 2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Microtek Legend 1000', 'UPS', '20CUYRVAA035362', 'IT', '25 May 2020', '-', 'Serviceable', '4089340N', 'K. MAHESHWARAN', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Microtek Legend 1000', 'UPS', '20CUYRVAA035389', 'IT', '25 May 2020', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Microtek Legend 1000', 'UPS', '20CUYRVAA035390', 'IT', '25 May 2020', '-', 'Serviceable', '4097705M', 'BABON MONDAL ', '10-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Intex Protector 725 600 VA', 'UPS', '2104927536201905607', 'IT', '14-May-2021', '-', 'Serviceable', 'IC-65732K', 'Rahul Singh, SC', '21-May-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Monitor HCL CRT (Black)', 'Monitor CRT', '227137752', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HCL CRT (Black)', 'Monitor CRT', '227138324', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HCL CRT (Black)', 'Monitor TFT', '277138383', 'IT', '', '-', 'BER', '', '', '17-Aug-2019', 'BER/NSC/156/19', '19-Aug-2019', '20-Aug-2019', '//////////////', '27-Jan-2020', 'Deposited', '29-Jan-2020', 'Nb Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HCL CRT (Black)', 'Monitor CRT', '277138418', 'IT', '', '-', 'Serviceable', '4080633X', 'Rakesh Chandra', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('CPU HCL', 'CPU', '3073A1368958', 'IT', '', '-', 'Serviceable', '4089887W', 'RAM PAKRASH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '00-1A-92-3D-68-E1', 'Windows 7', '2 GB', '500 GB', 'Pentium 4', '2022-02-17 04:22:14'),
('Monitor 18.5\" HCL LED with Server', 'Monitor TFT', '3115BG003703C', 'IT', '', '-', 'Serviceable', '4091876H', 'VIKAS SINGH RANA', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Info Kiosk', 'Info Kiosk', '313042874', 'IT', '', '-', 'Serviceable', '4097044X', 'RANBEER SINGH', '26-Aug-2020', '', '', '', '', '', '', '', '', '', '-', 'Windows 10', '', '', '', '2022-02-17 04:22:14'),
('CPU Acer', 'CPU', '4053607', 'IT', '', '-', 'BER', '', '', '27-Nov-2020', '45896/485/458', '29-Sep-2021', '22-Dec-2020', '', '', 'Deposited', '05-Feb-2021', 'Nb Sub Ram Singh', 'No', '-', '', '', '', '', '2022-02-17 04:22:14'),
('19\" 24U Rack', '19\" 24U Rack', '411510008342', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS LUMINIOUS PRO 1000', 'UPS', '44182508268', 'IT', '', '-', 'Serviceable', '4099926X', 'Neeraj Singh', '03-Sep-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS LUMINIOUS PRO 1000', 'UPS', '44182508269', 'IT', '', '-', 'Serviceable', '4092894X', 'DEVENDRA SINGH RAWAT', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS LUMINIOUS PRO 1000', 'UPS', '44182509884', 'IT', '', '-', 'Serviceable', '4099906K', 'Hariom Singh Rana', '03-Sep-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS LUMINIOUS PRO 1000', 'UPS', '44182509885', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor TFT HCL', 'Monitor TFT', '486111608022', 'IT', '', '-', 'Replaced', '', '', '26-Nov-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor 18.5\" HCL LED', 'Monitor TFT', '486111608113', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor 18.5', 'Monitor TFT', '486111608427', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', '5113AA173376', 'IT', '04-Dec-2011', '-', 'Serviceable', '4086361Y', 'Devender', '02-Jul-2021', '', '', '', '', '', '', '', '', '', '10-78-D2-D9-A2-A7', 'Windows 7', '1 GB', '150 GB', 'i5', '2022-02-17 04:22:14'),
('CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', '5113AA173402', 'IT', '22-Sep 2020', '-', 'Serviceable', '4102065A', 'ABHISHEK CHAUHAN', '15-Sep-2020', '', '', '', '', '', '', '', '', '', '10-78-D2-D9-A0-32', 'Windows 8', '2 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('CPU Infiniti Tru BL 1335 (HCL) (Black)', 'CPU', '5113AA173403', 'IT', '', '-', 'Serviceable', '4097050L', 'Jitender Singh ', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '00-E0-4C-1D-35-7D', 'Windows 7', '1 GB', '150 GB', 'Pentium 4', '2022-02-17 04:22:14'),
('Laptop Dell', 'Laptop', '5P9SHR1', 'Bn Fund', '-', '-', 'Serviceable', '4083874H', 'Pancham Singh', '05-Mar-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Dax 24 Port Gigabith Ethernet Switch', 'Switch', '6921103190084', 'IT', '30-Aug-2016', '-', 'BER', '', '', '11-Feb-2020', 'BER/NSC/196/20', '17-Feb-2020', '18-Feb-2020', '/', '03-Sep-2020', 'Deposited', '04-Sep-2020', 'JC-532658W Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69480614', 'IT', '', '-', 'Serviceable', '4089887W', 'RAM PAKRASH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69510614', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69530614', 'IT', '20-Aug-2014', '-', 'Serviceable', '4088009N', 'Manish Barthwal', '08-Jan-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69540614', 'IT', '', '-', 'Serviceable', 'IC-80186A', 'SURYA PRAKASH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69560614', 'IT', '', '-', 'Serviceable', 'JC -531374A', 'SHRI RAJ VERMA', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69580614', 'IT', '', '-', 'Serviceable', '4095159M', 'DIBYENDU MONDAL', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69590614', 'IT', '', '-', 'Serviceable', '4089922N', 'C.DODDI', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69610614', 'IT', '', '-', 'On Rd', '', '', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69710614', 'IT', '', '-', 'Serviceable', '4084029K', 'RAVINDRA SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69740614', 'IT', '', '-', 'BER', '', '', '23-Jul-2019', 'BER/NSC/156/144/19', '24-Jul-2019', '20-Aug-2019', '/////', '27-Jan-2020', 'Deposited', '29-Jan-2020', 'Nb Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS PARADYNE 1 KVA', 'UPS', '69750614', 'IT', '', '-', 'Serviceable', 'IC-82494Y', 'Ramneek Singh Bhatia', '24-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP (TFT)', 'Monitor TFT', '6CM41002WZ', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP (TFT)', 'Monitor TFT', '6CM4100ZWY', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Hp', 'Monitor TFT', '6CM902162R', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Monitor Hp TFT', 'Monitor TFT', '6CM90303DV', 'IT', '18-Oct-2018', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('CPU PCS', 'CPU', '6S56587', 'IT', '', '-', 'BER', '', '', '11-Feb-2020', 'BER/NSC/185/20', '25-Jan-2020', '18-Feb-2020', '/', '03-Sep-2020', 'Deposited', '04-Sep-2020', 'JC-532658W Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('VPS Sharp (XG-MB65X-L)', 'VPS', '704912063', 'IT', '16-Nov-2020', '-', 'BER', '4091100P', 'Sunil Negi', '26-Nov-2020', '', '', '-', '-', '06-Feb-2021', 'Pending', '05-Feb-2021', 'Nb Sub Ram Singh', 'No', '-', '', '', '', '', '2022-03-03 17:39:29'),
('UPS Paradyne', 'UPS', '73650416', 'IT', '29-Aug-2016', '-', 'Serviceable', 'JC-532517F', 'Yogamber Singh', '24-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor Zebronics', 'Monitor TFT', '7EBA19HDLED114807190451', 'IT', '10-Feb-2020', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('CPU HCL (Black)', 'CPU', '8086A4041535', 'IT', '', '-', 'Serviceable', '4092894X', 'DEVENDRA SINGH RAWAT', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '00-21-85-99-C0-EA', 'Windows 7', '1 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU HCL (Black)', 'CPU', '8086A4041551', 'IT', '', '-', 'On Rd', '4089488M', 'VINOD SINGH', '23-Nov-2020', '', '', '', '', '', '', '', '', '', '00-15-F2-DD-FE-CB', 'Windows 7', '1 GB', '150 GB', 'Pentium 4', '2022-02-17 04:22:14'),
('CPU HCL (Black)', 'CPU', '8086A4041575', 'IT', '///', '-', 'BER', 'IC-80186A', 'SURYA PRAKASH', '14-Jul-2021', '', '', '', '', '', 'Pending', '', '', '', '00-E0-4C-66-12-OC', 'Windows 7', '1 GB', '150 GB', 'Core 2 Duo', '2022-03-03 17:49:40'),
('CPU DELL', 'CPU', '83P1T1S', 'IT', '31-Mar-2008', '-', 'Serviceable', '4095159M', 'DIBYENDU MONDAL', '18-Aug-2021', '', '', '', '', '', '', '', '', '', '00-1A-A0-D5-1C-65', 'Windows 7', '1 GB', '250 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU DELL', 'CPU', '85P1T1S', 'IT', '', '-', 'On Rd', '', '', '09-Nov-2017', '', '', '', '', '', '', '', '', '', '00-1A-A0-D5-1A-BD', 'Windows 7', '', '', '', '2022-02-17 04:22:14'),
('CPU HCL (Black)', 'CPU', '9086A4063460', 'IT', '04-Mar-2020', '-', 'On Rd', '', '', '11-Feb-2020', '', '', '', '', '', '', '', '', '', '00-E0-4C-F3-09-DA', 'Windows 7', '1 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('UPS Line Interactive 0.8 KVA', 'UPS', '9B08234', 'IT', '', '-', 'BER', '', '', '18-Jan-2020', 'BER/NSC/157/19', '20-Aug-2019', '20-Aug-2019', '', '', 'Deposited', '28-Jan-2020', 'JC-532658W NB SUB Ram Singh', 'Yes', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Line Interactive 0.8 KVA', 'UPS', '9B08256', 'IT', '', '-', 'BER', '', '', '18-Aug-2019', 'BER/NSC/157/19', '20-Aug-2019', '20-Aug-2019', '', '', 'Deposited', '28-Jan-2020', 'Nb Sub Ram Singh', 'Yes', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Line Interactive 0.8 KVA', 'UPS', '9B08260', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Elegent', 'UPS', '9E09332', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Ups Elegent', 'UPS', '9E09364', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Ups Elegent', 'UPS', '9E09436', 'IT', '', '-', 'BER', '', '', '18-Aug-2019', 'BER/NSC/157/19', '20-Aug-2019', '04-Sep-2019', '//////////', '27-Jan-2020', 'Deposited', '29-Jan-2020', 'Nb Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('intel', 'CPU', '<script> alert(\"hacked\") </script>', 'IT', '11-Mar-2022', '22', 'Serviceable', 'ic85258h', 'Harshit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Windows 11', '2gb', '2gb', 'intel', '2022-03-04 08:19:22'),
('CPU HCL (White)', 'CPU', 'A063A1160149', 'IT', '', '-', 'BER', '', '', '23-Aug-2019', 'BER/NSC/159/19', '23-Aug-2019', '20-Aug-2019', '//////////////', '27-Jan-2020', 'Deposited', '29-Jan-2020', 'Nb Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('Visualiser', 'Visualiser', 'A700012528', 'IT', '', '-', 'BER', '', '', '26-Nov-2020', '', '', '-', '', '', 'Deposited', '05-Feb-2021', 'Nb Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('HP', 'CPU', 'ABCD1234', 'IT', '13-Oct-2021', '50', 'Serviceable', '4099906K', 'Hariom', '13-Oct-2021', '', '', '', '', '', '', '', '', '', '12-25-95-89-78-LN', 'os', '4 GB', '1 TB', 'i7', '2022-02-17 04:22:14'),
('Interactive Panel', 'Interactive Pannel', 'AHA10-LTM171A-00615', 'IT', '', '-', 'BER', 'JC-532291F', 'Sohan Singh Bisht', '01-May-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Monitor TFT', 'AOCW2MPN95300347', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('VPS Infocus IN-37', 'VPS', 'AWVB80900152', 'IT', '', '-', 'Serviceable', '', '', '17-Feb-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Luminious', 'UPS', 'B0CLB00096373508', 'QD', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('HP', 'Keyboard', 'BCY4BODCPBZ321', 'IT', '-', '-', 'Serviceable', '4092894X', 'DEVENDRA SINGH RAWAT', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('HP', 'Keyboard', 'BCYUB0DCPBZ2IK', 'IT', '//', '//', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('HCL', 'Keyboard', 'C0807057656', 'IT', '-', '-', 'Serviceable', 'JC-532291F', 'Sohan Singh Bisht', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('CPU DELL', 'CPU', 'C4P1T1S', 'IT', '', '-', 'Serviceable', '4089340N', 'K Maheswaran', '24-Jun-2020', '', '', '', '', '', '', '', '', '', '00-1A-A0-D5-27-BF', 'Windows 7', '1 GB', '250 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-005WC4-71616-65K-0T8V', 'IT', '////', '////', 'Serviceable', '4086361Y', 'Devender', '05-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('CRT Monitor Dell', 'Monitor CRT', 'CN-0223YY-FCC00-87K-AGAB-A06', 'IT', '-', '-', 'On Rd', '', '', '24-Mar-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Monitor TFT', 'CN-0223YY-FCC00-8AG-C8DD-A06', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AC-04V4', 'IT', '04-May-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AC-04V5', 'IT', '04-May-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AC-04VC', 'IT', '04-May-2021', '-', 'Serviceable', '4095217L', 'Vipin Singh', '25-May-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AC-04VG', 'IT', '04-May-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AC-04VK', 'IT', '04-May-2021', '-', 'Serviceable', '4084029K', 'RAVINDRA SINGH', '15-Jun-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AO-0KPP', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AO-0KPW', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AO-0KQ8', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('-', 'Mouse', 'CN-05NT8R-PRC00-0AO-0KQG', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Mouse', 'CN-05NT8R-PRC00-0AO-0KQH', 'IT', '-', '-', 'Serviceable', 'IC-67048A', 'GS Yewalkar', '22-Apr-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0DJ331-71616-7BA-0GXP', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0DJ331-71616-7BA-0I00', 'IT', '-', '-', 'Serviceable', '4089922N', 'C.DODDI', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0HVG5J-71616-6AT-05ET-A03', 'IT', '20-Jul-2018', '////', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0HVG5J-71616-6AT-05EU-A03', 'IT', '-', '-', 'Serviceable', '4095159M', 'DIBYENDU MONDAL', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0HVG5J-71616-6AT-05EX-A03', 'IT', '///', '///', 'Serviceable', '4086361Y', 'Devender', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0HVG5J-71616-6AT-K5ET', 'IT', '-', '-', 'Serviceable', '4102065A', 'ABHISHEK CHAUHAN', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0HVG5J-71616-6AT-K6ET', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0HVG5J-71616-6AT-K7ET', 'IT', '-', '-', 'Serviceable', '4090904X', 'RAJESH RAWAT', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('DELL', 'Keyboard', 'CN-0HVG5J-71616-6AT-K8ET', 'IT', '-', '-', 'Serviceable', '4091315N', 'PRADEEP KUMAR GUNIYAL', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-064-04S6', 'IT', '-', '-', 'Serviceable', '4095217L', 'Vipin Singh', '25-May-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-0AE-0CJM', 'IT', '-', '-', 'Serviceable', 'IC-84310N', 'Shridhar', '18-Feb-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('-', 'Keyboard', 'CN-0P1YDR-PRC00-0AE-0CJN', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('-', 'Keyboard', 'CN-0P1YDR-PRC00-0AE-0CK5', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-0AE-0CKE', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-0AH-07H1', 'IT', '04-May-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-0AH-07KP', 'IT', '04-May-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-0AH-07LM', 'IT', '04-May-2021', '-', 'Serviceable', '4095217L', 'Vipin Singh', '26-May-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Dell', 'Keyboard', 'CN-0P1YDR-PRC00-0AH-07LT', 'IT', '04-May-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Monitor Dell (CRT)', 'Monitor TFT', 'CN-OHT368-64180-7CJ-3156', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor Dell (TFT)', 'Monitor TFT', 'CN-OWR979-64180-7CC-2HNC', 'IT', '31-Mar-2008', '-', 'Serviceable', '4097044X', 'RANBEER SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor Dell (TFT)', 'Monitor TFT', 'CN-OWR979-64180-7CC-2HTC', 'IT', '', '-', 'Serviceable', '4097050L', 'Jitender Singh ', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Monitor TFT', 'CN09YKV772872684H2HUA00', 'IT', '-', '-', 'Serviceable', '4097705M', 'BABON MONDAL ', '10-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('HP Scan jet 5590', 'Scanner', 'CN542XH0RZ', 'Bn Fund', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('HP SCANJET 5590', 'Scanner', 'CN542XHORZ', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17\"', 'Monitor TFT', 'CNC842PL6P', 'IT', '', '-', 'Serviceable', '4096651K', 'VIKASH KUMAR', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17', 'Monitor TFT', 'CNC904PBXR', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17\"', 'Monitor TFT', 'CNC9077R8LO', 'IT', '30-Jun-2009', '-', 'Serviceable', '4098265W', 'Neeraj Singh', '08-Dec-2018', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17\"', 'Monitor TFT', 'CNC907R7V9', 'IT', '', '-', 'Serviceable', '4089922N', 'C.DODDI', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17', 'Monitor TFT', 'CNC907R8KZ', 'IT', '', '-', 'Serviceable', '4094452X', 'SACHIN SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17\"', 'Monitor TFT', 'CNC910RF4M', 'IT', '30-Jun-2009', '-', 'Serviceable', '4086361Y', 'Devender', '05-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Pulstech & Microtek', 'UPS', 'D14DUGHU603858', 'IT', '', '-', 'On Rd', '4086361Y', 'Devender', '05-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('UPS Elegent Pulstech & Microtek', 'UPS', 'D14DUGHU603863', 'IT', '', '-', 'On Rd', '4097705M', 'BABON MONDAL ', '26-Nov-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Microtek', 'UPS', 'D18DUAC0AB62246', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Keyboard', 'DKPS21P03A4300283EA701', 'IT', '///', '//', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Keyboard', 'DKPS21P03A43100641K701', 'IT', '-', '-', 'Serviceable', '4089664Y', 'HARNAM SINGH', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Keyboard', 'DKPS21P03A43100641K702', 'IT', '-', '-', 'Serviceable', '4097044X', 'RANBEER SINGH', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Keyboard', 'DKPS21P03A43100641K703', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('ACER', 'Keyboard', 'DKPS21P03A62300E2AK701', 'IT', '-', '-', 'Serviceable', '4089887W', 'RAM PAKRASH', '13-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('-', 'Keyboard', 'DKUSB1P03L60300045K701', 'IT', '-', '-', 'Serviceable', '4083667W', 'Diwaker Prasad Barakoti', '18-Feb-2021', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Projector Hitachi CP-X467', 'VPS', 'F1BH01520', 'IT', '', '-', 'Serviceable', '4083667W', 'Diwaker Prasad Barakoti', '05-Oct-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('CPU DELL', 'CPU', 'F7P1T1S', 'IT', '31-May-2008', '-', 'Serviceable', '4090904X', 'RAJESH RAWAT', '31-Jul-2021', '', '', '', '', '', '', '', '', '', '00-1A-A0-D5-16-B5', 'Windows 8', '1 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('Printer Ricoh MP 2014AD', 'MFD', 'G618M740291', 'IT', '', '-', 'Serviceable', '15572225N', 'SACHIN MANDHARE', '13-Oct-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Samsung TFT Monitor', 'Monitor TFT', 'HA19HVFL701754F', 'Bn Fund', '-', '-', 'Serviceable', '4090904X', 'RAJESH RAWAT', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('CPU DELL', 'CPU', 'HWR1T1S', 'IT', '31-Mar-2008`', '-', 'Serviceable', 'IC-84310N', 'Shridhar', '14-Jul-2021', '', '', '', '', '', '', '', '', '', '00-1A-A0-D5-0B-D8', 'Windows 10', '', '', '', '2022-02-17 04:22:14'),
('CPU HP Compaq i5', 'CPU', 'INA416WY4X', 'IT', '-', '-', 'Serviceable', '4083667W', 'Diwaker Prasad Barakoti', '29-Dec-2018', '', '', '', '', '', '', '', '', '', 'A0-D3-C1-0A-9B-C4', 'Windows 8', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('HP', 'CPU', 'INA416WY9S', 'IT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'A0-D3-C1-0B-15-CD', 'Windows 8', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA909084V', 'IT', '', '-', 'Serviceable', 'JC-532291F', 'Sohan Singh Bisht', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '00-E0-4C-A5-19-B8', 'Windows 8', '', '', '', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA909088G', 'IT', '', '-', 'Serviceable', '4089664Y', 'HARNAM SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '00-1F-D0-B7-D4-C5', 'Windows 7', '2 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA9090899', 'IT', '29 Aug 2020', '-', 'Unserviceable', '', '', '14-Jul-2021', '', '', '', '', '', '', '', '', '', '00-1F-D0-BF-AB-67', 'Windows 10', '2 GB', '500 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA90908MQ', 'IT', '27-Jun-2009', '-', 'Serviceable', '4098265W', 'Neeraj Singh', '08-Dec-2018', '', '', '', '', '', '', '', '', '', '-', 'Windows 7', '', '', '', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA90908TV', 'IT', '', '-', 'Unserviceable', 'IC-82494Y', 'Ramneek Singh Bhatia', '14-Jul-2021', '', '', '', '', '', '', '', '', '', '00-1F-D0-BB-5A-36', 'Windows 10', '2 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA90908VN', 'IT', '', '-', 'Serviceable', '4096651K', 'VIKASH KUMAR', '25-May-2021', '', '', '', '', '', '', '', '', '', '00-1F-D0-B5-96-8C', 'Windows 10', '2 GB', '500 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INA9090952', 'IT', '', '-', 'BER', '4089340N', 'K. MAHESHWARAN', '29-Jun-2020', 'BER/NSC/159/19', '23-Aug-2019', '20-Aug-2019', '/////////////////', '27-Jan-2020', 'Deposited', '29-Jan-2020', 'Nb Sub Ram Singh', 'No', '', '', '', '', '', '2022-02-17 04:22:14'),
('Hp 280G4 MT i5 8th Gen', 'CPU', 'INA917R5Y5', 'IT', '19-Jun-2018', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', 'C4-65-16-16-30-FF', 'Windows 10', '4 GB', '1 TB', 'i5', '2022-02-17 04:22:14'),
('Hp 280G4 MT i5 8th Gen', 'CPU', 'INA917R5ZR', 'IT', '19-Jun-2019', '-', 'On Rd', '4097705M', 'BABON MONDAL ', '10-Aug-2020', '', '', '', '', '', '', '', '', '', 'C4-65-16-16-2D-76', 'Windows 10', '4 GB', '1 TB', 'i5', '2022-02-17 04:22:14'),
('CPU HP', 'CPU', 'INI5520660', 'IT', '', '-', 'Serviceable', '4084029K', 'RAVINDRA SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '00-E0-4C-45-OE-CC', 'Windows 7', '2 GB', '150 GB', 'Core 2 Duo', '2022-02-17 04:22:14'),
('Monitor LCD ASUS', 'Monitor TFT', 'KCLMTF109967', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('ASUS', 'Monitor TFT', 'KCLMTF109976', 'IT', '-', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('ASUS', 'CPU', 'KCPFCG00F527510', 'IT', '05-Jun-2020', '-', 'Serviceable', 'JC -531374A', 'SHRI RAJ VERMA', '29-Jun-2020', '', '', '', '', '', '', '', '', '', 'A8-5E-45-D1-1F-A2', 'Windows 10', '4 GB', '1 TB', 'i3', '2022-02-17 04:22:14'),
('ASUS', 'CPU', 'KCPFCG00F534512', 'IT', '05-Jun-2020', '-', 'Serviceable', '4097705M', 'BABON MONDAL ', '03-Jan-2021', '', '', '', '', '', '', '', '', '', 'A8-5E-45-D1-1F-8F', 'Windows 10', '4 GB', '1 TB', 'i3', '2022-02-17 04:22:14'),
('Printer Kyocera Taskalfa 2201', 'MFD', 'LX15Y01742', 'IT', '', '-', 'BER', '', '', '01-May-2021', '1234', '12-Oct-2021', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('TASKALFA 2201', 'MFD', 'LX19316837', 'IT', '10-Apr-2020', '-', 'Unserviceable', '', '', '', '', '', '', '', '', '', '', '', '', '00:17:C8:0C:3D:90', 'os', '', '', '', '2022-02-17 04:22:14'),
('Monitor HP 17\" TFT', 'Monitor TFT', 'MMLNNSS00123700F6E4301', 'IT', '30-Jun-2009', '-', 'Serviceable', '4095159M', 'DIBYENDU MONDAL', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor ACER', 'Monitor TFT', 'MMLXNSS002427007FC4205', 'IT', '', '-', 'Serviceable', '4089887W', 'RAM PAKRASH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor ACER', 'Monitor TFT', 'MMLYOSS001432034BF8500', 'IT', '', '-', 'Serviceable', '4089664Y', 'HARNAM SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor ACER', 'Monitor TFT', 'MMLYOSS001432034C98500', 'IT', '', '-', 'Serviceable', '4092894X', 'DEVENDRA SINGH RAWAT', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor ACER', 'Monitor TFT', 'MMLYOSSOO1617022638500', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor ACER', 'Monitor TFT', 'MMLYOSSOO1617027628500', 'IT', '', '-', 'Serviceable', '4091315N', 'PRADEEP KUMAR GUNIYAL', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('VPS View Sonic', 'VPS', 'R8P113302815', 'IT', '', '-', 'Serviceable', 'JC-532291F', 'Sohan Singh Bisht', '25-Sep-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Printer Recoh SP 310 DN ', 'Printer Monochrome', 'T916Q331949', 'IT', '', '-', 'Serviceable', '4089488M', 'VINOD SINGH', '23-Nov-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('D Link DGS 1210-28', 'Switch', 'TM0H108000651', 'IT', '13-Mar-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '340A33CE2B60', 'os', '', '', '', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVHGS1092E3734567', 'IT', '', '-', 'Serviceable', '4080633X', 'Rakesh Chandra', '29-Jun-2020', '', '', '', '', '', '', '', '', '', 'B8-AE-ED-A0-4B-6A', 'Windows 8', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVHGS1092E3961465', 'IT', '', '-', 'Serviceable', '', '', '10-Aug-2021', '', '', '', '', '', '', '', '', '', 'C0-3F-D5-B9-55-E0', 'Windows Server 2008 R2', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVHGS1092E3961467', 'IT', '-', '-', 'Serviceable', '4091315N', 'PRADEEP KUMAR GUNIYAL', '29-Jun-2020', '', '', '', '', '', '', '', '', '', 'C0-3F-D5-B9-33-BA', 'Windows Server 2008 R2', '4 GB', '1 TB', 'i5', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVHGS1092E3961474', 'IT', '', '-', 'On Rd', '4091876H', 'VIKAS SINGH RANA', '09-Sep-2020', '', '', '', '', '', '', '', '', '', 'C0-3F-D5-B9-34-C9', 'Windows Server 2008 R2', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVHGS1292F4897097', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '40-8D-5C5A-4C-7C', 'Windows 8', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVHGS1371G3657025', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', 'F4-4D-30-0F-01-AC', 'Windows 8', '4 GB', '1 TB', 'i5', '2022-02-17 04:22:14'),
('CPU ACER i5', 'CPU', 'UDVSG1371G3657221', 'IT', '', '-', 'On Rd', '4101857N', 'SURAJ SINGH', '12-Dec-2020', '', '', '', '', '', '', '', '', '', 'E0-69-95-3B-9D-09', 'Windows 10', '4 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('Vision', 'Interactive Board', 'UDYTJ022140', 'IT', '17-Oct-2019', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Monitor Wipro18.5\"', 'Monitor TFT', 'UQUG1110009J0645A', 'IT', '', '-', 'BER', '', '', '08-Jan-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor Wipro18.5', 'Monitor TFT', 'UQUG1110009J2261A', 'IT', '', '-', 'Serviceable', '4089488M', 'VINOD SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor Wipro18.5\"', 'Monitor TFT', 'UQUG1110009J2420A', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('View Sonic PA 503 X', 'VPS', 'V0V204602820', 'IT', '06-Mar-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('View Sonic PA 503 X', 'VPS', 'V0V204602839', 'IT', '04-Mar-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('UPS Pulstech & Microtek', 'UPS', 'V407932', 'IT', '', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Epson L360', 'Printer Colour inkjet', 'VGGK052486', 'Bn Fund', '-', '-', 'Serviceable', '4086361Y', 'Devender', '03-Sep-2020', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('Epson L360', 'Printer Colour inkjet', 'VGGK069535', 'QD', '', '-', 'Serviceable', '4086361Y', 'Devender', '05-Aug-2020', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Printer HP Laser Jet 1108', 'Printer Monochrome', 'VNF3208046', 'BN Fund', '', '-', 'Unserviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Printer HP Laserjet P1108', 'Printer Monochrome', 'VNF4847679', 'IT', '', '-', 'Serviceable', '4089664Y', 'HARNAM SINGH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Printer HP Laserjet P1108', 'Printer Monochrome', 'VNF4847680', 'IT', '', '-', 'Serviceable', '4089887W', 'RAM PAKRASH', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Printer HP Laserjet P1108', 'Printer Monochrome', 'VNF4847681', 'IT', '-', '-', 'Serviceable', '4095159M', 'DIBYENDU MONDAL', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Printer HP Laserjet P1108', 'Printer Monochrome', 'VNF4847682', 'IT', '12-Jul-2021', '-', 'Serviceable', '', '', '', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Epson L385', 'Printer Colour inkjet', 'X2QM014695', 'Bn Fund', '', '-', 'Unserviceable', '4086361Y', 'Devender', '05-Aug-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14'),
('Epson L3110', 'Printer Colour inkjet', 'X6NY054995', 'IT', '24-Sep-2020', '-', 'Serviceable', '4083667W', 'Diwaker Prasad Barakoti', '05-Oct-2020', '', '', '', '', '', '', '', '', '', '-', 'os', '', '', '', '2022-02-17 04:22:14'),
('HP', 'CPU', 'xyz123', 'QD', '14-Oct-2021', '97', 'Serviceable', '15582886F', 'Jadhav H R', '14-Oct-2021', '', '', '', '', '', '', '', '', '', '2as2d2df2gg2', 'os', '2 GB', '500 GB', 'i5', '2022-02-17 04:22:14'),
('Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Z7AXB8GFAD007L', 'IT', '', '-', 'Serviceable', '4091876H', 'VIKAS SINGH RANA', '14-Jul-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Z7AXB8GFAD007N', 'IT', '', '-', 'Serviceable', 'JC-532291F', 'Sohan Singh Bisht', '02-Jul-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Z7AXB8GFAD008K', 'IT', '12-Jul-2021', '-', 'Serviceable', '', '', '20-Apr-2021', '', '', '', '', '', '', '', '', '', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Samsung Laser Jet Printer ML-2161/XIP', 'Printer Monochrome', 'Z7AXB8GFAD00C6', 'IT', '', '-', 'BER', '', '', '26-Nov-2020', '', '', '23-Dec-2020', '', '', 'Deposited', '05-Feb-2021', 'Nb Sub Ram Singh', 'No', '-', '', '', '', '', '2022-02-17 04:22:14'),
('Monitor LED Zebronics', 'Monitor TFT', 'ZEBA18HDLED109810181259', 'IT', '-', '-', 'Serviceable', '4102065A', 'ABHISHEK CHAUHAN', '29-Jun-2020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-17 04:22:14');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mt`
-- (See below for the actual view)
--
CREATE TABLE `mt` (
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `empid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`empid`, `name`, `branch`, `birthplace`, `password`) VALUES
('15572225N', 'SACHIN MANDHARE', 'IT Cell', 'SATARA', 'd71c61253657818daf5bb569f440950f'),
('15582886F', 'Jadhav H R', 'Trg Cell', 'Pune', '16d1657c206cc9db9d995861cb84be8a'),
('15802192P', 'Nitesh Kumar', 'CO Office', 'Purnea', 'cbb7908e100b177135fe858128a2e87f'),
('4099906K', 'Hariom Singh Rana', 'IT Cell', 'Uttarkashi', 'qˆ#}{ðF+ÓzK´î¥'),
('ic85258E', 'rajan', 'it', 'deli', 'àï¡Ê\0ê›ŽZ±MÃ¼)'),
('ic85258h', 'harshit', 'adm', 'moradabad', 'abc123'),
('ic85258k', 'ashik', 'adm', 'moradabad', 'abc@123');

-- --------------------------------------------------------

--
-- Table structure for table `wksp`
--

CREATE TABLE `wksp` (
  `serno` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `makeandmodel` varchar(100) NOT NULL,
  `wono` varchar(100) NOT NULL,
  `in_date` varchar(100) NOT NULL,
  `wk_done` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wksp`
--

INSERT INTO `wksp` (`serno`, `type`, `makeandmodel`, `wono`, `in_date`, `wk_done`, `id`, `lastupdated`) VALUES
('LX15Y01742', 'MFD', 'Printer Kyocera Taskalfa 2201', '2399/70/G', '01-Jun-2021', 'Declared BER Ref CR No BER/NSC/06/21 dt 31 May 2021', 64, '2022-02-17 04:24:07'),
('11CFRA01800942', 'CPU', 'CPU Wipro', '2399/71/G', '04-May-2021', 'Ram & SMPS Changed', 65, '2022-02-17 04:24:07'),
('AHA10-LTM171A-00615', 'Interactive Pannel', 'Interactive Panel', '2399/72/G', '20-May-2021', 'Declared BER Ref CR No BER/NSC/03/21', 66, '2022-02-17 04:24:07'),
('16B775B1016489', 'UPS', 'UPS Luminious 1 KVA', '2399/74/G', '17-May-2021', 'Bty Changed', 67, '2022-02-17 04:24:07'),
('17BUFUHAF203897', 'UPS', 'Microteck ', '2399/76/G', '13-May-2021', 'UPS Declared BER and replace with New UPS Intex S/N- 2104927536201905607', 69, '2022-02-17 04:24:07'),
('INA90908VN', 'CPU', 'CPU HP', '2399/78/G', '03-Jun-2021', 'HDD faulty New HDD Installed, OS Installed', 73, '2022-02-17 04:24:07'),
('G618M740291', 'MFD', 'Printer Ricoh MP 2014AD', '2399/79/G', '03-Jun-2021', 'Necessary Wk done (See Log Book)', 74, '2022-02-17 04:24:07'),
('Z7AXB8GFAD007N', 'Printer Monochrome', 'Samsung Laser Jet Printer ML-2161/XIP', '2399/81/G', '10-Aug-2021', 'Pl see log book', 78, '2022-02-17 04:24:07'),
('5113AA173376', 'CPU', 'CPU Infiniti Tru BL 1335 (HCL) (Black)', '2399/82/G', '13-Aug-2021', 'Windows 10 Upgarded', 79, '2022-02-17 04:24:07'),
('INA90908TV', 'CPU', 'CPU HP', '2399/83/G', '', '', 80, '2022-02-17 04:24:07'),
('Z7AXB8GFAD007L', 'Printer Monochrome', 'Samsung Laser Jet Printer ML-2161/XIP', '2399/84/G', '10-Aug-2021', 'Pl see log book', 81, '2022-02-17 04:24:07'),
('INA9090899', 'CPU', 'CPU HP', '2399/84/G', '', '', 82, '2022-02-17 04:24:07'),
('8086A4041575', 'CPU', 'CPU HCL (Black)', '2399/84/G', '', '', 83, '2022-02-17 04:24:07'),
('HWR1T1S', 'CPU', 'CPU DELL', '2399/87/G', '10-Aug-2021', 'RAM Cleand', 84, '2022-02-17 04:24:07'),
('F7P1T1S', 'CPU', 'CPU DELL', '2399/88/G', '', '', 86, '2022-02-17 04:24:07'),
('83P1T1S', 'CPU', 'CPU DELL', '2399/89/G', '', '', 87, '2022-02-17 04:24:07'),
('UDVHGS1092E3961465', 'CPU', 'CPU ACER i5', '2399/89/G', '13-Aug-2021', 'formatted and installed server 2008 R2', 88, '2022-02-17 04:24:07'),
('ABCD1234', 'CPU', 'HP', '895/05/IT', '01-Oct-2021', 'SMPS New Fitted', 91, '2022-02-17 04:24:07'),
('0009973', 'UPS', 'UPS Luminious', '1234/345', '2022-03-24', 'nothing', 95, '2022-03-03 18:28:03');

-- --------------------------------------------------------

--
-- Structure for view `mt`
--
DROP TABLE IF EXISTS `mt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mt`  AS SELECT `maintable`.`makeandmodel` AS `makeandmodel`, `maintable`.`type` AS `type`, `maintable`.`serno` AS `serno`, `maintable`.`gt` AS `gt`, `maintable`.`date` AS `date`, `maintable`.`ledgerpageno` AS `ledgerpageno`, `maintable`.`status` AS `status`, `maintable`.`ano` AS `ano`, `maintable`.`rank` AS `rank`, `maintable`.`name` AS `name`, `maintable`.`issuedate` AS `issuedate`, `maintable`.`cr_no` AS `cr_no`, `maintable`.`cr_date` AS `cr_date`, `maintable`.`dporder_placed` AS `dporder_placed`, `maintable`.`dpiv_no` AS `dpiv_no`, `maintable`.`dpiv_date` AS `dpiv_date`, `maintable`.`deposit_status` AS `deposit_status`, `maintable`.`deposit_date` AS `deposit_date`, `maintable`.`deposited_by` AS `deposited_by`, `maintable`.`fodrv_recd` AS `fodrv_recd`, `maintable`.`macadd` AS `macadd`, `maintable`.`os` AS `os`, `maintable`.`ram_cap` AS `ram_cap`, `maintable`.`hdd_cap` AS `hdd_cap`, `maintable`.`processor` AS `processor`, `maintable`.`lastupdated` AS `lastupdated` FROM `maintable` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `indl`
--
ALTER TABLE `indl`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `maintable`
--
ALTER TABLE `maintable`
  ADD PRIMARY KEY (`serno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `wksp`
--
ALTER TABLE `wksp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wksp`
--
ALTER TABLE `wksp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
