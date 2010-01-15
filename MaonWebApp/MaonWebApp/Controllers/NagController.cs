using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using MaonWebApp.Models;

namespace MaonWebApp.Controllers
{
    public class NagController : ApplicationController
    {
        //private MOANEntities1 _MOANDBEntities = new MOANEntities1();
        //private MaonWebApp.Models.Nags Nags = new Nags();
        //
        // GET: /Nag/

        public ActionResult Index()
        {
            ViewData["Description"] = from m in DataContext.Nags select m;
            return View();
        }

        //
        // GET: /Nag/Details/5

        public ActionResult Details(int id)
        {
            return View(id);
        }

        //
        // GET: /Nag/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Nag/Create

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Nag/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Nag/Edit/5

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //public ActionResult ViewNags()
        //{

        //    ViewData["Heading"] = _MOANDBEntities.PostalCode.Name;
        //    ViewData["Heading2"] = Nags.NagsID.ToString();
        //    return View(_MOANDBEntities.Nags.ToList());
        //}
    }
}
