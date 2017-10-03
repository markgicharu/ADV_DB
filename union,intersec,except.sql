--union--

use Employees
go

--intersect--
-- List all projects where there is both an employee and department--

select Pname from Project where exists(
select EmpNo from  Employee
intersect
select DNo from Department)


--except
--List all projects attached to a department but not to an employee--

select Pname from Project where exists( select DNo from Department except select EmpNo from Employee)


--Union
--List all projects attached to either an employee or department.

select PName from Project where exists(select EmpNo from  Employee
union
select DNo from Department )
