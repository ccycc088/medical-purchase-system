-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-12-20 10:04:08
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `期末專案`
--

-- --------------------------------------------------------

--
-- 資料表結構 `department`
--

CREATE TABLE `department` (
  `DeNo` char(20) NOT NULL,
  `DepName` varchar(20) NOT NULL,
  `PersonInCharge` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `department`
--

INSERT INTO `department` (`DeNo`, `DepName`, `PersonInCharge`) VALUES
('DEP001	', '心臟內科', '李志豪'),
('DEP002', '神經外科', '王雅婷'),
('DEP003', '婦產科', '張靜宜'),
('DEP004', '小兒科', '陳建華'),
('DEP005', '內分泌科', '吳宗翰'),
('DEP006', '皮膚科', '黃美玲'),
('DEP007', '耳鼻喉科', '劉宇軒'),
('DEP008', '骨科', '周凱文'),
('DEP009', '放射診斷科', '林怡君'),
('DEP010', '急診科', '許仁傑');

-- --------------------------------------------------------

--
-- 資料表結構 `detail`
--

CREATE TABLE `detail` (
  `ReNo` char(20) NOT NULL,
  `detailNo` char(20) NOT NULL,
  `Quantity` char(10) NOT NULL,
  `requestdate` date NOT NULL,
  `orderNo` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `detail`
--

INSERT INTO `detail` (`ReNo`, `detailNo`, `Quantity`, `requestdate`, `orderNo`) VALUES
('123213105', '482731', '50', '2023-12-07', '318745'),
('123215607', '927463', '20', '2024-11-26', '892713'),
('123221408', '293746', '25', '2024-06-14', '529174'),
('123231709', '348275', '60', '2024-07-08', '614372'),
('123262105', '493857', '40', '2024-05-07', '739281'),
('123274306', '182647', '30', '2024-08-26', '784521'),
('123289507', '385729', '40', '2024-10-01', '841927'),
('123301010', '574839', '30', '2019-10-10', '943258'),
('123310101', '584932', '30', '2023-12-04', '318745'),
('123320202', '937482', '20', '2024-08-01', '459836'),
('123330303', '674839', '35', '2024-06-06', '529174'),
('123340404', '837495', '50', '2024-07-09', '614372'),
('123350505', '746928', '50', '2023-10-05', '675932'),
('123370707', '758394', '25', '2024-08-22', '784521'),
('123380808', '638247', '50', '2024-11-24', '892713');

-- --------------------------------------------------------

--
-- 資料表結構 `item`
--

CREATE TABLE `item` (
  `ItemNo` char(20) NOT NULL,
  `SupId` char(20) NOT NULL,
  `spec` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `itemName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `item`
--

INSERT INTO `item` (`ItemNo`, `SupId`, `spec`, `unit`, `itemName`) VALUES
('ITEM001', 'SUP001', '10x10 cm', '箱', '醫用敷料'),
('ITEM002', 'SUP001', '5 ml', '支', '一次性注射器'),
('ITEM003', 'SUP001', 'L號', '箱', '無菌手套'),
('ITEM004', 'SUP002', '12G', '箱', '靜脈導管'),
('ITEM005', 'SUP002', '中號', '個', '醫用口罩'),
('ITEM006', 'SUP002', '50 ml', '瓶', '酒精消毒液'),
('ITEM007', 'SUP003', '20 cm', '台', '手術剪刀'),
('ITEM008', 'SUP003', '500 ml', '瓶', '生理鹽水'),
('ITEM009', 'SUP003', '成人', '個', '血壓計'),
('ITEM010', 'SUP004', '30x30 cm', '箱', '手術布'),
('ITEM011', 'SUP004', '小號', '個', '照明燈'),
('ITEM012', 'SUP004', '10 ml', '支', '藥劑針管'),
('ITEM013', 'SUP005', '100 ml', '瓶', '高濃度酒精消毒液'),
('ITEM014', 'SUP005', 'XL號', '箱', '無菌衣'),
('ITEM015', 'SUP005', '15x15 cm', '箱', '壓縮敷料'),
('ITEM016', 'SUP006', '25 cm', '台', '手術鉗'),
('ITEM017', 'SUP006', '1L', '瓶', '滅菌生理鹽水'),
('ITEM018', 'SUP006', '加厚型', '個', '手術床墊'),
('ITEM019', 'SUP007', '2.5 mm', '支', '氣管插管'),
('ITEM020', 'SUP007', '100片裝', '箱', '一次性紗布片'),
('ITEM021', 'SUP007', '5號', '個', '醫用膠布'),
('ITEM022', 'SUP008', '成人標準型', '台', '心電圖機'),
('ITEM023', 'SUP008', '高效型', '個', '血氧儀'),
('ITEM024', 'SUP008', '100條', '箱', '一次性導尿管'),
('ITEM025', 'SUP009', '可調節型', '個', '頸托'),
('ITEM026', 'SUP009', '2L', '瓶', '醫用氧氣'),
('ITEM027', 'SUP009', '30支裝', '箱', '無菌注射器'),
('ITEM028', 'SUP010', '自動型', '台', '血糖測量儀'),
('ITEM029', 'SUP010', '高精度型', '支', '溫度計'),
('ITEM030', 'SUP010', '抗壓型', '個', '輸液管');

-- --------------------------------------------------------

--
-- 資料表結構 `orderlist`
--

CREATE TABLE `orderlist` (
  `OrederNo` char(20) NOT NULL,
  `StaffID` char(20) NOT NULL,
  `OrderDate` date NOT NULL,
  `SupId` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderlist`
--

INSERT INTO `orderlist` (`OrederNo`, `StaffID`, `OrderDate`, `SupId`) VALUES
('318745', '1004', '2023-12-21', 'SUP004'),
('459836', '1002', '2024-08-06', 'SUP002'),
('529174', '1003', '2024-06-24', 'SUP003'),
('614372', '1005', '2022-07-15', 'SUP005'),
('675932', '1001', '2023-10-16', 'SUP001'),
('739281', '1005', '2024-05-21', 'SUP005'),
('784521', '1002', '2024-09-09', 'SUP002'),
('841927', '1004', '2024-10-14', 'SUP004'),
('892713', '1001', '2024-12-02', 'SUP001'),
('943258', '1003', '2019-10-17', 'SUP003');

-- --------------------------------------------------------

--
-- 資料表結構 `orderlistdetail`
--

CREATE TABLE `orderlistdetail` (
  `OrdNo` char(20) NOT NULL,
  `itemNo` char(20) NOT NULL,
  `OrderQuantity` char(20) NOT NULL,
  `unitPrice` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderlistdetail`
--

INSERT INTO `orderlistdetail` (`OrdNo`, `itemNo`, `OrderQuantity`, `unitPrice`) VALUES
('675932', 'ITEM001', '50', '50'),
('892713', 'ITEM002', '50', '90'),
('892713', 'ITEM003', '20', '150'),
('784521', 'ITEM004', '30', '75'),
('459836', 'ITEM005', '20', '120'),
('784521', 'ITEM006', '25', '55'),
('943258', 'ITEM007', '30', '300'),
('529174', 'ITEM008', '35', '40'),
('529174', 'ITEM009', '25', '60'),
('318745', 'ITEM010', '50', '100'),
('318745', 'ITEM011', '30', '300'),
('841927', 'ITEM012', '40', '35'),
('739281', 'ITEM013', '40', '60'),
('614372', 'ITEM014', '60', '200'),
('614372', 'ITEM015', '50', '35');

-- --------------------------------------------------------

--
-- 資料表結構 `purchaser`
--

CREATE TABLE `purchaser` (
  `StaffID` char(20) NOT NULL,
  `ContactNumber` char(20) NOT NULL,
  `StaffName` varchar(10) NOT NULL,
  `Team` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `purchaser`
--

INSERT INTO `purchaser` (`StaffID`, `ContactNumber`, `StaffName`, `Team`) VALUES
('1001', '02-27891234#101', '陳冠宇', '採購組1'),
('1002', '02-27891234#102', '林曉晴', '採購組1'),
('1003', '02-27891234#103', '黃俊', '採購組1'),
('1004', '02-27891234#104', '李佩蓉', '採購組2'),
('1005', '02-27891234#105', '吳柏霖', '採購組2'),
('1006', '02-27891234#106', '張育瑄', '採購組2'),
('1007', '02-27891234#107', '王志豪', '採購組3'),
('1008', '02-27891234#108', '周欣怡', '採購組3'),
('1009', '02-27891234#109', '劉建成', '採購組3'),
('1010', '02-27891234#110', '許佳琳', '採購組3');

-- --------------------------------------------------------

--
-- 資料表結構 `record`
--

CREATE TABLE `record` (
  `ItemNo` char(20) NOT NULL,
  `reNo` char(20) NOT NULL,
  `detailNo` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `record`
--

INSERT INTO `record` (`ItemNo`, `reNo`, `detailNo`) VALUES
('ITEM010', '123213105', '482731'),
('ITEM003', '123215607', '927463'),
('ITEM009', '123221408', '293746'),
('ITEM014', '123231709', '348275'),
('ITEM013', '123262105', '493857'),
('ITEM004', '123274306', '182647'),
('ITEM012', '123289507', '385729'),
('ITEM007', '123301010', '574839'),
('ITEM011', '123310101', '584932'),
('ITEM005', '123320202', '937482'),
('ITEM008', '123330303', '674839'),
('ITEM015', '123340404', '837495'),
('ITEM001', '123350505', '746928'),
('ITEM006', '123370707', '758394'),
('ITEM002', '123380808', '638247');

-- --------------------------------------------------------

--
-- 資料表結構 `requisition`
--

CREATE TABLE `requisition` (
  `ReNo` char(20) NOT NULL,
  `RequestDepartment` varchar(20) NOT NULL,
  `Reviewer` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `requisition`
--

INSERT INTO `requisition` (`ReNo`, `RequestDepartment`, `Reviewer`) VALUES
('123213105', 'DEP001	', '1001'),
('123215607', 'DEP008', '1008'),
('123221408', 'DEP005', '1005'),
('123231709', 'DEP010', '1010'),
('123254709', 'DEP006', '1006'),
('123262105', 'DEP007', '1007'),
('123274306', 'DEP002', '1002'),
('123289507', 'DEP003', '1003'),
('123293209', 'DEP004', '1004'),
('123301010', 'DEP010', '1009'),
('123310101', 'DEP004', '1001'),
('123320202', 'DEP001	', '1008'),
('123330303', 'DEP002', '1005'),
('123340404', 'DEP008', '1010'),
('123350505', 'DEP005', '1006'),
('123370707', 'DEP003', '1002'),
('123380808', 'DEP005', '1003');

-- --------------------------------------------------------

--
-- 資料表結構 `supcontact`
--

CREATE TABLE `supcontact` (
  `SupId` char(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` char(20) NOT NULL,
  `SupLocation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `supcontact`
--

INSERT INTO `supcontact` (`SupId`, `email`, `tel`, `SupLocation`) VALUES
('SUP001', 'healthmed@gmail.com', '02-27891234', '台北市'),
('SUP002', 'peaceequip@gmail.com', '03-56349812', '新竹市'),
('SUP003', 'goodhealth@gmail.com', '04-22987645', '台中市'),
('SUP004', 'forevercare@gmail.com', '06-29873456', '台南市'),
('SUP005', 'allmed@gmail.com', '07-56984321', '高雄市'),
('SUP006', 'peakmedtech@gmail.com', '02-87562345', '台北市'),
('SUP007', 'shunhealth@gmail.com', '03-48392176', '新竹市'),
('SUP008', 'meditech@gmail.com', '04-37659482', '台中市'),
('SUP009', 'harmonyhealth@gmail.com', '05-45983217', '雲林縣'),
('SUP010', 'precisionmed@gmail.com', '06-38472165', '台南市');

-- --------------------------------------------------------

--
-- 資料表結構 `suppeliar`
--

CREATE TABLE `suppeliar` (
  `SupId` char(20) NOT NULL,
  `supName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `suppeliar`
--

INSERT INTO `suppeliar` (`SupId`, `supName`) VALUES
('SUP001', '健康醫療科技股份有限公司'),
('SUP002', '和安醫療器材有限公司'),
('SUP003', '佳康醫療用品有限公司'),
('SUP004', '永安醫療設備有限公司'),
('SUP005', '全方位醫材有限公司'),
('SUP006', '鼎盛醫療科技股份有限公司'),
('SUP007', '順康醫療器材股份有限公司'),
('SUP008', '醫創科技有限公司'),
('SUP009', '瑞和醫療用品有限公司'),
('SUP010', '精準醫療科技股份有限公司');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeNo`);

--
-- 資料表索引 `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`ReNo`,`detailNo`),
  ADD KEY `det2` (`orderNo`);

--
-- 資料表索引 `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemNo`),
  ADD KEY `item1` (`SupId`);

--
-- 資料表索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`OrederNo`),
  ADD KEY `ord1` (`SupId`),
  ADD KEY `ord2` (`StaffID`);

--
-- 資料表索引 `orderlistdetail`
--
ALTER TABLE `orderlistdetail`
  ADD PRIMARY KEY (`itemNo`),
  ADD KEY `Ordde2` (`OrdNo`);

--
-- 資料表索引 `purchaser`
--
ALTER TABLE `purchaser`
  ADD PRIMARY KEY (`StaffID`);

--
-- 資料表索引 `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`ItemNo`),
  ADD KEY `rec2` (`reNo`,`detailNo`);

--
-- 資料表索引 `requisition`
--
ALTER TABLE `requisition`
  ADD PRIMARY KEY (`ReNo`),
  ADD KEY `req1` (`RequestDepartment`),
  ADD KEY `req2` (`Reviewer`);

--
-- 資料表索引 `supcontact`
--
ALTER TABLE `supcontact`
  ADD PRIMARY KEY (`SupId`);

--
-- 資料表索引 `suppeliar`
--
ALTER TABLE `suppeliar`
  ADD PRIMARY KEY (`SupId`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `det1` FOREIGN KEY (`ReNo`) REFERENCES `requisition` (`ReNo`),
  ADD CONSTRAINT `det2` FOREIGN KEY (`orderNo`) REFERENCES `orderlist` (`OrederNo`);

--
-- 資料表的限制式 `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item1` FOREIGN KEY (`SupId`) REFERENCES `suppeliar` (`SupId`);

--
-- 資料表的限制式 `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `ord1` FOREIGN KEY (`SupId`) REFERENCES `suppeliar` (`SupId`),
  ADD CONSTRAINT `ord2` FOREIGN KEY (`StaffID`) REFERENCES `purchaser` (`StaffID`);

--
-- 資料表的限制式 `orderlistdetail`
--
ALTER TABLE `orderlistdetail`
  ADD CONSTRAINT `Ordde1` FOREIGN KEY (`itemNo`) REFERENCES `item` (`ItemNo`),
  ADD CONSTRAINT `Ordde2` FOREIGN KEY (`OrdNo`) REFERENCES `orderlist` (`OrederNo`);

--
-- 資料表的限制式 `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `rec1` FOREIGN KEY (`ItemNo`) REFERENCES `item` (`ItemNo`),
  ADD CONSTRAINT `rec2` FOREIGN KEY (`reNo`,`detailNo`) REFERENCES `detail` (`ReNo`, `detailNo`);

--
-- 資料表的限制式 `requisition`
--
ALTER TABLE `requisition`
  ADD CONSTRAINT `req1` FOREIGN KEY (`RequestDepartment`) REFERENCES `department` (`DeNo`),
  ADD CONSTRAINT `req2` FOREIGN KEY (`Reviewer`) REFERENCES `purchaser` (`StaffID`);

--
-- 資料表的限制式 `supcontact`
--
ALTER TABLE `supcontact`
  ADD CONSTRAINT `Con1` FOREIGN KEY (`SupId`) REFERENCES `suppeliar` (`SupId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
