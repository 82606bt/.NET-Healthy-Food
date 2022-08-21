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
    public class HomeController : Controller
    {
        HealthyFoodEntities db = new HealthyFoodEntities();
        KHACHHANG khachhang = new KHACHHANG();
        public ActionResult Index()
        {

            var meat = db.SANPHAM.Where(x => x.DacTrung == true && x.MaNCC == 1).ToList();
            ViewBag.SanPham = meat;
            var vegetvegetable = db.SANPHAM.Where(x => x.DacTrung == true && x.MaNCC == 2).ToList();
            ViewBag.SanPham2 = vegetvegetable;

            var fruit = db.SANPHAM.Where(x => x.DacTrung == true && x.MaNCC == 8).ToList();
            ViewBag.SanPham3 = fruit;

            var newProduct = db.SANPHAM.Where(x => x.Review == 1).ToList();
            ViewBag.SanPham4 = newProduct;
            return View();

        }

        public ActionResult Product(int? page)
        {


            var meat = db.SANPHAM.Where(x => x.DacTrung == true && x.MaNCC == 1).ToList();
            ViewBag.SanPham2 = meat;


            var newProduct = db.SANPHAM.Where(x => x.Review == 1).ToList();
            ViewBag.SanPham = newProduct;

            if (page == null) page = 1;
            var dsproducts = (from l in db.SANPHAM select l).OrderBy(x => x.MaSanPham);
            int pageSize = 9;
            int pageNumber = (page ?? 1);
            return View(dsproducts.ToPagedList(pageNumber, pageSize));


        }

        public ActionResult productDetail(int id)
        {
            ViewBag.SanPham = db.SANPHAM.Where(x => x.DacTrung == true && x.MaSanPham == id && x.MaNCC <= 10).ToList();


            var relatedTo = db.SANPHAM.Where(x => x.DacTrung == true && x.MaNCC == 1).ToList();
            ViewBag.SanPham2 = relatedTo;
            return View();
        }

        [HttpGet]
        public ActionResult Search()
        {


            List<ChuDe> ds = Session["CHUDE"] as List<ChuDe>;
            foreach (var item in ds)
            {
                var sanpham = db.SANPHAM.Where(x => x.DacTrung == true && x.MaCD == item.MaCD).ToList();
                ViewBag.SP = sanpham;
            }
            return View();

        }
        [HttpPost]
        public ActionResult Search(ChuDe thamso)
        {
            var cd = db.CHUDE.Where(x => x.TenChuDe == thamso.TenChuDe).FirstOrDefault();
            List<ChuDe> ds = new List<ChuDe>();
            if (cd != null)
            {
                ChuDe chude = new ChuDe();
                chude.MaCD = cd.MaCD;
                chude.TenChuDe = cd.TenChuDe;
                ds.Add(chude);
                Session["CHUDE"] = ds;
                return RedirectToAction("Search");
            }
            else
            {
                return RedirectToAction("NotFound");
            }
        }
        public ActionResult NotFound()
        {
            return View();
        }
        public ActionResult Posts(int? page)
        {
            if (page == null) page = 1;
            var dsposts = (from l in db.BAIVIET select l).OrderBy(x => x.MaBV);
            int pageSize = 6;
            int pageNumber = (page ?? 1);
            return View(dsposts.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult postsDetails(int id)
        {
            ViewBag.BaiViet = db.BAIVIET.Where(x => x.DacTrung == true && x.MaBV == id).ToList();
            return View();
        }

        public ActionResult User()
        {
            var kh = Session["TAIKHOAN"];
            ViewBag.User = kh;
            return PartialView("User");
        }
        public ActionResult Logout()
        {
            Session["TAIKHOAN"] = null;
            return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public ActionResult Info(int id)
        {

            ViewBag.User = db.KHACHHANG.Where(x => x.MaKH == id).ToList();
            return View();

        }

        [HttpPost]
        public ActionResult Info(KHACHHANG item)
        {
            KHACHHANG kh = db.KHACHHANG.SingleOrDefault(x => x.MaKH == item.MaKH);
            kh.HoTen = item.HoTen;
            db.SaveChanges();
            return View();
        }
        [HttpGet]
        public ActionResult Contact()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Contact(PhanHoi thamso)
        {

            if (ModelState.IsValid)
            {

                CONTACT phanhoi = new CONTACT();
                phanhoi.HoTen = thamso.HoTen;
                phanhoi.Email = thamso.Email;
                phanhoi.Comment = thamso.Comment;


                db.CONTACT.Add(phanhoi);
                db.SaveChanges();
            }

            return View("ThankYou");
        }

    }
}