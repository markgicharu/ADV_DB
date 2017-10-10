USE [ElectionManagementSystem]
GO

/****** Object:  StoredProcedure [dbo].[voterwithcounty]    Script Date: 10/10/2017 19:50:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[voterwithcounty]
as

  select Persons.FirstName, County.CountyName
  from Persons
  inner join
  County
  on  County.CountyId =Persons.ConstId

GO

