INSERT INTO CLIENTE VALUES ('2320556340103','Manuel','Coxic','Guatemala','23431254',null);
INSERT INTO CLIENTE VALUES ('4421232425454','Fernando','Barrios','Quetzaltenando','34235356',null);
INSERT INTO CLIENTE VALUES ('6534234223665','Alexandro','Tipaz','Mazate','34532343', null);
INSERT INTO CLIENTE VALUES ('1234225432342','Alejandro','Ordoñez','San marcos','08967456','4362975623602304');
INSERT INTO CLIENTE VALUES ('6752213454524','Maria','Meza','Italia','97845632','344448691936138');
INSERT INTO CLIENTE VALUES ('6752213454522','Paola','Reyes','Direccion','12345678','344448691936138');
INSERT INTO CLIENTE VALUES ('1231232544332','Juan','Monzon','Alemania','09238923','938466723788843');


INSERT INTO CLASE (nombre, numero_plazas) VALUES ('Economico',40);
INSERT INTO CLASE (nombre, numero_plazas) VALUES ('Business',20);
INSERT INTO CLASE (nombre, numero_plazas) VALUES ('Premium',10);

INSERT INTO AVION (pisos,aerolinea) VALUES (2,'Air Nostrum');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'Lufthansa');
INSERT INTO AVION (pisos,aerolinea) VALUES (2,'Air Europa');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'StarFlyer');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'Sky Airline');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'Sky Player');

INSERT INTO ASIGNAR_CLASE VALUES (1,1);
INSERT INTO ASIGNAR_CLASE VALUES (1,2);
INSERT INTO ASIGNAR_CLASE VALUES (2,2);
INSERT INTO ASIGNAR_CLASE VALUES (2,3);
INSERT INTO ASIGNAR_CLASE VALUES (3,3);
INSERT INTO ASIGNAR_CLASE VALUES (4,1);

INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('ES-001','Aeropuerto de Albacete','Castilla-La Mancha','España');
INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('AG-001','Aeroparque Jorge Newbery','Buenos Aires','Argentina');
INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('ES-002','Aeropuerto de Barcelona-El Prat','Cataluña','España');
INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('PR-001','Aeropuerto de Corvo','Isla de Corvo','Portugal');
INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('RU-001','Aeropuerto de Edimburgo','Escocia','Reino Unido');
INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('GT-001','Aeropuerto Internacional Mundo Maya','Peten','Guatemala');
INSERT INTO AEROPUERTO (codigo, nombre,localidad,pais) VALUES ('CN-001','Aeropuerto Internacional Toronto Pearson','Quebec','Canada');

INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES ('ES-001','2020-8-5 8:45','AG-001','2020-8-6 16:55',1);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES ('ES-001','2020-9-11 8:45','RU-001','2020-8-6 16:55',2);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES ('RU-001','2020-10-21 8:45','AG-001','2020-8-6 16:55',3);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES ('CN-001','2020-6-4 8:45','GT-001','2020-8-6 16:55',1);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES ('GT-001','2020-10-21 8:45','PR-001','2020-8-6 16:55',1);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES ('ES-002','2020-6-4 8:45','CN-001','2020-8-6 16:55',2);

INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-8-5',0,'2320556340103',1);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-9-11',0,'4421232425454',2);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-10-21',0,'6534234223665',3);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-8-15',0,'1234225432342',4);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-6-4',1,'6752213454522',5);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-6-25',1,'6752213454522',6);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-8-5',1,'1234225432342',1);

INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (2,1,1);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (5,1,2);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (2,2,2);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (3,3,3);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (4,4,1);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (6,5,2);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (3,6,1);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (2,6,2);


INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(1,1,1,'2320556340103',1,1);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(2,1,2,'4421232425454',2,2);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(3,2,2,'6534234223665',3,3);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(1,2,1,'1234225432342',1,4);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(2,1,1,'6752213454524',1,4);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(4,5,1,'1231232544332',2,1);
