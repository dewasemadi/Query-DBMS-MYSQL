-- tetap menggunakan WHERE clause
-- menambahkan data dummy
INSERT INTO PRODUCTS(id, name)
VALUES ("P0009", "Es Teh");

-- menghapus data
DELETE
FROM PRODUCTS
WHERE ID = "P0009";

SELECT * FROM PRODUCTS;
