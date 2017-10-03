use Employees
go

--solution statement for stored procedure 1
--List employees with the project they are attached to.
  select Employee.Fname, Project.PName
  from Employee
  inner join
  Project
  on Project.DNo = Employee.DNo