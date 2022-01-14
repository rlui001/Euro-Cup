-- Write a SQL query to find all the venues where 
-- matches with penalty shootouts were played.

-- Used penalty_gk because matches with penalty shootouts in match_details
-- does not guarantee a goal was scored, but this table
-- implies that a gk was present during a penalty shootout
SELECT DISTINCT venue_id FROM match_mast AS m
INNER JOIN penalty_gk AS p
USING (match_no);