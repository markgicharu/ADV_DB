USE iebc3

CREATE TABLE [dbo].[constituency](
	[constituencycode] [int] NOT NULL,
	[countycode] [int] NULL,
	[constituencyname] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[constituencycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[county]    Script Date: 9/19/2017 6:03:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[county](
	[countycode] [int] NOT NULL,
	[countyname] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[countycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[voter]    Script Date: 9/19/2017 6:03:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voter](
	[idno] [int] NOT NULL,
	[firstname] [varchar](20) NULL,
	[lastname] [varchar](20) NULL,
	[constituencycode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (1, 1, N'Nyali')
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (2, 1, N'Mwembe Tayari')
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (3, 4, N'Bahati')
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (4, 5, N'Alego')
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (5, 5, N'Kisumu East')
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (6, 6, N'Runyenjes')
INSERT [dbo].[constituency] ([constituencycode], [countycode], [constituencyname]) VALUES (7, 6, N'Embu East')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (1, N'Mombasa')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (2, N'Nairobi')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (3, N'Moyale')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (4, N'Nakuru')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (5, N'Kisumu')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (6, N'Embu')
INSERT [dbo].[county] ([countycode], [countyname]) VALUES (7, N'Kisii')
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (1946667, N'Tonny', N'Bwibo', 1)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (2015656, N'Zablon', N'Muriithi', 6)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (2254687, N'Erick', N'Njogu', 3)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (2452484, N'Alphayo', N'Daniel', 1)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (2546417, N'Noah', N'Mogire', 5)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (2554667, N'Issa', N'Abdirizak', 4)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (3156445, N'Philip', N'Abende', 2)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (3526419, N'Joseph', N'Akal', 5)
INSERT [dbo].[voter] ([idno], [firstname], [lastname], [constituencycode]) VALUES (4641465, N'Daniel', N'Wachira', 3)
ALTER TABLE [dbo].[constituency]  WITH CHECK ADD FOREIGN KEY([countycode])
REFERENCES [dbo].[county] ([countycode])
GO
ALTER TABLE [dbo].[voter]  WITH CHECK ADD FOREIGN KEY([constituencycode])
REFERENCES [dbo].[constituency] ([constituencycode])
GO
USE [master]
GO
ALTER DATABASE [iebc3] SET  READ_WRITE 
GO
