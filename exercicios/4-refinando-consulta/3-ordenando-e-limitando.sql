-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
SELECT
CustomerId AS id,
FirstName AS nome,
Country AS pais
FROM customers
LIMIT 10;

-- Pulando os 3 primeiros
SELECT
CustomerId AS id,
FirstName AS nome,
Country AS pais
FROM customers
LIMIT 10 OFFSET 3;
-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
SELECT
CustomerId AS id,
FirstName AS nome,
Country AS pais
FROM customers
ORDER BY Country ASC, FirstName DESC
LIMIT 10;

-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
SELECT
CustomerId AS id,
FirstName AS nome,
Country AS pais
FROM customers
ORDER BY Country ASC, FirstName DESC
LIMIT 10 OFFSET 3;