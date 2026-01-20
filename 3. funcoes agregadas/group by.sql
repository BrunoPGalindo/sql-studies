-- group by
-- serve para agrupar os registros semelhantes de uma coluna
-- normalmente utilizado em conjunto com as funcoes de agregacao

-- ex 1 - calcule o numero de clientes da tabela customers por estado

SELECT state, COUNT(*) as contagem
FROM sales.customers
GROUP BY state
ORDER BY contagem DESC

-- ex 2 - calcule o numero de clientes por estado e status profissional

SELECT state, professional_status, COUNT(*) as contagem
FROM sales.customers
GROUP BY state, professional_status
ORDER BY state, contagem DESC

SELECT state, professional_status, COUNT(*) as contagem
FROM sales.customers
GROUP BY 1, 2
ORDER BY state, contagem DESC

-- ex 3 - selecione os estados distintos na tabela customers utilizando
-- o group by

SELECT DISTINCT state
FROM sales.customers

SELECT state
FROM sales.customers
GROUP BY state







