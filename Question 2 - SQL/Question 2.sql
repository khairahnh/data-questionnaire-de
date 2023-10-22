-- Question 2

-- b. Show the SQL query for nmber of customers purchasing more than 5 books. 

SELECT COUNT(c.name) 
FROM customers as c
LEFT JOIN invoices as i
	ON i.customer_id = c.id
LEFT JOIN invoice_lines il 
	ON il.invoice_id = i.id
WHERE quantity > 5;


-- c. Show the SQL query for a list of customers who never purchased anything

SELECT c.name, i.total
FROM customers AS c
LEFT JOIN invoices AS i
	ON i.customer_id = c.id
WHERE customer_id is NULL;

-- d. Show the SQL query for list of book purchased with the users

SELECT c.name, il.description
FROM customers AS c
LEFT JOIN invoices AS i
	ON i.customer_id = c.id
LEFT JOIN invoice_lines AS il
	ON i.id = il.invoice_id
WHERE customer_id IS NOT NULL ;

