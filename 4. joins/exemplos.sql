-- ex 1 - identifique qual é o status profissional mais frequente
-- nos clientes que compraram automoveis no site

SELECT cus.professional_status, COUNT(funn.paid_date) AS pagamentos
FROM sales.funnel AS funn
LEFT JOIN sales.customers AS cus
	ON funn.customer_id = cus.customer_id
GROUP BY cus.professional_status
ORDER BY pagamentos DESC

-- ex 2 - identifique qual é o genero mais frequente nos clientes que
-- compraram automoveis no site. obs.: utilizar temp_tables.ibge_genders

SELECT *
FROM temp_tables.ibge_genders
LIMIT 10

SELECT ibge.gender, COUNT(funn.paid_date)
FROM sales.funnel AS funn
LEFT JOIN sales.customers AS cus
	ON funn.customer_id = cus.customer_id
LEFT JOIN temp_tables.ibge_genders AS ibge
	ON LOWER(cus.first_name) = ibge.first_name
GROUP BY ibge.gender

-- ex 3 - identifique de quais regioes sao os clientes que mais visitam
-- o site. obs.: utilize a tabela temp_tables.regions

SELECT *
FROM SALES.CUSTOMERS
LIMIT 10

SELECT *
FROM temp_tables.regions
LIMIT 10

SELECT reg.region, COUNT(funn.visit_page_date) AS visitas
FROM sales.funnel AS funn
LEFT JOIN sales.customers as cus
	ON funn.customer_id = cus.customer_id
LEFT JOIN temp_tables.regions AS reg
	ON LOWER(cus.city) = LOWER(reg.city)
	AND LOWER(cus.state) = LOWER(reg.state)
GROUP BY reg.region
ORDER BY visitas DESC














