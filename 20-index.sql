-- saat mencari data, MySQL akan mengecek data dari urutan pertama hingga terakhir, sehingga apabila datanya banyak, proses pencarian akan semakin lambat

-- saat membuat index, MySQL akan menyimpan data dalam struktur Balancing-Tree, https://en.wikipedia.org/wiki/B-tree
-- index juga mempermudah melakukan pengurutan menggunakan ORDER BY

-- documentation
-- https://dev.mysql.com/doc/refman/8.0/en/optimization-indexes.html

-- bisa membuat lebih dari 1 index di table, dan setiap membuat index, kita bisa membuat index untuk beberapa kolom sekaligus
-- misalkan (col1, col2, col3)
-- kita memiliki kemampuan untuk mencari lebih menggunakan index untuk kombinasi query di (col1), (col1, col2), (col1, col2, col3)

-- apabila sudah membuat PRIMARY KEY dan UNIQUE constraint, tidak perlu menambahkan index lagi karena MySQL bakal otomatis nambah index pada PRIMARY KEY dan UNIQUE constraint

CREATE TABLE sellers
(
    id      INT NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100),
    name2   VARCHAR(100),
    email   VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_unique(email),
    INDEX name_index(name)
) ENGINE = InnoDB;

DESC sellers;
SELECT * FROM sellers;
SHOW CREATE TABLE sellers;

-- menambahkan index
ALTER TABLE sellers
ADD INDEX name_index(name);

-- menghapus index 
ALTER TABLE sellers
DROP INDEX name_index;


ALTER TABLE sellers
ADD INDEX name2_index(name2);