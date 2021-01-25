-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

SELECT id, 
    EXTRACT(YEAR FROM created_at) AS "Year",
    EXTRACT(MONTH FROM created_at) AS "Month"
FROM products;

-- lebih simple
SELECT id, YEAR(created_at), MONTH(created_at) 
FROM products;