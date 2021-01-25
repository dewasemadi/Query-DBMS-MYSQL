-- arithmetic function
SELECT 10 * 10 as hasil; 

SELECT id, price DIV 1000 AS "Price in K" FROM products;

-- math function
-- https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html
SELECT POWER(10,2);
SELECT id, COS(price), SIN(price), TAN(price) FROM products;

SELECT id, name, price, quantity FROM products WHERE price DIV 1000>15;