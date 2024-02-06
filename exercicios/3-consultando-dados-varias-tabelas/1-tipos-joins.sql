-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT * 
from albums
left join artists on albums.ArtistId = artists.ArtistId;