USE [ConcertQuestDb]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 17-04-2025 09:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[SeatCapacity] [int] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Venues] ON 

INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (2, N'Lenore Blake', N'Eius iste dolore quo', 27)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (3, N'Ursula Wilcox', N'Impedit aut aut pra', 66)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (4, N'Guinevere Stanley', N'Maiores esse reprehe', 88)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (5, N'Xena Harding', N'Nisi voluptas at ass', 64)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (6, N'Ciaran Calderon', N'Occaecat laborum vol', 37)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (7, N'Celeste Short', N'Voluptatem et delect', 90)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (8, N'Alexa Chang', N'Esse rem perspiciat', 87)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (9, N'Alyssa Mercer', N'Quae aliquid volupta', 79)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (10, N'Quincy Fischer', N'Possimus consequunt', 70)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (11, N'Eugenia Herman', N'Pariatur Aute tempo', 12)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (12, N'Moses Oneill', N'Id voluptatem Fugia', 100)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (13, N'Maxine Adkins', N'Repudiandae magni ut', 100)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (14, N'John Hess', N'Maiores cumque enim ', 80)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (15, N'Jolene Mclaughlin', N'Qui ipsa itaque lab', 100)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (16, N'Baxter Glover', N'Quasi ex nobis aute ', 60)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (17, N'Portia Roberts', N'Eveniet necessitati', 50)
INSERT [dbo].[Venues] ([Id], [Name], [Address], [SeatCapacity]) VALUES (18, N'Alisa Clarke', N'Praesentium in maior', 40)
SET IDENTITY_INSERT [dbo].[Venues] OFF
GO
