--drop table Thue
--drop table Tamvang
--drop table Tamtru
--drop table Lyhon
--drop table QuanHe
--drop table HoKhau
--drop table GiayChungTu
--drop table DangNhap
--drop table Cnkh
--drop table DanhGia
--drop table CongDan
--drop table KhaiSinh
--Go

create table KhaiSinh
(
	ID integer identity(1,1) not null constraint Mks_ID unique,
	MaKS as right('KS0' + cast(ID as varchar(10)),10) persisted constraint PK_Mks primary key clustered,
	HoTenKS nvarchar(255),
	GioiTinh nvarchar(20),
	NgaySinh date,
	NoiSinh nvarchar(100),
	DanToc nvarchar(20),
	QuocTich nvarchar(20),
	QueQuan nvarchar(100),
	Cha nvarchar(20),
	Me nvarchar(20),
	NguoiKhaiSinh nvarchar(20),
	QuanHe nvarchar(100),
	NgayDk date,
	NoiDk nvarchar(100),
	TrangThai int
)
insert into KhaiSinh(HoTenKS, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, Cha, Me, NguoiKhaiSinh,QuanHe, NgayDk, NoiDk, TrangThai)
values (N'Phạm Văn T',N'Nam', '1978-05-10', N'Bến Tre', N'Kinh', N'Việt Nam', N'Bến Tre', '083078008462', '083078008463', '083078008462', N'cha ruột', '1978-06-01', N'Bến Tre', 1)
	,(N'Đinh Thị Kim H',N'Nữ', '1979-07-03', N'Bến Tre', N'Kinh', N'Việt Nam', N'Bến Tre', '083078002562', '083078005163', '083078008462', N'mẹ ruột', '1979-08-05', N'Bến Tre', 1)
	,(N'Phạm Thị Phương N',N'Nữ', '2003-09-01', N'Bến Tre', N'Kinh', N'Việt Nam', N'Bến Tre', '083303008061', '083303008072', '083303008061', N'cha ruột', '2003-09-10', N'Bến Tre', 1)
	,(N'Phạm Nhat T', N'Nam', '2008-01-21', N'Bến Tre', N'Kinh', N'Việt Nam', N'Bến Tre', '083303008071', '083303048071', '083303008071', N'cha ruột', '2008-01-30', N'Bến Tre', 1)
	,(N'Lê Hoàng L', N'Nam', '1965-12-10', N'TP HCM', N'Kinh', N'Việt Nam', N'Cần Thơ', '092174003985', '092174003984', '092174003985', N'cha ruột', '1695-12-21', N'Cần Thơ', 1)
	,(N'Hoàng Thị Thùy D', N'Nữ', '1968-01-24', N'Kiên Giang', N'Kinh', N'Việt Nam', N'Kiên Giang', '091301724456', '091301721156', '091301724456', N'cha ruột', '1968-02-20', N'Kiên Giang', 1)
	,(N'Lê Minh D', N'Nam', '2000-11-22', N'Cần Thơ', N'Kinh', N'Việt Nam', N'Cần Thơ', '09217400315', '09217400415', '09217400315', N'cha ruột', '2000-11-29', N'Cần Thơ', 1)
--Alter table KhaiSinh WITH CHECK ADD FOREIGN KEY(Cha) REFERENCES Congdan(CCCD)
--Alter table KhaiSinh WITH CHECK ADD FOREIGN KEY(Me) REFERENCES Congdan(CCCD)
--Alter table KhaiSinh WITH CHECK ADD FOREIGN KEY(NguoiKhaiSinh) REFERENCES Congdan(CCCD)

create table CongDan
(
	CCCD nvarchar(20) primary key,
	HoTen nvarchar(255),
	NcCccd nvarchar(50),
	NgcCccd date, 
	MaKS varchar(10) references KhaiSinh(MaKS),
	SDT nvarchar(20),
	Email nvarchar(50),
	TrangThai int
)

