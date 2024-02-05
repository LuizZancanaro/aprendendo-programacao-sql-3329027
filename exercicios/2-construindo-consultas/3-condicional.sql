-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
Select DISTINCT
Country as pais,
State as estado_sigla,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Estado desconhecido'
END AS estado
FROM customers
WHERE
Country LIKE 'Brazil'
;


