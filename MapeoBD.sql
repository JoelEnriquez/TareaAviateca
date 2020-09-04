
CREATE DATABASE AVIATECA;
USE AVIATECA ;

CREATE TABLE AEROPUERTO (
  codigo INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  localidad VARCHAR(45) NOT NULL,
  pais VARCHAR(45) NOT NULL,
  PRIMARY KEY (codigo));

CREATE TABLE AVION (
  codigo INT NOT NULL AUTO_INCREMENT,
  pisos INT(1) NOT NULL,
  aerolinea VARCHAR(45) NOT NULL,
  PRIMARY KEY (codigo));

CREATE TABLE VUELO (
  codigo INT NOT NULL AUTO_INCREMENT,
  codigo_aeropuerto_salida INT NOT NULL,
  fecha_y_hora_salida DATETIME NULL,
  codigo_aeropuerto_llegada INT NOT NULL,
  fecha_y_hora_llegada DATETIME NULL,
  codigo_avion INT NOT NULL,
  PRIMARY KEY (codigo),
  CONSTRAINT fk_VUELO_AVION
    FOREIGN KEY (codigo_avion)
    REFERENCES AVION (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_VUELO_AEROPUERTO1
    FOREIGN KEY (codigo_aeropuerto_salida)
    REFERENCES AEROPUERTO (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_VUELO_AEROPUERTO2
    FOREIGN KEY (codigo_aeropuerto_llegada)
    REFERENCES AEROPUERTO (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE CLASE (
  id INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  numero_plazas INT NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE ASIGAR_CLASE (
  codigo_avion INT NOT NULL,
  codigo_clase INT NOT NULL,
  PRIMARY KEY (codigo_avion, codigo_clase),
  CONSTRAINT fk_ASIGAR_CLASE_AVION1
    FOREIGN KEY (codigo_avion)
    REFERENCES AVION (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_ASIGAR_CLASE_CLASE1
    FOREIGN KEY (codigo_clase)
    REFERENCES CLASE (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE CLIENTE (
  DPI VARCHAR(15) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  telefono VARCHAR(10) NOT NULL,
  tarjeta_credito VARCHAR(20) NULL,
  PRIMARY KEY (DPI));

CREATE TABLE RESERVACION (
  codigo INT NOT NULL AUTO_INCREMENT,
  fecha_reserva DATE NOT NULL,
  estado TINYINT NULL DEFAULT 1,
  CLIENTE_DPI VARCHAR(15) NOT NULL,
  VUELO_codigo INT NOT NULL,
  PRIMARY KEY (codigo),
  CONSTRAINT fk_RESERVACION_CLIENTE1
    FOREIGN KEY (CLIENTE_DPI)
    REFERENCES CLIENTE (DPI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_RESERVACION_VUELO1
    FOREIGN KEY (VUELO_codigo)
    REFERENCES VUELO (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE RESERVAR_CLASE (
  id INT NOT NULL AUTO_INCREMENT,
  cantidad_plazas INT NOT NULL,
  codigo_reservacion INT NOT NULL,
  id_clase INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_RESERVAR_CLASE_RESERVACION1
    FOREIGN KEY (codigo_reservacion)
    REFERENCES RESERVACION (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_RESERVAR_CLASE_CLASE1
    FOREIGN KEY (id_clase)
    REFERENCES CLASE (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE TARJETA_EMBARQUE (
  codigo INT NOT NULL AUTO_INCREMENT,
  fila INT NOT NULL,
  columna INT NOT NULL,
  piso INT NOT NULL,
  DPI_cliente VARCHAR(15) NOT NULL,
  id_clase INT NOT NULL,
  codigo_vuelo INT NOT NULL,
  PRIMARY KEY (codigo),
  CONSTRAINT fk_TARJETA_EMBARQUE_CLIENTE1
    FOREIGN KEY (DPI_cliente)
    REFERENCES CLIENTE (DPI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_TARJETA_EMBARQUE_VUELO1
    FOREIGN KEY (codigo_vuelo)
    REFERENCES VUELO (codigo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_TARJETA_EMBARQUE_CLASE1
    FOREIGN KEY (id_clase)
    REFERENCES CLASE (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
