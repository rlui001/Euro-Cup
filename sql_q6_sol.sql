-- Write a SQL query to find the number of matches that 
-- were won by a single point, but
-- do not include matches decided by penalty shootout.

SELECT COUNT(*) 
FROM match_details M1, match_details M2
INNER JOIN match_mast M3
USING (match_no)
WHERE M1.match_no = M2.match_no 
AND M1.win_lose = 'W' AND M2.win_lose = 'L'
AND M3.decided_by <> 'P'
AND M1.goal_score - M2.goal_score) = 1;
