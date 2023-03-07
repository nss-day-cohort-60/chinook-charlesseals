top_3_artists.sql:

Provide a query that shows the top 3 best selling artists.


SELECT a.Name, SUM(i.Total) AS TotalArtistSales from Artist a 
    JOIN Album alb 
    ON a.ArtistId = alb.ArtistId
    JOIN Track t 
    ON alb.AlbumId = t.AlbumId
    JOIN InvoiceLine il 
    ON t.TrackId = il.TrackId
    JOIN Invoice i 
    ON il.InvoiceId = i.InvoiceId
    GROUP BY a.Name
    ORDER BY TotalArtistSales DESC
    LIMIT 3