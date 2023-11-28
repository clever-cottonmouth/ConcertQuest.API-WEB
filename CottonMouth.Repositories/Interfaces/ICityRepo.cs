using CottonMouth.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CottonMouth.Repositories.Interfaces
{
    public interface ICityRepo
    {
        IEnumerable<City> GetAll();
        City GetById(int id);
        void Save(City city);
        void Edit(City city);
        void RemoveData(City city);
    }
}
