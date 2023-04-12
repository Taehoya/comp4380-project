/* Query 10 */

/* Original Query */
SELECT *
FROM dbo.TaxiTrips
WHERE [Trip Seconds] > 3600
AND
[Trip Miles] > 6.214
ORDER BY [Trip Seconds] ASC;

/* Optimized Query */
SELECT [Trip ID], [Trip Seconds], [Trip Miles] 
FROM dbo.taxiTrips 
WHERE [Trip Seconds] > 3600 
AND
[Trip Miles] > 6.214 
ORDER BY [Trip Seconds] ASC;

