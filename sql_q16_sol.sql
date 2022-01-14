-- Write a SQL query to find referees and the number 
-- of matches they worked in each venue.

SELECT venue_id, referee_id, COUNT(*) AS num_worked
FROM match_mast
GROUP BY venue_id, referee_id;