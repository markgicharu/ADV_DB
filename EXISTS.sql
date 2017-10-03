--employees exist in a project--


use Employees
go

--exists-
/*
select * from employee
where  exists( select empno from Works_On where EmpNo = '2' )

--NOT exists-

select * from employee
where not exists( select empno from Works_On where EmpNo = '2' )
*/

select Fname,Lname,EmpNo from employee
where  exists( select PNo from Project where EmpNo = Works_On.EmpNo and PNo = '2' )