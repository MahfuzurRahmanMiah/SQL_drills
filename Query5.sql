-- <<Assignment about Aggregating And Grouping>> --

-- How many trips started at each station?
SELECT 
	start_station,
	count(*) as station_count
FROM
	trips
GROUP BY 1;



