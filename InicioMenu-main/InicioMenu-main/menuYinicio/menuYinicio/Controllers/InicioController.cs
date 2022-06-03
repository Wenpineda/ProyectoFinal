using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace menuYinicio.Controllers
{
    public class InicioController : Controller
    {
        // GET: Inicio
     
        public ActionResult inicio()
        {
            return View();
        }

        public ActionResult nosotros()
        {
            return View();
        }

        public ActionResult menu()
        {
            return View();
        }

        public ActionResult factura()
        {
            return View();
        }
    }
}