-- <<Assignment about Aggregating And Grouping>> --

-- What's the shortest trip that happened?
SELECT
	min(duration) AS shortest_trip
FROM 
	trips;
	
-- This code returns 60 minutes for shortest trip.


