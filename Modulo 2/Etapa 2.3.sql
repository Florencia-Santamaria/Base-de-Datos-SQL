USE laboratorio;

SELECT * FROM clientes_neptuno;

SELECT NOMBRECOMPANIA, CIUDAD , PAIS
FROM clientes_neptuno;

SELECT NOMBRECOMPANIA, CIUDAD , PAIS
FROM clientes_neptuno
ORDER BY PAIS, CIUDAD;

SELECT NOMBRECOMPANIA, CIUDAD , PAIS
FROM clientes_neptuno
ORDER BY PAIS
LIMIT 10;

SELECT NOMBRECOMPANIA, CIUDAD , PAIS
FROM clientes_neptuno
ORDER BY PAIS
LIMIT 11,15;










