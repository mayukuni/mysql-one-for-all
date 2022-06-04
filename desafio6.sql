SELECT
  MIN(plano.valor) AS faturamento_minimo,
  MAX(plano.valor) AS faturamento_maximo,
  ROUND(AVG(plano.valor), 2) AS faturamento_medio,
  ROUND(SUM(plano.valor), 2) AS faturamento_total
FROM 
  SpotifyClone.plano
INNER JOIN 
  SpotifyClone.usuario ON plano.id_plano = usuario.id_plano;