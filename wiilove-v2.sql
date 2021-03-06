USE [wiilove]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[Deathnote]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[History]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[Messages]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[ProfileTracking]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[SystemParameter]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[UserDetails]    Script Date: 8/1/2017 10:11:22 AM ******/
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserOnline]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[UserRanking]    Script Date: 8/1/2017 10:11:22 AM ******/
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
/****** Object:  Table [dbo].[UserRelationship]    Script Date: 8/1/2017 10:11:22 AM ******/
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
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (10010, NULL, N'tiennguyen', N'tiennguyen2nt@gmail.com', NULL, NULL, CAST(0x0000A7C200946287 AS DateTime), NULL, 0)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Email], [PhoneNumber], [Status], [CreateDate], [UpdateDate], [Deleted]) VALUES (10011, NULL, N'duyngo', N'duyngo@gmail.com', NULL, NULL, CAST(0x0000A7C200A3E45A AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (188, 1, 3, 1, N'Gủi kết bạn', 1, NULL)
INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (189, 3, 1, 1, N'Gủi kết bạn', 0, NULL)
INSERT [dbo].[Notification] ([Id], [FormId], [ToId], [Type], [Desccription], [isRead], [CreatedDate]) VALUES (190, 3, 10010, 1, N'Đã gửi yêu cầu kết bạn đến bạn', 1, NULL)
SET IDENTITY_INSERT [dbo].[Notification] OFF
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

INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (1, 1, N'Tên', N'Tên d?m', N'H?', CAST(0x493C0B00 AS Date), 1, 50, 150, N'TN-1266bb6b-745b-4020-b7ca-a2d3da72812a.png', NULL, NULL, NULL, NULL, 1, 3, 5, 7, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (3, 3, N'Long', N'Thế', N'Dinh', CAST(0x5B950A00 AS Date), 0, 69, 170, N'TN-d4457c46-ebd4-449b-a72e-82e787604954.jpg', N'HTC U11 là chiếc điện thoại có độ hoàn thiện khá tốt với thiết kế bóng bẩy, sang trọng và bắt mắt với những tính năng thường thấy trên các dòng flagship hiện nay của các hãng như khả năng chống nước IP67, 6GB RAM và bộ nhớ trong lên đến 128GB... Hiện tại HTC U11 đang được bán với giá 16.99 triệu đồng cho máy chính hãng tại Việt Nam.', NULL, NULL, NULL, 1, 4, 6, 8, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (4, 4, N'Thuan', NULL, N'Le', CAST(0x5B950A00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 6, 9, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (10010, 10010, N'Tiến', NULL, N'Nguyễn Ngọc', CAST(0x9A220B00 AS Date), 1, NULL, NULL, N'TN-521a6097-23a5-48eb-bbc8-8598c7039e9d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserDetails] ([Id], [AccountId], [FirstName], [MiddleName], [LastName], [DateOfBirth], [Gender], [Weight], [Height], [AvatarURL], [About], [ReceivesTrangesMessage], [PublicProfile], [MaritalStatus], [CurrentCountryId], [CurrentCityId], [MotherTongueId], [ReligionId], [Caste], [SocialNetworkURL], [WebsiteURL]) VALUES (10011, 10011, N'Duy', NULL, N'Ngô', CAST(0x9D180B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
SET IDENTITY_INSERT [dbo].[UserOnline] ON 

INSERT [dbo].[UserOnline] ([Id], [ConnectionId], [AccountId]) VALUES (228, N'6fd59092-260f-4b74-a595-0d9feaf7d327', 10010)
SET IDENTITY_INSERT [dbo].[UserOnline] OFF
SET IDENTITY_INSERT [dbo].[UserRelationship] ON 

INSERT [dbo].[UserRelationship] ([Id], [AccountId], [TargetId], [Type]) VALUES (12, 3, 1, 1)
INSERT [dbo].[UserRelationship] ([Id], [AccountId], [TargetId], [Type]) VALUES (13, 10010, 3, 1)
SET IDENTITY_INSERT [dbo].[UserRelationship] OFF
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
