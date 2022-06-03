SELECT U.nome_usuario AS "usuario", COUNT(R.musica_id) AS "qtde_musicas_ouvidas", ROUND(SUM(M.duracao) / 60, 2) AS "total_minutos"
FROM SpotifyClone.usuario AS U
INNER JOIN SpotifyClone.reproducao AS R
ON U.usuario_id = R.usuario_id
INNER JOIN SpotifyClone.musica AS M
ON M.musica_id = R.musica_id
GROUP BY U.usuario_id
ORDER BY U.nome_usuario;