sales_agent_total_sales.sql:

Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)


SELECT e.FirstName, e.LastName, SUM(i.Total) FROM Customer c
    JOIN Employee e 
    ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
    GROUP BY e.EmployeeId