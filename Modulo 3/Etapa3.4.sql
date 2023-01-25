use laboratorio;

select *, round(Cargo*0.21, 2) as IVA from pedidos_neptuno; #1

select *, round(Cargo*0.21, 2) as IVA, round(Cargo*1.21, 2) as NETO from pedidos_neptuno; #2

select *, floor(Cargo*1.21) as 'FAVOR AL CLIENTE' from pedidos_neptuno; #3

select *, ceil(Cargo*1.21) as 'FAVOR A LA EMPRESA' from pedidos_neptuno; #4