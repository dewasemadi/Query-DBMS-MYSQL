-- mirip seperti if/else
-- tidak se-kompleks bahasa pemrograman
-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/flow-control-functions.html

-- mirip seperti switch case pada bahasa pemrograman 
SELECT id, category,
    CASE category
        WHEN 'Makanan' THEN 'Enak'
        WHEN 'Minuman' THEN 'Segar'
        ELSE 'Apa itu?'
        END AS 'Category'
FROM products;

-- sintaks AS -> alias

SELECT id, price, 
    IF(price <= 15000, "Murah", 
        IF(price <= 20000, "Mahal", "Mahal Banget")
        ) AS "Mahal?"
FROM products;