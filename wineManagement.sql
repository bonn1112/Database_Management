USE [CIS655_Akutsu_Y]
GO

/****** Object:  Table [dbo].[WineManagement]    Script Date: 3/21/2021 1:28:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WineManagement]') AND type in (N'U'))
DROP TABLE [dbo].[WineManagement]
GO

/****** Object:  Table [dbo].[WineManagement]    Script Date: 3/21/2021 1:28:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WineManagement](
	[WineID] [int] NULL,
	[Quantitiy] [int] NULL
) ON [PRIMARY]
GO


