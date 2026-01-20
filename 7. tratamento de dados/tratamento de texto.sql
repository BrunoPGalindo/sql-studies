-- tratamento de texto
-- LOWER()
-- UPPER()
-- TRIM()
-- REPLACE()

-- ex 1 - corrija o primeiro elemento das queries abaixo utilizando
-- os comandos de tratamento de texto para que o resultado seja sempre
-- TRUE

SELECT 'São Paulo' = 'SÃO PAULO'
SELECT UPPER('São Paulo') = 'SÃO PAULO'

SELECT 'São Paulo' = 'são paulo'
SELECT LOWER('São Paulo') = 'são paulo'

SELECT 'SÃO PAULO    ' = 'SÃO PAULO'
SELECT TRIM('SÃO PAULO    ') = 'SÃO PAULO'

SELECT 'SAO PAULO' = 'SÃO PAULO'
SELECT REPLACE('SAO PAULO', 'SAO', 'SÃO') = 'SÃO PAULO'








