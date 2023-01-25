USE laboratorio;

SELECT* FROM mujeres WHERE SEMANAS<20
UNION
SELECT* FROM varones WHERE SEMANAS<20
UNION
SELECT* FROM INDETERMINADO WHERE SEMANAS <20;

/* septiembre, 
con más de 40 semanas de gestación y 
nacidos de madres chilenas casadas. */

SELECT* FROM mujeres 
WHERE fecha LIKE '%/09/%' AND semanas>40 AND NACIONALIDAD='Chilena' 
AND ESTADO_CIVIL_MADRE='Casada'
	UNION
SELECT* FROM varones
WHERE fecha LIKE '%/09/%' AND semanas>40 AND NACIONALIDAD='Chilena' 
AND ESTADO_CIVIL_MADRE='Casada'
	UNION
SELECT* FROM indeterminado
WHERE fecha LIKE '%/09/%' AND semanas>40 AND NACIONALIDAD='Chilena' 
AND ESTADO_CIVIL_MADRE='Casada';

SELECT* FROM productos_neptuno 
WHERE PrecioUnidad>80
	UNION
SELECT* FROM productos_suspendidos
WHERE PrecioUnidad>80
ORDER BY NombreProducto;

SELECT*, 'A la venta' AS Condición FROM productos_neptuno 
WHERE PrecioUnidad>80
	UNION
SELECT*, 'Suspendido' AS Condición FROM productos_suspendidos
WHERE PrecioUnidad>80
ORDER BY NombreProducto;

SELECT* FROM productos_neptuno
WHERE NombreCategoria='Bebidas'
	UNION
SELECT* FROM productos_suspendidos
WHERE NombreCategoria='Bebidas'
ORDER BY NombreProducto;

INSERT INTO productos_suspendidos
SELECT* FROM productos_neptuno
WHERE IdProducto=43;

SELECT* FROM productos_neptuno
WHERE NombreCategoria='Bebidas'
	UNION ALL
SELECT* FROM productos_suspendidos
WHERE NombreCategoria='Bebidas'
ORDER BY NombreProducto;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM productos_neptuno 
WHERE IdProducto=43;





