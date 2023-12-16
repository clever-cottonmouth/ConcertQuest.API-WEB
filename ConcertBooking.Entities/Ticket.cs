using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.Entities
{
    public class Ticket
    {
        public int TicketId { get; set; }
        public int SeatNumber { get; set; }
        public bool IsBooked { get; set; }
        //public int ConcertId { get; set; }
        //public Concert Concert { get; set; }
        public int? BookingId { get; set; }
        public Booking Booking { get; set; }
    }
}
