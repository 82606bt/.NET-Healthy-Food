using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HealthyFood.Models
{
    public class Account
    {
        public int MaKH { get; set; }
        [Required(ErrorMessage ="Yêu cầu nhập tài khoản")]
        public string TaiKhoan { set; get; }

        [Required(ErrorMessage = "Yêu cầu nhập mât khẩu")]
        public string MatKhau { set; get; }
    }
}