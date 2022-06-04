SELECT
  artista.nome_artista AS artista,
  album.nome_album AS album,
  COUNT(seguindo.id_artista) AS seguidores
FROM
  SpotifyClone.album 
INNER JOIN
  SpotifyClone.artista ON album.id_artista = artista.id_artista
INNER JOIN
  SpotifyClone.seguindo ON artista.id_artista = seguindo.id_artista
GROUP BY 
  album.id_album
ORDER BY 
  seguidores DESC, artista, album;