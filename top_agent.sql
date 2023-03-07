top_agent.sql:

Which sales agent made the most in sales over all?


SELECT e.FirstName, e.LastName, SUM(i.Total) FROM Customer c
    JOIN Employee e 
    ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
    GROUP BY e.EmployeeId 
    ORDER BY SUM(i.Total) DESC    
    LIMIT 1