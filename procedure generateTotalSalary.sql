use Employees
go
--Stored Procedure Generate the total salary of all employees in that database

create procedure generateTotalSalary
@TotalSalary int
as

set nocount on
select sum(Salary) as 'Total Salary'
from Employee
where Salary = @TotalSalary;
go