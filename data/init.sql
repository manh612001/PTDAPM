CREATE TABLE `NGUOIDUNG` (
  `Id` int PRIMARY KEY AUTO_INCREMENT,
  `Username` varchar(50),
  `Password` varchar(255),
  `FullName` varchar(255),
  `Email` varchar(255),
  `DiaChi` varchar(255),
  `NgaySinh` date,
  `Role` int
);

CREATE TABLE `KHACHHANG` (
  `Id` INT PRIMARY KEY AUTO_INCREMENT,
  `HoTenKH` nvarchar(30),
  `DiaChi` nvarchar(255),
  `DienThoai` char(10) UNIQUE
);

CREATE TABLE `HOADON` (
  `Id` INT PRIMARY KEY AUTO_INCREMENT,
  `IdKH` int,
  `IdNguoiDung` int,
  `NgayLapHD` date DEFAULT (GETDATE()),
  `TongTien` float
);

CREATE TABLE `SANPHAM` (
  `Id` int PRIMARY KEY,
  `IdDM` int,
  `Anh` varchar(255),
  `TenSP` nvarchar(255),
  `MoTa` nvarchar(500),
  `DonViTinh` nvarchar(10),
  `GiaBan` float,
  `SoLuongTon` int
);

CREATE TABLE `CHITIETHD` (
  `IDHD` int,
  `IDSP` int,
  `SoLuongMua` int,
  `GiamGia` float,
  `ThanhTien` float,
  PRIMARY KEY (`IDHD`, `IDSP`)
);

CREATE TABLE `NHAPHANG` (
  `IdNH` INT PRIMARY KEY AUTO_INCREMENT,
  `IdSP` int,
  `SoLuongNhap` int,
  `GiaNhap` float,
  `NgayNhap` date DEFAULT (GETDATE())
);

CREATE TABLE `DanhMuc` (
  `Id` int PRIMARY KEY AUTO_INCREMENT,
  `TenDM` varchar(255)
);

CREATE TABLE `GIOHANG` (
  `Id` int PRIMARY KEY AUTO_INCREMENT,
  `IdKH` int UNIQUE,
  `IdSP` int,
  `SoLuong` int,
  `Gia` float
);

ALTER TABLE `HOADON` ADD FOREIGN KEY (`IdKH`) REFERENCES `KHACHHANG` (`Id`);

ALTER TABLE `HOADON` ADD FOREIGN KEY (`IdNguoiDung`) REFERENCES `NGUOIDUNG` (`Id`);

ALTER TABLE `CHITIETHD` ADD FOREIGN KEY (`IDSP`) REFERENCES `SANPHAM` (`Id`);

ALTER TABLE `CHITIETHD` ADD FOREIGN KEY (`IDHD`) REFERENCES `HOADON` (`Id`);

ALTER TABLE `NHAPHANG` ADD FOREIGN KEY (`IdSP`) REFERENCES `SANPHAM` (`Id`);

ALTER TABLE `SANPHAM` ADD FOREIGN KEY (`IdDM`) REFERENCES `DanhMuc` (`Id`);

ALTER TABLE `GIOHANG` ADD FOREIGN KEY (`IdKH`) REFERENCES `KHACHHANG` (`Id`);

ALTER TABLE `GIOHANG` ADD FOREIGN KEY (`IdSP`) REFERENCES `SANPHAM` (`Id`);
