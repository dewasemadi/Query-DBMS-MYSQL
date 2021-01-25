ALTER TABLE barang
-- menambahkan kolom dan tipe data
    ADD COLUMN nama_column TEXT,
-- menghapus kolom
    DROP COLUMN nama, 
-- mengganti nama kolom
    RENAME COLUMN nama TO nama_baru, 
-- mengganti nama dan tipe data dengan posisi setelah nama tabel
    MODIFY nama VARCHAR(100) AFTER jumlah, 
-- memindahkan kolom menjadi yang pertama
    MODIFY nama VARCHAR(100) FIRST;
    
ALTER TABLE barang
	ADD COLUMN salah TEXT;
    
desc barang;
SELECT * FROM barang;
