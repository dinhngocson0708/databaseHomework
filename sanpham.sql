-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2023 lúc 11:44 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sanpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `id` int(11) NOT NULL,
  `namedanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`id`, `namedanhmuc`) VALUES
(1, 'QUẦN'),
(2, 'ÁO'),
(3, 'PHỤ KIỆN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamadmin`
--

CREATE TABLE `sanphamadmin` (
  `id` int(11) NOT NULL,
  `namesapham` varchar(100) NOT NULL,
  `danhmucsanpham` varchar(100) NOT NULL,
  `giasanpham` decimal(15,2) NOT NULL,
  `images` varchar(100) NOT NULL,
  `motasanpham` varchar(100) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamadmin`
--

INSERT INTO `sanphamadmin` (`id`, `namesapham`, `danhmucsanpham`, `giasanpham`, `images`, `motasanpham`, `soluong`) VALUES
(2, 'áo khoác', 'áo', '50000.00', 'https://img.ltwebstatic.com/images3_pi/2021/08/31/1630379146871e33eaf226074a25538db3db468004_thumbna', 'thoáng mát', 9),
(10, 'nhẫnaa', 'PHỤ KIỆN', '565.00', '', 'sang chảnh', 7687),
(24, 'dồng hồ', 'PHỤ KIỆN', '5567.00', 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_25069/dong-ho-treo-t', 'sang chảnh', 5),
(33, 'dồng hồ', 'QUẦN', '5567.00', 'https://e.khoahoc.tv/photos/image/082013/31/loai-gau.jpg', 'sang chảnh', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nameDK` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphamadmin`
--
ALTER TABLE `sanphamadmin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanphamadmin`
--
ALTER TABLE `sanphamadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
