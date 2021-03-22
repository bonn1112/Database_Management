USE [CIS655_Akutsu_Y]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'CONSTRAINT',@level2name=N'CK_Customer'
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [CK_Customer]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 3/21/2021 6:03:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 3/21/2021 6:03:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [char](2) NOT NULL,
	[Zip] [int] NOT NULL,
	[Street] [varchar](30) NOT NULL,
	[Phone] [int] NOT NULL,
	[Customer_discriminator] [char](1) NOT NULL,
	[Individual] [bit] NULL,
	[Corprate] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_Customer] CHECK  (([Customer_discriminator]='C' OR [Customer_discriminator]='I'))
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [CK_Customer]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Checking to make sure we only have Individual or Corporate customer in our db.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'CONSTRAINT',@level2name=N'CK_Customer'
GO
