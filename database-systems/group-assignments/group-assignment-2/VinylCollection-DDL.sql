-- Group Assignment # 2
-- Vinyl Collection Database Creation Script
-- Group 4 Members: Jackson Coghill, Lixdel Louisse Aggabao, Correy Wilkinson
-- 
-- 
--
-- should be run while connected as 'sys as sysdba'
--

-- Create STORAGE
CREATE TABLESPACE vinylCollection
  DATAFILE 'vinylCollection.dat' SIZE 40M 
  ONLINE; 
  
-- Create Users
CREATE USER group4User IDENTIFIED BY group4Password ACCOUNT UNLOCK
	DEFAULT TABLESPACE vinylCollection
	QUOTA 20M ON vinylCollection;
	
-- Create ROLES
CREATE ROLE applicationAdmin;

-- Grant PRIVILEGES
GRANT ALL PRIVILEGES TO applicationAdmin;

GRANT applicationAdmin TO group4User;

-- NOW we can connect as the applicationAdmin and create the stored procedures, tables, and triggers

CONNECT group4User/group4Password;

-- CREATE TABLES
CREATE TABLE Shelf (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Name VARCHAR2(50) NOT NULL,
	Capacity NUMBER NULL
);

CREATE TABLE Vinyl (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Title VARCHAR2(50) NOT NULL,
	ReleaseDate DATE NULL,
	Label VARCHAR2(50) NULL,
	Producer VARCHAR2(50) NULL,
	CatalogNumber VARCHAR2(20) NULL
);

CREATE TABLE VinylShelf (
	VinylID NUMBER NOT NULL,
	ShelfID NUMBER NOT NULL,
	StartTime TIMESTAMP NOT NULL,
	EndTime TIMESTAMP NULL,
	PRIMARY KEY (VinylID, ShelfID),
	CONSTRAINT FkVinylShelf_VinylID FOREIGN KEY (VinylID)
		REFERENCES Vinyl(ID),
	CONSTRAINT FkVinylShelf_ShelfID FOREIGN KEY (ShelfID)
		REFERENCES Shelf(ID)
);

CREATE TABLE Condition (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	State VARCHAR2(100) NOT NULL
);

CREATE TABLE VinylCondition (
	VinylID NUMBER NOT NULL,
	ConditionID NUMBER NOT NULL,
	StartTime TIMESTAMP NOT NULL,
	EndTime TIMESTAMP NULL,
	PRIMARY KEY (VinylID, ConditionID),
	CONSTRAINT FkVinylCondition_VinylID FOREIGN KEY (VinylID)
		REFERENCES Vinyl(ID),
	CONSTRAINT FkVinylCondition_ConditionID FOREIGN KEY (ConditionID)
		REFERENCES Condition(ID)
);

CREATE TABLE Musician (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY
);

CREATE TABLE MusicianName (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Name VARCHAR2(100) NOT NULL
);

CREATE TABLE MusicianMusicianName (
	MusicianID NUMBER NOT NULL,
	MusicianNameID NUMBER NOT NULL,
	StartTime TIMESTAMP NOT NULL,
	EndTime TIMESTAMP NULL,
	PRIMARY KEY (MusicianID, MusicianNameID),
	CONSTRAINT MusicianMusicianName_MusicianID FOREIGN KEY (MusicianID)
		REFERENCES Musician(ID),
	CONSTRAINT MusicianMusicianName_MusicianNameID FOREIGN KEY (MusicianNameID)
		REFERENCES MusicianName(ID)
);

CREATE TABLE Country (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Name VARCHAR2(60) NOT NULL
);

CREATE TABLE MusicianCountry (
	MusicianID NUMBER NOT NULL,
	CountryID NUMBER NOT NULL,
	StartTime TIMESTAMP NOT NULL,
	EndTime TIMESTAMP NULL,
	PRIMARY KEY (MusicianID, CountryID),
	CONSTRAINT MusicianCountry_MusicianID FOREIGN KEY (MusicianID)
		REFERENCES Musician(ID),
	CONSTRAINT MusicianCountry_CountryID FOREIGN KEY (CountryID)
		REFERENCES Country(ID)
);

CREATE TABLE Instrumentalist (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Instrument VARCHAR2(50) NULL
);

CREATE TABLE Singer (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	VocalClassification VARCHAR2(50) NULL
);

CREATE TABLE Band (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	FormationDate DATE NULL,
	DisbandedDate DATE NULL,
	CONSTRAINT CkBand_Dates CHECK (DisbandedDate >= FormationDate)
);

CREATE TABLE MusicianRole (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	InstrumentalistID NUMBER NULL,
	SingerID NUMBER NULL,
	BandID NUMBER NULL,
	MusicianID NUMBER NOT NULL,
	StartTime TIMESTAMP NOT NULL,
	EndTime TIMESTAMP NULL,
	CONSTRAINT FkMusicianRole_MusicianID FOREIGN KEY (MusicianID)
		REFERENCES Musician(ID),
	CONSTRAINT CkMusicianRole_Type CHECK (
        	(InstrumentalistID IS NOT NULL AND SingerID IS NULL AND BandID IS NULL) OR
        	(InstrumentalistID IS NULL AND SingerID IS NOT NULL AND BandID IS NULL) OR
        	(InstrumentalistID IS NULL AND SingerID IS NULL AND BandID IS NOT NULL)
    	)
);

CREATE TABLE VinylMusician (
	VinylID NUMBER NOT NULL,
	MusicianID NUMBER NOT NULL,
	PRIMARY KEY (VinylID, MusicianID),
	CONSTRAINT FkVinylMusician_VinylID FOREIGN KEY (VinylID)
		REFERENCES Vinyl(ID),
	CONSTRAINT FkVinylMusician_MusicianID FOREIGN KEY (MusicianID)
		REFERENCES Musician(ID)
);

