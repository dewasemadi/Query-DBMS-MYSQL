-- ASC -> ascending, DESC -> Descending
-- ORDER BY -> diurutkan berdasarkan
-- default ascending
SELECT * FROM products ORDER BY price ASC;
SELECT id, category FROM products ORDER BY category;

SELECT id, price, quantity FROM products ORDER BY price ASC, quantity DESC;


-- membatasi jumlah data yang muncul menggunakan limit
SELECT * FROM products WHERE price > 15000 ORDER BY PRICE ASC LIMIT 2;

-- skip/offset/menghiraukan 
-- LIMIT 2,2 berarti skip 2 data pertama, dan tampilkan maksimal 2 data berikutnya

SELECT * FROM products WHERE price > 15000 ORDER BY PRICE ASC LIMIT 2,2;

-- paging
SELECT * FROM products WHERE price > 15000 LIMIT 2;

SELECT * FROM products WHERE price > 15000 LIMIT 2,2;

SELECT * FROM products WHERE price > 15000 LIMIT 4,1;

-- melihat kategori yang sama, cocok untuk tipe data enum
SELECT DISTINCT category FROM products;