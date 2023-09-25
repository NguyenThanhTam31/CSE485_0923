-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2023 at 02:09 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BTTH01_CSE485`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `ma_bviet` int UNSIGNED NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `ten_bhat` varchar(100) NOT NULL,
  `ma_tloai` int NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text,
  `ma_tgia` int NOT NULL,
  `ngayviet` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hinhanh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`ma_bviet`, `tieude`, `ten_bhat`, `ma_tloai`, `tomtat`, `noidung`, `ma_tgia`, `ngayviet`, `hinhanh`) VALUES
(1, 'yêu nhau', 'hôm nay em rất mệt', 1, 'Bài hát \"Hôm nay em rất mệt\" thể hiện tâm trạng mệt mỏi và căng thẳng trong cuộc sống hàng ngày, với mong muốn tìm lại sự cân bằng và nghỉ ngơi.', 'Bài hát \"Hôm nay em rất mệt\" lấy cảm hứng từ tình trạng mệt mỏi và căng thẳng của người hát trong cuộc sống hiện đại. Lời bài hát đề cập đến những áp lực và trăn trở hàng ngày mà người hát đang đối mặt. Giai điệu và cấu trúc ca khúc mang đến cảm giác buồn bã, với âm nhạc và lời ca đồng điệu nhẹ nhàng. Bài hát thể hiện mong muốn của người hát được nghỉ ngơi, giải tỏa căng thẳng và tìm lại sự cân bằng trong cuộc sống. Tuy mệt mỏi, nhưng bài hát mang đến một thông điệp tích cực, khích lệ người nghe đối mặt với những khó khăn và tìm kiếm sự hài lòng và bình yên.', 1, '2023-09-25 12:54:06', 'hinhanh-01'),
(2, 'anh em', 'ai là người thương em', 2, 'Bài hát \"Ai là người thương em\" là một ca khúc tình yêu, thể hiện tình cảm sâu lắng và lòng trung thành của người hát dành cho người mình yêu.', 'Bài hát \"Ai là người thương em\" xoay quanh chủ đề tình yêu. Lời ca kể về tình cảm sâu đậm và lòng trung thành của người hát dành cho người mình yêu. Bài hát mô tả sự tận tụy và sẵn sàng hy sinh cho người ấy, đồng thời thể hiện niềm tin vào tình yêu chân thành và mãnh liệt. Giai điệu và âm nhạc của bài hát mang đến cảm giác ấm áp và lãng mạn, phản ánh sự ngọt ngào và sâu lắng của tình yêu. \"Ai là người thương em\" là một bản nhạc tình đẹp, gửi gắm thông điệp về tình yêu chân thành và sự quan tâm tới người mình yêu.', 2, '2023-09-25 13:04:21', 'hinhanh02'),
(3, 'ngay xua', 'Chuyen tinh cay la & gio', 3, '\"Chuyện tình cây lá & gió\" là một câu chuyện tình yêu đầy bi kịch giữa một cây và gió, tượng trưng cho tình yêu không thể thành đôi.', '\"Chuyện tình cây là & gió\" là một câu chuyện tình yêu đầy bi kịch giữa một cây và gió. Cây đại diện cho một tình yêu mãnh liệt và kiên cường, trong khi gió là biểu tượng cho sự tự do và sự phiêu lưu. Cây và gió gặp nhau và yêu nhau, nhưng số phận không cho phép họ ở bên nhau. Gió luôn tự do và không thể bị ràng buộc bởi bất kỳ điều gì, trong khi cây đứng im một chỗ. Dù cây cố gắng giữ chặt gió, nhưng gió vẫn mãi là gió, luôn bay đi và rời xa cây. Cuối cùng, cây chấp nhận sự thật rằng tình yêu của họ không thể thành đôi và tiếp tục sống trong sự cô đơn và nhớ nhung. \"Chuyện tình cây và gió\" là một câu chuyện đau đớn và lưu giữ thông điệp về tình yêu không thể nắm bắt và giữ lấy mãi được.\r\n', 4, '2023-09-25 13:11:39', 'hinhanh-03');

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `ma_tgia` int NOT NULL,
  `ten_tgia` varchar(100) NOT NULL,
  `hinh_tgia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`ma_tgia`, `ten_tgia`, `hinh_tgia`) VALUES
(1, 'Nhacvietplus', 'hinh01'),
(2, 'tacgia-A', 'hinh02'),
(3, 'tacgia-B', 'hinh03'),
(4, 'NguyenThanhTam', 'hinh04');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `ma_tloai` int NOT NULL,
  `ten_tloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`ma_tloai`, `ten_tloai`) VALUES
(1, 'nhactre'),
(2, 'nhactrutinh'),
(3, 'nhacbuon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`ma_bviet`),
  ADD KEY `ma_tgia` (`ma_tgia`),
  ADD KEY `ma_tloai` (`ma_tloai`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`ma_tgia`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ma_tloai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`ma_tgia`) REFERENCES `tacgia` (`ma_tgia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`ma_tloai`) REFERENCES `theloai` (`ma_tloai`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
