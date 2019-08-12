-- << Assignment on Joins and CTEs --
-- (Challenge) What's the length of the longest
-- trip for each day it rains anywhere?

WITH
    raintable
AS (
    SELECT
        DATE(date) AS rainy
    FROM
        weather
    WHERE
		events = 'Rain'
	GROUP BY rainy
)

SELECT
	DATE(trips.start_date) AS trip_date,
	MAX(trips.duration) as longest_trip
FROM
	trips
JOIN
	raintable
ON
	raintable.rainy = DATE(trips.start_date)
GROUP BY trip_date

	
