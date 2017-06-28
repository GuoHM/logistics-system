-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: 10.236.158.96:10822
-- Generation Time: 2017-06-27 19:02:32
-- 服务器版本： 5.6.28-cdb20160902-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistics`
--

-- --------------------------------------------------------

--
-- 表的结构 `Admin`
--

CREATE TABLE `Admin` (
  `adminID` char(5) NOT NULL,
  `pwd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Admin`
--

INSERT INTO `Admin` (`adminID`, `pwd`) VALUES
('1', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `Conditions`
--

CREATE TABLE `Conditions` (
  `conditionID` char(2) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Conditions`
--

INSERT INTO `Conditions` (`conditionID`, `description`) VALUES
('1', '订单已提交'),
('2', '快递已到达A区县营业点'),
('3', '快递已到达A省分拣中心'),
('4', '快递已派送至A省分拣中心'),
('5', '快递已派送至A区县营业点'),
('6', '快递已完成');

-- --------------------------------------------------------

--
-- 表的结构 `DistrictCenter`
--

CREATE TABLE `DistrictCenter` (
  `centerID` int(11) NOT NULL,
  `district` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `province` varchar(10) NOT NULL,
  `pwd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `DistrictCenter`
--

INSERT INTO `DistrictCenter` (`centerID`, `district`, `city`, `province`, `pwd`) VALUES
(1, '浦东', '上海', '上海', '123456'),
(2, '朝阳区', '北京', '北京', '123456'),
(3, '昌平区', '北京', '北京', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `Goods`
--

CREATE TABLE `Goods` (
  `goodsID` varchar(15) NOT NULL,
  `senderName` varchar(10) NOT NULL,
  `senderPhone` char(11) NOT NULL,
  `senderProvince` varchar(8) NOT NULL,
  `senderCity` varchar(8) NOT NULL,
  `senderDistrict` varchar(15) NOT NULL,
  `senderAddress` varchar(50) NOT NULL,
  `receiverName` varchar(10) NOT NULL,
  `receiverPhone` char(11) NOT NULL,
  `receiverProvince` varchar(8) NOT NULL,
  `receiverCity` varchar(8) NOT NULL,
  `receiverDistrict` varchar(15) NOT NULL,
  `receiverAddress` varchar(50) NOT NULL,
  `sendDestrictCenter` int(11) DEFAULT NULL,
  `sendProvinceCenter` int(11) DEFAULT NULL,
  `receiveDistrictCenter` int(11) DEFAULT NULL,
  `receiveProvinceCenter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Goods`
--

INSERT INTO `Goods` (`goodsID`, `senderName`, `senderPhone`, `senderProvince`, `senderCity`, `senderDistrict`, `senderAddress`, `receiverName`, `receiverPhone`, `receiverProvince`, `receiverCity`, `receiverDistrict`, `receiverAddress`, `sendDestrictCenter`, `sendProvinceCenter`, `receiveDistrictCenter`, `receiveProvinceCenter`) VALUES
('06231646436942', '1', '1', '北京', '1', '1', '1', '1', '1', '北京', '1', '1', '1', 1, NULL, NULL, NULL),
('06231717469072', '1', '1', '北京', '1', '1', '1', '1', '1', '北京', '1', '1', '1', 1, NULL, NULL, NULL),
('06231756274848', '1', '1', '北京', '1', '1', '1', '1', '1', '北京', '1', '1', '1', NULL, NULL, NULL, NULL),
('06251518403105', '星期', '311', '上海', '上海', '浦东', '饿1', '杨含笑', '18217722196', '北京', '北京', '朝阳区', '2313', 1, 1, 2, 2),
('06251555173882', '份饭', '3423', '上海', '上海', '浦东', '212', '42', '24', '北京', '北京', '朝阳区', '232', 1, 1, 2, 2),
('06251559230830', '偷塔', '422', '上海', '上海', '浦东', '312', '4', '343', '北京', '北京', '昌平区', '234', 1, 1, 3, 2),
('06251718228511', '1', '1', '上海', '上海', '浦东', '1111', '1', '1', '北京', '北京', '昌平区', '1', 1, 1, 3, 2),
('06260158049002', '1', '1', '上海', '上海', '浦东', '111', '1', '2', '北京', '北京', '昌平区', '2', 1, 1, 3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `GoodsStatus`
--

CREATE TABLE `GoodsStatus` (
  `goodsID` varchar(15) NOT NULL,
  `conditionID` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `GoodsStatus`
--

INSERT INTO `GoodsStatus` (`goodsID`, `conditionID`) VALUES
('06231646436942', '1'),
('06231717469072', '1'),
('06231756274848', '1'),
('06231646436942', '2'),
('06231717469072', '2'),
('06251518403105', '1'),
('06251518403105', '2'),
('06251555173882', '1'),
('06251555173882', '2'),
('06251559230830', '1'),
('06251559230830', '2'),
('06251518403105', '3'),
('06251555173882', '3'),
('06251559230830', '3'),
('06251718228511', '1'),
('06251718228511', '2'),
('06251718228511', '3'),
('06260158049002', '1'),
('06260158049002', '2'),
('06260158049002', '3'),
('06251518403105', '4'),
('06251555173882', '4'),
('06251559230830', '4'),
('06251718228511', '4'),
('06260158049002', '4'),
('06251518403105', '5'),
('06251555173882', '5'),
('06251559230830', '5'),
('06251718228511', '5'),
('06260158049002', '5'),
('06251518403105', '6'),
('06251555173882', '6');

-- --------------------------------------------------------

--
-- 表的结构 `ProvinceCenter`
--

CREATE TABLE `ProvinceCenter` (
  `centerID` int(11) NOT NULL,
  `province` varchar(10) NOT NULL,
  `pwd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ProvinceCenter`
--

INSERT INTO `ProvinceCenter` (`centerID`, `province`, `pwd`) VALUES
(1, '上海', '123456'),
(2, '北京', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `Transportation`
--

CREATE TABLE `Transportation` (
  `transportationID` char(5) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `destintion` varchar(10) NOT NULL,
  `capacity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Transportation`
--

INSERT INTO `Transportation` (`transportationID`, `departure`, `destintion`, `capacity`) VALUES
('1', '上海', '北京', 3),
('2', '上海', '北京', 10);

-- --------------------------------------------------------

--
-- 表的结构 `TransportationManagement`
--

CREATE TABLE `TransportationManagement` (
  `centerID` int(11) NOT NULL,
  `transportationID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `TransportationManagement`
--

INSERT INTO `TransportationManagement` (`centerID`, `transportationID`) VALUES
(2, '1'),
(2, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `Conditions`
--
ALTER TABLE `Conditions`
  ADD PRIMARY KEY (`conditionID`);

--
-- Indexes for table `DistrictCenter`
--
ALTER TABLE `DistrictCenter`
  ADD PRIMARY KEY (`centerID`);

--
-- Indexes for table `Goods`
--
ALTER TABLE `Goods`
  ADD PRIMARY KEY (`goodsID`),
  ADD KEY `FK_Reference_1` (`receiveDistrictCenter`),
  ADD KEY `FK_Reference_2` (`sendDestrictCenter`),
  ADD KEY `FK_Reference_3` (`receiveProvinceCenter`),
  ADD KEY `FK_Reference_4` (`sendProvinceCenter`);

--
-- Indexes for table `GoodsStatus`
--
ALTER TABLE `GoodsStatus`
  ADD KEY `FK_Reference_5` (`goodsID`),
  ADD KEY `FK_Reference_6` (`conditionID`);

--
-- Indexes for table `ProvinceCenter`
--
ALTER TABLE `ProvinceCenter`
  ADD PRIMARY KEY (`centerID`);

--
-- Indexes for table `Transportation`
--
ALTER TABLE `Transportation`
  ADD PRIMARY KEY (`transportationID`);

--
-- Indexes for table `TransportationManagement`
--
ALTER TABLE `TransportationManagement`
  ADD KEY `FK_Reference_8` (`transportationID`),
  ADD KEY `FK_Reference_9` (`centerID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `DistrictCenter`
--
ALTER TABLE `DistrictCenter`
  MODIFY `centerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `ProvinceCenter`
--
ALTER TABLE `ProvinceCenter`
  MODIFY `centerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 限制导出的表
--

--
-- 限制表 `Goods`
--
ALTER TABLE `Goods`
  ADD CONSTRAINT `FK_Reference_1` FOREIGN KEY (`receiveDistrictCenter`) REFERENCES `DistrictCenter` (`centerID`),
  ADD CONSTRAINT `FK_Reference_2` FOREIGN KEY (`sendDestrictCenter`) REFERENCES `DistrictCenter` (`centerID`),
  ADD CONSTRAINT `FK_Reference_3` FOREIGN KEY (`receiveProvinceCenter`) REFERENCES `ProvinceCenter` (`centerID`),
  ADD CONSTRAINT `FK_Reference_4` FOREIGN KEY (`sendProvinceCenter`) REFERENCES `ProvinceCenter` (`centerID`);

--
-- 限制表 `GoodsStatus`
--
ALTER TABLE `GoodsStatus`
  ADD CONSTRAINT `FK_Reference_5` FOREIGN KEY (`goodsID`) REFERENCES `Goods` (`goodsID`),
  ADD CONSTRAINT `FK_Reference_6` FOREIGN KEY (`conditionID`) REFERENCES `Conditions` (`conditionID`);

--
-- 限制表 `TransportationManagement`
--
ALTER TABLE `TransportationManagement`
  ADD CONSTRAINT `FK_Reference_8` FOREIGN KEY (`transportationID`) REFERENCES `Transportation` (`transportationID`),
  ADD CONSTRAINT `FK_Reference_9` FOREIGN KEY (`centerID`) REFERENCES `ProvinceCenter` (`centerID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
