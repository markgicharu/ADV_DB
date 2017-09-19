
/*create a user*/
create login ANU
with password = 'Password16'


/*MAP USER*/
create user ANU
 FROM LOGIN ANU


/*assign priveleges*/

USE iebc3

grant select
on county 
to ANU 
