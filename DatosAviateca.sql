INSERT INTO CLIENTE VALUES ('2320556340103','Manuel','Coxic','Guatemala','23431254','5517998484793112');
INSERT INTO CLIENTE VALUES ('4421232425454','Fernando','Barrios','Quetzaltenando','34235356','5489829637495210');
INSERT INTO CLIENTE VALUES ('6534234223665','Alexandro','Tipaz','Mazate','34532343','4938620198447280');
INSERT INTO CLIENTE VALUES ('1234225432342','Alejandro','Ordoñez','San marcos','08967456','4362975623602304');
INSERT INTO CLIENTE VALUES ('6752213454524','Maria','Meza','Italia','97845632','344448691936138');
INSERT INTO CLIENTE VALUES ('1231232544332','Juan','Monzon','Alemania','09238923','938466723788843');


INSERT INTO CLASE VALUES (1111,'Economico',400);
INSERT INTO CLASE VALUES (2222,'Business',200);
INSERT INTO CLASE VALUES (3333,'Premium',100);

INSERT INTO AVION (pisos,aerolinea) VALUES (2,'Air Nostrum');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'Lufthansa');
INSERT INTO AVION (pisos,aerolinea) VALUES (2,'Air Europa');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'StarFlyer');
INSERT INTO AVION (pisos,aerolinea) VALUES (1,'Sky Airline');

INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeropuerto de Albacete','Castilla-La Mancha','España');
INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeroparque Jorge Newbery','Buenos Aires','Argentina');
INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeropuerto de Barcelona-El Prat','Cataluña','España');
INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeropuerto de Corvo','Isla de Corvo','Portugal');
INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeropuerto de Edimburgo','Escocia','Reino Unido');
INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeropuerto Internacional Mundo Maya','Peten','Guatemala');
INSERT INTO AEROPUERTO (nombre,localidad,pais) VALUES ('Aeropuerto Internacional Toronto Pearson','Quebec','Canada');


INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-8-5',01,'2320556340103',1);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-9-11',02,'4421232425454',2);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-10-21',04,'6534234223665',3);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-8-15',05,'1234225432342',4);
INSERT INTO RESERVACION (fecha_reserva,estado,CLIENTE_DPI,VUELO_codigo) VALUES ('2020-6-4',12,'6752213454522',5);

INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (11,1,1111);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (12,2,2222);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (13,3,3333);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (14,4,1111);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (15,1,1111);
INSERT INTO RESERVAR_CLASE (cantidad_plazas,codigo_reservacion,id_clase) VALUES (16,5,2222);

INSERT INTO ASIGNAR_CLASE VALUES (1111,1);
INSERT INTO ASIGNAR_CLASE VALUES (2222,2);
INSERT INTO ASIGNAR_CLASE VALUES (3333,3);
INSERT INTO ASIGNAR_CLASE VALUES (1111,1);
INSERT INTO ASIGNAR_CLASE VALUES (1111,4);
INSERT INTO ASIGNAR_CLASE VALUES (2222,1);

INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES (001,'2020-8-5 8:45',110,'2020-8-6 16:55',1);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES (001,'2020-9-11 8:45',110,'2020-8-6 16:55',2);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES (011,'2020-10-21 8:45',110,'2020-8-6 16:55',3);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES (010,'2020-6-4 8:45',101,'2020-8-6 16:55',1);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES (110,'2020-10-21 8:45',001,'2020-8-6 16:55',1);
INSERT INTO VUELO (codigo_aeropuerto_salida,fecha_y_hora_salida,codigo_aeropuerto_llegada,fecha_y_hora_llegada,codigo_avion) VALUES (111,'2020-6-4 8:45',011,'2020-8-6 16:55',2);


INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(1,1,1,'2320556340103',1111,1);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(2,1,2,'4421232425454',2222,2);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(3,2,2,'6534234223665',3333,3);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(1,2,1,'1234225432342',1111,1);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(2,1,1,'6752213454524',1111,4);
INSERT INTO TARJETA_EMBARQUE (fila,columna,piso,DPI_cliente,id_clase,codigo_vuelo)VALUES(4,5,1,'1231232544332',2222,1);