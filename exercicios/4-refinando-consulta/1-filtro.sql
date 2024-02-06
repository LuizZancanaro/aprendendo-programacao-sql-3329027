-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT 
tra.TrackId AS id,
tra.Name AS musica,
alb.Title AS album,
art.Name AS artista 
FROM 
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId

WHERE
artista LIKE '%Naç%'

;

SELECT 
tra.TrackId AS id,
tra.Name AS musica,
alb.Title AS album,
art.Name AS artista 
FROM 
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId

WHERE
artista LIKE '%Naç%'
AND album NOT LIKE '%Lama%'
;