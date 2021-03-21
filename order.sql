USE [CIS655_Akutsu_Y]
GO

ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Customer_Order]
GO

/****** Object:  Table [dbo].[Order]    Script Date: 3/21/2021 1:37:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO

/****** Object:  Table [dbo].[Order]    Script Date: 3/21/2021 1:37:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order](
	[OrderID] [bigint] NOT NULL,
	[Date] [datetime] NULL,
	[CustomerID] [int] NULL,
	[ShipmentStatus] [varchar](20) NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Order] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Customer_Order]
GO


