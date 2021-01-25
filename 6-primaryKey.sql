-- primary key -> identitas tiap baris data
-- primary key harus unik/berbeda antar data, misalkan NIK, no. HP
-- bisa menunjuk kolom sebagai primary key
-- MYSQL support multiple kolom untuk primary key, disarankan hanya 1 kolom

-- membuat tabel
CREATE TABLE products(
    id          VARCHAR(10) NOT NULL, 
    name        VARCHAR(100) NOT NULL, 
    description TEXT, 
    price       INT UNSIGNED NOT NULL, 
    quantity    INT UNSIGNED NOT NULL DEFAULT 0, 
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;


ALTER TABLE products
ADD PRIMARY KEY(id);

DESC products;