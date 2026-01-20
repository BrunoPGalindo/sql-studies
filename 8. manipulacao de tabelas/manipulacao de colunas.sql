-- manipulacao de colunas
-- insercao, alteracao e delecao

-- ex 1 - insercao
-- insira uma coluna na tabela sales.customers com a idade do cliente

ALTER TABLE sales.customers
ADD customer_age INT

SELECT *
FROM sales.customers
LIMIT 10

UPDATE sales.customers
SET customer_age = DATEDIFF('years', birth_date, CURRENT_DATE)
WHERE TRUE

SELECT *
FROM sales.customers
LIMIT 10

-- ex 2 - alteracao
-- altere o tipo da coluna customer_age de inteira para varchar

ALTER TABLE sales.customers
ALTER COLUMN customer_age TYPE VARCHAR

SELECT *
FROM sales.customers
LIMIT 10

-- ex 3 - alterar o nome da coluna
-- renomeie o nome de 'customer_age' para 'age'

ALTER TABLE sales.customers
RENAME COLUMN customer_age TO age

SELECT *
FROM sales.customers
LIMIT 10

-- ex 4 - delecao
-- delete a coluna age

ALTER TABLE sales.customers
DROP COLUMN age

SELECT *
FROM sales.customers
LIMIT 10





