/*stored procedure*/\

/*create procedure*/
create procedure viewcountydata
as 
	select * from county
/*execute procedure */
	exec viewcountydata

/*create procedure voterproc with parameters*/
create procedure voterproc
@constid int
as 

	select * from voter where constituencycode = @constid
	
/*execute voterproc with parameter*/
exec voterproc 1
