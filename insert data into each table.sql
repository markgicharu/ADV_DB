use Employees
go

--INSERT 3 VALUES IN EACH TABLE--

--INSERT DATA IN DEPARTMENT TABLE--

insert [Department] 
(	[Dname], [DNo]) values ('MEP', 1)
insert [Department] 
(	[Dname], [DNo]) values ('STRUCTURE', 2)
insert [Department] 
(	[Dname], [DNo]) values ('ARCHITECTURE', 3)

--INSERT DATA IN EMPLOYEE TABLE--

insert [Employee]
(	[Fname], [Lname], [EmpNo], [DOB], [Address], [Gender], [Salary], [DNo]) values ('Patrick', 'Schumacher', '001', '10-January-1960', '1092 Wimberely', 'Male', '600000', '1' )

insert [Employee]
(	[Fname], [Lname], [EmpNo], [DOB], [Address], [Gender], [Salary], [DNo]) values ('Sara', 'Criscenti', '002', '3-November-1978', '992 Wales', 'Female', '120000', '2' )

insert [Employee]
(	[Fname], [Lname], [EmpNo], [DOB], [Address], [Gender], [Salary], [DNo]) values ('Oliver', 'Bray', '003', '12-May-1983', '991 Wales', 'Male', '120000', '3' )


--INSERT DATA INTO PROJECT TABLE

insert [Project]
( [PName],[PNo], [PLocation], [DNo]) values('Palazo','101', 'Florence, Italy', '1' )

insert [Project]
( [PName],[PNo], [PLocation], [DNo]) values('1000 Museum', '202','Miami, USA','2' )

insert [Project]
( [PName],[PNo], [PLocation], [DNo]) values('Central Bank of Iraq','303', 'RSB,Iraq','3' )


--INSERT DATA INTO WORKS ON TABLE

insert [Works_On]
( [EmpNo],[PNo],[Hours]) values('1','101','10:00:00' )

insert [Works_On]
( [EmpNo],[PNo],[Hours]) values('2','202','12:00:00' )

insert [Works_On]
( [EmpNo],[PNo],[Hours]) values('3','303','16:00:00' )
