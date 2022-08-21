using HealthyFood.SQL;
using HealthyFood.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Cryptography;
using System.Text;
using System.Net;

namespace HealthyFood.Controllers
{
  
    public class CustomerController : Controller
    {
        HealthyFoodEntities db = new HealthyFoodEntities();
        public ActionResult Success()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Register(CreateAccount user)
        {

            if (ModelState.IsValid)
            {
                var check = db.KHACHHANG.FirstOrDefault(s => s.TaiKhoan == user.TaiKhoan);
                if (check == null)
                {

                    KHACHHANG khachhang = new KHACHHANG();
                    khachhang.HoTen = user.HoTen;
                    khachhang.TaiKhoan = user.TaiKhoan;

                    khachhang.MatKhau = GetMD5(user.MatKhau);
  

                    db.KHACHHANG.Add(khachhang);
                    db.SaveChanges();
                    return RedirectToAction("Login", "Customer");
                }
                else
                {
                    ViewBag.error = "Tài khoản đã tồn tại";
                }

            }

            return View();
        }
        //Mã hóa mật khẩu cho người dùng
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;

        }


        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Login(Account user)
        {
            if (ModelState.IsValid)
            {


                var f_matkhau = GetMD5(user.MatKhau);
                var kh = db.KHACHHANG.Where(x => x.TaiKhoan == user.TaiKhoan && x.MatKhau == f_matkhau).FirstOrDefault();
                if (kh != null)
                {
                    //add session
                    Session["TAIKHOAN"] = kh;
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewBag.error = "Sai tài khoản hoặc mật khẩu";
                }
            }
            return View();
        }
    }
}
