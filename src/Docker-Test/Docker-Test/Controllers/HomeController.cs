using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Docker_Test.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var db = new DockerTestDbEntities();
            var products = db.Products.ToList();

            return View(products);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}