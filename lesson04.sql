/* 1. Write a SQL statement to retrieve the product ID (prod_id) and name (prod_name) from the Products table, returning only products with a price of 9.49 */

SELECT prod_id, prod_name
FROM Products
WHERE prod_price = 9.49;

/* 2. Write a SQL statement to retrieve the product ID (prod_id) and name (prod_name) from the Products table, returning only products with a price of 9 or more. */

SELECT prod_id, prod_name
FROM Products
WHERE prod_price >= 9;

/* 3. Now let's combine Lessons 3 and 4. Write a SQL statment that retrieves the unique list of order numbers (order_num) from the OrderItems table, which contain 100 or more of any item. */

SELECT DISTINCT order_num
FROM OrderItems
WHERE quantity >= 100;

/* 4. One more. Write a SQL statement that returns the product name (prod_name) and price (prod_price) from Products for all products priced between 3 and 6. Oh, and sort the results by price. (There are multiple solutions to this one, and we'll revisit it in the next lesson, but you can solve it using what you've learned thus far.) */

SELECT prod_name, prod_price
FROM Products
WHERE prod_price BETWEEN 3 AND 9
ORDER BY prod_price;