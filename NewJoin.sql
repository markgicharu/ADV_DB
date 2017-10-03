use employees
go 

select PNo, Dno, PName 
from Project

where exists 
( Select * From Project 
Where PNo=PName and PNo=Null)


select PNo, Dno, PName 
from Project

where not exists 
( Select * From Project 
Where PNo=PName and PNo=Null)
