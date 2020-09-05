select c.*, r.codigo from CLIENTE c INNER JOIN RESERVACION r ON r.CLIENTE_DPI=c.DPI where r.estado=1;
 
