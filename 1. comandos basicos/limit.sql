-- LIMIT
-- serve para limitar o numero de linhas da consulta
-- muito utilizada na exploracao dos dados

SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao_x = true
ORDER BY coluna_1
LIMIT N

-- exemplo 1 - liste as 10 primeiras linhas da tabela funnel

SELECT *
FROM sales.funnel
LIMIT 10

-- exemplo 2 - selecione com limit e order by. liste os 10 primeiros
-- da tabela products

SELECT *
FROM sales.products
ORDER BY price DESC
LIMIT 10










