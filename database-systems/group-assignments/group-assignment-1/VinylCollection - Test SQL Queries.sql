SELECT
	Title AS 'VinylTitle',
	ReleaseDate,
	Label,
	Producer,
	CatalogNumber,
	ShelfNumber,
	Condition
FROM
	Vinyl;
GO

SELECT
	Name AS 'MusicianName',
	Country
FROM
	Musician;
GO

SELECT
	Title AS 'SongTitle',
	Duration
FROM
	Song;
GO

SELECT
	Name AS 'GenreName',
	Description
FROM
	Genre;
GO


SELECT
	Name AS 'MusicianName',
	Country,
	Instrument,
	VocalClassification,
	FormationDate,
	DisbandedDate
FROM
	Musician
		LEFT JOIN
	Instrumentalist ON Musician.ID = Instrumentalist.MusicianID
		LEFT JOIN
	Singer ON Musician.ID = Singer.MusicianID
		LEFT JOIN
	Band ON Musician.ID = Band.MusicianID;
GO

SELECT
	Title AS 'SongTitle',
	Duration,
	Name AS 'GenreName'
FROM
	Song
		JOIN
	SongGenre ON Song.ID = SongGenre.SongID
		JOIN
	Genre ON SongGenre.GenreID = Genre.ID;
GO

SELECT
	Name AS 'MusicianName',
	Country,
	Title,
	Duration
FROM
	Musician
		JOIN
	MusicianSong ON Musician.ID = MusicianSong.MusicianID
		JOIN
	Song ON MusicianSong.SongID = Song.ID;
GO

SELECT
	Title AS 'VinylTitle',
	Name AS 'MusicianName',
	ShelfNumber,
	Condition
FROM
	Vinyl
		JOIN
	VinylMusician ON Vinyl.ID = VinylMusician.VinylID
		JOIN
	Musician ON VinylMusician.MusicianID = Musician.ID;
GO

SELECT
	Title AS 'SongTitle',
	Musician.Name AS 'MusicianName',
	Genre.Name AS 'GenreName'
FROM
	Genre
		JOIN
	SongGenre ON Genre.ID = SongGenre.GenreID
		JOIN
	Song ON SongGenre.SongID = Song.ID
		JOIN
	MusicianSong ON Song.ID = MusicianSong.SongID
		JOIN
	Musician ON MusicianSong.MusicianID = Musician.ID;
GO

SELECT
	Vinyl.Title AS 'VinylTitle',
	Musician.Name AS 'MusicianName',
	Song.Title AS 'SongTitle',
	Genre.Name AS 'GenreName',
	ReleaseDate,
	Label,
	Producer
FROM
	Vinyl
		JOIN
	VinylMusician ON Vinyl.ID = VinylMusician.VinylID
		JOIN
	Musician ON VinylMusician.MusicianID = Musician.ID
		JOIN
	MusicianSong ON Musician.ID = MusicianSong.MusicianID
		JOIN
	Song ON MusicianSong.SongID = Song.ID
		JOIN
	SongGenre ON Song.ID = SongGenre.SongID
		JOIN
	Genre ON SongGenre.GenreID = Genre.ID;
GO

SELECT
	Title AS 'VinylTitle',
	ShelfNumber,
	Condition
FROM
	Vinyl
WHERE
	Title LIKE '%love%';
GO

SELECT
	Title AS 'SongTitle',
	Duration
FROM
	Song
		JOIN
	SongGenre ON Song.ID = SongGenre.SongID
		JOIN
	Genre ON SongGenre.GenreID = Genre.ID
WHERE
	Name = 'Rock';
GO

SELECT
	Title AS 'VinylTitle',
	ShelfNumber
FROM
	Vinyl
		JOIN
	VinylMusician ON Vinyl.ID = VinylMusician.VinylID
		JOIN
	Musician ON VinylMusician.MusicianID = Musician.ID
WHERE
	Name = 'Stevie Wonder' AND Condition = 'G'
ORDER BY
	ShelfNumber;
GO

SELECT
	Name AS 'MusicianName',
	COUNT(*) AS 'NumberOfVinyls'
FROM
	Vinyl
		JOIN
	VinylMusician ON Vinyl.ID = VinylMusician.VinylID
		JOIN
	Musician ON VinylMusician.MusicianID = Musician.ID
GROUP BY
	Name
HAVING
	COUNT(*) > 1;
GO
