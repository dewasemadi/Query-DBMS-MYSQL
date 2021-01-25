DESC barang;
SHOW CREATE TABLE barang;
SHOW TABLES;
SELECT * FROM barang;

ALTER TABLE barang
MODIFY id INT NOT NULL,
MODIFY nama varchar(200) NOT NULL, 
MODIFY jumlah INT NOT NULL DEFAULT 0, 
MODIFY harga INT NOT NULL DEFAULT 0;

ALTER TABLE barang
ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE barang
DROP COLUMN waktu_dibuat;

INSERT INTO barang(id, nama) VALUES(1, "Apel");

-- membuat ulang table, menghapus isi data
TRUNCATE barang;

-- menghapus permanen data
DROP TABLE barang;