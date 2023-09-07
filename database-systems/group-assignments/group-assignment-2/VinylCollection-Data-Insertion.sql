-- Group Assignment # 2
-- Vinyl Collection Database Population Script for Initial Data
-- Group 4 Members: Jackson Coghill, Lixdel Louisse Aggabao, Correy Wilkinson
-- 
-- 
--
-- should be run while connected as 'sys as sysdba'
--

DECLARE

    currentDate date;
	CountryId number;
	ConditionID number;
	GenreID number;
	MusicianID number;
    MusicianNameID number;
    RoleID number;
    ShelfID number;
	SongID number;
    TitleID number;
	VinylID number;
    
BEGIN
	-- get the current date and set it to the currentDate variable
    currentDate := SYSDATE;

	-- Insert Shelf data
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 01', 30);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 02', 50);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 03', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 04', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 05', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 06', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 07', 80);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 08', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 09', 50);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 10', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 11', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 12', 90);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 13', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 14', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 15', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 16', 50);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 17', 50);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 18', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 19', 100);
    INSERT INTO Shelf (Name, Capacity) VALUES ('Shelf 20', 100);

	-- Insert Condition data
	INSERT INTO Condition(State) Values('Mint');
    INSERT INTO Condition(State) Values('Near Mint');
    INSERT INTO Condition(State) Values('Very Good Plus');
    INSERT INTO Condition(State) Values('Very Good');
    INSERT INTO Condition(State) Values('Good');
    INSERT INTO Condition(State) Values('Poor');

	-- Insert Countries data
	INSERT INTO Country (Name) VALUES ('Afghanistan');
    INSERT INTO Country (Name) VALUES ('Albania');
    INSERT INTO Country (Name) VALUES ('Algeria');
    INSERT INTO Country (Name) VALUES ('Andorra');
    INSERT INTO Country (Name) VALUES ('Angola');
    INSERT INTO Country (Name) VALUES ('Antigua and Barbuda');
    INSERT INTO Country (Name) VALUES ('Argentina');
    INSERT INTO Country (Name) VALUES ('Armenia');
    INSERT INTO Country (Name) VALUES ('Austria');
    INSERT INTO Country (Name) VALUES ('Azerbaijan');
    INSERT INTO Country (Name) VALUES ('Bahrain');
    INSERT INTO Country (Name) VALUES ('Bangladesh');
    INSERT INTO Country (Name) VALUES ('Barbados');
    INSERT INTO Country (Name) VALUES ('Belarus');
    INSERT INTO Country (Name) VALUES ('Belgium');
    INSERT INTO Country (Name) VALUES ('Belize');
    INSERT INTO Country (Name) VALUES ('Benin');
    INSERT INTO Country (Name) VALUES ('Bhutan');
    INSERT INTO Country (Name) VALUES ('Bolivia');
    INSERT INTO Country (Name) VALUES ('Bosnia and Herzegovina');
    INSERT INTO Country (Name) VALUES ('Botswana');
    INSERT INTO Country (Name) VALUES ('Brazil');
    INSERT INTO Country (Name) VALUES ('Brunei');
    INSERT INTO Country (Name) VALUES ('Bulgaria');
    INSERT INTO Country (Name) VALUES ('Burkina Faso');
    INSERT INTO Country (Name) VALUES ('Burundi');
    INSERT INTO Country (Name) VALUES ('Cabo Verde');
    INSERT INTO Country (Name) VALUES ('Cambodia');
    INSERT INTO Country (Name) VALUES ('Cameroon'); 
    INSERT INTO Country (Name) VALUES ('Canada');
    INSERT INTO Country (Name) VALUES ('Central African Republic');
    INSERT INTO Country (Name) VALUES ('Chad');
    INSERT INTO Country (Name) VALUES ('Channel Islands');
    INSERT INTO Country (Name) VALUES ('Chile');
    INSERT INTO Country (Name) VALUES ('China');
    INSERT INTO Country (Name) VALUES ('Colombia');
    INSERT INTO Country (Name) VALUES ('Comoros');
    INSERT INTO Country (Name) VALUES ('Congo');
    INSERT INTO Country (Name) VALUES ('Costa Rica');
    INSERT INTO Country (Name) VALUES ('Croatia');
    INSERT INTO Country (Name) VALUES ('Cuba');
    INSERT INTO Country (Name) VALUES ('Cyprus');
    INSERT INTO Country (Name) VALUES ('Czech Republic');
    INSERT INTO Country (Name) VALUES ('Denmark');
    INSERT INTO Country (Name) VALUES ('Djibouti');
    INSERT INTO Country (Name) VALUES ('Dominica');
    INSERT INTO Country (Name) VALUES ('Dominican Republic');
    INSERT INTO Country (Name) VALUES ('DR Congo');
    INSERT INTO Country (Name) VALUES ('Ecuador');
    INSERT INTO Country (Name) VALUES ('Egypt');
    INSERT INTO Country (Name) VALUES ('El Salvador');
    INSERT INTO Country (Name) VALUES ('Equatorial Guinea');
    INSERT INTO Country (Name) VALUES ('Eritrea');
    INSERT INTO Country (Name) VALUES ('Estonia');
    INSERT INTO Country (Name) VALUES ('Eswatini');
    INSERT INTO Country (Name) VALUES ('Ethiopia');
    INSERT INTO Country (Name) VALUES ('Faeroe Islands');
    INSERT INTO Country (Name) VALUES ('Finland');
    INSERT INTO Country (Name) VALUES ('France');
    INSERT INTO Country (Name) VALUES ('French Guiana');
    INSERT INTO Country (Name) VALUES ('Gabon');
    INSERT INTO Country (Name) VALUES ('Gambia');
    INSERT INTO Country (Name) VALUES ('Georgia');
    INSERT INTO Country (Name) VALUES ('Germany');
    INSERT INTO Country (Name) VALUES ('Ghana');
    INSERT INTO Country (Name) VALUES ('Gibraltar');
    INSERT INTO Country (Name) VALUES ('Greece');
    INSERT INTO Country (Name) VALUES ('Grenada');
    INSERT INTO Country (Name) VALUES ('Guatemala');
    INSERT INTO Country (Name) VALUES ('Guinea');
    INSERT INTO Country (Name) VALUES ('Guinea-Bissau');
    INSERT INTO Country (Name) VALUES ('Guyana');
    INSERT INTO Country (Name) VALUES ('Haiti');
    INSERT INTO Country (Name) VALUES ('Holy See');
    INSERT INTO Country (Name) VALUES ('Honduras');
    INSERT INTO Country (Name) VALUES ('Hong Kong');
    INSERT INTO Country (Name) VALUES ('Hungary');
    INSERT INTO Country (Name) VALUES ('Iceland');
    INSERT INTO Country (Name) VALUES ('India');
    INSERT INTO Country (Name) VALUES ('Indonesia');
    INSERT INTO Country (Name) VALUES ('Iran');
    INSERT INTO Country (Name) VALUES ('Iraq');
    INSERT INTO Country (Name) VALUES ('Ireland');
    INSERT INTO Country (Name) VALUES ('Isle of Man');
    INSERT INTO Country (Name) VALUES ('Israel');
    INSERT INTO Country (Name) VALUES ('Italy');
    INSERT INTO Country (Name) VALUES ('Ivory Coast');
    INSERT INTO Country (Name) VALUES ('Jamaica');
    INSERT INTO Country (Name) VALUES ('Japan');
    INSERT INTO Country (Name) VALUES ('Jordan');
    INSERT INTO Country (Name) VALUES ('Kazakhstan');
    INSERT INTO Country (Name) VALUES ('Kenya');
    INSERT INTO Country (Name) VALUES ('Kuwait');
    INSERT INTO Country (Name) VALUES ('Kyrgyzstan');
    INSERT INTO Country (Name) VALUES ('Laos');
    INSERT INTO Country (Name) VALUES ('Latvia');
    INSERT INTO Country (Name) VALUES ('Lebanon');
    INSERT INTO Country (Name) VALUES ('Lesotho');
    INSERT INTO Country (Name) VALUES ('Liberia');
    INSERT INTO Country (Name) VALUES ('Libya');
    INSERT INTO Country (Name) VALUES ('Liechtenstein');
    INSERT INTO Country (Name) VALUES ('Lithuania');
    INSERT INTO Country (Name) VALUES ('Luxembourg');
    INSERT INTO Country (Name) VALUES ('Macao');
    INSERT INTO Country (Name) VALUES ('Madagascar');
    INSERT INTO Country (Name) VALUES ('Malawi');
    INSERT INTO Country (Name) VALUES ('Malaysia');
    INSERT INTO Country (Name) VALUES ('Maldives');
    INSERT INTO Country (Name) VALUES ('Mali');
    INSERT INTO Country (Name) VALUES ('Malta');
    INSERT INTO Country (Name) VALUES ('Mauritania');
    INSERT INTO Country (Name) VALUES ('Mauritius');
    INSERT INTO Country (Name) VALUES ('Mayotte');
    INSERT INTO Country (Name) VALUES ('Mexico');
    INSERT INTO Country (Name) VALUES ('Moldova');
    INSERT INTO Country (Name) VALUES ('Monaco');
    INSERT INTO Country (Name) VALUES ('Mongolia');
    INSERT INTO Country (Name) VALUES ('Montenegro');
    INSERT INTO Country (Name) VALUES ('Morocco');
    INSERT INTO Country (Name) VALUES ('Mozambique');
    INSERT INTO Country (Name) VALUES ('Myanmar');
    INSERT INTO Country (Name) VALUES ('Namibia');
    INSERT INTO Country (Name) VALUES ('Nepal');
    INSERT INTO Country (Name) VALUES ('Netherlands');
    INSERT INTO Country (Name) VALUES ('Nicaragua');
    INSERT INTO Country (Name) VALUES ('Niger');
    INSERT INTO Country (Name) VALUES ('Nigeria');
    INSERT INTO Country (Name) VALUES ('North Korea');
    INSERT INTO Country (Name) VALUES ('North Macedonia');
    INSERT INTO Country (Name) VALUES ('Norway');
    INSERT INTO Country (Name) VALUES ('Oman');
    INSERT INTO Country (Name) VALUES ('Pakistan');
    INSERT INTO Country (Name) VALUES ('Panama');
    INSERT INTO Country (Name) VALUES ('Paraguay');
    INSERT INTO Country (Name) VALUES ('Peru');
    INSERT INTO Country (Name) VALUES ('Philippines');
    INSERT INTO Country (Name) VALUES ('Poland');
    INSERT INTO Country (Name) VALUES ('Portugal');
    INSERT INTO Country (Name) VALUES ('Qatar');
    INSERT INTO Country (Name) VALUES ('Reunion');
    INSERT INTO Country (Name) VALUES ('Romania');
    INSERT INTO Country (Name) VALUES ('Russia');
    INSERT INTO Country (Name) VALUES ('Rwanda');
    INSERT INTO Country (Name) VALUES ('Saint Helena');
    INSERT INTO Country (Name) VALUES ('Saint Kitts and Nevis');
    INSERT INTO Country (Name) VALUES ('Saint Lucia');
    INSERT INTO Country (Name) VALUES ('Saint Vincent and the Grenadines');
    INSERT INTO Country (Name) VALUES ('San Marino');
    INSERT INTO Country (Name) VALUES ('Sao Tome');
    INSERT INTO Country (Name) VALUES ('Saudi Arabia');
    INSERT INTO Country (Name) VALUES ('Senegal');
    INSERT INTO Country (Name) VALUES ('Serbia');
    INSERT INTO Country (Name) VALUES ('Seychelles');
    INSERT INTO Country (Name) VALUES ('Sierra Leone');
    INSERT INTO Country (Name) VALUES ('Singapore');
    INSERT INTO Country (Name) VALUES ('Slovakia');
    INSERT INTO Country (Name) VALUES ('Slovenia');
    INSERT INTO Country (Name) VALUES ('Somalia');
    INSERT INTO Country (Name) VALUES ('South Africa');
    INSERT INTO Country (Name) VALUES ('South Korea');
    INSERT INTO Country (Name) VALUES ('South Sudan');
    INSERT INTO Country (Name) VALUES ('Spain');
    INSERT INTO Country (Name) VALUES ('Sri Lanka');
    INSERT INTO Country (Name) VALUES ('State of Palestine');
    INSERT INTO Country (Name) VALUES ('Sudan');
    INSERT INTO Country (Name) VALUES ('Suriname');
    INSERT INTO Country (Name) VALUES ('Sweden');
    INSERT INTO Country (Name) VALUES ('Switzerland');
    INSERT INTO Country (Name) VALUES ('Syria');
    INSERT INTO Country (Name) VALUES ('Taiwan');
    INSERT INTO Country (Name) VALUES ('Tajikistan');
    INSERT INTO Country (Name) VALUES ('Tanzania');
    INSERT INTO Country (Name) VALUES ('Thailand');
    INSERT INTO Country (Name) VALUES ('The Bahamas');
    INSERT INTO Country (Name) VALUES ('Timor-Leste');
    INSERT INTO Country (Name) VALUES ('Togo');
    INSERT INTO Country (Name) VALUES ('Trinidad and Tobago');
    INSERT INTO Country (Name) VALUES ('Tunisia');
    INSERT INTO Country (Name) VALUES ('Turkey');
    INSERT INTO Country (Name) VALUES ('Turkmenistan');
    INSERT INTO Country (Name) VALUES ('Uganda');
    INSERT INTO Country (Name) VALUES ('Ukraine');
    INSERT INTO Country (Name) VALUES ('United Arab Emirates');
    INSERT INTO Country (Name) VALUES ('United Kingdom');
    INSERT INTO Country (Name) VALUES ('United States');
    INSERT INTO Country (Name) VALUES ('Uruguay');
    INSERT INTO Country (Name) VALUES ('Uzbekistan');
    INSERT INTO Country (Name) VALUES ('Venezuela');
    INSERT INTO Country (Name) VALUES ('Vietnam');
    INSERT INTO Country (Name) VALUES ('Western Sahara');
    INSERT INTO Country (Name) VALUES ('Yemen');
    INSERT INTO Country (Name) VALUES ('Zambia');
    INSERT INTO Country (Name) VALUES ('Zimbabwe');

	-- Insert Genre data
	INSERT INTO Genre (Name, Description) VALUES ('R&.B', 'Rhythm and blues, predominantly African-American, incorporates blues, gospel, soul');
	INSERT INTO Genre (Name, Description) VALUES ('Rock', 'Broad genre, drawing from blues, R&.B, country, and folk');
	INSERT INTO Genre (Name, Description) VALUES ('Punk', 'Anti-establishment, DIY, draws from rock, folk, reggae');
	INSERT INTO Genre (Name, Description) VALUES ('Hip-hop', 'Strongly tied to rap, beat driven, draws from R&.B, blues, jazz, funk, disco');
	INSERT INTO Genre (Name, Description) VALUES ('Glam Rock', 'Melding of rock, psychedelia, disco');
	INSERT INTO Genre (Name, Description) VALUES ('Folk', 'Singer-songwriter, string-instrument driven, related to traditional');
	INSERT INTO Genre (Name, Description) VALUES ('Jazz', 'Broad genre, originating from blues, ragtime, West African music');
	INSERT INTO Genre (Name, Description) VALUES ('Soul', 'Originated in African-American communities, related to R&.B, gospel');
	INSERT INTO Genre (Name, Description) VALUES ('Post-hardcore', 'Stemming from punk and hardcore, originated in 1980s U.S.A.');
	INSERT INTO Genre (Name, Description) VALUES ('Experimental', 'Boundary-pushing, may defy definition, sound exploration');
	INSERT INTO Genre (Name, Description) VALUES ('Blues', 'African-American cultural music, originating from work songs, spirituals');
	INSERT INTO Genre (Name, Description) VALUES ('Southern Rock', 'Incorporates blues, rock, country');
	INSERT INTO Genre (Name, Description) VALUES ('Surf Punk', 'Blending of punk attitude with surf instrumentals');

	-- Insert Musician data
	-- Stevie Wonder
    -- since it is just a lookup table, you just insert Default and it will create a new record and return the ID into MusicianID
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Stevie Wonder') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Keyboard') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);
    
    -- Grizzly Bear
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Grizzly Bear') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('2002-05-08', 'YYYY-MM-DD'), NULL) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);
    
    -- Vacation
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Vacation') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('2010-04-01', 'YYYY-MM-DD'), NULL) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);
    
    -- El Michels Affair
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('El Michels Affair') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('2000-11-20', 'YYYY-MM-DD'), NULL) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);
    
    -- David Bowie   
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('David Bowie') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United Kingdom';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);
    
    -- Gordon Lightfoot
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Gordon Lightfoot') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='Canada';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);
    
    -- Wynton Marsalis
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Wynton Marsalis') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Trumpet') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);    

    -- DJ Shadow
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('DJ Shadow') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Turntables') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);  
    
    -- Sade    
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Sade') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United Kingdom';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Singer (VocalClassification) VALUES ('Contralto') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, RoleID, NULL, MusicianID, currentDate, NULL);      
    
    -- The Pogues
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('The Pogues') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United Kingdom';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1982-03-07', 'YYYY-MM-DD'), TO_DATE('2014-07-04', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);    

    -- Genesis
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Genesis') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United Kingdom';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1967-12-15', 'YYYY-MM-DD'), TO_DATE('2000-01-24', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);       

    -- Prince and the Revolution
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Prince and the Revolution') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1979-09-05', 'YYYY-MM-DD'), TO_DATE('1986-06-13', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);   
    
    -- Fugazi
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Fugazi') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1986-05-25', 'YYYY-MM-DD'), TO_DATE('2003-05-08', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);       

    -- LCD Soundsystem
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('LCD Soundsystem') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('2002-12-31', 'YYYY-MM-DD'), NULL) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);   
    
    -- The Jimi Hendrix Experience
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('The Jimi Hendrix Experience') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1966-03-14', 'YYYY-MM-DD'), TO_DATE('1969-01-12', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);      
    
    -- Neil Young
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Neil Young') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='Canada';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);     
    
    -- Wes Montgomery
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Wes Montgomery') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);  
    
    -- Brian Eno
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Brian Eno') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United Kingdom';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Synthesizer') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);  
    
    -- Hound Dog Taylor and The House Rockers  
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Hound Dog Taylor and The House Rockers') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1971-03-07', 'YYYY-MM-DD'), TO_DATE('1975-12-12', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);       
    
    -- B.B. King
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('B.B. King') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);     
    
    -- Howlin' Wolf
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Howlin'' Wolf') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);   
    
    -- Joni Mitchell
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Joni Mitchell') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='Canada';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Instrumentalist (Instrument) VALUES ('Guitar') RETURNING ID INTO RoleID;
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (RoleID, NULL, NULL, MusicianID, currentDate, NULL);     
    
    -- The Barracudas
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('The Barracudas') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United Kingdom';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1979-01-31', 'YYYY-MM-DD'), TO_DATE('1984-10-19', 'YYYY-MM-DD')) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL);        
    
    -- Dickey Betts and Great Southern
    INSERT INTO Musician (ID) Values (DEFAULT) RETURNING ID INTO MusicianID;
    INSERT INTO MusicianName (Name) VALUES('Dickey Betts and Great Southern') RETURNING ID INTO MusicianNameID;
    INSERT INTO MusicianMusicianName (MusicianID, MusicianNameID, StartTime, EndTime) VALUES (MusicianID, MusicianNameID, currentDate, NULL);
    SELECT ID INTO CountryId FROM Country WHERE Name='United States';
    INSERT INTO MusicianCountry (MusicianID, CountryId, StartTime, EndTime) VALUES (MusicianID, CountryId, currentDate, NULL);
    INSERT INTO Band (FormationDate, DisbandedDate) VALUES (TO_DATE('1977-07-25', 'YYYY-MM-DD'), NULL) RETURNING ID INTO RoleID;
    -- use the RoleID to insert into whichever category they belong to, null the rest
    INSERT INTO MusicianRole (InstrumentalistID, SingerID, BandID, MusicianID, StartTime, EndTime) VALUES (NULL, NULL, RoleID, MusicianID, currentDate, NULL); 

	-- Insert Vinyl data
	-- Stevie Wonder - Songs in the Key of Life
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
        VALUES ('Songs in the Key of Life', TO_DATE('1976-09-28', 'YYYY-MM-DD'), 'Tamla', 'Stevie Wonder', 'T-340 U2') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 01';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Stevie Wonder'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- Grizzly Bear - Yellow House
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
       VALUES ('Yellow House', TO_DATE('2006-09-05', 'YYYY-MM-DD'), 'Warp', 'Chris Taylor', 'WARPLP147') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 01';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Grizzly Bear'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);    
    
    -- 'Grizzly Bear - Shields
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Shields', TO_DATE('2012-09-12', 'YYYY-MM-DD'), 'Warp', 'Chris Taylor', 'WARPLP229') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 02';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Grizzly Bear'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);   
    
    -- Vacation - Mouth Sounds #2699
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Mouth Sounds #2699', TO_DATE('2018-07-28', 'YYYY-MM-DD'), 'Let"s" Pretend Records', 'VACATION', 'LPR-172') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 02';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Near Mint';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Vacation'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);   
    
    -- El Michels Affair - The Abominable EP
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('The Abominable EP', TO_DATE('2021-10-22', 'YYYY-MM-DD'), 'Big Crown Records', 'Leon Michels', 'BC106-EP') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 02';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Near Mint';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'El Michels Affair'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);      
    
    -- David Bowie - Diamond Dogs
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Diamond Dogs', TO_DATE('1974-05-24', 'YYYY-MM-DD'), 'RCA', 'David Bowie', 'APL1-0576') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 02';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'David Bowie'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);    
    
    -- Gordon Lightfoot - Summer Side of Life
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Summer Side of Life', TO_DATE('1971-05-08', 'YYYY-MM-DD'), 'Reprise', 'Joseph Wissert', 'K44132') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 02';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Gordon Lightfoot'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- Wynton Marsalis - Wynton Marsalis
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Wynton Marsalis', TO_DATE('1982-01-08', 'YYYY-MM-DD'), 'Columbia', 'Herbie Hancock', 'FC37574') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 03';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Wynton Marsalis'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- DJ Shadow - Endtroducing...
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Endtroducing...', TO_DATE('1996-09-16', 'YYYY-MM-DD'), 'Mo""Wax', 'DJ Shadow', 'MW059') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 03';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'DJ Shadow'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);  
    
    -- Sade - Diamond Life
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Diamond Life', TO_DATE('1984-07-16', 'YYYY-MM-DD'), 'Epic', 'Robin Millar', 'ELS 4445') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 03';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Sade'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);  
    
    -- The Pogues - If I Should Fall From Grace With God
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('If I Should Fall From Grace With God', TO_DATE('1988-01-18', 'YYYY-MM-DD'), 'Island Records', 'Steve Lillywhite', '90872-1') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 03';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'The Pogues'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- Genesis - Selling England by the Pound
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Selling England by the Pound', TO_DATE('1973-09-28', 'YYYY-MM-DD'), 'Charisma', 'John Burns', 'FC 6060') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 03';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Genesis'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- Prince and the Revolution - Purple Rain
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Purple Rain', TO_DATE('1985-06-25', 'YYYY-MM-DD'), 'Warner Bros.', 'Prince and the Revolution', '925 110-1') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 01';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Prince and the Revolution'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);     
    
    -- Fugazi - End Hits
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('End Hits', TO_DATE('1998-04-28', 'YYYY-MM-DD'), 'Dischord Records', 'Fugazi', 'dis110v') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 01';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Fugazi'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);     
    
    -- Fugazi - In on the Kill Taker
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('In on the Kill Taker', TO_DATE('1993-06-30', 'YYYY-MM-DD'), 'Dischord Records', 'Ted Niceley', 'dis70v') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 01';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Fugazi'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- Neil Young - American Dream
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('American Dream', TO_DATE('2017-09-01', 'YYYY-MM-DD'), 'DFA', 'James Murphy', '88985456102') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 01';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Neil Young'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- LCD Soundsystem - 45:33
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('45:33', TO_DATE('2006-10-17', 'YYYY-MM-DD'), 'DFA', 'The DFA', 'DFA2163LP') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 04';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'LCD Soundsystem'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- The Jimi Hendrix Experience - The Cry of Love
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('45:33', TO_DATE('2006-10-17', 'YYYY-MM-DD'), 'DFA', 'The DFA', 'DFA2163LP') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 04';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'The Jimi Hendrix Experience'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- The Jimi Hendrix Experience - Axis: Bold as Love
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Axis - Bold as Love', TO_DATE('1967-12-01', 'YYYY-MM-DD'), 'Track', 'Chas Chandler', '613 003') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 04';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'The Jimi Hendrix Experience'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- Neil Young - Harvest
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Harvest', TO_DATE('1972-02-01', 'YYYY-MM-DD'), 'Reprise', 'Jack Nitzsche', 'MS 2032') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Neil Young'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- Wes Montgomery - Willow Weep for Me
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
      VALUES ('Willow Weep for Me', TO_DATE('1968-12-01', 'YYYY-MM-DD'), 'Verve', 'Esmond Edwards', 'SVLP 9238') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Wes Montgomery'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- Brian Eno - Reflection
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Reflection', TO_DATE('2017-01-01', 'YYYY-MM-DD'), 'Warp', 'Brian Eno', 'WARPLP280') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Brian Eno'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- Brian Eno - Lux
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Lux', TO_DATE('2012-11-13', 'YYYY-MM-DD'), 'Warp', 'Brian Eno', 'WARPLP231') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good Plus';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Brian Eno'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);
    
    -- Hound Dog Taylor and the House Rockers - Hound Dog Taylor and the HouseRockers
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Hound Dog Taylor and The HouseRockers', TO_DATE('1971-01-01', 'YYYY-MM-DD'), 'Alligator', 'Bruce Iglauer', 'AL 4701') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Hound Dog Taylor and The House Rockers'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);    
    
    -- B.B. King - Completely Well
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Completely Well', TO_DATE('1969-12-05', 'YYYY-MM-DD'), 'BluesWay', 'Bill Szymczyk', 'BLS 6037') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'B.B. King'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);    
    
    -- Howlin'' Wolf - Howlin'' Wolf
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Howlin'' Wolf', TO_DATE('1962-01-11', 'YYYY-MM-DD'), 'Chess', 'Ralph Bass', 'LP 1469') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Howlin'' Wolf'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);   
    
    -- Joni Mitchell - Hejira
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Hejira', TO_DATE('1976-11-01', 'YYYY-MM-DD'), 'Asylum', 'Joni Mitchell', 'K53053') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 05';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Joni Mitchell'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);  
    
    -- Joni Mitchell - Don Juan''s Reckless Daughter
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Don Juan''s Reckless Daughter', TO_DATE('1977-01-13', 'YYYY-MM-DD'), 'Asylum', 'Joni Mitchell', 'BB-701') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 06';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Joni Mitchell'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);  
    
    -- The Barracudas - Drop Out with The Barracudas
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Drop Out with The Barracudas', TO_DATE('1982-02-01', 'YYYY-MM-DD'), 'Voxx Records', 'John David', 'VOXX 200.00-') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 06';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Very Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'The Barracudas'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID); 
    
    -- Dickey Betts and Great Southern - Atlanta''s Burning Down
    INSERT INTO Vinyl (Title, ReleaseDate, Label, Producer, CatalogNumber) 
     VALUES ('Atlanta''s Burning Down', TO_DATE('1978-03-17', 'YYYY-MM-DD'), 'Arista', 'Dickey Betts', 'AB 4168') RETURNING ID INTO VinylID;
    SELECT ID INTO ShelfID FROM Shelf WHERE Name = 'Shelf 06';
    INSERT INTO VinylShelf (VinylID, ShelfID, StartTime, EndTime) VALUES (VinylID, ShelfID, currentDate, NULL);
    SELECT ID INTO ConditionID FROM Condition WHERE State = 'Good';
    INSERT INTO VinylCondition (VinylID, ConditionID, StartTime, EndTime) VALUES (VinylID, ConditionID, currentDate, NULL);
    SELECT ID INTO MusicianID FROM MusicianName WHERE Name = 'Dickey Betts and Great Southern'; 
    INSERT INTO VinylMusician (VinylID, MusicianID) VALUES (VinylID, MusicianID);

	-- Insert Song data
	    -- Stevie Wonder - Songs in the Key of Life----
    
    INSERT INTO Song (duration) values('7:06') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='R&.B';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Stevie Wonder';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Love''s in Need of Love Today') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('2:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Have a Talk With God') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('3:25') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Village Ghetto Land') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Contusion') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('3:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sir Duke') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Wish') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:36') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Knocks Me Off My Feet') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('3:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Pastime Paradise') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:14') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Summer Soft') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('6:16') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Ordinary Pain') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('6:34') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Isn''t She Lovely') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('6:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Joy Inside My Tears') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('8:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Black Man') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:48') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Ngiculela - Es Una Historia - I Am Singing') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('If It''s Magic') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('7:08') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('As') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('8:28') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Another Star') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    -- -- Grizzly Bear – Yellow House----
    
    INSERT INTO Song (duration) values('3:42') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Grizzly Bear';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Easier') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('5:14') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Knife') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
  
    INSERT INTO Song (duration) values('4:54') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Central and Remote') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  

    INSERT INTO Song (duration) values('6:24') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Little Brother') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:16') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Plans') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('4:56') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Marla') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    
    INSERT INTO Song (duration) values('5:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('On a Neck, On a Spit') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Reprise') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('6:14') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Colorado') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    -- --Grizzly Bear – Shields----
    
    INSERT INTO Song (duration) values('4:35') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sleeping Ute') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:24') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Speak in Rounds') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('1:02') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Adelma') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('5:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Yet Again') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:44') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Hunt') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('6:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('A Simple Answer') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('5:44') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('What"s Wrong?') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Gun-Shy') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('5:29') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Half Gate') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('7:08') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sun in Your Eyes') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    -- --VACATION – Mouth Sounds----
    
    INSERT INTO Song (duration) values('2:13') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Punk';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Vacation';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Action Road') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:07') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Broken or Breaking') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('1:35') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Takin'' Out the Trash') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:48') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('My Fake Life') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Born on a Base') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:08') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Deflector Head') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);         
    
    INSERT INTO Song (duration) values('1:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Leisure Miles') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('1:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Salmonella Candles') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('2:03') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Epileptic Soul') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('1:59') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('A Spectator''s Contest') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('1:57') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Skyline') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('2:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('A Lap as Ken Worthy') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    -- --EL Michels – Abominable EP----        
    INSERT INTO Song (duration) values('3:22') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Hip-hop';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'El Michels Affair';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Messy Grass') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:43') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Cham Cham') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Poison Song') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('3:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Uncut Gem') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('1:50') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Idhar Udhar') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:05') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Smoked') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:33') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Progress') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('3:31') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Running Hot') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('1:53') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Nasir') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --David Bowie – Diamond Dogs ----
    
    INSERT INTO Song (duration) values('1:00') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Glam Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'David Bowie';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Future Legend') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('6:04') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Diamond Dogs') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        

    INSERT INTO Song (duration) values('3:39') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sweet Thing') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Candidate') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:32') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sweet Thing (Reprise)') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('4:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Rebel Rebel') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:01') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Rock ''n'' Roll with Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:58') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('We Are the Dead') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('1984') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:21') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Big Brother') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('1:48') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Chant of the Ever Circling Skeletal Family') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    
    -- --Gordon Lightfoot – Summer Side of Life----    
    
    INSERT INTO Song (duration) values('2:43') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Folk';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Gordon Lightfoot';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('10 Degrees and Getting Colder') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Miguel') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:13') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Go My Way') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:05') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Summer Side of Life') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:26') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Cotton Jenny') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('2:56') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Talking in Your Sleep') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Nous Vivons Ensemble') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:21') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Same Old Loverman') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:48') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Redwood Hill') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:13') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Love and Maple Syrup') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('5:49') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Cabaret') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    -- --Wynton Marsalis – Wynton Marsalis----
    
    INSERT INTO Song (duration) values('8:14') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Jazz';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Wynton Marsalis';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Father Time') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('2:33') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I''ll Be There When the Time Comes') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:50') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('RJ') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('5:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Hesitation') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('7:24') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sister Cheryl') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('4:39') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Who Can I Turn To (When Nobody Needs Me)?') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('8:39') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Twilight') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --Dj Shadow – Endtroducing…----
    
    INSERT INTO Song (duration) values('0:49') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Hip-hop';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'DJ Shadow';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Best Foot Forward') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('6:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Building Steam with a Grain of Salt') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      

    INSERT INTO Song (duration) values('4:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Number Song') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('7:51') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Changeling / Transmission 1') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('5:08') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('What Does Your Soul Look Like (Part 4)') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('0:24') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Untitled') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('9:21') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Stem/Long Stem / Transmission 2') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:02') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Mutual Slump') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('1:57') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Organ Donor') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('0:43') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Why Hip Hop Sucks in ''96''') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:57') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Midnight in a Perfect World') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('9:23') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Napalm Brain/Scatter Brain') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('8:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('What Does Your Soul Look Like (Part 1 Blue Sky Revisit) / Transmission 3') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    -- --Sade - Diamond Life----
    
    INSERT INTO Song (duration) values('4:58') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Soul';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Sade';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Smooth Operator') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:41') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Your Love Is King') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('5:55') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Hang On to Your Love') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:39') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Frankie''s First Affair') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('When Am I Going to Make a Living') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('6:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Cherry Pie') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('5:23') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sally') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Will Be Your Friend') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('5:28') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Why Can''t We Live Together') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    -- -- The Pogues – If I should Fall from Grace ----    
    
    INSERT INTO Song (duration) values('2:20') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Punk';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'The Pogues';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('If I Should Fall from Grace with God') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('3:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Turkish Song of the Damned') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('2:47') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Bottle of Smoke') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('4:36') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Fairytale of New York') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:50') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Metropolis') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('5:28') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Thousands Are Sailing') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('South Australia') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('4:13') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('South Australia') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:03') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Medley: The Recruiting Sergeant/The Rocky Road to Dublin/The Galway Races') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('4:39') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Streets of Sorrow/Birmingham Six') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:32') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Lullaby of London') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('4:10') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Battle March Medley') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('2:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sit Down by the Fire') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:55') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Broad Majestic Shannon') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('1:01') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Worms') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --Genesis – Selling England----
    
    INSERT INTO Song (duration) values('8:04') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Genesis';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Dancing with the Moonlit Knight') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('4:10') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Know What I Like (In Your Wardrobe)') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('9:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Firth of Fifth') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:13') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('More Fool Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('11:43') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Battle of Epping Forest') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('4:15') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('After the Ordeal') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('10:41') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Cinema Show') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('1:58') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Aisle of Plenty') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       

    -- -- Prince and the Revolution – Purple Rain ----
    
    INSERT INTO Song (duration) values('4:39') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Prince and the Revolution';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Let''s Go Crazy') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:54') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Take Me With U') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     

    INSERT INTO Song (duration) values('5:15') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Beautiful Ones') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('3:59') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Computer Blue') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('4:15') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Darling Nikki') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    

    INSERT INTO Song (duration) values('5:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('When Doves Cry') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('2:51') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Would Die 4 U') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    
    INSERT INTO Song (duration) values('4:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Baby I''m A Star') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('8:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Purple Rain') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    -- --Fugazi – End Hits ----
    
    INSERT INTO Song (duration) values('2:12') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Post-hardcore';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Fugazi';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Break') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Place Position') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:51') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Recap Modotti') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('No Surprise') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:29') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Five Corporations') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('2:01') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Caustic Acrostic') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:53') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Closed Captioned') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('5:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Floating Boy') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:21') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Foreman''s Dog') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:29') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Arpeggiator') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:57') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Guilford Fall') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:09') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Pink Frosty') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:41') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('F/D') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);         
    
    -- --Fugazi – In on the Kill Taker ----
    
    INSERT INTO Song (duration) values('2:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Facet Squared') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('2:04') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Public Witness Program') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:13') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Returning The Screw') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('4:01') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Smallpox Champion') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:48') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Rend It') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('6:41') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('23 Beats Off') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:36') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Sweet And Low') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('2:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Cassavetes') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('1:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Great Cop') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Walken''s Syndrome') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:43') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Instrument') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('4:38') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Last Chance For A Slow Dance') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --LCD Soundsytem – American Dream----
    
    INSERT INTO Song (duration) values('5:50') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'LCD Soundsystem';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Oh Baby') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('6:43') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Other Voices') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('5:32') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Used To') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:58') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Change Yr Mind') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('9:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('How Do You Sleep?') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('5:47') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Tonite') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('6:59') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Call The Police') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('6:07') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('American Dream') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('5:29') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Emotional Haircut') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('12:06') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Black Screen') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --LCD Soundsystem – 45:33----
    
    INSERT INTO Song (duration) values('9:25') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('45:33 - Part 1') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('13:10') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('45:33 - Part 2') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('11:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('45:33 - Part 3') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('17:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('45:33 - Part 4') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    -- --Jimi Hendrix Exp – The Cry of Love----
    
    INSERT INTO Song (duration) values('3:24') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'The Jimi Hendrix Experience';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Freedom') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Drifting') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:09') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Ezy Ryder') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:50') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Night Bird Flying') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('My Friend') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Straight Ahead') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('3:37') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Astro Man') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:25') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Angel') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('In From The Storm') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:34') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Belly Button Window') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    -- - The Jimi Hendrix Experience – Axis: Bold as Love----
    
    INSERT INTO Song (duration) values('1:55') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('EXP') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('2:55') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Up from the Skies') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('3:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Spanish Castle Magic') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('3:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Wait Until Tomorrow') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('1:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Ain''t No Telling') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:24') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Little Wing') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('5:32') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('If Six Was Nine') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('2:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('You''ve Got Me Floating') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('2:46') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Castles Made of Sand') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);         
    
    INSERT INTO Song (duration) values('2:37') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('She''s So Fine') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('3:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('One Rainy Wish') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Little Miss Lover') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('4:09') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Bold as Love') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --Neil Young – Harvest----
    
    INSERT INTO Song (duration) values('4:35') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Folk';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Neil Young';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Out On The Weekend') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('3:03') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Harvest') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('A Man Needs A Maid') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:05') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Heart Of Gold') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:21') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Are You Ready For The Country') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:22') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Old Man') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('There''s A World') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:02') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Alabama') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('2:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Needle And The Damage Done') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('6:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Words (Between The Lines Of Age)') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    -- --Wes Montgomery- Willow Weep for Me----
    
    INSERT INTO Song (duration) values('7:42') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Jazz';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Wes Montgomery';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Willow Weep For Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('5:01') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Impressions') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('2:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Portrait Of Jennie') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('5:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Surrey With A Fringe On Top') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('5:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Oh! You Crazy Moon') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('9:29') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Four On Six') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('6:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Misty') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    -- --Brian Eno – Reflection----
    
    INSERT INTO Song (duration) values('13:45') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Experimental';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Brian Eno';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Reflection I') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('12:14') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Reflection II') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('15:06') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Reflection III') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('13:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Reflection IV') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    ----Brian Eno – Lux----
    
    INSERT INTO Song (duration) values('19:21') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Lux 1') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('18:14') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Lux 2') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('19:19') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Lux 3') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('18:28') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Lux 4') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    -- --Hound Dog Taylor and The House Rockers ----
    
    INSERT INTO Song (duration) values('3:46') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Blues';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Hound Dog Taylor and The House Rockers';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('She''s Gone') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('3:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Walking The Ceiling') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:14') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Held My Baby Last Night') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:50') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Taylor''s Rock') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:10') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('It''s Alright') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('5:27') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Phillips'' Theme') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:35') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Wild About You, Baby') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('3:15') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Just Can''t Make It') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('3:47') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('It Hurts Me Too') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('44 Blues') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:31') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Give Me Back My Wig') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('2:59') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('55th Street Boogie') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);         
    
    -- --B.B. King – Completely Well----
    
    INSERT INTO Song (duration) values('5:34') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Blues';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'B.B. King';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('So Excited') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('4:35') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('No Good') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('4:54') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('You''re Losin'' Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('4:41') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('What Happened') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('4:56') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Confessin'' The Blues') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Key To My Kingdom') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('6:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Cryin'' Won''t Help You Now') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('9:39') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('You''re Mean') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('5:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Thrill Is Gone') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    -- -- Howlin’ Wolf - 
    
    INSERT INTO Song (duration) values('2:12') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Blues';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Howlin'' Wolf';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Shake For Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('2:22') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Red Rooster') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('2:23') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('You''ll Be Mine') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('2:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Who''s Been Talkin''') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Wang-Dang Doodle') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:43') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Little Baby') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('2:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Spoonful') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('3:18') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Going Down Slow') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:05') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Down In The Bottom') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('2:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Back Door Man') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);       
    
    INSERT INTO Song (duration) values('2:28') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Howlin'' For My Baby') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('2:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Tell Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    -- --Joni Mitchel – Hejira----
    INSERT INTO Song (duration) values('5:00') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Folk';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Joni Mitchell';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Coyote') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('6:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Amelia') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('5:03') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Furry Sings The Blues') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('4:15') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('A Strange Boy') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('6:35') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Hejira') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('8:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Song For Sharon') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Black Crow') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);
    
    INSERT INTO Song (duration) values('5:03') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Blue Motel Room') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('6:37') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Refuge Of The Roads') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
