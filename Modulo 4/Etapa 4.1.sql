USE laboratorio;

CREATE TABLE VARONES
SELECT * FROM nacimientos
WHERE sexo='Masculino';

CREATE TABLE MUJERES
SELECT * FROM nacimientos
WHERE sexo='Femenino';

CREATE TABLE INDETERMINADO
SELECT * FROM nacimientos
WHERE sexo='Indeterminado';

DROP TABLE nacimientos;





