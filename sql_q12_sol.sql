-- Write a SQL query that returns the total number of goals 
-- scored by each position on each country’s team. 
-- Do not include positions which scored no goals

SELECT s.country_name, posi_to_play, COUNT(*) AS Goals 
FROM goal_details g
INNER JOIN player_mast p
USING (player_id)
INNER JOIN soccer_country s
ON g.team_id = s.country_id
GROUP BY s.country_name, posi_to_play
ORDER BY Goals;