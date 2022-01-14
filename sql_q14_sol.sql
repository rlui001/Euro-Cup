-- Write a SQL query to find referees and the 
-- number of bookings they made for the entire tournament. 
-- Sort your answer by the number of bookings in descending order.

SELECT referee_id, referee_name, COUNT(*) as bookings
FROM match_mast
INNER JOIN referee_mast
USING (referee_id)
GROUP BY referee_id, referee_name
ORDER BY bookings DESC;