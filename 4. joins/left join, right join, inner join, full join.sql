-- joins

-- ex 1 - utilize o left join para fazer join entra as tabelas 
-- temp_tables.tabela_1 e temp_tables.tabela_2

SELECT * FROM temp_tables.tabela_1
SELECT * FROM temp_tables.tabela_2

-- left join

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 AS t1 LEFT JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf

-- inner join

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 AS t1 INNER JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf

-- right join

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 AS t1 RIGHT JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf

-- full join

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 AS t1 FULL JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf
















