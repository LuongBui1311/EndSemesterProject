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
    public class USER_QuanLyDonDAO
    {
        DBConnection dB = new DBConnection();
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
        public void ThemThongTinTamTru(TamTru tamTru)
        {
            string sqlStr1 = string.Format("update TamTru set TrangThai = 0 where CCCD = '{0}'", tamTru.Cccd);
            string sqlStr2 = string.Format("insert into Tamtru (CCCD, Ngaydk, Noidk, Ngayden, Ngaydi, Lydo, TrangThai) values ('{0}', '{1}', N'{2}', '{3}','{4}', N'{5}', 1)", tamTru.Cccd, tamTru.Ngaydk, tamTru.Noidk, tamTru.Ngayden, tamTru.Ngaydi, tamTru.Lydo);
            dB.Sql_Them_Xoa_Sua(sqlStr1);
            dB.Sql_Them_Xoa_Sua(sqlStr2);
        }
        public DataTable HienThiThongTinCongDan(string CCCD)
        {
            string sqlStr = string.Format("select HoTen, NgaySinh, GioiTinh, DanToc, QuocTich, DiaChi, Cccd, Nccccd, Ngccccd,MaCnkh, datediff(year, NgaySinh, GETDATE()) as Tuoi from CongDan join KhaiSinh on CongDan.MaKS = KhaiSinh.MaKS join QuanHe on CongDan.CCCD = QuanHe.CccdNguoiThamGia join HoKhau on QuanHe.MaHK = HoKhau.MaHK left join (select MaCnkh, TrangThai, CccdChong, CccdVo from Cnkh where TrangThai = 1)Q on(CongDan.CCCD = Q.CccdChong or CongDan.CCCD = Q.CccdVo) where Cccd = '{0}' and CongDan.TrangThai=1", CCCD);
            return dB.Sql_Select(sqlStr);
        }
        public void ThemThongTinTamVang(TamVang tamVang)
        {
            string sqlStr1 = string.Format("update TamVang set TrangThai = 0 where CCCD = '{0}'", tamVang.Cccd);
            string sqlStr2 = string.Format("insert into Tamvang (CCCD, Ngaydk, Ncdi, Ncden, Ngaydi, Ngayve, Lydo, TrangThai) values ('{0}', '{1}', N'{2}', N'{3}', '{4}','{5}', N'{6}', 1)", tamVang.Cccd, tamVang.Ngaydk, tamVang.Ncdi, tamVang.Ncden, tamVang.Ngaydi, tamVang.Ngayve, tamVang.Lydo);
            dB.Sql_Them_Xoa_Sua(sqlStr1);
            dB.Sql_Them_Xoa_Sua(sqlStr2);
        }
        public void ThemThongTinKhaiSinh(KhaiSinh khaiSinh)
        {
            string sqlStr = string.Format("insert into KhaiSinh(HoTenKS, GioiTinh, NgaySinh, NoiSinh, DanToc, QuocTich, QueQuan, Cha, Me, NguoiKhaiSinh,QuanHe, NgayDk, NoiDk, TrangThai) values (N'{0}', N'{1}', N'{2}', N'{3}', N'{4}', N'{5}', N'{6}', N'{7}', N'{8}', N'{9}', N'{10}', N'{11}', N'{12}', 1)", khaiSinh.HotenKS, khaiSinh.Gioitinh, khaiSinh.Ngaysinh, khaiSinh.Noisinh, khaiSinh.Dantoc, khaiSinh.Quoctich, khaiSinh.Quequan, khaiSinh.Cha, khaiSinh.Me, khaiSinh.Nguoikhaisinh, khaiSinh.Quanhe, khaiSinh.Ngaydk, khaiSinh.Noidk);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinChungTu(GiayChungTu giayChungTu)
        {
            string sqlStr1 = string.Format("update CongDan set TrangThai = 0 where CCCD = '{0}'", giayChungTu.Cccd);
            string sqlStr2 = string.Format("insert into GiayChungTu(CCCD, NgayMat, NoiMat, NguyenNhan, TrangThai) values ('{0}', '{1}', '{2}', '{3}', 1)", giayChungTu.Cccd, giayChungTu.Ngaymat, giayChungTu.Noimat, giayChungTu.Nguyennhan);
            dB.Sql_Them_Xoa_Sua(sqlStr1);
            dB.Sql_Them_Xoa_Sua(sqlStr2);
        }
        public void ThemThongTinThue(Thue thue)
        {
            string sqlStr1 = string.Format("update Thue set TrangThai = 0 where SoCMT_CCCD = '{0}'", thue.Socmt_cccd);
            string sqlStr2 = string.Format("insert into Thue (Coquanthue, SoCMT_CCCD, Ngaythaydoithongtingannhat, TrangThai) values (N'{0}', '{1}', '{2}', 1)", thue.Coquanthue, thue.Socmt_cccd, thue.Ngaythaydoithongtingannhat);
            dB.Sql_Them_Xoa_Sua(sqlStr1);
            dB.Sql_Them_Xoa_Sua(sqlStr2);
        }
        public void ThemThongTinKetHon(Cnkh cnkh)
        {
            string sqlStr = string.Format("insert into Cnkh (CccdVo, CccdChong, Noidk, Ngaydk, TrangThai) values ('{0}', '{1}', N'{2}', '{3}', 1)", cnkh.Cccdvo, cnkh.Cccdchong, cnkh.Noidk, cnkh.Ngaydk);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public DataTable HienThiThongTinChuHo (string CCCD)
        {
            string sqlStr = string.Format("select * from CongDan where CCCD = '{0}'", CCCD);
            return dB.Sql_Select(sqlStr);
        }
        public void ThemThongTinHoKhau(HoKhau hk)
        {
            int count = 0;
            DataTable dataTable = new DataTable();
            string sqlStr1 = string.Format("select * from QuanHe where CccdNguoiThamGia = '{0}'", hk.Cccdchuho);
            string sqlStr2 = string.Format("insert into HoKhau (DiaChi, CccdChuHo, TrangThai) values (N'{0}', '{1}', 1)", hk.Diachi, hk.Cccdchuho);
            dataTable = dB.Sql_Select(sqlStr1);
            if (dataTable.Rows.Count > 0)
            {
                for (int i = 0; i < dataTable.Rows.Count; i++)
                {
                    if (dataTable.Rows[i]["TrangThai"].ToString() == "1")
                    {
                        count++;
                    }
                } 
                if (count > 0)
                {
                    MessageBox.Show("Người này đang tồn tại trong hộ khẩu " + dataTable.Rows[dataTable.Rows.Count - 1]["MaHK"].ToString() + "! Vui lòng cắt khẩu!");
                }
                else
                {
                    dB.Sql_Them_Xoa_Sua(sqlStr2);
                    string sqlStr3 = string.Format("select MaHK, CccdChuHo from HoKhau where TrangThai = 1 and CccdChuHo = '{0}'", hk.Cccdchuho);
                    string sqlStr4 = string.Format("insert into QuanHe (MaHK, CccdNguoiThamGia, QuanHeVoiChuHo, TrangThai) values ('{0}', '{1}', N'Chủ hộ', 1)", dB.Sql_Select(sqlStr3).Rows[0]["MaHK"].ToString(), dB.Sql_Select(sqlStr3).Rows[0]["CccdChuHo"].ToString());
                    dB.Sql_Them_Xoa_Sua(sqlStr4);
                }
            }
            else
            {
                dB.Sql_Them_Xoa_Sua(sqlStr2);
                string sqlStr3 = string.Format("select MaHK, CccdChuHo from HoKhau where TrangThai = 1 and CccdChuHo = '{0}'", hk.Cccdchuho);
                string sqlStr4 = string.Format("insert into QuanHe (MaHK, CccdNguoiThamGia, QuanHeVoiChuHo, TrangThai) values ('{0}', '{1}', N'Chủ hộ', 1)", dB.Sql_Select(sqlStr3).Rows[0]["MaHK"].ToString(), dB.Sql_Select(sqlStr3).Rows[0]["CccdChuHo"].ToString());
                dB.Sql_Them_Xoa_Sua(sqlStr4);
            }
            
        }
        public DataTable HienThiThongTinHoKhau1(string CCCD)
        {
            string sqlStr = string.Format("select * from HoKhau HoKhau.TrangThai = 1 and CccdChuHo = '{0}'", CCCD);
            return dB.Sql_Select(sqlStr);
        }
        public DataTable HienThiThongTinHoKhau(string Mahk)
        {
            string sqlStr = string.Format("select * from HoKhau join CongDan on HoKhau.CCCDChuHo = CongDan.CCCD where HoKhau.TrangThai = 1 and MaHK = '{0}'", Mahk);
            return dB.Sql_Select(sqlStr);
        }
        public void HienThiThongTinNguoiThamGia (DataGrid dataGrid, string Mahk)
        {
            string sqlStr = string.Format("select * from QuanHe join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where QuanHe.TrangThai = 1 and MaHK = '{0}'", Mahk);
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void CatKhau(QuanHe quanHe)
        {
            string sqlStr = string.Format("update QuanHe set TrangThai = 0 where CccdNguoiThamGia = '{0}'", quanHe.Cccdnguoithan);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemThongTinNguoiThamGia (QuanHe quanHe)
        {
            int count = 0;
            DataTable dataTable = new DataTable();
            string sqlStr1 = string.Format("select * from QuanHe where CccdNguoiThamGia = '{0}'", quanHe.Cccdnguoithan);
            string sqlStr2 = string.Format("insert into QuanHe (MaHK, CccdNguoiThamGia, QuanHeVoiChuHo, TrangThai) values ('{0}', '{1}', N'{2}', 1)", quanHe.MaHK, quanHe.Cccdnguoithan, quanHe.Quanhe);
            string sqlStr3 = string.Format("update QuanHe set TrangThai = 1 where CccdNguoiThamGia = '{0}' and MaHK = '{1}'", quanHe.Cccdnguoithan, quanHe.MaHK);
            dataTable = dB.Sql_Select(sqlStr1);
            if (dataTable.Rows.Count > 0)
            {
                for (int i = 0; i < dataTable.Rows.Count; i++)
                {
                    if (dataTable.Rows[i]["MaHK"].ToString() == quanHe.MaHK)
                    {
                        if (dataTable.Rows[i]["TrangThai"].ToString() == "1")
                        {
                            MessageBox.Show("Người này đã ở trong hộ khẩu!");
                            count = -1;
                        }
                        if (dataTable.Rows[i]["TrangThai"].ToString() == "0")
                        {
                            dB.Sql_Them_Xoa_Sua(sqlStr3);
                            count = -1;
                        }
                    }
                    else
                    {
                        if (dataTable.Rows[0]["TrangThai"].ToString() == "1")
                        {
                            count++;
                        }
                        else
                        {
                            count = -1;
                        }
                    }
                }
                if (count > 0)
                {
                    MessageBox.Show("Người này đang tồn tại trong hộ khẩu " + dataTable.Rows[dataTable.Rows.Count - 1]["MaHK"].ToString() + "! Vui lòng cắt khẩu!");
                }
                if (count == 0)
                {
                    dB.Sql_Them_Xoa_Sua(sqlStr2);
                }
            }
            else
            {
                dB.Sql_Them_Xoa_Sua(sqlStr2);
            }
        }
    }
}
