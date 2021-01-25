-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html
-- statistik
-- misalkan ada tabel harga, agregasi berperan untuk menentukan harga termurah/termahal, rata-rata, atau total jumlah, dll

SELECT  COUNT(id) AS 'Total Product',
        AVG(price) AS 'Rata-rata',
        MAX(price) AS 'Harga termahal',
        MIN(price) AS 'Harga termurah',
        SUM(quantity) AS 'Total stock'
FROM products;