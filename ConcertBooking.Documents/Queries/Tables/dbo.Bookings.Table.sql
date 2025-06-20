USE [ConcertQuestDb]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 17-04-2025 09:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingDate] [datetime2](7) NOT NULL,
	[ConcertId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingId], [BookingDate], [ConcertId], [UserId]) VALUES (1, CAST(N'2024-07-11T15:25:36.2052401' AS DateTime2), 9, N'ce22b387-c831-439c-9527-a3958ca2315f')
INSERT [dbo].[Bookings] ([BookingId], [BookingDate], [ConcertId], [UserId]) VALUES (2, CAST(N'2024-07-11T15:26:37.0321312' AS DateTime2), 6, N'8fa9a0ff-35ee-4723-903c-eca9c8387212')
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Concerts_ConcertId] FOREIGN KEY([ConcertId])
REFERENCES [dbo].[Concerts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Concerts_ConcertId]
GO
