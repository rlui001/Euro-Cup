-- Write a SQL query to find the highest number 
-- of foul cards given in one match

WITH total_fouls AS
(
SELECT match_no, COUNT(*) as total_foul_cards
FROM penalty_shootout
GROUP BY match_no
)

SELECT MAX(total_foul_cards) AS max FROM total_fouls;