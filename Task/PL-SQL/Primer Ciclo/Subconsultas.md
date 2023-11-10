
# Ejercicios

1. Mostrar los clientes que han realizado al menos una reserva.

```sql
SELECT *
FROM (
    SELECT c.id_cliente, c.nombre
    FROM ClientePLSQL c
    INNER JOIN ReservaPLSQL r ON r.id_cliente = c.id_cliente  
    )
HAVING COUNT(id_cliente) > 1
GROUP BY id_cliente, nombre
;
```

![Filter exercise 1](../Screenshots/sub%20excercise%201.png)

2. Mostrar los autos que no han sido alquilados aún.

```sql
SELECT sub.id_auto, sub.marca, sub.modelo
FROM (
    SELECT id_auto, marca, modelo
    FROM AutoPLSQL
    ) sub
LEFT JOIN AlquilerPLSQL a ON a.id_auto = sub.id_auto
WHERE id_alquiler IS NULL
;
```

![Filter exercise 1](../Screenshots/sub%20excercise%202.png)

3. Encontrar los clientes que han alquilado el mismo auto más de una vez.

```sql
SELECT sub.*
FROM (
    SELECT c.id_cliente, c.nombre, c.direccion, c.telefono
    FROM ClientePLSQL c
    JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente
    JOIN AutoPLSQL auto ON a.id_auto = auto.id_auto
    ) sub
GROUP BY sub.id_cliente, sub.nombre, sub.direccion, sub.telefono
HAVING COUNT(sub.id_cliente) > 1
;
```

![Filter exercise 1](../Screenshots/sub%20excercise%203.png)

4. Mostrar los clientes que han realizado alquileres en la misma ciudad en la que viven.

```sql
SELECT c.*
FROM (
    SELECT a.id_cliente
    FROM AlquilerPLSQL a
    INNER JOIN ReservaPLSQL r ON a.id_reserva = r.id_reserva
    INNER JOIN SucursalPLSQL s ON s.id_sucursal = r.id_sucursal
    ) sub

INNER JOIN ClientePLSQL c ON c.id_cliente = sub.id_cliente
;
```

![Filter exercise 1](../Screenshots/sub%20excercise%204.png)

5. Encontrar los autos que han sido alquilados en la misma sucursal donde se realizó una reserva.  

```sql
SELECT *
FROM (
    SELECT a.id_auto
    FROM ReservaPLSQL r
    INNER JOIN SucursalPLSQL s ON r.id_sucursal = s.id_sucursal
    INNER JOIN AlquilerPLSQL a ON a.id_reserva = r.id_reserva
    )sub
INNER JOIN AutoPLSQL au ON au.id_auto = sub.id_auto
;
```

![Filter exercise 1](../Screenshots/sub%20excercise%205.png)