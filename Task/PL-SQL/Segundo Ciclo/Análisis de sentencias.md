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

![Imagen del cuarto ejercicio ciclo 2](../Screenshots/Ciclo2%204e.png)

---

```sql
SELECT a.marca, a.modelo, a.ano 
FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto; 
```

Esta sentencia nos muestran los campos específicos los autos que han sido alquilados.

![Imagen del quinto ejercicio ciclo 2](../Screenshots/Ciclo2%205.png)

---

```sql
SELECT * FROM AlquilerPLSQL
WHERE id_cliente = 1; 
```

La sentencia filtra los registros de los diferentes alquileres asociados al cliente con el id 1, en este caso no existe 

![Imagen del sexto ejercicio ciclo 2](../Screenshots/Ciclo2%206.png)

---

```sql
SELECT * FROM AlquilerPLSQL WHERE id_auto = 1; 
```

Sí la información que queremos obtener son los registros donde el carro asignado con el ID = 1 fue alquilado, la anterior sentencia nos ayudará a obtener esta información, en la siguiente imágen se observa que no el auto con el ID específicado no ha sido alquilado.

![Imagen del séptimo ejercicio ciclo 2](../Screenshots/Ciclo2%207.png)

---

```sql
SELECT * FROM AlquilerPLSQL WHERE id_sucursal = 1; 
```   

Esta sentencia desea mostrar los alquileres que se han hecho en una sucursal específica (en este caso la sucursal con ID = 1), sin embargo, recordemos que la entidad AlquilerPLSQL no posee un campo nombrado id_sucursal.

![Imagen del octavo ejercicio ciclo 2](../Screenshots/Ciclo2%208.png)

---

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_inicio = '2023-09-27'; 
```

Esta sentencia presenta el problema de un formato mal definido de la fecha, consideremos que el formato de la fecha solicitada está escrito de la siguiente forma ***YYYY-MM-DD*** y dado que este tipo de variable se declará de la siguiente manera ***DD-MM-YYYY***, donde ***MM*** son las tres (3) primeras letras del mes de interés y ***YYYY*** son los últimos dos dígitos del año a consultar. Para obtener un resultado (que no sea un error) debemos escribir la fecha de la siguiente forma ***'27-SEP-23'***.

![Imagen del noveno ejercicio ciclo 2](../Screenshots/Ciclo2%209.png)

---

```sql
SELECT COUNT(*) FROM AlquilerPLSQL;
```

La sentencia anterior utiliza la agregación ***COUNT*** para poder mostrarnos el total de registros obtenidos en la entidad ***AlquilerPLSQL***.

![Imagen del décimo ejercicio ciclo 2](../Screenshots/Ciclo2%2010.png)

---

```sql
SELECT c.nombre 
FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente 
JOIN SucursalPLSQL s ON a.id_sucursal = s.id_sucursal 
WHERE s.nombre = 'Sucursal Central';
```

La sentencia anterior prentende encontrar el nombre de los clientes que han alquilado algún automovil en la sucursal ***Sucursal Central***, más sin embargo la sentencia tiene el error de asumir que la entidad ***AlquilerPLSQL*** contiene el campo ***id_sucursal***.

![Imagen del 11 ejercicio ciclo 2](../Screenshots/Ciclo2%2011.png)

---

```sql
SELECT a.marca, a.modelo 
FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto
WHERE al.id_cliente = 1 AND al.fecha_inicio = '2023-09-27';
```

La sentencia anterior pretende filtrar los autos que algúna vez hayan sido alquilados el ***27 de SEPTIEMBRE del año 2023*** por el cliente con el ID = 1, recordemos que la forma correcta (u óptima) de escribir la fecha es ***'27-SEP-23'***.

![Imagen del 12 ejercicio ciclo 2](../Screenshots/Ciclo2%2012.png)

---

```sql
SELECT * FROM AlquilerPLSQL WHERE fecha_fin - fecha_inicio > 7;
```

En este caso se filtran todos los alquileres que han sido alquilados por más de 7 días.

![Imagen del 13 ejercicio ciclo 2](../Screenshots/Ciclo2%2013.png)

----

```sql
SELECT c.nombre, COUNT(*) AS numero_alquileres 
FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente
GROUP BY c.nombre ORDER BY numero_alquileres DESC LIMIT 1;
```

Esta sentencia encuentra el cliente con que realizado más alquileres, pero la sentencia está mal estructurada al momento de querer elegir el primer registro, la sentencia corregida queda de la siguiente forma.

```sql
SELECT c.nombre, COUNT(*) AS numero_alquileres 
FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente
GROUP BY c.nombre ORDER BY numero_alquileres
FETCH FIRST 1 ROW ONLY;
```

![Imagen del 14 ejercicio ciclo 2](../Screenshots/Ciclo2%2014.png)

---

```sql
SELECT a.marca, a.modelo, COUNT(*) AS numero_alquileres 
FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto 
GROUP BY a.marca, a.modelo ORDER BY numero_alquileres DESC
FETCH FIRST 1 ROW ONLY;

