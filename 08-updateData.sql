-- saat update data, jangan sampai WHERE clause salah..!

ALTER TABLE products
    ADD COLUMN category ENUM("Makanan", "Minuman", "Lain-lain");

DESC products;

SELECT * FROM products;

ALTER TABLE products
    MODIFY category ENUM("Makanan", "Minuman", "Lain-lain") AFTER name;

-- update data ---------------------
UPDATE products 
SET category = "Makanan" 
WHERE id = "P0001";

-- update multiple data ------------
UPDATE products
SET category = "Makanan", 
    description = "Mie Ayam Original + Ceker"
WHERE id = "P0003";

UPDATE products
SET price = price + 5000;
WHERE id = "P0004";
