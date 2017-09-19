USE iebc3

SELECT * from voter
	WHERE constituencycode = '2';

SELECT * from voter
	WHERE EXISTS (SELECT constituencycode
					FROM constituency)
/*					
SELECT * from voter
	WHERE constituencycode(SELECT constituencycode
								FROM constituency)
									WHERE constituencycode = '2')*/
									
									
select constituencycode from voter 
WHERE EXISTS (SELECT constituencycode
					FROM constituency)
					
select constituencycode from voter 
WHERE NOT EXISTS (SELECT constituencycode
					FROM constituency)

/*insert into table values*/	
INSERT INTO VOTER (idno, firstname, lastname )
values ('2115031','Michael', 'Angelo' )


/*check exist new inserted value person */
SELECT idno, firstname, lastname, constituencycode
 FROM voter
	where  exists (Select constituencycode
					from constituency
					where voter.constituencycode = constituency.constituencycode)
					
/*not exist new inserted value person */
SELECT idno, firstname, lastname, constituencycode
 FROM voter
	where not exists (Select constituencycode
					from constituency
					where voter.constituencycode = constituency.constituencycode)
					
/*select from existing bahati constituency the person*/
					
SELECT idno, firstname, lastname, constituencycode
 FROM voter
	where  exists (Select constituencycode
					from constituency
					where voter.constituencycode = constituency.constituencycode
					AND constituencyname = 'Bahati')
					
/*unions*/

use iebc3

select countycode from county 
union select countycode from constituency

/*intersect*/
select countycode from county 
intersect select countycode from constituency

/*unions all*/
select countycode from county 
union all select countycode from constituency


