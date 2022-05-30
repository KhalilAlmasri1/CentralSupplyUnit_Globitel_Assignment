USE [CentralSupplyUnit]
GO

/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 05/30/2022 08:14:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Login] 
@uname varchar(50),
@password varchar (50)
AS
BEGIN


	select *
	from Employees
	 where [UserName]=@uname and [Password]=@password
	
END

GO

