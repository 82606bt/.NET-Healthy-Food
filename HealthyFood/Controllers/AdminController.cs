using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.Mvc;
using HealthyFood.SQL;
using PagedList.Mvc;
using PagedList;
using HealthyFood.Models;
using System.Data.Entity;
namespace HealthyFood.Controllers
{
    public class AdminController: Controller
    {
        HealthyFoodEntities db = new HealthyFoodEntities();
        public ActionResult Index()
        {
            var user = db.KHACHHANG.Where(x => x.MaKH <= 1000000).ToList();
            
            ViewBag.Member = user.Count;

            var order = db.DONDATHANG.Where(x => x.MaDonHang <= 1000000).ToList();
            ViewBag.Order = order.Count;

            long sumMax = 10000000000;
            var sales = db.CHITIETDONTHANG.Where(x => x.Dongia<= sumMax).ToList();
            
            ViewBag.Sales = sales.Sum(x=>x.Dongia);
            ViewBag.Total =  string.Format("{0:#,##0}", ViewBag.Sales);

            var contact = db.CONTACT.Where(x => x.MaPH <= 1000000).ToList();
            ViewBag.Contact1 = contact.Count;
            return View("Index");
           

        }
        public ActionResult ViewContact()
        {
            var contact = db.CONTACT.Where(x => x.MaPH <= 1000000).ToList();

            ViewBag.Contact = contact;

            ViewBag.Contact1 = contact.Count;

            return View();

            
            
        }

        public ActionResult Product()
        {
            var data = db.SANPHAM.Where(x => x.DacTrung == true && x.MaNCC <= 100).ToList();
            ViewBag.SanPham = data;

            var contact = db.CONTACT.Where(x => x.MaPH <= 1000000).ToList();
            ViewBag.Contact1 = contact.Count;
            return View();
        }
        public ActionResult CreateProduct(SANPHAM item)
        {
            var nhacungcap = db.NHACUNGCAP.Where(x => x.MaNCC <= 100).ToList();
            ViewBag.NCC = nhacungcap;
            var contact = db.CONTACT.Where(x => x.MaPH <= 1000000).ToList();
            ViewBag.Contact1 = contact.Count;
            return View();
        }

        [HttpPost]
        public ActionResult CreateProduct(SANPHAM item, HttpPostedFileBase uploadImage)
        {
           

            if (ModelState.IsValid)
            {
                if (item.uploadImage != null)
                {
                    string filename = Path.GetFileNameWithoutExtension(item.uploadImage.FileName);

                    string extension = Path.GetExtension(item.uploadImage.FileName);

                    filename = filename + extension;
                    item.Anhbia = "/img/product/" + filename;

                    item.uploadImage.SaveAs(Path.Combine(Server.MapPath("/img/product/"), filename));

                    db.SANPHAM.Add(item);
                    db.SaveChanges();
                    return RedirectToAction("Product","Admin");
                }

            }
            return View(item);
        }
        [HttpGet]
        public ActionResult EditProduct(int id)
        {
            SANPHAM tam = new SANPHAM();
            tam = db.SANPHAM.Where(x => x.MaSanPham == id).FirstOrDefault<SANPHAM>();

            var contact = db.CONTACT.Where(x => x.MaPH <= 1000000).ToList();
            ViewBag.Contact1 = contact.Count;
            return View(tam);
        }
        [HttpPost]
        public ActionResult EditProduct(HttpPostedFileBase uploadImage, FormCollection fc)
        {
            string filename = Path.GetFileNameWithoutExtension(item.uploadImage.FileName);
      
            string extension = Path.GetExtension(item.uploadImage.FileName);

            filename = filename  + extension;
            
            item.Anhbia = "/img/product/" + filename;
            item.uploadImage.SaveAs(Path.Combine(Server.MapPath("/img/product/"), filename));

            SANPHAM temp = db.SANPHAM.FirstOrDefault(x => x.MaSanPham == item.MaSanPham);
            item.TenSanPham = temp.TenSanPham;
            item.Anhbia = temp.Anhbia;
            item.Mota = temp.Mota;
            item.Giaban = temp.Giaban;
            item.Soluongton = temp.Soluongton;
            item.DacTrung = temp.DacTrung;
            db.SaveChanges();
            return RedirectToAction("Product","Admin");
        }
        public ActionResult RemoveProduct(int id)
        {
            SANPHAM tam = new SANPHAM();
            tam = db.SANPHAM.Where(x => x.MaSanPham == id).FirstOrDefault<SANPHAM>();
            tam.DacTrung = false;
            db.SaveChanges();
            return RedirectToAction("Product","Admin");
        }


    }
}