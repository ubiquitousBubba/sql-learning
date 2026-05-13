/* 1. Write a SQL statement to retrieve the product name (prod_name) and  description (prod_desc) from the Products table, returning only products where the word toy is in the description. */

SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%';

/* 2. Now let’s flip things around. Write a SQL statement to retrieve the product  name (prod_name) and description (prod_desc) from the Products table, returning only products where the word toy doesn’t appear in the description. And this time, sort the results by product name. */

SELECT prod_name, prod_desc
FROM Products
WHERE NOT prod_desc LIKE '%toy%'
ORDER BY prod_name;

/* 3. Write a SQL statement to retrieve the product name (prod_name) and  description (prod_desc) from the Products table, returning only products where both the words toy and carrots appear in the description. There are a couple of ways to do this, but for this challenge use AND and two LIKE comparisons. */

SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%'
    AND prod_desc LIKE '%carrots%';

/* 4. This next one is a little trickier. I didn’t show you this syntax specifically, but  see whether you can figure it out anyway based on what you have learned thus far. Write a SQL statement to retrieve the product name (prod_name) and description (prod_desc) from the Products table, returning only products where both the words toy and carrots appear in the description in that order (the word toy before the word carrots). Here’s a hint: you’ll only need one LIKE with three % symbols to do this. */

SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%carrots%';