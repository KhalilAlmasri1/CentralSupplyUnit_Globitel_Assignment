USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Regester]    Script Date: 05/30/2022 08:15:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Regester] 
@fullname varchar(50),
@username varchar(50),
@password varchar(50),
@type varchar(50) 
AS
BEGIN
	declare @count int
	declare @rv int
	
	select @count = count(UserName) 
	from Employees
	where UserName=@username
	if @count > 0
	begin
	set @rv=-1
	end
	else
	begin
	set @rv=1
	insert into Employees 
	values (@fullname,@username,@password,@type)
	end
	select @rv as ReturnValue
END

GO

