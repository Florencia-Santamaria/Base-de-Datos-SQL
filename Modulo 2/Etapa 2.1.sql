USE laboratorio;

ALTER TABLE clientes_neptuno 
MODIFY IDcliente varchar(5),
ADD primary key(IDcliente),
MODIFY NombreCompania varchar(100) not null,
MODIFY pais varchar(15) not null
;

RENAME TABLE cliente TO contactos;

ALTER TABLE clientes
MODIFY Cod_cliente varchar(7),
ADD primary key(Cod_cliente),
MODIFY Empresa varchar(100) not null,
MODIFY Ciudad varchar(25)not null,
MODIFY Telefono int unsigned,
MODIFY Responsable varchar(30);

ALTER TABLE pedidos
MODIFY NUMERO_PEDIDO INT UNSIGNED,
ADD primary key(NUMERO_PEDIDO),
MODIFY CODIGO_CLIENTE varchar(7) not null,
MODIFY FECHA_PEDIDO date not null,
MODIFY FORMA_PAGO enum('aplazado', 'contado', 'tarjeta'),
MODIFY ENVIADO enum('SI', 'NO');

ALTER TABLE productos
MODIFY COD_PRODUCTO int unsigned not null,
MODIFY SECCION varchar(20) not null,
MODIFY NOMBRE varchar(40) not null,
MODIFY IMPORTADO enum('VERDADERO', 'FALSO'),
MODIFY ORIGEN varchar(25) not null,
MODIFY DIA int unsigned not null, 
MODIFY MES int unsigned not null, 
MODIFY ANO int unsigned not null;















