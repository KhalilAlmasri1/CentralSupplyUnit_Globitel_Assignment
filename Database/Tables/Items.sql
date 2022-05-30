USE [CentralSupplyUnit]
GO

/****** Object:  Table [dbo].[Items]    Script Date: 05/30/2022 08:08:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemsName] [varchar](50) NOT NULL,
	[ItemsDescription] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Warehouse_Id] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Warehouse] FOREIGN KEY([Warehouse_Id])
REFERENCES [dbo].[Warehouse] ([ID])
GO

ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Warehouse]
GO

