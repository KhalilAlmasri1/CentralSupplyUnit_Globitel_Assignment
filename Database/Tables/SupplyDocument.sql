USE [CentralSupplyUnit]
GO

/****** Object:  Table [dbo].[SupplyDocument]    Script Date: 05/30/2022 08:09:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SupplyDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplyDocumentsName] [varchar](50) NOT NULL,
	[Subject] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateandTime] [datetime] NOT NULL,
	[Warehouse_Id] [int] NOT NULL,
	[Items_Id] [int] NOT NULL,
 CONSTRAINT [PK_Supply Document] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[SupplyDocument]  WITH CHECK ADD  CONSTRAINT [FK_SupplyDocument_Employees] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Employees] ([ID])
GO

ALTER TABLE [dbo].[SupplyDocument] CHECK CONSTRAINT [FK_SupplyDocument_Employees]
GO

ALTER TABLE [dbo].[SupplyDocument]  WITH CHECK ADD  CONSTRAINT [FK_SupplyDocument_Items] FOREIGN KEY([Items_Id])
REFERENCES [dbo].[Items] ([ID])
GO

ALTER TABLE [dbo].[SupplyDocument] CHECK CONSTRAINT [FK_SupplyDocument_Items]
GO

ALTER TABLE [dbo].[SupplyDocument]  WITH CHECK ADD  CONSTRAINT [FK_SupplyDocument_Warehouse] FOREIGN KEY([Warehouse_Id])
REFERENCES [dbo].[Warehouse] ([ID])
GO

ALTER TABLE [dbo].[SupplyDocument] CHECK CONSTRAINT [FK_SupplyDocument_Warehouse]
GO

