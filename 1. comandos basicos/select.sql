-- SELECT
-- server para selecionar colunas de tabelas

SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1

-- exemplo 1 - liste os emails dos clientes da tabela sales.customers

SELECT email
FROM sales.customers

-- exemplo 2 - liste os emails e nomes dos clientes da tabela sales.customers

SELECT email, first_name, last_name
FROM sales.customers

-- exemplo 3 - liste todas as informações dos clientes da tabela sales.customers

SELECT *
FROM sales.customers