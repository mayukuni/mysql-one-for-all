SELECT 
  usuario.nome_usuario AS usuario,
  IF(YEAR(MAX(historico.data_reprodução)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM 
  SpotifyClone.usuario
INNER JOIN
  SpotifyClone.historico ON usuario.id_usuario = historico.id_usuario
GROUP BY 
  historico.id_usuario
ORDER BY 
  usuario;