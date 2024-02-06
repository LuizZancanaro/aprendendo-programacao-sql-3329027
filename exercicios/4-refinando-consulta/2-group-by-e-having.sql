-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
WITH total AS
(SELECT 
cus.CustomerId AS ID,
cus.FirstName AS nome,
cus.LastName AS sobrenome,
inv.Total AS total
FROM 
invoices AS inv
INNER JOIN customers AS cus ON cus.CustomerId = inv.CustomerId
)
SELECT
ID, nome, sobrenome, SUM(total)
FROM
total
GROUP BY ID
;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$40
WITH total AS
(SELECT 
cus.CustomerId AS ID,
cus.FirstName AS nome,
cus.LastName AS sobrenome,
inv.Total AS total
FROM 
invoices AS inv
INNER JOIN customers AS cus ON cus.CustomerId = inv.CustomerId
)
SELECT
ID, nome, sobrenome, SUM(total) as soma
FROM
total
GROUP BY ID
HAVING SUM(total) >= 40
;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
WITH total AS
(SELECT 
cus.CustomerId AS ID,
cus.FirstName AS nome,
cus.LastName AS sobrenome,
inv.Total AS total
FROM 
invoices AS inv
INNER JOIN customers AS cus ON cus.CustomerId = inv.CustomerId
)
SELECT
ID, nome, sobrenome, SUM(total) as soma, MAX(total) AS maior_valor
FROM
total
GROUP BY ID
HAVING SUM(total) > 40
;

-- verificando se o maior valor da helena é 25.86
WITH total AS
(SELECT 
cus.CustomerId AS ID,
cus.FirstName AS nome,
cus.LastName AS sobrenome,
inv.Total AS total
FROM 
invoices AS inv
INNER JOIN customers AS cus ON cus.CustomerId = inv.CustomerId
)
SELECT
ID, nome, sobrenome, total
FROM
total
WHERE nome = 'Helena'
;


-- Verificando outra coisa
SELECT 
cus.CustomerId AS ID,
cus.FirstName AS nome,
SUM(inv.Total) AS total
FROM 
invoices AS inv
INNER JOIN customers AS cus ON cus.CustomerId = inv.CustomerId
GROUP BY ID
HAVING SUM(total) >= 40
;