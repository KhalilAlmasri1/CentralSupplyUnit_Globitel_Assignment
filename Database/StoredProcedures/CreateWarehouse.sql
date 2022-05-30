USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[CreateWarehouse]    Script Date: 05/30/2022 08:13:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CreateWarehouse]
	@Name varchar(50),
	@description varchar(50),
	@dateTime datetime,
	@itemname varchar(50),
	@Itemdescription varchar(50),
	@quantity int ,
	@CreatedBy int
	
AS
BEGIN
	
	insert into Warehouse values (@Name,@description,@CreatedBy,@dateTime)
	declare @id int
	select @id = SCOPE_IDENTITY()
	insert into Items values(@itemname,@Itemdescription,@quantity,@id)
	  
END

GO

