-- Buat table category
CREATE TABLE categories(
    id VARCHAR(100) NOT NULL,
    position INT,
    PRIMARY KEY (id)
) ENGINE innodb;
--- Lihat table
DESC categories;
--- Insert data
INSERT INTO categories(id, position)
VALUES ('FOOD', 1);
INSERT INTO categories(id, position)
VALUES ('GADGET', 2);
INSERT INTO categories(id, position)
VALUES ('FASHION', 3);
-- SELECT CATEGORIES
SELECT * FROM categories ORDER BY position;