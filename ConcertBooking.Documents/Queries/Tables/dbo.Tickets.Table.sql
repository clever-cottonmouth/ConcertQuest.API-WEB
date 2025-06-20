USE [ConcertQuestDb]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 17-04-2025 09:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[SeatNumber] [int] NOT NULL,
	[IsBooked] [bit] NOT NULL,
	[BookingId] [int] NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([TicketId], [SeatNumber], [IsBooked], [BookingId]) VALUES (1, 2, 1, 1)
INSERT [dbo].[Tickets] ([TicketId], [SeatNumber], [IsBooked], [BookingId]) VALUES (2, 4, 1, 2)
INSERT [dbo].[Tickets] ([TicketId], [SeatNumber], [IsBooked], [BookingId]) VALUES (3, 6, 1, 2)
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Bookings_BookingId]
GO
