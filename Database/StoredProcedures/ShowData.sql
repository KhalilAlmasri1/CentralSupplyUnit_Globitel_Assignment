USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[ShowData]    Script Date: 05/30/2022 08:15:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[ShowData] 	
AS
BEGIN
  Select Warehouse.*,FullName
  from Warehouse inner join Employees
  on(CreatedBy=Employees.ID)
END

GO

