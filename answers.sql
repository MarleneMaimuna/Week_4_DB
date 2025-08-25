--Week4DBAssessment
--Question 1 – Total payment per date

SELECT paymentDate, SUM(amount) AS TotalPaid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

--Question 2 – Average credit limit per customer
SELECT customerName, country, AVG(creditLimit) AS AvgCreditLimit
FROM customers
GROUP BY customerName, country;

-- Question 3 – Total price of products ordered

SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS TotalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

--Question 4 – Highest payment amount per check number

SELECT checkNumber, MAX(amount) AS HighestPayment
FROM payments
GROUP BY checkNumber;

