/* Query 12 */

SELECT COUNT(1) AS COUNT, t.[Payment Type] AS 'Payment Type' 
FROM
  dbo.taxiTrips t 
GROUP BY
  t.[Payment Type]
ORDER BY
  COUNT DESC;
