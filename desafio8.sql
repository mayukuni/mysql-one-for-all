SELECT
  artista.nome_artista AS artista,
  album.nome_album AS album
FROM
  SpotifyClone.artista
INNER JOIN
  SpotifyClone.album ON artista.id_artista = album.id_artista
WHERE 
  artista.nome_artista = 'Walter Phoenix';