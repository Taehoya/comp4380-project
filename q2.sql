/* Query 2 */

/* Original Query */
SELECT * 
FROM
  dbo.taxiTrips 
WHERE
  [Payment Type] = 'Cash'; 

/* Optimized Query */
SELECT 
  [Trip ID], [Taxi ID] 
FROM 
  dbo.taxiTrips
WHERE [Trip ID]
IN (SELECT 
      [Trip ID] 
    FROM 
      dbo.taxiTrips 
    WHERE 
      [Payment Type] = 'Cash' 
   );
