USE codeup_test_dp;
SELECT * FROM albums;
SELECT record_name FROM albums;

UPDATE albums SET sales_mil = sales_mil*10;
SELECT sales_mil FROM albums;

SELECT release_date from albums WHERE release_date<1980;
UPDATE albums SET release_date = release_date-100 WHERE release_date<1980;
SELECT release_date FROM albums WHERE release_date<1980;

SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
SELECT * FROM albums WHERE artist_name = 'Peter Jackson';