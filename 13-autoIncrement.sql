-- menandai bahwa suatu primary key datanya diisi secara otomatis dari angka terakhir + 1
-- Auto increment hanya bisa di primary key
CREATE TABLE admin(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    PRIMARY KEY(id)
) ENGINE = InnoDB;

SELECT * FROM admin;
DESC admin;
SHOW TABLES;

INSERT INTO admin(first_name, last_name)
VALUES  ("Dewa", "Semadi"),
        ("Agus", "Diva"),
        ("Angga", "Arya");

INSERT INTO admin(first_name, last_name)
VALUES  ("Anjas", "Mara");

DELETE FROM admin where id > 0;

DROP TABLE ADMIN;

-- function untuk melihat id terakhir
SELECT LAST_INSERT_ID();