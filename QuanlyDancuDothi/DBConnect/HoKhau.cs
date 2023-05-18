using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanlyDancuDothi.DBConnect
{
    public class HoKhau
    {
        private string mahk;
        private string cccdchuho;
        private string hotenchuho;
        private string diachi;

        public string Mahk { get { return mahk; } set { mahk = value; } }
        public string Cccdchuho { get { return cccdchuho; } set { cccdchuho = value; } }
        public string Diachi { get { return diachi; } set { diachi = value; } }
        public string Hotenchuho { get { return hotenchuho; } set { hotenchuho = value; } }
        

        public HoKhau(string mahk, string cccdchuho, string hotenchuho, string diachi)
        {
            this.mahk = mahk;
            this.cccdchuho = cccdchuho;
            this.hotenchuho = hotenchuho;
            this.diachi = diachi;
        }
    }
}
