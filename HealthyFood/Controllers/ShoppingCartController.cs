using HealthyFood.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HealthyFood.Models;
namespace HealthyFood.Controllers
{
    public class ShoppingCartController : Controller
    {
        HealthyFoodEntities db = new HealthyFoodEntities();
        public ActionResult ThemGioHang(int id)
        {
            // Lấy danh sách sản phảm trong giỏ hàng từ Session GIOHANG
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            // Nếu trong Session không có sản phẩm
            if (dssanpham == null)
            {
                dssanpham = new List<ProductModel>();
                Session["GioHang"] = dssanpham;
            }
            //Khởi tạo một sản phẩm
            var sanpham = new ProductModel();
            //Tìm trong danh sách sản phẩm có sản phẩm đó chưa
            var sp = dssanpham.Find(x => x.MaSanPham == id);
            //Nếu không có thì add vào giỏ hàng
            if (sp == null)
            {
                //Tìm trong Database sản phẩm có MASanPham giống với id truyền vào
                var tam = db.SANPHAM.Where(x => x.MaSanPham == id).FirstOrDefault();
                // Gán thông tin trong sản phẩm lấy được trong Database cho biến sanpham
                sanpham.MaSanPham = tam.MaSanPham;
                sanpham.TenSanPham = tam.TenSanPham;
                sanpham.Giaban = tam.Giaban;
                sanpham.Anhbia = tam.Anhbia;
                sanpham.ThanhTien = (int)tam.Giaban;

                sanpham.Soluong = 1;

                dssanpham.Add(sanpham);
            }
            else
            {
                sp.Soluong = sp.Soluong + 1;
                sp.ThanhTien = (int)sp.Giaban * sp.Soluong;
            }
            return RedirectToAction("Cart");
        }
        public ActionResult Cart()
        {
            ViewBag.TongTien = 0;
            ViewBag.ThanhToan = 0;
            // Lấy danh sách sản phẩm trong Session GIOHAng
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            //Đưa thông tin danh sách sản phâm vào ViewBag để truyền dữ liệu sang View Cart.cshtml
            ViewBag.DSSanPham = dssanpham;
            if (dssanpham != null)
            {
                foreach (var item in dssanpham)
                {
                    ViewBag.TongTien += (item.Giaban * item.Soluong);
                    ViewBag.ThanhToan += item.ThanhTien;

                }
            }
            return View();
        }
 
        public ActionResult GiamSoLuong(int id)
        {
            //Lấy danh sách sản phẩm trong giỏ hàng từ session GIOHANG
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            //Nếu trong Session không có sản phẩm
            if (dssanpham == null)
            {
                dssanpham = new List<ProductModel>();
                Session["GioHang"] = dssanpham;
            }
            //Khỏi tạo một sản phẩm
            var sanpham = new ProductModel();

            //Tìm trong dsssanpham có sản phẩm đó chưa
            var sp = dssanpham.Find(x => x.MaSanPham == id);
            sp.Soluong -= 1;
            sp.ThanhTien = (int)sp.Giaban * sp.Soluong;
            if (sp.Soluong <= 0 && sanpham != null)
            {
                dssanpham.RemoveAll(x => x.MaSanPham == id);
            }

            return RedirectToAction("Cart");
        }
        // Phần Giỏ hàng
        public ActionResult XoaGioHang(int id)
        {
            var dssanpham = Session["GioHang"] as List<ProductModel>;
            var sanpham = dssanpham.Find(x => x.MaSanPham == id);

            if (sanpham != null)
            {
                dssanpham.RemoveAll(x => x.MaSanPham == id);
            }
            return RedirectToAction("Cart");
        }

        [HttpPost]
        public ActionResult GiamGia(GiamGia sale)
        {
            var giamgia = db.GIAMGIA.Where(x => x.Code == sale.Code).FirstOrDefault();

            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            //Nếu trong Session không có sản phẩm
            if (dssanpham == null)
            {
                dssanpham = new List<ProductModel>();
                Session["GioHang"] = dssanpham;
            }
            //Khỏi tạo một sản phẩm
            var sanpham = new ProductModel();

            //Tìm trong dsssanpham có sản phẩm đó chưa
            var sp = dssanpham.Find(x => x.ThanhTien > 0);

            if (giamgia != null && sanpham != null)
            {
                sp.ThanhTien -= giamgia.Sale;
            }
            return RedirectToAction("Cart");
        }
        public ActionResult ViewCart()
        {
            ViewBag.SoSanPham = 0;
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            if (dssanpham != null)
            {
                ViewBag.SoSanPham = dssanpham.Count;
            }
            return PartialView("ViewCart");
        }
        public ActionResult ViewCartTotal()
        {
           
            ViewBag.ThanhToan = 0;
            ViewBag.Total = 0;
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            if (dssanpham != null)
            {
                foreach (var item in dssanpham)
                {
                    ViewBag.ThanhToan += item.ThanhTien;
                    ViewBag.Total = string.Format("{0:#,##0}", ViewBag.ThanhToan);
                }
            }
            return PartialView("ViewCartTotal");
        }

        public ActionResult CheckOut(FormCollection fc)
        {

            ViewBag.TongTien = 0;
            ViewBag.ThanhToan = 0;
            // Lấy danh sách sản phẩm trong Session GIOHAng
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            //Đưa thông tin danh sách sản phâm vào ViewBag để truyền dữ liệu sang View Cart.cshtml
            ViewBag.DSSanPham = dssanpham;
            if (dssanpham != null)
            {
                foreach (var item in dssanpham)
                {
                    ViewBag.TongTien += (item.Giaban * item.Soluong);
                    ViewBag.ThanhToan += item.ThanhTien;

                }
            }
            return View();
        }
        public ActionResult ProcessOrder(FormCollection fc)
        {
            List<ProductModel> dssanpham = Session["GioHang"] as List<ProductModel>;
            DONDATHANG order = new DONDATHANG();
            ViewBag.ThanhToan = 0;
            decimal tongTien = 0;
            if (dssanpham != null)
            {
                foreach (var item in dssanpham)
                {
                    ViewBag.ThanhToan += item.ThanhTien;
                    tongTien = ViewBag.ThanhToan;
                }
            }
            {
                order.Ngaydat = DateTime.Now;
                order.HoTen = fc["name"];
                order.DiaChi = fc["address"];
                order.DienThoai = fc["phone"];
                order.ThanhTien = tongTien;
                order.Description = fc["description"];

            };
            db.DONDATHANG.Add(order);
            db.SaveChanges();

            foreach(ProductModel product in dssanpham)
            {
                CHITIETDONTHANG chitiet = new CHITIETDONTHANG()
                {
                    MaDonHang = order.MaDonHang,
                    MaSanPham = product.MaSanPham,
                    Soluong = product.Soluong,
                    Dongia = product.ThanhTien,
                };
                db.CHITIETDONTHANG.Add(chitiet);
                db.SaveChanges();
            }
            Session.Remove("GioHang");
            return View("ThankYou");
        }
    }
}