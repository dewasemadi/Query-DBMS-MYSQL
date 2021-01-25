-- menjaga data
-- cocok digunakan apabila salah validasi

-- unique constraint -> data ditolak apabila ada duplicate data
CREATE TABLE customers(
    id          INT             NOT NULL AUTO_INCREMENT,
    email       VARCHAR(100)    NOT NULL, 
    first_name  VARCHAR(100)    NOT NULL, 
    last_name   VARCHAR(100), 
    PRIMARY KEY (id),
    UNIQUE KEY email_unique(email)
) ENGINE = InnoDB;

DESC customers;
SELECT * FROM customers;

-- menghapus unique constraint
ALTER TABLE customers
DROP CONSTRAINT email_unique;

-- menambahkan unique constraint
ALTER TABLE customers
ADD CONSTRAINT email_unique UNIQUE(email);

INSERT INTO customers(email, first_name, last_name) 
VALUES("dewasemadi@apps.ipb.ac.id", "Dewa", "Semadi");





-- check constraint -> mengecek data sebelum dimasukkan ke database, misalkan ingin memastikan harga harus diatas 10000
CREATE TABLE pelanggan(
    id          INT             NOT NULL AUTO_INCREMENT,
    email       VARCHAR(100)    NOT NULL, 
    first_name  VARCHAR(100)    NOT NULL, 
    last_name   VARCHAR(100), 
    price       INT UNSIGNED    NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT price_check (price>=1000)
) ENGINE = InnoDB;

-- menghapus check constraint
ALTER TABLE pelanggan 
    DROP CONSTRAINT price_check;
    
-- menambahkan check constraint
ALTER TABLE pelanggan
    ADD CONSTRAINT price_check CHECK(price >= 1000);

