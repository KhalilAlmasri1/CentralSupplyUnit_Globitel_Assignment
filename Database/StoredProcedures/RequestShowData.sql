USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[RequestShowData]    Script Date: 05/30/2022 08:15:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[RequestShowData]
	
AS
BEGIN
	
	SET NOCOUNT ON;
select req.*,FullName
from SupplyDocument_Request req left join Employees emp
on req.CreatedBy=emp.ID
END

GO

