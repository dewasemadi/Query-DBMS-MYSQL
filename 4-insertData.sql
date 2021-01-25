-- membuat tabel
CREATE TABLE products(
    id          VARCHAR(10) NOT NULL, 
    name        VARCHAR(100) NOT NULL, 
    description TEXT, 
    price       INT UNSIGNED NOT NULL, 
    quantity    INT UNSIGNED NOT NULL DEFAULT 0, 
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

SHOW TABLES;

DESCRIBE products;

SELECT * FROM products;

-- memasukkan data ke dalam tabel 
INSERT INTO products(id, name, price, quantity)
VALUES("P0001", "Mie Ayam Original", 15000, 100);

INSERT INTO products(id, name, description, price, quantity)
VALUES("P0002", "Mie Ayam Bakso", "Mie Ayam Original + Bakso", 20000, 100);

-- memasukkan banyak data ke dalam tabel 
INSERT INTO products(id, name, price, quantity)
VALUES  ("P0003", "Mie Ayam Ceker", 20000, 100),
        ("P0004", "Mie Ayam Spesial", 25000, 100),
        ("P0005", "Mie Ayam Yamin", 15000, 100);
