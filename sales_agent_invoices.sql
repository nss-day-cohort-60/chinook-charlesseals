sales_agent_invoices.sql:

Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID

SELECT Employee.FirstName, Employee.LastName, InvoiceId 
FROM Employee
    JOIN Customer
        ON Employee.EmployeeId = Customer.SupportRepId
            JOIN Invoice
                ON Customer.CustomerId = Invoice.CustomerId
WHERE Title = 'Sales Support Agent'