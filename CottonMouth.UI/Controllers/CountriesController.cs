using Microsoft.AspNetCore.Mvc;

namespace CottonMouth.UI.Controllers
{
    public class CountriesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
