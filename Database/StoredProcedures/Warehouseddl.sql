USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Warehouseddl]    Script Date: 05/30/2022 08:15:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Warehouseddl] 
	
AS
BEGIN
	select ID,WarehouseName from Warehouse

    
END

GO

