-- having
-- serve para filtrar as linhas da selecao por uma coluna agrupada

-- ex 1 - calcule o numero de clientes por estado filtrando apenas
-- estados acima de 100 cliente

SELECT state,
	COUNT(*)
FROM sales.customers
GROUP BY state
HAVING COUNT(*) > 100
ORDER BY COUNT(*) DESC

-- esse aqui vai ser todos os Estados menos MG

SELECT state,
	COUNT(*)
FROM sales.customers
GROUP BY state
HAVING COUNT(*) > 100
	AND state <> 'MG'
ORDER BY COUNT(*) DESC






