USE [CIS655_Akutsu_Y]
GO

/****** Object:  Table [dbo].[Wine]    Script Date: 3/21/2021 1:38:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wine]') AND type in (N'U'))
DROP TABLE [dbo].[Wine]
GO

/****** Object:  Table [dbo].[Wine]    Script Date: 3/21/2021 1:38:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Wine](
	[WineID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Vintage] [varchar](20) NULL,
	[Alcohol] [decimal](2, 2) NULL,
	[Category] [varchar](20) NULL,
	[YeastType] [varchar](20) NULL,
	[YeastAmt] [decimal](11, 2) NULL,
 CONSTRAINT [PK_Wine] PRIMARY KEY CLUSTERED 
(
	[WineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
