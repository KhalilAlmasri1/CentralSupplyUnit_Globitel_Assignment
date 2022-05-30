USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Delete_SupplyDocument]    Script Date: 05/30/2022 08:14:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Delete_SupplyDocument]
	@id int
AS
BEGIN
	delete from SupplyDocument where ID=@id
END

GO

