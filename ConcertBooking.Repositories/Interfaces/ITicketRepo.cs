using ConcertBooking.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConcertBooking.Repositories.Interfaces
{
    public interface ITicketRepo
    {
        Task<IEnumerable<int>> GetBookedTickets(int concertId);
    }
}
