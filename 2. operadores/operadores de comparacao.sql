-- operadores de comparacao
-- servem para comprar dois valores retornando true ou false
-- muito utilizado em conjunto com a funcao WHERE para filtrar

-- ex 1 - crie uma coluna que retorne true sempre que um cliente for 
-- um profissional clt

SELECT 
	customer_id, 
	first_name, 
	professional_status, 
	(professional_status = 'clt')
FROM sales.customers














