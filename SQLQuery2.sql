
DROP TABLE DSDangKy
DROP TABLE DKKetHon
DROP TABLE DKTamTru
DROP TABLE DKTamVang
GO
CREATE TABLE DSDangKy(
	id int IDENTITY(1,1),
	sttdon int,
	LoaiDon int,
	TrangThai int,
	Account char(12),
	Primary Key(id)
)

CREATE Table DKKetHon (
	id int IDENTITY(1,1),
	LoaiDon int,
    hotenvo nvarchar(50),
    hotenchong nvarchar(50),
    ngaysinhvo nvarchar(50),
    ngaysinhchong nvarchar(50),
    dantocvo nvarchar(50),
    dantocchong nvarchar(50),
	quoctichvo nvarchar(50),
	quoctichchong nvarchar(50),
	noicutruvo nvarchar(50),
	noicutruchong nvarchar(50),
	giaytotuythanvo nvarchar(50),
	giaytotuythanchong nvarchar(50),
	noidk nvarchar(50),
	ngaydk nvarchar(50),

	Primary Key(id, LoaiDon)
)


CREATE TABLE DKTamTru(
	id int IDENTITY (1, 1),
	LoaiDon int,
	ngdk nvarchar(50),
	noidk nvarchar(50),
	hoten nvarchar(50),
	ngaysinh nvarchar(50),
	cccd char(12),
	ngccccd char(12),
	nccccd char(12),
	noidk2 nvarchar(50),
	diachitht nvarchar(50),
	diachitt nvarchar(50),
	ngayden nvarchar(50),
	ngaydi nvarchar(50),
	lydo nvarchar(50),
	
	Primary Key(id, LoaiDon)
)

CREATE TABLE DKTamVang(
	id int IDENTITY (1, 1),
	LoaiDon int,
    noichuyendi nvarchar(50),
    noichuyenden nvarchar(50),
    hoten nvarchar(50),
    ngaysinh nvarchar(50),
    cccd char(12),
    nccccd nvarchar(50),
    ngccccd nvarchar(50),
    dcthuongtru nvarchar(50),
    ncdi2 nvarchar(50),
    dcthuongtru2 nvarchar(50),
    dctamtru nvarchar(50),
    ngaydi nvarchar(50),
    ngayve nvarchar(50),
    lydo nvarchar(50),
)
Select * From DSDangKy
Select * From DKKetHon
Select * From DKTamVang


GO

--Insert Into DKKetHon(LoaiDon, hotenvo, hotenchong, ngaysinhvo, ngaysinhchong, dantocvo, dantocchong, quoctichvo, quoctichchong, noicutruvo, 
--noicutruchong, giaytotuythanvo, giaytotuythanchong, noidk, ngaydk) VALUES
--('KetHon', N'{0}', N'{1}', N'{2}', N'{3}', N'{4}', N'{5}', N'{6}', N'{7}', N'{8}', N'{9}', N'{10}', N'{11}', N'{12}', N'{13}')

--Insert Into DKTamTru(LoaiDon, ngdk, noidk, hoten, ngaysinh, cccd, ngccccd, nccccd, noidk2, diachitht, diachitt, ngayden, ngaydi, lydo) VALUES ('TamTru', N'{0}', N'{1}', N'{2}', N'{3}', N'{4}', N'{5}', N'{6}', N'{7}', N'{8}', N'{9}', N'{10}', N'{11}', N'{12}')

--Insert Into DKTamVang(LoaiDon, noichuyendi, noichuyenden, hoten, ngaysinh, cccd, nccccd, ngccccd, dcthuongtru, ncdi2, dcthuongtru2, dctamtru, ngaydi, ngayve, lydo) VALUES 
--('TamVang', N'{0}', N'{1}', N'{2}', N'{3}', N'{4}', N'{5}', N'{6}', N'{7}', N'{8}', N'{9}', N'{10}', N'{11}', N'{12}', N'{13}')

