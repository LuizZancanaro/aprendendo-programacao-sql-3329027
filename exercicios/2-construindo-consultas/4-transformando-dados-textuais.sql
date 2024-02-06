-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT
CustomerId as id, FirstName as nome, LastName as sobrenome, Address as endereço
FROM customers
WHERE
Country LIKE 'Brazil'
;

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT
CustomerId as id, FirstName as nome, upper(LastName) as sobrenome, Address as endereço
FROM customers
WHERE
Country LIKE 'Bra%'
;

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT
CustomerId as id, lower(FirstName) as nome, upper(LastName) as sobrenome, Address as endereço
FROM customers
WHERE
Country LIKE 'Bra%'
;

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT
CustomerId as id, lower(FirstName) as nome, upper(LastName) as sobrenome, Address as endereço,
FirstName || ' '|| LastName as Juntos
FROM customers
WHERE
Country LIKE 'Bra%'
;

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço

SELECT
CustomerId as id, lower(FirstName) as nome, upper(LastName) as sobrenome, REPLACE(Address, 'Av.', 'Avenida') as endereço,
FirstName || ' '|| LastName as Juntos
FROM customers
WHERE
Country LIKE 'Bra%'
;
-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
