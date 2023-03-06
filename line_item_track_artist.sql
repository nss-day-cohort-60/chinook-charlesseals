line_item_track_artist.sql:

Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.


SELECT InvoiceLineId, t.Name, art.Name FROM InvoiceLine i
    JOIN Track t
    ON i.TrackId = t.TrackId
            JOIN Album alb
            ON t.AlbumId = alb.AlbumId
                JOIN Artist art
                ON alb.ArtistId = art.ArtistId
