using CottonMouth.Entities;
using CottonMouth.Repositories.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace CottonMouth.UI.Controllers
{
    
    public class CountriesController : Controller
    {
        private readonly ICountryRepo _countryRepo;

        public CountriesController(ICountryRepo countryRepo)
        {
            _countryRepo = countryRepo;
        }

        public IActionResult Index()
        {
            var countries = _countryRepo.GetAll();
            return View(countries);
           
        }

        [HttpGet]
        public IActionResult Create()
        {
            Country country = new Country();
            return View(country );
        }

        [HttpPost]
        public IActionResult Create(Country country)
        {
            return View();
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            return View();
        }

        [HttpPost]
        public IActionResult Edit(Country country)
        {
            return View(country);
        }

        [HttpGet]
        public IActionResult Delete(int id)
        {
            return View();
        }


    }
}
