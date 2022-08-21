using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthyFood.Models
{
    public class ProductModel
    {
        public int MaSanPham { set; get; }
        public string TenSanPham { set; get; }
        public decimal? Giaban { set; get; }
        public string Mota { set; get; }
        public string Anhbia { set; get; }
        public DateTime Ngaycapnhat { set; get; }
        public int Soluongton { set; get; }
        public int MaCD { set; get; }
        public int MaNCC { set; get; }
        public Boolean DaXoa { set; get; }
        public Boolean DacTrung { set; get; }
        public int Review { set; get; }
        public string TinhTrang{ set; get; }
        public string GioHang { set; get; }
        public string TrongLuong { set; get; }
        public int ThanhTien { get; set; }
        public int Soluong { get; set; }
    }
}