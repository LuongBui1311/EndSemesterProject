using QuanlyDancuDothi.DBConnect;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanlyDancuDothi
{
    /// <summary>
    /// Interaction logic for ADMIN_HoKhau.xaml
    /// </summary>
    public partial class ADMIN_HoKhau : Window
    {
        ADMIN_HoKhauDAO hkDao = new ADMIN_HoKhauDAO();
        public ADMIN_HoKhau()
        {
            InitializeComponent();
        }
        private void dtg_Nguoithamgia_Loaded(object sender, RoutedEventArgs e)
        {
            hkDao.HienThiChiTietHoKhau(dtg_Nguoithamgia, txt_hokhau_mahokhau.Text);
        }

        private void btn_Dong_Hokhau_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void dtg_Nguoithamgia_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Nguoithamgia.SelectedItem;
            if (rowView != null)
            {
                txt_hokhau_cccdnguoithamgia.Text = rowView["CccdNguoiThamGia"].ToString();
                txt_hokhau_hotennguoithamgia.Text = rowView["HoTen"].ToString();
                txt_hokhau_quanhevoichuho.Text = rowView["QuanHeVoiChuHo"].ToString();
            }
        }
        private void btn_CatKhau_Nguoithamgia_Click(object sender, RoutedEventArgs e)
        {
            QuanHe quanHe = new QuanHe(txt_hokhau_cccdnguoithamgia.Text, txt_hokhau_quanhevoichuho.Text, txt_hokhau_mahokhau.Text, txt_hokhau_hotennguoithamgia.Text);
            hkDao.CatKhau(quanHe);
            dtg_Nguoithamgia_Loaded(sender, e);
        }

        private void btn_Them_Nguoithamgia_Click(object sender, RoutedEventArgs e)
        {
            QuanHe quanHe = new QuanHe(txt_hokhau_cccdnguoithamgia.Text, txt_hokhau_quanhevoichuho.Text, txt_hokhau_mahokhau.Text, txt_hokhau_hotennguoithamgia.Text);
            hkDao.ThemNguoiThamGia(quanHe);
            dtg_Nguoithamgia_Loaded(sender, e);
        }

        private void btn_DienTT_HoKhau_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = hkDao.DienThongTin(txt_hokhau_cccdnguoithamgia.Text);
            if (dataTable.Rows.Count > 0)
            {
                txt_hokhau_hotennguoithamgia.Text = dataTable.Rows[0]["HoTen"].ToString().Trim();
            }
            else
            {
                MessageBox.Show("Người này không có trong hệ thống!");
            }
        }
    }
}
