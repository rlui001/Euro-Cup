-- Write a SQL query to find all the venues where 
-- matches with penalty shootouts were played.

-- Used penalty_gk because matches with penalty shootouts in match_details
-- does not guarantee a goal was scored, but this table
-- implies that a gk was present during a penalty shootout

SELECT venue_name FROM soccer_venue WHERE venue_id IN
(
SELECT DISTINCT venue_id FROM match_mast
INNER JOIN penalty_shootout
USING (match_no)
);
