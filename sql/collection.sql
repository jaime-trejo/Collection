SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS collection;

USE collection;

CREATE TABLE IF NOT EXISTS media
(
	id				INT NOT NULL AUTO_INCREMENT,
	name			VARCHAR(25) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS media_format
(
	id	   			INT NOT NULL AUTO_INCREMENT,
    name			VARCHAR(25) NOT NULL,
    media_id		INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

CREATE TABLE IF NOT EXISTS genre
(
	id				INT NOT NULL AUTO_INCREMENT,
    name			VARCHAR(25) NOT NULL,
    media_id		INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

CREATE TABLE IF NOT EXISTS publisher
(
	id				INT NOT NULL AUTO_INCREMENT,
    name			VARCHAR(25) NOT NULL,
    media_id		INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

CREATE TABLE IF NOT EXISTS person
(
	id      		INT NOT NULL AUTO_INCREMENT,
	first_name  	VARCHAR(50) NOT NULL,
	middle_initial  VARCHAR(3),
	last_name       VARCHAR(50) NOT NULL,
	suffix         	VARCHAR(5),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS book
(
	id				INT NOT NULL AUTO_INCREMENT,
    title          	VARCHAR(100) NOT NULL,
	publish_year   	YEAR,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS book_publisher
(
	publisher_id	INT NOT NULL,
    book_id			INT NOT NULL,
    FOREIGN KEY	(publisher_id) REFERENCES publisher(id),
    FOREIGN KEY (book_id) REFERENCES book(id)
);

CREATE TABLE IF NOT EXISTS book_author
(
	book_id         INT NOT NULL,
	author_id       INT NOT NULL,
	FOREIGN KEY (book_id) REFERENCES book(id),
	FOREIGN KEY (author_id) REFERENCES person(id)
);

CREATE TABLE IF NOT EXISTS book_illustrator
(
	book_id         INT NOT NULL,
	illustrator_id  INT NOT NULL,
	FOREIGN KEY (book_id) REFERENCES book(id),
	FOREIGN KEY (illustrator_id) REFERENCES person(id)
);

CREATE TABLE IF NOT EXISTS book_genre
(
	genre_id        INT NOT NULL,
	book_id         INT NOT NULL,
	FOREIGN KEY (genre_id) REFERENCES genre(id),
	FOREIGN KEY (book_id)  REFERENCES book(id)
);

CREATE TABLE IF NOT EXISTS book_format
(
	format_id       INT NOT NULL,
	book_id         INT NOT NULL,
	FOREIGN KEY (format_id) REFERENCES media_format(id),
	FOREIGN KEY (book_id)  REFERENCES book(id)
);

CREATE TABLE IF NOT EXISTS artist
(
	id      	    INT NOT NULL AUTO_INCREMENT,
	name            VARCHAR(50) NOT NULL,
	country         VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS album
(
	id      	    INT NOT NULL AUTO_INCREMENT,
	name            VARCHAR(50) NOT NULL,
	release_year    YEAR,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS album_artist
(
	album_id        INT NOT NULL,
	artist_id       INT NOT NULL,
	FOREIGN KEY (album_id) REFERENCES album(id),
	FOREIGN KEY (artist_id) REFERENCES artist(id)
);

CREATE TABLE IF NOT EXISTS album_genre
(
	genre_id        INT NOT NULL,
	album_id        INT NOT NULL,
	FOREIGN KEY (genre_id) REFERENCES genre(id),
    FOREIGN KEY	(album_id) REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS album_format
(
	format_id       INT NOT NULL,
	album_id        INT NOT NULL,
	FOREIGN KEY (format_id) REFERENCES media_format(id),
	FOREIGN KEY (album_id)  REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS developer
(
	id			  	INT NOT NULL AUTO_INCREMENT,
	name          	VARCHAR(50) NOT NULL,
	country      	VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS game
(
	id      		INT NOT NULL AUTO_INCREMENT,
	name         	VARCHAR(50) NOT NULL,
	release_year 	YEAR,
	developer_id 	INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (developer_id) REFERENCES developer(id)
);

CREATE TABLE IF NOT EXISTS game_format
(
	format_id       INT NOT NULL,
	game_id        INT NOT NULL,
	FOREIGN KEY (format_id) REFERENCES media_format(id),
	FOREIGN KEY (game_id)  REFERENCES game(id)
);

CREATE TABLE IF NOT EXISTS console
(
	id    			INT NOT NULL AUTO_INCREMENT,
	name         	VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS game_console
(
	console_id    	INT NOT NULL,
	game_id      	INT NOT NULL,
	FOREIGN KEY (console_id) REFERENCES console(id),
	FOREIGN KEY (game_id) REFERENCES game(id)
);

CREATE TABLE IF NOT EXISTS game_genre
(
	genre_id    	INT NOT NULL,
	game_id     	INT NOT NULL,
	FOREIGN KEY (genre_id) REFERENCES genre(id),
	FOREIGN KEY (game_id) REFERENCES game(id)
);

CREATE TABLE IF NOT EXISTS game_publisher
(
	game_id      	INT NOT NULL,
	publisher_id 	INT NOT NULL,
	FOREIGN KEY (game_id) REFERENCES game(id),
	FOREIGN KEY	(publisher_id) REFERENCES publisher(id)
);

/*

DROP TABLE game_genre;
DROP TABLE game_publisher;
DROP TABLE game_format;
DROP TABLE game_console;
DROP TABLE game;
DROP TABLE developer;
DROP TABLE console;
DROP TABLE album_format;
DROP TABLE album_genre;
DROP TABLE album_artist;
DROP TABLE artist;
DROP TABLE album;
DROP TABLE book_format;
DROP TABLE book_genre;
DROP TABLE book_illustrator;
DROP TABLE book_author;
DROP TABLE book_publisher;
DROP TABLE book;
DROP TABLE person;
DROP TABLE publisher;
DROP TABLE genre;
DROP TABLE media_format;
DROP TABLE media;

DROP DATABASE collection;

CREATE INDEX media_format_index
ON media_format(name);

CREATE INDEX genre_index
ON genre(name);

DROP INDEX media_format_index
  ON media_format;
  
DROP INDEX genre_index
  ON genre;
  
*/