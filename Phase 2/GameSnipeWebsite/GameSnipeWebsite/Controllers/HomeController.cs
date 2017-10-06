using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GameSnipeWebsite.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Welcome to Game Snipe! Here you will find the best deals and games in the market.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "We are Anonymoose. We live in forests and get scared easily. More than likely expect us while driving.";

            return View();
        }
    }
}