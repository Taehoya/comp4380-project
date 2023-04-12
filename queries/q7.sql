/* Query 7 */

SELECT
    YEAR(t.[Trip Start Timestamp]) AS years,
    MONTH(t.[Trip Start Timestamp]) AS month,
    COUNT(1) AS COUNT,t.[Company]
FROM 
    dbo.TaxiTrips t
WHERE
    t.[Trip Start Timestamp] >= '2019-01-01 00:00:00.000' AND t.[Trip Start Timestamp] <= '2019-12-31 00:00:00.000'
GROUP BY 
    MONTH(t.[Trip Start Timestamp]), YEAR(t.[Trip Start Timestamp]), t.[Company]
ORDER BY
    COUNT DESC;


  /* Optimized Query */

SELECT
    tmp.year,
    tmp.month,
    tmp.count,
    tmp.Company
FROM 
    (
    SELECT 
        YEAR([Trip Start Timestamp]) AS year,
        MONTH([Trip Start Timestamp]) AS month,
        COUNT(1) AS COUNT,
        [Company]
    FROM 
        dbo.TaxiTrips
    GROUP BY 
        MONTH([Trip Start Timestamp]),
        YEAR([Trip Start Timestamp]),
        [Company]  
    ) tmp
WHERE
    tmp.year = 2019
ORDER BY
    COUNT DESC;
