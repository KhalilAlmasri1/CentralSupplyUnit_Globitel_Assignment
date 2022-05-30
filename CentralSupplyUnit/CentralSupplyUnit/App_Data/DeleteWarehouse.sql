
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteWarehouse 
	@warehouseid int
AS
BEGIN
	
delete from Warehouse where ID =@warehouseid
delete from Items where Warehouse_Id=@warehouseid
delete from SupplyDocument where Warehouse_Id=@warehouseid
END

GO
