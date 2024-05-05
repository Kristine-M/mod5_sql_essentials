CREATE DATABASE music_lib_db;

USE music_lib_db;

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL
);


CREATE TABLE Genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

ALTER TABLE Albums
ADD duration INT

