USE codeup_test_dp;
    CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(40) DEFAULT 'NONE',
    record_name  VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED,
    sales_mil FLOAT,
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
    );