insert into CongDan(CCCD, HoTen, NcCccd, NgcCccd, MaKS, SDT, Email, TrangThai)
values ('083303008061',N'Phạm Văn T', N'Bến Tre', '2021-12-21', 'KS01', '0814096656', 'phamvant@gmail.com', 1)
	 ,('083303008072',N'Đinh Thị Kim H', N'Bến Tre', '2021-12-20', 'KS02', '0814096245', 'dinhthikimh@gmail.com', 1)
	 ,('083303008211',N'Phạm Thị Phương N', N'Bến Tre', '2021-12-21', 'KS03', '0987455412', 'phamthiphuongn@gmail.com', 1)
	 ,('083303008161',N'Phạm Nhat T', N'Bến Tre', '2022-12-27', 'KS04', '0358046675', 'phamnhatt@gmail.com', 1)
	 ,('083303002561',N'Lê Hoàng L', N'Cần Thơ', '2021-10-12', 'KS05', '0912124748', 'lehoangl@gmail.com', 1)
	 ,('083303003061',N'Hoàng Thị Thùy D', N'Kiên Giang', '2021-10-10', 'KS06', '0345696784', 'hoangthithuyd@gmail.com', 1)
	 ,('083303008761',N'Lê Minh D', N'Cần Thơ', '2023-01-20', 'KS07', '0754141469', 'leminhd@gmail.com', 1)
create table Tamtru
(
	ID integer identity(1,1) not null constraint Mtt_ID unique,
	MaTT as right('TT0' + cast(ID as varchar(10)),10) persisted constraint PK_Mtt primary key clustered,
	Cccd nvarchar(20) references CongDan(CCCD),
	Ngaydk date,
	Noidk nvarchar(100),
	Ngayden date,
	Ngaydi date,
	Lydo nvarchar(255),
	TrangThai int
)
insert into Tamtru (CCCD, Ngaydk, Noidk, Ngayden, Ngaydi, Lydo, TrangThai)
values ('083303008211', '2023-01-02', N'TP HCM', '2023-01-01','2025-01-01', N'Làm công ty', 1)
,('083303003061', '2022-02-05', N'TP HCM','2022-02-04','2024-02-04', N'Học cao học', 1)
,('083303008761', '2023-03-01', N'TP HCM', '2023-02-10','2024-02-10',	N'Điều trị bệnh', 1)

create table Tamvang
(
	ID integer identity(1,1) not null constraint Mtv_ID unique,
	MaTV as right('TV0' + cast(ID as varchar(10)),10) persisted constraint PK_Mtv primary key clustered,
	CCCD nvarchar(20) references CongDan(CCCD),
	Ngaydk date,
	Ncdi nvarchar(50),
	Ncden nvarchar(50),
	Ngaydi	date,
	Ngayve	date,
	Lydo nvarchar(100),
	TrangThai int
)

insert into Tamvang (CCCD, Ngaydk, Ncdi, Ncden, Ngaydi, Ngayve, Lydo, TrangThai)
values ('083303008211', '2022-12-30', N'Bến Tre', N'TP HCM', '2023-01-01','2025-01-01', N'Làm công ty', 1)
	,('083303003061', '2022-02-02', N'Kiên Giang', N'TP HCM','2022-02-04','2024-02-04', N'Học cao học', 1)
	,('083303008761', '2023-02-25',N'Cần Thơ', N'TP HCM', '2023-02-10','2024-02-10',	N'Điều trị bệnh', 1)
