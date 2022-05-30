USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[WarehouseDelete]    Script Date: 05/30/2022 08:15:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[WarehouseDelete]
	@warehouseid int
AS
BEGIN
declare @req int
declare @SP int

select @req =[ID] from SupplyDocument_Request
where  Warehouse_Id =@warehouseid
 
select @SP= [ID] from SupplyDocument
 where Warehouse_Id = @warehouseid
 
 IF @req !=0
 begin
 delete from SupplyDocument_Request
 where Warehouse_Id =@warehouseid;
 END
 
 IF @SP !=0
 begin
  DELETE FROM SupplyDocument
WHERE Warehouse_Id = @warehouseid
End
	
    DELETE FROM Items
WHERE Warehouse_Id = @warehouseid

DELETE FROM Warehouse
WHERE ID = @warehouseid
    

END




GO

