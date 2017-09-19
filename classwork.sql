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
