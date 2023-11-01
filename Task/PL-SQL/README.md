Este repositorio tiene como objetivo explicar el funcionamiento de las diferentes sentencias para el manejo del lenguaje SQL, en este caso estaremos usando PL/SQL.

# Estructura de repositorio

Vamos a manejar 3 ciclos diferentes, en cada ciclo se explican diferentes sentencias SQL empezando desde comandos o sentencias básicas hasta sentencias más "complejas". Va a haber una carpeta por cada ciclo.




# Estructura de las tablas

Los ejercicios de cada ciclo se manejarán bajo las siguientes tablas.

* Cliente: Almacena información sobre los clientes, como su nombre, dirección y número de teléfono. 
* Auto: Almacena información sobre los autos, como su marca, modelo y año. 
* Alquiler: Almacena información sobre los alquileres, como la fecha de inicio, la fecha de finalización y el auto alquilado. 
* Sucursal: Almacena información sobre las sucursales, como su nombre, ciudad y país.
* Reserva: Almacena información sobre las reservas, como la fecha de la reserva y la sucursal en la que se realizó la reserva.

## DML para crear las tablas
### Tabla de clientes

```sql
CREATE TABLE ClientePLSQL (
id_cliente NUMBER PRIMARY KEY,
nombre VARCHAR2(50),
direccion VARCHAR2(100),
telefono VARCHAR2(15)
);
```

### Tabla de autos 
```sql
CREATE TABLE AutoPLSQL (
id_auto NUMBER PRIMARY KEY,
marca VARCHAR2(50),
modelo VARCHAR2(50),
ano NUMBER
);
```

### Tabla de alquileres

```sql
CREATE TABLE AlquilerPLSQL (
id_alquiler NUMBER PRIMARY KEY,
id_cliente NUMBER,
id_auto NUMBER,
fecha_inicio DATE,
fecha_fin DATE,
id_reserva NUMBER,
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
FOREIGN KEY (id_auto) REFERENCES Auto(id_auto),
FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);
```

### Tabla de sucursales

```sql
CREATE TABLE SucursalPLSQL (
id_sucursal NUMBER PRIMARY KEY,
nombre VARCHAR2(50),
ciudad VARCHAR2(50),
pais VARCHAR2(50)
);
```
### Tabla de reservas  

```sql
CREATE TABLE ReservaPLSQL (
id_reserva NUMBER PRIMARY KEY,
id_cliente NUMBER,
id_sucursal NUMBER,
fecha_reserva DATE,
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal)
);
```
