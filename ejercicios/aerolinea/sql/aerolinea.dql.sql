/*
	Consultas
*/

select * from vuelos;
select * from pasajeros;
select * from personal;
select * from aviones;
select * from pilotos;
select * from piloto_personal;

/* Consulta de columnas calculadas */
-- Se requiere saber las horas totales de los pilotos en los vuelos y la ciudad de destino
select horaSalida, horaLlegada, (horaLlegada - horaSalida) as totalHoras, ciudad from vuelos;

-- Quiero sacar un descuento del 20% a todos los vuelos
select ciudad, precio, (precio*0.80) as descuento_20 from vuelos;

-- Quiero mostrar el precio del incremento del 10% del pasaje de los vuelos
select ciudad, precio, (precio*1.10) as incremento_10 from vuelos;

/* Consulta condicionadas y con funciones */
-- Se requiere saber la cantidad de pasajeros con destino a chile (1)
select count(*) as pasajeros_a_bariloche from pasajeros where nro_vuelo = 1; -- no se usa

-- Se requiere saber cual es el precio más alto de un vuelo
select ciudad, max(precio) precioMaximo from vuelos;

-- Se requiere saber cual es el precio más bajo de un vuelo
select ciudad, min(precio) precioMinimo from vuelos;

-- Obtenemos la suma total de vuelos a venezuela
select ciudad, sum(precio) suma_total from vuelos where ciudad = "venezuela";

-- Obtenemos el promedio total de vuelos a venezuela
select ciudad, avg(precio) promedio_total from vuelos where ciudad = "venezuela";

/* 
	consultas condicionadas:
    menor (<), mayor(>), menor igual (<=), mayor igual (>=)
    and/between, or/in
*/
-- Se requiere saber cual es el precio menor o igual a 20000
select ciudad, precio from vuelos where precio <= 20000;

-- Se requiere saber cual es el precio mayor o igual a 20000
select ciudad, precio from vuelos where precio >= 20000;

-- Se necesita saber el rango de precios entre "20000 y 30000"
select ciudad, precio from vuelos where precio > 20000 and precio < 30000;
select ciudad, precio from vuelos where precio between 20000 and 30000;

-- Quiero localizar el vuelo de venezuela con precio "20000.99"
select ciudad, precio from vuelos where ciudad = "venezuela" and precio = "20000.99";

-- Quiero obtener registros solo de venezuela y chile
select ciudad, precio from vuelos where ciudad = "venezuela" or ciudad = "chile";
select ciudad, precio from vuelos where ciudad in("venezuela","chile");

-- Quiero localizar el vuelo de venezuela con el precio más bajo
select ciudad, min(precio) precio_minimo from vuelos where ciudad = "venezuela";

-- Quiero localizar el vuelo de venezuela con el precio más alto
select ciudad, max(precio) precio_maximo from vuelos where ciudad = "venezuela";

-- Se requiere saber cual es el maximo de horas de un piloto (pendiente (group))
select horaSalida, horaLlegada, min(horaLlegada - horaSalida) totalHoras, ciudad
from vuelos; -- pendiente

/* 
	Join
    1) selecciono los campos de distintas tablas
    2) de pasajeros unime a vuelos (from pasajeros join vuelos)
    3) relacionamos las llave (fk y pk) "pasajeros.nro_vuelo = vuelos.nro"
*/

select dni ,ciudad, precio from pasajeros join vuelos on pasajeros.nro_vuelo = vuelos.nro;

-- Obtenemos la cantidad de pasajeros con destino a chile
select count(*) as cantidad_pasajeros, ciudad from pasajeros 
join vuelos on pasajeros.nro_vuelo = vuelos.nro where ciudad = "chile";

-- Group by
select count(*), ciudad from vuelos group by ciudad;

