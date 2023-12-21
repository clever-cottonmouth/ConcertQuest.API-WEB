using ConcertBooking.Repositories.Interfaces;
using ConcertBooking.WebHost.ViewModels.TicketsViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace ConcertBooking.WebHost.Controllers
{
    public class TicketsController : Controller
    {
        private readonly ITicketRepo _ticketRepo;

        public TicketsController(ITicketRepo ticketRepo)
        {
            _ticketRepo = ticketRepo;
        }

        [Authorize]
        public async Task<IActionResult> MyTickets()
        {
            var claimsIdentity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
            var userId = claim.Value;



            var bookings = await _ticketRepo.GetBookings(userId);
            List<BookingViewModel> vm = new List<BookingViewModel>();
            foreach (var booking in bookings)
            {
                vm.Add(
                    new BookingViewModel
                    {
                        BookingId = booking.BookingId,
                        BookingDate = booking.BookingDate,
                        ConcertName = booking.Concert.Name,
                        Tickets = booking.Tickets.Select(ticketVM => new TicketViewModel
                        {
                            SeatNumber = ticketVM.SeatNumber,
                        }).ToList()
                    });
            }

            return View(vm);
        }
    }
}
