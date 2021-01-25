-- mencari sebagian kata di kolom dengan tipe data string
-- cocok digunakan ketika kita membutuhkan pencarian yang tidak hanya sekadar operasi = (equals, sama dengan)

-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/fulltext-search.html

CREATE TABLE produk
(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(100)    NOT NULL, 
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED DEFAULT 0, 
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    PRIMARY KEY(id),
    FULLTEXT product_search(name, description)
) ENGINE = InnoDB;

DESC produk;

-- menambahkan fulltext
ALTER TABLE produk 
ADD FULLTEXT product_search(name, description);

-- menghapus fulltext
ALTER TABLE produk 
DROP INDEX product_search;

-- mode fulltext search
-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/fulltext-natural-language.html

SELECT * FROM products
WHERE name LIKE '%ayam%'
    OR description LIKE '%ayam%';

-- pake ini namanya natural language mode ------------
SELECT * FROM products
WHERE MATCH(name, description)
        AGAINST("ayam" IN NATURAL LANGUAGE MODE);


-- boolean mode --------------------------------------
SELECT * FROM products
WHERE MATCH(name, description)
        AGAINST("+ayam -bakso" IN BOOLEAN MODE);


-- query expansion mode ------------------------------
SELECT * FROM products
WHERE MATCH(name, description)
        AGAINST("ayam" WITH QUERY EXPANSION);


INSERT INTO products(id, name, description, price, quantity)
VALUES  ("P0006", "Bakso kecap", "Enak banget", 5000, 200),
        ("P0007","Bakso sapi", "Maknyos pokonya", 15000, 300),
        ("P0008","Bakso ayam ceker", "Mantap", 2000, 400),
        ("P0009","Bakso tok", "Paling enak", 25000, 200),
        ("P0010","Bakso + tipat", "Enak maknyos", 50000, 340);

ALTER TABLE products 
ADD FULLTEXT product_search(name, description);