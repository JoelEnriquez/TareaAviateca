SELECT A.*, COUNT(V.codigo_avion) vuelos FROM VUELO V INNER JOIN AVION A ON V.codigo_avion=A.codigo INNER JOIN AEROPUERTO AER ON V.codigo_aeropuerto_llegada=AER.codigo WHERE AER.pais='Argentina' GROUP BY A.codigo ORDER BY vuelos DESC LIMIT 10;
#El nombre del pais es un dato variable
