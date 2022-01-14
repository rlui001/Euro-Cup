-- Write a SQL query to find all the defenders 
-- who scored a goal for their teams.

SELECT DISTINCT player_id, player_name 
FROM player_mast
INNER JOIN goal_details
USING (player_id)
WHERE posi_to_play = 'DF' OR posi_to_play = 'FD'
ORDER BY player_id;