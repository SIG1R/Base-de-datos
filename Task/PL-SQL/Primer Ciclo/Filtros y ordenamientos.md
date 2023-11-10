Ahora supongamos que queremos seleccionar todos los elementos de alguna tabla si y solo si cumple ciertos requisitos, en este momento es cuando interviene la clausula `WHERE`que nos permite seleccionar registros con ciertos requisitos. La clausula `WHERE` recibe varias condiciones, éstas deben estar separadas por conectores lógicos $\rightarrow$ OR, AND.

```sql
SELECT <fields> FROM <table>
WHERE <CONDITIONS>;
```

# EJEMPLO

```sql
SELECT * FROM ClientePLSQL
WHERE nombre = 'Ricky Owens' OR nombre = 'Aaron Beard';
```

![SELECT cliente](../Screenshots/example%20WHERE.png)

# Ejercicios

1. Mostrar los clientes que se llaman "Juan".

```sql
SELECT * FROM ClientePLSQL
WHERE nombre = 'Juan';
```

![SELECT Juan](../Screenshots/only%20juan.png)

2. Mostrar los autos de marca "Toyota".

```sql
SELECT * FROM AutoPLSQL
WHERE marca = 'Toyota';
```

![SELECT Toyota](../Screenshots/only%20Toyota.png)

3. Mostrar los alquileres que ocurrieron después de una fecha específica.

```sql
SELECT * FROM AutoPLSQL
WHERE ano < 2012; -- 2012 es un año de ejemlpo, no debe ser ese necesariamente
```

![SELECT año 2012](../Screenshots/only%20year.png)

4. Mostrar las sucursales ubicadas en "Madrid".

```sql
SELECT * FROM SucursalPLSQL
WHERE ciudad = 'Madrid';
```

![SELECT Madrid](../Screenshots/only%20city.png)

5. Mostrar las reservas realizadas por un cliente específico.
   
```sql
-- Importante recordar el comportamiento de las FK's
SELECT * FROM ReservaPLSQL
WHERE id_cliente = 570; -- 570 es solo un ejemplo, no debe ser ese necesariamente
```

![SELECT clientID](../Screenshots/only%20clientid.png)


