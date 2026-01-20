-- operadores logicos
-- usados para unir expressoes simples em uma composta

-- ex 1 - selecione veiculos que custam entre 100k e 200k na 
-- tabela products

SELECT *
FROM sales.products
WHERE price >= 100000 and price <= 200000

SELECT *
FROM sales.products
WHERE price BETWEEN 100000 and 200000

-- ex 2 - selecione veiculos que custam abaixo de 100k ou acima de 200k

SELECT *
FROM sales.products
WHERE price < 100000 and price > 200000

SELECT *
FROM sales.products
WHERE price NOT BETWEEN 100000 and 200000

-- ex 3 - selecionar produtos que sejam da marca honda, toyota 
-- ou renault

SELECT *
FROM sales.products
WHERE brand = 'HONDA' or brand = 'TOYOTA' or brand = 'RENAULT'

SELECT *
FROM sales.products
WHERE brand in ('HONDA', 'TOYOTA', 'RENAULT')

-- ex 4 - selecione os primeiros nomes distintos da tabela customers
-- que comecam com as iniciais ANA

SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name LIKE 'ANA%'

-- ex 5 - selecione os primeiros nomes distindos com iniciais 'ana'
-- ILIKE eh para ignorar letras maiusculas e minusculas

SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name ILIKE 'ANA%'

-- ex 6 - selecionar apenas as linhas que contem nulo no campo 
-- 'population' na tabela temp_tables.region

SELECT *
FROM temp_tables.regions

SELECT *
FROM temp_tables.regions
WHERE population IS NULL





