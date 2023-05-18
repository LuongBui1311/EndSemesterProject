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
    /// Interaction logic for wDonTamTru.xaml
    /// </summary>
    public partial class wDonTamTru : Window
    {
        USER_QuanLyDonDAO qldDao = new USER_QuanLyDonDAO();
        public wDonTamTru()
        {
            InitializeComponent();
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btn_Them_ThongTin_Click(object sender, RoutedEventArgs e)
        {
            TamTru tamTru = new TamTru(txt_tamtru_MaTamTru.Text, txt_tamtru_cccd.Text, Convert.ToDateTime(dtp_tamtru_ngaydk.Text.Trim()), txt_tamtru_noidk.Text, txt_tamtru_hoten.Text, Convert.ToDateTime(dtp_tamtru_ngaysinh.Text.Trim()), txt_tamtru_noicapcccd.Text, Convert.ToDateTime(dtp_tamtru_ngaycapcccd.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngayden.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngaydi.Text.Trim()), txt_tamtru_lydo.Text);
            qldDao.ThemThongTinTamTru(tamTru);
        }
        private void btn_DienTT_Tamtru_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = qldDao.HienThiThongTinCongDan(txt_tamtru_cccd.Text);

            if (dataTable.Rows.Count > 0)
            {
                txt_tamtru_hoten.Text = dataTable.Rows[0]["HoTen"].ToString().Trim();
                dtp_tamtru_ngaysinh.Text = dataTable.Rows[0]["NgaySinh"].ToString().Trim();
                txt_tamtru_noicapcccd.Text = dataTable.Rows[0]["NcCccd"].ToString().Trim();
                dtp_tamtru_ngaycapcccd.Text = dataTable.Rows[0]["NgcCccd"].ToString().Trim();
            }
            else
            {
                MessageBox.Show("Người này không tồn tại!");
            }
        }

    }
}
