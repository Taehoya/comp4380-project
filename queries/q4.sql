/* Query 4 */

SELECT 
    [Company] AS [Company Name], 
    COUNT([Trip Total]) AS [# of Trips costing $1000+] 
FROM 
    dbo.taxiTrips 
WHERE 
    [Trip Total] > 1000 
GROUP BY 
    [Company] 
ORDER BY 
    COUNT([Trip Total]) DESC;
