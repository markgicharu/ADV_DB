use Employees
go

--generate Generate the total salary of all employees in that database

select sum(Salary) as 'Total Salary'
from Employee

