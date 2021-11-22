USE codeup_test_dp;
    DROP TABLE IF EXISTS albums;
    CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL DEFAULT 'NONE',
    record_name  VARCHAR(100) NOT NULL DEFAULT "Untitled",
    release_date INT UNSIGNED,
    sales_mil FLOAT UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY (id),
    UNIQUE (artist_name)
    );


-- mysql -u root -p -t < albums_seeder.sql
-- mysql -u root -p -t < albums_migration.sql
-- codeup_test_user
--

USE quasar_db;

CREATE TABLE owners (
    id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(30)  NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE DATABASE IF NOT EXISTS dogs_db;
DOP TABLE IF EXISTS pets;

CREATE TABLE pets(
    id       INT UNSIGNED AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_id INT UNSIGNED,
    age      INT,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES owners (id)
);


INSERT INTO pets (pet_name, owner_name, age) VALUES
        ('Tony', 'John Smith', 7),
        ('Steve', 'Adam Smith', 1),
        ('Spot', 'Bryan Smith', 2),
        ('Sparkles', 'Stacy Smith', 8);

SELECT * from pets;

SELECT * FROM pets WHERE id = 3;

EXPLAIN SELECT id FROM pets WHERE id = 3;

EXPLAIN SELECT id FROM pets where pet_name = 'Spot';

SHOW INDEXES FROM pets;
