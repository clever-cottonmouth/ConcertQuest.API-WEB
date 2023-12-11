using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.WebHost.ViewModels
{
    public class CreateArtistViewModel
    {
        public string Name { get; set; }
        public string Bio { get; set; }
        public IFormFile ImageUrl { get; set; }
    }
}