CREATE TABLE Song (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Duration VARCHAR2(10) NULL
);

CREATE TABLE SongTitle (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Title VARCHAR2(100) NOT NULL
);

CREATE TABLE SongSongTitle (
	SongID NUMBER NOT NULL,
	SongTitleID NUMBER NOT NULL,
	StartTime TIMESTAMP NOT NULL,
	EndTime TIMESTAMP NULL,
	PRIMARY KEY (SongID, SongTitleID),
	CONSTRAINT FkSongSongTitle_SongID FOREIGN KEY (SongID)
		REFERENCES Song(ID),
	CONSTRAINT FkSongSongTitle_SongTitleID FOREIGN KEY (SongTitleID)
		REFERENCES SongTitle(ID)
);

CREATE TABLE MusicianSong (
	MusicianID NUMBER NOT NULL,
	SongID NUMBER NOT NULL,
	PRIMARY KEY (MusicianID, SongID),
	CONSTRAINT FkMusicianSong_MusicianID FOREIGN KEY (MusicianID)
		REFERENCES Musician(ID),
	CONSTRAINT FkMusicianSong_SongID FOREIGN KEY (SongID)
		REFERENCES Song(ID)
);

CREATE TABLE Genre (
	ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	Name VARCHAR2(50) NOT NULL,
	Description VARCHAR2(150) NULL,
	CONSTRAINT UnGenre_Name UNIQUE (Name)
);

CREATE TABLE SongGenre (
	SongID NUMBER NOT NULL,
	GenreID NUMBER NOT NULL,
	PRIMARY KEY (SongID, GenreID),
	CONSTRAINT FkSongGenre_SongID FOREIGN KEY (SongID)
		REFERENCES Song(ID),
	CONSTRAINT FkSongGenre_GenreID FOREIGN KEY (GenreID)
		REFERENCES Genre(ID)
);

-- CREATE VIEWS
CREATE OR REPLACE VIEW VINYL_VIEW AS 
    SELECT VINYL.ID, VINYL.TITLE, VINYL.RELEASEDATE, VINYL.LABEL, VINYL.PRODUCER, VINYL.CATALOGNUMBER, SHELF.NAME AS SHELF_NAME, CONDITION.STATE
        FROM VINYL 
        LEFT JOIN VINYLSHELF
            ON VINYL.ID = VINYLSHELF.VINYLID
        LEFT JOIN SHELF
            ON VINYLSHELF.SHELFID = SHELF.ID 
        LEFT JOIN VINYLCONDITION
            ON VINYL.ID = VINYLCONDITION.VINYLID
        LEFT JOIN CONDITION
            ON VINYLCONDITION.CONDITIONID = CONDITION.ID
        WHERE
            (VINYLSHELF.ENDTIME is NULL)
                AND
            (VINYLCONDITION.ENDTIME is NULL);
        
CREATE OR REPLACE VIEW MUSICIAN_VIEW AS 
    SELECT MUSICIAN.ID, MUSICIANNAME.NAME AS MUSICIAN_NAME, COUNTRY.NAME AS COUNTRY_NAME, INSTRUMENTALIST.INSTRUMENT, SINGER.VOCALCLASSIFICATION, BAND.FORMATIONDATE AS BAND_FORMATIONDATE, BAND.DISBANDEDDATE AS BAND_DISBANDEDDATE
        FROM MUSICIAN 
        LEFT JOIN MUSICIANMUSICIANNAME
            ON MUSICIAN.ID = MUSICIANMUSICIANNAME.MUSICIANID
        LEFT JOIN MUSICIANNAME
            ON MUSICIANMUSICIANNAME.MUSICIANNAMEID = MUSICIANNAME.ID
        LEFT JOIN MUSICIANCOUNTRY
            ON MUSICIAN.ID = MUSICIANCOUNTRY.MUSICIANID
        LEFT JOIN COUNTRY
            ON MUSICIANCOUNTRY.COUNTRYID = COUNTRY.ID
        LEFT JOIN MUSICIANROLE
            ON MUSICIAN.ID = MUSICIANROLE.MUSICIANID
        LEFT JOIN INSTRUMENTALIST
            ON MUSICIANROLE.INSTRUMENTALISTID = INSTRUMENTALIST.ID
        LEFT JOIN SINGER
            ON MUSICIANROLE.SINGERID = SINGER.ID
        LEFT JOIN BAND
            ON MUSICIANROLE.BANDID = BAND.ID
        WHERE
            (MUSICIANCOUNTRY.ENDTIME is NULL)
                AND
            (MUSICIANMUSICIANNAME.ENDTIME is NULL)
                AND
            (MUSICIANROLE.ENDTIME IS NULL);
        
CREATE OR REPLACE VIEW SONG_VIEW AS 
    SELECT SONG.ID, SONGTITLE.TITLE, SONG.DURATION, GENRE.NAME AS GENRE_NAME
        FROM SONG 
        LEFT JOIN SONGSONGTITLE
            ON SONG.ID = SONGSONGTITLE.SONGID
        LEFT JOIN SONGTITLE
            ON SONGSONGTITLE.SONGTITLEID = SONGTITLE.ID
        LEFT JOIN SONGGENRE
            ON SONG.ID = SONGGENRE.SONGID
        LEFT JOIN GENRE
            ON SONGGENRE.GENREID = GENRE.ID
        WHERE
            SONGSONGTITLE.ENDTIME is NULL;
COMMIT;

