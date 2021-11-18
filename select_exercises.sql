USE codeup_test_dp;
SELECT 'The name of all albums by Pink Floyd.' AS 'INFO';
SELECT name FROM albums WHERE artist_name = 'Pink Floyd';

# 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# 'The genre for Nevermind'
SELECT genre FROM albums WHERE name = 'Nevermind';

# 'Which albums were released in the 1990s'
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# 'Which albums had less than 20 million certified sales'
SELECT artist_name FROM albums WHERE sales_mil < 20;

SELECT record_name From albums WHERE genre='Rock';