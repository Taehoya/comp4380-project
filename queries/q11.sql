/* Query 11 */

SELECT 
  COUNT(1) AS COUNT, SUM([Tips])-SUM([Trip Total]-[Tips]) AS Amount, Company AS Company 
FROM
  dbo.taxiTrips
WHERE 
  [Fare] < [Tips]
GROUP BY 
  Company
ORDER BY 
  COUNT DESC;
