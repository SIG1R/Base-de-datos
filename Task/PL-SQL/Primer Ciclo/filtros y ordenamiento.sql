-- Ejemplo de la clusula WHERE
SELECT * FROM ClientePLSQL
WHERE nombre = 'Ricky Owens' OR nombre = 'Aaron Beard';

-- Mostrar los clientes que se llaman "Juan".
SELECT * FROM ClientePLSQL
WHERE nombre = 'Juan';

-- Mostrar los autos de marca "Toyota".
SELECT * FROM AutoPLSQL
WHERE marca = 'Toyota';

-- Mostrar los alquileres que ocurrieron después de una fecha específica.
SELECT * FROM AutoPLSQL
WHERE ano < 2012;

-- Mostrar las sucursales ubicadas en "Madrid".
SELECT * FROM SucursalPLSQL
WHERE ciudad = 'Madrid';

-- Mostrar las reservas realizadas por un cliente específico.
SELECT * FROM ReservaPLSQL
WHERE id_cliente = 570;