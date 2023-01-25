 drop database laboratorio; #1
use laboratorio; #2

describe clientes_neptuno;

select IDCliente, NOMBRECOMPANIA, concat(Direccion," - ", ciudad," - ",pais) as Ubicacion from clientes_neptuno; #1

select IDCliente, NOMBRECOMPANIA, concat_ws(" - ", Direccion, ciudad, pais) as Ubicacion from clientes_neptuno; #2

select IDCliente, upper(NOMBRECOMPANIA) as EMPRESA, concat_ws(" - ", Direccion, ciudad, pais) as Ubicacion from clientes_neptuno; #3

select lower(IDCliente) as CODIGO, upper(NOMBRECOMPANIA) as EMPRESA from clientes_neptuno; #4

select fecha, left(sexo, 1) as SEXO, left(TIPO_PARTO, 1) as TIPO_PARTO from nacimientos; #5

select *, concat(left(ciudad, 1), " - ", left(pais, 1), right(pais, 2)) as CODIGO from clientes_neptuno; #6

select sexo, fecha, tipo_parto, atenc_part, local_part, substring(fecha, 4, 2) as MES from nacimientos; #7

select sexo, fecha, tipo_parto, replace(nacionalidad, "Chilena", "Ciudadana") as NACIONALIDAD from nacimientos; #8