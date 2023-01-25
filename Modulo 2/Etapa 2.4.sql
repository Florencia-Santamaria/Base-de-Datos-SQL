USE laboratorio;

SELECT* FROM nacimientos
WHERE NACIONALIDAD='Extranjera';

SELECT* FROM nacimientos
WHERE EDAD_MADRE<18
ORDER BY EDAD_MADRE;

SELECT *FROM nacimientos
WHERE EDAD_MADRE=EDAD_PADRE;

SELECT * FROM NACIMIENTOS
WHERE EDAD_PADRE-EDAD_MADRE>40;

SELECT* FROM clientes_neptuno
WHERE pais='Argentina';

SELECT* FROM clientes_neptuno
WHERE pais != 'Argentina'
ORDER BY pais;

SELECT* FROM nacimientos
WHERE semanas<20 
ORDER BY semanas DESC;

SELECT* FROM nacimientos
WHERE SEXO='Femenino' AND NACIONALIDAD='Extranjera' AND EDAD_MADRE>=40;

SELECT* FROM clientes_neptuno
WHERE pais='Argentina'|| pais='Brasil'||pais='Venezuela';

SELECT* FROM nacimientos
WHERE SEMANAS BETWEEN 20 AND 25
ORDER BY semanas;

/*e la tabla NACIMIENTOS, utilizar el operador IN y obtener una lista de todos los bebés 
que nacieron en las comunas 1101, 3201, 
5605, 8108, 9204, 13120 y 15202. Mostrar 
todos los campos de la tabla en el resultado 
de la consulta y ordenar de menor a mayor
los registros, por los números de comuna.
*/

SELECT* FROM nacimientos
WHERE COMUNA in(1101,3201, 
5605, 8108, 9204, 13120 , 15202)
ORDER BY comuna;

SELECT* FROM clientes_neptuno
WHERE IDcliente LIKE'C%';

SELECT* FROM clientes_neptuno
WHERE IDcliente LIKE 'B____';

SELECT* FROM nacimientos
WHERE HIJOS_TOTAL >10;



