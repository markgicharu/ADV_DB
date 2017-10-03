use Employees
go

--create a login user--
create login Testlogin2
with password ='Testlogin2';

--grant user login to database--
CREATE USER [Testlogin2] FOR LOGIN [Testlogin2]
go


--grant read only to table--
grant select 
on dbo.Works_On
to [Testlogin2]
go

grant select
on dbo.Project
to [Testlogin2]
go