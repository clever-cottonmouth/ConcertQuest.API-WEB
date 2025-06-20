USE [ConcertQuestDb]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17-04-2025 09:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Pincode] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Phone], [Pincode]) VALUES (N'463028ec-49cf-4f03-9887-e24b8b6930c2', N'Holly', N'wewivotupy@mailinator.com', N'WEWIVOTUPY@MAILINATOR.COM', N'wewivotupy@mailinator.com', N'WEWIVOTUPY@MAILINATOR.COM', 0, N'AQAAAAIAAYagAAAAEOO/5woujD8AZ6e/wELgvOpRqZ1nZxaoe2m//vtcr0RO6MHxa+0F2MuR12rJ/OWK+g==', N'M6MF5AZSQTX4R2LTZBGPXIPIGQCX2SVE', N'd7035c89-9a7d-4f12-be27-1d10a16add79', N'+1 (479) 962-5061', 0, 0, NULL, 1, 0, N'Cupidatat quis quae ', NULL, N'Tenetur id veritatis')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Phone], [Pincode]) VALUES (N'4d9b80d4-2a0f-4f3e-b161-2961666158df', NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKwSSCM1zH27gcwpQ4sbeR3e1E0bt/Subv73T0PNMuHcbHFfBFS2XjOomO1Eexh9mQ==', N'TFXNHKHU4HI55ZYFMKQ6NOF3XYTFEKMC', N'ee1646c2-ee8a-40fa-8432-be870076d1bf', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Phone], [Pincode]) VALUES (N'7e14ec0d-2da2-455f-9b59-83cb67b2164b', N'miraj', N'miraj@gmail.com', N'MIRAJ@GMAIL.COM', N'miraj@gmail.com', N'MIRAJ@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECQmzxF2SetYXf0PX5voiuHkcM3rT8d0DYahMhrVtGt91GPoKF4aawpoYEtMJJPKnQ==', N'E5XVNIA6CSKOMSYCCJCKHTPNHNAVA3YJ', N'4b1cfa0e-4f2c-44a4-8776-8a41a5d332e1', N'7238373773', 0, 0, NULL, 1, 0, N'bengluru', NULL, N'560037')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Phone], [Pincode]) VALUES (N'8fa9a0ff-35ee-4723-903c-eca9c8387212', N'Wendy', N'roxa@mailinator.com', N'ROXA@MAILINATOR.COM', N'roxa@mailinator.com', N'ROXA@MAILINATOR.COM', 0, N'AQAAAAIAAYagAAAAEG4T5shTQLRfkM09peQaFclNrOqWxdIPCswnAf1xXnrTHq+4lX03k+/f/zVw+g05kg==', N'XX2HNMB2ESCIM3JNGC7CAHESWKNID44Z', N'd9905ab2-2b66-4fdd-824b-f0d198a1cb60', N'+1 (915) 524-6463', 0, 0, NULL, 1, 0, N'Dignissimos eos cupi', NULL, N'Autem temporibus sit')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Phone], [Pincode]) VALUES (N'ce22b387-c831-439c-9527-a3958ca2315f', N'Hammett', N'fegusypybe@mailinator.com', N'FEGUSYPYBE@MAILINATOR.COM', N'fegusypybe@mailinator.com', N'FEGUSYPYBE@MAILINATOR.COM', 0, N'AQAAAAIAAYagAAAAEEzfihFaEp3dimMYxKM0ufIFeS0o8ULcH+PsxU88GbwfZZIkzHgiBlj/MOAIYSqm4w==', N'5EKTEJDOF2WPGXS53BCKL5QW3LCCH6VV', N'defb7728-4033-42f7-a174-1ac7fb1add76', N'+1 (954) 599-3247', 0, 0, NULL, 1, 0, N'Beatae rem eaque ani', NULL, N'Facilis animi ut un')
GO
