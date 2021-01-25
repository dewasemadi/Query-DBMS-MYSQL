SELECT  id AS Kode,
        name AS Nama, 
        category AS Kategori, 
        price AS Harga, 
        quantity AS Stok
FROM PRODUCTS;

SELECT * FROM products WHERE description IS NOT NULL;
