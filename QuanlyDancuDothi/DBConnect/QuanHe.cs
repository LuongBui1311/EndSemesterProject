using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanlyDancuDothi.DBConnect
{
    public class QuanHe
    {
        private string cccdnguoithan;
        private string quanhe;
        private string mahk;
        private string hoten;
        public string Cccdnguoithan { get { return cccdnguoithan; } set { cccdnguoithan = value; } }
        public string MaHK { get { return mahk; } set { mahk = value; } }
        public string Quanhe { get { return quanhe; } set { quanhe = value; } }
        public string Hoten { get { return hoten; } set { hoten = value; } }
        public QuanHe(string cccdnguoithan, string quanhe, string mahk, string hoten)
        {
            this.cccdnguoithan = cccdnguoithan;
            this.quanhe = quanhe;
            this.mahk = mahk;
            this.hoten = hoten;
        }
    }
}
