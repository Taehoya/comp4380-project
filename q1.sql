/* Query 1 */

/* Original Query */
SELECT * 
FROM 
  dbo.taxiTrips 
WHERE 
  Tips = 0;

/* Optimized Query */
SELECT 
  [Trip ID], [Taxi ID], [Tips] 
FROM
  dbo.taxiTrips
WHERE 
  [Trip ID] 
IN (SELECT
      [Trip ID]
    FROM
      dbo.taxiTrips
    WHERE
      [Tips] = 0
   );
