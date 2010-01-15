using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using System.Data.Linq;
using MaonWebApp.Models;

namespace MaonWebApp.Controllers
{
    //An abstract class is a class that must be implemented by a concrete class.
    //Because the Application controller is an abstract class, you cannot not invoke any methods defined in the class directly
    //If you attempt to invoke the Application class directly then you'll get a 
    //Resource Cannot Be Found error message.
    //http://www.asp.net/learn/mvc/tutorial-13-cs.aspx
    public abstract class ApplicationController : Controller
    {
        
        private MoanLinqDataContext _moandatacontext = new MoanLinqDataContext();
        //
        // GET: /Application/
        public MoanLinqDataContext DataContext
        {
            get { return _moandatacontext; }
        }

        public ApplicationController()
        {
            ViewData["content"] = from c in DataContext.Categories select c;
        }

    }
}
