--joins--
-- generate a list of employees with the departments that they fall under

use Employees
go

select Employee.Fname, Employee.Lname, Department.Dname, Employee.DNo
from Employee
inner join Department on Employee.EmpNo=Department.DNo