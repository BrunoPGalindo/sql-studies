-- DISTINCT
-- serve para remover linhas duplicadas e mostras apenas as distintas
-- muito usado na exploraçao das bases

SELECT DISTINCT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1

-- exemplo 1 - liste as marcas de carro que constam na tabela products

SELECT brand
FROM sales.products

-- exemplo 2 - liste as marcas de carro distintas que constam na tabela products

SELECT DISTINCT brand
FROM sales.products

-- exemplo 3 - liste as marcas e anos de modelo distintos que constam na tabela products

SELECT DISTINCT brand, model_year
FROM sales.products