using ConcertBooking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.WebHost.ViewModels
{
    public class ConcertViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public DateTime DateTime { get; set; }

        public string VenueName { get; set; }
  

        public string ArtistName { get; set; }
      
    }
}
