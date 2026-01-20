-- funcoes
-- servem para criar comandos personalizados de scripts utilizados
-- recorrentemente

-- ex 1 - crie uma funcao chamada datediff para calcular a diferenca
-- entre duas datas em dias, semanas, meses e anos

SELECT (CURRENT_DATE - '2018-06-01')
SELECT (CURRENT_DATE - '2018-06-01')/7
SELECT (CURRENT_DATE - '2018-06-01')/30
SELECT (CURRENT_DATE - '2018-06-01')/365

SELECT DATEDIFF('weeks', '2018-06-01', CURRENT_DATE)

CREATE FUNCTION DATEDIFF(unidade VARCHAR, data_inicial DATE, data_final DATE)
RETURNS integer
LANGUAGE SQL

AS

$$
SELECT
	CASE
		WHEN unidade IN ('d', 'day', 'days') THEN (data_final - data_inicial)
		WHEN unidade IN ('w', 'week', 'weeks') THEN (data_final - data_inicial)/7
		WHEN unidade IN ('m', 'month', 'months') THEN (data_final - data_inicial)/30
		WHEN unidade IN ('y', 'year', 'years') THEN (data_final - data_inicial)/365
		END AS diferenca
$$

SELECT DATEDIFF('years', '2023-11-12', CURRENT_DATE)

-- ex 2 - delete a funcao datediff criada no exercicio anterior

DROP FUNCTION datediff

SELECT DATEDIFF('years', '2023-11-12', CURRENT_DATE)











