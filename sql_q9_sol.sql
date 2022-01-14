-- Write a SQL query to find the goalkeeper’s name 
-- and jersey number, playing for Germany, who played in 
-- Germany’s group stage matches

SELECT DISTINCT m.player_gk, p.player_name, p.jersey_no 
FROM match_details AS m
INNER JOIN soccer_country AS s
ON m.team_id = s.country_id
INNER JOIN player_mast p
ON p.player_id = m.player_gk
WHERE m.play_stage = 'G' AND s.country_name = 'Germany';