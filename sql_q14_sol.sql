-- Write a SQL query to find referees and the 
-- number of bookings they made for the entire tournament. 
-- Sort your answer by the number of bookings in descending order.

SELECT c.referee_name, count(m.match_no) AS bookings
FROM player_booked b
INNER JOIN match_mast m ON b.match_no = m.match_no
INNER JOIN referee_mast r ON m.referee_id = r.referee_id
GROUP BY referee_name
ORDER BY bookings DESC;
