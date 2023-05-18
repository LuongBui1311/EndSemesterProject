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
    public class ADMIN_HoKhauDAO
    {
        DBConnection dB = new DBConnection();
        public void HienThiChiTietHoKhau(DataGrid dataGrid, string mahk)
        {
            string sqlStr = string.Format("select CccdNguoiThamGia, QuanHeVoiChuHo, HoTen from HoKhau join QuanHe on HoKhau.MaHK = QuanHe.MaHK join CongDan on QuanHe.CccdNguoiThamGia = CongDan.CCCD where QuanHe.TrangThai = 1 and HoKhau.MaHK = '{0}'", mahk);
            dataGrid.ItemsSource = dB.Sql_Select(sqlStr).DefaultView;
        }
        public void CatKhau(QuanHe quanHe)
        {
            string sqlStr = string.Format("update QuanHe set TrangThai = 0 where CccdNguoiThamGia = '{0}' and MaHK = '{1}'", quanHe.Cccdnguoithan, quanHe.MaHK);
            dB.Sql_Them_Xoa_Sua(sqlStr);
        }
        public void ThemNguoiThamGia (QuanHe quanHe)
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
        public DataTable DienThongTin(string CCCD)
        {
            string sqlStr = string.Format("select * from CongDan where CCCD = '{0}'", CCCD);
            return dB.Sql_Select(sqlStr);
        }
    }
}
