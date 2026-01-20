-- tratamento de dados
-- case when
-- coalesce()

-- ex 1 - calcule o numero de clientes que ganham abaixo de 5k, entre
-- 5 e 10k, entre 10 e 15k e acima de 15k

SELECT *
FROM sales.customers
LIMIT 10

WITH faixa_de_renda AS (
	SELECT 
		income,
		CASE
			WHEN income < 5000 then '0-5000'
			WHEN income >= 5000 and income < 10000 then '5000-1000'
			WHEN income >= 10000 and income < 15000 then '10000-15000'
			ELSE '15000+'
			END AS faixa_renda
	FROM sales.customers
)

SELECT faixa_renda, COUNT(*)
FROM faixa_de_renda
GROUP BY faixa_renda




-- ex 2 - crie uma coluna chamada populacao_ajustada na tabela
-- temp_tables.regions e preencha com os dados da coluna population,
-- mas caso esse campo estiver nulo, preencha com a populacao 
-- media (geral) das cidades do brasil

SELECT *
FROM temp_tables.regions
LIMIT 10

-- opcao 1

SELECT 
	*,
	CASE
		WHEN population IS NOT NULL THEN population
		ELSE (SELECT AVG(population) FROM temp_tables.regions)
		END AS populacao_ajustada
FROM temp_tables.regions
WHERE population IS NULL

-- opcao 2

SELECT 
	*,
	COALESCE(population, (SELECT AVG(population) FROM temp_tables.regions)) AS populacao_ajustada
FROM temp_tables.regions










