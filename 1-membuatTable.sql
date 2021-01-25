-- connecting MYSQL from command line ---
-- mysql -u username -p
-- show databases;
-- use dbname

SHOW engines;
SHOW tables;
SELECT * FROM barang;

CREATE TABLE barang(
  id INT,
  nama VARCHAR(100),
  jumlah INT,
  harga INT
) ENGINE = InnoDB;

-- melihat isi table
DESC barang;
-- melihat sintaks pembuatan table
SHOW CREATE TABLE barang;
