-- manipulacao de linhas
-- insercao de linhas
-- atualizacao de linhas
-- delecao de linhas

-- ex 1 - insercao de linhas
-- insira o status desempregado e estagiario na temp_tables.profissoes

CREATE TABLE temp_tables.profissoes(
	professional_status VARCHAR,
	status_profissional VARCHAR
);

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

INSERT INTO temp_tables.profissoes
(professional_status, status_profissional)

VALUES
('unemployed', 'desempregado(a)'),
('trainee', 'estagiario(a)')

SELECT *
FROM temp_tables.profissoes

-- ex 2 - atualizacao de linhas
-- corrija a traducao de estagiario de trainee para intern

UPDATE temp_tables.profissoes
SET professional_status = 'intern'
WHERE status_profissional = 'estagiario(a)'

SELECT *
FROM temp_tables.profissoes

-- ex 3 - delecao de linhas
-- delete a linha dos status 'desempregado' e 'estagiario'

DELETE FROM temp_tables.profissoes
WHERE status_profissional = 'desempregado(a)'
OR status_profissional = 'estagiario(a)'

SELECT *
FROM temp_tables.profissoes