```

La sentencia presenta el mismo error de selección de cantidad de registros, la solución es lo mismo que en la sentencia del anterior ejercicio y el resultado es el siguiente.

![Imagen del 15 ejercicio ciclo 2](../Screenshots/Ciclo2%2015.png)

---

```sql
SELECT s.nombre, COUNT(*) AS numero_alquileres 
FROM SucursalPLSQL s JOIN AlquilerPLSQL al ON s.id_sucursal = al.id_sucursal GROUP BY s.nombre ORDER BY numero_alquileres DESC 
FETCH FIRST ROW 1 ONLY;
```

La sentencia pretende encontrar el cliente que más ha realizado alquileres en alguna sucursal, el error de la sentencia está en que la entidad ***AlquilerPLSQL*** no posee el campo ***id_sucursal***.

![Imagen del 16 ejercicio ciclo 2](../Screenshots/Ciclo2%2016.png)

----

```sql
SELECT EXTRACT(MONTH FROM fecha_inicio) AS mes, COUNT(*) AS numero_alquileres 
FROM AlquilerPLSQL 
GROUP BY EXTRACT(MONTH FROM fecha_inicio) 
ORDER BY numero_alquileres DESC 
FETCH FIRST ROW ONLY;
```

La sentencia anterior encuentra el mes en el que más alquileres se solicitaron.

![Imagen del 17 ejercicio ciclo 2](../Screenshots/Ciclo2%2017.png)

----

```sql
SELECT EXTRACT(DAYOFWEEK FROM fecha_inicio) AS dia_semana, COUNT(*) AS numero_alquileres 
FROM AlquilerPLSQL 
GROUP BY EXTRACT(DAYOFWEEK FROM fecha_inicio) 
ORDER BY numero_alquileres DESC LIMIT 1;
```

La sentencia pretende contar el total de número de alquileres por día y seleccionar el día en que mayor numero de alquileres se hicieron, la estructura el código presente problemas.

![Imagen del 18 ejercicio ciclo 2](../Screenshots/Ciclo2%2018.png)

----

```sql
SELECT * FROM AlquilerPLSQL ORDER BY precio DESC LIMIT 1;
```

Busca obtener el alquiler más caro mediante un campo no existente de la entidad ***AlquilerPLSQL***.

![Imagen del 19 ejercicio ciclo 2](../Screenshots/Ciclo2%2019.png)

----

```sql
SELECT * FROM AlquilerPLSQL ORDER BY precio ASC LIMIT 1;
```


Busca obtener el alquiler más barato mediante un campo no existente de la entidad ***AlquilerPLSQL***.

![Imagen del 20 ejercicio ciclo 2](../Screenshots/Ciclo2%2019.png)

----

```sql
SELECT * FROM ClientePLSQL 
WHERE nombre LIKE '%Juan%'; 
```

Se obtienen todos los clientes que tengan ***Juan*** como algún nombre.

![Imagen del 21 ejercicio ciclo 2](../Screenshots/Ciclo2%2021.png)

----

```sql
SELECT a.marca, a.modelo, a.ano FROM AutoPLSQL a WHERE precio < 10000; ``
```

Se filtran los carros que cuesten menos de 10.000 (supongamos que son dólares), mediante un campo inexistente.

![Imagen del 22 ejercicio ciclo 2](../Screenshots/Ciclo2%2022.png)

---

```sql
SELECT * FROM AlquilerPLSQL
WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30'; 
```

Se filtran los alquileres que fueron (valga la redundancia) alquilados en el mes de ***SEPTIEMBRE***, recordar como se escribe el formato de fecha correctamente.

![Imagen del 23 ejercicio ciclo 2](../Screenshots/Ciclo2%2023.png)

----

```sql
SELECT c.nombre, a.marca, a.modelo 
FROM ClientePLSQL c JOIN AlquilerPLSQL a ON c.id_cliente = a.id_cliente 
WHERE c.direccion LIKE '%Bogotá%'; 
```

Se pretende seleccionar el nombre del cliente, algúnos datos del automovil (primer error) y filtrar con la dirección del cliente en ***Bogotá*** (segundo error). Los errores son llamar campos inexistentes para esas entidades.

![Imagen del 24 ejercicio ciclo 2](../Screenshots/Ciclo2%2024.png)

----

```sql
SELECT a.marca, a.modelo, a.ano 
FROM AutoPLSQL a JOIN AlquilerPLSQL al ON a.id_auto = al.id_auto 
WHERE al.id_reserva = 1; 
```

Se filtra el coontenido de la entidad ***AutoPLSQL*** por medio del primer automovil reservado.

![Imagen del 25 ejercicio ciclo 2](../Screenshots/Ciclo2%2025.png)

----

```sql
SELECT * FROM AlquilerPLSQL 
WHERE id_cliente IN (1, 2, 3); 
```

Se filtran los alquileres correspondientes al cliente con ID = {1,2,3}.

![Imagen del 26 ejercicio ciclo 2](../Screenshots/Ciclo2%2026.png)

---

```sql
SELECT * FROM AlquilerPLSQL WHERE id_auto IN (1, 2, 3); 
```

Se filtran los alquileres donde el auto eran los que tenian el id = {1,2,3}

![Imagen del 27 ejercicio ciclo 2](../Screenshots/Ciclo2%2027.png)

---

```sql
SELECT * FROM AlquilerPLSQL WHERE id_sucursal IN (1, 2, 3); 
```

Se desea filtrar loa alquileres que fueron solicitados en la sucursal {1,2,3}, pero este campo es inexistente para esta entidad.

![Imagen del 28 ejercicio ciclo 2](../Screenshots/Ciclo2%2028.png)

---

```sql
SELECT * FROM AlquilerPLSQL 
WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30' AND id_cliente IN (1, 2, 3); 
```

Se filtran los registros que hayan sido alquilados en el mes de Septiembre por los clientes con id entre {1,2,3}.

![Imagen del 29 ejercicio ciclo 2](../Screenshots/Ciclo2%2029.png)

---

```sql
SELECT * FROM AlquilerPLSQL 
WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30' AND id_auto IN (1, 2, 3); 
```

Se filtran los registros que hayan sido alquilados en el mes de Septiembre con los autos con id entre {1,2,3}.

![Imagen del 30 ejercicio ciclo 2](../Screenshots/Ciclo2%2030.png)

---

```sql
SELECT * FROM AlquilerPLSQL 
WHERE fecha_inicio BETWEEN '2023-09-01' AND '2023-09-30' AND id_sucursal IN (1, 2, 3); 
```

Se desea pbtener los alquileres que iniciaron en Septiembre y se implementa un campo inexistente de la entidad.

![Imagen del 31 ejercicio ciclo 2](../Screenshots/Ciclo2%2031.png)
