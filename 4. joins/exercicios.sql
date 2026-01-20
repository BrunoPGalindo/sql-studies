-- (Exercício 1) Identifique quais as marcas de veículo mais visitada
-- na tabela sales.funnel

SELECT *
FROM sales.funnel

SELECT *
FROM sales.products

SELECT products.brand, COUNT(*) AS visitas
FROM sales.funnel AS funn
LEFT JOIN sales.products AS products
	ON funn.product_id = products.product_id
GROUP BY products.brand
ORDER BY visitas DESC

-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas
-- na tabela sales.funnel

SELECT store.store_name, COUNT(*) AS visitas
FROM sales.funnel as funn
LEFT JOIN sales.stores as store
	ON funn.store_id = store.store_id
GROUP BY store.store_name
ORDER BY visitas DESC

-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de
-- cidade (o porte da cidade consta na coluna "size" da tabela 
-- temp_tables.regions)

SELECT
	region.size,
	COUNT(*) AS contagem
FROM sales.customers AS cus
LEFT JOIN temp_tables.regions AS region
	ON LOWER(cus.city) = LOWER(region.city)
	AND LOWER(cus.state) = LOWER(region.state)
GROUP BY region.size
ORDER BY contagem






