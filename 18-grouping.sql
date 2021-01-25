-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/group-by-modifiers.html
-- misalkan, melihat total produk berdasarkan kategori
-- GROUP BY clause
-- hanya bisa menggunakan aggregate function

SELECT category, 
    COUNT(id) AS 'Total Product'
FROM products 
GROUP BY category;

-- multiple paramter
SELECT category,
        COUNT(id) AS 'Total Product',
        AVG(price) AS 'Rata-rata',
        MAX(price) AS 'Harga termahal',
        MIN(price) AS 'Harga termurah',
        SUM(quantity) AS 'Total stock'
FROM products
GROUP BY category;

-- apabila ingin memfilter hasil aggregate function, 
-- gunakan HAVING clause

SELECT category, 
    COUNT(id) as 'total'
FROM products
GROUP BY category
HAVING total > 2;