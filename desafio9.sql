SELECT
  COUNT(usuario.nome_usuario) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.usuario
INNER JOIN
  SpotifyClone.historico ON usuario.id_usuario = historico.id_usuario
WHERE 
  nome_usuario = 'Bill';