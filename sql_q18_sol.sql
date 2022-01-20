-- Write a SQL query to find the highest number 
-- of foul cards given in one match

SELECT match_no, COUNT(*) AS cards_count
FROM player_booked
GROUP BY match_no
ORDER BY cards_count DESC
LIMIT 1;
