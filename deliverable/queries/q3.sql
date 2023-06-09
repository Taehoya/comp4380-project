/* Query 3 */

/* Original Query */
SELECT * 
FROM 
  dbo.taxiTrips 
WHERE 
  [Trip Start Timestamp] >= '2019-01-01 00:00:00.000' 
AND 
  [Trip End Timestamp] < '2019-12-31 23:59:59.999';
  
 /* Optimized Query */
SELECT 
  [Trip ID], [Taxi ID] 
FROM 
  dbo.taxiTrips 
WHERE 
  [Trip Start Timestamp] >= '2019-01-01 00:00:00.000' 
AND
  [Trip End Timestamp] < '2019-12-31 23:59:59.999';

