using ConcertBooking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.WebHost.ViewModels
{
    public class CreateConcertViewModel
    {
       
        public string Name { get; set; }
        public string Description { get; set; }
        public IFormFile ImageUrl { get; set; }
        public DateTime DateTime { get; set; }
        public int VenueId { get; set; }
        public int ArtistId { get; set; }
      
    }
}
