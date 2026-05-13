/* 1. A common use for aliases is to rename table column fields in retrieved  results (perhaps to match specific reporting or client needs). Write a SQL statement that retrieves vend_id, vend_name, vend_address, and  vend_city from Vendors, renaming vend_name to vname, vend_city to  vcity, and vend_address to vaddress. Sort the results by vendor name (you can use the original name or the renamed name). */

SELECT vend_id,
	vend_name AS vname,
	vend_address AS vaddress,
	vend_city AS vcity
FROM Vendors
ORDER BY vcity; 

/* 2. Our example store is running a sale and all products are 10% off. Write a  SQL statement that returns prod_id, prod_price, and sale_price from the Products table. sale_price is a calculated field that contains, well, the sale price. Here’s a hint: you can multiply by 0.9 to get 90% of the original value (and thus the 10% off price). */

SELECT prod_id, prod_price,
	prod_price * 0.9 AS sale_price
FROM Products;