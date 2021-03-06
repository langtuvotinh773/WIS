USE [WIS]
GO
/****** Object:  Table [dbo].[MasCity]    Script Date: 14/10/2016 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasCity](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WCountryCode] [char](255) NOT NULL,
	[WName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MasCity_1] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasCountry]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasCountry](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MasCountry_1] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasDistrict]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasDistrict](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WCityCode] [char](255) NOT NULL,
	[WName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MasDistrict] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasManager]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasManager](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WType] [tinyint] NOT NULL,
	[WAccount] [varchar](255) NULL,
	[WPassword] [varchar](255) NULL,
	[WProfileCode] [char](255) NULL,
 CONSTRAINT [PK_MasManager] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasProfile]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasProfile](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WFullName] [nvarchar](1000) NULL,
	[WEmail] [nvarchar](1000) NOT NULL,
	[WBirthday] [varchar](255) NULL,
	[WSex] [tinyint] NULL,
 CONSTRAINT [PK_MasMember] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchAddress]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchAddress](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WCountryCode] [char](255) NULL,
	[WCityCode] [char](255) NULL,
	[WDistrict] [char](255) NULL,
	[WName] [nvarchar](500) NOT NULL,
	[WOwner] [nvarchar](500) NULL,
	[WPhone] [varchar](128) NULL,
	[WAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SearchAddress] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchCategory]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchCategory](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WName] [nvarchar](500) NOT NULL,
	[WParent] [nvarchar](500) NULL,
 CONSTRAINT [PK_SearchCategory] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchRate]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchRate](
	[WSearchCode] [char](255) NOT NULL,
	[WUserCode] [char](255) NOT NULL,
	[WRate] [tinyint] NOT NULL,
 CONSTRAINT [PK_SearchComment] PRIMARY KEY CLUSTERED 
(
	[WSearchCode] ASC,
	[WUserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TempAddress]    Script Date: 14/10/2016 22:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempAddress](
	[WSysCode] [char](255) NOT NULL,
	[WSysCreateCode] [char](255) NOT NULL,
	[WSysCreateUtc] [datetime2](7) NOT NULL,
	[WSysUpdateCode] [char](255) NOT NULL,
	[WSysUpdateUtc] [datetime2](7) NOT NULL,
	[WSysStatusFlg] [tinyint] NOT NULL,
	[WSysIsDelete] [tinyint] NOT NULL,
	[WCountryCode] [char](255) NULL,
	[WCityCode] [char](255) NULL,
	[WDistrict] [char](255) NULL,
	[WName] [nvarchar](500) NOT NULL,
	[WOwner] [nvarchar](500) NULL,
	[WPhone] [varchar](128) NULL,
	[WAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TempAddress_1] PRIMARY KEY CLUSTERED 
(
	[WSysCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[MasCity] ADD  CONSTRAINT [DF_MasCity_CreateDateTimeUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[MasCity] ADD  CONSTRAINT [DF_MasCity_UpdateDateTimeUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[MasCity] ADD  CONSTRAINT [DF_MasCity_StatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[MasCity] ADD  CONSTRAINT [DF_MasCity_IsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[MasCountry] ADD  CONSTRAINT [DF_MasCountry_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[MasCountry] ADD  CONSTRAINT [DF_MasCountry_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[MasCountry] ADD  CONSTRAINT [DF_MasCountry_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[MasCountry] ADD  CONSTRAINT [DF_MasCountry_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[MasDistrict] ADD  CONSTRAINT [DF_MasDistrict_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[MasDistrict] ADD  CONSTRAINT [DF_MasDistrict_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[MasDistrict] ADD  CONSTRAINT [DF_MasDistrict_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[MasDistrict] ADD  CONSTRAINT [DF_MasDistrict_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[MasManager] ADD  CONSTRAINT [DF_MasManager_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[MasManager] ADD  CONSTRAINT [DF_MasManager_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[MasManager] ADD  CONSTRAINT [DF_MasManager_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[MasManager] ADD  CONSTRAINT [DF_MasManager_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[MasProfile] ADD  CONSTRAINT [DF_MasMember_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[MasProfile] ADD  CONSTRAINT [DF_MasMember_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[MasProfile] ADD  CONSTRAINT [DF_MasMember_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[MasProfile] ADD  CONSTRAINT [DF_MasMember_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[SearchAddress] ADD  CONSTRAINT [DF_SearchAddress_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[SearchAddress] ADD  CONSTRAINT [DF_SearchAddress_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[SearchAddress] ADD  CONSTRAINT [DF_SearchAddress_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[SearchAddress] ADD  CONSTRAINT [DF_SearchAddress_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[SearchCategory] ADD  CONSTRAINT [DF_SearchCategory_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[SearchCategory] ADD  CONSTRAINT [DF_SearchCategory_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[SearchCategory] ADD  CONSTRAINT [DF_SearchCategory_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[SearchCategory] ADD  CONSTRAINT [DF_SearchCategory_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
ALTER TABLE [dbo].[TempAddress] ADD  CONSTRAINT [DF_TempAddress_WSysCreateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysCreateUtc]
GO
ALTER TABLE [dbo].[TempAddress] ADD  CONSTRAINT [DF_TempAddress_WSysUpdateUtc]  DEFAULT (sysutcdatetime()) FOR [WSysUpdateUtc]
GO
ALTER TABLE [dbo].[TempAddress] ADD  CONSTRAINT [DF_TempAddress_WSysStatusFlg]  DEFAULT ((1)) FOR [WSysStatusFlg]
GO
ALTER TABLE [dbo].[TempAddress] ADD  CONSTRAINT [DF_TempAddress_WSysIsDelete]  DEFAULT ((0)) FOR [WSysIsDelete]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasCity', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasCity', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasCountry', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasCountry', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasDistrict', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasDistrict', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasManager', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasManager', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasProfile', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MasProfile', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SearchAddress', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SearchAddress', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SearchCategory', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SearchCategory', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:Start. 99: Stop' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempAddress', @level2type=N'COLUMN',@level2name=N'WSysStatusFlg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'99: Deleted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempAddress', @level2type=N'COLUMN',@level2name=N'WSysIsDelete'
GO