create table Thue
(
	ID integer identity(1,1) not null constraint Mst_ID unique,
	Masothue as right('TH0' + cast(ID as varchar(10)),10) persisted constraint PK_Mst primary key clustered,
	Coquanthue nchar(100),
	SoCMT_CCCD nvarchar(20)references CongDan(Cccd),
	Ngaythaydoithongtingannhat datetime,
	TrangThai int
)
insert into Thue (Coquanthue, SoCMT_CCCD, Ngaythaydoithongtingannhat, TrangThai)
values (N'Cục thuế tỉnh Bến Tre', '083303008061', '2022-01-20', 1)
	, (N'Cục thuế tỉnh Bến Tre', '083303008072', '2022-05-12', 1)
	, (N'Cục thuế tỉnh Cần Thơ', '083303002561', '2021-07-14', 1)
	, (N'Cục thuế tỉnh Kiêng Giang', '083303008061', '2021-12-22', 1)
create table Cnkh
(
	ID integer identity(1,1) not null constraint Mcnkh_ID unique,
	MaCnkh as right('KH0' + cast(ID as varchar(10)),10) persisted constraint PK_Mcnkh primary key clustered,
	CccdVo nvarchar(20)references CongDan(Cccd),
	CccdChong nvarchar(20)references CongDan(Cccd),
	Noidk nvarchar(100),
	Ngaydk date,
	TrangThai int
);
insert into Cnkh (CccdVo, CccdChong, Noidk, Ngaydk, TrangThai)
values ('083303008072', '083303008061', N'Ủy ban nhân dân xã TTB', '2002-10-11', 1)
	, ('083303003061', '083303002561', N'Ủy ban nhân dân tỉnh Cần Thơ', '1993-04-12', 1)
create table Lyhon
(
	ID integer identity(1,1) not null constraint Mlh_ID unique,
	MaLh as right('LH0' + cast(ID as varchar(10)),10) persisted constraint PK_Mlh primary key clustered,
	MaCnkh varchar(10) references Cnkh(MaCnkh),
	CccdNguoiNopDon nvarchar(20) references CongDan(CCCD),
	Noidk nvarchar(100),
	Ngaydk date,
	Lydo nvarchar(255),
	TrangThai int
)

insert into Lyhon (MaCnkh, CccdNguoiNopDon, Noidk, Ngaydk, Lydo, TrangThai)
values ('KH02', '083303008061', N'Ủy ban nhân dân xã TTB', '2017-03-23', N'Không hòa hợp', 1)
create table HoKhau
(
	ID integer identity(1,1) not null constraint Mhk_ID unique,
	MaHK as right('HK0' + cast(ID as varchar(10)),10) persisted constraint PK_Mhk primary key clustered,
	DiaChi nvarchar(255),
	CccdChuHo nvarchar(20) references CongDan(CCCD),
	TrangThai int
)
insert into HoKhau (DiaChi, CccdChuHo, TrangThai)
values (N'123 đường Lê Văn Duyệt, Phường 5, thành phố Bến Tre, tỉnh Bến Tre, Việt Nam', '083303008061', 1),
		(N'67, đường Lý Thái Tổ, phường Trần Phú, thành phố Nha Trang, tỉnh Khánh Hòa, Việt Nam', '083303002561', 1)

--insert into HoKhau (DiaChi, CccdChuHo, TrangThai) values (N'1 Võ Văn Ngân', '083303003061', 0)
--select * from HoKhau
create table QuanHe
(
	MaHK varchar(10) references HoKhau(MaHK),
	CccdNguoiThamGia nvarchar(20) references CongDan(CCCD),
	QuanHeVoiChuHo nvarchar(50),
	TrangThai int,
	Primary Key (MaHK, CccdNguoiThamGia)
)
insert into QuanHe (MaHK, CccdNguoiThamGia, QuanHeVoiChuHo, TrangThai)
values ('HK01', '083303008061', N'Chủ hộ', 1),
		('HK01', '083303008072', N'Vợ', 1),
		('HK01', '083303008211', N'Con gái', 1),
		('HK01', '083303008161', N'Con trai', 1),
		('HK02', '083303002561', N'Chủ hộ', 1),
		('HK02', '083303003061', N'Vợ', 1),
		('HK02', '083303008761', N'Con trai', 1)
