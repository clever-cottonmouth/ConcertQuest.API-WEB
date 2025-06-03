# ConcertQuest

ConcertQuest is a web-based concert ticket booking system built with ASP.NET Core MVC and Entity Framework Core. It allows users to browse concerts, view details, book tickets, and manage bookings. Admins can manage venues, artists, and concerts.

## Project Structure

```
ConcertQuest/
├── ConcertBooking.WebHost/         # ASP.NET Core MVC web application (UI, controllers, views)
├── ConcertBooking.Repositories/    # Data access layer (DbContext, repositories)
├── ConcertBooking.Entities/        # Domain models/entities (Concert, Venue, Artist, Ticket, Booking, User)
├── ConcertBooking.Infrastructure/  # Infrastructure/configuration code
├── ConcertBooking.Documents/       # Query and document-related code
├── CleverCottonmouth.sln           # Visual Studio solution file
└── LICENSE                         # MIT License
```

## Main Features
- Browse upcoming concerts and view details
- Book tickets for concerts (with seat selection)
- User authentication and registration
- Admin management for venues, artists, and concerts
- View and manage bookings

## Tech Stack
- **Backend:** ASP.NET Core MVC, Entity Framework Core
- **Frontend:** Razor Views (MVC)
- **Database:** SQL Server (via EF Core)
- **Authentication:** ASP.NET Core Identity

## Getting Started
1. Clone the repository
2. Set up the database connection string in `appsettings.json`
3. Build and run the solution using Visual Studio or `dotnet run`

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details. 