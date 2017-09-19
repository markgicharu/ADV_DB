USE iebc3

SELECT * from voter
	WHERE constituencycode = '2';

SELECT * from voter
	WHERE EXISTS (SELECT constituencycode
					FROM constituency)
