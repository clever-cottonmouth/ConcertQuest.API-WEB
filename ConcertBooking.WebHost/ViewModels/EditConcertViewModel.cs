using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.WebHost.ViewModels
{
    public class EditConcertViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public IFormFile ChooseImage { get; set; }
        public string ImageUrl { get; set; }
        public DateTime DateTime { get; set; }
        public int VenueId { get; set; }
        public int ArtistId { get; set; }
    }
}
