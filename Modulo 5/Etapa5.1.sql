USE laboratorio;

SELECT * FROM productos_neptuno
WHERE PrecioUnidad>  (SELECT AVG(PrecioUnidad) FROM productos_neptuno
ORDER BY NombreProducto);

SELECT * FROM productos_neptuno
WHERE PrecioUnidad > (SELECT MAX(PrecioUnidad) FROM productos_suspendidos
					ORDER BY PrecioUnidad DESC);

SELECT* FROM varones
WHERE SEMANAS <  (SELECT MIN(SEMANAS) FROM indeterminado);    

SELECT*FROM productos_neptuno
WHERE NombreProducto= (SELECT left(NOMBRE_EMPLEADO,1) FROM empleados
						WHERE IdEmpleado=8)
                        ORDER BY NombreProducto;
                        
SELECT* FROM productos_neptuno
WHERE IdProveedor =  (SELECT MAX(IdProveedor) FROM proveedores)
					  ORDER BY NombreProducto;
                      
SELECT* FROM productos_neptuno
WHERE NombreCategoria='Bebidas' 
AND PrecioUnidad >  (SELECT MAX(PrecioUnidad)FROM productos_neptuno
					WHERE NombreCategoria='Condimentos');
                    
SELECT* FROM mujeres
WHERE EDAD_MADRE > (SELECT MAX(EDAD_MADRE) FROM varones);


                      


