USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[SupplyDocument_ShowData]    Script Date: 05/30/2022 08:15:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SupplyDocument_ShowData]
	
AS
BEGIN
	
	

select sd.*,FullName from SupplyDocument sd 
left join Employees e on sd.CreatedBy=e.ID 
END

GO

