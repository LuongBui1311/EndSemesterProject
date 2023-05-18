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
    /// Interaction logic for wGiayKhaiSinh.xaml
    /// </summary>
    public partial class wGiayKhaiSinh : Window
    {
        USER_QuanLyDonDAO qldDao = new USER_QuanLyDonDAO();
        public wGiayKhaiSinh()
        {
            InitializeComponent();
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btn_Them_ThongTin_Click(object sender, RoutedEventArgs e)
        {
            KhaiSinh khaiSinh = new KhaiSinh(txt_khaisinh_maks.Text,txt_khaisinh_hoten.Text, txt_khaisinh_gioitinh.Text, Convert.ToDateTime(dtp_khaisinh_ngaysinh.Text.Trim()), txt_khaisinh_noisinh.Text, txt_khaisinh_dantoc.Text, txt_khaisinh_quoctich.Text, txt_khaisinh_quequan.Text, txt_khaisinh_cha.Text, txt_khaisinh_me.Text, txt_khaisinh_ngkhaisinh.Text, txt_khaisinh_quanhe.Text, Convert.ToDateTime(dtp_khaisinh_ngaydk.Text.Trim()), txt_khaisinh_noidk.Text);
            qldDao.ThemThongTinKhaiSinh(khaiSinh);
        }
    }
}
