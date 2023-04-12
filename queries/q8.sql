/* Query 8 */
 
SELECT 
  [Pickup Centroid Latitude], [Pickup Centroid Longitude], SUM(Tips)/count(1) AS average
FROM 
  dbo.taxiTrips
WHERE 
  [Pickup Centroid Latitude] != ''
GROUP BY 
  [Pickup Centroid Latitude], [Pickup Centroid Longitude]
ORDER BY 
  average desc;
