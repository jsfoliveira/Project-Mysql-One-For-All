SELECT COUNT(usuario_id) AS "quantidade_musicas_no_historico" 
FROM SpotifyClone.reproducao
WHERE usuario_id = 3
GROUP BY usuario_id;