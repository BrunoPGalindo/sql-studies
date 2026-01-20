-- ORDER BY
-- serve para ordenar a selecao de acordo com uma regra definida pelo
-- usuario

SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao_x = true
ORDER BY coluna_1

-- exemplo 1 - liste os produtos da tabela products na ordem crescente
-- com base no preco

SELECT *
FROM sales.products
ORDER BY price DESC

-- exemplo 2 - liste os Estados distinds na tabela customers na ordem
-- crescente

SELECT DISTINCT state
FROM sales.customers
ORDER BY state






























