-- tipos de conversao
-- operador ::
-- cast

-- ex 1 - conversao de texto em data
-- corrija a query abaixo utilizando o operador ::

SELECT '2021-10-01' - '2021-02-01'

-- a data ta como string e precisamos converte-las para data

SELECT '2021-10-01'::date - '2021-02-01'::date

-- transformando todos os dados de uma coluna

SELECT nome_coluna::date
FROM nome_tabela

-- ex 2 -- corrija a query abaixo utilizando ::

SELECT '100' - '10'

SELECT '100'::numeric - '10'::numeric

-- ex 3 -- corrija a query abaixo utilizando ::

SELECT REPLACE(112122, '1', 'A')

SELECT REPLACE(112122::text, '1', 'A')

-- ex 4 - corrija a query abaixo com a funcao CAST

SELECT '2021-10-01' - '2021-02-01'

SELECT CAST('2021-10-01' AS DATE) - CAST('2021-02-01' AS DATE)




