/* Query 14 */

SELECT 
  top(1) SUM(t.Fare) AS Fare, MONTH(t.[Trip Start Timestamp]) AS Month
FROM
  dbo.taxiTrips t 
GROUP BY 
  MONTH(t.[Trip Start Timestamp]);