create table DangNhap
(
	Quyen char(20),
	TenDangNhap nvarchar(20) primary key,
	MatKhau char(20),
)
insert into DangNhap (Quyen, TenDangNhap, MatKhau)
values ('admin', 'admin12345', '12345')
	 ,('user', '083303008061','phamt123')
	 ,('user','083303008072', 'kimh123')
	 ,('user','083303008211', 'phuongn123')
	 ,('user','083303008161', 'nhatt123')
	 ,('user','083303002561', 'hoangl123')
	 ,('user','083303003061','thuyd123')	
	 ,('user','083303008761', 'minhd123')
--SELECT *FROM DangNhap
create table GiayChungTu
(
	ID integer identity(1,1) not null constraint Mct_ID unique,
	MaCT as right('CT0' + cast(ID as varchar(10)),10) persisted constraint PK_MCT primary key clustered,
	CCCD nvarchar(20) references CongDan(CCCD),
	NgayMat date,
	NoiMat nvarchar(100),
	NguyenNhan nvarchar(100),
	TrangThai int
)

insert into GiayChungTu(CCCD, NgayMat, NoiMat, NguyenNhan, TrangThai)
values ('083303002561', '2023-04-01', 'TP HCM', 'Benh tim', 1)

select * from Thue
select * from Tamvang
select * from Tamtru
select * from Lyhon
select * from QuanHe
select * from HoKhau
select * from GiayChungTu
select * from DangNhap
select * from Cnkh
select * from CongDan
select * from KhaiSinh

--select *from DangNhap join Thue on DangNhap.TenDangNhap = Thue.SoCMT_CCCD

--select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, DiaChi, SDT, Email from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where CongDan.TrangThai = 0

--Select *from Thue join CongDan on Thue.SoCMT_CCCD = CongDan.CCCD Where Thue.TrangThai = 1
--select MaTV, TamVang.CCCD, TamVang.Ngaydk, Ncdi, Ncden, Ngaydi, Ngayve, Lydo, NcCccd, NgcCccd, HoTen, NgaySinh 
--from Tamvang join CongDan on Tamvang.Cccd = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS
----select *from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS where KhaiSinh.TrangThai = 1
----select *from KhaiSinh join CongDan on KhaiSinh.Cha = CongDan.CCCD;
----select MaCT, CongDan.CCCD, HoTen, NgaySinh, NgayMat, NoiMat, NguyenNhan
----from GiayChungTu join CongDan on GiayChungTu.CCCD = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS
----Select *from Thue join CongDan on Thue.SoCMT_CCCD = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where SoCMT_CCCD = '083303008061'

--select *from CongDan

select CccdNguoiThamGia, QuanHeVoiChuHo, HoTen from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where HoKhau.TrangThai = 1 and HoKhau.MaHK = 'HK02'
----select * from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS

----select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, NcCccd, NgcCccd, DiaChi, SDT, Email from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where CongDan.TrangThai = 1
--select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, DiaChi, SDT, Email from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where CongDan.TrangThai = 1

----select * 
----from Cnkh join (select HoTen as Hotenchong, NgaySinh as Ngaysinhchong, DanToc as Dantocchong, QuocTich as Quoctichchong, DiaChi as Noicutruchong,CccdChong as Giaytotuythanchong 
----				from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD 
----				join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS  join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK)Q 
----				on Cnkh.CccdChong = Q.Giaytotuythanchong join	(select HoTen as Hotenvo, NgaySinh as Ngaysinhvo, DanToc as Dantocvo, QuocTich as Quoctichvo, DiaChi as Noicutruvo,CccdVo as Giaytotuythanvo
----														from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD 
----														join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK)P on Cnkh.CccdVo = P.Giaytotuythanvo
----where Cnkh.CccdChong = '083303008072' or Cnkh.CccdVo = '083303008072'

