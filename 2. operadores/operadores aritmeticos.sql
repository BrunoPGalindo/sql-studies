-- operadores logicos
-- servem para executar operações matematicas
-- muito utilizado para criar colunas calculadas

-- ex 1 - crie uma coluna contendo a idade do cliente da tabela sales.customers

SELECT *
FROM sales.customers
LIMIT 10

SELECT 
	email,
	birth_date,
	(CURRENT_DATE - birth_date) / 365 AS client_age
FROM sales.customers

-- ex 2 - liste os 10 clientes mais novos da tabela customers

SELECT 
	email,
	birth_date,
	(CURRENT_DATE - birth_date) / 365 AS client_age
FROM sales.customers
ORDER BY client_age
LIMIT 10

-- ex 3 - crie uma coluna "nome_completo" contendo o nome completo do cliente

SELECT first_name || ' ' || last_name as full_name
FROM sales.customers





