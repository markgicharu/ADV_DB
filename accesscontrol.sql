
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


/*revoke Privileges*/

USE iebc3;

/*revokes all privileges for user ANU*/
revoke all privileges
on county
from ANU

/*revokes select privileges for user ANU*/
revoke select privileges
on county
from ANU
