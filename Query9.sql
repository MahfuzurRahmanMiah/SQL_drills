-- << Assignment on Joins and CTEs --
--Which station is full most often?

SELECT
	status.station_id,
	stations.name,
	COUNT(CASE WHEN docks_available = 0 then 1 END) AS docks_full
FROM
	status
JOIN
	stations
ON
	status.station_id = stations.station_id
GROUP BY 1,2
ORDER BY docks_full DESC
