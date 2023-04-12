/* Query 9 */

SELECT * FROM dbo.taxiTrips                                      
WHERE [Company] = 'City Service' 
AND 
[Payment Type] = 'Mobile' 
AND 
[Trip Seconds] > 1800) 
OR 
[Company] = 'Sun Taxi' 
AND 
[Payment Type] = 'Mobile' 
AND 
[Trip Seconds] > 1800);
