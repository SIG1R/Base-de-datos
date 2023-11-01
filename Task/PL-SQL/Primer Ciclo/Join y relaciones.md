En este momento nos interesa empezar a interactuar entre las diferentes entidades, para esto existen diferentes joins entre tablas

1. Clausula `INNER JOIN`

```sql
SELECT C.* FROM ClientePLSQL C
INNER JOIN ReservaPLSQL R ON C.id_cliente = R.id_cliente
INNER JOIN SucursalPLSQL S ON R.id_sucursal = S.id_sucursal
WHERE S.pais = 'Honduras';
```

2. Left joins
3. Right joins
# Ejercicios

1. Mostrar los alquileres con los nombres de los clientes y las marcas de los autos.


2. Mostrar los clientes que han realizado reservas en una sucursal específica.

Para este punto reconocemos dos principales entidades en el enunciado.

```sql
SELECT C.* FROM ClientePLSQL C
INNER JOIN ReservaPLSQL R ON C.id_cliente = R.id_cliente
INNER JOIN SucursalPLSQL S ON R.id_sucursal = S.id_sucursal
WHERE S.pais = 'Honduras';
```



3. Mostrar los autos que han sido alquilados junto con los nombres de los clientes.

4. Mostrar los detalles de las reservas con los nombres de los clientes y las ciudades de las sucursales.

5. Mostrar los clientes que no han realizado ninguna reserva.