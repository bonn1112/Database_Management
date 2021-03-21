USE [CIS655_Akutsu_Y]
GO

/****** Object:  Table [dbo].[Grape]    Script Date: 3/21/2021 1:38:06 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grape]') AND type in (N'U'))
DROP TABLE [dbo].[Grape]
GO

/****** Object:  Table [dbo].[Grape]    Script Date: 3/21/2021 1:38:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grape](
	[Varaiey] [varchar](18) NULL,
	[Name] [varchar](18) NULL,
	[Aging] [char](18) NULL,
	[Storage] [char](18) NULL,
	[JuiceCR] [char](18) NULL
) ON [PRIMARY]
GO


