sales_agent_customer_count.sql:

Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)


SELECT e.FirstName, e.LastName, COUNT(c.CustomerId) 
FROM Employee e
    LEFT JOIN Customer c 
    ON e.EmployeeId = c.SupportRepId
GROUP BY e.FirstName, e.LastName