----select MaLh, Lyhon.MaCnkh, HotenVo, P.CccdVo, HotenChong, Q.CccdChong, Lyhon.Noidk, Lyhon.Ngaydk, Lydo,  Lyhon.TrangThai
----from LyHon join Cnkh on Lyhon.MaCnkh = Cnkh.MaCnkh join (select HoTen as HotenChong, CccdChong
----														from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD)Q
----														on Cnkh.CccdChong = Q.CccdChong join (select HoTen as HotenVo, CccdVo
----																							from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD)P
----																							on Cnkh.CccdVo = P.CccdVo
----where Lyhon.TrangThai = 1

----select * from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK 

----update CongDan set TrangThai = 1 where cccd = '083303008061'

----select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, NcCccd, NgcCccd, DiaChi, SDT, Email from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where CongDan.TrangThai = 1

----select MaHK, CccdChuHo, HoTen as HotenChuHo, CccdNguoiThamGia, Hotennguoithan, QuanHeVoiChuHo, DiaChi from (select HoKhau.MaHK, DiaChi, CccdChuHo, CccdNguoiThamGia, HoTen as Hotennguoithan, QuanHeVoiChuHo from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD) T join CongDan on T.CccdChuHo = CongDan.CCCD WHERE MaHK IN (SELECT MaHK FROM QuanHe where QuanHe.TrangThai = 1)

----select MaHK, CccdChuHo, HoTen as HotenChuHo, CccdNguoiThamGia, Hotennguoithan, QuanHeVoiChuHo, DiaChi, TrangThai from (select HoKhau.MaHK, DiaChi, CccdChuHo, CccdNguoiThamGia, HoTen as Hotennguoithan, QuanHeVoiChuHo, HoKhau.TrangThai from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD) T join CongDan on T.CccdChuHo = CongDan.CCCD WHERE MaHK IN (SELECT MaHK FROM QuanHe where QuanHe.TrangThai = 1) and HoKhau.TrangThai = 1

----select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, NcCccd, NgcCccd, DiaChi, SDT, Email from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where CongDan.TrangThai = 1

----update Thue set SoCMT_CCCD = '083303002561' where Masothue = 'TH01'

--Select *from Thue join CongDan on Thue.SoCMT_CCCD = CongDan.CCCD

--select * from HoKhau join CongDan on HoKhau.CCCDChuHo = CongDan.C

--update QuanHe set TrangThai = 0 where cccd = ''
--insert into QuanHe (MaHK, CccdNguoiThamGia, QuanHeVoiChuHo, TrangThai) values ('HK01', '083303008061', N'Chủ hộ', 1)

--select HoTen, NgaySinh, GioiTinh, DanToc, QuocTich, DiaChi,Cccd, MaCnkh, datediff(year, NgaySinh, GETDATE()) as Tuoi from CongDan join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK left join (select MaCnkh, TrangThai, CccdChong, CccdVo from Cnkh where TrangThai = 1)Q on (CongDan.CCCD = Q.CccdChong or CongDan.CCCD = Q.CccdVo) 

--select datediff(year, NgaySinh, GETDATE()) as Tuoi from KhaiSinh

--update Cnkh set TrangThai = 0 where MaCnkh = 'KH02'

--select * from Cnkh where TrangThai = 1 and (CccdChong = '083303002561' or CccdVo = '083303002561')

--insert into Cnkh (CccdVo, CccdChong, Noidk, Ngaydk, TrangThai)
--values ('083303008072', '083303008061', N'Ủy ban nhân dân xã TTB', '2002-10-11', 1)

--select *from KhaiSinh
--select *, datediff(year, NgaySinh, GETDATE()) as Tuoi from KhaiSinh where KhaiSinh.TrangThai = 1

create table DanhGia 
(	
	CCCD nvarchar(20) references CongDan(CCCD),
	DanhGia nvarchar(200),
	Tongquan int,
	Thuantien int,
	Dedang int,
	Chinhxac int,
	Trucquan int
)

insert into DanhGia values ('083303008072', 'OK', '4', '3', '5', '3', '2')
--select * from DanhGia
--select AVG(Tongquan) as TrungBinh from DanhGia

