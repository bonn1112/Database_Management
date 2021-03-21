USE [CIS655_Akutsu_Y]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 3/21/2021 1:38:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 3/21/2021 1:38:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeID] [nchar](10) NOT NULL,
	[LastName] [varchar](20) NULL,
	[FirstName] [varchar](20) NULL,
	[Zip] [varchar](20) NULL,
	[SSN] [int] NULL,
	[State] [varchar](2) NULL,
	[Street] [varchar](20) NULL,
	[Posistion] [varchar](20) NULL,
	[ContactPhone] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
