SELECT COUNT(DISTINCT(musica.nome_musica)) AS cancoes, COUNT(DISTINCT(artista.nome_artista)) AS artistas, COUNT(DISTINCT(album.nome_album)) AS albuns
FROM SpotifyClone.musica, SpotifyClone.artista, SpotifyClone.album;
