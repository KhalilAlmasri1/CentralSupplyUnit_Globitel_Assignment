USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[CreateSupplyDocument]    Script Date: 05/30/2022 08:13:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CreateSupplyDocument]
@name varchar(50),
@sub	varchar(50),
@CB int,
@datetime datetime,
@wrid int,
@itemid int
AS
BEGIN
	Insert into SupplyDocument_Request values(@name,@sub,@CB,@datetime,@wrid,@itemid)
END

GO

