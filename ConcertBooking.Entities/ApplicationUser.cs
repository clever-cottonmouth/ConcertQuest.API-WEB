using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.Entities
{
    public class ApplicationUser : IdentityUser
    {
        public string? FirstName { get; set; }
        public string? Address { get; set; }
        public string? Pincode { get; set; }
        public string? Phone { get; set; }
    }
}
