-- << Assignment on Joins and CTEs --
-- Return a list of stations with a count 
-- of number of trips starting at that station 
-- but ordered by dock count.

SELECT
	trips.start_station,
	stations.dockcount,
	COUNT(*)
FROM 
	trips
JOIN 
	stations
ON
	stations.name = trips.start_station
GROUP BY 1, 2
ORDER BY 2 DESC
