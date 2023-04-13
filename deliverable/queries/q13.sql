/* Query 13 */

/* Original Query */
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

/* Optimized Query */
SELECT * 
FROM
  dbo.taxiTrips
WHERE
  (
      Fare = 0 
  OR 
      [Trip Total] = 0 
  ) 
AND
  (
      Fare = 0 
    OR
      [Trip Miles] = 0
  ) 
AND 
  ( 
      Tips = 0 
   OR 
      [Trip Total] = 0 
  ) 
AND 
  (
      Tips = 0 
    OR
      [Trip Miles] = 0
  );
  
  
