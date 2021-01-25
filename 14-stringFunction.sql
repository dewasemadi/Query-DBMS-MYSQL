-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

SELECT id, 
    LOWER(name) as 'Name Lower',
    UPPER(name) as 'Name Upper',
    LENGTH(name) as 'Name Length'
FROM products;


