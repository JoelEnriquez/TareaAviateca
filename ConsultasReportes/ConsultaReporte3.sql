SELECT (SUM((SELECT (COUNT(T.id_clase)/(SELECT SUM(C.numero_plazas) total_plazas from AVION A INNER JOIN ASIGNAR_CLASE AC ON A.codigo=AC.codigo_avion INNER JOIN CLASE C ON AC.codigo_clase=id WHERE AC.codigo_avion=1)*100) porcentaje FROM TARJETA_EMBARQUE T WHERE T.codigo_vuelo=V.codigo)))/(COUNT(V.codigo)) porcentajeDiario FROM VUELO V WHERE V.codigo_avion=1 AND (CAST(V.fecha_y_hora_llegada AS DATE)) = '2020-08-05'