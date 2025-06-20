USE [ConcertQuestDb]
GO
/****** Object:  Table [dbo].[Concerts]    Script Date: 17-04-2025 09:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concerts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DateTime] [datetime2](7) NOT NULL,
	[VenueId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Concerts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Concerts] ON 

INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (1, N'Lucian Cole', N'Facilis id eligendi ', CAST(N'2024-07-18T13:55:00.0000000' AS DateTime2), 8, 2, N'https://localhost:7212/ConcertImage/ea3cd67a-1e09-476c-8374-bc27f3d78c09.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (2, N'Moana Mcintyre', N'Quidem voluptatem fu', CAST(N'2025-10-14T02:21:00.0000000' AS DateTime2), 14, 13, N'https://localhost:7212/ConcertImage/3cfdd11a-f81a-487b-aaaf-dcd7c517b595.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (3, N'Wade Beasley', N'Magna reprehenderit ', CAST(N'2000-05-15T17:10:00.0000000' AS DateTime2), 5, 6, N'https://localhost:7212/ConcertImage/fa92a4d7-f1d1-4afd-b7ef-9c7524e19fcb.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (4, N'Kaye Sanchez', N'Similique quasi in f', CAST(N'2007-05-11T03:07:00.0000000' AS DateTime2), 9, 18, N'https://localhost:7212/ConcertImage/a592d627-d132-478f-895f-1e5a28d19291.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (5, N'Sonia Horton', N'Quaerat duis invento', CAST(N'1990-08-28T17:56:00.0000000' AS DateTime2), 8, 12, N'https://localhost:7212/ConcertImage/612b6e5f-ec4b-4512-a43d-0f22ed305b95.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (6, N'Sasha Figueroa', N'Dicta molestiae nobi', CAST(N'2026-10-14T23:29:00.0000000' AS DateTime2), 7, 16, N'https://localhost:7212/ConcertImage/443a7be5-d5cd-4403-ab94-4a1cc72da335.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (7, N'Rudyard Lancaster', N'Quis doloremque vero', CAST(N'2028-10-28T13:25:00.0000000' AS DateTime2), 17, 10, N'https://localhost:7212/ConcertImage/5c70e246-09e2-4981-b296-9d59687c0401.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (8, N'Ian Guthrie', N'Fugit qui laboriosa', CAST(N'2031-05-16T03:30:00.0000000' AS DateTime2), 16, 15, N'https://localhost:7212/ConcertImage/077f5e6b-9b86-4328-9755-8ef37d9438fd.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (9, N'Risa Griffith', N'Dolore saepe error i', CAST(N'2030-06-14T01:10:00.0000000' AS DateTime2), 9, 9, N'https://localhost:7212/ConcertImage/960019cd-0075-411b-934c-c74ee8e1fdd9.jpeg')
INSERT [dbo].[Concerts] ([Id], [Name], [Description], [DateTime], [VenueId], [ArtistId], [ImageUrl]) VALUES (10, N'Mariko Patel', N'Enim officiis est d', CAST(N'2020-08-01T18:18:00.0000000' AS DateTime2), 17, 1, N'https://localhost:7212/ConcertImage/4bc3944e-c3d8-43bc-adc9-36a288a8f7d6.jpeg')
SET IDENTITY_INSERT [dbo].[Concerts] OFF
GO
ALTER TABLE [dbo].[Concerts]  WITH CHECK ADD  CONSTRAINT [FK_Concerts_Artists_ArtistId] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Concerts] CHECK CONSTRAINT [FK_Concerts_Artists_ArtistId]
GO
ALTER TABLE [dbo].[Concerts]  WITH CHECK ADD  CONSTRAINT [FK_Concerts_Venues_VenueId] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venues] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Concerts] CHECK CONSTRAINT [FK_Concerts_Venues_VenueId]
GO
