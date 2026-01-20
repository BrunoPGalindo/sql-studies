-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers

WITH numero_de_visitas AS (
	SELECT customer_id, COUNT(*) AS n_visitas
	FROM sales.funnel
	GROUP BY customer_id
)

SELECT cus.*, n_visitas
FROM sales.customers as cus
LEFT JOIN numero_de_visitas AS ndv
	ON cus.customer_id = ndv.customer_id






