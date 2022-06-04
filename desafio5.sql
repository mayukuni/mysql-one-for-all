SELECT 
  musica.nome_musica AS cancao,
  COUNT(historico.id_musica) AS reproducoes
FROM 
  SpotifyClone.musica
INNER JOIN
  SpotifyClone.historico ON musica.id_musica = historico.id_musica
GROUP BY 
  historico.id_musica
ORDER BY 
  reproducoes DESC, cancao LIMIT 2;