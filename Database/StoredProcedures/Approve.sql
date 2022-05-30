USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Approve]    Script Date: 05/30/2022 08:13:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Approve]
@id int

	
AS
BEGIN
	
	insert into SupplyDocument 
	select SupplyDocumentsName,Subject,CreatedBy,CreatedDateandTime,Warehouse_Id,Items_Id
	from SupplyDocument_Request where ID=@id
	delete from SupplyDocument_Request where ID = @id

    
END

GO

