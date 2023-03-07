top_2009_agent.sql: Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.


SELECT e.FirstName, e.LastName, SUM(i.Total) FROM Customer c
    JOIN Employee e 
    ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
    WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
    GROUP BY e.EmployeeId 
    ORDER BY SUM(i.Total) DESC    
    LIMIT 1
