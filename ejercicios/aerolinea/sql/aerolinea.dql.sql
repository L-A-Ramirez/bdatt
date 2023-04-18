/*
	Consultas
*/

select * from vuelos;
select * from pasajeros;
select * from personal;
select * from aviones;
select * from pilotos;
select * from piloto_personal;


-- Se requiere saber las horas totales de los pilotos en los vuelos y la ciudad de destino
select horaSalida, horaLlegada, (horaLlegada - horaSalida) as totalHoras, ciudad from vuelos;

/* Consulta condicionadas y con funciones */
-- Se requiere saber la cantidad de pasajeros con destino a chile
select count(*) as pasajeros_a_bariloche from pasajeros where nro_vuelo = 1; -- no se usa

-- Join
select count(*) as cantidad_pasajeros, ciudad from pasajeros 
join vuelos on pasajeros.nro_vuelo = vuelos.nro where ciudad = "chile";

-- Se requiere saber cual es el precio más alto de un vuelo
select ciudad, max(precio) precioMaximo from vuelos;

-- Se requiere saber cual es el precio más bajo de un vuelo
select ciudad, min(precio) precioMinimo from vuelos;

-- Se requiere saber cual es el precio menor o igual a 20000
select ciudad, precio from vuelos where precio <= 20000;

-- Se necesita saber el rango de precios entre "20000 y 30000"
select ciudad, precio from vuelos where precio > 20000 and precio < 30000;

-- Se requiere saber cual es el maximo de horas de un piloto (pendiente (group))
select horaSalida, horaLlegada, min(horaLlegada - horaSalida) totalHoras, ciudad 
from vuelos; -- pendiente

-- Se requiere saber cuantos pasajeros con destino a bariloche existen 

