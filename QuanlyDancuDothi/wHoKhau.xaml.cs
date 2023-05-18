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
    /// Interaction logic for wHoKhau.xaml
    /// </summary>
    public partial class wHoKhau : Window
    {
        ComboBoxData comboBoxData = new ComboBoxData();
        USER_QuanLyDonDAO qldDao = new USER_QuanLyDonDAO();
        public wHoKhau()
        {
            InitializeComponent();
            cmb_hokhau_tinhthanh.ItemsSource = comboBoxData.TinhThanh();
            txt_hokhau_cccdchuho.Text = Login.taikhoan;
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void cmb_hokhau_tinhthanh_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cmb_hokhau_tinhthanh.SelectedItem.ToString() == "Bình Dương")
            {
                cmb_hokhau_quanhuyen.ItemsSource = comboBoxData.QuanHuyenBinhDuong();
            }
            if (cmb_hokhau_tinhthanh.SelectedItem.ToString() == "Đồng Nai")
            {
                cmb_hokhau_quanhuyen.ItemsSource = comboBoxData.QuanHuyenDongNai();
            }
            if (cmb_hokhau_tinhthanh.SelectedItem.ToString() == "Hà Nội")
            {
                cmb_hokhau_quanhuyen.ItemsSource = comboBoxData.QuanHuyenHaNoi();
            }
            if (cmb_hokhau_tinhthanh.SelectedItem.ToString() == "TP. Hồ Chí Minh")
            {
                cmb_hokhau_quanhuyen.ItemsSource = comboBoxData.QuanHuyenHCM();
            }
        }

        private void cmb_hokhau_quanhuyen_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Thủ Dầu Một")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaThuDauMot();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Bến Cát")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaBenCat();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Dĩ An")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaDiAn();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Thuận An")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaThuanAn();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Biên Hòa")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaBienHoa();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Long Khánh")
            {   
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaLongKhanh();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Tân Phú")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaTanPhu();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Trảng Bom")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaTrangBom();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Ba Đình")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaBaDinh();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Hoàn Kiếm")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaHoanKiem();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Đống Đa")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaDongDa();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Cầu Giấy")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaCauGiay();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Quận 1")
            {   
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaQuan1();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Quận 3")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaQuan3();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Thành phố Thủ Đức")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaThuDuc();
            }
            if (cmb_hokhau_quanhuyen.SelectedItem.ToString() == "Gò Vấp")
            {
                cmb_hokhau_xaphuong.ItemsSource = comboBoxData.PhuongXaGoVap();
            }
        }

        private void btn_Them_ThongTin_Click(object sender, RoutedEventArgs e)
        {
            HoKhau hoKhau = new HoKhau(txt_hokhau_mahk.Text, txt_hokhau_cccdchuho.Text, txt_hokhau_hotenchuho.Text, txt_hokhau_sonha.Text + ", " + cmb_hokhau_xaphuong.SelectedItem.ToString() + ", " + cmb_hokhau_quanhuyen.SelectedItem.ToString() + ", " + cmb_hokhau_tinhthanh.SelectedItem.ToString());
            qldDao.ThemThongTinHoKhau(hoKhau);
            //txt_hokhau_cccdchuho.Text = "";
            //txt_hokhau_hotenchuho.Text = "";
            //txt_hokhau_sonha.Text = "";
            //cmb_hokhau_quanhuyen.SelectedItem = "";
            //cmb_hokhau_tinhthanh.SelectedItem = "";
            //cmb_hokhau_xaphuong.SelectedItem =  "";
        }

        private void btn_DienTT_HoKhau_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = qldDao.HienThiThongTinCongDan(txt_hokhau_cccdchuho.Text);
            if (dataTable.Rows.Count > 0)
            {
                txt_hokhau_hotenchuho.Text = dataTable.Rows[0]["HoTen"].ToString();
            }
            else
            {
                MessageBox.Show("Người này không tồn tại trong hệ thống!");
            }
        }
    }
}
