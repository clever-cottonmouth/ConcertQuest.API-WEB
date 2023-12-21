using ConcertBooking.Entities;
using ConcertBooking.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.Repositories.Implementations
{
    public class TicketRepo : ITicketRepo
    {
        private readonly ApplicationDbContext _context;

        public TicketRepo(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<int>> GetBookedTickets(int id)
        {
            var bookedTickets = await _context.Tickets.Include(y => y.Booking).Where(t => t.Booking.ConcertId == id && t.IsBooked)
                .Select(t => t.SeatNumber).ToListAsync();
            return bookedTickets;

        }

        public async Task<IEnumerable<Booking>> GetBookings(string userId)
        {
            var bookings = await _context.Bookings.Where(x => x.UserId == userId)
                .Include(y => y.Tickets)
                .Include(z => z.Concert)
                .ToListAsync();
            return bookings;
        }
    }
}
