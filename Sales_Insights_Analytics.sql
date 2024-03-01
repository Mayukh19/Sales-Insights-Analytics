/*1. Shows record of all customers*/ 
SELECT * 
FROM customers;

/*2. Shows total no. of customers*/
SELECT COUNT(*) 
FROM customers;

/*3. Show transactions for Chennai market*/
SELECT * 
FROM transactions 
WHERE market_code='Mark001';

/*4. Shows total no. of transactions for Chennai market*/
SELECT COUNT(*) 
FROM transactions 
WHERE market_code='Mark001';

/*5. Show distinct product codes that were sold in Chennai*/
SELECT DISTINCT product_code 
FROM transactions 
WHERE market_code='Mark001';

/*6. Shows total no. of distinct product codes that were sold in Chennai*/
SELECT COUNT(DISTINCT product_code) 
FROM transactions
WHERE market_code='Mark001';

/*7. Show transactions where currency is US Dollars*/
SELECT * 
FROM transactions 
WHERE currency="USD";

/*8. Show transactions in 2020*/
SELECT transactions.*, date.* 
FROM transactions INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020;

/*9. Show total revenue in year 2020*/
SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 AND transactions.currency="INR\r" OR transactions.currency="USD\r";

/*10. Show total revenue in year 2020, Month January*/
SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 AND date.month_name="January" AND (transactions.currency="INR\r" OR transactions.currency="USD\r");

/*Show total revenue in year 2020 in Chennai*/
SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date ON transactions.order_date=date.date 
WHERE date.year=2020 AND transactions.market_code="Mark001";
