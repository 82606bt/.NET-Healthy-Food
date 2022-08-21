namespace HealthyFood.Models
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    public partial class User
    {
        public int MaKH { get; set; }
        public string HoTen { get; set; }


        public Nullable<System.DateTime> NgaySinh { get; set; }

 
        public string DiaChi { get; set; }

        public string Email { get; set; }
        public string DienThoai { get; set; }
 
    }
}