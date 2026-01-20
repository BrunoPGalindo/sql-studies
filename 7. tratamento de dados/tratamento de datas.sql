-- tratamento de datas
-- INTERVAL
-- DATE_TRUNC
-- EXTRACT
-- DATEDIFF

-- ex 1 - soma de datas
-- calcule a data de hoje mais 10 unidades (dias, semanas, meses, horas)

SELECT CURRENT_DATE

SELECT (CURRENT_DATE + INTERVAL '10 weeks')::date
SELECT (CURRENT_DATE + INTERVAL '10 months')::date
SELECT CURRENT_DATE + INTERVAL '10 hours'

-- ex 2 - truncagem de datas
-- calcule quantas visitas ocorreram por mes no site da empresa

SELECT visit_page_date, COUNT(*)
FROM sales.funnel
GROUP BY visit_page_date
ORDER BY visit_page_date DESC

SELECT
	DATE_TRUNC('month', visit_page_date)::date AS visit_page_month,
	COUNT(*)
FROM sales.funnel
GROUP BY visit_page_month
ORDER BY visit_page_month DESC

-- ex 3 - extracao de unidades de uma data utilizando extract
-- calcule qual eh o dia da semana que mais recebe visitar ao site

SELECT
	EXTRACT('dow' FROM visit_page_date) AS dia_da_semana,
	COUNT(*)
FROM sales.funnel
GROUP BY dia_da_semana
ORDER BY dia_da_semana

-- ex 4 - diferenca entre datas com o operador de subtracao
-- calcule a diferenca entre o dia de hoje e '2018-06-01', em dias,
-- semanas, meses e anos

SELECT (CURRENT_DATE - '2018-06-01')
SELECT (CURRENT_DATE - '2018-06-01')/7
SELECT (CURRENT_DATE - '2018-06-01')/30
SELECT (CURRENT_DATE - '2018-06-01')/365

-- esse comando abaixo so vai funcionar criando uma funcao

SELECT DATEDIFF('weeks', '2018-06-01', CURRENT_DATE)





















