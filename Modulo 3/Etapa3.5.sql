use laboratorio;
select * from pedidos_neptuno;
select * from productos_neptuno;
select * from nacimientos;

select count(*) as 'cantidad registros' from pedidos_neptuno; #1

select count(*) as 'entregas speedy express' from pedidos_neptuno #2
where transportista = 'speedy express';

select count(*) as 'VENTAS' from pedidos_neptuno #3
where empleado like 'C%';

select round(avg(PrecioUnidad),2) as "PRECIO PROMEDIO" from productos_neptuno; #4

select min(PrecioUnidad) as "PRECIO MINIMO" from productos_neptuno; #5

select max(PrecioUnidad) as "PRECIO MAXIMO" from productos_neptuno; #6

select nombrecategoria as categoria, max(preciounidad) as 'PRECIO MAXIMO' from productos_neptuno #7
group by categoria;

select transportista, count(transportista) as 'ENTREGAS' from pedidos_neptuno #8
group by transportista;

select sexo, count(*) as "NACIMIENTOS" from nacimientos #9
group by sexo;

select nombrecompania as CLIENTE, round(sum(cargo),2) as "TOTAL GASTOS" from PEDIDOS_NEPTUNO #10
group by nombrecompania;

select seccion, count(*) as productos from productos #11
group by seccion
order by productos desc;

select year(fechapedido) as año, month(fechapedido) as mes, count(idpedido) as ventas from PEDIDOS_NEPTUNO #12
group by año, mes
order by año, month(fechapedido);

select empleado,  #13
round(sum(cargo),2) as FACTURACION, 
round(avg(cargo)) as PROMEDIO, 
max(cargo) as "MEJOR VENTA",
min(cargo) as "PEOR VENTA", 
count(cargo) as "VENTAS"
from pedidos_neptuno
group by empleado;