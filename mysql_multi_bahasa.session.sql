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
SELECT *
FROM categories
ORDER BY position;
--- Buat table kategori translation
CREATE TABLE categories_translation(
    category_id VARCHAR(100) NOT NULL,
    language VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    PRIMARY KEY (category_id, language)
) ENGINE innodb;
--- Lihat table
DESCRIBE categories_translation;
-- Tambahkan foreign key
ALTER TABLE categories_translation
ADD CONSTRAINT fk_categories_translation FOREIGN KEY (category_id) REFERENCES categories(id);
--Tambahkan multibahasa
INSERT categories_translation (category_id, language, name, description)
VALUES(
        'FOOD',
        'in_id',
        'Makanan',
        'Deskripsi Makanan'
    );
INSERT categories_translation (category_id, language, name, description)
VALUES(
        'FOOD',
        'en_id',
        'Food',
        'Food Description'
    );
INSERT categories_translation (category_id, language, name, description)
VALUES(
        'GADGET',
        'in_id',
        'Gawai',
        'Deskripsi Gawai'
    );
INSERT categories_translation (category_id, language, name, description)
VALUES(
        'GADGET',
        'en_id',
        'Handphone',
        'Handphone Description'
    );
-- Tampilkan multi bahasa
SELECT *
FROM categories
    JOIN categories_translation ct on categories.id = ct.category_id
WHERE ct.language = 'in_id' ORDER BY position;
SELECT *
FROM categories
    JOIN categories_translation ct on categories.id = ct.category_id
WHERE ct.language = 'en_id' ORDER BY position;