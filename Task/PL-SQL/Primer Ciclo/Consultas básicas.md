Cuando nos referimos a ***consultas básicas***, hablamos del comando `SELECT`, este comando será el más usado a lo largo del aprendizaje de base de datos SQL. En el caso de no tener registros en la tabla, se devolverá la tabla vacia.

```sql
SELECT <fields> FROM <table>;
```

## Explicación de la sentencia

* `SELECT` $\rightarrow$ selecionará todos los campos específicados de alguna tabla.
* `<fields>` $\rightarrow$ se específican los campos de nuestro interés de alguna tabla, se escribe sin los signos menor que `<`y mayor que `>`, se separan por comas cada campo.
* `FROM` $\rightarrow$ palabra reservada de SQL, hace referencia a "de donde se seleccionarán los campos".
* `<table>` $\rightarrow$ tabla de donde se quieren selecciónar los diferentes campos.

# Ejemplo

Supongamos que solo se quiere saber el nombre y la dirección de los clientes registrados en nuestra base de datos, con el comando mostrado a continuación se mostrará la información que deseamos.

```sql
SELECT nombre, direccion FROM cliente;
```

El resultado de la sentencia se evidencia en un formato de tabla con los campos específicados, la imágen muestra solo 4 de los resultados totales.

![[example select.png]]
# Ejercicios

1. Mostrar todos los clientes en la tabla "Cliente".

```sql
SELECT * FROM ClientePLSQL;
```

![[all for cliente.png]]

2. Mostrar todos los autos en la tabla "Auto".

```sql
SELECT * FROM AutoPLSQL;
```

![[all for auto.png]]

3. Mostrar todos los alquileres en la tabla "Alquiler".

```sql
SELECT * FROM AutoPLSQL;
```

![[all for alquiler.png]]

4. Mostrar todas las sucursales en la tabla "Sucursal".

```sql
SELECT * FROM SucursalPLSQL;
```

![[all for sucursal.png]]

5. Mostrar todas las reservas en la tabla "Reserva".

```sql
SELECT * FROM ReservaPLSQL;
```

  ![[all for reserva.png]]
  