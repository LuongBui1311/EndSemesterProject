using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using QuanlyDancuDothi.DBConnect;

namespace QuanlyDancuDothi.DBConnect
{
    public class ADMIN_CongDanDAO
    {
        DBConnection dB = new DBConnection();
        public void HienThiThongTinThue(DataGrid dataGrid)
        {
            string sqlStr = "Select *from Thue join CongDan on Thue.SoCMT_CCCD = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where Thue.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinTamTru(DataGrid dataGrid)
        {
            string sqlStr = "select *from Tamtru join CongDan on Tamtru.Cccd = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where TamTru.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinTamVang(DataGrid dataGrid)
        {
            string sqlStr = "select MaTV, TamVang.CCCD, TamVang.Ngaydk, Ncdi, Ncden, Ngaydi, Ngayve, Lydo, NcCccd, NgcCccd, HoTen, NgaySinh from Tamvang join CongDan on Tamvang.Cccd = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where TamVang.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinKhaiSinh(DataGrid dataGrid)
        {
            string sqlStr = "select *from KhaiSinh where KhaiSinh.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinChungTu(DataGrid dataGrid)
        {
            string sqlStr = "select MaCT, CongDan.CCCD, HoTen, NgaySinh, NgayMat, NoiMat, NguyenNhan from GiayChungTu join CongDan on GiayChungTu.CCCD = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS Where GiayChungTu.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinCongDan(DataGrid dataGrid)
        {
            string sqlStr = "select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, NcCccd, NgcCccd, DiaChi, SDT, Email, KhaiSinh.MaKS from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1 and CongDan.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinHoKhau(DataGrid dataGrid)
        {
            string sqlStr = "select * from HoKhau join CongDan on HoKhau.CCCDChuHo = CongDan.CCCD where HoKhau.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinCNKH(DataGrid dataGrid)
        {
            string sqlStr = "select *from Cnkh join (select HoTen as Hotenchong, NgaySinh as Ngaysinhchong, DanToc as Dantocchong, QuocTich as Quoctichchong, DiaChi as Noicutruchong,CccdChong as Giaytotuythanchong from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS  join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1)Q on Cnkh.CccdChong = Q.Giaytotuythanchong join (select HoTen as Hotenvo, NgaySinh as Ngaysinhvo, DanToc as Dantocvo, QuocTich as Quoctichvo, DiaChi as Noicutruvo,CccdVo as Giaytotuythanvo from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where QuanHe.TrangThai = 1)P on Cnkh.CccdVo = P.Giaytotuythanvo where Cnkh.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void HienThiThongTinLyHon(DataGrid dataGrid)
        {
            string sqlStr = "select Lyhon.MaLh as Malyhon, Lyhon.MaCnkh as Makethon, HotenVo, P.CccdVo as CCCDVo, HotenChong, Q.CccdChong as CCCDChong, Lyhon.Noidk as Noidangky, Lyhon.Ngaydk as Ngaydangky, Lydo, CccdNguoiNopDon, Hotennguoinopdon from LyHon join Cnkh on Lyhon.MaCnkh = Cnkh.MaCnkh join (select HoTen as HotenChong, CccdChong from Cnkh join CongDan on Cnkh.CccdChong = CongDan.CCCD)Q on Cnkh.CccdChong = Q.CccdChong join (select HoTen as HotenVo, CccdVo from Cnkh join CongDan on Cnkh.CccdVo = CongDan.CCCD)P on Cnkh.CccdVo = P.CccdVo join (select Malh, Hoten as Hotennguoinopdon from CongDan join Lyhon on CongDan.CCCD = Lyhon.CccdNguoiNopDon) T on T.MaLh = Lyhon.MaLh where Lyhon.TrangThai = 1";
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void Searching(DataGrid dataGrid, string content)
        {
            string sqlStr = string.Format("select HoTen, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, NcCccd, NgcCccd, DiaChi, SDT, Email from KhaiSinh join CongDan on KhaiSinh.MaKS = CongDan.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK where CongDan.TrangThai = 1 and N'{0}' in" +
                "(HoTen, GioiTinh, NoiSinh, DanToc, QuocTich, QueQuan, CCCD, DiaChi, SDT, Email)", content);
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void XoaThongTinCongDan(CongDan congDan)
        {
            string sqlStr1 = string.Format("update CongDan set TrangThai = 0 where cccd = '{0}'", congDan.Cccd);
            dB.Sql_Them_Xoa_Sua(sqlStr1);
        }
        public void XoaThongTinKhaiSinh(KhaiSinh khaiSinh)
        {
            string sqlStr = string.Format("update KhaiSinh set TrangThai = 0 where MaKS = '{0}'", khaiSinh.Maks);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinChungTu(GiayChungTu giayChungTu)
        {
            string sqlStr = string.Format("update GiayChungTu set TrangThai = 0 where MaCT = '{0}'", giayChungTu.Mact);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinThue(Thue thue)
        {
            string sqlStr = string.Format("update Thue set TrangThai = 0 where Masothue = '{0}'", thue.Masothue);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinHoKhau(HoKhau hoKhau)
        {
            string sqlStr = string.Format("update HoKhau set TrangThai = 0 where MaHK = '{0}'", hoKhau.Mahk);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinTamTru(TamTru tamTru)
        {
            string sqlStr = string.Format("update Tamtru set TrangThai = 0 where MaTT = '{0}'", tamTru.Matt);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinTamVang(TamVang tamVang)
        {
            string sqlStr = string.Format("update Tamvang set TrangThai = 0 where MaTV = '{0}'", tamVang.Matv);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinCNKH(Cnkh cnkh)
        {
            string sqlStr = string.Format("update Cnkh set TrangThai = 0 where MaCnkh = '{0}'", cnkh.Macnkh);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void XoaThongTinLyHon(LyHon lyHon)
        {
            string sqlStr = string.Format("update Lyhon set TrangThai = 0 where MaLh = '{0}'", lyHon.Malh);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinTamTru(TamTru tamTru)
        {
            string sqlStr = string.Format("insert into Tamtru (CCCD, Ngaydk, Noidk, Ngayden, Ngaydi, Lydo, TrangThai) values ('{0}', '{1}', N'{2}', '{3}','{4}', N'{5}', 1)", tamTru.Cccd, tamTru.Ngaydk, tamTru.Noidk, tamTru.Ngayden, tamTru.Ngaydi, tamTru.Lydo);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinTamVang(TamVang tamVang)
        {
            string sqlStr = string.Format("insert into Tamvang (CCCD, Ngaydk, Ncdi, Ncden, Ngaydi, Ngayve, Lydo, TrangThai) values ('{0}', '{1}', N'{2}', N'{3}', '{4}','{5}', N'{6}', 1)", tamVang.Cccd, tamVang.Ngaydk, tamVang.Ncdi, tamVang.Ncden, tamVang.Ngaydi,tamVang.Ngayve, tamVang.Lydo);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinKhaiSinh(KhaiSinh khaiSinh)
        {
            string sqlStr = string.Format("insert into KhaiSinh(HoTenKS, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, Cha, Me, NguoiKhaiSinh,QuanHe, NgayDk, NoiDk, TrangThai) values (N'{0}', '{1}', N'{2}', N'{3}', N'{4}', N'{5}', '{6}', '{7}', '{8}', N'{9}', '{10}', N'{11}', N'{12}', 1)", khaiSinh.HotenKS, khaiSinh.Gioitinh, khaiSinh.Ngaysinh, khaiSinh.Noisinh, khaiSinh.Dantoc, khaiSinh.Quoctich, khaiSinh.Quequan, khaiSinh.Cha, khaiSinh.Me, khaiSinh.Nguoikhaisinh, khaiSinh.Quanhe, khaiSinh.Ngaydk, khaiSinh.Noidk);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinChungTu(GiayChungTu giayChungTu)
        {
            string sqlStr = string.Format("insert into GiayChungTu(CCCD, NgayMat, NoiMat, NguyenNhan, TrangThai) values ('{0}', '{1}', '{2}', '{3}', 1)", giayChungTu.Cccd, giayChungTu.Ngaymat, giayChungTu.Noimat, giayChungTu.Nguyennhan);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinThue(Thue thue)
        {
            string sqlStr = string.Format("insert into Thue (Coquanthue, SoCMT_CCCD, Ngaythaydoithongtingannhat, TrangThai) values (N'{0}', '{1}', '{2}', 1)", thue.Coquanthue, thue.Socmt_cccd, thue.Ngaythaydoithongtingannhat);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinKhaiSinh(KhaiSinh ks)
        {
            string sqlStr = string.Format("update CongDan set Hoten = N'{0}' Where MaKS = '{14}'" + "update KhaiSinh set HoTenKS = N'{0}' Gioitinh = N'{1}', Ngaysinh = '{2}', Noisinh = N'{3}', Dantoc = N'{4}', Quoctich = N'{5}', Quequan = N'{6}', Cha = '{7}', Me = '{8}', Nguoikhaisinh = '{9}', Quanhe = N'{10}', Ngaydk = '{11}', Noidk = N'{12}' Where MaKS = '{13}'",
                ks.HotenKS, ks.Gioitinh, ks.Ngaysinh, ks.Noisinh, ks.Dantoc, ks.Quoctich, ks.Quequan, ks.Cha, ks.Me, ks.Nguoikhaisinh, ks.Quanhe, ks.Ngaydk, ks.Noidk, ks.Maks, ks.Maks);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinCongDan(CongDan cd)
        {
            string sqlStr = string.Format("update CongDan set HoTen = N'{0}',NcCccd = N'{7}', NgcCccd = '{8}', SDT = '{9}', Email = N'{10}' where CCCD = '{11}'" + "Update KhaiSinh set HoTenKS = N'{0}', Gioitinh = N'{1}', Ngaysinh = '{2}', Noisinh = N'{3}', Quoctich = N'{4}', Dantoc = N'{5}', Quequan = N'{6}' where MaKS = '{12}'",
                cd.Hoten, cd.Gioitinh, cd.Ngaysinh, cd.Noisinh, cd.Quoctich, cd.Dantoc, cd.Quequan, cd.Nccccd, cd.Ngccccd, cd.Sdt, cd.Email, cd.Cccd, cd.Maks);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinThue(Thue thue)
        {
            string sqlStr = string.Format("update Thue set Coquanthue = N'{0}', Socmt_cccd = '{1}', Ngaythaydoithongtingannhat = '{2}' Where Masothue = '{3}'", thue.Coquanthue, thue.Socmt_cccd, thue.Ngaythaydoithongtingannhat, thue.Masothue);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinTamTru(TamTru tt)
        {
            string sqlStr = string.Format("update TamTru set CCCD = '{0}', Ngaydk = '{1}', Noidk = N'{2}', Ngayden = '{3}', Ngaydi = '{4}', Lydo = N'{5}' where MaTT = '{6}'",
                tt.Cccd, tt.Ngaydk, tt.Noidk, tt.Ngayden, tt.Ngaydi, tt.Lydo, tt.Matt);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinTamVang(TamVang tv)
        {
            string sqlStr = string.Format("update TamVang set Cccd = '{0}', Ngaydk = '{1}', Ncdi = N'{2}', Ncden = N'{3}', Ngaydi = '{4}', Ngayve = '{5}', Lydo = N'{6}' where Matv = '{7}'",
                tv.Cccd, tv.Ngaydk, tv.Ncden, tv.Ncdi, tv.Ngaydi, tv.Ngayve, tv.Lydo, tv.Matv);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinCnkh(Cnkh kh)
        {
            string sqlStr = string.Format("update Cnkh set CccdVo = '{0}', CccdChong = '{1}', Noidk = N'{2}', Ngaydk = '{3}' where MaCnkh = '{4}'", kh.Cccdvo, kh.Cccdchong, kh.Noidk, kh.Ngaydk, kh.Macnkh);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinLyHon(LyHon lh)
        {
            string sqlStr = string.Format("update Lyhon set MaCnkh = '{0}', CccdNguoiNopDon = '{1}', Noidk = N'{2}', Ngaydk = '{3}', Lydo = N'{4}' where Malh = '{5}'",
                lh.Macnkh, lh.Cccdnguoinopdon, lh.Noidk, lh.Ngaydk, lh.Lydo, lh.Malh);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinHoKhau(HoKhau hk)
        {
            string sqlStr = string.Format("update HoKhau set DiaChi = N'{0}', CccdChuHo = '{1}' where MaHK = '{2}'", hk.Diachi, hk.Cccdchuho, hk.Mahk);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void SuaThongTinChungTu(GiayChungTu ct)
        {
            string sqlStr = string.Format("update GiayChungTu set CCCD = '{0}', NgayMat = '{1}', NoiMat = N'{2}', NguyenNhan = N'{3}' where MaCT = '{4}'",
                ct.Cccd, ct.Ngaymat, ct.Noimat, ct.Nguyennhan, ct.Mact);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public DataTable HienThiThongTin(string CCCD)
        {
            string sqlStr = string.Format("select HoTen, NgaySinh, GioiTinh, DanToc, QuocTich, DiaChi,Cccd, MaCnkh, datediff(year, NgaySinh, GETDATE()) as Tuoi from CongDan join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK left join (select MaCnkh, TrangThai, CccdChong, CccdVo from Cnkh where TrangThai = 1)Q on (CongDan.CCCD = Q.CccdChong or CongDan.CCCD = Q.CccdVo) where Cccd = '{0}'", CCCD);
            return dB.Sql_Select(sqlStr);
        }
        public void ThemThongTinKetHon(Cnkh cnkh)
        {
            string sqlStr = string.Format("insert into Cnkh (CccdVo, CccdChong, Noidk, Ngaydk, TrangThai) values ('{0}', '{1}', N'{2}', '{3}', 1)", cnkh.Cccdvo, cnkh.Cccdchong, cnkh.Noidk, cnkh.Ngaydk);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public DataTable HienThiThongTinDonLyHon(string CCCD)
        {
            string sqlStr = string.Format("SELECT Cnkh.*, Q.HoTenNguoiNopDon, Q.CCCDNguoiNopDon, P.HoTen as HoTenVo, T.HoTen as HoTenChong FROM Cnkh JOIN (SELECT HoTen as HoTenNguoiNopDon, CCCD as CCCDNguoiNopDon FROM CongDan WHERE CCCD = '{0}') as Q ON Cnkh.CccdVo = Q.CCCDNguoiNopDon OR Cnkh.CccdChong = Q.CCCDNguoiNopDon JOIN CongDan as P ON Cnkh.CccdVo = P.Cccd JOIN CongDan as T ON Cnkh.CccdChong = T.Cccd WHERE (Cnkh.CccdVo = '{0}' OR Cnkh.CccdChong = '{0}') AND Cnkh.TrangThai = 1;", CCCD);
            return dB.Sql_Select(sqlStr);
        }
        public void ThemThongTinLyHon(LyHon lyHon)
        {
            string sqlStr1 = string.Format("insert into Lyhon (MaCnkh, CccdNguoiNopDon, Noidk, Ngaydk, Lydo, TrangThai) values ('{0}', '{1}', N'{2}', '{3}', N'{4}', 1)", lyHon.Macnkh, lyHon.Cccdnguoinopdon, lyHon.Noidk, lyHon.Ngaydk, lyHon.Lydo);
            string sqlStr2 = string.Format("update Cnkh set TrangThai = 0 where MaCnkh = '{0}'", lyHon.Macnkh);
            dB.Sql_Them_Xoa_Sua(sqlStr1);
            dB.Sql_Them_Xoa_Sua(sqlStr2);
        }
        public DataTable HienThiKhaiSinh(string MaKS)
        {
            string sqlStr = string.Format("select *, datediff(year, NgaySinh, GETDATE()) as Tuoi from KhaiSinh where KhaiSinh.TrangThai = 1 and MaKS = '{0}'", MaKS);
            return dB.Sql_Select(sqlStr);
        }
        public void ThemThongTinHoKhau(HoKhau hk)
        {
            DataTable dataTable = new DataTable();
            string sqlStr1 = string.Format("select * from QuanHe where CccdNguoiThamGia = {0}", hk.Cccdchuho);
            string sqlStr2 = string.Format("insert into HoKhau (DiaChi, CccdChuHo, TrangThai) values (N'{0}', '{1}', 1)", hk.Diachi, hk.Cccdchuho);
            dataTable = dB.Sql_Select(sqlStr1);
            if (dataTable.Rows.Count > 0)
            {
                if (dataTable.Rows[0]["TrangThai"].ToString() == "1")
                {
                    MessageBox.Show("Người này đang tồn tại trong hộ khẩu " + dataTable.Rows[0]["MaHK"].ToString() + "! Vui lòng cắt khẩu!");
                }
                else
                {
                    dB.Sql_Them_Xoa_Sua(sqlStr2);
                }
            }
            else
            {
                dB.Sql_Them_Xoa_Sua(sqlStr2);
            }
        }
        public void ThemThongTinCongDan(CongDan congDan)
        {
            DataTable dataTable = new DataTable();
            string sqlStr1 = string.Format("Select * from CongDan where MaKS = '{0}'", congDan.Maks);
            string sqlStr2 = string.Format("update CongDan set TrangThai = 1 where CCCD = '{0}'", congDan.Maks);
            string sqlStr3 = string.Format("insert into CongDan(CCCD, HoTen, NcCccd, NgcCccd, MaKS, SDT, Email, TrangThai) values ('{0}',N'{1}', N'{2}', '{3}', '{4}', '{5}', '{6}', 1)", congDan.Cccd, congDan.Hoten, congDan.Nccccd, congDan.Ngccccd, congDan.Maks, congDan.Sdt, congDan.Email);
            dataTable = dB.Sql_Select(sqlStr1);
            if (dataTable.Rows.Count > 0)
            {
                if (Convert.ToInt32(dataTable.Rows[0]["TrangThai"]) == 1)
                {
                    MessageBox.Show("Người này đã được cấp CCCD!");
                }
                else
                {
                    dB.Sql_Them_Xoa_Sua(sqlStr2);
                }
            }
            else
            {
                dB.Sql_Them_Xoa_Sua(sqlStr3);
            }
        }
    }
}
