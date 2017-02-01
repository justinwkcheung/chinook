-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT id FROM artists WHERE name ILIKE '%queen%';
SELECT * FROM albums WHERE artist_id = 51;


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT id FROM media_types WHERE name = 'Protected MPEG-4 video file';
SELECT COUNT(ID) FROM tracks WHERE media_type_id = 3;


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT name FROM tracks WHERE genre_id = 15 ORDER BY unit_price desc;



-- 4) Find the all the artists whose names start with A.
SELECT name FROM artists WHERE name ILIKE 'a%';
-- USE WILDCARD

-- 5) Find all the tracks that belong to playlist 1.
SELECT track_id FROM playlists_tracks WHERE playlist_id = 1;
SELECT tracks.name, playlists_tracks.playlist_id FROM tracks INNER JOIN playlists_tracks ON playlists_tracks.track_id=tracks.id WHERE playlists_tracks.playlist_id = 1 ORDER BY tracks.id;
