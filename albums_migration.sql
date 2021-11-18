USE codeup_test_dp;
    DROP TABLE IF EXISTS albums;
    CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL DEFAULT 'NONE',
    record_name  VARCHAR(100) NOT NULL DEFAULT "Untitled",
    release_date INT UNSIGNED,
    sales_mil FLOAT UNSIGNED,
    genre VARCHAR(50),
    PRIMARY KEY (id)
    );
-- mysql -u root -p -t < albums_seeder.sql
-- mysql -u root -p -t < albums_migration.sql
--
-- codeup_test_user
--