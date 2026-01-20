-- funcoes agregadas
-- servem para executar operacoes aritmeticas nos registros de uma coluna

-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()

-- ex 1 - conte todas as visitas realizadas ao site da empresa ficticia
-- contagem de todas as linhas de uma tabela

SELECT COUNT(*)
FROM sales.funnel

-- ex 2 - conte todos os pagamentos registrados na tabela sales.funnel

SELECT *
FROM sales.funnel
LIMIT 10

SELECT COUNT(paid_date)
FROM sales.funnel

-- ex 3 - conte todos os produtos distintos visitados em jan/21

SELECT COUNT(product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31'

SELECT COUNT(DISTINCT product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31'

-- ex 4 - calcule o preco minimo, max e medio dos produtos da tabela
-- products

SELECT MIN(price), MAX(price), AVG(price)
FROM sales.products

-- ex 5 - informe qual eh o veiculo mais caro da tabela products

SELECT MAX(price)
FROM sales.products

SELECT *
FROM sales.products
WHERE price = (SELECT MAX(price)
				FROM sales.products)
















