using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using MaonWebApp.Models;
using System.Data;

namespace MaonWebApp.Controllers
{
    public class RoadRageController : ApplicationController
    {
        private MoanLinqDataContext _moandatacontext = new MoanLinqDataContext();
        //
        // GET: /RoadRage/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult RoadRage()
        {
            
            
            return View();

        }
        public ActionResult GridData(string sidx, string sord, int page, int rows)
        {
            var jsonData = new
            {
                total = 1, // we'll implement later 
                page = page,
                records = 3, // implement later 
                rows = new[]{
      new {id = 1, cell = new[] {"1", "-7", "Is this a good question?"}},
      new {id = 2, cell = new[] {"2", "15", "Is this a blatant ripoff?"}},
      new {id = 3, cell = new[] {"3", "23", "Why is the sky blue?"}}
    }
            };
            return Json(jsonData);
        }

    }
}
