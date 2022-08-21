using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HealthyFood.Models
{
    public class CreateAccount
    {
        public int MaKH { get; set; }
        [Required(ErrorMessage ="Yêu cầu nhập họ tên")]
        public string HoTen { get; set; }

        [Required(ErrorMessage = "Yêu cầu nhập tài khoản")]
        public string TaiKhoan { get; set; }

        [Required(ErrorMessage = "Yêu cầu nhập mât khẩu")]
        [StringLength(20,MinimumLength =5,ErrorMessage ="Mật khẩu ít nhất 5 ký t")]
        public string MatKhau { get; set; }

        [Required(ErrorMessage = "Yêu cầu nhập xác nhận mât khẩu")]
        [Compare("MatKhau", ErrorMessage = "Hai mật khẩu không khớp")]
        public string ConfirmPassword { get; set; }
    }
}
