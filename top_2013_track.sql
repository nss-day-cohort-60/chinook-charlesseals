top_2013_track.sql:

Provide a query that shows the most purchased track(s) of 2013.


SELECT t.Name, SUM(il.Quantity) AS NumberOfSales from Track t
    JOIN InvoiceLine il 
    ON t.TrackId = il.TrackId
    Join Invoice i 
    ON il.InvoiceId = i.InvoiceId
    WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
    GROUP BY t.Name
    ORDER BY NumberOfSales DESC