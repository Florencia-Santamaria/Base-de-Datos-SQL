USE laboratorio;

ALTER TABLE Cliente 
CHANGE COLUMN clienteID IDcliente int,
modify nombre varchar(30) not null,
modify apellido varchar(35) not null;

ALTER TABLE articulo
CHANGE COLUMN articuloID IDarticulo int,
MODIFY nombre varchar(75),
MODIFY precio double unsigned not null,
modify stock integer unsigned not null;

ALTER TABLE Factura
MODIFY monto double unsigned,
CHANGE COLUMN clienteID IDcliente int,
CHANGE COLUMN articuloID IDarticulo int;


