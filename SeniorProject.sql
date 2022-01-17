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

-- Table: Users
CREATE TABLE Users (
    UserID int NOT NULL,
    UserName varchar(20) NOT NULL,
    Password varchar(20) NOT NULL,
    CONSTRAINT Users_pk PRIMARY KEY (UserID)
) COMMENT 'All user information';

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
	