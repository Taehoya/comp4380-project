/* Query 13 */

SELECT * 
FROM
  dbo.taxiTrips
WHERE
  (
    Fare = 0 
   AND
    Tips = 0
  )
OR
  (
      [Trip Total] = 0 
    AND 
      [Trip Miles] = 0
  );
