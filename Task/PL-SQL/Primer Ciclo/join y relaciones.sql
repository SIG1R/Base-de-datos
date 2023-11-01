-- Ejemplo de la clusula WHERE
SELECT * FROM ClientePLSQL
WHERE nombre = 'Ricky Owens' OR nombre = 'Aaron Beard';

-- Mostrar los alquileres con los nombres de los clientes y las marcas de los autos.
DESCRIBE AlquilerPLSQL;
DESCRIBE ClientePLSQL;
DESCRIBE AutoPLSQL;
DESCRIBE ReservaPLSQL;
DESCRIBE SucursalPLSQL;

--  Mostrar los clientes que han realizado reservas en una sucursal específica.
SELECT C.* FROM ClientePLSQL C
INNER JOIN ReservaPLSQL R ON C.id_cliente = R.id_cliente
INNER JOIN SucursalPLSQL S ON R.id_sucursal = S.id_sucursal
WHERE S.pais = 'Honduras';

