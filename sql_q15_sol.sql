-- Write a SQL query to find the referees who booked 
-- the most number of players.

WITH player_bookings AS
(
	SELECT match_no, COUNT(DISTINCT player_id) as player_sum
    FROM player_booked
    GROUP BY match_no
)

SELECT referee_id, referee_name, SUM(player_sum) as players
FROM match_mast
INNER JOIN referee_mast
USING (referee_id)
INNER JOIN player_bookings
ON match_mast.match_no = player_bookings.match_no
GROUP BY referee_id, referee_name
ORDER BY players DESC;