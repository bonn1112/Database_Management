USE [CIS655_Akutsu_Y]
GO

/****** Object:  Table [dbo].[Vineyard]    Script Date: 3/21/2021 1:29:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vineyard]') AND type in (N'U'))
DROP TABLE [dbo].[Vineyard]
GO

/****** Object:  Table [dbo].[Vineyard]    Script Date: 3/21/2021 1:29:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vineyard](
	[Name] [nchar](18) NULL,
	[EmployeeID] [int] NULL,
	[Location] [char](18) NULL,
	[Size] [int] NULL
) ON [PRIMARY]
GO
