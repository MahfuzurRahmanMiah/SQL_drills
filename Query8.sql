-- << Assignment on Joins and CTEs --
-- What are the three longest trips on rainy days?

-- Set up the CTE to create a "rainy" table.
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
	trips.duration,
	trips.start_date
FROM
	trips
JOIN
	raintable
ON
	DATE(trips.start_date) = raintable.rainy
ORDER BY 
	duration DESC
LIMIT 
	3