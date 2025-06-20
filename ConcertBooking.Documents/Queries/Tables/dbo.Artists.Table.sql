USE [ConcertQuestDb]
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 17-04-2025 09:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artists] ON 

INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (1, N'Ryder Mcknight', N'Ad amet possimus e', N'https://localhost:7212/ArtistImage/db87528a-0a56-4cd3-a8be-5c052bc91141.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (2, N'Benedict Higgins', N'Consequatur esse co', N'https://localhost:7212/ArtistImage/4f0d79f0-ec76-4c50-8add-1400b3906074.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (3, N'Hakeem Marks', N'Qui commodi sit mag', N'https://localhost:7212/ArtistImage/6951ff34-c906-44a6-98e3-fbbe6005034c.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (4, N'Isadora May', N'Ea explicabo Nostru', N'https://localhost:7212/ArtistImage/8baa434e-65ef-47cf-b29f-42a7654d179c.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (5, N'Cassidy Ortiz', N'Dolorem error alias ', N'https://localhost:7212/ArtistImage/38f84268-9bf3-442c-8ed3-beaabe99a8af.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (6, N'Dexter Faulkner', N'Corporis temporibus ', N'https://localhost:7212/ArtistImage/7169cd91-9d86-43d0-a610-92a5768e188a.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (7, N'Charissa Sears', N'Anim necessitatibus ', N'https://localhost:7212/ArtistImage/2e23db0c-5a18-469b-9989-dd2a230a897c.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (8, N'Jemima Santos', N'Voluptate debitis re', N'https://localhost:7212/ArtistImage/2e2cb6b2-18f6-4c9d-8409-74a72fb19d97.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (9, N'Winifred Townsend', N'Nihil ut commodo quo', N'https://localhost:7212/ArtistImage/a2480874-fff4-49fb-add8-1a37455f393c.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (10, N'Deanna Hampton', N'Molestiae qui itaque', N'https://localhost:7212/ArtistImage/5b445e02-1d3f-4068-930c-84aaec8027ad.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (11, N'Thomas Cantu', N'Inventore atque amet', N'https://localhost:7212/ArtistImage/0bdfc4d2-7b60-4a9f-8915-d7c616f43a00.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (12, N'Felicia Harris', N'Beatae aliquid minim', N'https://localhost:7212/ArtistImage/9984f712-ba94-47b6-97e4-cd9b5482905b.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (13, N'Denton Parks', N'In numquam cum offic', N'https://localhost:7212/ArtistImage/37591db3-7cd7-4d21-aa72-2951b29533ca.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (14, N'Desirae Carpenter', N'Cillum quos corrupti', N'https://localhost:7212/ArtistImage/ff2a0354-62a0-4bdf-93e4-c59473627e7d.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (15, N'Silas Soto', N'Harum atque reiciend', N'https://localhost:7212/ArtistImage/706cba8c-2901-4829-b977-6955d96d871d.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (16, N'Candace Dunn', N'Qui iure ipsa repre', N'https://localhost:7212/ArtistImage/c5611cbf-045b-4730-81e5-3e0163678f19.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (17, N'Amelia Duke', N'Sint incididunt ut r', N'https://localhost:7212/ArtistImage/d97d2878-91c2-4067-93be-0a58282c5128.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (18, N'Velma Mcclain', N'Quod sequi ea provid', N'https://localhost:7212/ArtistImage/619405e9-76a5-4b5e-8aff-88175e9cab11.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (19, N'Nicholas Wise', N'Do nesciunt aliqua', N'https://localhost:7212/ArtistImage/fbcddbc0-bcab-4fb0-847a-f63e4a6e0aff.jpeg')
INSERT [dbo].[Artists] ([Id], [Name], [Bio], [ImageUrl]) VALUES (20, N'Catherine Kirk', N'Est laborum officia ', N'https://localhost:7212/ArtistImage/a2e6b513-448d-4b32-a327-fbafa6ec5abd.jpeg')
SET IDENTITY_INSERT [dbo].[Artists] OFF
GO
