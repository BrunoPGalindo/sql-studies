-- criacao de tabelas
-- criar a partir de uma query
-- criar a partir do zero
-- delecao de tabelas

-- ex 1 - a partir de uma query
-- crie uma tabela chamada customers_age com o id e a idade dos clientes
-- chame-a de temp_tables.customer_age

SELECT 
	customer_id,
	DATEDIFF('years', birth_date, CURRENT_DATE) AS idade_cliente
	INTO temp_tables.customer_age
FROM sales.customers

SELECT *
FROM temp_tables.customer_age

-- ex 2 - a partir do zero
-- crie uma tabela com a traducao dos status profissionais dos clientes
-- chame-a de temp_tables.profissoes

SELECT DISTINCT professional_status
FROM sales.customers

CREATE TABLE temp_tables.profissoes(
	professional_status VARCHAR,
	status_profissional VARCHAR
)

SELECT *
FROM temp_tables.profissoes

INSERT INTO temp_tables.profissoes
(professional_status, status_profissional)

VALUES
('freelancer', 'freelancer'),
('retired', 'aposentado(a)'),
('clt', 'clt'),
('self_employed', 'autonomo(a)'),
('other', 'outro'),
('businessman', 'empresario(a)'),
('civil_servant', 'funcionario publico(a)'),
('student', 'estudante')

SELECT *
FROM temp_tables.profissoes

-- ex 3 - delecao de tabelas
-- delete a tabela temp_tables.profissoes

DROP TABLE temp_tables.profissoes

SELECT *
FROM temp_tables.profissoes





