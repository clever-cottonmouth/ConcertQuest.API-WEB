using ConcertBooking.Entities;
using ConcertBooking.Repositories.Interfaces;
using ConcertBooking.WebHost.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace ConcertBooking.WebHost.Controllers
{
    public class ConcertsController : Controller
    {
        private readonly IConcertRepo _concertRepo;
        private readonly IVenueRepo _venueRepo;
        private readonly IArtistRepo _artistRepo;
        private readonly IUtilityRepo _utilityRepo;
        private readonly IBookingRepo _bookingRepo;
        private string containerName = "ConcertImage";

        public ConcertsController(IConcertRepo concertRepo, IVenueRepo venueRepo, IArtistRepo artistRepo, IUtilityRepo utilityRepo, IBookingRepo bookingRepo)
        {
            _concertRepo = concertRepo;
            _venueRepo = venueRepo;
            _artistRepo = artistRepo;
            _utilityRepo = utilityRepo;
            _bookingRepo = bookingRepo;
        }

        public async Task<IActionResult> Index(string sortOrder, string FilterText, int pageNumber = 1, int pageSize = 5, string searchText = null)
        {

            var vm = new List<ConcertViewModel>();

            ViewData["SortFilter"] = sortOrder;
            ViewData["IdSort"] = sortOrder == "Id_desc" ? "" : "Id_desc";
            ViewData["NameSort"] = sortOrder == "Name_desc" ? "Name_asc" : "Name_desc";
            var concerts = await _concertRepo.GetAll();

            if (searchText != null)
            {
                pageNumber = 1;
            }
            else
            {
                searchText = FilterText;
            }
            ViewData["filterData"] = searchText;

            switch (sortOrder)
            {
                case "Id_desc": concerts = concerts.OrderByDescending(x => x.Id).ToList(); break;
                case "Name_desc": concerts = concerts.OrderByDescending(x => x.Name).ToList(); break;
                case "Name_asc": concerts = concerts.OrderBy(x => x.Name).ToList(); break;
                default: concerts = concerts.OrderBy(x => x.Id).ToList(); break;
            }


            int totalItems = 0;

            if (!string.IsNullOrEmpty(searchText))
            {
                concerts = concerts.Where(x => x.Name.Contains(searchText));
            }


            totalItems = concerts.ToList().Count;
            concerts = concerts.Skip((pageNumber - 1) * pageSize).Take(pageSize).ToList();

            foreach (var concert in concerts)
            {
                vm.Add(new ConcertViewModel
                {
                    Id = concert.Id,
                    Name = concert.Name,
                    DateTime = concert.DateTime,
                    ArtistName = concert.Artist.Name,
                    VenueName = concert.Venue.Name,

                });
            }

            var pvm = new PagedConcertViewModel
            {
                Concerts = vm,
                PageInfo = new Utility.PageInfo
                {
                    PageNumber = pageNumber,
                    PageSize = pageSize,
                    TotalItems = totalItems,
                }
            };

            return View(pvm);
        }

        [HttpGet]
        public async Task<IActionResult> Create()
        {
            var artists = await _artistRepo.GetAll();
            var venues = await _venueRepo.GetAll();
            ViewBag.artistList = new SelectList(artists, "Id", "Name");
            ViewBag.VenuesList = new SelectList(venues, "Id", "Name");
            return View();

        }

        [HttpPost]
        public async Task<IActionResult> Create(CreateConcertViewModel vm)
        {
            var concert = new Concert
            {
                Name = vm.Name,
                Description = vm.Description,
                DateTime = vm.DateTime,
                VenueId = vm.VenueId,
                ArtistId = vm.ArtistId,
            };
            if (vm.ImageUrl != null)
            {
                concert.ImageUrl = await _utilityRepo.SaveImage(containerName, vm.ImageUrl);
            }
            await _concertRepo.Save(concert);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var concert = await _concertRepo.GetById(id);
            var artists = await _artistRepo.GetAll();
            var venues = await _venueRepo.GetAll();
            ViewBag.artistList = new SelectList(artists, "Id", "Name");
            ViewBag.VenuesList = new SelectList(venues, "Id", "Name");


            var vm = new EditConcertViewModel
            {
                Id = concert.Id,
                Name = concert.Name,
                ImageUrl = concert.ImageUrl,
                DateTime = concert.DateTime,
                Description = concert.Description,
                VenueId = concert.VenueId,
                ArtistId = concert.ArtistId,
            };
            return View(vm);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(EditConcertViewModel vm)
        {
            var concert = await _concertRepo.GetById(vm.Id);

            concert.Id = vm.Id;
            concert.Name = vm.Name;
            concert.Description = vm.Description;
            concert.DateTime = vm.DateTime;
            concert.ArtistId = vm.ArtistId;
            concert.VenueId = vm.VenueId;

            if (vm.ChooseImage != null)
            {
                concert.ImageUrl = await _utilityRepo.EditImage(containerName, vm.ChooseImage, concert.ImageUrl);
            }
            await _concertRepo.Edit(concert);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> Delete(int id)
        {
            var concert = await _concertRepo.GetById(id);
            await _concertRepo.RemoveData(concert);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> GetTickets(int id)
        {
            var bookings = await _bookingRepo.GetAll(id);
            var vm = bookings.Select(b => new DashboardViewModel
            {
                UserName = b.User.UserName,
                ConcertName = b.Concert.Name,
                SeatNumber = string.Join(",", b.Tickets.Select(t => t.SeatNumber))
            }).ToList();
            return View(vm);


        }


    }
}
