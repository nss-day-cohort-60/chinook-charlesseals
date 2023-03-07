top_country.sql:

Which country's customers spent the most?
HINT: Use the MAX function on a subquery.


SELECT i.BillingCountry, SUM(i.Total) AS TotalSpend FROM Invoice i 
GROUP BY i.BillingCountry
ORDER BY SUM(i.Total) DESC
LIMIT 1


