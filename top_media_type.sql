top_media_type.sql:

Provide a query that shows the most purchased Media Type.


SELECT mt.Name, SUM(i.Total) FROM MediaType mt
    JOIN Track t
    ON mt.MediaTypeId = t.MediaTypeId
    JOIN InvoiceLine il 
    ON t.TrackId = il.TrackId
    JOIN Invoice i 
    ON il.InvoiceId = i.InvoiceId
    GROUP BY mt.Name
    ORDER BY SUM(i.Total) DESC
    LIMIT 1