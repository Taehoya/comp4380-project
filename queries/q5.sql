/* Query 5 */

SELECT 
    [Company] AS [Company Name], 
    SUM([Trip Total]) As [Total Trip Earnings]
FROM 
    dbo.taxiTrips
GROUP BY 
    [Company]
ORDER BY 
    SUM([Trip Total]) DESC;
