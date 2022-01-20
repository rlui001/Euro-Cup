-- Write a SQL query to find the match number for the game 
-- with the highest number of penalty shots, and which countries 
-- played that match.

SELECT c.country_name, COUNT(*) AS penalty_shots
FROM soccer_country as c, penalty_shootout AS p
WHERE c.country_id = p.team_id
GROUP BY c.country_name
ORDER BY penalty_shots desc
LIMIT 1;
