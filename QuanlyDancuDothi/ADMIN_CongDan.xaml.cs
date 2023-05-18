using MaterialDesignThemes.Wpf;
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
    /// Interaction logic for ADMIN_CongDan.xaml
    /// </summary>
    public partial class ADMIN_CongDan : Window
    {
        ADMIN_CongDanDAO cdDao = new ADMIN_CongDanDAO();
        public ADMIN_CongDan()
        {
            InitializeComponent();
            btn_CongDan.Background = Brushes.MistyRose;
            //btn_CongDan.Foreground = Brushes.Salmon;
        }

        private void btn_TrangChu_Click(object sender, RoutedEventArgs e)
        {
            ADMIN_TrangChu trangChu = new ADMIN_TrangChu();
            trangChu.Show();
            Close();
        }

        private void btn_QuanLyDon_Click(object sender, RoutedEventArgs e)
        {
            ADMIN_QuanLyDon quanLyDon = new ADMIN_QuanLyDon();
            quanLyDon.Show();
            Close();
        }
        public bool IsDarkTheme { get; set; }
        private readonly PaletteHelper paletteHelper = new PaletteHelper();
        private void toggleTheme(object sender, RoutedEventArgs e)
        {
            ITheme theme = paletteHelper.GetTheme();

            if (IsDarkTheme = theme.GetBaseTheme() == BaseTheme.Dark)
            {
                IsDarkTheme = false;
                theme.SetBaseTheme(Theme.Light);
            }
            else
            {
                IsDarkTheme = true;
                theme.SetBaseTheme(Theme.Dark);
            }
            paletteHelper.SetTheme(theme);
        }

        private void btn_LogOut_Click(object sender, RoutedEventArgs e)
        {
            Login login = new Login();
            login.Show();
            Close();
        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        private void dtg_ThongTin_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinCongDan(dtg_ThongTin);
        }
        private void dtg_Thue_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinThue(dtg_Thue);
        }

        private void dtg_Tamtru_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinTamTru(dtg_Tamtru);
        }

        private void dtg_Tamvang_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinTamVang(dtg_Tamvang);
        }

        private void dtg_KhaiSinh_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinKhaiSinh(dtg_KhaiSinh);
        }

        private void dtg_ChungTu_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinChungTu(dtg_ChungTu);
        }

        private void dtg_Hokhau_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinHoKhau(dtg_Hokhau);
        }
        private void dtg_Cnkh_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinCNKH(dtg_Cnkh);
        }
        private void dtg_LyHon_Loaded(object sender, RoutedEventArgs e)
        {
            cdDao.HienThiThongTinLyHon(dtg_LyHon);
        }
        private void Searching()
        {
            string content = txt_tt_keyword.Text;
            if (content == "")
            {
                cdDao.HienThiThongTinCongDan(dtg_ThongTin);
                return;
            }
            cdDao.Searching(dtg_ThongTin, content);
        }
        private void dtg_ThongTin_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_ThongTin.SelectedItem;
            if (rowView != null)
            {
                txt_tt_cccd.Text = rowView["CCCD"].ToString();
                txt_tt_dantoc.Text = rowView["DanToc"].ToString();
                txt_tt_diachi.Text = rowView["DiaChi"].ToString();
                txt_tt_email.Text = rowView["Email"].ToString();
                txt_tt_gioitinh.Text = rowView["GioiTinh"].ToString();
                txt_tt_hoten.Text = rowView["HoTen"].ToString();
                txt_tt_noisinh.Text = rowView["NoiSinh"].ToString();
                txt_tt_quequan.Text = rowView["QueQuan"].ToString();
                txt_tt_quoctich.Text = rowView["QuocTich"].ToString();
                txt_tt_sdt.Text = rowView["Sdt"].ToString();
                dtp_tt_ngaysinh.Text = rowView["NgaySinh"].ToString();
                txt_tt_ncCccd.Text = rowView["NcCccd"].ToString();
                dtp_tt_ngcCccd.Text = rowView["NgcCccd"].ToString();
                txt_tt_maks.Text = rowView["Maks"].ToString();
            }
        }

        private void dtg_Thue_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Thue.SelectedItem;
            if (rowView != null)
            {
                txt_thue_masothue.Text = rowView["Masothue"].ToString();
                txt_thue_nguoinopthue.Text = rowView["HoTen"].ToString();
                txt_thue_coquanthue.Text = rowView["Coquanthue"].ToString();
                txt_thue_cccd.Text = rowView["SoCMT_CCCD"].ToString();
                dtp_thue_ngaythaydoi.Text = rowView["Ngaythaydoithongtingannhat"].ToString();
            }
        }

        private void dtg_KhaiSinh_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_KhaiSinh.SelectedItem;

            if (rowView != null)
            {
                txt_khaisinh_maks.Text = rowView["MaKS"].ToString();
                txt_khaisinh_hoten.Text = rowView["HoTenKS"].ToString();
                txt_khaisinh_gioitinh.Text = rowView["GioiTinh"].ToString();
                dtp_khaisinh_ngaysinh.Text = rowView["NgaySinh"].ToString();
                txt_khaisinh_noisinh.Text = rowView["NoiSinh"].ToString();
                txt_khaisinh_dantoc.Text = rowView["DanToc"].ToString();
                txt_khaisinh_quoctich.Text = rowView["QuocTich"].ToString();
                txt_khaisinh_quequan.Text = rowView["QueQuan"].ToString();
                txt_khaisinh_cha.Text = rowView["Cha"].ToString();
                txt_khaisinh_me.Text = rowView["Me"].ToString();
                txt_khaisinh_ngkhaisinh.Text = rowView["NguoiKhaiSinh"].ToString();
                txt_khaisinh_quanhe.Text = rowView["QuanHe"].ToString();
                dtp_khaisinh_ngaydk.Text = rowView["NgayDK"].ToString();
                txt_khaisinh_noidk.Text = rowView["NoiDK"].ToString();

            }
        }

        private void dtg_ChungTu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_ChungTu.SelectedItem;

            if (rowView != null)
            {
                txt_chungtu_maso.Text = rowView["MaCT"].ToString();
                txt_chungtu_hoten.Text = rowView["HoTen"].ToString();
                txt_chungtu_cccd.Text = rowView["CCCD"].ToString();
                dtp_chungtu_ngaysinh.Text = rowView["NgaySinh"].ToString();
                dtp_chungtu_ngaymat.Text = rowView["NgayMat"].ToString();
                txt_chungtu_noimat.Text = rowView["NoiMat"].ToString();
                txt_chungtu_nguyennhan.Text = rowView["NguyenNhan"].ToString();

            }
        }

        private void dtg_Hokhau_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Hokhau.SelectedItem;

            if (rowView != null)
            {
                txt_hokhau_mahokhau.Text = rowView["MaHK"].ToString();
                txt_hokhau_cccdchuho.Text = rowView["CccdChuHo"].ToString();
                txt_hokhau_diachi.Text = rowView["DiaChi"].ToString();
                txt_hokhau_hotenchuho.Text = rowView["HoTen"].ToString();

            }
        }

        private void dtg_Tamtru_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Tamtru.SelectedItem;

            if (rowView != null)
            {
                txt_tamtru_MaTamTru.Text = rowView["Matt"].ToString();
                txt_tamtru_hoten.Text = rowView["HoTen"].ToString();
                txt_tamtru_noidk.Text = rowView["Noidk"].ToString();
                dtp_tamtru_ngaydk.Text = rowView["NgayDK"].ToString();
                dtp_tamtru_ngaysinh.Text = rowView["NgaySinh"].ToString();
                txt_tamtru_cccd.Text = rowView["Cccd"].ToString();
                txt_tamtru_noicapcccd.Text = rowView["Nccccd"].ToString();
                dtp_tamtru_ngaycapcccd.Text = rowView["NgcCccd"].ToString();
                dtp_tamtru_ngayden.Text = rowView["Ngayden"].ToString();
                dtp_tamtru_ngaydi.Text = rowView["Ngaydi"].ToString();
                txt_tamtru_lydo.Text = rowView["Lydo"].ToString();
            }
        }
        private void dtg_Tamvang_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Tamvang.SelectedItem;

            if (rowView != null)
            {
                txt_tamvang_matamvang.Text = rowView["MaTV"].ToString();
                dtp_tamvang_ngaydk.Text = rowView["Ngaydk"].ToString();
                txt_tamvang_noichuyendi.Text = rowView["NCdi"].ToString();
                txt_tamvang_noichuyenden.Text = rowView["NCden"].ToString();
                txt_tamvang_hoten.Text = rowView["HoTen"].ToString();
                dtp_tamvang_ngaysinh.Text = rowView["NgaySinh"].ToString();
                txt_tamvang_cmnd.Text = rowView["CCCD"].ToString();
                txt_tamvang_noicapcmnd.Text = rowView["NcCccd"].ToString();
                dtp_tamvang_ngaycapcmnd.Text = rowView["NgcCccd"].ToString();
                dtp_tamvang_ngaydi.Text = rowView["Ngaydi"].ToString();
                dtp_tamvang_ngayve.Text = rowView["Ngayve"].ToString();
                txt_tamvang_lydo.Text = rowView["Lydo"].ToString();
            }
        }
        private void dtg_Cnkh_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_Cnkh.SelectedItem;

            if (rowView != null)
            {
                txt_kethon_makh.Text = rowView["MaCnkh"].ToString();
                txt_kethon_hotenvo.Text = rowView["Hotenvo"].ToString();
                dtp_kethon_ngaysinhvo.Text = rowView["Ngaysinhvo"].ToString();
                txt_kethon_dantocvo.Text = rowView["Dantocvo"].ToString();
                txt_kethon_quoctichvo.Text = rowView["Quoctichvo"].ToString();
                txt_kethon_noicutruvo.Text = rowView["Noicutruvo"].ToString();
                txt_kethon_gtttvo.Text = rowView["Giaytotuythanvo"].ToString();
                txt_kethon_hotenchong.Text = rowView["Hotenchong"].ToString();
                dtp_kethon_ngaysinhchong.Text = rowView["Ngaysinhchong"].ToString();
                txt_kethon_dantocchong.Text = rowView["Dantocchong"].ToString();
                txt_kethon_quoctichchong.Text = rowView["Quoctichchong"].ToString();
                txt_kethon_noicutruchong.Text = rowView["Noicutruchong"].ToString();
                txt_kethon_gtttchong.Text = rowView["Giaytotuythanchong"].ToString();
                txt_kethon_noidkkethon.Text = rowView["Noidk"].ToString();
                dtp_kethon_ngaydkkethon.Text = rowView["Ngaydk"].ToString();
            }
        }
        private void dtg_LyHon_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataRowView rowView = (DataRowView)dtg_LyHon.SelectedItem;

            if (rowView != null)
            {
                txt_lyhon_malyhon.Text = rowView["Malyhon"].ToString();
                txt_lyhon_macnkh.Text = rowView["Makethon"].ToString();
                txt_lyhon_hotennguoinopdon.Text = rowView["Hotennguoinopdon"].ToString();
                txt_lyhon_cccdnguoinopdon.Text = rowView["CccdNguoiNopDon"].ToString();
                txt_lyhon_hotenvo.Text = rowView["HotenVo"].ToString();
                txt_lyhon_cccdvo.Text = rowView["CCCDVo"].ToString();
                txt_lyhon_hotenchong.Text = rowView["HotenChong"].ToString();
                txt_lyhon_cccdchong.Text = rowView["CCCDChong"].ToString();
                txt_lyhon_noidk.Text = rowView["Noidangky"].ToString();
                dtp_lyhon_ngaydk.Text = rowView["Ngaydangky"].ToString();
                txt_lyhon_lydo.Text = rowView["Lydo"].ToString();
            }
        }
        private void btn_Xoa_ThongTin_Click(object sender, RoutedEventArgs e)
        {
            CongDan congDan = new CongDan(txt_tt_hoten.Text, txt_tt_gioitinh.Text, txt_tt_cccd.Text, Convert.ToDateTime(dtp_tt_ngaysinh.Text.Trim()), txt_tt_noisinh.Text, txt_tt_quoctich.Text, txt_tt_dantoc.Text, txt_tt_quequan.Text, txt_tt_diachi.Text, txt_tt_ncCccd.Text, Convert.ToDateTime(dtp_tt_ngcCccd.Text.Trim()), txt_tt_sdt.Text, txt_tt_email.Text, txt_tt_maks.Text);
            cdDao.XoaThongTinCongDan(congDan);
            dtg_ThongTin_Loaded(sender, e);
        }
        private void btn_Xoa_KhaiSinh_Click(object sender, RoutedEventArgs e)
        {
            KhaiSinh khaiSinh = new KhaiSinh(txt_khaisinh_maks.Text, txt_khaisinh_hoten.Text, txt_khaisinh_gioitinh.Text, Convert.ToDateTime(dtp_khaisinh_ngaysinh.Text.Trim()), txt_khaisinh_noisinh.Text, txt_khaisinh_dantoc.Text, txt_khaisinh_quoctich.Text, txt_khaisinh_quequan.Text, txt_khaisinh_cha.Text, txt_khaisinh_me.Text, txt_khaisinh_ngkhaisinh.Text, txt_khaisinh_quanhe.Text, Convert.ToDateTime(dtp_khaisinh_ngaydk.Text.Trim()), txt_khaisinh_noidk.Text);
            cdDao.XoaThongTinKhaiSinh(khaiSinh);
            dtg_KhaiSinh_Loaded(sender, e);
        }
        private void btn_Xoa_ChungTu_Click(object sender, RoutedEventArgs e)
        {
            GiayChungTu giayChungTu = new GiayChungTu(txt_chungtu_maso.Text, txt_chungtu_hoten.Text, txt_chungtu_cccd.Text, Convert.ToDateTime(dtp_chungtu_ngaysinh.Text.Trim()), Convert.ToDateTime(dtp_chungtu_ngaymat.Text.Trim()), txt_chungtu_noimat.Text, txt_chungtu_nguyennhan.Text);
            cdDao.XoaThongTinChungTu(giayChungTu);
            dtg_ChungTu_Loaded(sender, e);
        }
        private void btn_Xoa_Thue_Click(object sender, RoutedEventArgs e)
        {
            Thue thue = new Thue(txt_thue_masothue.Text, txt_thue_coquanthue.Text, txt_thue_nguoinopthue.Text, txt_thue_cccd.Text, Convert.ToDateTime(dtp_thue_ngaythaydoi.Text.Trim()));
            cdDao.XoaThongTinThue(thue);
            dtg_Thue_Loaded(sender, e);
        }
        private void btn_Xoa_Hokhau_Click(object sender, RoutedEventArgs e)
        {
            HoKhau hoKhau = new HoKhau(txt_hokhau_mahokhau.Text, txt_hokhau_cccdchuho.Text, txt_hokhau_hotenchuho.Text, txt_hokhau_diachi.Text);
            cdDao.XoaThongTinHoKhau(hoKhau);
            dtg_Hokhau_Loaded(sender, e);
        }
        private void btn_Xoa_Tamtru_Click(object sender, RoutedEventArgs e)
        {
            TamTru tamTru = new TamTru(txt_tamtru_MaTamTru.Text, txt_tamtru_cccd.Text, Convert.ToDateTime(dtp_tamtru_ngaydk.Text.Trim()), txt_tamtru_noidk.Text, txt_tamtru_hoten.Text, Convert.ToDateTime(dtp_tamtru_ngaysinh.Text.Trim()), txt_tamtru_noicapcccd.Text, Convert.ToDateTime(dtp_tamtru_ngaycapcccd.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngayden.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngaydi.Text.Trim()), txt_tamtru_lydo.Text);
            cdDao.XoaThongTinTamTru(tamTru);
            dtg_Tamtru_Loaded(sender, e);
        }
        private void btn_Xoa_Tamvang_Click(object sender, RoutedEventArgs e)
        {
            TamVang tamVang = new TamVang(txt_tamvang_matamvang.Text, txt_tamvang_cmnd.Text, Convert.ToDateTime(dtp_tamvang_ngaydk.Text.Trim()), txt_tamvang_noichuyendi.Text, txt_tamvang_noichuyenden.Text, txt_tamvang_hoten.Text, Convert.ToDateTime(dtp_tamvang_ngaysinh.Text.Trim()), Convert.ToDateTime(dtp_tamvang_ngaycapcmnd.Text.Trim()), txt_tamvang_noicapcmnd.Text, Convert.ToDateTime(dtp_tamvang_ngaydi.Text.Trim()), Convert.ToDateTime(dtp_tamvang_ngayve.Text.Trim()), txt_tamvang_lydo.Text);
            cdDao.XoaThongTinTamVang(tamVang);
            dtg_Tamvang_Loaded(sender, e);
        }
        private void btn_Xoa_Cnkh_Click(object sender, RoutedEventArgs e)
        {
            Cnkh cnkh = new Cnkh (txt_kethon_makh.Text, txt_kethon_hotenvo.Text, txt_kethon_hotenchong.Text, Convert.ToDateTime(dtp_kethon_ngaysinhvo.Text.Trim()), Convert.ToDateTime(dtp_kethon_ngaysinhchong.Text.Trim()), txt_kethon_dantocvo.Text, txt_kethon_dantocchong.Text, txt_kethon_quoctichvo.Text, txt_kethon_quoctichchong.Text, txt_kethon_noicutruvo.Text, txt_kethon_noicutruchong.Text, txt_kethon_gtttvo.Text, txt_kethon_gtttchong.Text, txt_kethon_noidkkethon.Text, Convert.ToDateTime(dtp_kethon_ngaydkkethon.Text.Trim()));
            cdDao.XoaThongTinCNKH(cnkh);
            dtg_Cnkh_Loaded(sender, e);
        }
        private void btn_Xoa_Lyhon_Click(object sender, RoutedEventArgs e)
        {
            LyHon lyHon = new LyHon (txt_lyhon_malyhon.Text, txt_lyhon_macnkh.Text, txt_lyhon_cccdnguoinopdon.Text, txt_lyhon_hotennguoinopdon.Text, txt_lyhon_cccdvo.Text, txt_lyhon_hotenvo.Text, txt_lyhon_cccdchong.Text, txt_lyhon_hotenchong.Text, txt_lyhon_noidk.Text, Convert.ToDateTime(dtp_lyhon_ngaydk.Text.Trim()), txt_lyhon_lydo.Text);
            cdDao.XoaThongTinLyHon(lyHon);
            dtg_LyHon_Loaded(sender, e);
        }
        private void btn_TraCuu_ThongTin_Click(object sender, RoutedEventArgs e)
        {
            Searching();
        }

        private void txt_tt_keyword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                Searching();
            }
        }
        private void btn_Them_Tamtru_Click(object sender, RoutedEventArgs e)
        {
            TamTru tamTru = new TamTru(txt_tamtru_MaTamTru.Text, txt_tamtru_cccd.Text, Convert.ToDateTime(dtp_tamtru_ngaydk.Text.Trim()), txt_tamtru_noidk.Text, txt_tamtru_hoten.Text, Convert.ToDateTime(dtp_tamtru_ngaysinh.Text.Trim()), txt_tamtru_noicapcccd.Text, Convert.ToDateTime(dtp_tamtru_ngaycapcccd.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngayden.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngaydi.Text.Trim()), txt_tamtru_lydo.Text);
            cdDao.ThemThongTinTamTru(tamTru);
            dtg_Tamtru_Loaded(sender, e);
        }
        private void btn_Them_Tamvang_Click(object sender, RoutedEventArgs e)
        {
            TamVang tamVang = new TamVang(txt_tamvang_matamvang.Text, txt_tamvang_cmnd.Text, Convert.ToDateTime(dtp_tamvang_ngaydk.Text.Trim()), txt_tamvang_noichuyendi.Text, txt_tamvang_noichuyenden.Text, txt_tamvang_hoten.Text, Convert.ToDateTime(dtp_tamvang_ngaysinh.Text.Trim()), Convert.ToDateTime(dtp_tamvang_ngaycapcmnd.Text.Trim()), txt_tamvang_noicapcmnd.Text, Convert.ToDateTime(dtp_tamvang_ngaydi.Text.Trim()), Convert.ToDateTime(dtp_tamvang_ngayve.Text.Trim()), txt_tamvang_lydo.Text);
            cdDao.ThemThongTinTamVang(tamVang);
            dtg_Tamvang_Loaded(sender, e);
        }

        private void btn_Them_KhaiSinh_Click(object sender, RoutedEventArgs e)
        {
            KhaiSinh khaiSinh = new KhaiSinh(txt_khaisinh_maks.Text, txt_khaisinh_hoten.Text, txt_khaisinh_gioitinh.Text, Convert.ToDateTime(dtp_khaisinh_ngaysinh.Text.Trim()), txt_khaisinh_noisinh.Text, txt_khaisinh_dantoc.Text, txt_khaisinh_quoctich.Text, txt_khaisinh_quequan.Text, txt_khaisinh_cha.Text, txt_khaisinh_me.Text, txt_khaisinh_ngkhaisinh.Text, txt_khaisinh_quanhe.Text, Convert.ToDateTime(dtp_khaisinh_ngaydk.Text.Trim()), txt_khaisinh_noidk.Text);
            cdDao.ThemThongTinKhaiSinh(khaiSinh);
            dtg_KhaiSinh_Loaded(sender, e);
        }
        private void btn_Them_ChungTu_Click(object sender, RoutedEventArgs e)
        {
            GiayChungTu giayChungTu = new GiayChungTu(txt_chungtu_maso.Text, txt_chungtu_hoten.Text, txt_chungtu_cccd.Text, Convert.ToDateTime(dtp_chungtu_ngaysinh.Text.Trim()), Convert.ToDateTime(dtp_chungtu_ngaymat.Text.Trim()), txt_chungtu_noimat.Text, txt_chungtu_nguyennhan.Text);
            cdDao.ThemThongTinChungTu(giayChungTu);
            dtg_ChungTu_Loaded(sender, e);
        }

        private void btn_Them_Thue_Click(object sender, RoutedEventArgs e)
        {
            Thue thue = new Thue(txt_thue_masothue.Text, txt_thue_coquanthue.Text, txt_thue_nguoinopthue.Text, txt_thue_cccd.Text, Convert.ToDateTime(dtp_thue_ngaythaydoi.Text.Trim()));
            cdDao.ThemThongTinThue(thue);
            dtg_Thue_Loaded(sender, e);
        }

        private void btn_Sua_ThongTin1_Click(object sender, RoutedEventArgs e)
        {
            CongDan cd = new CongDan(txt_tt_hoten.Text, txt_tt_gioitinh.Text, txt_tt_cccd.Text, Convert.ToDateTime(dtp_tt_ngaysinh.Text.Trim()), txt_tt_noisinh.Text, txt_tt_quoctich.Text, txt_tt_dantoc.Text,
                txt_tt_quequan.Text, txt_tt_diachi.Text, txt_tt_ncCccd.Text, Convert.ToDateTime(dtp_tt_ngcCccd.Text.Trim()), txt_tt_sdt.Text, txt_tt_email.Text, txt_tt_maks.Text);
            cdDao.SuaThongTinCongDan(cd);
            dtg_ThongTin_Loaded(sender, e);
        }

        private void btn_Sua_KhaiSinh_Click(object sender, RoutedEventArgs e)
        {
            KhaiSinh ks = new KhaiSinh(txt_khaisinh_maks.Text, txt_khaisinh_hoten.Text, txt_khaisinh_gioitinh.Text, Convert.ToDateTime(dtp_khaisinh_ngaysinh.Text.Trim()), txt_khaisinh_noisinh.Text, txt_khaisinh_dantoc.Text, txt_khaisinh_quoctich.Text, txt_khaisinh_quequan.Text,
                txt_khaisinh_cha.Text, txt_khaisinh_me.Text, txt_khaisinh_ngkhaisinh.Text, txt_khaisinh_quanhe.Text, Convert.ToDateTime(dtp_khaisinh_ngaydk.Text.Trim()), txt_khaisinh_noidk.Text);
            cdDao.SuaThongTinKhaiSinh(ks);
            dtg_KhaiSinh_Loaded(sender, e);
        }

        private void btn_Sua_ChungTu_Click(object sender, RoutedEventArgs e)
        {
            GiayChungTu ct = new GiayChungTu(txt_chungtu_maso.Text, txt_chungtu_hoten.Text, txt_chungtu_cccd.Text, Convert.ToDateTime(dtp_chungtu_ngaysinh.Text.Trim()), Convert.ToDateTime(dtp_chungtu_ngaymat.Text.Trim()), txt_chungtu_noimat.Text, txt_chungtu_nguyennhan.Text);
            cdDao.SuaThongTinChungTu(ct);
            dtg_ChungTu_Loaded(sender, e);
        }

        private void btn_Sua_Thue_Click(object sender, RoutedEventArgs e)
        {
            Thue thue = new Thue(txt_thue_masothue.Text, txt_thue_coquanthue.Text, txt_thue_nguoinopthue.Text, txt_thue_cccd.Text, Convert.ToDateTime(dtp_thue_ngaythaydoi.Text.Trim()));
            cdDao.SuaThongTinThue(thue);
            dtg_Thue_Loaded(sender, e);
        }

        private void btn_Sua_Hokhau_Click(object sender, RoutedEventArgs e)
        {
            HoKhau hk = new HoKhau(txt_hokhau_mahokhau.Text, txt_hokhau_cccdchuho.Text, txt_hokhau_hotenchuho.Text, txt_hokhau_diachi.Text);
            cdDao.SuaThongTinHoKhau(hk);
            dtg_Hokhau_Loaded(sender, e);
        }

        private void btn_Sua_Tamtru_Click(object sender, RoutedEventArgs e)
        {
            TamTru tt = new TamTru(txt_tamtru_MaTamTru.Text, txt_tamtru_cccd.Text, Convert.ToDateTime(dtp_tamtru_ngaydk.Text.Trim()), txt_tamtru_noidk.Text, txt_tamtru_hoten.Text, Convert.ToDateTime(dtp_tamtru_ngaysinh.Text.Trim()), txt_tamtru_noicapcccd.Text, Convert.ToDateTime(dtp_tamvang_ngaycapcmnd.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngayden.Text.Trim()), Convert.ToDateTime(dtp_tamtru_ngaydi.Text.Trim()), txt_tamtru_lydo.Text);
            cdDao.SuaThongTinTamTru(tt);
            dtg_Tamtru_Loaded(sender, e);
        }

        private void btn_Sua_Tamvang_Click(object sender, RoutedEventArgs e)
        {
            TamVang tv = new TamVang(txt_tamvang_matamvang.Text, txt_tamvang_cmnd.Text, Convert.ToDateTime(dtp_tamvang_ngaydk.Text.Trim()), txt_tamvang_noichuyendi.Text, txt_tamvang_noichuyenden.Text, txt_tamvang_hoten.Text, Convert.ToDateTime(dtp_tamvang_ngaysinh.Text.Trim()), Convert.ToDateTime(dtp_tamvang_ngaycapcmnd.Text.Trim()), txt_tamvang_noicapcmnd.Text, Convert.ToDateTime(dtp_tamvang_ngaydi.Text.Trim()), Convert.ToDateTime(dtp_tamvang_ngayve.Text.Trim()), txt_tamvang_lydo.Text);
            cdDao.SuaThongTinTamVang(tv);
            dtg_Tamvang_Loaded(sender, e);
        }

        private void btn_Sua_Cnkh1_Click(object sender, RoutedEventArgs e)
        {
            Cnkh kh = new Cnkh(txt_kethon_makh.Text, txt_kethon_hotenvo.Text, txt_kethon_hotenchong.Text, Convert.ToDateTime(dtp_kethon_ngaysinhvo.Text.Trim()), Convert.ToDateTime(dtp_kethon_ngaysinhchong.Text.Trim()), txt_kethon_dantocvo.Text, txt_kethon_dantocchong.Text, txt_kethon_quoctichvo.Text, txt_kethon_quoctichchong.Text, txt_kethon_noicutruvo.Text, txt_kethon_noicutruchong.Text, txt_kethon_gtttvo.Text, txt_kethon_gtttchong.Text, txt_kethon_noidkkethon.Text, Convert.ToDateTime(dtp_kethon_ngaydkkethon.Text.Trim()));
            cdDao.SuaThongTinCnkh(kh);
            dtg_Cnkh_Loaded(sender, e);
        }

        private void btn_Sua_Lyhon_Click(object sender, RoutedEventArgs e)
        {
            LyHon lh = new LyHon(txt_lyhon_malyhon.Text, txt_lyhon_macnkh.Text, txt_lyhon_cccdnguoinopdon.Text, txt_lyhon_hotennguoinopdon.Text, txt_lyhon_cccdvo.Text, txt_lyhon_hotenvo.Text, txt_lyhon_cccdchong.Text, txt_lyhon_hotenchong.Text, txt_lyhon_noidk.Text, Convert.ToDateTime(dtp_lyhon_ngaydk.Text.Trim()), txt_lyhon_lydo.Text);
            cdDao.SuaThongTinLyHon(lh);
            dtg_LyHon_Loaded(sender, e);
        }

        private void btn_Xem_Hokhau_Click(object sender, RoutedEventArgs e)
        {
            ADMIN_HoKhau hoKhau = new ADMIN_HoKhau();
            hoKhau.txt_hokhau_mahokhau.Text = txt_hokhau_mahokhau.Text;
            hoKhau.txt_hokhau_cccdchuho.Text = txt_hokhau_cccdchuho.Text;
            hoKhau.txt_hokhau_hotenchuho.Text = txt_hokhau_hotenchuho.Text;
            hoKhau.txt_hokhau_diachi.Text = txt_hokhau_diachi.Text;
            hoKhau.Show();
        }
        private void btn_DienTT_Vo_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = cdDao.HienThiThongTin(txt_kethon_gtttvo.Text);
            if (dataTable.Rows.Count > 0)
            {
                if (dataTable.Rows[0]["GioiTinh"].ToString() == "Nữ")
                    if (Convert.ToInt32(dataTable.Rows[0]["Tuoi"]) >= 18)
                        if (dataTable.Rows[0]["MaCnkh"].ToString() == "")
                        {
                            txt_kethon_dantocvo.Text = dataTable.Rows[0]["DanToc"].ToString().Trim();
                            txt_kethon_hotenvo.Text = dataTable.Rows[0]["Hoten"].ToString().Trim();
                            txt_kethon_noicutruvo.Text = dataTable.Rows[0]["DiaChi"].ToString().Trim();
                            txt_kethon_quoctichvo.Text = dataTable.Rows[0]["QuocTich"].ToString().Trim();
                            dtp_kethon_ngaysinhvo.Text = dataTable.Rows[0]["NgaySinh"].ToString().Trim();
                        }
                        else
                        {
                            MessageBox.Show("Người này đã kết hôn!");
                        }
                    else
                    {
                        MessageBox.Show("Người này chưa đủ tuổi kết hôn!");
                    }
                else
                {
                    MessageBox.Show("Giới tính người này không phù hợp!");
                }
            }
            else
            {
                MessageBox.Show("Người này không có trong hệ thống!");
            } 
        }

        private void btn_DienTT_Chong_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = cdDao.HienThiThongTin(txt_kethon_gtttchong.Text);
            if (dataTable.Rows.Count > 0)
            {
                if (dataTable.Rows[0]["GioiTinh"].ToString() == "Nam")
                    if (Convert.ToInt32(dataTable.Rows[0]["Tuoi"]) >= 20)
                        if (dataTable.Rows[0]["MaCnkh"].ToString() == "")
                        {
                            txt_kethon_dantocchong.Text = dataTable.Rows[0]["DanToc"].ToString().Trim();
                            txt_kethon_hotenchong.Text = dataTable.Rows[0]["Hoten"].ToString().Trim();
                            txt_kethon_noicutruchong.Text = dataTable.Rows[0]["DiaChi"].ToString().Trim();
                            txt_kethon_quoctichchong.Text = dataTable.Rows[0]["QuocTich"].ToString().Trim();
                            dtp_kethon_ngaysinhchong.Text = dataTable.Rows[0]["NgaySinh"].ToString().Trim();
                        } 
                        else
                        {
                            MessageBox.Show("Người này đã kết hôn!");
                        }
                    else
                    {
                        MessageBox.Show("Người này chưa đủ tuổi kết hôn!");
                    }
                else
                {
                    MessageBox.Show("Giới tính người này không phù hợp!");
                }
            }
            else
            {
                MessageBox.Show("Người này không có trong hệ thống!");
            }
        }

        private void btn_Them_Cnkh_Click(object sender, RoutedEventArgs e)
        {
            Cnkh cnkh = new Cnkh(txt_kethon_makh.Text, txt_kethon_hotenvo.Text, txt_kethon_hotenchong.Text, Convert.ToDateTime(dtp_kethon_ngaysinhvo.Text.Trim()), Convert.ToDateTime(dtp_kethon_ngaysinhchong.Text.Trim()), txt_kethon_dantocvo.Text, txt_kethon_dantocchong.Text, txt_kethon_quoctichvo.Text, txt_kethon_quoctichchong.Text, txt_kethon_noicutruvo.Text, txt_kethon_noicutruchong.Text, txt_kethon_gtttvo.Text, txt_kethon_gtttchong.Text, txt_kethon_noidkkethon.Text, Convert.ToDateTime(dtp_kethon_ngaydkkethon.Text.Trim()));
            cdDao.ThemThongTinKetHon(cnkh);
            dtg_Cnkh_Loaded(sender, e);
        }

        private void btn_DienTT_NguoiDK_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = cdDao.HienThiThongTinDonLyHon(txt_lyhon_cccdnguoinopdon.Text);
            if (dataTable.Rows.Count > 0)
            {
                txt_lyhon_hotennguoinopdon.Text = dataTable.Rows[0]["HoTenNguoiNopDon"].ToString().Trim();
                txt_lyhon_cccdvo.Text = dataTable.Rows[0]["CccdVo"].ToString().Trim();
                txt_lyhon_cccdchong.Text = dataTable.Rows[0]["CccdChong"].ToString().Trim();
                txt_lyhon_hotenchong.Text = dataTable.Rows[0]["HoTenChong"].ToString().Trim();
                txt_lyhon_hotenvo.Text = dataTable.Rows[0]["HoTenVo"].ToString().Trim();
                txt_lyhon_macnkh.Text = dataTable.Rows[0]["MaCnkh"].ToString().Trim();
            }
            else
            {
                MessageBox.Show("Người này chưa kết hôn!");
            }
        }

        private void btn_Them_Lyhon_Click(object sender, RoutedEventArgs e)
        {
            LyHon lyHon = new LyHon(txt_lyhon_malyhon.Text, txt_lyhon_macnkh.Text, txt_lyhon_cccdnguoinopdon.Text, txt_lyhon_hotennguoinopdon.Text, txt_lyhon_cccdvo.Text, txt_lyhon_hotenvo.Text, txt_lyhon_cccdchong.Text, txt_lyhon_hotenchong.Text, txt_lyhon_noidk.Text, Convert.ToDateTime(dtp_lyhon_ngaydk.Text.Trim()), txt_lyhon_lydo.Text);
            cdDao.ThemThongTinLyHon(lyHon);
            dtg_LyHon_Loaded(sender, e);
        }

        private void btn_DienTT_Khaisinh_Click(object sender, RoutedEventArgs e)
        {
            DataTable dataTable = cdDao.HienThiKhaiSinh(txt_tt_maks.Text);
            if (dataTable.Rows.Count > 0)
            {
                if (Convert.ToInt32(dataTable.Rows[0]["Tuoi"]) >= 14)
                {
                    txt_tt_hoten.Text = dataTable.Rows[0]["HoTenKS"].ToString().Trim();
                    txt_tt_dantoc.Text = dataTable.Rows[0]["DanToc"].ToString().Trim();
                    txt_tt_gioitinh.Text = dataTable.Rows[0]["GioiTinh"].ToString().Trim();
                    txt_tt_noisinh.Text = dataTable.Rows[0]["NoiSinh"].ToString().Trim();
                    txt_tt_quequan.Text = dataTable.Rows[0]["QueQuan"].ToString().Trim();
                    txt_tt_quoctich.Text = dataTable.Rows[0]["QuocTich"].ToString().Trim();
                    dtp_tt_ngaysinh.Text = dataTable.Rows[0]["NgaySinh"].ToString().Trim();
                }
                else
                {
                    MessageBox.Show("Người này chưa đủ tuổi cấp CCCD!");
                }
            }
            else
            {
                MessageBox.Show("Mã khai sinh không hợp lệ!");
            }
        }

        private void btn_Them_Hokhau_Click(object sender, RoutedEventArgs e)
        {
            HoKhau hk = new HoKhau(txt_hokhau_mahokhau.Text, txt_hokhau_cccdchuho.Text, txt_hokhau_hotenchuho.Text, txt_hokhau_diachi.Text);
            cdDao.ThemThongTinHoKhau(hk);
            dtg_Hokhau_Loaded(sender, e);
        }

        private void btn_danhgia_Click(object sender, RoutedEventArgs e)
        {
            ADMIN_DanhGia danhGia = new ADMIN_DanhGia();
            danhGia.Show();
            Close();
        }

        private void btn_Them_ThongTin_Click(object sender, RoutedEventArgs e)
        {
            CongDan congDan = new CongDan(txt_tt_hoten.Text, txt_tt_gioitinh.Text, txt_tt_cccd.Text, Convert.ToDateTime(dtp_tt_ngaysinh.Text.Trim()), txt_tt_noisinh.Text, txt_tt_quoctich.Text, txt_tt_dantoc.Text, txt_tt_quequan.Text, txt_tt_diachi.Text, txt_tt_ncCccd.Text, Convert.ToDateTime(dtp_tt_ngcCccd.Text.Trim()), txt_tt_sdt.Text, txt_tt_email.Text, txt_tt_maks.Text);
            cdDao.ThemThongTinCongDan(congDan);
            dtg_ThongTin_Loaded(sender, e);
        }
    }
}
