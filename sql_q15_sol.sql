-- Write a SQL query to find the referees who booked 
-- the most number of players.

SELECT r.referee_name, COUNT(*) AS bookings
FROM match_mast AS m, player_booked AS b, referee_mast AS r
WHERE b.match_no = m.match_no
AND m.referee_id = r.referee_id
GROUP BY r.referee_name
ORDER BY bookings DESC
LIMIT 1;
