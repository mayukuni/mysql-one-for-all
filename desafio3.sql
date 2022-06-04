SELECT
  usuario.nome_usuario AS usuario,
  COUNT(historico.id_usuario) AS qtde_musicas_ouvidas,
  ROUND(SUM(musica.duração) / 60 , 2) AS total_minutos
FROM
  SpotifyClone.usuario
INNER JOIN 
  SpotifyClone.historico ON usuario.id_usuario = historico.id_usuario
INNER JOIN 
  SpotifyClone.musica ON historico.id_musica = musica.id_musica
GROUP BY
  historico.id_usuario
ORDER BY
  usuario;