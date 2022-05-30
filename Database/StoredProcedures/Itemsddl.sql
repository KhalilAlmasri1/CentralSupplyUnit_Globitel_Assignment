USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Itemsddl]    Script Date: 05/30/2022 08:14:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Itemsddl] 
	@id int
AS
BEGIN
	select ID,ItemsName from Items
	where Items.Warehouse_Id = @id
	
END

GO

