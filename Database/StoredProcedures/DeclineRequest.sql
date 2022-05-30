USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[DeclineRequest]    Script Date: 05/30/2022 08:14:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeclineRequest] 
	@id int
AS
BEGIN
	
	SET NOCOUNT ON;
delete from SupplyDocument_Request where ID =@id
    
	
END

GO

