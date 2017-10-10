USE [ElectionManagementSystem]
GO

/****** Object:  StoredProcedure [dbo].[voteridasparameter]    Script Date: 10/10/2017 19:48:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[voteridasparameter]
@idno int
as
select Persons.idno, Persons.firstname, constituency.ConstId,constituency.constituencyname, county.CountyId from Persons
join
constituency on Persons.ConstId=constituency.ConstId 
join
county on Persons.ConstId=County.CountyId
where Persons.idno=@idno;

GO

