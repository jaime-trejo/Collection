
/*
Insert data into the tables in order to get a drop down select for format,genre and console
*/
INSERT INTO media(name)
VALUES ('Book');
INSERT INTO media(name)
VALUES ('Music');
INSERT INTO media(name)
VALUES ('Game');

INSERT INTO media_format(name,media_id)
VALUES ('Audiobook',1);
INSERT INTO media_format(name,media_id)
VALUES ('E-book',1);
INSERT INTO media_format(name,media_id)
VALUES ('Paperback',1);
INSERT INTO media_format(name,media_id)
VALUES ('Hardcover',1);
INSERT INTO media_format(name,media_id)
VALUES ('Comic Hardcover',1);
INSERT INTO media_format(name,media_id)
VALUES ('Comic Paperback',1);
INSERT INTO media_format(name,media_id)
VALUES ('Comic Issue',1);
INSERT INTO media_format(name,media_id)
VALUES ('Graphic Novel',1);
INSERT INTO media_format(name,media_id)
VALUES ('CD',2);
INSERT INTO media_format(name,media_id)
VALUES ('Digital',2);
INSERT INTO media_format(name,media_id)
VALUES ('Vinyl',2);
INSERT INTO media_format(name,media_id)
VALUES ('Physical',3);
INSERT INTO media_format(name,media_id)
VALUES ('Digital',3);

INSERT INTO genre(name,media_id)
VALUES('Science Fiction',1);
INSERT INTO genre(name,media_id)
VALUES('Satire',1);
INSERT INTO genre(name,media_id)
VALUES('Drama',1);
INSERT INTO genre(name,media_id)
VALUES('Action and Adventure',1);
INSERT INTO genre(name,media_id)
VALUES('Romance',1);
INSERT INTO genre(name,media_id)
VALUES('Mystery',1);
INSERT INTO genre(name,media_id)
VALUES('Horror',1);
INSERT INTO genre(name,media_id)
VALUES('Self Help',1);
INSERT INTO genre(name,media_id)
VALUES('Health',1);
INSERT INTO genre(name,media_id)
VALUES('Guide',1);
INSERT INTO genre(name,media_id)
VALUES('Travel',1);
INSERT INTO genre(name,media_id)
VALUES('Children',1);
INSERT INTO genre(name,media_id)
VALUES('Religion, Spirituality & New Age',1);
INSERT INTO genre(name,media_id)
VALUES('Science',1);
INSERT INTO genre(name,media_id)
VALUES('History',1);
INSERT INTO genre(name,media_id)
VALUES('Math',1);
INSERT INTO genre(name,media_id)
VALUES('Anthology',1);
INSERT INTO genre(name,media_id)
VALUES('Poetry',1);
INSERT INTO genre(name,media_id)
VALUES('Encyclopedia',1);
INSERT INTO genre(name,media_id)
VALUES('Dictionary',1);
INSERT INTO genre(name,media_id)
VALUES('Art',1);
INSERT INTO genre(name,media_id)
VALUES('Cookbook',1);
INSERT INTO genre(name,media_id)
VALUES('Diary',1);
INSERT INTO genre(name,media_id)
VALUES('Journal',1);
INSERT INTO genre(name,media_id)
VALUES('Biography',1);
INSERT INTO genre(name,media_id)
VALUES('Autobiography',1);
INSERT INTO genre(name,media_id)
VALUES('Fantasy',1);

INSERT INTO genre(name,media_id)
VALUES('Alternative',2);
INSERT INTO genre(name,media_id)
VALUES('Blues',2);
INSERT INTO genre(name,media_id)
VALUES('Classical',2);
INSERT INTO genre(name,media_id)
VALUES('Country',2);
INSERT INTO genre(name,media_id)
VALUES('Dance',2);
INSERT INTO genre(name,media_id)
VALUES('Electronic',2);
INSERT INTO genre(name,media_id)
VALUES('Hip Hop/Rap',2);
INSERT INTO genre(name,media_id)
VALUES('Indie',2);
INSERT INTO genre(name,media_id)
VALUES('Jazz',2);
INSERT INTO genre(name,media_id)
VALUES('Metal',2);
INSERT INTO genre(name,media_id)
VALUES('Opera',2);
INSERT INTO genre(name,media_id)
VALUES('R&B/Soul',2);
INSERT INTO genre(name,media_id)
VALUES('Reggae',2);
INSERT INTO genre(name,media_id)
VALUES('Rock',2);
INSERT INTO genre(name,media_id)
VALUES('Soundtrackr',2);
INSERT INTO genre(name,media_id)
VALUES('World',2);


INSERT INTO genre(name,media_id)
VALUES('Platformer',3);
INSERT INTO genre(name,media_id)
VALUES('Shooter',3);
INSERT INTO genre(name,media_id)
VALUES('Fighting',3);
INSERT INTO genre(name,media_id)
VALUES('Stealth',3);
INSERT INTO genre(name,media_id)
VALUES('Survival',3);
INSERT INTO genre(name,media_id)
VALUES('Rhythm',3);
INSERT INTO genre(name,media_id)
VALUES('Action-Adventure',3);
INSERT INTO genre(name,media_id)
VALUES('Visual Novel',3);
INSERT INTO genre(name,media_id)
VALUES('RPG',3);
INSERT INTO genre(name,media_id)
VALUES('Simulation',3);
INSERT INTO genre(name,media_id)
VALUES('Fantasy',3);
INSERT INTO genre(name,media_id)
VALUES('Strategy',3);
INSERT INTO genre(name,media_id)
VALUES('Sports',3);

INSERT INTO console(name)
VALUES('Playstation');
INSERT INTO console(name)
VALUES('Playstation 2');
INSERT INTO console(name)
VALUES('Playstation 3');
INSERT INTO console(name)
VALUES('Playstation 4');
INSERT INTO console(name)
VALUES('Playstation Vita');
INSERT INTO console(name)
VALUES('Nintendo 64');
INSERT INTO console(name)
VALUES('Gamecube');
INSERT INTO console(name)
VALUES('WII');
INSERT INTO console(name)
VALUES('WII U');
INSERT INTO console(name)
VALUES('Nintendo Switch');
INSERT INTO console(name)
VALUES('Nintendo DS');
INSERT INTO console(name)
VALUES('Nintendo 3DS');
INSERT INTO console(name)
VALUES('Game Boy Advance');

SELECT * FROM media;
SELECT * FROM media_format;
SELECT * FROM genre;
SELECT * FROM console;