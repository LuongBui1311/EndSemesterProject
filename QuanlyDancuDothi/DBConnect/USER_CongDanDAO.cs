using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace QuanlyDancuDothi.DBConnect
{
    public class USER_CongDanDAO
    { 
        DBConnection dB = new DBConnection();
        public DataTable HienThiThongTinThue(string username)
        {
            string sqlStr = string.Format("Select *from Thue join CongDan on Thue.SoCMT_CCCD = CongDan.CCCD Where SoCMT_CCCD = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinCongDan(string username)
        {
            string sqlStr = string.Format("select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, NcCccd, NgcCccd, DiaChi, SDT, Email, CongDan.MaKS from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK Where QuanHe.TrangThai = 1 and Cccd = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinTamTru(string username)
        {
            string sqlStr = string.Format("select * from Tamtru join CongDan on Tamtru.Cccd = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where Tamtru.Cccd = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinTamVang(string username)
        {
            string sqlStr = string.Format("select * from Tamvang join CongDan on Tamvang.CCCD = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where Tamvang.CCCD = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinCnkh(string username)
        {
            string sqlStr = string.Format("select * from Cnkh join (select HoTen as Hotenchong, NgaySinh as Ngaysinhchong, DanToc as Dantocchong, QuocTich as Quoctichchong, DiaChi as Noicutruchong, CccdChong as Giaytotuythanchong from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS  join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1)Q on Cnkh.CccdChong = Q.Giaytotuythanchong join (select HoTen as Hotenvo, NgaySinh as Ngaysinhvo, DanToc as Dantocvo, QuocTich as Quoctichvo, DiaChi as Noicutruvo,CccdVo as Giaytotuythanvo from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1)P on Cnkh.CccdVo = P.Giaytotuythanvo where Cnkh.TrangThai = 1 and (Giaytotuythanchong = '{0}' or Giaytotuythanvo = '{1}')", username, username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinKhaiSinh(string username)
        {
            string sqlStr = string.Format("select * from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS Where CongDan.CCCD = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinLyHon(string username)
        {
            string sqlStr = string.Format("select Lyhon.MaLh as Malyhon, Lyhon.MaCnkh as Makethon, HotenVo, P.CccdVo as CCCDVo, HotenChong, Q.CccdChong as CCCDChong, Lyhon.Noidk as Noidangky, Lyhon.Ngaydk as Ngaydangky, Lydo, CccdNguoiNopDon, Hotennguoinopdon from LyHon join Cnkh on Lyhon.MaCnkh = Cnkh.MaCnkh join (select HoTen as HotenChong, CccdChong from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD)Q on Cnkh.CccdChong = Q.CccdChong join (select HoTen as HotenVo, CccdVo from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD)P on Cnkh.CccdVo = P.CccdVo join (select Malh, Hoten as Hotennguoinopdon from CongDan join Lyhon on CongDan.CCCD = Lyhon.CccdNguoiNopDon) T on T.MaLh = Lyhon.MaLh where LyHon.TrangThai = 1 and (P.CccdVo ='{0}' or Q.CccdChong = '{1}')", username, username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinChungTu(string username)
        {
            string sqlStr = string.Format("select MaCT, GiayChungTu.CCCD, HoTen,NgaySinh, NgayMat, NoiMat, NguyenNhan from GiayChungTu join (select CCCD, NgaySinh, HoTen from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS) Q on GiayChungTu.CCCD = Q.CCCD Where GiayChungTu.CCCD = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinHoKhau(string username)
        {
            string sqlStr = string.Format("select MaHK, DiaChi, CccdChuHo, HoTen as HotenChuHo, CccdNguoiThamGia, Hotennguoithan, QuanHeVoiChuHo from (select HoKhau.MaHK, DiaChi, CccdChuHo, CccdNguoiThamGia, HoTen as Hotennguoithan, QuanHeVoiChuHo from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where QuanHe.TrangThai = 1) T join CongDan on T.CccdChuHo = CongDan.CCCD where CccdNguoiThamGia = '{0}'", username);
            return dB.Sql_Select(sqlStr);
        }
        public void HienThiThongTinHoKhau2(string username, DataGrid dataGrid)
        {
            string sqlStr = string.Format("select MaHK, CccdChuHo, HoTen as HotenChuHo, CccdNguoiThamGia, Hotennguoithan, QuanHeVoiChuHo, DiaChi from (select HoKhau.MaHK, DiaChi, CccdChuHo, CccdNguoiThamGia, HoTen as Hotennguoithan, QuanHeVoiChuHo from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK  join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where QuanHe.TrangThai = 1) T join CongDan on T.CccdChuHo = CongDan.CCCD WHERE MaHK IN (SELECT MaHK FROM QuanHe WHERE QuanHe.TrangThai = 1 and CccdNguoiThamGia = '{0}')", username);
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
    }
}
