SELECT
  musica.nome_musica AS nome,
  COUNT(historico.id_musica) AS reproducoes
FROM
  SpotifyClone.historico
INNER JOIN
  SpotifyClone.musica ON musica.id_musica = historico.id_musica
INNER JOIN
  SpotifyClone.usuario ON historico.id_usuario = usuario.id_usuario
WHERE
  usuario.id_plano = 1 OR usuario.id_plano = 2
GROUP BY 
  musica.id_musica
ORDER BY
  nome;