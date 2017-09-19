/*stored procedure*/\

/*create procedure*/
create procedure viewcountydata
as 
	select * from county
/*execute procedure */
	exec viewcountydata
