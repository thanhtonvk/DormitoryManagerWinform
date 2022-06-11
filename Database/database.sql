use master
go
create database qlktx
go
use qlktx
go
create table Phong(
    Id int primary key identity ,
    Tang int,
    Gia int
)
go
create table NguoiThue(
    Id int primary key identity ,
    HoTen nvarchar(50),
    NgaySinh nvarchar(30),
    DiaChi nvarchar(100),
    SDT char(10)
)
select * from NguoiThue
delete from NguoiThue where id = 0
go
create table ThuePhong(
    Id int primary key identity,
    NgayThue nvarchar(30),
    IdNguoiThue int not null,
    IdPhongThue int not null,
    TrangThai int
)
go
create table HoaDonDongTien(
    Id int primary key identity,
    IdPhong int not null,
    SoDien int,
    SoNuoc int,
    NgayDong nvarchar(30)
)

