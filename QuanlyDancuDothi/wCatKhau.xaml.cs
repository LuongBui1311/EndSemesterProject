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
    /// Interaction logic for wCatKhau.xaml
    /// </summary>
    public partial class wCatKhau : Window
    {
        ComboBoxData comboBoxData = new ComboBoxData();
        USER_QuanLyDonDAO qldDao = new USER_QuanLyDonDAO();
        public wCatKhau()
        {
            InitializeComponent();
            cmb_quanhe.ItemsSource = comboBoxData.QuanHe();
        }

        private void btn_DienTT_HoKhau_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = qldDao.HienThiThongTinHoKhau(txt_hokhau_mahokhau.Text);
            if (dataTable.Rows.Count > 0)
            {
                txt_hokhau_hotenchuho.Text = dataTable.Rows[0]["HoTen"].ToString();
                txt_hokhau_cccdchuho.Text = dataTable.Rows[0]["CccdChuHo"].ToString();
                txt_hokhau_diachi.Text = dataTable.Rows[0]["DiaChi"].ToString();
                qldDao.HienThiThongTinNguoiThamGia(dtg_Nguoithamgia, txt_hokhau_mahokhau.Text);
            }
            else
            {
                MessageBox.Show("Hộ khẩu không tồn tại!");
            }
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void btbn_catkhau_Click(object sender, RoutedEventArgs e)
        {
            QuanHe quanHe = new QuanHe(txt_hokhau_cccdnguoithamgia.Text, cmb_quanhe.SelectedItem.ToString(), txt_hokhau_mahokhau.Text, txt_hokhau_cccdnguoithamgia.Text);
            qldDao.CatKhau(quanHe);
            qldDao.HienThiThongTinNguoiThamGia(dtg_Nguoithamgia, txt_hokhau_mahokhau.Text);
        }

        private void dtg_Nguoithamgia_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Nguoithamgia.SelectedItem;
            if (rowView != null)
            {
                txt_hokhau_cccdnguoithamgia.Text = rowView["CccdNguoiThamGia"].ToString();
                txt_hokhau_hotennguoithamgia.Text = rowView["HoTen"].ToString();
                cmb_quanhe.SelectedItem = rowView["QuanHeVoiChuHo"].ToString();
            }
        }
    }
}
