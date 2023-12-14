using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.WebHost.ViewModels.HomePageViewModels
{
    public class HomeConcertViewModel
    {
        public int ConcertId { get; set; }
        public string ConcertName { get; set; }
        public string ArtistName { get; set; }
        public string ConcertImage { get; set; }
        public string Description { get; set; }


    }
}
