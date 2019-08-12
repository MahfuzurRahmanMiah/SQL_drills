-- <<Assignment about Aggregating And Grouping>> --

-- What is the average trip duration, by end station?
SELECT
	end_station,
	AVG(duration) AS avg_duration
FROM 
	trips
GROUP BY 1;


