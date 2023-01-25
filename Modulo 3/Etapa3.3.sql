use laboratorio; 
describe pedidos_neptuno;

select * from pedidos_neptuno;

select * from pedidos_neptuno #1
where year(FechaPedido) = 1998;

select * from pedidos_neptuno #2
top_spotify
where year(FechaPedido) = 1997 and month(FechaPedido) in (8, 9);

select * from pedidos_neptuno #3
where day(FechaPedido) = 1 and month(FechaPedido) = 1;

select *, datediff(curdate(), fechaPedido) AS 'Dias Transcurridos' from pedidos_neptuno; #4

SET LC_TIME_NAMES = 'es_AR';
select *, dayname(fechaPedido) AS 'Dias' from pedidos_neptuno; #5

select *, dayofyear(fechaPedido) AS 'dia del año' from pedidos_neptuno; #6

select *, monthname(fechaPedido) AS 'Mes' from pedidos_neptuno; #7

select *, date_add(fechaPedido, interval 30 day) AS 'Segundo vencimiento' from pedidos_neptuno; #8

select *, date_add(fechaPedido, interval 2 month) AS 'Segundo vencimiento' from pedidos_neptuno; #9

