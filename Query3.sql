-- <<Assignment from SQL Basics>> --

-- The min temperatures of all the 
-- occurrences of rain in zip 94301

SELECT
	mintemperaturef
FROM
	weather
WHERE
	events = 'Rain' AND
	zip = 94107;


