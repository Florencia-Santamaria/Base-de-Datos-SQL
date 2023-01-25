USE laboratorio;

INSERT INTO factura
VALUES ('A', 28, 14, 335, '2021-03-18', 1589.50),
       ('A', 39, 26, 157, '2021-04-12', 979.75),
       ('B', 8, 17, 95, '2021-04-25', 513.35),
       ('B', 12, 5, 411, '2021-05-03', 2385.70),
       ('B', 19, 50, 157, '2021-05-26', 979.75);
       
INSERT INTO articulo
VALUES (95, 'Webcam con Micrófono Plug & Play', 513.35, 39),
	   (157, 'Apple AirPods Pro', 979.75, 152),
	   (335, 'Lavasecarropas Automático Samsung', 1589.50, 12),
	   (411, 'Gloria Trevi / Gloria / CD+DVD', 2385.70, 2); 
       
INSERT INTO cliente
VALUES (5, 'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA', 'VIP'),
	   (14, 'Gloria', 'Fernández', '23-35965852-5', 'Constitución 323', 'GBA'),
	   (17, 'Gonzalo', 'López', '23-33587416-0', 'Arias 2624', 'GBA'),
	   (26, 'Carlos', 'García', '23-42321230-9', 'Pasteur 322 - 2ºC', 'VIP'),
	   (50, 'Micaela', 'Altieri', '23-22885566-5', 'Santamarina 1255', 'GBA');
       
       