SELECT M.nome_musica AS "cancao", COUNT(R.usuario_id) AS "reproducoes"
FROM SpotifyClone.musica AS M
INNER JOIN SpotifyClone.reproducao AS R
ON M.musica_id = R.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;