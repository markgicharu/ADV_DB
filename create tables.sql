use [Employees]
go 

create table [Department]
	(
		[Dname] [varchar] (20),
		[DNo] [int] primary key not null
	)

create table [Employee]
	(
		[Fname] [varchar] (20),
		[Lname] [varchar] (20),
		[EmpNo] [int] primary key not null,
		[DOB] [date] ,
		[Address] [varchar] (20),
		[Gender] [varchar] (10),
		[Salary] [int],
		[DNo] [int] foreign key references [Department](DNo)

	)

create table [Project]
	(
		[PName] [varchar] (20),
		[PNo] [int] primary key  not null,
		[PLocation] [varchar] (20),
		[DNo] [int] foreign key references [Department](DNo)
	)
create table [Works_On]
	(
		[EmpNo] [int] foreign key references [Employee] (EmpNo),
		[PNo] [int] foreign key references [Project] (PNo),
		[Hours] [time]
	)
