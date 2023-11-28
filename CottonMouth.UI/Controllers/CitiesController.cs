using Microsoft.AspNetCore.Mvc;

namespace CottonMouth.UI.Controllers
{
    public class CitiesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
