USE [wiilove]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/21/2017 11:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [bigint] IDENTITY(1,1000000000) NOT NULL,
	[UserName] [varchar](26) NULL,
	[Password] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[PhoneNumber] [varchar](100) NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[Deleted] [int] NULL,
 CONSTRAINT [PK__Account__3214EC077C12E403] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Deathnote]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deathnote](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[DeathType] [int] NULL,
	[DayOfDeath] [date] NULL,
	[Duration] [int] NULL,
	[Reason] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[History]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[RecordDate] [datetime] NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__History__3214EC07092786D9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FromId] [bigint] NULL,
	[ToId] [bigint] NULL,
	[Description] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[Name] [nvarchar](200) NULL,
	[AvatarURL] [nvarchar](200) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessagesDetail]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MessagesId] [bigint] NULL,
	[SenderId] [bigint] NULL,
	[TextMessage] [ntext] NULL,
	[SendTime] [datetime] NULL,
	[Type] [int] NULL,
	[IsRead] [bit] NULL,
 CONSTRAINT [PK_MessagesDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FormId] [bigint] NULL,
	[ToId] [bigint] NULL,
	[Type] [int] NULL,
	[Desccription] [nvarchar](200) NULL,
	[isRead] [bit] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](150) NULL,
	[ExpicyDate] [int] NULL,
	[Price] [float] NULL,
	[Status] [int] NULL,
	[Deleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProfileTracking]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProfileTracking](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[VisiterID] [bigint] NULL,
	[VisitSrc] [varchar](20) NULL,
	[VisitType] [int] NULL,
	[VisitReason] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemParameter]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[Code] [nvarchar](20) NULL,
	[FeatureID] [int] NULL,
	[Deleted] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SystemParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [int] NULL,
	[Weight] [float] NULL,
	[Height] [float] NULL,
	[AvatarURL] [nvarchar](200) NULL,
	[About] [ntext] NULL,
	[MaritalStatus] [int] NULL,
	[CurrentCountryId] [int] NULL,
	[CurrentCityId] [int] NULL,
	[MotherTongueId] [int] NULL,
	[ReligionId] [int] NULL,
	[CasteId] [int] NULL,
	[SocialNetworkURL] [varchar](204) NULL,
	[WebsiteURL] [nvarchar](102) NULL,
 CONSTRAINT [PK__UserDeta__3214EC07EA357B38] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserOnline]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOnline](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionId] [nvarchar](100) NULL,
	[AccountId] [bigint] NULL,
 CONSTRAINT [PK_UserOnline] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRanking]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRanking](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[DonatedAmount] [float] NULL,
	[Rank] [int] NULL,
	[ProductId] [int] NULL,
	[BuyDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
 CONSTRAINT [PK__UserRank__3214EC0779101117] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRelationship]    Script Date: 8/21/2017 11:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRelationship](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[TargetId] [bigint] NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (1, N'tiennguyen', N'tiennguyen', N'tiennguyen@gmail.com', N'1000', 1, NULL, CAST(0x0000A7B600B3C2FA AS DateTime), 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (3, NULL, N'longdinh', N'longdinh@gmail.com', NULL, 1, CAST(0x0000A7BA0116C412 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (4, NULL, N'thuanle', N'thuanle@gmail.com', NULL, 1, CAST(0x0000A7BB00AB0A00 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (10010, NULL, N'tiennguyen', N'tiennguyen2nt@gmail.com', NULL, 1, CAST(0x0000A7C200946287 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (10011, NULL, N'duyngo', N'duyngo@gmail.com', NULL, 1, CAST(0x0000A7C200A3E45A AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (10012, NULL, N'qazwsx', N'fsklafj@gmmail.com', NULL, 1, CAST(0x0000A7C9016B9CEC AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (10013, NULL, N'tiennguyen', N'jflksjafd@gmail.com', NULL, 1, CAST(0x0000A7C9016C2DE8 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (1000010013, NULL, N'congvu', N'congvu@gmail.com', NULL, 1, CAST(0x0000A7CF0176CC73 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (2000010013, NULL, N'dongnguyen', N'dongnguyen@gmail.com', NULL, 1, CAST(0x0000A7D000A57704 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (3000010013, NULL, N'thilinh', N'thilinh@gmail.com', NULL, 1, CAST(0x0000A7D0016AE440 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (4000010013, NULL, N'thitrang', N'thitrang@gmail.com', NULL, 1, CAST(0x0000A7D0016B878C AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (5000010013, N'huong', N'huong', NULL, NULL, 1, NULL, CAST(0x0000A7D0016EB91C AS DateTime), 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (6000010013, NULL, N'hienthuong', N'hienthuong@gmail.com', NULL, 1, CAST(0x0000A7D0017219F6 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (7000010013, NULL, N'hoathien', N'hoathien@gmail.com', NULL, NULL, CAST(0x0000A7D50100D0C5 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (8000010013, NULL, N'viettiep', N'viettiep@gmail.com', NULL, NULL, CAST(0x0000A7D60011414B AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([ID], [FromId], [ToId], [Description], [CreateDate], [Name], [AvatarURL], [Status]) VALUES (1, 1, 3, N'Chat', CAST(0x0000A7D500D1FAA8 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Messages] ([ID], [FromId], [ToId], [Description], [CreateDate], [Name], [AvatarURL], [Status]) VALUES (2, 1, 6000010013, NULL, CAST(0x0000A7D601832225 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Messages] ([ID], [FromId], [ToId], [Description], [CreateDate], [Name], [AvatarURL], [Status]) VALUES (3, 1, 5000010013, NULL, CAST(0x0000A7D500D3A9F0 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Messages] ([ID], [FromId], [ToId], [Description], [CreateDate], [Name], [AvatarURL], [Status]) VALUES (4, 1, 4000010013, NULL, CAST(0x0000A7D60182A5B5 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[MessagesDetail] ON 

INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (1, 1, 1, N'Fuck', CAST(0x0000A7A900000000 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (2, 1, 3, N'Mày v?a nói gì dó,', CAST(0x0000A7C900000000 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (4, 2, 6000010013, N'bvcx', CAST(0x0000A7D500420333 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (5, 2, 6000010013, N'bvcx', CAST(0x0000A7D5004275E4 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (6, 2, 6000010013, N'bvcx', CAST(0x0000A7D50042B3D6 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (7, 2, 6000010013, N'bvcx', CAST(0x0000A7D50042C21D AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (8, 2, 6000010013, N'bvcx', CAST(0x0000A7D50042D16B AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (9, 2, 1, N'', CAST(0x0000A7D500437B2C AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (10, 2, 1, N'', CAST(0x0000A7D500439A2C AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (11, 2, 6000010013, N'ghjgj', CAST(0x0000A7D50043D4A4 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (12, 2, 1, N'', CAST(0x0000A7D5004461AB AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (13, 2, 1, N'sá', CAST(0x0000A7D5004487F4 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (14, 2, 6000010013, N'gdf', CAST(0x0000A7D50044A882 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (15, 2, 6000010013, N'gdfvcxv', CAST(0x0000A7D50044BEA8 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (16, 2, 1, N'fdsa', CAST(0x0000A7D500451307 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (17, 2, 1, N'jhk', CAST(0x0000A7D5004708F4 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (18, 2, 1, N'jhjk', CAST(0x0000A7D500471EAA AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (19, 1, 6000010013, N'Funck yuofusda
', CAST(0x0000A7D5004AE212 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (22, 1, 6000010013, N'hfg', CAST(0x0000A7D5004C14F3 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (23, 2, 6000010013, N'fsda', CAST(0x0000A7D5004CCBD2 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (24, 2, 6000010013, N'c?c 
', CAST(0x0000A7D5004CD4DA AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (25, 2, 6000010013, N'hbnjmhn
', CAST(0x0000A7D5004D9A89 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (26, 2, 1, N'fsda', CAST(0x0000A7D500C27F0F AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (27, 2, 1, N'fsda', CAST(0x0000A7D500C2D692 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (28, 2, 1, N'fas', CAST(0x0000A7D500C30596 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (29, 2, 1, N'cv', CAST(0x0000A7D500C30B00 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (30, 2, 1, N'', CAST(0x0000A7D500CA3604 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (31, 1, 1, N'fsdf', CAST(0x0000A7D500CC90F9 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (32, 1, 1, N'fsdf', CAST(0x0000A7D500CC9769 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (33, 1, 1, N'fsdf', CAST(0x0000A7D500CC979D AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (34, 1, 1, N'fsdf', CAST(0x0000A7D500CC97D4 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (35, 2, 1, N'fds', CAST(0x0000A7D500CC9D17 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (36, 2, 1, N'fds', CAST(0x0000A7D500CCD4C5 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (37, 2, 1, N'sadf', CAST(0x0000A7D500CD7737 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (38, 2, 1, N'aaaaaaaaaaaa', CAST(0x0000A7D500CDA06F AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (39, 1, 1, N'k', CAST(0x0000A7D500CE6AA0 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (40, 1, 1, N'ml', CAST(0x0000A7D500D1FAA7 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (41, 2, 1, N'm', CAST(0x0000A7D500D383DA AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (42, 3, 1, N'mn', CAST(0x0000A7D500D3A9F0 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (43, 4, 1, N'dm', CAST(0x0000A7D500D4B9A3 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (44, 2, 1, N'jghjkh', CAST(0x0000A7D500D4C283 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (45, 2, 6000010013, N'ni
', CAST(0x0000A7D500E42390 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (46, 2, 6000010013, N'sdf', CAST(0x0000A7D500E4D196 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (47, 2, 6000010013, N'd', CAST(0x0000A7D500E565AE AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (48, 2, 6000010013, N'd', CAST(0x0000A7D500E5697F AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (49, 2, 6000010013, N'sd', CAST(0x0000A7D500E598DD AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (50, 2, 6000010013, N'd', CAST(0x0000A7D500E5A149 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (51, 2, 6000010013, N'd', CAST(0x0000A7D500E5DFF0 AS DateTime), 1, 1)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (52, 2, 1, N'yeeu voofn', CAST(0x0000A7D500E60991 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (53, 2, 1, N'con cawjc
', CAST(0x0000A7D500E68595 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (54, 4, 1, N'R?i sao
', CAST(0x0000A7D6018249A5 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (55, 4, 1, N'R?i sao
', CAST(0x0000A7D6018256A5 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (56, 4, 1, N'Con c?c
', CAST(0x0000A7D60182A1B1 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (57, 4, 1, N'R?i sao
', CAST(0x0000A7D60182A5B5 AS DateTime), 1, 0)
INSERT [dbo].[MessagesDetail] ([Id], [MessagesId], [SenderId], [TextMessage], [SendTime], [Type], [IsRead]) VALUES (58, 2, 1, N'Yêu v?n
', CAST(0x0000A7D601832220 AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[MessagesDetail] OFF
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (196, 3, 1, 3, N'Đã chấp nhận yêu cầu kết bạn', 1, NULL)
INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (208, 1000010013, 3, 1, N'Đã gửi yêu cầu kết bạn đến bạn', 1, NULL)
INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (210, 2000010013, 1000010013, 3, N'Đã chấp nhận yêu cầu kết bạn', 1, NULL)
INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (212, 4, 3, 3, N'Đã chấp nhận yêu cầu kết bạn', 1, NULL)
SET IDENTITY_INSERT [dbo].[Notification] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Code], [Name], [ExpicyDate], [Price], [Status], [Deleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Free', N'Dùng thử', 7, 0, 0, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Code], [Name], [ExpicyDate], [Price], [Status], [Deleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Base', N'Cơ bản', 30, 19.99, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Code], [Name], [ExpicyDate], [Price], [Status], [Deleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Vip', N'Nâng cao (VIP)', 90, 39.99, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Code], [Name], [ExpicyDate], [Price], [Status], [Deleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Pro', N'Cao cấp (PRO)', 365, 99.99, 1, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[SystemParameter] ON 

INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (1, N'Việt Nam', N'Việt Nam', N'VN', 1000, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (2, N'Trung Quốc', NULL, N'TQ', 1000, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (3, N'Hà Nội', N'HN', N'HN', 1001, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (4, N'Hải Phòng', N'', N'HP', 1001, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (5, N'Tiếng Việt', NULL, NULL, 1002, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (6, N'Tiếng Anh', NULL, NULL, 1002, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (7, N'Phật Giáo', NULL, NULL, 1003, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (8, N'Đạo Giáo', NULL, NULL, 1003, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SystemParameter] ([Id], [Name], [Description], [Code], [FeatureID], [Deleted], [CreatedBy], [CreatedDate], [UpdateBy], [UpdatedDate]) VALUES (9, N'Thiên Chúa', NULL, NULL, 1003, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SystemParameter] OFF
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (1, 1, N'Tiến', N'', N'Nguyễn', CAST(0xFB1F0B00 AS Date), 1, 55, 170, N'TN-bf8ee13f-9cf9-4e3c-acaa-92e082c9c81b.jpg', NULL, NULL, 1, 3, 5, 7, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (3, 3, N'Long', N'Thế', N'Dinh', CAST(0xE51C0B00 AS Date), 0, 69, 170, N'TN-8901fa92-b59d-4316-a594-a4b1b3b7c53a.jpg', N'HTC U11 là chiếc điện thoại có độ hoàn thiện khá tốt với thiết kế bóng bẩy, sang trọng và bắt mắt với những tính năng thường thấy trên các dòng flagship hiện nay của các hãng như khả năng chống nước IP67, 6GB RAM và bộ nhớ trong lên đến 128GB... Hiện tại HTC U11 đang được bán với giá 16.99 triệu đồng cho máy chính hãng tại Việt Nam.', NULL, 1, 4, 6, 8, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (4, 4, N'Thuấn', NULL, N'Lê', CAST(0x521E0B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, 1, 4, 6, 9, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10010, 10010, N'Tiến', NULL, N'Nguyễn Ngọc', CAST(0x9A220B00 AS Date), 1, NULL, NULL, N'TN-521a6097-23a5-48eb-bbc8-8598c7039e9d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10011, 10011, N'Duy', NULL, N'Ngô', CAST(0x9D180B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10012, 10012, N'Phong', NULL, N'Nguyễn', CAST(0x56140B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10013, 10013, N'Thắng', NULL, N'Nguyễn', CAST(0x9A220B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10014, 1000010013, N'Công', NULL, N'Vũ', CAST(0x91190B00 AS Date), 1, NULL, NULL, N'TN-3fb0ad26-6cb3-470f-9cf8-4c7cd3542bf9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10015, 2000010013, N'dong', NULL, N'Nguyễn', CAST(0x12230B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10016, 3000010013, N'Linh', N'Thị', N'Vũ', CAST(0x3B160B00 AS Date), 0, NULL, NULL, N'TN-64e789ed-80e9-480c-9e8a-d079ae5ab20f.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10017, 4000010013, N'Trang', N'Thị', N'Nguyễn', CAST(0x65200B00 AS Date), 0, NULL, NULL, N'TN-09602d0d-fbbe-4866-98ce-43d31e5b35c9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10018, 5000010013, N'Hương', N'Thị', N'Nguyễn', CAST(0xA5210B00 AS Date), 0, 32, 32, NULL, NULL, NULL, 1, 3, 6, 9, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10019, 6000010013, N'Thương', N'Hiền', N'Cao Thị', CAST(0xFE1B0B00 AS Date), 0, NULL, NULL, N'TN-5da9d31a-295b-4cd9-8923-8f5b50de8589.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10020, 7000010013, N'Hoa', NULL, N'Thiên', CAST(0xE0140B00 AS Date), 0, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [CasteId], [SocialNetworkURL], [WebsiteURL]) VALUES (10021, 8000010013, N'Tiêp', NULL, N'Việt', CAST(0x4A160B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
SET IDENTITY_INSERT [dbo].[UserOnline] ON 

INSERT [dbo].[UserOnline] ([Id], [ConnectionId], [AccountId]) VALUES (576, N'cb20213c-95e3-4252-8803-801323bdd053', 4)
SET IDENTITY_INSERT [dbo].[UserOnline] OFF
SET IDENTITY_INSERT [dbo].[UserRanking] ON 

INSERT [dbo].[UserRanking] ([Id], [AccountId], [DonatedAmount], [Rank], [ProductId], [BuyDate], [ExpiryDate]) VALUES (1, 8000010013, NULL, 1, 1, CAST(0x0000A7D60011465F AS DateTime), CAST(0x0000A7DD0011465F AS DateTime))
INSERT [dbo].[UserRanking] ([Id], [AccountId], [DonatedAmount], [Rank], [ProductId], [BuyDate], [ExpiryDate]) VALUES (2, 3, 700.05, 0, 3, CAST(0x0000A7D6011412C9 AS DateTime), CAST(0x0000A830011412C9 AS DateTime))
INSERT [dbo].[UserRanking] ([Id], [AccountId], [DonatedAmount], [Rank], [ProductId], [BuyDate], [ExpiryDate]) VALUES (3, 1, 30, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserRanking] OFF
SET IDENTITY_INSERT [dbo].[UserRelationship] ON 

INSERT [dbo].[UserRelationship] ([Id], [AccountId], [TargetId], [Type]) VALUES (16, 3, 1, 1)
INSERT [dbo].[UserRelationship] ([Id], [AccountId], [TargetId], [Type]) VALUES (17, 2000010013, 1000010013, 1)
INSERT [dbo].[UserRelationship] ([Id], [AccountId], [TargetId], [Type]) VALUES (18, 4, 3, 1)
SET IDENTITY_INSERT [dbo].[UserRelationship] OFF
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__UpdateD__1FCDBCEB]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Deathnote] ADD  DEFAULT ((0)) FOR [DeathType]
GO
ALTER TABLE [dbo].[Deathnote] ADD  DEFAULT ('Ahihi Ngu VL') FOR [Reason]
GO
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF__History__RecordD__276EDEB3]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Date]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProfileTracking] ADD  DEFAULT ((0)) FOR [VisitType]
GO
ALTER TABLE [dbo].[UserRanking] ADD  CONSTRAINT [DF__UserRanki__Donat__25869641]  DEFAULT ((0)) FOR [DonatedAmount]
GO
ALTER TABLE [dbo].[UserRanking] ADD  CONSTRAINT [DF__UserRankin__Rank__267ABA7A]  DEFAULT ((0)) FOR [Rank]
GO
ALTER TABLE [dbo].[UserRelationship] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Deathnote]  WITH CHECK ADD  CONSTRAINT [FK_Deathnote_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Deathnote] CHECK CONSTRAINT [FK_Deathnote_Account]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Account]
GO
ALTER TABLE [dbo].[MessagesDetail]  WITH CHECK ADD  CONSTRAINT [FK_MessagesDetail_Messages] FOREIGN KEY([MessagesId])
REFERENCES [dbo].[Messages] ([ID])
GO
ALTER TABLE [dbo].[MessagesDetail] CHECK CONSTRAINT [FK_MessagesDetail_Messages]
GO
ALTER TABLE [dbo].[ProfileTracking]  WITH CHECK ADD  CONSTRAINT [FK_ProfileTracking_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[ProfileTracking] CHECK CONSTRAINT [FK_ProfileTracking_Account]
GO
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_Account]
GO
ALTER TABLE [dbo].[UserRanking]  WITH CHECK ADD  CONSTRAINT [FK_UserRanking_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[UserRanking] CHECK CONSTRAINT [FK_UserRanking_Account]
GO
ALTER TABLE [dbo].[UserRanking]  WITH CHECK ADD  CONSTRAINT [FK_UserRanking_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[UserRanking] CHECK CONSTRAINT [FK_UserRanking_Product]
GO
ALTER TABLE [dbo].[UserRelationship]  WITH CHECK ADD  CONSTRAINT [FK_UserRelationship_Account1] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[UserRelationship] CHECK CONSTRAINT [FK_UserRelationship_Account1]
GO
ALTER TABLE [dbo].[UserRelationship]  WITH CHECK ADD  CONSTRAINT [FK_UserRelationship_Account2] FOREIGN KEY([TargetId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[UserRelationship] CHECK CONSTRAINT [FK_UserRelationship_Account2]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Định nghĩa dư liêu này đã bị xóa hay không. 0 là chưa xóa, khác 0 là đã xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Định nghĩa xem thông báo này là thông báo gì, ví dụ: Thông báo kết bạn, thông báo like' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Notification', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã định danh của trường này. VD: 1000 là Đất Nước, 1001 là thành phố, ...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameter', @level2type=N'COLUMN',@level2name=N'FeatureID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Định nghĩa dư liêu này đã bị xóa hay không. 0 là chưa xóa, khác 0 là đã xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameter', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
