/* Query 6 */

SELECT 
    [Payment Type] AS "Payment Type",
    SUM([Trip Total]) AS Total
FROM 
    dbo.taxiTrips
GROUP BY 
    [Payment Type]
ORDER BY 
    SUM([Trip Total]) DESC;
