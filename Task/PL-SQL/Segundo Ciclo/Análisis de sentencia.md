```sql
SELECT * FROM ClientePLSQL;
```

La sentencia anterior es una sentencia de consulta básica que en ese caso genera como resultado la selección de todos los registros de la entidad ***ClientePLSQL*** como se visualiza en la siguiente imágen.

![Imagen del primer ejercicio ciclo 2](../Screenshots/Ciclo2%201.png)

---

```sql
SELECT * FROM AutoPLSQL; 
```

La sentencia anterior es una sentencia de consulta básica que en ese caso genera como resultado la selección de todos los registros de la entidad ***AutoPLSQL*** como se visualiza en la siguiente imágen.

![Imagen del segundo ejercicio ciclo 2](../Screenshots/Ciclo2%202.png)

---

```sql
SELECT * FROM AlquilerPLSQL; 
```

La sentencia anterior es una sentencia de consulta básica que en ese caso genera como resultado la selección de todos los registros de la entidad ***AlquilerPLSQL*** como se visualiza en la siguiente imágen.

![Imagen del tercer ejercicio ciclo 2](../Screenshots/Ciclo2%203.png)

---

```sql
SELECT c.nombre, a.marca, a.modelo 
FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente; 
```

La sentencia anterior intenta seleccionar diferentes campos de clientes que cuentan con un alquiler. La relación entre tablas está correctamente definida, más sin embargo, seguido a la cláusula ***SELECT** se intentan llamar campos que no corresponden a la tabla alquiler.

![Imagen del tercer ejercicio ciclo 2](../Screenshots/Ciclo2%204e.png)

---


```sql
SELECT a.marca, a.modelo, a.ano FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto; 
```
   
```sql
SELECT * FROM AlquilerPLSQL WHERE id_cliente = 1; 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE id_auto = 1; 
```
   
```sql
SELECT * FROM AlquilerPLSQL WHERE id_sucursal = 1; 
```   

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_inicio = '2023-09-27'; 
```

```sql
SELECT COUNT(*) FROM AlquilerPLSQL;
```

```sql
SELECT c.nombre FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente JOIN SucursalPLSQL s ON a.id_sucursal = s.id_sucursal WHERE s.nombre = 'Sucursal Central';
```

```sql
SELECT a.marca, a.modelo FROM AutoPLSQL a
```

```sql
JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto WHER al.id_cliente = 1 AND al.fecha_inicio = '2023-09-27';
```

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_fin - fecha_inicio > 7;
```

```sql
SELECT c.nombre, COUNT(*) AS numero_alquileres FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente GROUP BY c.nombre ORDER BY numero_alquileres DESC LIMIT 1;
```

```sql
SELECT a.marca, a.modelo, COUNT(*) AS numero_alquileres FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto GROUP BY a.marca, a.modelo ORDER BY numero_alquileres DESC LIMIT 1;
```

```sql
SELECT s.nombre, COUNT(*) AS numero_alquileres FROM SucursalPLSQL s JOIN AlquilerPLSQL al ON s.id_sucursal = al.id_sucursal GROUP BY s.nombre ORDER BY numero_alquileres DESC LIMIT 1;
```

```sql
SELECT EXTRACT(MONTH FROM fecha_inicio) AS mes, COUNT(*) AS numero_alquileres FROM AlquilerPLSQL GROUP BY EXTRACT(MONTH FROM fecha_inicio) ORDER BY numero_alquileres DESC LIMIT 1;
```

```sql
SELECT EXTRACT(DAYOFWEEK FROM fecha_inicio) AS dia_semana, COUNT(*) AS numero_alquileres FROM AlquilerPLSQL GROUP BY EXTRACT(DAYOFWEEK FROM fecha_inicio) ORDER BY numero_alquileres DESC LIMIT 1;
```

```sql
SELECT * FROM AlquilerPLSQL ORDER BY precio DESC LIMIT 1;
```

```sql
SELECT * FROM AlquilerPLSQL ORDER BY precio ASC LIMIT 1;
```

```sql
SELECT * FROM ClientePLSQL WHERE nombre LIKE '%Juan%'; SELECT a.marca, a.modelo, a.ano FROM AutoPLSQL a WHERE precio < 10000; 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30'; 
```

```sql
SELECT c.nombre, a.marca, a.modelo FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente WHERE c.direccion LIKE '%Bogotá%'; 
```

```sql
SELECT a.marca, a.modelo, a.ano FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto WHERE al.id_reserva = 1; 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE id_cliente IN (1, 2, 3); SELECT * FROM AlquilerPLSQL WHERE id_auto IN (1, 2, 3); 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE id_sucursal IN (1, 2, 3); 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30' AND id_cliente IN (1, 2, 3); 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30' AND id_auto IN (1, 2, 3); 
```

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30' AND id_sucursal IN (1, 2, 3); SELECT c.nombre, COUNT(*) AS numero_alquileres FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente GROUP BY c.nombre ORDER BY numero_alquileres DESC LIMIT 1; 
```

```sql
SELECT a.marca, a.modelo, COUNT(*) AS numero_alquileres FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto GROUP BY a.marca, a.modelo ORDER BY numero_alquileres DESC LIMIT 1; 
```

```sql
SELECT s.nombre, COUNT(*) AS numero_alquileres FROM SucursalPLSQL s JOIN AlquilerPLSQL al ON s.id_sucursal = al.id_sucursal GROUP BY s.nombre ORDER BY numero_alquileres DESC LIMIT 1; 
```

```sql
SELECT EXTRACT(MONTH FROM fecha_inicio) AS mes, COUNT(*) AS numero_alquileres FROM AlquilerPLSQL GROUP BY EXTRACT(MONTH FROM fecha_inicio) ORDER BY numero_alquileres DESC LIMIT 1; 
```

```sql
SELECT EXTRACT(DAYOFWEEK FROM fecha_inicio) AS dia_semana, COUNT(*) AS numero_alquileres FROM AlquilerPLSQL GROUP BY EXTRACT(DAYOFWEEK FROM fecha_inicio) ORDER BY numero_alquileres DESC LIMIT 1; 
```

```sql
SELECT * FROM AlquilerPLSQL ORDER BY precio DESC LIMIT 1; 
```

```sql
SELECT * FROM AlquilerPLSQL ORDER BY precio ASC LIMIT 1; 
```

```sql
SELECT * FROM ClientePLSQL WHERE nombre LIKE '%Juan%' AND fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30'; SELECT a.marca, a.modelo, a.ano FROM AutoPLSQL a WHERE precio < 10000 AND fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30';
```