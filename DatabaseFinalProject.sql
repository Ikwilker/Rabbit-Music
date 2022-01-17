DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Artists;
DROP TABLE IF EXISTS Genres;

-- tables
-- Table: Albums
CREATE TABLE Albums (
    AlbumID int NOT NULL,
    AlbumName varchar(30) NOT NULL,
    Artists_ArtistID int NOT NULL,
    CONSTRAINT Albums_pk PRIMARY KEY (AlbumID)
) COMMENT 'All albums stored here';

-- Table: Artists
CREATE TABLE Artists (
    ArtistID int NOT NULL,
    ArtistName varchar(30) NOT NULL,
    Genres_GenreID int NOT NULL,
    CONSTRAINT Artists_pk PRIMARY KEY (ArtistID)
) COMMENT 'All artists stored here';

-- Table: Genres
CREATE TABLE Genres (
    GenreID int NOT NULL,
    GenreName varchar(20) NOT NULL,
    CONSTRAINT Genres_pk PRIMARY KEY (GenreID)
) COMMENT 'All music genres stored here';

-- Table: Songs
CREATE TABLE Songs (
    SongID int NOT NULL,
    SongName varchar(20) NOT NULL,
    Albums_AlbumID int NOT NULL,
    CONSTRAINT Songs_pk PRIMARY KEY (SongID)
) COMMENT 'All songs stored here';

-- foreign keys
-- Reference: Albums_Artists (table: Albums)
ALTER TABLE Albums ADD CONSTRAINT Albums_Artists FOREIGN KEY Albums_Artists (Artists_ArtistID)
    REFERENCES Artists (ArtistID);

-- Reference: Artists_Genres (table: Artists)
ALTER TABLE Artists ADD CONSTRAINT Artists_Genres FOREIGN KEY Artists_Genres (Genres_GenreID)
    REFERENCES Genres (GenreID);

-- Reference: Songs_Albums (table: Songs)
ALTER TABLE Songs ADD CONSTRAINT Songs_Albums FOREIGN KEY Songs_Albums (Albums_AlbumID)
    REFERENCES Albums (AlbumID);
	
	--Music data for populating the database

--Genre table
INSERT INTO Genres VALUES ('1', 'Pop');
INSERT INTO Genres VALUES ('2', 'Rap');

--Artist table
INSERT INTO Artists VALUES ('1', 'The Chainsmokers', '1');
INSERT INTO Artists VALUES ('2', 'Sam Smith', '1');
INSERT INTO Artists VALUES ('3', 'Post Malone', '2');
INSERT INTO Artists VALUES ('4', 'Nav', '2');
INSERT INTO Artists VALUES ('5', 'The Weeknd', '2');

--Album table
INSERT INTO Albums VALUES ('1', 'Bouquet', '1');
INSERT INTO Albums VALUES ('2', 'Collage', '1');
INSERT INTO Albums VALUES ('3', 'Memories, Do Not Open', '1');
INSERT INTO Albums VALUES ('4', 'Nirvana', '2');
INSERT INTO Albums VALUES ('5', 'In the Lonely Hour', '2');
INSERT INTO Albums VALUES ('6', 'August 26th', '3');
INSERT INTO Albums VALUES ('7', 'Stoney', '3');
INSERT INTO Albums VALUES ('8', 'Nav', '4');
INSERT INTO Albums VALUES ('9', 'Trilogy(1)', '5');
INSERT INTO Albums VALUES ('10', 'Trilogy(2)', '5');
INSERT INTO Albums VALUES ('11', 'Trilogy(3)', '5');
INSERT INTO Albums VALUES ('12', 'Kiss Land', '5');
INSERT INTO Albums VALUES ('13', 'Beauty Behind the Madness', '5');
INSERT INTO Albums VALUES ('14', 'Starboy', '5');

