USE [CIS655_Akutsu_Y]
GO

/****** Object:  Table [dbo].[Vintage]    Script Date: 3/21/2021 1:29:02 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vintage]') AND type in (N'U'))
DROP TABLE [dbo].[Vintage]
GO

/****** Object:  Table [dbo].[Vintage]    Script Date: 3/21/2021 1:29:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vintage](
	[Name] [nchar](10) NULL,
	[Vintage] [char](18) NULL,
	[Yield] [char](18) NULL,
	[Ripness] [char](18) NULL
) ON [PRIMARY]
GO

