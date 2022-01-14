-- Write a SQL query to find all available information about 
-- the players under contract to Liverpool F.C. 
-- playing for England in EURO Cup 2016.

SELECT * FROM player_mast
INNER JOIN soccer_country
ON team_id = country_id
WHERE country_name = 'England' AND playing_club LIKE 'LIVERPOOL';