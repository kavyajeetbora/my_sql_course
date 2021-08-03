-- increase the dates by 10 days
SELECT name, birth_dt, birth_dt + INTERVAL 10 DAY AS revised_dates FROM people; 

-- increase by one month and subtract by 10 days
SELECT 
	name, 
    birth_dt, 
    birth_dt + INTERVAL 10 MONTH - INTERVAL 10 DAY AS revised_dates 
FROM people; 