--drop table DanhGia
--select GioiTinh, count(MaKS) from KhaiSinh group by GioiTinh
--select * from KhaiSinh

--select count(MaKS) as Soluong from KhaiSinh

--select 2*COUNT(MaCnkh) as SoLuong from Cnkh where TrangThai = '1'

--select 2*COUNT(MaLh) as SoLuong from Lyhon where TrangThai = '1'

--select * from DanhGia join (select CCCD as CCCDNguoiDanhGia, HoTen from CongDan)Q on DanhGia.CCCD = Q.CCCDNguoiDanhGia
--select * from HoKhau join CongDan on HoKhau.CCCDChuHo = CongDan.CCCD
--select * from HoKhau 
--update HoKhau set TrangThai = 0 where MaHK = 'HK06'
--select * from QuanHe
--Select *from Thue join CongDan on Thue.SoCMT_CCCD = CongDan.CCCD

--update Thue set TrangThai = 0 where SoCMT_CCCD = '083303008211'

--select datediff(year, NgaySinh, GETDATE()) as Tuoi, KhaiSinh.MaKS, GioiTinh from CongDan join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS where GioiTinh = 'Nữ'

--select count(MaKS) as SoLuong, GioiTinh from (select datediff(year, NgaySinh, GETDATE()) as Tuoi, KhaiSinh.MaKS, GioiTinh from CongDan join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS)Q where (GioiTinh = N'Nữ' and Tuoi between 18 and 56) or (GioiTinh = N'Nam' and Tuoi between 18 and 61) group by GioiTinh

--select sum(SoLuong) as Tong from (select count(MaKS) as SoLuong, GioiTinh from (select datediff(year, NgaySinh, GETDATE()) as Tuoi, KhaiSinh.MaKS, GioiTinh from CongDan join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS)Q where (GioiTinh = N'Nữ' and Tuoi between 18 and 56) or (GioiTinh = N'Nam' and Tuoi between 18 and 61) group by GioiTinh)P 
--select MaHK, DiaChi, CccdChuHo, HoTen as HotenChuHo, CccdNguoiThamGia, Hotennguoithan, QuanHeVoiChuHo from (select HoKhau.MaHK, DiaChi, CccdChuHo, CccdNguoiThamGia, HoTen as Hotennguoithan, QuanHeVoiChuHo from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where QuanHe.TrangThai = 1) T join CongDan on T.CccdChuHo = CongDan.CCCD where CccdNguoiThamGia = '083303008211'

--select MaHK, CccdChuHo, HoTen as HotenChuHo, CccdNguoiThamGia, Hotennguoithan, QuanHeVoiChuHo, DiaChi from (select HoKhau.MaHK, DiaChi, CccdChuHo, CccdNguoiThamGia, HoTen as Hotennguoithan, QuanHeVoiChuHo from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK  join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where QuanHe.TrangThai = 1) T join CongDan on T.CccdChuHo = CongDan.CCCD WHERE MaHK IN (SELECT MaHK FROM QuanHe WHERE QuanHe.TrangThai = 1 and CccdNguoiThamGia = '083303008211')

select * from QuanHe where CccdNguoiThamGia = '083303008211'
select * from KhaiSinh

select *from Cnkh join (select HoTen as Hotenchong, NgaySinh as Ngaysinhchong, DanToc as Dantocchong, QuocTich as Quoctichchong, DiaChi as Noicutruchong,CccdChong as Giaytotuythanchong from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS  join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1)Q on Cnkh.CccdChong = Q.Giaytotuythanchong join (select HoTen as Hotenvo, NgaySinh as Ngaysinhvo, DanToc as Dantocvo, QuocTich as Quoctichvo, DiaChi as Noicutruvo,CccdVo as Giaytotuythanvo from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1)P on Cnkh.CccdVo = P.Giaytotuythanvo where Cnkh.TrangThai = 1

select *from CongDan



