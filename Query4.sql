-- <<Assignment about Aggregating And Grouping>> --

-- What was the hottest day in our data set?
SELECT
	MAX(maxtemperaturef) AS max_temp
FROM
	weather;
	
-- The above query returns 134 so we will
-- use that to search where that instance occurs:
SELECT
	zip,
	maxtemperaturef
FROM 
	weather
WHERE
	maxtemperaturef = 134;


