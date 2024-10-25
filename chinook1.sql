-- SQLite
--dla każdego wykonawcy ustal, do ilu różnych gatunków 
--przypisane są jego utwory i wypisz wynik w kolejności malejącej 
--liczby gatunków - wynik: nazwa wykonawcy, liczba gatunków;

--ENG: For each artist, determine how many different genres their tracks are assigned to, 
--and display the result in descending order by the number of genres – output: artist name, number of genres

SELECT Artist.Name, COUNT(DISTINCT Genre.GenreId) AS GenreCount  FROM Artist
JOIN Album ON Artist.ArtistId=Album.ArtistId
JOIN Track ON Album.AlbumId=Track.AlbumId
JOIN Genre ON Track.GenreId=Genre.GenreId
GROUP BY Artist.ArtistId
ORDER BY GenreCount DESC;
