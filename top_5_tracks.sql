top_5_tracks.sql:

Provide a query that shows the top 5 most purchased tracks over all.


SELECT t.Name, SUM(il.Quantity) AS NumberOfSales from Track t
    JOIN InvoiceLine il 
    ON t.TrackId = il.TrackId
    Join Invoice i 
    ON il.InvoiceId = i.InvoiceId
    GROUP BY t.Name
    ORDER BY NumberOfSales DESC
    LIMIT 5