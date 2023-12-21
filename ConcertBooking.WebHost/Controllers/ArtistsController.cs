using ConcertBooking.Entities;
using ConcertBooking.Repositories.Interfaces;
using ConcertBooking.WebHost.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ConcertBooking.WebHost.Controllers
{
    [Authorize(Roles = "Admin")]
    public class ArtistsController : Controller
    {
        private readonly IArtistRepo _artistRepo;
        private readonly IUtilityRepo _utilityRepo;
        private string containerName = "ArtistImage";

        public ArtistsController(IArtistRepo artistRepo, IUtilityRepo utilityRepo)
        {
            _artistRepo = artistRepo;
            _utilityRepo = utilityRepo;
        }

        public async Task<IActionResult> Index()
        {
            List<ArtistViewModel> vm = new List<ArtistViewModel>();

            var artists = await _artistRepo.GetAll();

            foreach (var artist in artists)
            {
                vm.Add(new ArtistViewModel
                {
                    Id = artist.Id,
                    Name = artist.Name,
                    Bio = artist.Bio,
                    ImageUrl = artist.ImageUrl,
                });
            }
            return View(vm);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(CreateArtistViewModel vm)
        {
            var artist = new Artist
            {
                Name = vm.Name,
                Bio = vm.Bio,
            };
            if (vm.ImageUrl != null)
            {
                artist.ImageUrl = await _utilityRepo.SaveImage(containerName, vm.ImageUrl);
            }
            await _artistRepo.Save(artist);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var artist = await _artistRepo.GetById(id);
            EditArtistViewModel vm = new EditArtistViewModel
            {
                Id = artist.Id,
                Name = artist.Name,
                Bio = artist.Bio,
                ImageUrl = artist.ImageUrl
            };
            return View(vm);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(EditArtistViewModel vm)
        {
            var artist = await _artistRepo.GetById(vm.Id);
            artist.Name = vm.Name;
            artist.Bio = vm.Bio;

            if (vm.ChooseImage != null)
            {
                artist.ImageUrl = await _utilityRepo.EditImage(containerName, vm.ChooseImage, artist.ImageUrl);
            }
            await _artistRepo.Edit(artist);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> Delete(int id)
        {
            var artist = await _artistRepo.GetById(id);
            await _artistRepo.RemoveData(artist);
            return RedirectToAction("Index");
        }
    }
}
