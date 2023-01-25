USE laboratorio;

SELECT p.NombreContacto, pn.IdProducto, pn.NombreProducto,pn.PrecioUnidad
FROM proveedores p JOIN productos_neptuno pn
ON p.IdProveedor=pn.IdProveedor
ORDER BY p.NombreContacto, pn.NombreProducto;

SELECT p.NombreContacto, pn.IdProducto, pn.NombreProducto,pn.PrecioUnidad
FROM proveedores p, productos_neptuno pn
WHERE p.IdProveedor=pn.IdProveedor
ORDER BY p.NombreContacto, pn.NombreProducto;


SELECT  c.Empresa, p.NUMERO_PEDIDO,p.FECHA_PEDIDO, p.FORMA_PAGO
FROM clientes c LEFT JOIN pedidos p
ON c.Cod_cliente=p.CODIGO_CLIENTE
WHERE p.NUMERO_PEDIDO IS NULL
ORDER BY c.Empresa;

SELECT  c.Empresa 
FROM clientes c LEFT JOIN pedidos p
ON c.Cod_cliente=p.CODIGO_CLIENTE
WHERE p.NUMERO_PEDIDO IS NULL
ORDER BY c.Empresa;

SELECT* FROM proveedores p
LEFT JOIN productos_neptuno pn
ON p.IdProveedor=pn.IdProveedor
WHERE pn.IdProducto IS NULL;

SELECT* FROM proveedores p
RIGHT JOIN productos_neptuno pn
ON p.IdProveedor=pn.IdProveedor
WHERE p.IdProveedor IS NULL;










