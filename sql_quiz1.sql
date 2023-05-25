-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers. https://ucde-rey.s3.amazonaws.com/DSV1015/ChinookDatabaseSchema.png
--Q1 Find all the tracks that have a length of 5,000,000 milliseconds or more.
SELECT trackID,
milliseconds
FROM tracks
WHERE milliseconds >= '5000000'

--Q2 Find all the invoices whose total is between $5 and $15 dollars.
SELECT COUNT (*)
FROM invoices
WHERE total < 15 AND total >=5

--Q3 Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
SELECT state, 
firstName,
lastname,
company
FROM customers
WHERE state IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

--Q4 Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
SELECT Total,
customerID,
invoiceID,
invoicedate
FROM invoices
WHERE (total >= 1) AND (total <=5)
GROUP BY invoiceID
HAVING customerID IN (56,58)

--Q5 Find all the tracks whose name starts with 'All'.
SELECT COUNT (name)
FROM Tracks
WHERE name LIKE 'All%'

--Q6 Find all the customer emails that start with "J" and are from gmail.com.
SELECT email
FROM customers 
WHERE email LIKE 'J%gmail.com'

--Q7 Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT invoiceid,
billingCity,
total
FROM invoices
WHERE billingCity IN ('Brasília', 'Edmonton', 'Vancouver')
ORDER BY invoiceID DESC

--Q8 Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
SELECT
count (invoiceID), 
customerID
FROM invoices
GROUP BY customerID
ORDER BY count (invoiceID) DESC

--Q9 Find the albums with 12 or more tracks.
SELECT  
count (*) as number_of_tracks
FROM tracks
GROUP BY albumID
HAVING number_of_tracks >= 12