--Song table
INSERT INTO Songs VALUES ('1', 'Roses', '1');
INSERT INTO Songs VALUES ('2', 'New York City', '1');
INSERT INTO Songs VALUES ('3', 'Until You Were Gone', '1');
INSERT INTO Songs VALUES ('4', 'Waterbed', '1');
INSERT INTO Songs VALUES ('5', 'Good Intentions', '1');
INSERT INTO Songs VALUES ('6', 'Setting Fires', '2');
INSERT INTO Songs VALUES ('7', 'All We Know', '2');
INSERT INTO Songs VALUES ('8', 'Closer', '2');
INSERT INTO Songs VALUES ('9', 'Inside Out', '2');
INSERT INTO Songs VALUES ('10', 'Dont Let Me Down', '2');
INSERT INTO Songs VALUES ('11', 'Something Just Like This', '3');
INSERT INTO Songs VALUES ('12', 'Paris', '3');
INSERT INTO Songs VALUES ('13', 'Safe With Me', '4');
INSERT INTO Songs VALUES ('14', 'Nirvana', '4');
INSERT INTO Songs VALUES ('15', 'Ive Told You Now', '4');
INSERT INTO Songs VALUES ('16', 'Latch', '4');
INSERT INTO Songs VALUES ('17', 'Money on My Mind', '5');
INSERT INTO Songs VALUES ('18', 'Good Thing', '5');
INSERT INTO Songs VALUES ('19', 'Stay with Me', '5');
INSERT INTO Songs VALUES ('20', 'Leave Your Lover', '5');
INSERT INTO Songs VALUES ('21', 'Im Not the Only One', '5');
INSERT INTO Songs VALUES ('22', 'Ive Told You Now', '5');
INSERT INTO Songs VALUES ('23', 'Like I Can', '5');
INSERT INTO Songs VALUES ('24', 'Life Support', '5');
INSERT INTO Songs VALUES ('25', 'Not in That Way', '5');
INSERT INTO Songs VALUES ('26', 'Lay Me Down', '5');
INSERT INTO Songs VALUES ('27', 'Never Understand', '6');
INSERT INTO Songs VALUES ('28', 'Money Made Me Do It', '6');
INSERT INTO Songs VALUES ('29', 'Git Wit U', '6');
INSERT INTO Songs VALUES ('30', 'God Damn', '6');
INSERT INTO Songs VALUES ('31', 'Fuck', '6');
INSERT INTO Songs VALUES ('32', '40 Funk', '6');
INSERT INTO Songs VALUES ('33', 'Monte', '6');
INSERT INTO Songs VALUES ('34', 'Hollywood Dreams/Come Down', '6');
INSERT INTO Songs VALUES ('35', 'Lonely', '6');
INSERT INTO Songs VALUES ('36', 'Oh God', '6');
INSERT INTO Songs VALUES ('37', 'Broken Whiskey Glass', '7');
INSERT INTO Songs VALUES ('38', 'Big Lie', '7');
INSERT INTO Songs VALUES ('39', 'Deja Vu', '7');
INSERT INTO Songs VALUES ('40', 'No Option', '7');
INSERT INTO Songs VALUES ('41', 'Cold', '7');
INSERT INTO Songs VALUES ('42', 'White Iverson', '7');
INSERT INTO Songs VALUES ('43', 'I Fall Apart', '7');
INSERT INTO Songs VALUES ('44', 'Patient', '7');
INSERT INTO Songs VALUES ('45', 'Go FLex', '7');
INSERT INTO Songs VALUES ('46', 'Feel', '7');
INSERT INTO Songs VALUES ('47', 'Too Young', '7');
INSERT INTO Songs VALUES ('48', 'Congratulations', '7');
INSERT INTO Songs VALUES ('49', 'Up There', '7');
INSERT INTO Songs VALUES ('50', 'Yours Truly, Austin Post', '7');
INSERT INTO Songs VALUES ('51', 'Leave', '7');
INSERT INTO Songs VALUES ('52', 'Hit This Hard', '7');
INSERT INTO Songs VALUES ('53', 'Money Made Me Do It', '7');
INSERT INTO Songs VALUES ('54', 'Feeling Whitney', '7');
INSERT INTO Songs VALUES ('55', 'Myself', '8');
INSERT INTO Songs VALUES ('56', 'Nav', '8');
INSERT INTO Songs VALUES ('57', 'My Mind', '8');
INSERT INTO Songs VALUES ('58', 'Good for It', '8');
INSERT INTO Songs VALUES ('59', 'Lonely', '8');
INSERT INTO Songs VALUES ('60', 'Up', '8');
INSERT INTO Songs VALUES ('61', 'Interlude', '8');
INSERT INTO Songs VALUES ('62', 'Sleep', '8');
INSERT INTO Songs VALUES ('63', 'Mariah', '8');
INSERT INTO Songs VALUES ('64', 'Some Way', '8');
INSERT INTO Songs VALUES ('65', 'TTD', '8');
INSERT INTO Songs VALUES ('66', 'High For This', '9');
INSERT INTO Songs VALUES ('67', 'What You Need', '9');
INSERT INTO Songs VALUES ('68', 'High Of Balloons/Glass Table Girls', '9');
INSERT INTO Songs VALUES ('69', 'The Morning', '9');
INSERT INTO Songs VALUES ('70', 'Wicket Games', '9');
INSERT INTO Songs VALUES ('71', 'The Party & The After Party', '9');
INSERT INTO Songs VALUES ('72', 'Coming Down', '9');
INSERT INTO Songs VALUES ('73', 'Loft Music', '9');
INSERT INTO Songs VALUES ('74', 'The Knowing', '9');
INSERT INTO Songs VALUES ('75', 'Twenty Eight', '9');
INSERT INTO Songs VALUES ('76', 'Lonely Star', '10');
INSERT INTO Songs VALUES ('77', 'Life Of The Party', '10');
INSERT INTO Songs VALUES ('78', 'Thursday', '10');
INSERT INTO Songs VALUES ('79', 'The Zone', '10');
INSERT INTO Songs VALUES ('80', 'The Birds Pt. 1', '10');
INSERT INTO Songs VALUES ('81', 'The Birds Pt. 2', '10');
INSERT INTO Songs VALUES ('82', 'Gone', '10');
INSERT INTO Songs VALUES ('83', 'Rolling Stone''10');
INSERT INTO Songs VALUES ('84', 'Heaven Or Las Vegas', '10');
INSERT INTO Songs VALUES ('85', 'Valerie', '10');
INSERT INTO Songs VALUES ('86', 'D.D', '11');
INSERT INTO Songs VALUES ('87', 'Montreal', '11');
INSERT INTO Songs VALUES ('88', 'Outside', '11');
INSERT INTO Songs VALUES ('89', 'XO/The Host', '11');
INSERT INTO Songs VALUES ('90', 'Initiation', '11');
INSERT INTO Songs VALUES ('91', 'Same Old Song', '11');
INSERT INTO Songs VALUES ('92', 'The Fall', '11');
INSERT INTO Songs VALUES ('93', 'Next', '11');
INSERT INTO Songs VALUES ('94', 'Echoes of Silence', '11');
INSERT INTO Songs VALUES ('95', 'Till Dawn (Here Comes The Sun)', '11');
INSERT INTO Songs VALUES ('96', 'Professional', '12');
INSERT INTO Songs VALUES ('97', 'The Town', '12');
INSERT INTO Songs VALUES ('98', 'Adaptation', '12');
INSERT INTO Songs VALUES ('99', 'Love In The Sky', '12');
INSERT INTO Songs VALUES ('100', 'Belong To The World', '12');
INSERT INTO Songs VALUES ('101', 'Live For', '12');
INSERT INTO Songs VALUES ('102', 'Wanderlust', '12');
INSERT INTO Songs VALUES ('103', 'Kiss Land', '12');
INSERT INTO Songs VALUES ('104', 'Pretty', '12');
INSERT INTO Songs VALUES ('105', 'Tears In The Rain', '12');
INSERT INTO Songs VALUES ('106', 'Real Life', '13');
INSERT INTO Songs VALUES ('107', 'Losers', '13');
INSERT INTO Songs VALUES ('108', 'Tell Your Friends', '13');
INSERT INTO Songs VALUES ('109', 'Often', '13');
INSERT INTO Songs VALUES ('110', 'The Hills', '13');
INSERT INTO Songs VALUES ('111', 'Acquainted', '13');
INSERT INTO Songs VALUES ('112', 'Cant Feel My Face', '13');
INSERT INTO Songs VALUES ('113', 'Shameless', '13');
INSERT INTO Songs VALUES ('114', 'Earned It (Fifty Shades Of Grey)', '13');
INSERT INTO Songs VALUES ('115', 'In The Night', '13');
INSERT INTO Songs VALUES ('116', 'As You Are', '13');
INSERT INTO Songs VALUES ('117', 'Dark Times', '13');
INSERT INTO Songs VALUES ('118', 'Prisoner', '13');
INSERT INTO Songs VALUES ('119', 'Angel', '13');
INSERT INTO Songs VALUES ('120', 'Starboy', '14');
INSERT INTO Songs VALUES ('121', 'Party Monster', '14');
INSERT INTO Songs VALUES ('122', 'False Alarm', '14');
INSERT INTO Songs VALUES ('123', 'Reminder', '14');
INSERT INTO Songs VALUES ('124', 'Rockin', '14');
INSERT INTO Songs VALUES ('125', 'Secrets', '14');
INSERT INTO Songs VALUES ('126', 'True Colors', '14');
INSERT INTO Songs VALUES ('127', 'Stargirl Interlude', '14');
INSERT INTO Songs VALUES ('128', 'Sidewalks', '14');
INSERT INTO Songs VALUES ('129', 'Six Feet Under', '14');
INSERT INTO Songs VALUES ('130', 'Love To Lay', '14');
INSERT INTO Songs VALUES ('131', 'A Lonely Night', '14');
INSERT INTO Songs VALUES ('132', 'Attention', '14');
INSERT INTO Songs VALUES ('133', 'Ordinary Life', '14');
INSERT INTO Songs VALUES ('134', 'Nothing Without You', '14');
INSERT INTO Songs VALUES ('135', 'All I Know', '14');
INSERT INTO Songs VALUES ('136', 'Die For You', '14');
INSERT INTO Songs VALUES ('137', 'I Feel It Coming', '14');

--This query lists each genre and then lists each artists under that genre
SELECT GenreName as 'Genre', GROUP_CONCAT(Artists.ArtistName) AS 'Artist' FROM Artists NATURAL JOIN Genres WHERE Artists.Genres_GenreID = Genres.GenreID GROUP BY (GenreName);
--This query is supposed to be the nested query loop but I get an error that says the subquery returns more than 1 row. I have not been able to figure out how to fix this error
SELECT Songs.SongName FROM Songs WHERE Songs.Albums_AlbumID = (SELECT AlbumID FROM Albums WHERE Albums.Artists_ArtistID = 3);
--This query was the one that you asked for. It lists every album in each genre
SELECT GenreName as 'Genre', GROUP_CONCAT(Albums.AlbumName) AS 'Album Name' FROM Genres NATURAL JOIN Artists NATURAL JOIN Albums WHERE Genres.GenreID = Artists.Genres_GenreID AND Artists.ArtistID = Albums.Artists_ArtistID GROUP BY (GenreName);