USE [wiilove]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/25/2017 4:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Deathnote]    Script Date: 7/25/2017 4:48:22 PM ******/
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
/****** Object:  Table [dbo].[History]    Script Date: 7/25/2017 4:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[History](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[RecordDate] [datetime] NOT NULL,
	[Status] [varchar](200) NULL,
 CONSTRAINT [PK__History__3214EC07092786D9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 7/25/2017 4:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID1] [bigint] NOT NULL,
	[UserID2] [bigint] NOT NULL,
	[Direction] [bigint] NOT NULL,
	[TextContent] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfileTracking]    Script Date: 7/25/2017 4:48:22 PM ******/
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
/****** Object:  Table [dbo].[SystemParameter]    Script Date: 7/25/2017 4:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameter](
	[Id] [int] NOT NULL,
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
/****** Object:  Table [dbo].[UserDetails]    Script Date: 7/25/2017 4:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [bigint] NULL,
	[FirstName] [varchar](26) NULL,
	[MiddleName] [varchar](26) NULL,
	[LastName] [varchar](26) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [int] NULL,
	[Weight] [float] NULL,
	[Height] [float] NULL,
	[AvatarURL] [nvarchar](200) NULL,
	[DisplayDOB] [int] NULL,
	[ReceivesTrangesMessage] [int] NULL,
	[PublicProfile] [int] NULL,
	[MaritalStatus] [int] NULL,
	[CurrentCountryId] [int] NULL,
	[CurrentCityId] [int] NULL,
	[MotherTongueId] [int] NULL,
	[ReligionId] [int] NULL,
	[Caste] [int] NULL,
	[SocialNetworkURL] [varchar](204) NULL,
	[WebsiteURL] [nvarchar](102) NULL,
 CONSTRAINT [PK__UserDeta__3214EC07EA357B38] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRanking]    Script Date: 7/25/2017 4:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRanking](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DonatedAmount] [float] NULL,
	[Rank] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRelationship]    Script Date: 7/25/2017 4:48:22 PM ******/
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
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (3, NULL, N'longdinh', N'longdinh@gmail.com', NULL, NULL, CAST(0x0000A7BA0116C412 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (4, NULL, N'thuanle', N'thuanle@gmail.com', NULL, NULL, CAST(0x0000A7BB00AB0A00 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (5, NULL, N'test', N'test@gmail.com', NULL, NULL, CAST(0x0000A7BB00BBE0FD AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (6, NULL, N'abc', N'fdsafsadf@gmail.com', NULL, NULL, CAST(0x0000A7BB00BD7272 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [DisplayDOB], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (1, 1, N'Tên', N'Tên d?m', N'H?', CAST(0x493C0B00 AS Date), 1, 50, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [DisplayDOB], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (2, 1, N'A', N'B', N'C', CAST(0x493C0B00 AS Date), 1, 60, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [DisplayDOB], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (3, 3, N'Long', NULL, N'Dinh', CAST(0x5B950A00 AS Date), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [DisplayDOB], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (4, 4, N'Thuan', NULL, N'Le', CAST(0x5B950A00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [DisplayDOB], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (5, 5, N'Test', NULL, N'Le', CAST(0x5B950A00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [DisplayDOB], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (6, 6, N'fsdaf', NULL, N'fsda', CAST(0x5B950A00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__UpdateD__1FCDBCEB]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Deathnote] ADD  DEFAULT ((0)) FOR [DeathType]
GO
ALTER TABLE [dbo].[Deathnote] ADD  DEFAULT ('Ahihi Ngu VL') FOR [Reason]
GO
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF__History__RecordD__276EDEB3]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[ProfileTracking] ADD  DEFAULT ((0)) FOR [VisitType]
GO
ALTER TABLE [dbo].[UserRanking] ADD  DEFAULT ((0)) FOR [DonatedAmount]
GO
ALTER TABLE [dbo].[UserRanking] ADD  DEFAULT ((0)) FOR [Rank]
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
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account] FOREIGN KEY([UserID1])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account1] FOREIGN KEY([UserID2])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account1]
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
ALTER TABLE [dbo].[UserRelationship]  WITH CHECK ADD  CONSTRAINT [FK_UserRelationship_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[UserRelationship] CHECK CONSTRAINT [FK_UserRelationship_Account]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Định nghĩa dư liêu này đã bị xóa hay không. 0 là chưa xóa, khác 0 là đã xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã định danh của trường này. VD: 1000 là Đất Nước, 1001 là thành phố, ...' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameter', @level2type=N'COLUMN',@level2name=N'FeatureID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Định nghĩa dư liêu này đã bị xóa hay không. 0 là chưa xóa, khác 0 là đã xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameter', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
