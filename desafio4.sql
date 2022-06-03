SELECT U.nome_usuario AS "usuario",
IF (MAX(YEAR(R.data_reproducao)) = 2021,
'Usuário ativo',
'Usuário inativo') AS "condicao_usuario"
FROM SpotifyClone.usuario AS U
INNER JOIN SpotifyClone.reproducao AS R
ON U.usuario_id = R.usuario_id
GROUP BY U.nome_usuario
ORDER BY U.nome_usuario;