SELECT AR.nome_artista AS "artista",  AL.nome_album AS "album"
FROM SpotifyClone.artista AS AR
INNER JOIN SpotifyClone.album AS AL
ON AR. artista_id = AL.artista_id
WHERE AR.nome_artista = "Walter Phoenix";