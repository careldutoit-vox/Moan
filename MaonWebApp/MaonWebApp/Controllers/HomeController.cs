using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Linq;
using System.Data;
using MaonWebApp.Models;

namespace MaonWebApp.Controllers
{
    [HandleError]
    public class HomeController : ApplicationController
    {
        
        private DataContext _MoanContext = new MoanLinqDataContext();
        private MoanLinqDataContext _moandatacontext = new MoanLinqDataContext();
        
        public ActionResult Index()
        {
            ViewData["Title"] = "Home Page";
            ViewData["Message"] = "Welcome to MOAN";
            ViewData["explain"] = "The site that you can use to complain about all those anoing clients";
            ViewData["content"] = from m in DataContext.Categories select m;
            return View();
        }

        public ActionResult About()
        {
            ViewData["Title"] = "About Page";
            ViewData["Message"] = "About us";
            return View();
        }

        //public ActionResult ViewNags()
        //{

        //    //ViewData["Heading"] = _MOANDBEntities.PostalCode.Name;
        //    //ViewData["Heading2"] = Nags.NagsID.ToString();
        //    return View(_MOANDBEntities.Nags.ToList());
        //}
        //public ActionResult Nags()
        //{
        //    ViewData["Title"] = "Nags Page";

        //    return View();
        //}


        public ActionResult ContactMe()
        {
            ViewData["Message"] = "Contact Me if you can!";
            ViewData["Title"] = "Contact Page";

            return View();
        }

        public ActionResult Links()
        {
            ViewData["Title"] = "Links Page";

            return View();
        }

        [Authorize]
        public ActionResult Blogs()
        {
           // ViewData["content"] = from c in _moandatacontext.Nags select c;
            ViewData["Title"] = "Blog Page";
            ViewData["content"] = from m in DataContext.Categories select m;
            
            return View();
        }

        public ActionResult Details(int id)
        {
            ViewData["Details"] = from m in DataContext.Categories
                                      where m.CatID == id
                                      select m.Nags;
            
            return View();
        }

        public ActionResult RoadRage()
        {
            ViewData["Title"] = "Road Rage Page";

            return View();
        }
        public ActionResult New(string id)
        {
            return View(id);
        }

        public string GetStatus()
        {
            return "Status OK at " + DateTime.Now.ToLongTimeString();
        }

        public string UpdateForm(string textBox1)
        {
            if (textBox1 != "Enter text")
            {
                return "You entered: \"" + textBox1.ToString() + "\" at " +
                    DateTime.Now.ToLongTimeString();
            }

            return String.Empty;
        }

    }
}
