-- WHERE
-- serve para filtrar as linhas da tabela de acordo com uma condição

SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao_x = true

-- exemplo 1 - liste os emails dos clientes da nossa base que moram em SC

SELECT email, state
FROM sales.customers
WHERE state = 'Santa Catarina'

SELECT DISTINCT state
FROM sales.customers -- aqui os Estados estao com as siglas

SELECT email, state
FROM sales.customers
WHERE state = 'SC'

-- exemplo 2 - liste os emails dos clientes da base que moram em SC ou MS

SELECT email, state
FROM sales.customers
WHERE state = 'SC' OR state = 'MS'

-- exemplo 3 - liste os emails dos clientes da nossa base que moram em SC 
-- ou MS e que tenham mais de 30 anos

SELECT email, state
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS')

SELECT DISTINCT birth_date
FROM sales.customers -- verificando como a data esta para filtrar pela idade

SELECT email, state, birth_date
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '1994-11-05'
-- a data tambem pode ser escrita 'YYYYMMDD'










