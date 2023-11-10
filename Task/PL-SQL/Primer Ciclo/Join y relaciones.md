En este momento nos interesa empezar a interactuar entre las diferentes entidades, para esto existen diferentes joins entre tablas

1. Clausula `INNER JOIN`

```sql
SELECT C.* FROM ClientePLSQL C
INNER JOIN ReservaPLSQL R ON C.id_cliente = R.id_cliente
INNER JOIN SucursalPLSQL S ON R.id_sucursal = S.id_sucursal
WHERE S.pais = 'Honduras';
```

![Example join 1](../Screenshots/example%20join%201.png)

2. Left joins
3. Right joins
# Ejercicios

1. Mostrar los alquileres con los nombres de los clientes y las marcas de los autos.

```sql
SELECT c.nombre  AS nombre_cliente, au.marca,  a.id_alquiler
FROM ClientePLSQL c -- establemecos la abrebiatura para la tabla ClientePLSQL
INNER JOIN AlquilerPLSQL a ON a.id_cliente = c.id_cliente
INNER JOIN AutoPLSQL au ON a.id_auto = au.id_auto;
```

![](../Screenshots/join%20exercise%201.png)

2. Mostrar los clientes que han realizado reservas en una sucursal específica.

```sql
SELECT C.* 
FROM ClientePLSQL C -- establemecos la abrebiatura para la tabla ClientePLSQL
INNER JOIN ReservaPLSQL R ON C.id_cliente = R.id_cliente
INNER JOIN SucursalPLSQL S ON R.id_sucursal = S.id_sucursal
WHERE S.pais = 'Honduras';
```

![Example join 1](../Screenshots/example%20join%201.png)

3. Mostrar los autos que han sido alquilados junto con los nombres de los clientes.

```sql
SELECT c.nombre AS cliente, a.*
FROM AutoPLSQL a
INNER JOIN AlquilerPLSQL au ON au.id_auto = a.id_auto
INNER JOIN ClientePLSQL c ON c.id_cliente = au.id_cliente;
```

![Example join 2](../Screenshots/join%20exercise%202.png)

4. Mostrar los detalles de las reservas con los nombres de los clientes y las ciudades de las sucursales.

```sql
SELECT r.id_reserva, c.nombre, s.ciudad, r.fecha_reserva
FROM ReservaPLSQL r
INNER JOIN ClientePLSQL c ON r.id_cliente = c.id_cliente
INNER JOIN SucursalPLSQL s ON s.id_sucursal = r.id_sucursal;
```

![Example join 2](../Screenshots/join%20exercise%204.png)

5. Mostrar los clientes que no han realizado ninguna reserva.

```sql
SELECT c.*, r.id_reserva
FROM ClientePLSQL c
LEFT JOIN ReservaPLSQL r ON r.id_cliente = c.id_cliente
WHERE r.id_reserva IS NULL;
```

![Example join 2](../Screenshots/join%20exercise%205.png)