/* 1. Write a SQL statement to retrieve all customer IDs (cust_id)
    from the Customers table*/
SELECT cust_id
FROM Customers;

/* 2. The OrderItems table contains every item ordered (and some were ordered multiple times).
    Write a SQL statement to retrieve a list of the priducts (prod_id) ordered (not every order, just a unique list of products).
    Here's a hint: you should end up with seven unique rows displayed. */
SELECT DISTINCT prod_id
FROM OrderItems;

/* 3. Write a SQL statement that retrieves all columns from the Customers table and al alternate SELECT that retrieves just the customer ID.
    Use comments to comment out one SELECT so as to be able to run the other. (And, of course, test both statements.) */
SELECT *
/* SELECT cust_id */
FROM Customers;