line_item_track.sql:

Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT InvoiceLineId, t.Name FROM InvoiceLine i
    JOIN Track t
        ON i.TrackId = t.TrackId
