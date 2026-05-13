/* 1. Write a SQL statement to retrieve the vendor name (vend_name) from the  Vendors table, returning only vendors in California (this requires filtering by both country [USA] and state [CA]; after all, there could be a California outside of the USA). Here’s a hint: the filter requires matching strings. */

SELECT vend_name
FROM Vendors
WHERE vend_country = 'USA'
    AND vend_state = 'CA';

/* 2. Write a SQL statement to find all orders where at least 100 of items  BR01, BR02, or BR03 were ordered. You’ll want to return order number (order_num), product ID (prod_id), and quantity for the OrderItems table, filtering by both the product ID and quantity. Here’s a hint: depending on how you write your filter, you may need to pay special attention to order of evaluation. */

/* using parentheses */
SELECT order_num, prod_id, quantity
FROM OrderItems
WHERE (prod_id='BR01' OR prod_id='BR02' OR prod_id='BR03')
    AND quantity >=100;

/* using IN */
SELECT order_num, prod_id, quantity
FROM OrderItems
WHERE prod_id IN ('BR01','BR02','BR03')
    AND quantity >=100;

/* 3. Now let’s revisit a challenge from the previous lesson. Write a SQL statement  that returns the product name (prod_name) and price (prod_price) from Products for all products priced between 3 and 6. Use an AND, and sort the results by price. */

SELECT prod_name, prod_price
FROM Products
WHERE prod_price >=3 AND prod_price <=6
ORDER BY prod_price;

/* 4. What is wrong with the following SQL statement? (Try to figure it out  without running it.) */

SELECT vend_name
FROM Vendors
ORDER BY vend_name /* ORDER BY must come after WHERE */
WHERE vend_country = 'USA'
    AND vend_state = 'CA';