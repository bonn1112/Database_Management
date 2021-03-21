USE [CIS655_Akutsu_Y]
GO

ALTER TABLE [dbo].[Order Line] DROP CONSTRAINT [FK_Product_Order Line]
GO

ALTER TABLE [dbo].[Order Line] DROP CONSTRAINT [FK_Order_Order Line]
GO

/****** Object:  Table [dbo].[Order Line]    Script Date: 3/21/2021 1:37:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order Line]') AND type in (N'U'))
DROP TABLE [dbo].[Order Line]
GO

/****** Object:  Table [dbo].[Order Line]    Script Date: 3/21/2021 1:37:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order Line](
	[OrderID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderdQuantity] [int] NULL,
	[ShippedQuantity] [int] NULL,
 CONSTRAINT [PK_Order Line] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order Line]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order Line] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO

ALTER TABLE [dbo].[Order Line] CHECK CONSTRAINT [FK_Order_Order Line]
GO

ALTER TABLE [dbo].[Order Line]  WITH CHECK ADD  CONSTRAINT [FK_Product_Order Line] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO

ALTER TABLE [dbo].[Order Line] CHECK CONSTRAINT [FK_Product_Order Line]
GO
