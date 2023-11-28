using CottonMouth.Entities;
using CottonMouth.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CottonMouth.Repositories.Implementations
{
    public class CityRepo : ICityRepo
    {
        private readonly ApplicationDbContext _context;

        public CityRepo(ApplicationDbContext context)
        {
            _context = context;
        }

        public void Edit(City city)
        {
            _context.Cities.Update(city);
            _context.SaveChanges();
        }

        public IEnumerable<City> GetAll()
        {
            var cities = _context.Cities.ToList();
            return cities;
        }

        public City GetById(int id)
        {
            var city = _context.Cities.Find(id);
            return city;
        }

        public void RemoveData(City city)
        {
            _context.Cities.Remove(city);
            _context.SaveChanges();
        }

        public void Save(City city)
        {
            _context.Cities.Add(city);
            _context.SaveChanges();
        }
    }
}
