using ConcertBooking.Entities;
using ConcertBooking.WebHost.Utility;
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

    public class PagedConcertViewModel
    {
        public List<ConcertViewModel> Concerts { get; set; }
        public PageInfo PageInfo { get; set; }

    }
}
