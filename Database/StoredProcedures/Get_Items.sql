USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Get_Items]    Script Date: 05/30/2022 08:14:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[Get_Items]
@warehouseid int	
AS
BEGIN
select Items.*,WarehouseName
from Items Left join Warehouse
on(Items.Warehouse_Id =Warehouse.ID)
where Items.Warehouse_Id=@warehouseid
END

GO

