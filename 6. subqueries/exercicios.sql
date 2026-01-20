-- ex 1 - calcule o volume de visitas por dia ao site separado por
-- 1a visita e demais visitas

WITH primeira_visita AS (
	SELECT customer_id,
	MIN(visit_page_date) AS visita_1
	FROM sales.funnel
	GROUP BY customer_id
)

SELECT funn.visit_page_date,
	(funn.visit_page_date <> primeira_visita.visita_1) AS lead_recorrente,
	COUNT(*)

FROM sales.funnel AS funn
LEFT JOIN primeira_visita
	ON funn.customer_id = primeira_visita.customer_id
GROUP BY funn.visit_page_date, lead_recorrente
ORDER BY funn.visit_page_date DESC, lead_recorrente

-- ex 2 - calcule, para cada visita ao site, quanto o preco do veiculo
-- visitado pelo cliente estava acima ou abaixo do preco medio
-- dos veiculos daquela marca

WITH preco_medio AS (
	SELECT brand, AVG(price) AS preco_medio_da_marca
	FROM sales.products
	GROUP BY brand
)

SELECT funn.visit_id,
	funn.visit_page_date,
	pro.brand,
	(pro.price * (1+funn.discount)) AS preco_final,
	preco_medio.preco_medio_da_marca,
	((pro.price * (1+funn.discount)) - preco_medio.preco_medio_da_marca) AS preco_vs_media

FROM sales.funnel as funn
LEFT JOIN sales.products as pro
	ON funn.product_id = pro.product_id
LEFT JOIN preco_medio
	ON pro.brand = preco_medio.brand




