-- Write a SQL query to find the match number for the game 
-- with the highest number of penalty shots, and which countries 
-- played that match.

WITH max_penalty AS 
(SELECT match_no
FROM match_details
WHERE penalty_score = (
SELECT MAX(penalty_score) FROM match_details)
)

SELECT match_no, m.team_id, country_name
FROM match_details AS m
INNER JOIN max_penalty
USING (match_no)
INNER JOIN soccer_country
ON m.team_id = country_id;

