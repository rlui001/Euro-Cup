-- Write a SQL query to find the number of captains who were also goalkeepers

SELECT COUNT(*) AS total FROM match_captain
INNER JOIN player_mast
ON player_captain = player_id
WHERE posi_to_play = 'GK';