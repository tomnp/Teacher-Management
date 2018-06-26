CREATE DATABASE QUANLYGIANGVIEN
GO

USE QUANLYGIANGVIEN
GO

CREATE TABLE ThongTinHoc(
ngayNhapHoc DATE PRIMARY KEY,
ngayKetThuc DATE,
soTietHoc INT
)
GO

CREATE TABLE MonHoc(
tenMonHoc NVARCHAR(100),
maMonHoc  CHAR(7) PRIMARY KEY
)
GO

CREATE TABLE GiangVien(
hoLotGiangVien NVARCHAR(60),
tenGiangVien NVARCHAR(30),
maGiangVien CHAR(5) PRIMARY KEY
)
GO

CREATE TABLE LopHoc(
maLopHoc  INTEGER PRIMARY KEY,
thu INTEGER,
tietBatDau INTEGER,
soTiet	INTEGER,
phong NVARCHAR(10),
maLop	 NVARCHAR(10),
maGiangVien	CHAR(5) ,
maMonHoc	CHAR(7),
FOREIGN KEY(maGiangVien) REFERENCES GiangVien(maGiangVien),
FOREIGN KEY(maMonHoc) REFERENCES MonHoc(maMonHoc)
)
GO

CREATE TABLE TietHoc(
maLopHoc INT REFERENCES LopHoc,
idTietHoc INT IDENTITY PRIMARY KEY,
tenPhong  NVARCHAR(10),
ngayHoc	 DATE,
trangThai	INT,
ghiChu NVARCHAR(300),

)
GO

CREATE TABLE TietHocBu(
maLopHoc INT REFERENCES LopHoc,
idTietHoc INT REFERENCES TietHoc PRIMARY KEY,
tenPhong NVARCHAR(10),
ngayHoc DATE,
tietBatDau INT,
trangThai INT,
ghiChu NVARCHAR(300)

)
GO


SELECT * FROM dbo.ThongTinHoc

SELECT * FROM dbo.GiangVien



