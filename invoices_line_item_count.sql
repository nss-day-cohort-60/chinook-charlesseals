invoices_line_item_count.sql:

Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice


SELECT i.InvoiceId, COUNT(il.InvoiceId) From Invoice i
    JOIN InvoiceLine il 
    ON i.InvoiceId = il.InvoiceId
    GROUP BY il.InvoiceId