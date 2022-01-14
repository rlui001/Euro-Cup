-- Write a SQL query to find the substitute players who came 
-- into the field in the first half of play, within a normal play schedule.

SELECT player_id FROM player_in_out
WHERE play_half = 1 
AND in_out = 'I' 
AND play_schedule = 'NT';