Select DSDangKy.id as Số_Thứ_Tự, hotenvo as Họ_Tên_Vợ, ngaysinhvo as Ngày_Sinh_Vợ, dantocvo as Dân_Tộc_Vợ, quoctichvo as Quốc_Tịch_Vợ, noicutruvo as Nơi_Cư_Trú_Vợ, giaytotuythanvo as Giấy_Tờ_Tùy_Thân_Vợ, hotenchong as Họ_Tên_Chồng, ngaysinhchong as Ngày_Sinh_Chồng, dantocchong as Dân_Tộc_Chồng, quoctichchong as Quốc_Tịch_Chồng, noicutruchong as Nơi_Cư_Trú_Chồng, giaytotuythanchong as Giấy_Tờ_Tùy_Thân_Chồng, noidk as Nơi_Đăng_Ký, ngaydk as Ngày_Đăng_Ký  From DSDangKy join DKKetHon on DSDangKy.sttdon = DKKetHon.id Where DSDangKy.sttdon = 1
--Select DSDangKy.id as Số_Thứ_Tự, hotenvo as Họ_Tên_Vợ, ngaysinhvo as Ngày_Sinh_Vợ, dantocvo as Dân_Tộc_Vợ, quoctichvo as Quốc_Tịch_Vợ, noicutruvo as Nơi_Cư_Trú_Vợ, giaytotuythanvo as Giấy_Tờ_Tùy_Thân_Vợ, hotenchong as Họ_Tên_Chồng, ngaysinhchong as Ngày_Sinh_Chồng, dantocchong as Dân_Tộc_Chồng, quoctichchong as Quốc_Tịch_Chồng, noicutruchong as Nơi_Cư_Trú_Chồng, giaytotuythanchong as Giấy_Tờ_Tùy_Thân_Chồng, noidk as Nơi_Đăng_Ký, ngaydk as Ngày_Đăng_Ký  From DSDangKy join DKKetHon on DSDangKy.sttdon = DKKetHon.id and DSDangKy.sttdon = {0}
Select * From DSDangKy join DKTamTru on DSDangKy.sttdon = DKTamTru.id Where DSDangKy.sttdon = 0

Select DSDangKy.id as Số_thứ_tự, ngdk as Ngày_đăng_ký, noidk as Nơi_đăng_ký, hoten as Họ_tên, ngaysinh as Ngày_sinh, cccd as Căn_cước_công_dân, ngccccd as Ngày_cấp, nccccd as Nơi_cấp, diachitht as Địa_chỉ_thường_trú, diachitt as Địa_chỉ_tạm_trú, ngayden as Ngày_đến, ngaydi as Ngày_đi, lydo as Lý_do From DSDangKy join DKTamTru on DSDangKy.sttdon = DKTamTru.id Where DSDangKy.sttdon = 0
--Select DSDangKy.id as Số_thứ_tự, ngdk as Ngày_đăng_ký, noidk as Nơi_đăng_ký, hoten as Họ_tên, ngaysinh as Ngày_sinh, cccd as Căn_cước_công_dân, ngccccd as Ngày_cấp, nccccd as Nơi_cấp, diachitht as Địa_chỉ_thường_trú, diachitt as Địa_chỉ_tạm_trú, ngayden as Ngày_đến, ngaydi as Ngày_đi, lydo as Lý_do From DSDangKy join DKTamTru on DSDangKy.sttdon = DKTamTru.id Where DSDangKy.sttdon = {0}
Select * From DSDangKy
Select * From DSDangKy join DKTamTru on DSDangKy.sttdon = DKTamTru.id

Select * From DSDangKy join DKTamVang on DSDangKy.sttdon = DKTamVang.id
Select DSDangKy.id as Số_thứ_tự, noichuyendi as Nơi_chuyển_đi, noichuyenden as Nơi_chuyển_đến, hoten as Họ_tên, ngaysinh as Ngày_sinh, cccd as Căn_cước_công_dân, nccccd as Nơi_cấp, ngccccd as Ngày_cấp, dcthuongtru as Địa_chỉ_thường_trú, ncdi2 as Nơi_chuyển_đi_2, dcthuongtru2 as Địa_chỉ_thường_trú_2, dctamtru as Địa_chỉ_tạm_trú, ngaydi as Ngày_đi, ngayve as Ngày_về, lydo as Lý_do From DSDangKy join DKTamVang on DSDangKy.sttdon = DKTamVang.id Where DSDangKy.id = 1

GO