-- --Joni Mitchell – Don Juan’s Reckless Daughter----

    INSERT INTO Song (duration) values('3:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Talk To Me') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('3:25') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Jericho') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);  
    
    INSERT INTO Song (duration) values('16:19') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Paprika Plains') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:05') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Otis And Marlena') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('6:45') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Tenth World') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:37') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Dreamland') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);        
    
    INSERT INTO Song (duration) values('6:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Don Juan''s Reckless Daughter') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('3:22') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Off Night Backstreet') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:02') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('The Silky Veils Of Ardor') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
-- --The Barracudas – Drop Out----    
    
    INSERT INTO Song (duration) values('2:32') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Surf Punk';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'The Barracudas';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Can''t Pretend') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('2:47') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('We Are Living In Violent Times') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:26') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Don''t Let Go') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Codeine') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:04') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('This Ain''t My Time') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:31') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('I Saw My Death In A Dream Last Night') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);   
    
    INSERT INTO Song (duration) values('3:11') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Somewhere Outside') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:10') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Summer Fun') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('3:31') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('His Last Summer') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('3:07') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Somebody') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);      
    
    INSERT INTO Song (duration) values('2:52') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Campus Tramp') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('2:41') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('On The Strip') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:40') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('California Lament') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:20') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('(I Wish It Could Be) 1965 Again') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);         
    
    -- --Dickey Betts and Great Southern – Atlanta’s Burning----
    
    INSERT INTO Song (duration) values('4:27') RETURNING ID INTO SongID;
    SELECT ID INTO GenreID FROM genre WHERE name ='Southern Rock';
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    SELECT ID INTO MusicianID FROM musicianName WHERE name = 'Dickey Betts and Great Southern';
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Good Time Feeling') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('4:30') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Atlanta''s Burning Down') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:16') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Leavin'' Me Again') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:10') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Back On The Road Again') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('3:42') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Dealin'' With The Devil') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);    
    
    INSERT INTO Song (duration) values('4:00') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Shady Streets') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL); 
    
    INSERT INTO Song (duration) values('3:51') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('You Can Have Her (I Don''t Want Her)') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);     
    
    INSERT INTO Song (duration) values('4:12') RETURNING ID INTO SongID;
    INSERT INTO SongGenre (SongID, GenreID) VALUES (SongID, GenreID);
    INSERT INTO musicianSong (MusicianID, SongID) VALUES (MusicianID, SongID);
    INSERT INTO SongTitle (Title) Values ('Mr. Blues Man') RETURNING ID INTO TitleID;
    INSERT INTO SongSongTitle (SongID, SongTitleID, StartTime, EndTime) VALUES (SongID, TitleID, currentDate, NULL);

	COMMIT;
END;