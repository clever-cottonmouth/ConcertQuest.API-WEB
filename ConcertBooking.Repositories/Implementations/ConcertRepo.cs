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
    public class ConcertRepo : IConcertRepo
    {
        private readonly ApplicationDbContext _context;

        public ConcertRepo(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task Edit(Concert concert)
        {
            _context.Concerts.Update(concert);
            await _context.SaveChangesAsync();
        }

        public async Task<IEnumerable<Concert>> GetAll()
        {
            return await _context.Concerts.Include(x => x.Artist).Include(y => y.Venue).ToListAsync();
        }

        public async Task<Concert> GetById(int id)
        {
            return await _context.Concerts.Include(x => x.Artist).Include(y => y.Venue).FirstOrDefaultAsync(x => x.Id == id);
        }

        public async Task RemoveData(Concert concert)
        {
            _context.Concerts.Remove(concert);
            await _context.SaveChangesAsync();
        }

        public async Task Save(Concert concert)
        {
            await _context.Concerts.AddAsync(concert);
            await _context.SaveChangesAsync();
        }
    }
}
