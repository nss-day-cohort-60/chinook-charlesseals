total_sales_{year}.sql:

What are the respective total sales for each of those years?
HINT: SUM

SELECT SUM(Total) FROM Invoice WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31'