-- subqueries
-- sevem para consultar dados de outras consultas

-- where
-- with
-- from
-- select

-- ex 1 - (where)
-- informe qual o veiculo mais barato da tabela products

SELECT *
FROM sales.products
WHERE price = (SELECT MIN(price) FROM sales.products)

-- ex 2 - (with)
-- calcule a idade media dos clientes por status profissional

WITH alguma_tabela AS (
SELECT professional_status,
	(current_date - birth_date)/365 AS idade
FROM sales.customers
)

SELECT professional_status, AVG(idade) AS idade_media
FROM alguma_tabela
GROUP BY professional_status

-- ex 3 - (from)
-- calcule a media de idades dos clientes por status profissional

SELECT professional_status, 
	AVG(idade) AS idade_media
FROM (
	SELECT professional_status,
		(current_date - birth_date)/365 AS idade
	FROM sales.customers
) AS alguma_tabela
GROUP BY professional_status

-- ex 4 - (select)
-- na tabela sales.funnel crie uma coluna que informe o numero de
-- visitas acumuladas que a loja visitada recebeu ate o momento

SELECT funn.visit_id,
		funn.visit_page_date,
		sto.store_name,
		(
			SELECT COUNT(*)
			FROM sales.funnel AS funn2
			WHERE funn2.visit_page_date <= funn.visit_page_date
				AND funn2.store_id = funn.store_id
		) AS visitas_acumuladas

FROM sales.funnel AS funn
LEFT JOIN sales.stores AS sto
	ON funn.store_id = sto.store_id
ORDER BY sto.store_name, funn.visit_page_date



