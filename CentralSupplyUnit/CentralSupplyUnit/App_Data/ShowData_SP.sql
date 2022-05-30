
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE ShowData 	
AS
BEGIN
  Select Warehouse.ID,Warehouse.WarehouseName,Warehouse.Description,Warehouse.CreatedBy,Warehouse.CreatedDateandTime,FullName
  from Warehouse inner join Employees
  on(CreatedBy=Employees.ID)
END
GO
