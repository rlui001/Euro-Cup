-- Write a SQL query to find the country where the most 
-- assistant referees come from, and the count of the assistant referees.

SELECT country_name, COUNT(ass_ref) AS assrefcount
FROM euro_cup_2016.match_details
INNER JOIN asst_referee_mast
ON ass_ref = ass_ref_id
INNER JOIN soccer_country
USING (country_id)
GROUP BY country_name
ORDER BY assrefcount DESC
LIMIT 1;