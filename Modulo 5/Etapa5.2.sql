USE laboratorio;

SELECT IdCliente, NombreCompania, Ciudad, Pais,
CASE
WHEN Pais IN( 'México', 'Canadá', 'USA') THEN 'América del Norte'
WHEN Pais IN('Argentina', 'Brasil', 'Venezuela') THEN 'América del Sur'
ELSE 'Europa'
END AS Continente
FROM clientes_neptuno
ORDER BY Continente,Pais;

SELECT IdPedido, NombreCompania, FechaPedido, Cargo,
CASE
WHEN Cargo>700 THEN 'Excelente'
WHEN Cargo BETWEEN 500 AND 700 THEN 'Muy Bueno'
WHEN Cargo BETWEEN 250 AND 500 THEN 'Bueno'
WHEN Cargo BETWEEN 50 AND 250 THEN 'Regular'
WHEN Cargo < 50 THEN 'Malo'
END AS Evaluacion
FROM pedidos_neptuno
ORDER BY Cargo DESC; 

SELECT IdProducto, NombreProducto, NombreCategoria, PrecioUnidad,
CASE
WHEN PrecioUnidad>100 THEN 'DELUXE'
WHEN PrecioUnidad>10 THEN 'REGULAR'
ELSE 'ECONOMICO'
END AS Tipo
FROM productos_neptuno
ORDER BY PrecioUnidad DESC;

