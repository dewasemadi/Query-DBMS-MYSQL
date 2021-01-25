-- keunggulan relational DBMS adalah table relationship
-- misal dalam aplikasi kampus, tabel mahasiswa akan berelasi dengan tabel mata kuliah dan tabel dosen

-- saat membuat relasi tabel, kita perlu membuat sebuah kolom sebagai refrensi ke tabel lain, FOREIGN KEY
-- kita bisa membuat lebih dari 1 foreign key

-- tipe data harus sama dengan PRIMARY KEY

CREATE TABLE wishlist
(
    id          INT NOT NULL AUTO_INCREMENT,
    id_product  VARCHAR(10) NOT NULL, 
    description TEXT, 
    PRIMARY KEY(ID), 
    CONSTRAINT fk_wishlist_product
        FOREIGN KEY(id_product) REFERENCES products(id)
)ENGINE = InnoDB;

DESC wishlist;
SHOW CREATE TABLE wishlist;

-- menghapus foreign key
ALTER TABLE wishlist
    DROP CONSTRAINT fk_wishlist_product;

-- menambahkan foreign key
ALTER TABLE wishlist  
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY(id_product) REFERENCES products(id);


INSERT INTO wishlist(id_product, description)
VALUES("P0001", "Makanan kesukaan");

INSERT INTO products(id, name, category, price, quantity)
VALUES("PXXXX", "Ini Contoh", "Lain-lain", 500, 1000);

INSERT INTO wishlist(id_product, description)
VALUES("PXXXX", "Makanan kesukaan");


-- behavior foreign key
-- behavior             |       On Delete       | On Update
-- -------------------------------------------------
-- RESTRICT (default)   |       Ditolak         | Ditolak
-- CASCADE              |   Data akan dihapus   | Data akan ikut diubah
-- NO ACTION            |   Data dibiarkan      | Data dibiarkan
-- SET NULL             |   Diubah jadi NULL    | Diubah jadi NULL

-- CASCADE -> kalo misalkan tabel A didelete, maka semua tabel A' yang reference ke A akan di delete juga

-- mengubah behavior menghapus relasi
ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY(id_product) REFERENCES products(id)
            ON DELETE CASCADE ON UPDATE CASCADE;


SELECT * FROM wishlist;

DELETE FROM products WHERE ID = "PXXXX";