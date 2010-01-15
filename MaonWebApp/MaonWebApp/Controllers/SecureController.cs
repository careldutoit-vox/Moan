using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;

namespace MaonWebApp.Controllers
{
    public class SecureController : ApplicationController
    {
        //
        // GET: /Secure/

        
       [Authorize]
        public ActionResult index()
        {
            ViewData["Description"] = from m in DataContext.Categories select m;
           return View();
        }

       /// <summary>
       /// Show list of movies in a category
       /// </summary>
       public ActionResult Nags(Int64 id)
       {
           ViewData["Title"] = "Nags Page";
           ViewData["Desciption1"] = "The Nag page contains the entire nags of the client and user you can add to nags or create your own, but remember to use a category";

           ViewData["content"] = from m in DataContext.Categories
                                where m.CatID == id
                                select m;
           return View();
       }

    }
}
