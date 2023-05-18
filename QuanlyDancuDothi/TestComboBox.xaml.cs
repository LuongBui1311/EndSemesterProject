using QuanlyDancuDothi.DBConnect;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for TestComboBox.xaml
    /// </summary>
    public partial class TestComboBox : Window
    {
        ComboBoxData comboBoxData = new ComboBoxData();
        public TestComboBox()
        {
            InitializeComponent();
            combobox_Tinh.ItemsSource = comboBoxData.TinhThanh();
        }

        private void combobox_Tinh_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combobox_Tinh.SelectedItem.ToString() == "Bình Dương")
            {
                combobox_Quan.ItemsSource = comboBoxData.QuanHuyenBinhDuong();
            }
            if (combobox_Tinh.SelectedItem.ToString() == "Đồng Nai")
            {
                combobox_Quan.ItemsSource = comboBoxData.QuanHuyenDongNai();
            }
            if (combobox_Tinh.SelectedItem.ToString() == "Hà Nội")
            {
                combobox_Quan.ItemsSource = comboBoxData.QuanHuyenHaNoi();
            }
            if (combobox_Tinh.SelectedItem.ToString() == "TP. Hồ Chí Minh")
            {
                combobox_Quan.ItemsSource = comboBoxData.QuanHuyenHCM();
            }
        }

        private void combobox_Quan_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (combobox_Quan.SelectedItem.ToString() == "Thủ Dầu Một")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaThuDauMot();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Bến Cát")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaBenCat();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Dĩ An")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaDiAn();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Thuận An")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaThuanAn();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Biên Hòa")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaBienHoa();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Long Khánh")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaLongKhanh();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Tân Phú")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaTanPhu();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Trảng Bom")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaTrangBom();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Ba Đình")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaBaDinh();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Hoàn Kiếm")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaHoanKiem();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Đống Đa")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaDongDa();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Cầu Giấy")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaCauGiay();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Quận 1")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaQuan1();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Quận 3")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaQuan3();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Thành phố Thủ Đức")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaThuDuc();
            }
            if (combobox_Quan.SelectedItem.ToString() == "Gò Vấp")
            {
                combobox_Xa.ItemsSource = comboBoxData.PhuongXaGoVap();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(combobox_Xa.SelectedItem.ToString() + ", " + combobox_Quan.SelectedItem.ToString() + ", " + combobox_Tinh.SelectedItem.ToString());
        }
    }
}
