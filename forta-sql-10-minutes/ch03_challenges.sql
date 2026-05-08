/* 1. Write a SQL statement to retrieve all customer names (cust_name) from the Customers table, and display the results sorted from Z to A. */

SELECT cust_name
FROM Customers
ORDER BY cust_name DESC;

/* 2. Write a SQL statement to retrieve customer ID (cust_ID) and order number (order_num) from the Orders table, and sort the results first by customer ID and then by order date in reverse chronilogical order. */

SELECT cust_id, order_num
FROM Orders
ORDER BY cust_id, order_date DESC;

/* 3. Our fictitious store obviously prefers to sell more expensive items, and lots of them. Write a SQL statement to display the quantity and price (item_price) from the OrderItems table, sorted with the highest quantity and highest price first. */

SELECT quantity, item_price
FROM OrderItems
ORDER BY quantity DESC, item_price DESC;

/* 4. What is wrong with the following SQL statement? (Try to figure it out without running it): */

SELECT vend_name, /* no comma necessary for only one column call */
FROM Vendors
ORDER vend_name DESC; /* must read "ORDER BY" */