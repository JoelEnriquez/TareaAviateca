SELECT C.*, A.nombre FROM TARJETA_EMBARQUE T INNER JOIN CLIENTE C ON T.DPI_cliente=C.DPI INNER JOIN VUELO V ON T.codigo_vuelo=V.codigo INNER JOIN AEROPUERTO A ON V.codigo_aeropuerto_llegada=A.codigo WHERE A.codigo='AG-001' AND CAST(fecha_y_hora_llegada AS DATE) = '2020-08-06';
#Codigo del aeropueto y la fecha son datos variables
