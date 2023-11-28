using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CottonMouth.Entities
{
    public class State
    {
        public int Id { get; set; }
        public string Name { get; set; } = "Default State";

        public int CountryId { get; set; }
        public Country Country { get; set; } = new();
        public ICollection<City> Cities { get; set; } = new HashSet<City>();

    }
}
